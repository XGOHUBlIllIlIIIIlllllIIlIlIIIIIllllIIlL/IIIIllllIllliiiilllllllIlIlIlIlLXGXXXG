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

local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
local Window = WindUI:CreateWindow({
    Title = "XGOHUB | The Rake重置版", -- UI标题
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
    Title = "XGOHUB | The Rake重置版", -- 标题
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), -- 颜色1
        Color3.fromHex("F89B29") -- 颜色2
    )
})

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

------- [[ FUNCTIONS ]] -------

-- [[ DETECTION HOOK ]] --

local detectionCounter = 0
local detectionHook; detectionHook = hookmetamethod(game.StarterGui, '__namecall', function(self, ...)
	local Method = getnamecallmethod()

	if Method == 'SetCore' then
		detectionCounter = detectionCounter + 1
		return nil
	end 

	return detectionHook(self, ...)
end)

-- [[ SCRAPS ]] --

local function getScraps()
	local Scraps = {}

	for _,ScrapSpawn in pairs(ScrapFolder:GetChildren()) do 
		if ScrapSpawn:FindFirstChildOfClass("Model") and ScrapSpawn:FindFirstChildOfClass("Model"):FindFirstChild("Scrap")  then
			table.insert(Scraps, ScrapSpawn:FindFirstChildOfClass("Model")["Scrap"])
		end
	end

	return Scraps
end

-- [[ SUPPLY DROP FUNCTIONS ]] --

function viewSupplyDropItems(box)
	local MainViewer = Window:CreateSupplyDropUI()---1

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
			local MainViewer = Window:CreateSupplyDropUI()----2

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
	["Scrap"] = Color3.fromRGB(255, 255, 255),
	["Rake"] = Color3.fromRGB(255, 0, 0),
	["Flare Gun"] = Color3.fromRGB(0, 170, 255),
	["Supply Crate"] = Color3.fromRGB(85, 170, 0),
	["Player"] = Color3.fromRGB(255, 128, 0),
	["Waypoint"] = Color3.fromRGB(255, 247, 0)
}

local MISCESP = {
	Player = "Player",
	Waypoint = "Waypoint"
}

local function insertObjectToProperTable(object, Text, isThisPlayer, isThisWaypoint)
	if Text == "废料" then 
		table.insert(Labels.ScrapLabels, object)
	elseif Text == "Rake" then
		table.insert(Labels.RakeLabels, object)
	elseif Text == "信号枪" then
		table.insert(Labels.FlareGunLabels, object)
	elseif Text == "供应相" then
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
           warn("尝试ESP的无效对象！已忽略.")
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

	print("Scrap detection has been loaded!")
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
			HPStatus.Text = "生命值: 500"
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
			Stunned.Text = "眩晕: No"
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

	print("Rake detection has been loaded!")
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

	print("Player detection has been loaded!")
end

function destroyPlayerLabels()
	print("Called destroy players")

	for _,billgui in pairs(Labels.PlayersLabels) do 
		billgui:Destroy()
		print("destroyed in players")
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
			WindUI:Notify({
    Title = "信号枪生成",
    Content = "你现在可以传送到信号枪的位置！",
    Icon = "eye",
    Duration = 5,
})
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

	print("Flare Gun Detection has been loaded!")
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

	for _,box in pairs(SupplyCrates:GetChildren()) do 
		if box.Name == "Box" then 
			if not box.HitBox:FindFirstChild("Isguied") then 
				if Toggles.supplydropESP then 
					ESP(box.HitBox, "Supply Crate", true)
				end

				WindUI:Notify({
    Title = "补给箱出现",
    Content = "你现在可以查看补给箱里的物品",
    Icon = "eye",
    Duration = 5,
})
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

				WindUI:Notify({
    Title = "补给箱生成！",
    Content = "现在可以查看补给箱中的物品",
    Icon = "eye",
    Duration = 5,
})
				
				if Toggles.bypassSupplyDropLock then
					bypassSupplyDropLock(object)
				end
			end
		end
	end)

	print("Supply Drop Detection has been loaded!")
end

function destroySupplyDropLabels()
	for _,bill in pairs(Labels.SupplyDropLabels) do 
		bill:Destroy()
	end
end

-- [[ INFINITE STAMINA ]] --

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

   WindUI:Notify({
    Title = "提示",
    Content = "要禁用无限体力，你需要先禁用此功能，然后重置你的角色！",
    Icon = "eye",
    Duration = 5,
})
end

-- [[ 没有灾难损坏 ]] --

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

-- [[ 眩晕棒修饰 ]] --

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

-- [[ 紫外线灯改性剂 ]] --

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

-- [[ 手电筒修饰符 ]] --

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

-- [[ 背包添加了事件 ]] --

local isBackpackSetup = false

function handleBackpackAdd(object)
	print("New Backpack object was added!")

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

	print("Backpack Added Event has been loaded!")
end

-- [[ 收集废料 ]] -- 

local isScrapFarmOnDebaunce = false
local isSrapFarmRunning = false 

function collectScraps()
	if isSrapFarmRunning == false and isScrapFarmOnDebaunce == false then 
		isScrapFarmOnDebaunce = true 
		isSrapFarmRunning = true 

		if #getScraps() == 0 then
		WindUI:Notify({
    Title = "未发现废料",
    Content = "当前没有生成废料！",
    Icon = "eye",
    Duration = 5,
})
			isScrapFarmOnDebaunce = false
			isSrapFarmRunning = false 
			return
		end

		for _,scrap in pairs(getScraps()) do 
			if Player.Character:FindFirstChild("Humanoid") and Player.Character:FindFirstChild("Humanoid").SeatPart then
				Player.Character:FindFirstChild("Humanoid").Sit = false
			end

			if detectionCounter >= 3 then 
			WindUI:Notify({
    Title = "停止采集",
    Content = "为防止您死亡，已停止采集！您将有1分钟的冷却时间！",
    Icon = "eye",
    Duration = 5,
})
				break
			end

			task.wait(0.1)
			Player.Character.HumanoidRootPart.CFrame = scrap.CFrame
			if not (scrap == nil) then
				if detectionCounter >= 3 then 
					WindUI:Notify({
    Title = "采集已停止",
    Content = "为了防止你死亡，我们已经停止了！你将有1分钟的冷却时间！",
    Icon = "eye",
    Duration = 5,
})
		     	break
				end

				task.wait(0.5)
				Player.Character.HumanoidRootPart.CFrame = scrap.CFrame
			end
			task.wait(1)
		end

		if detectionCounter >= 3 then
			task.spawn(function()
				task.wait(60)
				isScrapFarmOnDebaunce = false
				detectionCounter = 0
			end)
		else 
			isScrapFarmOnDebaunce = false
		end

		isSrapFarmRunning = false 
    elseif isSrapFarmRunning == true then 
    WindUI:Notify({
        Title = "运行中",
        Content = "你正在收集废料",
        Icon = "eye",
        Duration = 5,
    })
     elseif isScrapFarmOnDebaunce == true then 
    WindUI:Notify({
        Title = "冷却中",
        Content = "你正处于冷却期！",
        Icon = "eye",
        Duration = 5,
    })
	end
end

-- [[ COLLECT FLARE GUN ]] -- 

function collectFlareGun()
	local theFlareGun = workspace:FindFirstChild("FlareGunPickUp")

	if theFlareGun then
		local theModel = theFlareGun.FlareGun 

		Player.Character.HumanoidRootPart.CFrame = theModel.CFrame

		WindUI:Notify({
    Title = "通知",
    Content = "已收集！如果没有信号枪，再点击一次即可！",
    Icon = "eye",
    Duration = 5,
})
else
WindUI:Notify({
    Title = "通知",
    Content = "未生成信号枪！没有生成信号枪",
    Icon = "eye",
    Duration = 5,
})
	end
end

-- [[ RAKE INFO ]] -- 

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

function destroyRakeInfo()
	Labels.RakeInfoLabel:Destroy()
end

function setupRakeInfoLoop()
	RunService.RenderStepped:Connect(function()
		if Toggles.showRakeInfo then 
			indexRake()
			updateRakeInfo()
		end
	end)
end

-- [[ VIEW CAMERAS ]] -- 

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


-- [[ 走速度作弊 ]] --

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

-- [[ 眩晕棒极光 ]] --

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

-- [[ 安全的房子门 ]] --

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

-- [[ 永远天 ]] --

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

-- [[ 永远夜晚 ]] --

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

-- [[ 没有雾 ]] --

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

-- [[ 解锁第三人 ]] --

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

-- [[ DISABLE MAP BORDERS ]] --

function destroyMapBorders()
	for _, border in pairs(workspace.Filter.InvisibleWalls:GetChildren()) do 
		border:Destroy()
	end
        WindUI:Notify({
    Title = "通知",
    Content = "地图周围的所有边界限制已开启.（服务器边界无法移除）",
    Icon = "eye",
    Duration = 5,
})
end

-- [[ 没有跳跃延迟 ]] --

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

------- [[ 切换保存/加载 ]] -------

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
local ESPTab = Window:Tab({
    Title = "ESP", -- 信息标签
    Icon = "house", -- 图标
})
local VisualsTab = Window:Tab({
    Title = "视觉效果", -- 信息标签
    Icon = "house", -- 图标
})
local ClientTab = Window:Tab({
    Title = "客户端", -- 信息标签
    Icon = "house", -- 图标
})
local SupplyDropTab = Window:Tab({
    Title = "补给箱", -- 信息标签
    Icon = "house", -- 图标
})
local ToolsTab = Window:Tab({
    Title = "工具", -- 信息标签
    Icon = "house", -- 图标
})
local TPTab = Window:Tab({
    Title = "传送", -- 信息标签
    Icon = "house", -- 图标
})
local SettingsTab = Window:Tab({
    Title = "设置", -- 信息标签
    Icon = "house", -- 图标
})

local isRakeESPSetup = false
local RakeESPToggle = ESPTab:Toggle({
    Title = "耙子ESP",
    State = loadData.rakeESP,
    Callback = function(newValue)
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
    end,
})

local isScrapESPSetup = false
local ScrapESPToggle = ESPTab:Toggle({
    Title = "碎片ESP",
    State = loadData.scrapESP,
    Callback = function(newValue)
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
    end,
})

local isSupplyDropESPSetup = false
local SupplyDropESPToggle = ESPTab:Toggle({
    Title = "补给箱ESP",
    State = loadData.supplydropESP,
    Callback = function(newValue)
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
    end,
})

local isPlayersESPSetup = false
local PlayersESPToggle = ESPTab:Toggle({
    Title = "玩家ESP",
    State = loadData.playerESP,
    Callback = function(newValue)
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
    end,
})

local isFlareGunESPSetup = false
local FlareGunESPToggle = ESPTab:Toggle({
    Title = "信号枪ESP",
    State = loadData.flaregunESP,
    Callback = function(newValue)
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
    end,
})
local WaypointsToggle = ESPTab:Toggle({
    Title = "路径点[房屋显示]",
    State = loadData.waypoints,
    Callback = function(newValue)
        Toggles.waypoints = newValue

        if newValue == true then 
            createWaypoints()
        else 
            destroyWaypoints()
        end

        updateSettings()
    end,
})

local FlareGunNotificationsToggle = ESPTab:Toggle({
    Title = "信号枪通知",
    State = loadData.flaregunNotification,
    Callback = function(newValue)
        Toggles.flaregunNotification = newValue

        if newValue == true then 
            if isFlareGunESPSetup == false then 
                setupFlareGunDetection()
                isFlareGunESPSetup = true
            end
        end

        updateSettings()
    end,
})

local isFullbrightSetup = false
local FullbrightToggle = VisualsTab:Toggle({
    Title = "全亮",
    State = loadData.fullbright,
    Callback = function(newValue)
        Toggles.fullbright = newValue

        if newValue == true then
            if isFullbrightSetup == false then 
                setupFullbrightLoop()
                isFullbrightSetup = true
            end
        end

        updateSettings()
    end,
})

local isNoFogSetup = false
local NoFogToggle = VisualsTab:Toggle({
    Title = "无雾",
    State = loadData.nofog,
    Callback = function(newValue)
        Toggles.nofog = newValue

        if newValue == true then
            if isNoFogSetup == false then 
                setupNoFogLoop()
                isNoFogSetup = true
            end
        end

        updateSettings()
    end,
})

local isAlwaysDaySetup = false
local AlwaysDayToggle = VisualsTab:Toggle({
    Title = "始终白天",
    State = loadData.alwaysDay,
    Callback = function(newValue)
        Toggles.alwaysDay = newValue

        if newValue == true then 
            if isAlwaysDaySetup == false then
                setupAlwaysDayLoop()
                isAlwaysDaySetup = true
            end
        end

        updateSettings()
    end,
})

local isAlwaysNightSetup = false
local AlwaysNightToggle = VisualsTab:Toggle({
    Title = "始终夜晚",
    State = loadData.alwaysNight,
    Callback = function(newValue)
        Toggles.alwaysNight = newValue

        if newValue == true then
            if isAlwaysNightSetup == false then 
                setupAlwaysNightLoop()
                isAlwaysNightSetup = true 
            end
        end

        updateSettings()
    end,
})

local isRakeInfoSetup = false
local ShowRakeInfoToggle = VisualsTab:Toggle({
    Title = "显示耙子信息",
    State = loadData.showRakeInfo,
    Callback = function(newValue)
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
    end,
})

local isThirdPersonSetup = false
local UnlockThirdPersonToggle = VisualsTab:Toggle({
    Title = "解锁第三人称视角",
    State = loadData.unlockThirdPerson,
    Callback = function(newValue)
        Toggles.unlockThirdPerson = newValue

        if newValue == true then 
            if isThirdPersonSetup == false then 
                setupThirdPersonLoop()
                isThirdPersonSetup = true
            end
        end

        updateSettings()
    end,
})

local InfiniteStaminaToggle = ClientTab:Toggle({
    Title = "无限体力",
    State = loadData.infiniteStamina,
    Callback = function(newValue)
        Toggles.infiniteStamina = newValue    

        if newValue == true then 
            hookInfiniteStamina()
        end

        updateSettings()
    end,
})

local NoFallDamageToggle = ClientTab:Toggle({
    Title = "无跌落伤害",
    State = loadData.noFallDamage,
    Callback = function(newValue)
        Toggles.noFallDamage = newValue

        if newValue == true then 
            hookNoFallDamage()
        end

        updateSettings()
    end,
})

local isViewCamerasSetup = false
local ViewCamerasToggle = ClientTab:Toggle({
    Title = "查看摄像头",
    State = loadData.viewCameras,
    Callback = function(newValue)
        Toggles.viewCameras = newValue

        if newValue == true then 
            WindUI:Notify({
            Title = "提示！",
            Content = "使用Q和E键在摄像头之间切换！",
            Icon = "eye",
            Duration = 5,
        })

            if isViewCamerasSetup == false then 
                setupViewCameraLoop()
                isViewCamerasSetup = true
            end
        end

        updateSettings()
    end,
})
-------
------------不能使用↓
-- 假设Toggles和loadData是全局变量，如果没有定义，则需要定义它们
local Toggles = {}
local loadData = {}

-- 创建计时器界面的函数
function createTheTimer()
    local currentTimeUI = Window:CreateTimerUI()  ---3
    currentTimeUI.Visible = true  
end

-- 计时器循环的函数
function timerLoop()
    local s = Timer.Value  
    local formated = string.format("%02i:%02i", math.floor(s/60), s%60)  
    local currentTimeUI = Window:CreateTimerUI()  ---4
    currentTimeUI.Text = formated  
end

-- 禁用计时器的函数
function disableTimer()
    local currentTimeUI = Window:CreateTimerUI()  ---5
    currentTimeUI.Visible = false  
end

-- 设置计时器循环的函数
function setupTimerLoop()
    Timer.Changed:Connect(function()
        if Toggles.timer then 
            timerLoop()  
        end
    end)
end

-- 设置计时器
------------不能使用↓
local isTimerSetup = false
local currentTimeUI = nil

-- 创建计时器界面的函数
function createTheTimer()
    currentTimeUI = Window:CreateTimerUI()  -- 使用库函数创建计时器界面
    currentTimeUI.Visible = true  -- 设置计时器界面为可见
end

-- 计时器循环的函数
function timerLoop()
    local s = Timer.Value  -- 获取计时器的值
    local formated = string.format("%02i:%02i", math.floor(s/60), s%60)  -- 格式化时间显示
    currentTimeUI.Text = formated  -- 更新计时器界面的文本
end

-- 禁用计时器的函数
function disableTimer()
    currentTimeUI.Visible = false  -- 设置计时器界面为不可见
end

-- 设置计时器循环的函数
function setupTimerLoop()
    Timer:GetPropertyChangedSignal("Value"):Connect(function()
        if Toggles.timer then 
            timerLoop()  -- 如果计时器是开启的，执行计时器循环
        end
    end)
end

-- 设置计时器
function setupTimer()
    Toggles.timer = ClientTab:Toggle({
        Title = "计时器",  -- Toggle的标题
        Key = "Timer",     -- Toggle的键名，用于保存和读取设
        Locked = true,
        DefaultValue = loadData.timer,  -- 默认值，从.loadData.timer获取
        OnValueChanged = function(newValue)
            Toggles.timer = newValue  -- 更新Toggles表中的timer值

            if newValue == true then 
                -- 如果用户开启了计时器
                if currentTimeUI == nil then 
                    -- 如果currentTimeUI不存在，则创建计时器界面
                    createTheTimer()
                end

                if isTimerSetup == false then 
                    -- 如果计时器尚未设置，则进行设置
                    setupTimerLoop()
                    isTimerSetup = true  -- 标记计时器已设置
                end
            else 
                -- 如果用户关闭了计时器
                if currentTimeUI then
                    disableTimer()
                    currentTimeUI:Destroy()  -- 销毁计时器界面
                    currentTimeUI = nil  -- 将currentTimeUI设置为nil
                end
                isTimerSetup = false  -- 重置计时器设置标志
            end

            updateSettings()  -- 更新设置
        end
    })
end

-- 调用函数以设置计时器
setupTimer()
------------不能使用↑
------------不能使用↓
local PowerLevelUI = nil
local isPowerLevelSetup = false

function createPowerLevel()
    PowerLevelUI = Window:CreatePowerLevelUI()
end

function updatePowerLevel()
    PowerLevelUI.Visible = true
    PowerLevelUI.Text = "Power Level: "..ReplicatedStorage.PowerValues.PowerLevel.Value
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

function setupPowerLevel()
    if Toggles.powerLevel then 
        createPowerLevel()
        PowerLevelUI.Visible = true

        if isPowerLevelSetup == false then 
            setupPowerLevelLoop()
            isPowerLevelSetup = true
        end
    else 
        destroyPowerLevel()
    end

    updateSettings()
end

ClientTab:Toggle({
    Title = "能量等级",
    Key = "Power_Level",
    Locked = true,
    DefaultValue = loadData.powerLevel,
    OnValueChanged = function(newValue)
        Toggles.powerLevel = newValue
        setupPowerLevel()
    end
})
------------不能使用↑
ClientTab:Toggle({["Title"]="自动互动",["Default"] = false,["Callback"] = function(state)if state then autoInteract = true while autoInteract do for _, descendant in pairs(workspace:GetDescendants()) do if descendant:IsA("ProximityPrompt") then fireproximityprompt(descendant)end end task.wait(0.25)end else autoInteract = false  end end})
ClientTab:Toggle({["Title"]="穿墙",["Default"] = false,["Callback"] = function(state)local player = game.Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait() local steppedConnection if state then Noclip = true steppedConnection = game:GetService("RunService").Stepped:Connect(function() if Noclip then for _, child in pairs(game.Workspace:GetChildren()) do if child.Name == player.Name and child:IsA("Model") then for _, part in pairs(child:GetChildren()) do if part:IsA("BasePart") then part.CanCollide = false end end end end else steppedConnection:Disconnect()end end) else Noclip = false if character then for _, part in pairs(character:GetChildren()) do if part:IsA("BasePart") then part.CanCollide = true end end end end end})
-- 禁用地图边界按钮
local DisableMapBordersButton = ClientTab:Button({
    Title = "移除地图边界",
    Desc = "移除地图边界限制",
    Callback = function()
        destroyMapBorders()
    end,
})

-- 无体力消耗快跑键绑定
local SprintWithoutStaminaKeybind = ClientTab:Keybind({
    Title = "无体力消耗快跑",
    Desc = "允许无体力消耗快跑",
    DefaultKey = Enum.KeyCode.Q,
    Callback = function()
        Toggles.sprint = not Toggles.sprint

        if isSprintSetup == false then 
            setupWalkSpeedLoop()
            isSprintSetup = true
        end
    end,
})

local BypassSupplyDropLockToggle = SupplyDropTab:Toggle({
    Title = "绕过补给箱锁定",
    Desc = "允许访问所有补给箱内容",
    State = loadData.bypassSupplyDropLock,
    Callback = function(newValue)
        Toggles.bypassSupplyDropLock = newValue

        if newValue == true then 
            indexAllSupplyDrops()
        end

        updateSettings()
    end,
})
------------不能使用↓
local Button = SupplyDropTab:Button({
    Title = "查看补给箱物品",
    Desc = "查看当前可用的补给箱物品",
    Callback = function()
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
            WindUI:Notify({
            Title = "没有补给箱！",
            Content = "当前没有生成的补给箱！",
            Icon = "eye",
            Duration = 5,
        })
        end

        updateSettings()
    end,
})
------------不能使用↑
local StunStickModifierToggle = ToolsTab:Toggle({
    Title = "眩晕棒修改",
    State = loadData.stunstickModifier,
    Callback = function(newValue)
        Toggles.stunstickModifier = newValue

        if newValue == true then 
            modifyCurrentStunStick()

            if isBackpackSetup == false then 
                setupBackpackAddedEvent()
                isBackpackSetup = true
            end
        end

        updateSettings()
    end,
})

local UVLampModifierToggle = ToolsTab:Toggle({
    Title = "紫外线灯修改",
    State = loadData.uvlampModifier,
    Callback = function(newValue)
        Toggles.uvlampModifier = newValue

        if newValue == true then 
            modifyCurrentUVLamp()

            if isBackpackSetup == false then 
                setupBackpackAddedEvent()
                isBackpackSetup = true
            end
        end

        updateSettings()
    end,
})

local StunStickAuraToggle = ToolsTab:Toggle({
    Title = "电棍光环",
    State = loadData.stunstickAura,
    Callback = function(newValue)
        Toggles.stunstickAura = newValue

        if newValue == true then 
            if isStunStickSetup == false then 
                setupAuraLoop()
                isStunStickSetup = true
            end
        end

        updateSettings()
    end,
})

local FlashlightModifierToggle = ToolsTab:Toggle({
    Title = "手电筒修改",
    State = loadData.flashlightModifier,
    Callback = function(newValue)
        Toggles.flashlightModifier = newValue

        if newValue == true then 
            modifyCurrentFlashlight()

            if isBackpackSetup == false then 
                setupBackpackAddedEvent()
                isBackpackSetup = true
            end
        end

        updateSettings()
    end,
})

local CollectScrapsButton = TPTab:Button({
    Title = "收集碎片",
    Desc = "点击收集碎片",
    Callback = function()
        collectScraps()
    end,
})

local CollectFlareGunButton = TPTab:Button({
    Title = "收集信号枪",
    Desc = "点击收集信号枪",
    Callback = function()
        collectFlareGun()
    end,
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
    Desc = "通用脚本",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/2.1814.lua?raw=true"))()
    end,
})
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

Window:ViewTab("ESP")
WindUI:Notify({
            Title = "脚本已加载!",
            Content = "感谢使用XGOHUB",
            Icon = "eye",
            Duration = 5,
        })