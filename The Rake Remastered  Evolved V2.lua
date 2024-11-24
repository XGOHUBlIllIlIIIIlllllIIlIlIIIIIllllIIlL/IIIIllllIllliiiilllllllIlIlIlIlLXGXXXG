--[[
	MADE BY Pixeluted#5815
	DO NOT RESELL
	OR CLAIM TO BE YOURS
--]]

if not LPH_OBFUSCATED then
    LPH_JIT_MAX = function(...) return(...) end;
    LPH_NO_VIRTUALIZE = function(...) return(...) end;
end

if not writefile or not readfile or not isfile or not isfolder or not hookfunction or not hookmetamethod then 
    game.Players.LocalPlayer:Kick("不支持的漏洞！缺少函数 writefile, readfile, isfile, isfolder, hookfunction, hookmetamethod")
end

if game.PlaceId ~= 2413927524 then 
    game.Players.LocalPlayer:Kick("无效的游戏！请加入 Rake Remastered")
end

if _G.RakeEvolvedShutDownFunction and typeof(_G.RakeEvolvedShutDownFunction) == "function" then 
	_G.RakeEvolvedShutDownFunction()
end

-- [[ VARIABLES ]] --

local Player = game.Players.LocalPlayer 

if Player.Character == nil then
   Player.CharacterAdded:Wait()
   Player.Character:WaitForChild("Humanoid")
   Player.Character:WaitForChild("HumanoidRootPart")
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")

local Timer = ReplicatedStorage:WaitForChild("Timer")

local FilterFolder = workspace:WaitForChild("Filter")
local ScrapFolder = FilterFolder:WaitForChild("ScrapSpawns")
local TrapsFolder = game:GetService("Workspace"):WaitForChild("Debris"):WaitForChild("Traps")
local CurrentLightingProperties = ReplicatedStorage:WaitForChild("CurrentLightingProperties")

local UI = loadstring(game:HttpGet("https://raw.githubusercontent.com/Pixeluted/RakeEvolved/Stable/MainUI.lua"))()
local Library = UI:Init()

local Labels = {
	ScrapLabels = {},
	SupplyDropLabels = {},
	PlayersLabels = {},
	WaypointLabels = {},
	RakeLabels = {},
	RakeInfoLabel = nil,
	FlareGunLabels = {}
}


local MapPoints = {
	["Safehouse"] = Vector3.new(-352.336, 16.1844, 63.7742),
	["Powerstation"] = Vector3.new(-311.052, 21.2032, -209.896),
	["Shop"] = Vector3.new(-24.9913, 16.3039, -252.213),
	["ObservationTower"] = Vector3.new(33.1612, 16.209, -45.1087),
	["Basecamp"] = Vector3.new(-75.4166, 16.7219, 214.085),
}

local Toggles = {
	sprint = false,
	scrapESP = false,
	rakeESP = false,
	playerESP = false,
	flaregunESP = false,
	flaregunNotification = false,
	supplydropESP = false,
	bypassSupplyDropLock = false,
	stunstickModifier = false,
	uvlampModifier = false,
	flashlightModifier = false,
	fullbright = false,
	nofog = false,
	alwaysDay = false,
	alwaysNight = false,
	waypoints = false,
	showRakeInfo = false,
	infiniteStamina = false,
	noFallDamage = false,
	viewCameras = false,
	timer = false,
	powerLevel = false,
	stunstickAura = false,
	unlockThirdPerson = false
}

------- [[ 函数 ]] -------

-- [[ 检测钩子 ]] --

local detectionCounter = 0
local detectionHook; detectionHook = hookmetamethod(game.StarterGui, '__namecall', function(self, ...)
    local Method = getnamecallmethod()

    if Method == 'SetCore' then
        detectionCounter = detectionCounter + 1
        return nil
    end 

    return detectionHook(self, ...)
end)

-- [[ 碎片 ]] --

local function getScraps()
    local Scraps = {}

    for _,ScrapSpawn in pairs(ScrapFolder:GetChildren()) do 
        if ScrapSpawn:FindFirstChildOfClass("Model") and ScrapSpawn:FindFirstChildOfClass("Model"):FindFirstChild("Scrap")  then
            table.insert(Scraps, ScrapSpawn:FindFirstChildOfClass("Model")["Scrap"])
        end
    end

    return Scraps
end

-- [[ 补给箱函数 ]] --

function viewSupplyDropItems(box)
	local MainViewer = Library:CreateSupplyDropUI()

	local ItemsFolder = box.Items_Folder

	for i, item in pairs(ItemsFolder:GetChildren()) do 
		MainViewer[i].Image = "rbxassetid://"..item.ImageID.Value

		if item.Taken.Value == true then
			MainViewer[i]:Destroy()
		end
	end
end

function bypassSupplyDropLock(box)
	for _,v in pairs(getconnections(box.GUIPart.ProximityPrompt.Triggered)) do 
		v:Disable()
	end

	local connection; connection = box.GUIPart.ProximityPrompt.Triggered:Connect(function(plr)
		if plr == Player and not box.DB_Folder:FindFirstChild(Player.Name) then
			local MainViewer = Library:CreateSupplyDropUI()

			local ItemsFolder = box.Items_Folder

			for i, item in pairs(ItemsFolder:GetChildren()) do 
				MainViewer[i].Image = "rbxassetid://"..item.ImageID.Value
				MainViewer[i].Modal = true

				if item.Taken.Value == true then 
					MainViewer[i].Visible = false
				else 
					local buttonConnection; buttonConnection = MainViewer[i].MouseButton1Click:Connect(function()
						ReplicatedStorage.SupplyClientEvent:FireServer("Collect", item.Name)
						buttonConnection:Disconnect()
						MainViewer:Destroy()
					end)
				end

			end

		end
	end)
end

-- [[ ESP ]] --

local colorTable = {
	["废铁"] = Color3.fromRGB(255, 255, 255),
	["Rake"] = Color3.fromRGB(255, 0, 0),
	["信号枪"] = Color3.fromRGB(0, 170, 255),
	["供应箱"] = Color3.fromRGB(85, 170, 0),
	["Player"] = Color3.fromRGB(255, 128, 0),
	["Waypoint"] = Color3.fromRGB(255, 247, 0)
}

local MISCESP = {
	Player = "Player",
	Waypoint = "Waypoint"
}

local function insertObjectToProperTable(object, Text, isThisPlayer, isThisWaypoint)
	if Text == "废铁" then 
		table.insert(Labels.ScrapLabels, object)
	elseif Text == "Rake" then
		table.insert(Labels.RakeLabels, object)
	elseif Text == "信号枪" then
		table.insert(Labels.FlareGunLabels, object)
	elseif Text == "供应箱" then
		table.insert(Labels.SupplyDropLabels, object)
	elseif isThisPlayer then
		table.insert(Labels.PlayersLabels, object)
	elseif isThisWaypoint then
		table.insert(Labels.WaypointLabels, object)
	end
end

local function ESP(object, Text, markObject, misc)
	local isThisLiveEntity = object.Parent:FindFirstChild("Humanoid")

	if isThisLiveEntity == nil then isThisLiveEntity = false else isThisLiveEntity = true end

    	if object.Size == nil then 
           warn("无效的对象试图esp！ 忽略.")
	   return
        end

	local colorToUse = nil
	local isThisPlayer = false
	local isThisWaypoint = false

	if colorTable[Text] then
		colorToUse = colorTable[Text]
	elseif misc == MISCESP.Player then
		colorToUse = colorTable[MISCESP.Player]
		isThisPlayer = true
	elseif misc == MISCESP.Waypoint then
		colorToUse = colorTable[MISCESP.Waypoint]
		isThisWaypoint = true
	end

	local BillboardGUI = Instance.new("BillboardGui")
	BillboardGUI.Parent = object
	BillboardGUI.Adornee = object
	BillboardGUI.AlwaysOnTop = true
	BillboardGUI.Size = UDim2.new(1, 1, 1)
	BillboardGUI.Name = "Isguied"
	BillboardGUI.Active = true
	BillboardGUI.Enabled = true
	BillboardGUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	insertObjectToProperTable(BillboardGUI, Text, isThisPlayer, isThisWaypoint)

	local Label = Instance.new("TextLabel")
	Label.Parent = BillboardGUI
	Label.Size = UDim2.new(1, 1, 1)
	Label.TextColor3 = colorToUse
	Label.Active = true
	Label.Text = Text
	Label.ZIndex = 1
	Label.Visible = true
	Label.BackgroundTransparency = 1
	Label.TextStrokeTransparency = 1
	Label.Name = "Label"

	if isThisLiveEntity then
		BillboardGUI.ExtentsOffset = Vector3.new(0, 2.7, 0)
	end

	if markObject then
		if isThisLiveEntity then
			local allChildrens = object.Parent:GetDescendants()

			for _,part in pairs(allChildrens) do 
				if part:IsA("BasePart") then
					local Box = Instance.new("BoxHandleAdornment")
					Box.Size = part.Size + Vector3.new(0.1, 0.1, 0.1)
					Box.Name = "ESPPart"
					Box.Adornee = part
					Box.AlwaysOnTop = true
					Box.ZIndex = 5
					Box.Transparency = 0.5
					Box.Color3 = colorToUse
					Box.Parent = part

					insertObjectToProperTable(Box, Text, isThisPlayer, isThisWaypoint)
				end
			end
		else 
			local Box = Instance.new("BoxHandleAdornment")
			Box.Size = object.Size + Vector3.new(0.1, 0.1, 0.1)
			Box.Name = "ESPPart"
			Box.Adornee = object
			Box.AlwaysOnTop = true
			Box.ZIndex = 5
			Box.Transparency = 0.5
			Box.Color3 = colorToUse
			Box.Parent = object

			insertObjectToProperTable(Box, Text, isThisPlayer, isThisWaypoint)
		end
	end

end

------------------------------------------------------------------------

function indexAllScraps()
	for _,Scrap in pairs(getScraps()) do 
		if not Scrap:FindFirstChild("Isguied") then
			ESP(Scrap, "Scrap", true)
		end
	end
end

function addScrapLabel(Scrap)
	if not Scrap:FindFirstChild("Isguied") then
		ESP(Scrap, "Scrap", true)
	end
end

function setupScrapDetection()
	for _,ScrapSpawn in pairs(ScrapFolder:GetChildren()) do 
		ScrapSpawn.ChildAdded:Connect(function(object)
			if Toggles.scrapESP then 
				addScrapLabel(object:WaitForChild("Scrap"))
			end
		end)
	end

	print("废旧检测已加载!")
end

function destroyScrapLabels()
	for _,scrapBill in pairs(Labels.ScrapLabels) do 
		scrapBill:Destroy()
	end
end

------------------------------------------------------------------------

function indexRake()
	local RakeInWorkspace = workspace:FindFirstChild("Rake")

	if RakeInWorkspace then
		if not RakeInWorkspace.HumanoidRootPart:FindFirstChild("Isguied") then 

			if Toggles.rakeESP then
				ESP(RakeInWorkspace.HumanoidRootPart, "Rake", true)
			end

			if RakeInWorkspace:FindFirstChild("AttackHitbox") then
				RakeInWorkspace.AttackHitbox.Size = Vector3.new(2048,2048,2048)
			end
		end
	end
end

function addRakeLabel(Rake)
	if Toggles.rakeESP then 
		if not Rake.HumanoidRootPart:FindFirstChild("Isguied") then 
			ESP(Rake.HumanoidRootPart, "Rake", true)

			if Rake:FindFirstChild("AttackHitbox") then
				Rake.AttackHitbox.Size = Vector3.new(2048,2048,2048)
			end
		end
	end

	Rake:WaitForChild("Head")
	if Toggles.showRakeInfo then 
		if not Labels.RakeInfoLabel  then 
			local BillboardGui = Instance.new("BillboardGui")
			local HPStatus = Instance.new("TextLabel")
			local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
			local Stunned = Instance.new("TextLabel")
			local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

			BillboardGui.Parent = Rake.Head
			BillboardGui.Active = true
			BillboardGui.AlwaysOnTop = true
			BillboardGui.LightInfluence = 1.000
			BillboardGui.Size = UDim2.new(5, 0, 3, 0)
			BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 2, 0)

			HPStatus.Name = "HPStatus"
			HPStatus.Parent = BillboardGui
			HPStatus.AnchorPoint = Vector2.new(0.5, 0.5)
			HPStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			HPStatus.BackgroundTransparency = 1.000
			HPStatus.Position = UDim2.new(0.5, 0, 0.200000003, 0)
			HPStatus.Size = UDim2.new(0.75757575, 0, 0.316455692, 0)
			HPStatus.Font = Enum.Font.SourceSans
			HPStatus.Text = "HP: 500"
			HPStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
			HPStatus.TextScaled = true
			HPStatus.TextSize = 14.000
			HPStatus.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
			HPStatus.TextWrapped = true

			UITextSizeConstraint.Parent = HPStatus

			Stunned.Name = "Stunned"
			Stunned.Parent = BillboardGui
			Stunned.AnchorPoint = Vector2.new(0.5, 0.5)
			Stunned.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Stunned.BackgroundTransparency = 1.000
			Stunned.Position = UDim2.new(0.5, 0, 0.5, 0)
			Stunned.Size = UDim2.new(0.75757575, 0, 0.316455692, 0)
			Stunned.Font = Enum.Font.SourceSans
			Stunned.Text = "Stunned: No"
			Stunned.TextColor3 = Color3.fromRGB(255, 255, 255)
			Stunned.TextScaled = true
			Stunned.TextSize = 14.000
			Stunned.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
			Stunned.TextWrapped = true

			UITextSizeConstraint_2.Parent = Stunned

			Labels.RakeInfoLabel = BillboardGui
		end
	end
end

function setupRakeDetection()
	workspace.ChildAdded:Connect(function(object)
		if object.Name == "Rake" then 
			object:WaitForChild("HumanoidRootPart")
			Labels.RakeInfoLabel = nil
			addRakeLabel(object)
		end
	end)

	print("Rake检测已加载!")
end

function destroyRakeLabel()
	if Labels.RakeLabels then 
		for _,obj in pairs(Labels.RakeLabels) do 
			obj:Destroy()
		end
		Labels.RakeLabel = {}
	end
end

------------------------------------------------------------------------

function indexAllPlayers()
	if Toggles.playerESP then
		local playerList = game.Players:GetPlayers()

		for _,player in pairs(playerList) do 
			if player.Name ~= Player.Name then 
				local char = player.Character

				if char and char:FindFirstChild("HumanoidRootPart") then 
					if not char.HumanoidRootPart:FindFirstChild("Isguied") then 
						ESP(char.HumanoidRootPart, player.Name, true, MISCESP.Player)
					end
				end
			end
		end	
	end
end

function addPlayerLabel(character)
	if character and character:FindFirstChild("HumanoidRootPart") then 
		if not character.HumanoidRootPart:FindFirstChild("Isguied") then 
			ESP(character.HumanoidRootPart, character.Name, true, MISCESP.Player)
		end
	end
end

function setupPlayerDetection()
	RunService.RenderStepped:Connect(function()
		indexAllPlayers()
	end)

	print("玩家检测已加载!")
end

function destroyPlayerLabels()
    print("已调用销毁玩家标签")

    for _, billgui in pairs(Labels.PlayersLabels) do 
        billgui:Destroy()
        print("在玩家标签中销毁")
    end
    Labels.PlayersLabels = {}
end

------------------------------------------------------------------------

function indexFlareGun()
    local FlareGunInWorkspace = workspace:FindFirstChild("FlareGunPickUp")

    if FlareGunInWorkspace then
        if not FlareGunInWorkspace:FindFirstChild("Isguied") then
            ESP(FlareGunInWorkspace, "Flare Gun", true)

            if Toggles.flaregunNotification then
                Library:CreateNotification("信号枪生成！", "你现在可以传送到信号枪那里了！", 5)
            end
        end
    end
end

function addFlareGunLabel(flareGun)
    if not flareGun:FindFirstChild("Isguied") then
        ESP(flareGun, "Flare Gun", true)
    end
end

function setupFlareGunDetection()
    RunService.RenderStepped:Connect(function()
        indexFlareGun()
    end)

    print("信号枪检测已加载！")
end

function destroyFlareGunLabel()
	if Labels.FlareGunLabels then 
		for _,obj in pairs(Labels.FlareGunLabels) do 
			obj:Destroy()
		end
		Labels.FlareGunLabels = {}
	end
end

------------------------------------------------------------------------

function createWaypoints()
	for mapPoint, point in pairs(MapPoints) do 
		local part = Instance.new("Part")
		part.Transparency = 1
		part.Anchored = true
		part.CanCollide = false 
		part.Position = point
		part.Parent = workspace

		ESP(part, mapPoint, false, MISCESP.Waypoint)
	end
end

function destroyWaypoints()
	for _,bill in pairs(Labels.WaypointLabels) do 
		bill.Parent:Destroy()
	end

	Labels.WaypointLabels = {}
end

------------------------------------------------------------------------

function indexAllSupplyDrops()
    local SupplyCrates = workspace.Debris.SupplyCrates

    for _, box in pairs(SupplyCrates:GetChildren()) do 
        if box.Name == "Box" then 
            if not box.HitBox:FindFirstChild("Isguied") then 
                if Toggles.supplydropESP then 
                    ESP(box.HitBox, "Supply Crate", true)
                end

                Library:CreateNotification("补给箱生成！", “你现在可以查看补给箱里的物品了”， 5)
            end

            if Toggles.bypassSupplyDropLock then
                bypassSupplyDropLock(box)
            end
        end
    end
end

function setupSupplyDropDetection()
    local SupplyCrates = workspace.Debris.SupplyCrates

    SupplyCrates.ChildAdded:Connect(function(object)
        if object.Name == "Box" then 
            if not object.HitBox:FindFirstChild("Isguied") then
                if Toggles.supplydropESP then 
                    ESP(object.HitBox, "Supply Crate", true)
                end

                Library:CreateNotification("补给箱生成！", “你现在可以查看补给箱里的物品了”， 5)

                if Toggles.bypassSupplyDropLock then
                    bypassSupplyDropLock(object)
                end
            end
        end
    end)

    print("补给箱检测已加载！")
end

function destroySupplyDropLabels()
	for _,bill in pairs(Labels.SupplyDropLabels) do 
		bill:Destroy()
	end
end

-- [[ 无限体力 ]] --

function hookInfiniteStamina()
    LPH_JIT_MAX(function() 
        for _,v in pairs(getloadedmodules()) do 
            if v.Name == "M_H" then
                local module = require(v)
                local old; old = hookfunction(module.TakeStamina, function(smth, amount)
                    if amount > 0 then return old(smth, -0.5) end 
                    return old(smth, amount)
                end)
            end
        end	
    end)()

    Library:CreateNotification("提示", "要关闭无限体力，你需要先禁用这个功能，然后重置你的角色！", 5)
end

-- [[ 无跌落伤害 ]] --

function hookNoFallDamage()
    local NoFallDamage; NoFallDamage = hookmetamethod(game, "__namecall", function(...)
        local Method = getnamecallmethod()
        local Args = {...}

        if Method == "FireServer" then 
            if tostring(...) == "FD_Event" then 
                return
            end
        end

        return NoFallDamage(...)
    end)
end

-- [[ 眩晕棒修改器 ]] --

function modifyCurrentStunStick()
	local theTool = Player.Backpack:FindFirstChild("StunStick") or Player.Character:FindFirstChild("StunStick")

	if theTool == nil then return end

	if theTool:FindFirstChild("Modified") then return end

	task.wait(1)
	Player.Character.Humanoid:EquipTool(theTool)
	task.wait(1)

	for _,v in pairs(getconnections(theTool.Activated)) do 
		v:Disable()
	end

	theTool.Activated:Connect(function()
		local anim = Player.Character.Humanoid:LoadAnimation(theTool.SwingAnim)
		anim:Play()

		theTool.Event:FireServer("S")

		if workspace:FindFirstChild("Rake") then 
			if workspace.Rake:FindFirstChild("Torso") then 
				for i = 0, 20, 1 do 
					theTool.Event:FireServer("H", workspace.Rake.Torso)
				end
			end
		end
	end)

	local modifiedTag = Instance.new("BoolValue")
	modifiedTag.Name = "Modified"
	modifiedTag.Parent = theTool
end

-- [[ 紫外线灯修改器 ]] --

function modifyCurrentUVLamp()
    local theTool = Player.Backpack:FindFirstChild("UV_Lamp") or Player.Character:FindFirstChild("UV_Lamp")

    if theTool == nil then return end

    if theTool:FindFirstChild("Modified") then return end

    task.wait(1)
    Player.Character.Humanoid:EquipTool(theTool)
    task.wait(1)

    for _,v in pairs(getconnections(theTool.Activated)) do 
        v:Disable()
    end

    theTool.Activated:Connect(function()
        theTool.Event:FireServer()
    end)

    local modifiedTag = Instance.new("BoolValue")
    modifiedTag.Name = "Modified"
    modifiedTag.Parent = theTool
end

-- [[ 手电筒修改器 ]] --

function modifyCurrentFlashlight()
    local theTool = Player.Backpack:FindFirstChild("Flashlight") or Player.Character:FindFirstChild("Flashlight")

    if theTool == nil then 
        theTool = Player.Backpack:FindFirstChild("UpgradedFlashlight") or Player.Character:FindFirstChild("UpgradedFlashlight")
    end

    if theTool == nil then return end

    if theTool:FindFirstChild("Modified") then return end

    theTool.Handle.Flashlight.Light.Light1.Brightness = 10 
    theTool.Handle.Flashlight.Light.Light1.Angle = 100

    local modifiedTag = Instance.new("BoolValue")
    modifiedTag.Name = "Modified"
    modifiedTag.Parent = theTool
end

-- [[ 背包添加事件 ]] --

local isBackpackSetup = false

function handleBackpackAdd(object)
    print("新的背包物品已添加！")

    if object.Name == "StunStick" then 
        if Toggles.stunstickModifier then
            if not object:FindFirstChild("Modified") then 
                modifyCurrentStunStick()
            end
        end
    elseif object.Name == "UV_Lamp" then
        if Toggles.uvlampModifier then
            if not object:FindFirstChild("Modified") then 
                modifyCurrentUVLamp()
            end
        end
    elseif object.Name == "Flashlight" or object.Name == "UpgradedFlashlight" then 
        if Toggles.flashlightModifier then 
            if not object:FindFirstChild("Modified") then 
                modifyCurrentFlashlight()
            end
        end
    end
end

function setupBackpackAddedEvent()
    Player.Backpack.ChildAdded:Connect(function(object)
        if object:IsA("Tool") then 
            handleBackpackAdd(object)
        end
    end)

    print("背包添加事件已加载！")
end

-- [[ 计时器 ]] --

local currentTimeUI = nil 

function createTheTimer()
	currentTimeUI = Library:CreateTimerUI()
end

function timerLoop()
	currentTimeUI.Visible = true

	local s = Timer.Value
	local formated = string.format("%02i:%02i", s/60%60, s%60)
	currentTimeUI.Text = formated
end

function disableTimer()
	currentTimeUI.Visible = false
end

function setupTimerLoop()
	Timer:GetPropertyChangedSignal("Value"):Connect(function()
		if Toggles.timer then 
			timerLoop()
		end
	end)
end

-- [[ 紫外线灯修改器 ]] --

function modifyCurrentUVLamp()
    local theTool = Player.Backpack:FindFirstChild("UV_Lamp") or Player.Character:FindFirstChild("UV_Lamp")

    if theTool == nil then return end

    if theTool:FindFirstChild("Modified") then return end

    task.wait(1)
    Player.Character.Humanoid:EquipTool(theTool)
    task.wait(1)

    for _,v in pairs(getconnections(theTool.Activated)) do 
        v:Disable()
    end

    theTool.Activated:Connect(function()
        theTool.Event:FireServer()
    end)

    local modifiedTag = Instance.new("BoolValue")
    modifiedTag.Name = "Modified"
    modifiedTag.Parent = theTool
end

-- [[ 手电筒修改器 ]] --

function modifyCurrentFlashlight()
    local theTool = Player.Backpack:FindFirstChild("Flashlight") or Player.Character:FindFirstChild("Flashlight")

    if theTool == nil then 
        theTool = Player.Backpack:FindFirstChild("UpgradedFlashlight") or Player.Character:FindFirstChild("UpgradedFlashlight")
    end

    if theTool == nil then return end

    if theTool:FindFirstChild("Modified") then return end

    theTool.Handle.Flashlight.Light.Light1.Brightness = 10 
    theTool.Handle.Flashlight.Light.Light1.Angle = 100

    local modifiedTag = Instance.new("BoolValue")
    modifiedTag.Name = "Modified"
    modifiedTag.Parent = theTool
end

-- [[ 背包添加事件 ]] --

local isBackpackSetup = false

function handleBackpackAdd(object)
    print("新的背包物品已添加！")

    if object.Name == "StunStick" then 
        if Toggles.stunstickModifier then
            if not object:FindFirstChild("Modified") then 
                modifyCurrentStunStick()
            end
        end
    elseif object.Name == "UV_Lamp" then
        if Toggles.uvlampModifier then
            if not object:FindFirstChild("Modified") then 
                modifyCurrentUVLamp()
            end
        end
    elseif object.Name == "Flashlight" or object.Name == "UpgradedFlashlight" then 
        if Toggles.flashlightModifier then 
            if not object:FindFirstChild("Modified") then 
                modifyCurrentFlashlight()
            end
        end
    end
end

function setupBackpackAddedEvent()
    Player.Backpack.ChildAdded:Connect(function(object)
        if object:IsA("Tool") then 
            handleBackpackAdd(object)
        end
    end)

    print("背包添加事件已加载！")
end

-- [[ 计时器 ]] --

function addToRakeInfo(rake)
    local BillboardGui = Instance.new("BillboardGui")
    local HPStatus = Instance.new("TextLabel")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local Stunned = Instance.new("TextLabel")
    local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")

    BillboardGui.Parent = rake.Head
    BillboardGui.Active = true
    BillboardGui.AlwaysOnTop = true
    BillboardGui.LightInfluence = 1.000
    BillboardGui.Size = UDim2.new(5, 0, 3, 0)
    BillboardGui.StudsOffsetWorldSpace = Vector3.new(0, 2, 0)

    HPStatus.Name = "HPStatus"
    HPStatus.Parent = BillboardGui
    HPStatus.AnchorPoint = Vector2.new(0.5, 0.5)
    HPStatus.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HPStatus.BackgroundTransparency = 1.000
    HPStatus.Position = UDim2.new(0.5, 0, 0.200000003, 0)
    HPStatus.Size = UDim2.new(0.75757575, 0, 0.316455692, 0)
    HPStatus.Font = Enum.Font.SourceSans
    HPStatus.Text = "HP: 500"
    HPStatus.TextColor3 = Color3.fromRGB(255, 255, 255)
    HPStatus.TextScaled = true
    HPStatus.TextSize = 14.000
    HPStatus.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    HPStatus.TextWrapped = true

    UITextSizeConstraint.Parent = HPStatus

    Stunned.Name = "Stunned"
    Stunned.Parent = BillboardGui
    Stunned.AnchorPoint = Vector2.new(0.5, 0.5)
    Stunned.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Stunned.BackgroundTransparency = 1.000
    Stunned.Position = UDim2.new(0.5, 0, 0.5, 0)
    Stunned.Size = UDim2.new(0.75757575, 0, 0.316455692, 0)
    Stunned.Font = Enum.Font.SourceSans
    Stunned.Text = "Stunned: No"
    Stunned.TextColor3 = Color3.fromRGB(255, 255, 255)
    Stunned.TextScaled = true
    Stunned.TextSize = 14.000
    Stunned.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    Stunned.TextWrapped = true

    UITextSizeConstraint_2.Parent = Stunned

    Labels.RakeInfoLabel = BillboardGui
end

-- [[ 更新耙子信息 ]] --

function updateRakeInfo()
    if Labels.RakeInfoLabel then 
        local RakeInWorkspace = workspace:FindFirstChild("Rake")

        if RakeInWorkspace and RakeInWorkspace:FindFirstChild("Monster") then 
            Labels.RakeInfoLabel.HPStatus.Text = "HP: "..math.floor(RakeInWorkspace.Monster.Health)
            if RakeInWorkspace.Monster.WalkSpeed <= 0 then
                Labels.RakeInfoLabel.Stunned.Text = "Stunned: Yes"
            else 
                Labels.RakeInfoLabel.Stunned.Text = "Stunned: No"
            end
        end
    else 
        local RakeInWorkspace = workspace:FindFirstChild("Rake")

        if RakeInWorkspace then 
            RakeInWorkspace:WaitForChild("Head")

            if #Labels.RakeLabels <= 0 then
                if Toggles.rakeESP then
                    ESP(RakeInWorkspace.HumanoidRootPart, "Rake", true)    
                end
            end

            if not Labels.RakeInfoLabel then 
                addToRakeInfo(RakeInWorkspace)
            end
        end
    end
end

-- [[ 销毁耙子信息 ]] --

function destroyRakeInfo()
    Labels.RakeInfoLabel:Destroy()
end

-- [[ 设置耙子信息循环 ]] --

function setupRakeInfoLoop()
    RunService.RenderStepped:Connect(function()
        if Toggles.showRakeInfo then 
            indexRake()
            updateRakeInfo()
        end
    end)
end

-- [[ 查看摄像头 ]] --

local CamerasFolder = workspace:WaitForChild("Map"):WaitForChild("Cameras")
CamerasFolder = CamerasFolder:GetChildren()

local currentIndex = 1
local selectedCamera = CamerasFolder[1]

function handleCameraInput(input)
	if input.KeyCode == Enum.KeyCode.Q then 
		if (currentIndex-1) > 0 then 
			selectedCamera = CamerasFolder[currentIndex-1]
			currentIndex =- 1
		else
			currentIndex = #CamerasFolder
			selectedCamera = CamerasFolder[currentIndex]
		end
	elseif input.KeyCode == Enum.KeyCode.E then 
		if (currentIndex+1) <= #CamerasFolder then 
			selectedCamera = CamerasFolder[currentIndex+1]
			currentIndex = currentIndex + 1
		else 
			currentIndex = 1 
			selectedCamera = CamerasFolder[currentIndex]
		end
	end
end

function updateCameraCFrame()
	if selectedCamera ~= nil then
		workspace.CurrentCamera.CFrame = selectedCamera.DefaultPosition.CFrame + (selectedCamera.DefaultPosition.CFrame.LookVector * 1.5)
	end
end

function setupViewCameraLoop()
	UserInputService.InputBegan:Connect(function(input, isChat)
		if isChat then return end 

		if Toggles.viewCameras then 
			handleCameraInput(input)
		end
	end)

	RunService.RenderStepped:Connect(function()
		if Toggles.viewCameras then 
			updateCameraCFrame()
		end
	end)
end

-- [[ 能量等级 ]] --

local PowerLevelUI = nil 

function createPowerLevel()
    PowerLevelUI = Library:CreatePowerLevelUI()
end

function updatePowerLevel()
    PowerLevelUI.Visible = true 

    PowerLevelUI.Text = "能量等级: "..ReplicatedStorage.PowerValues.PowerLevel.Value
end

function destroyPowerLevel()
    PowerLevelUI.Visible = false
end

function setupPowerLevelLoop()
    RunService.RenderStepped:Connect(function()
        if Toggles.powerLevel then 
            updatePowerLevel()
        end
    end)
end

-- [[ 行走速度作弊 ]] --

function updateWalkSpeed()
    if Toggles.sprint then 
        Player.Character.Humanoid.WalkSpeed = 30
    end
end

function setupWalkSpeedLoop()
    RunService.RenderStepped:Connect(function()
        updateWalkSpeed()
    end)
end

-- [[ 眩晕棒光环 ]] --

local isStunStickAuraOnDebaunce = false

function auraLoop()
    local Rake = workspace:FindFirstChild("Rake")    

    if Rake then
        if Rake:FindFirstChild("HumanoidRootPart") then
            local theTool = Player.Character:FindFirstChild("StunStick")    

            if theTool then
                if (Player.Character.HumanoidRootPart.Position - Rake.HumanoidRootPart.Position).Magnitude <= 12 then
                    if isStunStickAuraOnDebaunce == false then
                        theTool.Event:FireServer("S")
                        theTool.Event:FireServer("H", workspace.Rake.Torso)
                        isStunStickAuraOnDebaunce = true 
                        task.wait(0.5)
                        isStunStickAuraOnDebaunce = false
                    end
                end

            end
        end
    end
end

function setupAuraLoop()
    RunService.RenderStepped:Connect(function()
        if Toggles.stunstickAura then 
            auraLoop()
        end
    end)
end

-- [[ 安全屋门 ]] --

function modifySafehouseDoor()
	for _,v in pairs(getconnections(game:GetService("Workspace").Map.SafeHouse.Door.Door.DoorGUIPart.ProximityPrompt.Triggered)) do 
		v:Disable()
	end

	game:GetService("Workspace").Map.SafeHouse.Door.Door.DoorGUIPart.ProximityPrompt.Triggered:Connect(function(plr)
		if plr == game.Players.LocalPlayer then 
			workspace.Map.SafeHouse.Door.RemoteEvent:FireServer("Door")
		end
	end)
end

-- [[ 始终白天 ]] --

function updateVisualsToAlwaysDay()
    for _,v in pairs(ReplicatedStorage.DayProperties:GetChildren()) do 
        game.Lighting[v.Name] = v.Value
        if CurrentLightingProperties:FindFirstChild(v.Name) then 
            CurrentLightingProperties[v.Name].Value = v.Value
        end
    end
end

function setupAlwaysDayLoop()
    RunService.RenderStepped:Connect(function()
        if Toggles.alwaysDay then 
            updateVisualsToAlwaysDay()
        end
    end)
end

-- [[ 始终夜晚 ]] --

function updateVisualsToAlwaysNight()
    for _,v in pairs(ReplicatedStorage.NightProperties:GetChildren()) do 
        game.Lighting[v.Name] = v.Value
        if CurrentLightingProperties:FindFirstChild(v.Name) then 
            CurrentLightingProperties[v.Name].Value = v.Value
        end
    end
end

function setupAlwaysNightLoop()
    RunService.RenderStepped:Connect(function()
        if Toggles.alwaysNight then 
            updateVisualsToAlwaysNight()
        end
    end)
end

-- [[ 无雾 ]] --

function handleNoFogLoop()
    if Toggles.nofog then 
        game.Lighting.FogEnd = 999999
        CurrentLightingProperties.FogEnd.Value = 999999
    end
end

function setupNoFogLoop()
    RunService.RenderStepped:Connect(handleNoFogLoop)
end

-- [[ 全亮 ]] --

function updateVisualsToFullbright()
    game.Lighting.Brightness = 2
    CurrentLightingProperties.Brightness.Value = 2
end

function disableFullbright()
    game.Lighting.Brightness = 0.45
    CurrentLightingProperties.Brightness.Value = 0.45
end

function handleFullbrightLoop()
    if Toggles.fullbright then 
        updateVisualsToFullbright()
    else 
        disableFullbright()
    end
end

function setupFullbrightLoop()
    RunService.RenderStepped:Connect(handleFullbrightLoop)
end

-- [[ 解锁第三人称视角 ]] --

function unlockThirdPersonLoop()
    if Toggles.unlockThirdPerson then 
        Player.CameraMaxZoomDistance = 1000
    end
end

function setupThirdPersonLoop()
    RunService.RenderStepped:Connect(unlockThirdPersonLoop)

    local cameraHook; cameraHook = hookmetamethod(game, "__newindex", function(Self, Key, NewValue)
        if not checkcaller() and Self == Player and Key == "CameraMaxZoomDistance" then 
            return cameraHook(Self, Key, 1000)    
        end

        return cameraHook(Self, Key, NewValue)
    end)
end

-- [[ 禁用地图边界 ]] --

function destroyMapBorders()
    for _, border in pairs(workspace.Filter.InvisibleWalls:GetChildren()) do 
        border:Destroy()
    end

    Library:CreateNotification("完成！", “地图周围的所有边界已被禁用。（服务器边界无法移除）”, 5)
end

-- [[ 无跳跃延迟 ]] --

function enableNoJumpDelay()
    UserInputService.JumpRequest:Connect(function()
        if Player.Character.Humanoid.FloorMaterial ~= Enum.Material.Air then
            Player.Character.Humanoid:ChangeState("Jumping")
        end
    end)
end

-- [[ 处理死亡 ]] --

function handleDeath()
    Player.CharacterAdded:Wait()
    Player.Character:WaitForChild("HumanoidRootPart")

    if Toggles.infiniteStamina then 
        hookInfiniteStamina()
    end

    if Toggles.stunstickModifier then 
        modifyCurrentStunStick()
    end

    if Toggles.uvlampModifier then 
        modifyCurrentUVLamp()
    end

    if Toggles.flashlightModifier then 
        modifyCurrentFlashlight()
    end
end

function setupDeathDetection()
    Player.Character.Humanoid.Died:Connect(function()
        handleDeath()
        setupDeathDetection()
    end)
end

------- [[ 保存/加载设置 ]] -------

function updateSettings()
    writefile("RakeEvolvedV2/settings.json", game.HttpService:JSONEncode(Toggles))
end

local loadData = nil
if isfolder("RakeEvolvedV2") then 
    if isfile("RakeEvolvedV2/settings.json") then
        loadData = readfile("RakeEvolvedV2/settings.json")
        loadData = game.HttpService:JSONDecode(loadData)
    end 
else 
    makefolder("RakeEvolvedV2")
    local defaultData = Toggles
    defaultData = game.HttpService:JSONEncode(defaultData)
    writefile("RakeEvolvedV2/settings.json", defaultData)
    loadData = defaultData
end

------- [[ UI ]] -------

local ESPTab = Library:NewTab("ESP", "ESP")
local VisualsTab = Library:NewTab("视觉效果", "视觉效果")
local ClientTab = Library:NewTab("客户端", "客户端")
local SupplyDropTab = Library:NewTab("补给箱", "补给箱")
local ToolsTab = Library:NewTab("工具", "工具")
local TPTab = Library:NewTab("传送", "传送")
local SettingsTab = Library:NewTab("设置", "设置")

local isRakeESPSetup = false
ESPTab:NewToggle("耙子ESP", "Rake_ESP", loadData.rakeESP, function(newValue)
    Toggles.rakeESP = newValue

    if newValue == true then 
        indexRake()
        if isRakeESPSetup == false then
            setupRakeDetection()
            isRakeESPSetup = true 
        end
    else 
        destroyRakeLabel()
    end

    updateSettings()
end)

local isScrapESPSetup = false
ESPTab:NewToggle("碎片ESP", "Scrap_ESP", loadData.scrapESP, function(newValue)
    Toggles.scrapESP = newValue

    if newValue == true then
        indexAllScraps()
        if isScrapESPSetup == false then 
            setupScrapDetection()
            isScrapESPSetup = true
        end
    else 
        destroyScrapLabels()
    end

    updateSettings()
end)

local isSupplyDropESPSetup = false 
ESPTab:NewToggle("补给箱ESP", "Supply_Drop_ESP", loadData.supplydropESP, function(newValue)
    Toggles.supplydropESP = newValue

    if newValue == true then 
        indexAllSupplyDrops()
        if isSupplyDropESPSetup == false then 
            setupSupplyDropDetection()
            isSupplyDropESPSetup = true
        end
    else 
        destroySupplyDropLabels()
    end

    updateSettings()
end)

local isPlayersESPSetup = false 
ESPTab:NewToggle("玩家ESP", "Players_ESP", loadData.playerESP, function(newValue)
    Toggles.playerESP = newValue

    if newValue == true then 
        indexAllPlayers()
        if isPlayersESPSetup == false then 
            setupPlayerDetection()
            isPlayersESPSetup = true 
        end
    else 
        destroyPlayerLabels()
    end

    updateSettings()
end)

local isFlareGunESPSetup = false 
ESPTab:NewToggle("信号枪ESP", "Flare_Gun_ESP", loadData.flaregunESP, function(newValue)
    Toggles.flaregunESP = newValue

    if newValue == true then 
        indexFlareGun()
        if isFlareGunESPSetup == false then 
            setupFlareGunDetection()
            isFlareGunESPSetup = true 
        end
    else 
        destroyFlareGunLabel()
    end

    updateSettings()
end)

ESPTab:NewToggle("信号枪通知", "Flare_Gun_Notifications", loadData.flaregunNotification, function(newValue)
    Toggles.flaregunNotification = newValue

    if newValue == true then 
        if isFlareGunESPSetup == false then 
            setupFlareGunDetection()
            isFlareGunESPSetup = true
        end
    end

    updateSettings()
end)

local isFullbrightSetup = false
VisualsTab:NewToggle("全亮", "Fullbright", loadData.fullbright, function(newValue)
    Toggles.fullbright = newValue

    if newValue == true then
        if isFullbrightSetup == false then 
            setupFullbrightLoop()
            isFullbrightSetup = true
        end
    end

    updateSettings()
end)

local isNoFogSetup = false
VisualsTab:NewToggle("无雾", "No_Fog", loadData.nofog, function(newValue)
    Toggles.nofog = newValue

    if newValue == true then
        if isNoFogSetup == false then 
            setupNoFogLoop()
            isNoFogSetup = true
        end
    end

    updateSettings()
end)

local isAlwaysDaySetup = false 
VisualsTab:NewToggle("始终白天", "Always_Day", loadData.alwaysDay, function(newValue)
    Toggles.alwaysDay = newValue

    if newValue == true then 
        if isAlwaysDaySetup == false then
            setupAlwaysDayLoop()
            isAlwaysDaySetup = true
        end
    end

    updateSettings()
end)

local isAlwaysNightSetup = false
VisualsTab:NewToggle("始终夜晚", "Always_Night", loadData.alwaysNight, function(newValue)
    Toggles.alwaysNight = newValue

    if newValue == true then
        if isAlwaysNightSetup == false then 
            setupAlwaysNightLoop()
            isAlwaysNightSetup = true 
        end
    end

    updateSettings()
end)

VisualsTab:NewToggle("路径点", "Waypoints", loadData.waypoints, function(newValue)
    Toggles.waypoints = newValue

    if newValue == true then 
        createWaypoints()
    else 
        destroyWaypoints()
    end

    updateSettings()
end)

local isRakeInfoSetup = false
VisualsTab:NewToggle("显示耙子信息", "Show_Rake_Info", loadData.showRakeInfo, function(newValue)
    Toggles.showRakeInfo = newValue

    if newValue == true then 
        local rake = workspace:FindFirstChild("Rake")

        if rake then 
            addToRakeInfo(rake)
        end

        if isRakeESPSetup == false then 
            setupRakeDetection()
            isRakeESPSetup = true
        end

        if isRakeInfoSetup == false then 
            setupRakeInfoLoop()
            isRakeInfoSetup = true
        end
    else 
        destroyRakeInfo()
    end

    updateSettings()
end)

local isThirdPersonSetup = false
VisualsTab:NewToggle("解锁第三人称视角", "Unlock_Third_Person", loadData.unlockThirdPerson, function(newValue)
    Toggles.unlockThirdPerson = newValue

    if newValue == true then 
        if isThirdPersonSetup == false then 
            setupThirdPersonLoop()
            isThirdPersonSetup = true
        end
    end

    updateSettings()
end)

ClientTab:NewToggle("无限体力", "Infinite_Stamina", loadData.infiniteStamina, function(newValue)
    Toggles.infiniteStamina = newValue    

    if newValue == true then 
        hookInfiniteStamina()
    end

    updateSettings()
end)

ClientTab:NewToggle("无跌落伤害", "No_Fall_Damage", loadData.noFallDamage, function(newValue)
    Toggles.noFallDamage = newValue

    if newValue == true then 
        hookNoFallDamage()
    end

    updateSettings()
end)

local isViewCamerasSetup = false
ClientTab:NewToggle("查看摄像头", "View_Cameras", loadData.viewCameras, function(newValue)
    Toggles.viewCameras = newValue

    if newValue == true then 
        Library:CreateNotification("提示！", "使用Q和E键在摄像头之间切换！", 5)

        if isViewCamerasSetup == false then 
            setupViewCameraLoop()
            isViewCamerasSetup = true
        end
    end

    updateSettings()
end)

local isTimerSetup = false
ClientTab:NewToggle("计时器", "Timer", loadData.timer, function(newValue)
    Toggles.timer = newValue

    if newValue == true then 
        if currentTimeUI == nil then 
            createTheTimer()
            currentTimeUI.Visible = true
        end

        if isTimerSetup == false then 
            setupTimerLoop()
            isTimerSetup = true
        end
    else 
        currentTimeUI:Destroy()
        currentTimeUI = nil
    end

    updateSettings()
end)

local isPowerLevelSetup = false
ClientTab:NewToggle("能量等级", "Power_Level", loadData.powerLevel, function(newValue)
    Toggles.powerLevel = newValue

    if newValue == true then 
        --if PowerLevelUI == nil then 
        createPowerLevel()
        PowerLevelUI.Visible = true
        --end

        if isPowerLevelSetup == false then 
            setupPowerLevelLoop()
            isPowerLevelSetup = true
        end
    else 
        destroyPowerLevel()
    end

    updateSettings()
end)

ClientTab:NewButton("禁用地图边界", "Disable_Map_Borders", destroyMapBorders)

local isSprintSetup = false
ClientTab:NewKeybind("无体力消耗快跑", "Sprint_without_Stamina", Enum.KeyCode.Q, function()
    Toggles.sprint = not Toggles.sprint

    if isSprintSetup == false then 
        setupWalkSpeedLoop()
        isSprintSetup = true
    end
end)

SupplyDropTab:NewToggle("绕过补给箱锁定", "Bypass_Supply_Drop_Lock", loadData.bypassSupplyDropLock, function(newValue)
    Toggles.bypassSupplyDropLock = newValue

    if newValue == true then 
        indexAllSupplyDrops()
    end

    updateSettings()
end)

SupplyDropTab:NewButton("查看补给箱物品", "View_Supply_Drop_Items", function()
    local SupplyCratesFolder = workspace.Debris.SupplyCrates

    if SupplyCratesFolder:FindFirstChild("Box") then 
        local selected

        if #SupplyCratesFolder:GetChildren() >= 2 then 
            for _,box in pairs(SupplyCratesFolder:GetChildren()) do 
                if box:FindFirstChild("UnlockValue") then 
                    if box.UnlockValue.Value <= 0 or not box.DB_Folder:FindFirstChild(Player.Name) then 
                        selected = box 
                        break
                    end
                end
            end
        else 
            selected = SupplyCratesFolder["Box"]
        end

        viewSupplyDropItems(selected)
    else 
        Library:CreateNotification("没有补给箱！", "当前没有生成的补给箱！", 5)
    end

    updateSettings()
end)

ToolsTab:NewToggle("眩晕棒修改器", "Stun_Stick_Modifier", loadData.stunstickModifier, function(newValue)
    Toggles.stunstickModifier = newValue

    if newValue == true then 
        modifyCurrentStunStick()

        if isBackpackSetup == false then 
            setupBackpackAddedEvent()
            isBackpackSetup = true
        end
    end

    updateSettings()
end)

ToolsTab:NewToggle("紫外线灯修改器", "UV_Lamp_Modifier", loadData.uvlampModifier, function(newValue)
    Toggles.uvlampModifier = newValue

    if newValue == true then 
        modifyCurrentUVLamp()

        if isBackpackSetup == false then 
            setupBackpackAddedEvent()
            isBackpackSetup = true
        end
    end

    updateSettings()
end)

local isStunStickSetup = false
ToolsTab:NewToggle("眩晕棒光环", "Stun_Stick_Aura", loadData.stunstickAura, function(newValue)
    Toggles.stunstickAura = newValue

    if newValue == true then 
        if isStunStickSetup == false then 
            setupAuraLoop()
            isStunStickSetup = true
        end
    end

    updateSettings()
end)

ToolsTab:NewToggle("手电筒修改器", "Flashlight_Modifier", loadData.flashlightModifier, function(newValue)
    Toggles.flashlightModifier = newValue

    if newValue == true then 
        modifyCurrentFlashlight()

        if isBackpackSetup == false then 
            setupBackpackAddedEvent()
            isBackpackSetup = true
        end
    end

    updateSettings()
end)

TPTab:NewButton("收集碎片", "Collect_Scraps", collectScraps)
TPTab:NewButton("收集信号枪", "Collect_Flare_Gun", collectFlareGun)

SettingsTab:NewKeybind("切换UI", "Toggle_UI", Enum.KeyCode.RightControl, function()
    Library:ToggleUI()
end)

_G.RakeEvolvedShutDownFunction = function()
    destroyFlareGunLabel()
    destroyRakeInfo()
    destroyRakeLabel()
    destroyPowerLevel()
    destroyScrapLabels()
    destroyWaypoints()
    destroySupplyDropLabels()
    game.CoreGui.NewUI:Destroy()
    script:Destroy()
end

game.Lighting.BloodHourColor:Destroy()
modifySafehouseDoor()
setupDeathDetection()
enableNoJumpDelay()

Library:ViewTab("ESP")
Library:CreateNotification("脚本已加载！", "感谢使用Rake Evolved V2", 5)