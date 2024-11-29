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

local Window = WindUI:CreateWindow({
    Title = game:GetService("MarketplaceService"):GetProductInfo(16732694052).Name .." | CupPink - 高级",
    SubTitle = " (259461151)",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- 模糊效果可能会被检测到，设置为false将完全禁用模糊效果
    Theme = "Rose",
    MinimizeKey = Enum.KeyCode.LeftControl -- 当没有最小化键绑定时使用
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
    Fluent:Notify({
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
                if CastMode == "Legit" then
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
                elseif CastMode == "Blatant" then
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
    if ShakeMode == "Navigation" then
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
    elseif ShakeMode == "Mouse" then
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
    if ReelMode == "Legit" then
        if autoReelConnection or not autoReelEnabled then return end
        noperfect()
        task.wait(2)
        autoReelConnection = RunService.RenderStepped:Connect(autoReel)
    elseif ReelMode == "Blatant" then
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
shadowCountLabel.Text = "Shadow Count: 0"

local corner = Instance.new("UICorner", shadowCountLabel)
corner.CornerRadius = UDim.new(0, 10)

local function updateShadowCount()
    local count = #workspace.Shadows:GetChildren()
    shadowCountLabel.Text = "Shadow Count: " .. count
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
    Tabs.Home:AddButton({
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
local sectionAutoFishing = MainTab:AddSection("自动钓鱼")
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
                        if CastMode == "Legit" then
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
                        elseif CastMode == "Blatant" then
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
    Values = {"Legit", "Blatant"},
    Multi = false,
    Default = CastMode,
    Callback = function(Value)
        CastMode = Value
    end
})

local autoShakeModeDropdown = MainTab:Dropdown({
    Title = "自动摇竿模式",
    Values = {"Navigation", "Mouse"},
    Multi = false,
    Default = ShakeMode,
    Callback = function(Value)
        ShakeMode = Value
    end
})

local autoReelModeDropdown = MainTab:Dropdown({
    Title = "自动收线模式",
    Values = {"Legit", "Blatant"},
    Multi = false,
    Default = ReelMode,
    Callback = function(Value)
        ReelMode = Value
    end
})

-- // 售卖标签页 // --
local sectionSellItems = ItemsTab:AddSection("售卖物品")
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
    Title = "复制XYZ",
    Description = "复制到剪贴板",
    Callback = function()
        local XYZ = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. XYZ .. ")")
    end
})

local JustUI = MiscTab:Toggle({
    Title = "显示/隐藏UI",
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