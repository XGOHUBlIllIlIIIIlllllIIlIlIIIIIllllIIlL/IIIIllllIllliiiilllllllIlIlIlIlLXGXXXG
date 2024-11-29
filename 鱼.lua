if getgenv().cuppink then warn("CupPibk Hub : 已执行！") return end
getgenv().cuppink = true

if not game:IsLoaded() then
    game.Loaded:Wait()
end

local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
local Window = WindUI:CreateWindow({
    Title = "XGOHUB | Fisch", -- UI标题
    Icon = "rbxassetid://128885038925647", -- 图标 URL 或 rbxassetid 或 lucide
    Author = ".xgo", -- 作者 & 创建者
    Folder = "xgohub", -- 用于保存数据的文件夹名称（和密钥）
    Size = UDim2.fromOffset(580, 460), -- UI大小
    KeySystem = { -- 创建密钥系统
        Key = "", -- 密钥
        Note = "", -- 注释
        URL = "", -- 获取密钥的URL（例如：Discord）
        SaveKey = true, -- 在上面指定的文件夹中保存密钥
    }, 
    Transparent = true,-- UI透明度
    Theme = "Dark", -- UI主题
    SideBarWidth = 200, -- UI侧边栏宽度（数字）
    HasOutline = false, -- 是否添加窗口轮廓
})

Window:EditOpenButton({
    Title = "XGOHUB | Fisch", -- 标题
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), -- 颜色1
        Color3.fromHex("F89B29") -- 颜色2
    )
})

-- // // // 服务 // // // --
local VirtualInputManager = game:GetService("VirtualInputManager")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local VirtualUser = game:GetService("VirtualUser")
local HttpService = game:GetService("HttpService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local CoreGui = game:GetService('StarterGui')
local ContextActionService = game:GetService('ContextActionService')
local UserInputService = game:GetService('UserInputService')

-- // // // 本地变量 // // // --
local LocalPlayer = Players.LocalPlayer
local LocalCharacter = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = LocalCharacter:FindFirstChild("HumanoidRootPart")
local UserPlayer = HumanoidRootPart:WaitForChild("user")
local ActiveFolder = Workspace:FindFirstChild("active")
local FishingZonesFolder = Workspace:FindFirstChild("zones"):WaitForChild("fishing")
local TpSpotsFolder = Workspace:FindFirstChild("world"):WaitForChild("spawns"):WaitForChild("TpSpots")
local NpcFolder = Workspace:FindFirstChild("world"):WaitForChild("npcs")
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local screenGui = Instance.new("ScreenGui", PlayerGui)
local shadowCountLabel = Instance.new("TextLabel", screenGui)
local RenderStepped = RunService.RenderStepped
local WaitForSomeone = RenderStepped.Wait

-- // // // 功能列表 // // // --

-- // // // 变量 // // // --
local CastMode = "Legit"
local ShakeMode = "Navigation"
local ReelMode = "Blatant"
local CollectMode = "Teleports"
local teleportSpots = {}
local FreezeChar = false
local DayOnlyLoop = nil
local BypassGpsLoop = nil
local Noclip = false
local RunCount = false

-- // // // 函数 // // // --
function ShowNotification(String)
    WindUI:Notify({
        Title = "XGOHUB",
        Content = String,
        Duration = 5
    })
end

-- // 发送到 Discord // --
local function GetPlayerStats()
    local hud = LocalPlayer:FindFirstChild("PlayerGui") and LocalPlayer.PlayerGui:FindFirstChild("hud")
    if hud and hud.safezone then
        local coins = hud.safezone:FindFirstChild("coins") and hud.safezone.coins.Text or "N/A"
        local jobId = game.JobId
        local joinScript = string.format("game:GetService('TeleportService'):TeleportToPlaceInstance(%d, '%s', game:GetService('Players').LocalPlayer)", game.PlaceId, jobId)
        return {
            Username = LocalPlayer.Name,
            DisplayName = LocalPlayer.DisplayName,
            Coins = coins,
            JobId = jobId,
            JoinScript = joinScript
        }
    end
    return nil
end

game.Players.LocalPlayer.Idled:Connect(function()
    VirtualUser:CaptureController()
    VirtualUser:ClickButton2(Vector2.new())
end)

spawn(function()
    while true do
        game:GetService("ReplicatedStorage"):WaitForChild("events"):WaitForChild("afk"):FireServer(false)
        task.wait(0.01)
    end
end)

-- // // // 自动投掷 // // // --
local autoCastEnabled = false
local function autoCast()
    if LocalCharacter then
        local tool = LocalCharacter:FindFirstChildOfClass("Tool")
        if tool then
            local hasBobber = tool:FindFirstChild("bobber")
            if not hasBobber then
                if CastMode == "正当" then
                    VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                    HumanoidRootPart.ChildAdded:Connect(function()
                        if HumanoidRootPart:FindFirstChild("power") ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                            HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                                if property == "Size" then
                                    if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                        VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                                    end
                                end
                            end)
                        end
                    end)
                elseif CastMode == "明目张胆" then
                    local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                    if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                        task.wait(0.5)
                        local Random = math.random(90, 99)
                        rod.events.cast:FireServer(Random)
                    end
                end
            end
        end
        task.wait(0.5)
    end
end

-- // // // 自动摇晃  // // // --
local autoShakeEnabled = false
local autoShakeConnection
local function autoShake()
    if ShakeMode == "导航模式" then
        task.wait()
        xpcall(function()
            local shakeui = PlayerGui:FindFirstChild("shakeui")
            if not shakeui then return end
            local safezone = shakeui:FindFirstChild("safezone")
            local button = safezone and safezone:FindFirstChild("button")
            task.wait(0.2)
            GuiService.SelectedObject = button
            if GuiService.SelectedObject == button then
                VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.Return, false, game)
                VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.Return, false, game)
            end
            task.wait(0.1)
            GuiService.SelectedObject = nil
        end,function (err)
        end)
    elseif ShakeMode == "鼠标模式" then
        task.wait()
        xpcall(function()
            local shakeui = PlayerGui:FindFirstChild("shakeui")
            if not shakeui then return end
            local safezone = shakeui:FindFirstChild("safezone")
            local button = safezone and safezone:FindFirstChild("button")
            local pos = button.AbsolutePosition
            local size = button.AbsoluteSize
            VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, true, LocalPlayer, 0)
            VirtualInputManager:SendMouseButtonEvent(pos.X + size.X / 2, pos.Y + size.Y / 2, 0, false, LocalPlayer, 0)
        end,function (err)
        end)
    end
end

local function startAutoShake()
    if autoShakeConnection or not autoShakeEnabled then return end
    autoShakeConnection = RunService.RenderStepped:Connect(autoShake)
end

local function stopAutoShake()
    if autoShakeConnection then
        autoShakeConnection:Disconnect()
        autoShakeConnection = nil
    end
end

PlayerGui.DescendantAdded:Connect(function(descendant)
    if autoShakeEnabled and descendant.Name == "button" and descendant.Parent and descendant.Parent.Name == "safezone" then
        startAutoShake()
    end
end)

PlayerGui.DescendantAdded:Connect(function(descendant)
    if descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        stopAutoShake()
    end
end)

if autoShakeEnabled and PlayerGui:FindFirstChild("shakeui") and PlayerGui.shakeui:FindFirstChild("safezone") and PlayerGui.shakeui.safezone:FindFirstChild("button") then
    startAutoShake()
end

-- // // // 自动卷轴  // // // --
local autoReelEnabled = false
local PerfectCatchEnabled = false
local autoReelConnection
local function autoReel()
    local reel = PlayerGui:FindFirstChild("reel")
    if not reel then return end
    local bar = reel:FindFirstChild("bar")
    local playerbar = bar and bar:FindFirstChild("playerbar")
    local fish = bar and bar:FindFirstChild("fish")
    if playerbar and fish then
        playerbar.Position = fish.Position
    end
end

local function noperfect()
    local reel = PlayerGui:FindFirstChild("reel")
    if not reel then return end
    local bar = reel:FindFirstChild("bar")
    local playerbar = bar and bar:FindFirstChild("playerbar")
    if playerbar then
        playerbar.Position = UDim2.new(0, 0, -35, 0)
        wait(0.2)
    end
end

local function startAutoReel()
    if ReelMode == "正当" then
        if autoReelConnection or not autoReelEnabled then return end
        noperfect()
        task.wait(2)
        autoReelConnection = RunService.RenderStepped:Connect(autoReel)
    elseif ReelMode == "明目张胆" then
        local reel = PlayerGui:FindFirstChild("reel")
        if not reel then return end
        local bar = reel:FindFirstChild("bar")
        local playerbar = bar and bar:FindFirstChild("playerbar")
        playerbar:GetPropertyChangedSignal('Position'):Wait()
        game.ReplicatedStorage:WaitForChild("events"):WaitForChild("reelfinished"):FireServer(100, false)
    end
end

local function stopAutoReel()
    if autoReelConnection then
        autoReelConnection:Disconnect()
        autoReelConnection = nil
    end
end

PlayerGui.DescendantAdded:Connect(function(descendant)
    if autoReelEnabled and descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        startAutoReel()
    end
end)

PlayerGui.DescendantRemoving:Connect(function(descendant)
    if descendant.Name == "playerbar" and descendant.Parent and descendant.Parent.Name == "bar" then
        stopAutoReel()
        if autoCastEnabled then
            task.wait(1)
            autoCast()
        end
    end
end)

if autoReelEnabled and PlayerGui:FindFirstChild("reel") and 
    PlayerGui.reel:FindFirstChild("bar") and 
    PlayerGui.reel.bar:FindFirstChild("playerbar") then
    startAutoReel()
end

-- // // // 区域铸造 // // // --
ZoneConnection = LocalCharacter.ChildAdded:Connect(function(child)
    if ZoneCast and child:IsA("Tool") and FishingZonesFolder:FindFirstChild(Zone) ~= nil then
        child.ChildAdded:Connect(function(blehh)
            if blehh.Name == "bobber" then
                local RopeConstraint = blehh:FindFirstChildOfClass("RopeConstraint")
                if ZoneCast and RopeConstraint ~= nil then
                    RopeConstraint.Changed:Connect(function(property)
                        if property == "Length" then
                            RopeConstraint.Length = math.huge
                        end
                    end)
                    RopeConstraint.Length = math.huge
                end
                task.wait(1)
                while WaitForSomeone(RenderStepped) do
                    if ZoneCast and blehh.Parent ~= nil then
                        task.wait()
                        blehh.CFrame = FishingZonesFolder[Zone].CFrame
                    else
                        break
                    end
                end
            end
        end)
    end
end)

-- // 找到tp斑点 // --
local TpSpotsFolder = Workspace:FindFirstChild("world"):WaitForChild("spawns"):WaitForChild("TpSpots")
for i, v in pairs(TpSpotsFolder:GetChildren()) do
    if table.find(teleportSpots, v.Name) == nil then
        table.insert(teleportSpots, v.Name)
    end
end

-- // // // 得到位置 // // // --
function GetPosition()
	if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		return {
			Vector3.new(0,0,0),
			Vector3.new(0,0,0),
			Vector3.new(0,0,0)
		}
	end
	return {
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.X,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Y,
		game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position.Z
	}
end

function ExportValue(arg1, arg2)
	return tonumber(string.format("%."..(arg2 or 1)..'f', arg1))
end

-- // // // 卖商品 // // // --
function rememberPosition()
    spawn(function()
        local initialCFrame = HumanoidRootPart.CFrame
 
        local bodyVelocity = Instance.new("BodyVelocity")
        bodyVelocity.Velocity = Vector3.new(0, 0, 0)
        bodyVelocity.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
        bodyVelocity.Parent = HumanoidRootPart
 
        local bodyGyro = Instance.new("BodyGyro")
        bodyGyro.MaxTorque = Vector3.new(math.huge, math.huge, math.huge)
        bodyGyro.D = 100
        bodyGyro.P = 10000
        bodyGyro.CFrame = initialCFrame
        bodyGyro.Parent = HumanoidRootPart
 
        while AutoFreeze do
            HumanoidRootPart.CFrame = initialCFrame
            task.wait(0.01)
        end
        if bodyVelocity then
            bodyVelocity:Destroy()
        end
        if bodyGyro then
            bodyGyro:Destroy()
        end
    end)
end
function SellHand()
    local currentPosition = HumanoidRootPart.CFrame
    local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    HumanoidRootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sell"):InvokeServer()
    task.wait(1)
    HumanoidRootPart.CFrame = currentPosition
    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end
function SellAll()
    local currentPosition = HumanoidRootPart.CFrame
    local sellPosition = CFrame.new(464, 151, 232)
    local wasAutoFreezeActive = false
    if AutoFreeze then
        wasAutoFreezeActive = true
        AutoFreeze = false
    end
    HumanoidRootPart.CFrame = sellPosition
    task.wait(0.5)
    workspace:WaitForChild("world"):WaitForChild("npcs"):WaitForChild("Marc Merchant"):WaitForChild("merchant"):WaitForChild("sellall"):InvokeServer()
    task.wait(1)
    HumanoidRootPart.CFrame = currentPosition
    if wasAutoFreezeActive then
        AutoFreeze = true
        rememberPosition()
    end
end

-- // // // 穿墙阶跃 // // // --
NoclipConnection = RunService.Stepped:Connect(function()
    if Noclip == true then
        if LocalCharacter ~= nil then
            for i, v in pairs(LocalCharacter:GetDescendants()) do
                if v:IsA("BasePart") and v.CanCollide == true then
                    v.CanCollide = false
                end
            end
        end
    end
end)

-- // // // 欺蒙 // // // --
local DupeEnabled = false
local DupeConnection
local function autoDupe()
    local hud = LocalPlayer.PlayerGui:FindFirstChild("hud")
    if hud then
        local safezone = hud:FindFirstChild("safezone")
        if safezone then
            local bodyAnnouncements = safezone:FindFirstChild("bodyannouncements")
            if bodyAnnouncements then
                local offerFrame = bodyAnnouncements:FindFirstChild("offer")
                if offerFrame and offerFrame:FindFirstChild("confirm") then
                    firesignal(offerFrame.confirm.MouseButton1Click)
                end
            end
        end
    end
end

local function startAutoDupe()
    if DupeConnection or not DupeEnabled then return end
    DupeConnection = RunService.RenderStepped:Connect(autoDupe)
end

local function stopAutoDupe()
    if DupeConnection then
        DupeConnection:Disconnect()
        DupeConnection = nil
    end
end

PlayerGui.DescendantAdded:Connect(function(descendant)
    if DupeEnabled and descendant.Name == "confirm" and descendant.Parent and descendant.Parent.Name == "offer" then
        local hud = LocalPlayer.PlayerGui:FindFirstChild("hud")
        if hud then
            local safezone = hud:FindFirstChild("safezone")
            if safezone then
                local bodyAnnouncements = safezone:FindFirstChild("bodyannouncements")
                if bodyAnnouncements then
                    local offerFrame = bodyAnnouncements:FindFirstChild("offer")
                    if offerFrame and offerFrame:FindFirstChild("confirm") then
                        firesignal(offerFrame.confirm.MouseButton1Click)
                    end
                end
            end
        end
    end
end)

-- // // // 独家 // // // --
local shadowCountLabel = Instance.new("TextLabel", screenGui)
shadowCountLabel.Size = UDim2.new(0, 200, 0, 50)
shadowCountLabel.Position = UDim2.new(0, 30, 0, 260)
shadowCountLabel.BackgroundTransparency = 0.5
shadowCountLabel.BackgroundColor3 = Color3.fromRGB(38, 38, 38) 
shadowCountLabel.TextColor3 = Color3.new(220, 125, 255)
shadowCountLabel.Font = Enum.Font.SourceSans
shadowCountLabel.TextSize = 24
shadowCountLabel.Text = "阴影计数: 0"

local corner = Instance.new("UICorner", shadowCountLabel)
corner.CornerRadius = UDim.new(0, 10)

local function updateShadowCount()
    local count = #workspace.Shadows:GetChildren()
    shadowCountLabel.Text = "阴影计数: " .. count
end

spawn(function()
    while true do
        updateShadowCount()
        task.wait(0.5)
    end
end)

-- // // // 标签GUI // // // --
local HomeTab = Window:Tab({
    Title = "首页", -- 信息标签
    Icon = "house", -- 图标
})
local ExclusivesTab = Window:Tab({
    Title = "独家", -- 信息标签
    Icon = "book-user", -- 图标
})
local MainTab = Window:Tab({
    Title = "主界面", -- 信息标签
    Icon = "book-user", -- 图标
})
local TeleportsTab = Window:Tab({
    Title = "传送点", -- 信息标签
    Icon = "book-user", -- 图标
})
local ItemsTab = Window:Tab({
    Title = "物品", -- 信息标签
    Icon = "book-user", -- 图标
})
local MiscTab = Window:Tab({
    Title = "杂项", -- 信息标签
    Icon = "book-user", -- 图标
})
local TradeTab = Window:Tab({
    Title = "交易", -- 信息标签
    Icon = "book-user", -- 图标
})
local Divider = Window:Divider() -- 分隔线

local SettingsTab = Window:Tab({
    Title = "窗口和文件配置[设置]", -- 窗口和文件配置
    Icon = "settings", -- 设置图标
})
local CreateThemeTab = Window:Tab({
    Title = "创建主题", -- 创建主题
    Icon = "palette", -- 调色板图标
})

local Options = WindUI.Options

do
    HomeTab:Button({
        Title = "复制 Q群",
        Description = "加入群聊获取更多脚本",
        Callback = function()
            setclipboard("259461151")
        end
    })

 -- // 独家标签页 // --
ExclusivesTab:Section({ 
    Title = "Exclusives Features",
    TextXAlignment = "Center"
})
-- 显示计数阴影切换按钮
local CountShadowsButton = ExclusivesTab:Toggle({
    Title = "显示计数阴影",
    Default = false,
    Callback = function(state)
        local RequireRod = PlayerGui.hud.safezone.equipment.rods.scroll.safezone:FindFirstChild("Rod Of The Depths")
        if not RequireRod then
            ShowNotification("需要 Rod Of The Depths")
            return
        end
        if state then
            shadowCountLabel.Visible = true
        else
            shadowCountLabel.Visible = false
        end
    end,
})

-- Rod Of The Depths 连点切换按钮
local RodDupeButton = ExclusivesTab:Toggle({
    Title = "Rod Of The Depths 连点",
    Default = false,
    Callback = function(state)
        local RequireRod = PlayerGui.hud.safezone.equipment.rods.scroll.safezone:FindFirstChild("Rod Of The Depths")
        if not RequireRod then
            ShowNotification("需要 Rod Of The Depths")
            return
        end
        if state then
            while CountShadowsButton.Value do
                local args1 = {"Flimsy Rod"}
                game:GetService("ReplicatedStorage").events.equiprod:FireServer(unpack(args1))

                local args2 = {"Rod Of The Depths"}
                game:GetService("ReplicatedStorage").events.equiprod:FireServer(unpack(args2))
                task.wait(RodDupeDelay)
            end
        end
    end,
})
-- // 独家标签页 // --
-- Rod Of The Depths 连点延迟滑块
local RodDupe_Delay = ExclusivesTab:Slider({
    Title = "Rod Of The Depths 连点延迟",
    Step = 0.1, -- 步长
    Value = {
        Min = 0, -- 最小值
        Max = 1, -- 最大值
        Default = 0.2, -- 默认值
    },
    Callback = function(value)
        RodDupeDelay = value
    end
})

-- 复制阴影按钮
local CopyShadowsButton = ExclusivesTab:Button({
    Title = "复制阴影",
    Description = "复制阴影到角色",
    Callback = function()
        local RequireRod = PlayerGui.hud.safezone.equipment.rods.scroll.safezone:FindFirstChild("Rod Of The Depths")
        if not RequireRod then
            return ShowNotification("需要 Rod Of The Depths")
        end
        for i,v in pairs(LocalPlayer.Backpack:GetChildren()) do 
            if v:FindFirstChild("offer") then
                v.Parent = LocalPlayer.Character
            end
        end
        task.wait(2)
        for i,v in pairs(LocalPlayer.Character:GetChildren()) do 
            if v:FindFirstChild("offer") then
                v.Parent = LocalPlayer.Backpack
            end
        end
    end
})

-- 销毁阴影按钮
local DestroyShadowsButton = ExclusivesTab:Button({
    Title = "销毁阴影",
    Description = "销毁所有阴影",
    Callback = function()
        for _,shadow in pairs(workspace.Shadows:GetChildren()) do
            shadow:Destroy()
        end
    end
})

-- // 主界面标签页 // --
MainTab:Section({ 
    Title = "自动钓鱼",
    TextXAlignment = "Center"
})
local autoCastToggle = MainTab:Toggle({
    Title = "自动抛竿",
    Default = false,
    Callback = function(state)
        local RodName = ReplicatedStorage.playerstats[LocalPlayer.Name].Stats.rod.Value
        if state then
            autoCastEnabled = true
            if LocalPlayer.Backpack:FindFirstChild(RodName) then
                LocalPlayer.Character.Humanoid:EquipTool(LocalPlayer.Backpack:FindFirstChild(RodName))
            end
            if LocalCharacter then
                local tool = LocalCharacter:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if not hasBobber then
                        if CastMode == "正当" then
                            VirtualInputManager:SendMouseButtonEvent(0, 0, 0, true, LocalPlayer, 0)
                            HumanoidRootPart.ChildAdded:Connect(function()
                                if HumanoidRootPart:FindFirstChild("power") ~= nil and HumanoidRootPart.power.powerbar.bar ~= nil then
                                    HumanoidRootPart.power.powerbar.bar.Changed:Connect(function(property)
                                        if property == "Size" then
                                            if HumanoidRootPart.power.powerbar.bar.Size == UDim2.new(1, 0, 1, 0) then
                                                VirtualInputManager:SendMouseButtonEvent(0, 0, 0, false, LocalPlayer, 0)
                                            end
                                        end
                                    end)
                                end
                            end)
                        elseif CastMode == "明目张胆" then
                            local rod = LocalCharacter and LocalCharacter:FindFirstChildOfClass("Tool")
                            if rod and rod:FindFirstChild("values") and string.find(rod.Name, "Rod") then
                                task.wait(0.5)
                                local Random = math.random(90, 99)
                                rod.events.cast:FireServer(Random)
                            end
                        end
                    end
                end
                task.wait(1)
            end
        else
            autoCastEnabled = false
        end
    end
})

local autoShakeToggle = MainTab:Toggle({
    Title = "自动摇竿",
    Default = false,
    Callback = function(state)
        if state then
            autoShakeEnabled = true
            startAutoShake()
        else
            autoShakeEnabled = false
            stopAutoShake()
        end
    end
})

local autoReelToggle = MainTab:Toggle({
    Title = "自动收线",
    Default = false,
    Callback = function(state)
        if state then
            autoReelEnabled = true
            startAutoReel()
        else
            autoReelEnabled = false
            stopAutoReel()
        end
    end
})

local FreezeCharacterToggle = MainTab:Toggle({
    Title = "冻结角色",
    Default = false,
    Callback = function(state)
        local oldpos = HumanoidRootPart.CFrame
        FreezeChar = state
        task.wait()
        while WaitForSomeone(RenderStepped) do
            if FreezeChar and HumanoidRootPart ~= nil then
                task.wait()
                HumanoidRootPart.CFrame = oldpos
            else
                break
            end
        end
    end
})

-- // 模式标签页 // --
MainTab:Section({ 
    Title = "模式钓鱼",
    TextXAlignment = "Center"
})

local autoCastModeDropdown = MainTab:Dropdown({
    Title = "自动抛竿模式",
    Values = {"正当", "明目张胆"},
    Multi = false,
    Default = CastMode,
    Callback = function(Value)
        CastMode = Value
    end
})

local autoShakeModeDropdown = MainTab:Dropdown({
    Title = "自动摇竿模式",
    Values = {"导航模式", "鼠标模式"},  -- 使用中文选项
    Multi = false,
    Default = ShakeMode,
    Callback = function(Value)
        ShakeMode = Value
    end
})

local autoReelModeDropdown = MainTab:Dropdown({
    Title = "自动收线模式",
    Values = {"正当", "明目张胆"},
    Multi = false,
    Default = ReelMode,
    Callback = function(Value)
        ReelMode = Value
    end
})

-- // 售卖标签页 // --
ItemsTab:Section({ 
    Title = "售卖物品",
    TextXAlignment = "Center"
})

local sellHandButton = ItemsTab:Button({
    Title = "售卖手持物品",
    Description = "",
    Callback = function()
        SellHand()
    end
})

local sellAllButton = ItemsTab:Button({
    Title = "全部售卖",
    Description = "",
    Callback = function()
        SellAll()
    end
})

-- // 宝藏标签页 // --
ItemsTab:Section({ 
    Title = "宝藏",
    TextXAlignment = "Center"
})
-- 传送至杰克·马洛按钮
local teleportToJackMarrowButton = ItemsTab:Button({
    Title = "传送至杰克·马洛",
    Callback = function()
        HumanoidRootPart.CFrame = CFrame.new(-2824.359, 214.311, 1518.130)
    end
})

-- 修复地图按钮
local repairMapButton = ItemsTab:Button({
    Title = "修复地图",
    Callback = function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do 
            if v.Name == "Treasure Map" then
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
                workspace.world.npcs["Jack Marrow"].treasure.repairmap:InvokeServer()
            end
        end
    end
})

-- 收集宝藏按钮
local collectTreasureButton = ItemsTab:Button({
    Title = "收集宝藏",
    Callback = function()
        for i, v in ipairs(game:GetService("Workspace"):GetDescendants()) do
            if v.ClassName == "ProximityPrompt" then
                v.HoldDuration = 0
            end
        end
        for i, v in pairs(workspace.world.chests:GetDescendants()) do
            if v:IsA("Part") and v:FindFirstChild("ChestSetup") then 
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame
                for _, v in pairs(workspace.world.chests:GetDescendants()) do
                    if v.Name == "ProximityPrompt" then
                        fireproximityprompt(v)
                    end
                end
                task.wait(1)
            end 
        end
    end
})

-- // 传送标签页 // --
TeleportsTab:Section({ 
    Title = "选择传送",
    TextXAlignment = "Center"
})
-- 区域传送下拉菜单
local IslandTPDropdownUI = TeleportsTab:Dropdown({
    Title = "区域传送",
    Values = teleportSpots,
    Multi = false,
    Default = nil,
    Callback = function(Value)
        if teleportSpots ~= nil and game.Players.LocalPlayer.Character ~= nil and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
            local HumanoidRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
            xpcall(function()
                local teleportSpot = TpSpotsFolder:FindFirstChild(Value)
                if teleportSpot then
                    HumanoidRootPart.CFrame = teleportSpot.CFrame + Vector3.new(0, 5, 0)
                end
                IslandTPDropdownUI:SetValue(nil)
            end, function (err)
                -- 这里可以处理错误，例如打印错误信息或者显示通知
                print("Error: " .. err)
            end)
        end
    end
})
local DropdownPlace = TeleportsTab:Dropdown({
    Title = "放置传送",
    Desc = "选择一个地点进行传送",
    Multi = false,
    Value = "祭坛",
    AllowNone = true,
    Values = {
        "祭坛", "拱门", "桦木", "卤水", "深海", "深海商店", "附魔", "守护者", "模型房子", "穆斯伍德", "蘑菇林", "罗斯利特", "雪地", "雪帽", "尖刺", "雕像", "太阳石", "沼泽", "龟背", "三叉戟", "眩晕", "火山", "威尔逊", "威尔逊钓竿"
    },
    Callback = function(Tab)
        WindUI:Notify({
            Title = "传送地点选择",
            Content = "选择: " .. Tab,
            Duration = 2,
        })
        if teleportSpots ~= nil and HumanoidRootPart ~= nil then
            local teleportCFrame = teleportSpots[Tab]
            if teleportCFrame then
                HumanoidRootPart.CFrame = teleportCFrame
        else WindUI:Notify({
                Title = "传送失败",
                Content = "无效的传送地点",
                Duration = 2,
              })
            end
        end
    end
})
local teleportSpots = {
    ["祭坛"] = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    ["拱门"] = CFrame.new(998.966796875, 126.6849365234375, -1237.1434326171875),
    ["桦木"] = CFrame.new(1742.3203125, 138.25787353515625, -2502.23779296875),
    ["卤水"] = CFrame.new(-1794.10596, -145.849701, -3302.92358, -5.16176224e-05, 3.10316682e-06, 0.99999994, 0.119907647, 0.992785037, 3.10316682e-06, -0.992785037, 0.119907647, -5.16176224e-05),
    ["深海"] = CFrame.new(-1510.88672, -237.695053, -2852.90674, 0.573604643, 0.000580655003, 0.81913209, -0.000340352941, 0.999999762, -0.000470530824, -0.819132209, -8.89541116e-06, 0.573604763),
    ["深海商店"] = CFrame.new(-979.196411, -247.910156, -2699.87207, 0.587748766, 0, 0.809043527, 0, 1, 0, -0.809043527, 0, 0.587748766),
    ["附魔"] = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    ["行政官"] = CFrame.new(-29.836761474609375, -250.48486328125, 199.11614990234375),
    ["守护者"] = CFrame.new(1296.320068359375, -808.5519409179688, -298.93817138671875),
    ["模型房子"] = CFrame.new(-30.205902099609375, -249.40594482421875, 204.0529022216797),
    ["穆斯伍德"] = CFrame.new(383.10113525390625, 131.2406005859375, 243.93385314941406),
    ["蘑菇林"] = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    ["罗斯利特"] = CFrame.new(-1476.511474609375, 130.16842651367188, 671.685302734375),
    ["雪地"] = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    ["雪帽"] = CFrame.new(2648.67578125, 139.06605529785156, 2521.29736328125),
    ["尖刺"] = CFrame.new(-1254.800537109375, 133.88555908203125, 1554.2021484375),
    ["雕像"] = CFrame.new(72.8836669921875, 138.6964874267578, -1028.4193115234375),
    ["太阳石"] = CFrame.new(-933.259705, 128.143951, -1119.52063, -0.342042685, 0, -0.939684391, 0, 1, 0, 0.939684391, 0, -0.342042685),
    ["沼泽"] = CFrame.new(2501.48583984375, 127.7583236694336, -720.699462890625),
    ["龟背"] = CFrame.new(-143.875244140625, 141.1676025390625, 1909.6070556640625),
    ["三叉戟"] = CFrame.new(-1479.48987, -228.710632, -2391.39307, 0.0435845852, 0, 0.999049723, 0, 1, 0, -0.999049723, 0, 0.0435845852),
    ["眩晕"] = CFrame.new(-112.007278, -492.901093, 1040.32788, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    ["火山"] = CFrame.new(-1888.52319, 163.847565, 329.238281, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["威尔逊"] = CFrame.new(2938.80591, 277.474762, 2567.13379, 0.4648332, 0, 0.885398269, 0, 1, 0, -0.885398269, 0, 0.4648332),
    ["威尔逊钓竿"] = CFrame.new(2879.2085, 135.07663, 2723.64233, 0.970463336, -0.168695927, -0.172460333, 0.141582936, -0.180552125, 0.973321974, -0.195333466, -0.968990743, -0.151334763)
}
local DropdownArea = TeleportsTab:Dropdown({
    Title = "鱼区传送",
    Desc = "选择一个鱼区进行传送",
    Multi = false,
    Value = "罗斯利特湾",
    AllowNone = true,
    Values = {
        "罗斯利特湾", "海洋", "雪帽池塘", "穆斯伍德码头", "深海", "眩晕", "雪帽海洋", "收割者之刺", "太阳石", "罗斯利特湾海洋", "穆斯伍德池塘", "龟背海洋", "伊索纳德", "穆斯伍德海洋", "罗斯利特池塘", "穆斯伍德海洋神话", "龟背奥尔姆", "拱门", "扇贝海洋", "太阳石隐藏点", "蘑菇林石头", "守护者祭坛", "熔岩", "罗斯利特池塘海藻"
    },
    Callback = function(Tab)
        WindUI:Notify({
            Title = "鱼区传送选择",
            Content = "选择: " .. Tab,
            Duration = 2,
        })
        if FishAreas ~= nil and HumanoidRootPart ~= nil then
            if FishAreas[Tab] and typeof(FishAreas[Tab]) == "CFrame" then
                HumanoidRootPart.CFrame = FishAreas[Tab]
        else WindUI:Notify({
                Title = "传送失败",
                Content = "无效的鱼区传送地点",
                Duration = 2,
              })
            end
        end
    end
})
local FishAreas = {
    ["罗斯利特湾"] = CFrame.new(-1663.73889, 149.234116, 495.498016, 0.0380855016, 4.08820178e-08, -0.999274492, 5.74658472e-08, 1, 4.3101906e-08, 0.999274492, -5.90657123e-08, 0.0380855016),
    ["海洋"] = CFrame.new(7665.104, 125.444443, 2601.59351, 0.999966085, -0.000609769544, -0.00821684115, 0.000612694537, 0.999999762, 0.000353460142, 0.00821662322, -0.000358482561, 0.999966204),
    ["雪帽池塘"] = CFrame.new(2778.09009, 283.283783, 2580.323, 1, 7.17688531e-09, -2.22843701e-05, -7.17796267e-09, 1, -4.83369114e-08, 2.22843701e-05, 4.83370712e-08, 1),
    ["穆斯伍德码头"] = CFrame.new(343.2359924316406, 133.61595153808594, 267.0580139160156),
    ["深海"] = CFrame.new(3569.07153, 125.480949, 6697.12695, 0.999980748, -0.00188910461, -0.00591362361, 0.00193980196, 0.999961317, 0.00857902411, 0.00589718809, -0.00859032944, 0.9999457),
    ["眩晕"] = CFrame.new(-137.697098, -736.86377, 1233.15271, 1, -1.61821543e-08, -2.01375751e-05, 1.6184277e-08, 1, 1.05423091e-07, 2.01375751e-05, -1.0542341e-07, 1),
    ["雪帽海洋"] = CFrame.new(3088.66699, 131.534332, 2587.11304, 1, 4.30694858e-09, -1.19097813e-14, -4.30694858e-09, 1, -2.80603398e-08, 1.17889275e-14, 2.80603398e-08, 1),
    ["收割者之刺"] = CFrame.new(-1234.61523, 125.228767, 1748.57166, 0.999991536, -0.000663080777, -0.00405627443, 0.000725277001, 0.999881923, 0.0153511297, 0.00404561637, -0.0153539423, 0.999873936),
    ["太阳石"] = CFrame.new(-845.903992, 133.172211, -1163.57776, 1, -7.93465915e-09, -2.09446498e-05, 7.93544608e-09, 1, 3.75741536e-08, 2.09446498e-05, -3.75743205e-08, 1),
    ["罗斯利特湾海洋"] = CFrame.new(-1708.09302, 155.000015, 384.928009, 1, -9.84460868e-09, -3.24939563e-15, 9.84460868e-09, 1, 4.66220271e-08, 2.79042003e-15, -4.66220271e-08, 1),
    ["穆斯伍德池塘"] = CFrame.new(509.735992, 152.000031, 302.173004, 1, -1.78487678e-08, -8.1329488e-14, 1.78487678e-08, 1, 8.45405168e-08, 7.98205428e-14, -8.45405168e-08, 1),
    ["龟背海洋"] = CFrame.new(58.6469994, 135.499985, 2147.41699, 1, 2.09643041e-08, -5.6023784e-15, -2.09643041e-08, 1, -9.92988376e-08, 3.52064755e-15, 9.92988376e-08, 1),
    ["伊索纳德"] = CFrame.new(-1060.99902, 121.164787, 953.996033, 0.999958456, 0.000633197487, -0.00909138657, -0.000568434712, 0.999974489, 0.00712434994, 0.00909566507, -0.00711888634, 0.999933302),
    ["穆斯伍德海洋"] = CFrame.new(-167.642715, 125.19548, 248.009521, 0.999997199, -0.000432743778, -0.0023210498, 0.000467110571, 0.99988997, 0.0148265222, 0.00231437827, -0.0148275653, 0.999887407),
    ["罗斯利特池塘"] = CFrame.new(-1811.96997, 148.047089, 592.642517, 1, 1.12983072e-08, -2.16573972e-05, -1.12998171e-08, 1, -6.97014357e-08, 2.16573972e-05, 6.97016844e-08, 1),
    ["穆斯伍德海洋神话"] = CFrame.new(252.802994, 135.849625, 36.8839989, 1, -1.98115071e-08, -4.50667564e-15, 1.98115071e-08, 1, 1.22230617e-07, 2.08510289e-15, -1.22230617e-07, 1),
    ["龟背奥尔姆"] = CFrame.new(22.0639992, 182.000015, 1944.36804, 1, 1.14953362e-08, -2.7011112e-15, -1.14953362e-08, 1, -7.09263972e-08, 1.88578841e-15, 7.09263972e-08, 1),
    ["拱门"] = CFrame.new(1283.30896, 130.923569, -1165.29602, 1, -5.89772364e-09, -3.3183043e-15, 5.89772364e-09, 1, 3.63913486e-08, 3.10367822e-15, -3.63913486e-08, 1),
    ["扇贝海洋"] = CFrame.new(23.2255898, 125.236847, 738.952271, 0.999990165, -0.00109633175, -0.00429760758, 0.00115595153, 0.999902785, 0.0138949333),
    ["太阳石隐藏点"] = CFrame.new(-1139.55701, 134.62204, -1076.94324, 1, 3.9719481e-09, -1.6278158e-05, -3.97231048e-09, 1, -2.22651142e-08, 1.6278158e-05, 2.22651781e-08, 1),
    ["蘑菇林石头"] = CFrame.new(2525.36011, 131.000015, -776.184021, 1, 1.90145943e-08, -3.24206519e-15, -1.90145943e-08, 1, -1.06596836e-07, 1.21516956e-15, 1.06596836e-07, 1),
    ["守护者祭坛"] = CFrame.new(1307.13599, -805.292236, -161.363998, 1, 2.40881981e-10, -3.25609947e-15, -2.40881981e-10, 1, -1.35044154e-09, 3.255774e-15, 1.35044154e-09, 1),
    ["熔岩"] = CFrame.new(-1959.86206, 193.144821, 271.960999, 1, -6.02453598e-09, -2.97388313e-15, 6.02453598e-09, 1, 3.37767716e-08, 2.77039384e-15, -3.37767716e-08, 1),
    ["罗斯利特池塘海藻"] = CFrame.new(-1785.2869873046875, 148.15780639648438, 639.9299926757812),
}
local DropdownNPC = TeleportsTab:Dropdown({
    Title = "传送到NPC",
    Desc = "选择一个NPC进行传送",
    Multi = false,
    Value = "女巫",
    AllowNone = true,
    Values = {
        "女巫", "安静的精灵", "皮埃尔", "菲尼亚斯", "保罗", "造船工", "钓鱼者", "马克", "卢卡斯", "灯塔守护者", "旅店老板", "罗斯利特守护者", "钓鱼NPC_1", "钓鱼NPC_2", "钓鱼NPC_3", "亨利", "黛西", "鉴定师", "商人", "模组守护者", "艾什", "阿尔弗雷德里克斯"
    },
    Callback = function(Tab)
        WindUI:Notify({
            Title = "NPC传送选择",
            Content = "选择: " .. Tab,
            Duration = 2,
        })
        if racistPeople ~= nil and HumanoidRootPart ~= nil then
            local npcPosition = racistPeople[Tab]
            if npcPosition then
                if typeof(npcPosition) == "Vector3" then
                    HumanoidRootPart.CFrame = CFrame.new(npcPosition)
                elseif typeof(npcPosition) == "CFrame" then
                    HumanoidRootPart.CFrame = npcPosition
            else  WindUI:Notify({
                Title = "传送失败",
                Content = "无效的NPC传送地点",
                Duration = 2,
              })
                end
            end
        else
            print("找不到有效的传送地点")
        end
    end
})
local racistPeople = {
    ["女巫"] = CFrame.new(409.638092, 134.451523, 311.403687, -0.74079144, 0, 0.671735108, 0, 1, 0, -0.671735108, 0, -0.74079144),
    ["安静的精灵"] = CFrame.new(566.263245, 152.000031, 353.872101, -0.753558397, 0, -0.657381535, 0, 1, 0, 0.657381535, 0, -0.753558397),
    ["皮埃尔"] = CFrame.new(391.38855, 135.348389, 196.712387, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    ["菲尼亚斯"] = CFrame.new(469.912292, 150.69342, 277.954987, 0.886104584, -0, -0.46348536, 0, 1, -0, 0.46348536, 0, 0.886104584),
    ["保罗"] = CFrame.new(381.741882, 136.500031, 341.891022, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    ["造船工"] = CFrame.new(357.972595, 133.615967, 258.154541, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    ["钓鱼者"] = CFrame.new(480.102478, 150.501053, 302.226898, 1, 0, 0, 0, 1, 0, 0, 0, 1),
    ["马克"] = CFrame.new(466.160034, 151.00206, 224.497086, -0.996853352, 0, -0.0792675018, 0, 1, 0, 0.0792675018, 0, -0.996853352),
    ["卢卡斯"] = CFrame.new(449.33963, 181.999893, 180.689072, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    ["灯塔守护者"] = CFrame.new(-39.0456772, -246.599976, 195.644363, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    ["灯塔守护者2"] = CFrame.new(-17.4230175, -304.970276, -14.529892, -1, 0, 0, 0, 1, 0, 0, 0, -1),
    ["旅店老板"] = CFrame.new(487.458466, 150.800034, 231.498932, -0.564704418, 0, -0.825293183, 0, 1, 0, 0.825293183, 0, -0.564704418),
    ["罗斯利特守护者"] = CFrame.new(-1512.37891, 134.500031, 631.24353, 0.738236904, 0, -0.674541533, 0, 1, 0, 0.674541533, 0, 0.738236904),
    ["钓鱼NPC_1"] = CFrame.new(-1429.04138, 134.371552, 686.034424, 0, 0.0168599077, -0.999857903, 0, 0.999857903, 0.0168599077, 1, 0, 0),
    ["钓鱼NPC_2"] = CFrame.new(-1778.55408, 149.791779, 648.097107, 0.183140755, 0.0223737024, -0.982832015, 0, 0.999741018, 0.0227586292, 0.983086705, -0.00416803267, 0.183093324),
    ["钓鱼NPC_3"] = CFrame.new(-1778.26807, 147.83165, 653.258606, -0.129575253, 0.501478612, 0.855411887, -2.44146213e-05, 0.862683058, -0.505744994, -0.991569638, -0.0655529201, -0.111770131),
    ["亨利"] = CFrame.new(483.539307, 152.383057, 236.296143, -0.789363742, 0, 0.613925934, 0, 1, 0, -0.613925934, 0, -0.789363742),
    ["黛西"] = CFrame.new(581.550049, 165.490753, 213.499969, -0.964885235, 0, -0.262671858, 0, 1, 0, 0.262671858, 0, -0.964885235),
    ["鉴定师"] = CFrame.new(453.182373, 150.500031, 206.908783, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    ["商人"] = CFrame.new(416.690521, 130.302628, 342.765289, -0.249025017, -0.0326484665, 0.967946589, -0.0040341015, 0.999457955, 0.0326734781, -0.968488574, 0.00423171744, -0.249021754),
    ["模组守护者"] = CFrame.new(-39.0905838, -245.141144, 195.837891, -0.948549569, -0.0898146331, -0.303623199, -0.197293222, 0.91766715, 0.34490931, 0.247647122, 0.387066364, -0.888172567),
    ["艾什"] = CFrame.new(-1709.94055, 149.862411, 729.399536, -0.92290163, 0.0273250472, -0.384064913, 0, 0.997478604, 0.0709675401, 0.385035753, 0.0654960647, -0.920574605),
    ["阿尔弗雷德里克斯"] = CFrame.new(-1520.60632, 142.923264, 764.522034, 0.301733732, 0.390740901, -0.869642735, 0.0273988936, 0.908225596, 0.417582989, 0.952998459, -0.149826124, 0.26333645),
}
local DropdownItems = TeleportsTab:Dropdown({
    Title = "传送到物品",
    Desc = "选择一个物品进行传送",
    Multi = false,
    Value = "训练钓竿",
    AllowNone = true,
    Values = {
        "训练钓竿", "塑料钓竿", "幸运钓竿", "夜钓竿", "国王钓竿", "脆弱钓竿", "快速钓竿", "碳素钓竿", "长钓竿", "神话钓竿", "米达斯钓竿", "三叉戟钓竿", "基础潜水装备", "鱼雷达", "附魔祭坛", "诱饵箱", "优质诱饵箱", "蟹笼", "GPS"
    },
    Callback = function(Tab)
        WindUI:Notify({
            Title = "物品传送选择",
            Content = "选择: " .. Tab,
            Duration = 2,
        })
        if itemSpots ~= nil and HumanoidRootPart ~= nil then
            local spot = itemSpots[Tab]
            print("Value:", Tab, "Spot:", spot, "IsCFrame:", typeof(spot) == "CFrame")
            if typeof(spot) == "CFrame" then
                HumanoidRootPart.CFrame = spot
        else WindUI:Notify({
                Title = "传送失败",
                Content = "无效的物品传送地点",
                Duration = 2,
              })
            end
        end
    end
})
local itemSpots = {
    ["训练钓竿"] = CFrame.new(457.693848, 148.357529, 230.414307, 1, -0, 0, 0, 0.975410998, 0.220393807, -0, -0.220393807, 0.975410998),
    ["塑料钓竿"] = CFrame.new(454.425385, 148.169739, 229.172424, 0.951755166, 0.0709736273, -0.298537821, -3.42726707e-07, 0.972884834, 0.231290117, 0.306858391, -0.220131472, 0.925948203),
    ["幸运钓竿"] = CFrame.new(446.085999, 148.253006, 222.160004, 0.974526405, -0.22305499, 0.0233404674, 0.196993902, 0.901088715, 0.386306256, -0.107199371, -0.371867687, 0.922075212),
    ["国王钓竿"] = CFrame.new(1375.57642, -810.201721, -303.509247, -0.7490201, 0.662445903, -0.0116144121, -0.0837960541, -0.0773290396, 0.993478119, 0.657227278, 0.745108068, 0.113431036),
    ["脆弱钓竿"] = CFrame.new(471.107697, 148.36171, 229.642441, 0.841614008, 0.0774728209, -0.534493923, 0.00678436086, 0.988063335, 0.153898612, 0.540036798, -0.13314943, 0.831042409),
    ["夜钓竿"] = CFrame.new(-141.874237, -515.313538, 1139.04529, 0.161644459, -0.98684907, 1.87754631e-05, 1.87754631e-05, 2.21133232e-05, 1, -0.98684907, -0.161644459, 2.21133232e-05),
    ["快速钓竿"] = CFrame.new(447.183563, 148.225739, 220.187454, 0.981104493, 1.26492232e-05, 0.193478703, -0.0522461236, 0.962867677, 0.264870107, -0.186291039, -0.269973755, 0.944674432),
    ["碳素钓竿"] = CFrame.new(454.083618, 150.590073, 225.328827, 0.985374212, -0.170404434, 1.41561031e-07, 1.41561031e-07, 1.7285347e-06, 1, -0.170404434, -0.985374212, 1.7285347e-06),
    ["长钓竿"] = CFrame.new(485.695038, 171.656326, 145.746109, -0.630167365, -0.776459217, -5.33461571e-06, 5.33461571e-06, -1.12056732e-05, 1, -0.776459217, 0.630167365, 1.12056732e-05),
    ["神话钓竿"] = CFrame.new(389.716705, 132.588821, 314.042847, 0, 1, 0, 0, 0, -1, -1, 0, 0),
    ["米达斯钓竿"] = CFrame.new(401.981659, 133.258316, 326.325745, 0.16456604, 0.986365497, 0.00103566051, 0.00017541647, 0.00102066994, -0.999999464, -0.986366034, 0.1645661, -5.00679016e-06),
    ["三叉戟钓竿"] = CFrame.new(-1484.34192, -222.325562, -2194.77002, -0.466092706, -0.536795318, 0.703284025, -0.319611132, 0.843386114, 0.43191275, -0.824988723, -0.0234660208, -0.56466186),
    ["附魔祭坛"] = CFrame.new(1310.54651, -799.469604, -82.7303467, 0.999973059, 0, 0.00733732153, 0, 1, 0, -0.00733732153, 0, 0.999973059),
    ["诱饵箱"] = CFrame.new(384.57513427734375, 135.3519287109375, 337.5340270996094),
    ["优质诱饵箱"] = CFrame.new(-177.876, 144.472, 1932.844),
    ["蟹笼"] = CFrame.new(474.803589, 149.664566, 229.49469, -0.721874595, 0, 0.692023814, 0, 1, 0, -0.692023814, 0, -0.721874595),
    ["GPS"] = CFrame.new(517.896729, 149.217636, 284.856842, 7.39097595e-06, -0.719539165, -0.694451928, -1, -7.39097595e-06, -3.01003456e-06, -3.01003456e-06, 0.694451928, -0.719539165),
    ["基础潜水装备"] = CFrame.new(369.174774, 132.508835, 248.705368, 0.228398502, -0.158300221, -0.96061182, 1.58026814e-05, 0.986692965, -0.162594408, 0.973567724, 0.037121132, 0.225361705),
    ["鱼雷达"] = CFrame.new(365.75177, 134.50499, 274.105804, 0.704499543, -0.111681774, -0.70086211, 1.32396817e-05, 0.987542748, -0.157350808, 0.709704578, 0.110844307, 0.695724905)
}
-- 下拉菜单的创建和设置
local DropdownZoneCast = TeleportsTab:Dropdown({
    Title = "选择区域以便在任何地方",
    Desc = "", -- 如果有需要，这里可以添加描述
    Multi = false,
    Value = "", -- 这里可以设置一个默认值
    AllowNone = true, -- 允许不选择任何值
    Values = {
        "费施恐惧24", "伊索纳德", "蓝鳍金枪鱼丰富度", "", "深海", "荒凉深渊", "收割者之刺",
        "穆斯伍德码头", "穆斯伍德海洋", "穆斯伍德海洋神话", "穆斯伍德池塘", "蘑菇林水域", "海洋",
        "罗斯利特湾", "罗斯利特湾海洋", "罗斯利特池塘", "罗斯利特池塘海藻", "扇贝海洋", "雪帽海洋",
        "雪帽池塘", "太阳石", "龟背海洋", "拱门", "眩晕"
    },
    Callback = function(Value)
        print("下拉改变了:", Value)
        selectedZoneCast = Value -- 这里假设您需要将选中的值赋给某个变量
    end
})

-- 区域投射功能的实现
function ZoneCasting()
    if not ProtectPremium then
        return
    end
    spawn(function()
        while AutoZoneCast do
            local player = game.Players.LocalPlayer
            local character = player.Character
            if character then
                local tool = character:FindFirstChildOfClass("Tool")
                if tool then
                    local hasBobber = tool:FindFirstChild("bobber")
                    if hasBobber then
                        local ropeConstraint = hasBobber:FindFirstChild("RopeConstraint")
                        if ropeConstraint then
                            ropeConstraint.Length = 200000
                        end

                        local platformSize = Vector3.new(10, 1, 10)
                        local platformPositionOffset = Vector3.new(0, -4, 0)

                        -- Custom Zones
                        if selectedZoneCast == "蓝鳍金枪鱼丰富度" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("深海")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "蓝鳍金枪鱼" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        elseif selectedZoneCast == "剑鱼丰富度" then
                            local selectedZone = Workspace.zones.fishing:FindFirstChild("深海")
                            if selectedZone then
                                local abundanceValue = selectedZone:FindFirstChild("Abundance")
                                if abundanceValue and abundanceValue.Value == "剑鱼" then
                                    local bobberPosition = CFrame.new(selectedZone.Position.X, 126.564, selectedZone.Position.Z)
                                    hasBobber.CFrame = bobberPosition
                                    
                                    local platform = Instance.new("Part")
                                    platform.Size = platformSize
                                    platform.Position = hasBobber.Position + platformPositionOffset
                                    platform.Anchored = true
                                    platform.Parent = hasBobber
                                    platform.BrickColor = BrickColor.new("Bright blue")
                                    platform.Transparency = 1.000
                                end
                            end
                        else
                            -- Default Zones
                            local selectedZone = Workspace.zones.fishing:FindFirstChild(selectedZoneCast)
                            if selectedZone then
                                local bobberPosition
                                if selectedZoneCast == "费施恐惧24" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "伊索纳德" then
                                    bobberPosition = CFrame.new(selectedZone.Position.X, 126, selectedZone.Position.Z)
                                elseif selectedZoneCast == "深海" then
                                    bobberPosition = CFrame.new(1521, 126, -3543)
                                elseif selectedZoneCast == "荒凉深渊" then
                                    bobberPosition = CFrame.new(-1068, 126, -3108)
                                elseif selectedZoneCast == "收割者之刺" then
                                    bobberPosition = CFrame.new(-1234, 126, 1748)
                                elseif selectedZoneCast == "穆斯伍德码头" then
                                    bobberPosition = CFrame.new(345, 126, 214)
                                elseif selectedZoneCast == "穆斯伍德海洋" then
                                    bobberPosition = CFrame.new(890, 126, 465)
                                elseif selectedZoneCast == "穆斯伍德海洋神话" then
                                    bobberPosition = CFrame.new(270, 126, 52)
                                elseif selectedZoneCast == "穆斯伍德池塘" then
                                    bobberPosition = CFrame.new(526, 126, 305)
                                elseif selectedZoneCast == "蘑菇林水域" then
                                    bobberPosition = CFrame.new(2541, 126, -792)
                                elseif selectedZoneCast == "海洋" then
                                    bobberPosition = CFrame.new(-5712, 126, 4059)
                                elseif selectedZoneCast == "罗斯利特湾" then
                                    bobberPosition = CFrame.new(-1650, 126, 504)
                                elseif selectedZoneCast == "罗斯利特湾海洋" then
                                    bobberPosition = CFrame.new(-1825, 126, 946)
                                elseif selectedZoneCast == "罗斯利特池塘" then
                                    bobberPosition = CFrame.new(-1807, 141, 599)
                                elseif selectedZoneCast == "罗斯利特池塘海藻" then
                                    bobberPosition = CFrame.new(-1804, 141, 625)
                                elseif selectedZoneCast == "扇贝海洋" then
                                    bobberPosition = CFrame.new(16, 126, 730)
                                elseif selectedZoneCast == "雪帽海洋" then
                                    bobberPosition = CFrame.new(2308, 126, 2200)
                                elseif selectedZoneCast == "雪帽池塘" then
                                    bobberPosition = CFrame.new(2777, 275, 2605)
                                elseif selectedZoneCast == "太阳石" then
                                    bobberPosition = CFrame.new(-645, 126, -955)
                                elseif selectedZoneCast == "龟背海洋" then
                                    bobberPosition = CFrame.new(-57, 126, 2011)
                                elseif selectedZoneCast == "拱门" then
                                    bobberPosition = CFrame.new(1076, 126, -1202)
                                elseif selectedZoneCast == "眩晕" then
                                    bobberPosition = CFrame.new(-75, -740, 1200)
                                end

                                hasBobber.CFrame = bobberPosition
                                
                                local platform = Instance.new("Part")
                                platform.Size = platformSize
                                platform.Position = hasBobber.Position + platformPositionOffset
                                platform.Anchored = true
                                platform.Parent = hasBobber
                                platform.BrickColor = BrickColor.new("Bright blue")
                                platform.Transparency = 1.000
                            end
                        end
                    else
                        print("在工具中找不到玻璃板.")
                    end
                else
                    print("角色中没有找到工具.")
                end
            end
            task.wait(0.01)
        end
    end)
end
-- 选择图腾下拉菜单
local TotemTPDropdownUI = TeleportsTab:Dropdown({
    Title = "选择图腾",
    Values = {"极光", "日晷", "风向标", "烟幕", "风暴"},
    Multi = false,
    Default = nil,
    Callback = function(Value)
        SelectedTotem = Value
        if SelectedTotem == "极光" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1811, -137, -3282)
        elseif SelectedTotem == "日晷" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1148, 135, -1075)
        elseif SelectedTotem == "风向标" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2849, 178, 2702)
        elseif SelectedTotem == "烟幕" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(2789, 140, -625)
        elseif SelectedTotem == "风暴" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(35, 133, 1943)
        end
        -- 重置下拉菜单选择
        TotemTPDropdownUI:SetValue(nil)
    end
})

-- 选择世界事件下拉菜单
local WorldEventTPDropdownUI = TeleportsTab:Dropdown({
    Title = "选择世界事件",
    Values = {"奇怪的漩涡", "大锤头鲨", "大白鲨", "鲸鲨", "深渊 - 蛇"},
    Multi = false,
    Default = nil,
    Callback = function(Value)
        SelectedWorldEvent = Value
        if SelectedWorldEvent == "奇怪的漩涡" then
            local offset = Vector3.new(25, 135, 25)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Isonade")
            if not WorldEvent then 
                WorldEventTPDropdownUI:SetValue(nil) 
                return ShowNotification("未找到奇怪的漩涡") 
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(WorldEvent.Position + offset)                           -- 奇怪的漩涡
        elseif SelectedWorldEvent == "大锤头鲨" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great Hammerhead Shark")
            if not WorldEvent then 
                WorldEventTPDropdownUI:SetValue(nil) 
                return ShowNotification("未找到大锤头鲨") 
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(WorldEvent.Position + offset)         -- 大锤头鲨
        elseif SelectedWorldEvent == "大白鲨" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Great White Shark")
            if not WorldEvent then 
                WorldEventTPDropdownUI:SetValue(nil) 
                return ShowNotification("未找到大白鲨") 
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(WorldEvent.Position + offset)               -- 大白鲨
        elseif SelectedWorldEvent == "鲸鲨" then
            local offset = Vector3.new(0, 135, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("Whale Shark")
            if not WorldEvent then 
                WorldEventTPDropdownUI:SetValue(nil) 
                return ShowNotification("未找到鲸鲨") 
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(WorldEvent.Position + offset)                     -- 鲸鲨
        elseif SelectedWorldEvent == "深渊 - 蛇" then
            local offset = Vector3.new(0, 50, 0)
            local WorldEvent = game.Workspace.zones.fishing:FindFirstChild("The Depths - Serpent")
            if not WorldEvent then 
                WorldEventTPDropdownUI:SetValue(nil) 
                return ShowNotification("未找到深渊 - 蛇") 
            end
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(WorldEvent.Position + offset)            -- 深渊 - 蛇
        end
        -- 重置下拉菜单选择
        WorldEventTPDropdownUI:SetValue(nil)
    end
})
-- 传送至旅行商人按钮
TeleportsTab:Button({
    Title = "传送至旅行商人",
    Description = "传送到旅行商人.",
    Callback = function()
        local Merchant = game.Workspace.active:FindFirstChild("Merchant Boat")
        if not Merchant then return ShowNotification("未找到商人") end
        HumanoidRootPart.CFrame = CFrame.new(game.Workspace.active["Merchant Boat"].Boat["Merchant Boat"].r.HandlesR.Position)
    end
})

-- 创建安全区按钮
TeleportsTab:Button({
    Title = "创建安全区",
    Callback = function()
        local SafeZone = Instance.new("Part")
        SafeZone.Size = Vector3.new(30, 1, 30)
        SafeZone.Position = Vector3.new(math.random(-2000,2000), math.random(50000,90000), math.random(-2000,2000))
        SafeZone.Anchored = true
        SafeZone.BrickColor = BrickColor.new("Bright purple")
        SafeZone.Material = Enum.Material.ForceField
        SafeZone.Parent = game.Workspace
        HumanoidRootPart.CFrame = SafeZone.CFrame + Vector3.new(0, 5, 0)
    end
})

MiscTab:Section({ 
    Title = "角色",
    TextXAlignment = "Center"
})
local Button = MiscTab:Toggle({
    Title = "水上行走",
    Default = false, -- 假设默认值为false，您可以根据需要修改
    Callback = function(state)
        -- 按钮状态改变时执行的代码
        for i, v in pairs(workspace.zones.fishing:GetChildren()) do
            if v.Name == WalkZone then
                v.CanCollide = state
                if v.Name == "Ocean" then
                    for i, v in pairs(workspace.zones.fishing:GetChildren()) do
                        if v.Name == "Deep Ocean" then
                            v.CanCollide = state
                        end
                    end
                end
            end
        end
    end,
})

local WalkOnWaterZone = MiscTab:Dropdown({
    Title = "水上行走区域",
    Values = {"Ocean", "Desolate Deep", "The Depths"},
    Multi = false,
    Default = "Ocean",
    Callback = function(Value)
        WalkZone = Value
    end
})

local WalkSpeedSliderUI = MiscTab:Slider({
    Title = "行走速度",
    Step = 1,
    Value = {
        Min = 16,
        Max = 200,
        Default = 16,
    },
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
    end
})

local JumpHeightSliderUI = MiscTab:Slider({
    Title = "跳跃高度",
    Step = 1,
    Value = {
        Min = 50,
        Max = 200,
        Default = 50,
    },
    Callback = function(value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
    end
})

local ToggleNoclip = MiscTab:Toggle({
    Title = "穿墙",
    Default = false,
    Callback = function(state)
        Noclip = Options.ToggleNoclip.Value
    end,
})

-- // 杂项标签页 // --
MiscTab:Section({ 
    Title = "杂项",
    TextXAlignment = "Center"
})

local BypassRadar = MiscTab:Toggle({
    Title = "绕过鱼群雷达",
    Default = false,
    Callback = function(state)
        for _, v in pairs(game:GetService("CollectionService"):GetTagged("radarTag")) do
            if v:IsA("BillboardGui") or v:IsA("SurfaceGui") then
                v.Enabled = state
            end
        end
    end
})
local BypassGPS = MiscTab:Toggle({
    Title = "绕过GPS",
    Default = false,
    Callback = function(state)
        if state == true then
            local XyzClone = game:GetService("ReplicatedStorage").resources.items.items.GPS.GPS.gpsMain.xyz:Clone()
            XyzClone.Parent = game.Players.LocalPlayer.PlayerGui:WaitForChild("hud"):WaitForChild("safezone"):WaitForChild("backpack")
            local Pos = GetPosition()
            local StringInput = string.format("%s, %s, %s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
            XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font>: "..StringInput
            BypassGpsLoop = game:GetService("RunService").Heartbeat:Connect(function()
                local Pos = GetPosition()
                StringInput = string.format("%s, %s, %s", ExportValue(Pos[1]), ExportValue(Pos[2]), ExportValue(Pos[3]))
                XyzClone.Text = "<font color='#ff4949'>X</font><font color = '#a3ff81'>Y</font><font color = '#626aff'>Z</font> : "..StringInput
            end)
        else
            if game.Players.LocalPlayer.PlayerGui.hud.safezone.backpack:FindFirstChild("xyz") then
                game.Players.LocalPlayer.PlayerGui.hud.safezone.backpack:FindFirstChild("xyz"):Destroy()
            end
            if BypassGpsLoop then
                BypassGpsLoop:Disconnect()
                BypassGpsLoop = nil
            end
        end
    end
})
local RemoveFog = MiscTab:Toggle({
    Title = "移除雾气",
    Default = false,
    Callback = function(state)
        if state == true then
            if game:GetService("Lighting"):FindFirstChild("Sky") then
                game:GetService("Lighting"):FindFirstChild("Sky").Parent = game:GetService("Lighting").bloom
            end
        else
            if game:GetService("Lighting").bloom:FindFirstChild("Sky") then
                game:GetService("Lighting").bloom:FindFirstChild("Sky").Parent = game:GetService("Lighting")
            end
        end
    end
})
local DayOnly = MiscTab:Toggle({
    Title = "仅白天",
    Default = false,
    Callback = function(state)
        if state == true then
            DayOnlyLoop = game:GetService("RunService").Heartbeat:Connect(function()
                game:GetService("Lighting").TimeOfDay = "12:00:00"
            end)
        else
            if DayOnlyLoop then
                DayOnlyLoop:Disconnect()
                DayOnlyLoop = nil
            end
        end
    end
})
local HoldDuration = MiscTab:Toggle({
    Title = "持续时间0秒",
    Default = false,
    Callback = function(state)
        if state == true then
            for i,v in ipairs(game:GetService("Workspace"):GetDescendants()) do
                if v.ClassName == "ProximityPrompt" then
                    v.HoldDuration = 0
                end
            end
        end
    end
})
local DisableOxygen = MiscTab:Toggle({
    Title = "禁用氧气",
    Default = true,
    Callback = function(state)
        game.Players.LocalPlayer.Character.client.oxygen.Disabled = state
    end
})


MiscTab:Button({
    Title = "复制位置坐标",
    Description = "复制到剪贴板",
    Callback = function()
        local XYZ = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. XYZ .. ")")
    end
})

local JustUI = MiscTab:Toggle({
    Title = "显示/隐藏UI",
    Desc = "若发现你下方菜单来不显示可以试试这个",
    Default = true,
    Callback = function(state)
        local BlackShow = state
        if BlackShow then
            game.Players.LocalPlayer.PlayerGui.hud.safezone.Visible = true
        else
            game.Players.LocalPlayer.PlayerGui.hud.safezone.Visible = false
        end
    end
})

local IdentityHiderUI = MiscTab:Toggle({
    Title = "保护身份",
    Default = false,
    Callback = function(state)
        while state == true do
            if game.Players.LocalPlayer:FindFirstChild("streak") then game.Players.LocalPlayer.streak.Text = "隐藏" end
            if game.Players.LocalPlayer:FindFirstChild("level") then game.Players.LocalPlayer.level.Text = "等级：隐藏" end
            if game.Players.LocalPlayer:FindFirstChild("user") then game.Players.LocalPlayer.user.Text = "隐藏" end
            local hud = game.Players.LocalPlayer:WaitForChild("PlayerGui"):WaitForChild("hud"):WaitForChild("safezone")
            if hud:FindFirstChild("coins") then hud.coins.Text = "隐藏$" end
            if hud:FindFirstChild("lvl") then hud.lvl.Text = "隐藏等级" end
            task.wait(0.01)
        end
    end
})
MiscTab:Button({
    Title = "删除标志",
    Callback = function()
        local flags = workspace.active.flags
        if flags then
            flags:Destroy()
        end
    end
})

MiscTab:Dialog({
    Title = "删除纹理",
    Content = "降低延迟",
    Callback = function()
        Window:Dialog({
            Title = "激活FPS助推器?",
            Content = "Pro",
            Buttons = {
                {
                    Title = "确认",
                    Callback = function()
                        loadstring(game:HttpGet('https://raw.githubusercontent.com/ago106/ScriptsRoblox/refs/heads/main/FpS'))()
                    end
                },
                {
                    Title = "取消",
                    Callback = function()
                        print("取消了.")
                    end
                }
            }
        })
    end
})
-- // 加载标签页 // --
MiscTab:Section({ 
    Title = "额外脚本",
    TextXAlignment = "Center"
})

MiscTab:Button({
    Title = "Infinite-Yield FE",
    Callback = function()
        loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
    end
})
MiscTab:Button({
    Title = "RemoteSpy",
    Callback = function()
        loadstring(game:HttpGetAsync("https://github.com/richie0866/remote-spy/releases/latest/download/RemoteSpy.lua"))()
    end
})
end

Window:SelectTab(1)
WindUI:Notify({
    Title = "XGOHUB | Fisch",
    Content = "执行完毕！",
    Duration = 8
})
local ToggleUIKeybind = SettingsTab:Keybind({
    Title = "切换UI",
    DefaultKey = Enum.KeyCode.RightControl,
    Callback = function()
        Window:ToggleUI()
    end,
})
SettingsTab:Button({
    Title = "通用[XGOHUB]",
    Desc = "通用脚本[等待1~5秒]",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/2.1814.lua?raw=true"))()
    end,
})

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = SettingsTab:Dropdown({
    Title = "选择主题",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = SettingsTab:Toggle({
    Title = "切换窗口透明度",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

SettingsTab:Section({ Title = "保存" })

local fileNameInput = ""
SettingsTab:Input({
    Title = "输入文件名",
    PlaceholderText = "输入文件名",
    Callback = function(text)
        fileNameInput = text
    end
})

SettingsTab:Button({
    Title = "保存文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

SettingsTab:Section({ Title = "加载" })

local filesDropdown
local files = ListFiles()

filesDropdown = SettingsTab:Dropdown({
    Title = "选择文件",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
    end
})

SettingsTab:Button({
    Title = "加载文件",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "文件已加载",
                    Content = "加载的数据: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})
SettingsTab:Button({
    Title = "覆盖文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})
SettingsTab:Button({
    Title = "刷新列表",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})
local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].PlaceholderText

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        PlaceholderText = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = CreateThemeTab:Input({
    Title = "主题名称",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})
CreateThemeTab:Colorpicker({
    Title = "背景颜色",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "轮廓颜色",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "文字颜色",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "占位符文本颜色",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

CreateThemeTab:Button({
    Title = "更新主题",
    Callback = function()
        updateTheme()
    end
})