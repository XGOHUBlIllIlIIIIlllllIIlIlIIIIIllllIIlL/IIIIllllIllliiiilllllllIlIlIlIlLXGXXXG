--lua语言编写/xgo全源码
local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042063815"  sound.Volume = 0.5  sound.Pitch = 1  sound.Parent = game.Workspace  sound:Play()
local xxxgoui = loadstring(game:HttpGet("https://github.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/xxxxgo/blob/main/xgohubUI?raw=true"))()
local Notify = xxxgoui:Notify({Title="ҲƓƠӇƲƁ- goto_O R's 2.1581版\nฅ欢迎宝宝回家ฅ ҲƓƠӇƲƁ",["Description"] = "",["Color"] = Color3.fromRGB(255, 0, 255),Content = "",["Time"] = 5,["Delay"] = 10})
local xgui = xxxgoui:Start({["Name"]="【メ】【G】【Ö】【ℍ】【ⓤ】【ß】",["Description"] = "- goto_O R's 2.1581版",["Info Color"] = Color3.fromRGB(1, 1, 1),["Logo Info"] = "rbxassetid://120611289434746",["Logo Player"] = "rbxassetid://128885038925647", ["Name Info"] = "ҲƓƠӇƲƁ 欢迎宝宝回家",["Name Player"] = "ҲƓƠ",["Info Description"] = "作者:xxxxgo 群聊:259461151",["Tab Width"] = 135,["Color"] = Color3.fromRGB(255, 0, 255),["CloseCallBack"] = function()end})
local MainTab = xgui:MakeTab("x-ฅ信息ฅ")local MusicTab = xgui:MakeTab("x-ฅ音乐天堂ฅ")local AdministratorTab = xgui:MakeTab("x-ฅ管理员ฅ")local PicturequalityTab = xgui:MakeTab("x-ฅ图像画质ฅ")local UniversalTab = xgui:MakeTab("x-ฅ通用/玩家/传送ฅ")local PropsTab = xgui:MakeTab("x-ฅ道具FEฅ")local BlackholeTab = xgui:MakeTab("x-ฅ黑洞ฅ")local TalkTab = xgui:MakeTab("x-ฅ聊天中枢ฅ")local SelfishTab = xgui:MakeTab("x-ฅ自瞄透视ฅ")local LeisureTab = xgui:MakeTab("x-游戏类型-ฅ休闲模拟器ฅ")local SimulationbusinessTab = xgui:MakeTab("x-游戏-ฅ模拟经营ฅ")local ActionadventureTab = xgui:MakeTab("x-游戏类型-ฅ动作冒险ฅ")local ShotTab = xgui:MakeTab("x-游戏类型-ฅ竞技ฅ")local HorrorTab = xgui:MakeTab("x-游戏类型-ฅ恐怖ฅ")local AudioTab = xgui:MakeTab("x-游戏类型-ฅ音游ฅ")local AsymmetriccompetitiveTab = xgui:MakeTab("x-游戏类型-ฅ非对称竞技ฅ")local TowerDefenseTab = xgui:MakeTab("x-游戏类型-ฅ塔防ฅ")local DrivingTab = xgui:MakeTab("x-游戏类型-ฅ载具驾驶ฅ")local ParkourTab = xgui:MakeTab("x-游戏类型-ฅ跑酷obbyฅ")local RNGTab = xgui:MakeTab("x-游戏类型-ฅ创意玩法ฅ[RNG]")local XTab = xgui:MakeTab("x-[游戏]")local ScriptTab = xgui:MakeTab("x-ฅ其他脚本ฅ")
local xgo = LeisureTab:Section({Title = "x-ฅ猫咪点击器ฅ",Content = "ฅ休闲的猫咪游戏ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 18436975282    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
_G.AutoFish = false
_G.AutoClick = false
_G.AutoRebirth = false
_G.AutoUpgrade = false
_G.AutoFishUpgrade = false
xgo:Seperator("重要说明:不要将自动升级与自动重生,给自己太多鱼的会破坏升级")
xgo:TextInput({["Title"] = "给鱼",["Content"] = "",["Place Holder Text"] = "输入",  ["Clear Text On Focus"] = false,   ["Callback"] = function(Value)	       _G.giveFish = true		game:GetService("ReplicatedStorage").Fish:FireServer(Value)	end	  })
xgo:Toggle({["Title"]="增加鱼",["Content"] = "",["Default"] = false,["Callback"] = function (state) _G.AutoFish = state    while _G.AutoFish and task.wait() do        ReplicatedStorage:WaitForChild("Fish"):FireServer(999999999999999999)    end    end})
xgo:Toggle({["Title"]="自动点击小猫猫",["Content"] = "", Default = false,Callback = function(state) _G.AutoClick = state        while _G.AutoClick do            ReplicatedStorage:WaitForChild("Click"):FindFirstChild("Click"):FireServer()            task.wait()        end    end})
xgo:Toggle({["Title"]="自动重生",	["Content"] = "",["Default"] = false,["Callback"] = function (state) _G.AutoRebirth = state    while _G.AutoRebirth and task.wait() do        if player:WaitForChild("PriceData"):WaitForChild('Price').Value <= 5000000000000000000 * player:WaitForChild("CatData"):WaitForChild("CatLevel").Value + player:WaitForChild("leaderstats"):WaitForChild("Cat").Value then            ReplicatedStorage:WaitForChild("Rebirth"):FireServer()        end    end   end})
xgo:Toggle({["Title"]="自动升级",	["Content"] = "",["Default"] = false,["Callback"] = function (state) _G.AutoUpgrade = state    while _G.AutoUpgrade and task.wait() do        ReplicatedStorage:WaitForChild("MultiShop")['x100']:FireServer()        for i = 1, 5 do            for _, event in ipairs(ReplicatedStorage.Shop:GetChildren()) do                event:FireServer()                task.wait(-9e9)            end        end    end    end})
xgo:Toggle({["Title"]="自动鱼升级",["Content"] = "",["Default"] = false,["Callback"] = function (state) _G.AutoFishUpgrade = state    while _G.AutoFishUpgrade and task.wait() do       local MoreClicks = ReplicatedStorage:WaitForChild("FishUpgrades"):FindFirstChild("s1")        local MoreCats = ReplicatedStorage:WaitForChild("FishUpgrades"):FindFirstChild("s2")        for i = 1, 5 do            MoreClicks:FireServer()            MoreCats:FireServer()            task.wait(-9e9)        end    end  end})
xgo:Toggle({["Title"]="反-AKF",	["Content"] = "",["Default"] = false,["Callback"] = function ()local virtualUser = game:GetService('VirtualUser')       local players = game:GetService('Players')        local player = players.LocalPlayer        game:GetService('Players').LocalPlayer.Idled:Connect(function()            virtualUser:CaptureController()            virtualUser:ClickButton2(Vector2.new())            print('反-AFK triggered')         end)         print("防止挂机  Anti-AFK")    end})
xgo:Button({Title="猫咪点击器",["Content"] = "",  Callback = function()      loadstring(game:HttpGet(("https://pastebin.com/raw/RyZVEbem")))()end})
local xgo = SimulationbusinessTab:Section({Title = "x-ฅ餐厅大亨2ฅ",    Content = "经营-ฅ餐厅大亨ฅ2"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 3398014311    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="小go",["Content"] = "",  Callback = function()      loadstring(game:HttpGet(("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%A4%90%E5%8E%85%E5%A4%A7%E4%BA%A82")))()end})
xgo:Button({Title="zeld Hub",["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/iz037/Zeld-Hub/main/Script/Restaurant%20Tycoon%202.lua"))()end})
xgo:Button({Title="Eclipse Hub",["Content"] = "",  Callback = function()     getgenv().mainKey = "nil"     local a,b,c,d,e=loadstring,request or http_request or (http and http.request) or (syn and syn.request),assert,tostring,"https://api.eclipsehub.xyz/auth"c(a and b,"Executor not Supported")a(b({Url=e.."\?\107e\121\61"..d(mainKey),Headers={["User-Agent"]="Eclipse"}}).Body)()     loadstring(game:HttpGet("https://raw.githubusercontent.com/OneProtocol/Project/main/Loader", true))()end})
local xgo = SimulationbusinessTab:Section({Title = "x-ฅ我的餐厅ฅ",    Content = "经营-ฅ我的餐厅ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 4490140733    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="我的餐厅",["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastefy.app/5R1Ch6kk/raw"))()end})
local xgo = ActionadventureTab:Section({Title = "x-ฅBlox Fruitsฅ",    Content = "冒险-ฅbfฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 2753915549    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="自动杀人",["Content"] = "",  Callback = function()	 loadstring(game:HttpGet("https://pastebin.com/raw/w8tuTtgu"))()		end})
xgo:Button({Title="无密钥",["Content"] = "",  Callback = function()	getgenv().Team = "Pirates"loadstring(game:HttpGet("https://api.luarmor.net/files/v3/loaders/3b2169cf53bc6104dabe8e19562e5cc2.lua"))()end})
xgo:Button({Title="Lunar X Hudb",["Content"] = "",  Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/NguyenLam2504/anhyeuem/main/bloxshitfarm.lua"))() end})
xgo:Button({Title="Project-Spectrum9.0",["Content"] = "",  Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/SpectrumX.lua"))() end})
xgo:Button({Title="汉化版",["Content"] = "",  Callback = function()	loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/Xiao-Yun-UWU/main/%E6%B5%B7%E8%B4%BC%E7%8E%8Bbf.lua", true))()end})
xgo:Button({Title="Min_XT_V2",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/Basicallyy/Basicallyy/main/Min_XT_V2_.lua"))()	end})
xgo:Button({Title="Project-Spectrum 9.0",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/xZPUHigh/Project-Spectrum/main/SpectrumX.lua"))()		end})
xgo:Button({Title="run.mocky.io v3",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://run.mocky.io/v3/200db50e-2896-4060-86c1-29146e1ea6e0"))()		end})
xgo:Button({Title="mbmxhub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/m1M-Plqer819/any/main/mbmxhub/0135"))()		end})
xgo:Button({Title="Master Hub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/onepicesenpai/onepicesenpai/main/onichanokaka"))()		end})
xgo:Button({Title="RadonHub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/x2-Neptune/RadonHub/main/Script.lua"))()		end})
xgo:Button({Title="MinGaming Hub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/Basicallyybeta/mingane/main/MinGamingNew.lua"))()	end})
xgo:Button({Title="Fai-Fao",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/PNguyen0199/Script/main/Fai-Fao.lua"))()	end})
xgo:Button({Title="菜单版",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/MichaelZombies.lua"))()	end})
xgo:Button({Title="Tiger-Hub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/plutoguy/Tiger-Hub/main/bloxfruits.lua"))()	end})
xgo:Button({Title="Speed-Hub-X",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/AhmadV99/Speed-Hub-X/main/Speed%20Hub%20X.lua"))()	end})
xgo:Button({Title="Steep1",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/Steep1/main/Steps121"))()		end})
xgo:Button({Title="Infinite Hub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/mkhoidzvl13/Infinite-Hub/main/Infinite.txt"))()		end})
xgo:Button({Title="OMG Hub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/Omgshit/Scripts/main/MainLoader.lua"))()		end})
xgo:Button({Title="Rise Hub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://raw.githubusercontent.com/TrashLua/BloxFruits/main/FreeScripts.lua"))()		end})
xgo:Button({Title="Alchemy Hub",["Content"] = "",  Callback = function()		loadstring(game:HttpGet("https://scripts.alchemyhub.xyz"))()end})
local xgo = ActionadventureTab:Section({Title = "x-ฅnico's nextbotsฅ",    Content = "冒险-ฅnico's nextbotsฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 10118559731    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="自动跳跃",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastefy.app/6aDXS2QS/raw"))()end})
xgo:Button({Title="表情包透视",["Content"] = "",Callback = function(bool)
     for __,v in pairs(game:GetService("Workspace").bots:GetDescendants()) do
      if v:IsA("Model") then
        local a = Instance.new("BillboardGui",v)
        a.Name = "Lol"
        a.Size = UDim2.new(7,0,7,0)
        a.AlwaysOnTop = true
        a.MaxDistance = 250
        local b = Instance.new("Frame",a)
        b.Size = UDim2.new(1,0, 1,0)
        b.BackgroundTransparency = 1
        b.BorderSizePixel = 0
        b.BackgroundColor3 = Color3.new(0, 0, 0)
        local c = Instance.new('TextLabel',b)
        c.Size = UDim2.new(2,0,2,0)
        c.BorderSizePixel = 0
        c.TextSize = 15
        c.Text = v.Name
        c.BackgroundTransparency = 1
      end end
Library:Notification({Text = "如果ESP名称再次消失,请再次单击ESP",Duration = 10})end})
xgo:TextInput({
    ["Title"] = "传送到安全区域",
    ["Content"] = "教程:1 2 3 4 5",
    ["Place Holder Text"] = "输入安全区域编号（1-5）",
    ["Clear Text On Focus"] = true,
    ["Callback"] = function(input)
        local zones = {
            ["1"] = CFrame.new(-71, 38, 365),
            ["2"] = CFrame.new(-289, 38, 59),
            ["3"] = CFrame.new(-96, 23, -15),
            ["4"] = CFrame.new(-37, 51, 334),
            ["5"] = CFrame.new(85, 105, 328)
        }
        if zones[input] then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = zones[input]
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "无效安全区域名";   Text = "请输入正确的安全区域名";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
        end
    end
})
xgo:TextInput({
    ["Title"] = "传送到区域",
    ["Content"] = "区域:储物间 主商店 一楼 二楼 主车库1 主车库2 车库一楼 车库二楼",
    ["Place Holder Text"] = "输入区域名称（例如：储物间）",
    ["Clear Text On Focus"] = true,
    ["Callback"] = function(input)
        local areas = {
            ["储物间"] = CFrame.new(-378, 36, 221),
            ["主商店"] = CFrame.new(-180, 36, 249),
            ["一楼"] = CFrame.new(-64, 36, 277),
            ["二楼"] = CFrame.new(-147, 50, 340),
            ["主车库1"] = CFrame.new(-26, 20, 99),
            ["主车库2"] = CFrame.new(176, 36, 280),
            ["车库一楼"] = CFrame.new(168, 58, 267),
            ["车库二楼"] = CFrame.new(169, 80, 273)
        }
        if areas[input] then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = areas[input]
        else
            game:GetService("StarterGui"):SetCore("SendNotification", {Title = "无效区域名";   Text = "请输入正确的区域名称";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
        end
    end
})
local xgo = ShotTab:Section({Title = "x-ฅ俄亥俄州ฅ",    Content = "枪战-ฅ俄亥俄州ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 7239319209    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
local AutoRobBank
local AutoLockSafe
local automoneypfind
local instantgoldsafe
local instantblacksafe
local AutoRobjstore
local instantgems
xgo:Toggle({
    ["Title"] = "立即打开黑色保险箱",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		instantblacksafe = Value
		task.spawn(function()
			while instantblacksafe do
				task.wait()
				local safe2 = game:GetService("Workspace").Game.Entities.JewelSafe.JewelSafe
				safe2.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
			end
		end)
	end    
})
local tocheck
xgo:Toggle({
    ["Title"] = "自动开锁保险箱",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		if Value == true then
			AutoLockSafe = Value
			task.spawn(function()
				while AutoLockSafe do
					task.wait()
					local tosee = game:GetService("Workspace").Game.Entities.JewelSafe:FindFirstChild("JewelSafe")
					for _, safe in pairs(tosee:GetDescendants()) do
						if safe.Name == "Attachment" then
							tocheck = safe
						end
						if safe.Name == "SafeMain" then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = safe.CFrame
						end
						task.wait(0.6)
						if safe.Name == "ProximityPrompt" then
							game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
						end
						repeat
							task.wait()
						until tocheck:FindFirstChild("ProximityPrompt") == nil
						task.wait()
					end
				end
			end)
		end
	end    
})
xgo:Toggle({
    ["Title"] = "自动抢银行",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		AutoRobBank = Value
		task.spawn(function()
			while AutoRobBank do
				task.wait()
				local bankthing = game:GetService("Workspace").BankRobbery.BankCash
				if #bankthing.Cash:GetChildren() ~= 0 then
					game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1074, 8, -344)
					if game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.Enabled == true then
						game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
						game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
						local function onKeyPress(inputObject, gameProcessedEvent)
							if inputObject.KeyCode == Enum.KeyCode.E then
								game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.HoldDuration = 0
								game:GetService("Workspace").BankRobbery.BankCash.Main.Attachment.ProximityPrompt.MaxActivationDistance = 20
							end
						end
						game:GetService("UserInputService").InputBegan:Connect(onKeyPress)
						game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
						game:GetService("VirtualUser"):SetKeyDown("0x45");
						task.wait(0.1);
						game:GetService("VirtualUser"):SetKeyUp("0x45");
					end
					repeat
						task.wait()
					until game:GetService("Workspace").BankRobbery.VaultDoor.Door.Attachment.ProximityPrompt.Enabled == false
					game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = bankthing.Main.CFrame
					task.wait()
					game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
				else
					print('going to new server')
					local servers = {}
					local serversplayers = {}
					local maxPlrs = nil
					local http = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
					local req = http({
						Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)
					})
					local body = game.HttpService:JSONDecode(req.Body)
					if body and body.data then
						for i, v in next, body.data do
							if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers then
								if maxPlrs == nil then
									maxPlrs = tonumber(v.maxPlayers)
									table.insert(servers, #servers + 1, v)
								end
							end
						end
					end
					if #servers == 0 then
						return
					end
					for i, v in pairs(servers) do
						table.insert(serversplayers, #serversplayers + 1, tonumber(v.playing))
					end
					table.sort(serversplayers)
					for i, v in pairs(servers) do
						if v.playing == serversplayers[1] and v.id ~= game.JobId then
							servers = {
								v.id
							}
						elseif v.id == game.JobId then
							servers = {}
						end
					end
					if #servers == 0 then
						return
					end
					if #servers > 0 then
						game.TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game:GetService("Players").LocalPlayer)
					end
					print("done?")
				end
			end
		end)
	end    
})
xgo:Toggle({
    ["Title"] = "自动现金ESP",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		getgenv().AutoEspCash = Value
		local highlightedcash = {}
		task.spawn(function()
			while wait() do
				if not getgenv().AutoEspCash then
					for _, objects in pairs(highlightedcash) do
						if objects.highlight then
							objects.highlight:Destroy()
						end
						if objects.ui then
							objects.ui:Destroy()
						end
					end
					highlightedcash = {}
					break
				end
				for _, v in pairs(game:GetService("Workspace").Game.Entities.CashBundle:GetDescendants()) do
					if v:IsA("Part") and v:FindFirstChildWhichIsA("TouchTransmitter") then
						local distance = (v.Position - game:GetService("Players").LocalPlayer.Character.PrimaryPart.Position).magnitude
						if distance > 900 then
							if highlightedcash[v] then
								if highlightedcash[v].highlight then
									highlightedcash[v].highlight:Destroy()
								end
								if highlightedcash[v].ui then
									highlightedcash[v].ui:Destroy()
								end
								highlightedcash[v] = nil
							end
						else
							if not highlightedcash[v] then
								local Highlight = Instance.new("Highlight", v)
								Highlight.FillColor = Color3.fromRGB(0, 0, 0)
								Highlight.OutlineColor = Color3.fromRGB(0, 0, 0)
								local UI = Instance.new("BillboardGui", v)
								UI.Size = UDim2.new(0, 1000, 0, 30)
								UI.AlwaysOnTop = true
								UI.StudsOffset = Vector3.new(0, 3, 0)
								local Label = Instance.new("TextLabel", UI)
								Label.Size = UDim2.new(1, 0, 1, 0)
								Label.BackgroundTransparency = 1
								Label.TextScaled = true
								Label.Text = "Cash"
								Label.TextColor3 = Color3.fromRGB()
								Label.Font = Enum.Font.Oswald
								Label.TextStrokeTransparency = 0
								Label.TextStrokeColor3 = Color3.fromRGB(0, 255, 0)
								highlightedcash[v] = {
									highlight = Highlight,
									ui = UI
								}
							end
						end
					end
				end
			end
		end)
	end    
})
xgo:Toggle({
    ["Title"] = "自动寻找钱打印机",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		automoneypfind = Value
		task.spawn(function()
			while automoneypfind do
				task.wait()
				for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
					if v.Name == "Money Printer" and v:IsA("Model") and v:FindFirstChildWhichIsA("MeshPart") then
						game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v:FindFirstChildWhichIsA("MeshPart").CFrame
						task.wait()
						game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
					else
						print('going to new server')
						local servers = {}
						local serversplayers = {}
						local maxPlrs = nil
						local http = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
						local req = http({
							Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)
						})
						local body = game.HttpService:JSONDecode(req.Body)
						if body and body.data then
							for i, v in next, body.data do
								if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers then
									if maxPlrs == nil then
										maxPlrs = tonumber(v.maxPlayers)
										table.insert(servers, #servers + 1, v)
									end
								end
							end
						end
						if #servers == 0 then
							return
						end
						for i, v in pairs(servers) do
							table.insert(serversplayers, #serversplayers + 1, tonumber(v.playing))
						end
						table.sort(serversplayers)
						for i, v in pairs(servers) do
							if v.playing == serversplayers[1] and v.id ~= game.JobId then
								servers = {
									v.id
								}
							elseif v.id == game.JobId then
								servers = {}
							end
						end
						if #servers == 0 then
							return
						end
						if #servers > 0 then
							game.TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game:GetService("Players").LocalPlayer)
						end
						print("done?")
					end
				end
			end
		end)
	end    
})
xgo:Toggle({
    ["Title"] = "自动抢劫珠宝店",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		AutoRobjstore = Value
		task.spawn(function()
			while AutoRobjstore do
				task.wait()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1723, 15, -719)
				task.wait(1)
				repeat
					task.wait()
				until game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild('PurchaseDialog') == nil
				game:GetService("VirtualUser"):SetKeyDown("0x33");
				task.wait(0.1);
				game:GetService("VirtualUser"):SetKeyUp("0x33");
				task.wait()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1710, 15, -726)
				task.wait(0.1)
				game:GetService("VirtualUser"):SetKeyDown("0x01");
				task.wait(0.1);
				game:GetService("VirtualUser"):SetKeyUp("0x01");
				task.wait()
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1742, 7, -748)
				task.wait(3.5)
				game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = CFrame.new(1638, 9, -720)
				task.wait()
				game:GetService("VirtualUser"):SetKeyDown("0x31");
				task.wait(0.1);
				game:GetService("VirtualUser"):SetKeyUp("0x31");
				task.wait()
				game:GetService("VirtualUser"):SetKeyDown("0x01");
				task.wait(0.1);
				game:GetService("VirtualUser"):SetKeyUp("0x01");
				task.wait(0.6)

				local gemthing = game:GetService("Workspace").GemRobbery.JewelryCases
				if #gemthing.HighYieldSpawns:GetChildren() ~= 0 or #gemthing.LowYieldSpawns:GetChildren() ~= 0 then
					for i, v in pairs(gemthing.HighYieldSpawns:GetDescendants()) do
						if v.Name == "ProximityPrompt" and v.Parent.Parent.Parent.Glass.Transparency ~= 0 then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.CFrame
							game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
						else
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Parent.Parent.Glass.CFrame
							task.wait(0.2)
							game:GetService("VirtualUser"):SetKeyDown("0x01");
							task.wait(0.1);
							game:GetService("VirtualUser"):SetKeyUp("0x01");
							task.wait(0.6)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
						end
					end
					for i, v in pairs(gemthing.LowYieldSpawns:GetDescendants()) do
						if v.Name == "ProximityPrompt" and v.Parent.Parent.Parent.Glass.Transparency ~= 0 then
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.CFrame
							game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
						else
							game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = v.Parent.Parent.Parent.Glass.CFrame
							task.wait(0.2)
							game:GetService("VirtualUser"):SetKeyDown("0x01");
							task.wait(0.1);
							game:GetService("VirtualUser"):SetKeyUp("0x01");
							task.wait(0.6)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,'E', false, game)
						end
					end
				else
					print('going to new server')
					local servers = {}
					local serversplayers = {}
					local maxPlrs = nil
					local http = (syn and syn.request) or (http and http.request) or http_request or (fluxus and fluxus.request) or request
					local req = http({
						Url = string.format("https://games.roblox.com/v1/games/%s/servers/Public?sortOrder=Asc&limit=100", game.PlaceId)
					})
					local body = game.HttpService:JSONDecode(req.Body)
					if body and body.data then
						for i, v in next, body.data do
							if type(v) == "table" and tonumber(v.playing) and tonumber(v.maxPlayers) and v.playing < v.maxPlayers then
								if maxPlrs == nil then
									maxPlrs = tonumber(v.maxPlayers)
									table.insert(servers, #servers + 1, v)
								end
							end
						end
					end
					if #servers == 0 then
						return
					end
					for i, v in pairs(servers) do
						table.insert(serversplayers, #serversplayers + 1, tonumber(v.playing))
					end
					table.sort(serversplayers)
					for i, v in pairs(servers) do
						if v.playing == serversplayers[1] and v.id ~= game.JobId then
							servers = {
								v.id
							}
						elseif v.id == game.JobId then
							servers = {}
						end
					end
					if #servers == 0 then
						return
					end
					if #servers > 0 then
						game.TeleportService:TeleportToPlaceInstance(game.PlaceId, servers[math.random(1, #servers)], game:GetService("Players").LocalPlayer)
					end
					print("done?")
				end
			end
		end)
	end    
})
xgo:Toggle({
    ["Title"] = "立即获得宝石",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		instantgems = Value
		task.spawn(function()
			while instantgems do
				task.wait()
				local rocks = game.workspace.GemRobbery.JewelryCases.HighYieldSpawns
				for _, obj in pairs(rocks:GetChildren()) do
					if obj.ClassName == "Model" then
						for _, innerObj in pairs(obj:GetChildren()) do
							if innerObj.ClassName == "Model" then
								if innerObj.Name == "Case" then
                        -- 什么也不做
								elseif innerObj.Name == "Emerald" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Sapphire" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Amethyst" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Topaz" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Diamond" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Gold Bar" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Ruby" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								else
									if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
										innerObj.Box.ProximityPrompt.HoldDuration = 0
									end
								end
							end
						end
					end
				end
				local rocks2 = game.workspace.GemRobbery.JewelryCases.LowYieldSpawns
				for _, obj in pairs(rocks2:GetChildren()) do
					if obj.ClassName == "Model" then
						for _, innerObj in pairs(obj:GetChildren()) do
							if innerObj.ClassName == "Model" then
								if innerObj.Name == "Case" then
                        -- 什么也不做
								elseif innerObj.Name == "Emerald" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Sapphire" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Amethyst" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Topaz" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Diamond" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Gold Bar" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								elseif innerObj.Name == "Ruby" then
									if innerObj:FindFirstChild("Handle") and innerObj.Handle:FindFirstChild("ProximityPrompt") then
										innerObj.Handle.ProximityPrompt.HoldDuration = 0
									end
								else
									if innerObj:FindFirstChild("Box") and innerObj.Box:FindFirstChild("ProximityPrompt") then
										innerObj.Box.ProximityPrompt.HoldDuration = 0
									end
								end
							end
						end
					end
				end
			end
		end)
	end    
})
xgo:Toggle({
    ["Title"] = "立即打开金色保险箱",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
		instantgoldsafe = Value
		task.spawn(function()
			while instantgoldsafe do
				wait(0.1)
				local safe = game:GetService("Workspace").Game.Entities.GoldJewelSafe.GoldJewelSafe
				safe.Door["Meshes/LargeSafe_Cube.002_Cube.003_None (1)"].Attachment.ProximityPrompt.HoldDuration = 0
				safe.Name = "safeopen"
			end
		end)
	end    
})
xgo:Button({Title="传送加自动工作",     ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/ohio/main/Roblox232"))()    end})
xgo:Button({Title="小go俄亥俄州简易版",   ["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E4%BF%84%E4%BA%A5%E4%BF%84%E5%B7%9E"))()  end})
xgo:Button({Title="指令",["Content"] = "聊天框内输入指令",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio"))()    end})
xgo:Seperator("透开—透关")
xgo:Seperator("追踪开—追踪关")
xgo:Seperator("收钱开—收钱关")
xgo:Seperator("收物开—收物关")
xgo:Seperator("抢取款机开—抢取款机关")
xgo:Seperator("抢银行开—抢银行关")
xgo:Seperator("穿墙开—穿墙关")
local xgo = ShotTab:Section({Title = "x-ฅStreetzWar2ฅ",    Content = "战争-ฅStreetzWar2ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 11177482306   local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="xgo",  ["Content"] = "",  Callback = function()  loadstring(game:HttpGet('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20StreetzWar2.lua'))()  end})
xgo:Button({Title="Sleepyhub",  ["Content"] = "",  Callback = function()  loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenijo/Sleepy/main/Main/Beta.lua'))()  end})
local xgo = ShotTab:Section({Title = "x-ฅ兵工厂ฅ",    Content = "枪战-ฅ兵工厂ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 286090429   local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="兵工厂",  ["Content"] = "1",  Callback = function()  loadstring(game:HttpGet('https://raw.githubusercontent.com/1201for/V.G-Hub/main/V.Ghub'))()   end})
xgo:Button({Title="兵工厂",["Content"] = "2",  Callback = function()  loadstring(game:HttpGet(('https://raw.githubusercontent.com/RandomAdamYT/DarkHub/master/Init'), true))()  end})
local xgo = ShotTab:Section({Title = "x-ฅ战争大亨ฅ",    Content = "枪战-ฅ战争大亨ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 4639625707    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="破解无密钥",["Content"] = "",  Callback = function() loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Margman/whynot/main/oil%20warfare%20tycoon%20autofarm"))() end})
xgo:Button({Title="剑客v4",["Content"] = "需进群组",  Callback = function()    jianke_V4 = "作者_初夏"jianke__V4 = "作者QQ1412152634"jianke___V4 = "剑客QQ群347724155"loadstring(game:HttpGet(('https://raw.githubusercontent.com/JianKeCX/JianKeV4/main/ChuXia')))() end})
xgo:Button({Title="小go战争大亨",["Content"] = "",  Callback = function()  loadstring(game:HttpGet(("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E6%88%98%E4%BA%89%E5%A4%A7%E4%BA%A8")))()end})
local xgo = ShotTab:Section({Title = "x-ฅ地下战争ฅ2.0",Content ="战争-ฅ地下战争ฅ2.0"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 9791603388    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="小go汉化", ["Content"] = "",  Callback = function() loadstring(game:HttpGet(("https://raw.githubusercontent.com/lIlIlIlIlI24568/zxcvb/refs/heads/main/bad%20undergroundwar%202")))() end})
local xgo = ShotTab:Section({Title = "x-ฅ旗帜战争ฅ",    Content = "战争-ฅ旗帜战争ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 3214114884    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end teleportPlayer()  end})
xgo:Button({Title="旗帜战争",["Content"] = "1",  Callback = function()      loadstring(game:HttpGet('https://raw.githubusercontent.com/Infinity2346/Tect-Menu/main/Flag%20Wars.txt'))()end})
local xgo = ShotTab:Section({Title = "x-ฅ巴掌ฅ",    Content = "-ฅ打屁股之战ฅ"})
local SlapAuraa
xgo:TextInput({["Title"]= "拍打范围修改",["Place Holder Text"] = "范围",["Clear Text On Focus"] = false,	Callback = function(value)
		SlapAuraa = Value
		while SlapAuraa do
		task.wait()  
		pcall(function()    
	    for Index, Player in next, game.Players:GetPlayers() do
		if Player ~= game.Players.LocalPlayer and Player.Character and Player.Character:FindFirstChild("entered") then
		if Player.Character:FindFirstChild("Head") then
	    if Player.Character.Head:FindFirstChild("UnoReverseCard") == nil and Player.Character:FindFirstChild("rock") == nil then
		if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart") then
		local Magnitude = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - Player.Character.HumanoidRootPart.Position).Magnitude
		task.wait()
		if 50 >= Magnitude then
		shared.gloveHits[getGlove()]:FireServer(Player.Character:WaitForChild("Head"))
		end end end end end end end)end  end})
xgo:Toggle({["Title"]= "防击飞",["Content"] = "",["Default"] = false,["Callback"] = function (Value)
    AntiRagdoll = Value
    if AntiRagdoll then
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    game.Players.LocalPlayer.CharacterAdded:Connect(function()
    game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Changed:Connect(function()
    if game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == true and AntiRagdoll then
    repeat task.wait() game.Players.LocalPlayer.Character.Torso.Anchored = true
    until game.Players.LocalPlayer.Character:WaitForChild("Ragdolled").Value == false
    game.Players.LocalPlayer.Character.Torso.Anchored = false
    end end) end) end end})
xgo:Toggle({["Title"]="无CD",["Content"] = "",["Default"] = false,["Callback"] = function(value)
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local tool = character:FindFirstChildOfClass("Tool") or player.Backpack:FindFirstChildOfClass("Tool")
    bazhangmnq = Value
    while bazhangmnq do
    local localscript = tool:FindFirstChildOfClass("LocalScript")
    local localscriptclone = localscript:Clone()
    localscriptclone = localscript:Clone()
    localscriptclone:Clone()
    localscript:Destroy()
    localscriptclone.Parent = tool
    wait(0.1)
    end
    end})
xgo:Button({Title="获取计数器手套",["Content"] = "",Callback = function()
    fireclickdetector(game.Workspace.CounterLever.ClickDetector)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(0,100,0)
    wait(0.2)
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    wait(121)
    for i,v in pairs(workspace.Maze:GetDescendants()) do
    if v:IsA("ClickDetector") then
    fireclickdetector(v)
    end
    end
    end})
xgo:Toggle({
    ["Title"] = "地牢亮度",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
        Light = Value
        if not Light then
            game.Lighting.Ambient = Color3.new(0, 0, 0)
        end
    end
})
xgo:Toggle({
    ["Title"] = "复古技能",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
        RetroSpam = Value
        while RetroSpam do
            game:GetService("ReplicatedStorage").RetroAbility:FireServer(RetroAbility)
            task.wait()
        end
    end
})
xgo:TextInput({
    ["Title"] = "复古技能选择",
    Content = "如下: 1.Rocket Launcher 2.Ban Hammer 3.Bomb",
    ["Place Holder Text"] = "输入(例如:Rocket..)",
    ["Clear Text On Focus"] = false,
    ["Callback"] = function(Value)
        RetroAbility = Value
    end
})
xgo:Toggle({
    ["Title"] = "自动捡糖果",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
        CandyCornFarm = Value
        while CandyCornFarm do
            for i, v in pairs(workspace.CandyCorns:GetChildren()) do
                if v:FindFirstChildWhichIsA("TouchTransmitter") then
                    v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                end
            end
            task.wait()
        end
    end
})
xgo:Toggle({
    ["Title"] = "彩虹角色",
    ["Content"] = "装备黄金手套",
    ["Default"] = false,
    ["Callback"] = function(Value)
        _G.Rainbow = Value
        while _G.Rainbow do
            for i = 0, 1, 0.001 * 25 do
                game:GetService("ReplicatedStorage").Goldify:FireServer(false, BrickColor.new(Color3.fromHSV(i, 1, 1)))
                task.wait()
            end
        end
    end
})
xgo:Seperator("ฅ传送区-脚本ฅ")
xgo:Button({Title="安全区",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0, 40, 0)end})
xgo:Button({Title="竞技场",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Origo.CFrame * CFrame.new(0, -5, 0)end})
xgo:Button({Title="埃及岛",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(215, -15.5, 0.5)end})
xgo:Button({Title="果实岛",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.workspace.Arena.island5.Union.CFrame * CFrame.new(0, 3.25, 0)end})
xgo:Button({Title="盘子",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Arena.Plate.CFrame * CFrame.new(0, 2, 0)end})
xgo:Button({Title="锦标赛",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Battlearena.Arena.CFrame * CFrame.new(0, 10, 0)end})
xgo:Button({Title="默认竞技场",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(120, 360, -3)end})
xgo:Button({Title="老玩家神秘打野点",Content = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Spot.CFrame * CFrame.new(0, 50, 0)end})
xgo:Button({Title="kvikshub",Content = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/kviks/Slap-Battles/refs/heads/main/kvikshub.lua"))()end})
local xgo = HorrorTab:Section({Title = "x-ฅDOORSฅ",Content = "恐怖-ฅDOORSฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 6516141723    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="自动刷死亡",["Content"] = "在大厅执行然后进入游戏（使用mods更多旋钮）",Callback = function()task.spawn(queue_on_teleport or syn and syn.queue_on_teleport, game:HttpGet("https://pastebin.com/raw/2vuqE16j"))end})
xgo:Button({Title="十字架",["Content"] = "持有Q并左键点击任何内容",Callback = function()
_G.Uses = 414141414141
_G.Range = 30
_G.OnAnything = true
_G.Fail = false
_G.Variant = "Electric"
loadstring(game:HttpGet('https://raw.githubusercontent.com/PenguinManiack/Crucifix/main/Crucifix.lua'))()end})
xgo:Button({Title="召唤 Grumble[按Q进行召唤]",["Content"]="召唤出Grumble[他是没有伤害的]使用剑来消灭它",Callback = function()
local Speed = 12
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")
local UserInputService = game:GetService("UserInputService")
local Player = Players.LocalPlayer
local Character = Player.Character or Player.CharacterAdded:Wait()
local Sword = game:GetObjects("rbxassetid://72674416931709")[1]
local Cache = game:GetObjects("rbxassetid://96223289630255")[1]
local Cache2 = game:GetObjects("rbxassetid://103869039972033")[1]
Cache:Destroy()
Cache2:Destroy()
Sword.Parent = Player.Backpack
task.spawn(function()
	local Tool = Sword
	local Handle = Tool:WaitForChild("Handle")
	local Humanoid = Character.Humanoid
	local Torso = Character:FindFirstChild("Torso") or Character:FindFirstChild("HumanoidRootPart")
	local function Create(ty)
		return function(data)
			local obj = Instance.new(ty)
			for k, v in pairs(data) do
				if type(k) == 'number' then
					v.Parent = obj
				else
					obj[k] = v
				end	end
			return obj
		end	end
	local BaseUrl = "rbxassetid://"
	local DamageValues = {
		BaseDamage = 5,
		SlashDamage = 10,
		LungeDamage = 30
	}
	local Animations = {
		R15Slash = 522635514,
		R15Lunge = 522638767
	}
	local Damage = DamageValues.BaseDamage
	local Grips = {
		Up = CFrame.new(0, 0, -1.70000005, 0, 0, 1, 1, 0, 0, 0, 1, 0),
		Out = CFrame.new(0, 0, -1.70000005, 0, 1, 0, 1, -0, 0, 0, 0, -1)
	}
	local Sounds = {
		Slash = Handle:WaitForChild("SwordSlash"),
		Lunge = Handle:WaitForChild("SwordLunge"),
		Unsheath = Handle:WaitForChild("Unsheath")
	}
	local ToolEquipped = false
	Tool.Grip = Grips.Up
	Tool.Enabled = true
	local function IsTeamMate(Player1, Player2)
		return (Player1 and Player2 and not Player1.Neutral and not Player2.Neutral and Player1.TeamColor == Player2.TeamColor)	end
	local function TagHumanoid(humanoid, player)
		local Creator_Tag = Instance.new("ObjectValue")
		Creator_Tag.Name = "creator"
		Creator_Tag.Value = player
		Debris:AddItem(Creator_Tag, 2)
		Creator_Tag.Parent = humanoid	end
	local function UntagHumanoid(humanoid)
		for i, v in pairs(humanoid:GetChildren()) do
			if v:IsA("ObjectValue") and v.Name == "creator" then
				v:Destroy()
			end	end	end
	local function CheckIfAlive()
		return (((Player and Player.Parent and Character and Character.Parent and Humanoid and Humanoid.Parent and Humanoid.Health > 0 and Torso and Torso.Parent) and true) or false)	end
	local function Blow(Hit)
		if not Hit or not Hit.Parent or not CheckIfAlive() or not ToolEquipped then
			return	end
		local RightArm = Character:FindFirstChild("Right Arm") or Character:FindFirstChild("RightHand")
		if not RightArm then
			return	end
		local RightGrip = RightArm:FindFirstChild("RightGrip")
		if not RightGrip or (RightGrip.Part0 ~= Handle and RightGrip.Part1 ~= Handle) then
			return	end
		local character = Hit.Parent
		if character == Character then
			return	end
		local humanoid = character:FindFirstChildOfClass("Humanoid")
		if not humanoid or humanoid.Health == 0 then
			return	end
		local player = Players:GetPlayerFromCharacter(character)
		if player and (player == Player or IsTeamMate(Player, player)) then
			return	end
		UntagHumanoid(humanoid)
		TagHumanoid(humanoid, Player)
		humanoid:TakeDamage(Damage)	end
	local function Attack()
		Damage = DamageValues.SlashDamage
		Sounds.Slash:Play()
		if Humanoid then
			if Humanoid.RigType == Enum.HumanoidRigType.R6 then
				local Anim = Instance.new("StringValue")
				Anim.Name = "toolanim"
				Anim.Value = "Slash"
				Anim.Parent = Tool
			elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
				local Anim = Tool:FindFirstChild("R15Slash")
				if Anim then
					local Track = Humanoid:LoadAnimation(Anim)
					Track:Play(0)
				end	end	end	end
	local function Lunge()
		Damage = DamageValues.LungeDamage
		Sounds.Lunge:Play()
		if Humanoid then
			if Humanoid.RigType == Enum.HumanoidRigType.R6 then
				local Anim = Instance.new("StringValue")
				Anim.Name = "toolanim"
				Anim.Value = "Lunge"
				Anim.Parent = Tool
			elseif Humanoid.RigType == Enum.HumanoidRigType.R15 then
				local Anim = Tool:FindFirstChild("R15Lunge")
				if Anim then
					local Track = Humanoid:LoadAnimation(Anim)
					Track:Play(0)		end	end	end	
		wait(0.2)
		Tool.Grip = Grips.Out
		wait(0.6)
		Tool.Grip = Grips.Up
		Damage = DamageValues.SlashDamage	end
	Tool.Enabled = true
	local LastAttack = 0
	local function Activated()
		if not Tool.Enabled or not ToolEquipped or not CheckIfAlive() then	return	end
		Tool.Enabled = false
		local Tick = RunService.Stepped:wait()
		if (Tick - LastAttack < 0.2) then
		Lunge() else Attack() end
		LastAttack = Tick
		Damage = DamageValues.BaseDamage
		local SlashAnim = (Tool:FindFirstChild("R15Slash") or Create("Animation"){
			Name = "R15Slash",
			AnimationId = BaseUrl .. Animations.R15Slash,
			Parent = Tool})
		local LungeAnim = (Tool:FindFirstChild("R15Lunge") or Create("Animation"){
			Name = "R15Lunge",
			AnimationId = BaseUrl .. Animations.R15Lunge,
			Parent = Tool})
		Tool.Enabled = true	end
	local function Equipped()
		if not CheckIfAlive() then
			return	end
		ToolEquipped = true
		Sounds.Unsheath:Play()	end
	local function Unequipped()
		Tool.Grip = Grips.Up
		ToolEquipped = false	end
	Tool.Activated:Connect(Activated)
	Tool.Equipped:Connect(Equipped)
	Tool.Unequipped:Connect(Unequipped)
	Handle.Touched:Connect(Blow) end)
UserInputService.InputBegan:Connect(function(input, gP)
	if input.KeyCode == Enum.KeyCode.Q and not gP then
		local Dummy = game:GetObjects("rbxassetid://96223289630255")[1]
		local Grumbo = game:GetObjects("rbxassetid://103869039972033")[1]
		Dummy.Parent = workspace
		Grumbo.Parent = workspace
		Dummy.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame + Vector3.new(math.random(-15, 15), 0, math.random(-15, 15))
		task.wait()
		local Idle = Grumbo.GrumbleRig.AnimationController.Animator:LoadAnimation(Grumbo.GrumbleRig.Idle)
		Idle.Looped = true
		Idle:Play()
		local Blink = Grumbo.GrumbleRig.AnimationController.Animator:LoadAnimation(Grumbo.GrumbleRig.Blink)
		local Stun = Grumbo.GrumbleRig.AnimationController.Animator:LoadAnimation(Grumbo.GrumbleRig.Stun)
		task.spawn(function()
			while Grumbo:IsDescendantOf(workspace) do
				task.wait(math.random(2, 5))
				Blink:Play()
			end end)
		local function followPlayer()
			local Direction = (Character.HumanoidRootPart.Position - Dummy.HumanoidRootPart.Position).unit
			Dummy.HumanoidRootPart.Velocity = Direction * Speed
			Dummy.HumanoidRootPart.CFrame = CFrame.new(Dummy.HumanoidRootPart.Position, Character.HumanoidRootPart.Position)
		end
		Dummy.Humanoid:GetPropertyChangedSignal("Health"):Connect(function()
			if Dummy.Humanoid.Health <= 0 then
				Stun:Play()
				task.wait(1)
				Dummy:Destroy()
				Grumbo:Destroy()
			end end)
		RunService.RenderStepped:Connect(function()
			if Grumbo:IsDescendantOf(workspace) and Dummy:IsDescendantOf(workspace) and Dummy:FindFirstChild("HumanoidRootPart") and Dummy:FindFirstChild("Humanoid").Health > 0 then
				local Distance = (Character.HumanoidRootPart.Position - Dummy.HumanoidRootPart.Position).magnitude
				if Distance <= math.huge then
					followPlayer() end
				Grumbo:PivotTo(Dummy.HumanoidRootPart.CFrame)
			end end)end end)end})
xgo:Button({Title="小go制作",["Content"] = "",Callback = function()loadstring(game:HttpGet(("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/DOORS%E9%BE%99%E6%94%B9")))()end})
xgo:Button({Title="zs lll 2 ",["Content"] = "卡密:nrty",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/zuohongjian/bjb/main/ZS%20III"))()end})
xgo:Button({Title="FLOOR2",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://github.com/DocYogurt/Main/raw/main/Scripts/DF2RW.lua"))()end})
xgo:Button({Title="AND已汉化 推荐配合穿墙",["Content"] = "",Callback = function()  loadstring(game:HttpGet("\104\116\116\112\115\58\47\47\112\97\115\116\101\98\105\110\46\99\111\109\47\114\97\119\47\54\53\84\119\84\56\106\97"))()end})
xgo:Button({Title="小go汉化版",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E4%B8%AD%E6%96%87%E7%89%88%20MS%20DOORS.lua"))()end})
xgo:Button({Title="room自动走",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://scriptblox.com/raw/DOORS-Auto-A1000-9285"))()end})
xgo:Button({Title="xgo喜欢用",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://rawscripts.net/raw/DOORS-FFJ-Hub-11365'))()end})
xgo:Dropdown({["Title"] = "脚本模式",["Multi"] = false,["Options"] = {"硬核模式", "硬核模式重置", "不可能模式", "Oof的不可能模式", "超级困难模式", "混乱模式", "EndlessDoors模式", "碎片模式", "管理员恶搞模式", "疯狂模式", "Plamen6789的硬核模式", "NAUTIC的硬核模式", "恐怖模式", "恶搞模式", ""},["Default"] = {"无"},    ["Place Holder Text"] = "选择选项",    ["Callback"] = function(a)if a == "硬核模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/80Fi9ZaJ"),true))()    elseif a == "硬核模式重置" then    loadstring(game:HttpGet(("https://pastebin.com/raw/tufDF1vi"),true))()    elseif a == "不可能模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/YTbbweA8"),true))()    elseif a == "超级困难模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/8M9WjLKu"),true))()    elseif a == "混乱模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/HollowedOutMods/MayhemMode/main/loader.lua'))()    elseif a == "EndlessDoors模式" then    game.SoundService.AmbientReverb = "City"           loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/Script.lua"))()              loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/ScriptNoAchievements.txt"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekeye.lua"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/seekmodel.lua"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/VictrolaRecreation.txt"))()            loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/worldcuuuup/main/MusicReplace.txt"))()             loadstring(game:HttpGet("https://raw.githubusercontent.com/check78/Entities/main/DeathSound.txt"))()    elseif a == "碎片模式" then    loadstring(game:HttpGet("https://raw.githubusercontent.com/Potato032/Doors-Fragmented-Mode/main/ScriptDontShareItsOnDC.txt"))()    elseif a == "" then    local CoreGui = game:GetService("StarterGui")                            CoreGui:SetCore("SendNotification", {    Title = "xxxxgo",    Text = "选的空白是干什么？点错了吗？",    Duration = 2, })    elseif a == "管理员恶搞模式" then    Loadstring(game:HttpGet(("https://pastebin.com/raw/YgC1rSfw"),true))()    elseif a == "疯狂模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/MuhXd/DoorSuff/main/DoorsModes/HardMode(Multplayer%2CProtected).lua'))()    elseif a == "Plamen6789的硬核模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/plamen6789/HardcoreScriptDOORS/main/HardcoreModeScript'))()    elseif a == "NAUTIC的硬核模式" then    loadstring(game:HttpGet("https://glot.io/snippets/gp5pu59o7f/raw"))()    elseif a == "恐怖模式" then    loadstring(game:HttpGet(("https://pastebin.com/raw/AriSD2rK"),true))()    elseif a == "恶搞模式" then    loadstring(game:HttpGet('https://pastebin.com/raw/qP0QFU0D'))()    elseif a == "Oof的不可能模式" then    loadstring(game:HttpGet('https://raw.githubusercontent.com/Ukazix/impossible-mode/main/Protected_79.lua.txt'))()    end       end})
xgo:Button({Title="使楼层2(矿山)",["Content"] = "在没有徽章的情况下获得楼层2",Callback = function()CustomModifiers:EnableFloor("Mines", true)end})
xgo:Button({Title="使楼层0(后门)",["Content"] = "在没有徽章的情况下获得楼层0",Callback = function()CustomModifiers:EnableFloor("Backdoor", true)end})
xgo:Button({Title="全局高亮",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/4LDKiJ5a"))()end})
xgo:Button({Title="手电筒",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://pastebin.com/raw/9Daqa4hD'))()end})
xgo:Button({Title="吸铁石",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/MagnetByNerd.lua"))()end})
xgo:Button({Title="剪刀",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/shears_done.lua"))()end})
xgo:Button({Title="圣光炸弹",["Content"] = "我用过一次，不过炸完之后就不能游戏了，只能娱乐",  Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/HolyGrenadeByNerd.lua"))()end})
xgo:Button({Title="臭猫 加载有点慢",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Maxwell%20Plushie"))()end})
xgo:Button({Title="控制物体大小的枪",["Content"] = "在不可能模式中使用",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/SizeChangerByNerd.lua"))()end})
xgo:Button({Title="香蕉枪",["Content"] = "只有在困难模式才能发射香蕉子弹",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()end}) 
local xgo = HorrorTab:Section({Title = "x-ฅ压力ฅ",Content = "恐怖-ฅ压力ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 12411473842    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="小go汉化",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/xgomn/zxcvb/refs/heads/main/WT%20-%20Pressure"))()end})
xgo:Button({Title="PersonalHub",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/LordEyes2/Script/main/PersonalHub"))() end})
xgo:Button({Title="DevHub",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/8EuUX9kx"))() end})
xgo:Button({Title="creepyV2.4",["Content"] = "",  Callback = function() loadstring(game:HttpGet("https://github.com/Drop56796/CreepyEyeHub/blob/main/obfuscate.lua?raw=true"))()end})
xgo:Button({Title="无敌",["Content"] = "唯一缺点就是能被机枪扫到",  Callback = function()  loadstring(game:HttpGet("https://rawscripts.net/raw/Pressure-*-Mode-15992"))() end})
xgo:Button({Title="人机压力",["Content"] = "",  Callback = function()    loadstring(game:HttpGet(('https://github.com/DocYogurt/Main/raw/main/Scripts/Pressure')))() end})
xgo:Button({Title="新版最佳",["Content"] = "",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/SpiderScriptRB/Pressure/refs/heads/main/Protected_1550309234935669.txt')))() end})
local xgo = HorrorTab:Section({Title = "x-ฅThe rakeฅ重置版",    Content = "恐怖-ฅrake重置版ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 2413927524    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="rake",  ["Content"] = "1",  Callback = function()  loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/rake1"))()  end})
xgo:Button({Title="rake",  ["Content"] = "2",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Unknownlodfc/Zephyr/refs/heads/main/Zephyr%20%7C%20The%20Rake%20Remastered"))() end})
local xgo = HorrorTab:Section({Title = "x-ฅ屠宰场[恐怖]ฅ",    Content = "恐怖-ฅ屠宰场ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 11928087342    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="xgo制作", ["Content"] = "",  Callback = function()        loadstring(game:HttpGet(("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E5%B1%A0%E5%AE%B0%E5%9C%BA%5B%E6%81%90%E6%80%96%5D.lua")))() end})
local xgo = HorrorTab:Section({Title = "x-ฅ保姆[恐怖]ฅ",    Content = "恐怖-ฅ保姆ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 7169897329    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="xgo制作", ["Content"] = "",  Callback = function()       loadstring(game:HttpGet(("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E4%BF%9D%E5%A7%86%5B%E6%81%90%E6%80%96%5D.txt")))() end})
local xgo = HorrorTab:Section({Title = "x-ฅ弗雷德的厄运ฅ",    Content = "恐怖-ฅ弗雷德的厄运ฅ"})
xgo:Button({Title="xgo制作", ["Content"] = "",  Callback = function()        loadstring(game:HttpGet(("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20Five%20Nights%20At%20Freddy%20s%20Doom%E5%BC%97%E9%9B%B7%E5%BE%B7%E7%9A%84%E5%8E%84%E8%BF%90.txt")))() end})
local xgo = HorrorTab:Section({Title = "x-ฅ住宅大屠杀ฅ",    Content = "恐怖-ฅ住宅大屠杀ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 14437001043   local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="住宅大屠杀小go二改",   ["Content"] = "",  Callback = function()        loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E4%BD%8F%E5%AE%85%E5%A4%A7%E5%B1%A0%E6%9D%80"))() end})
local xgo = HorrorTab:Section({Title = "x-ฅ奶奶:多人游戏ฅ",    Content = "恐怖-ฅ恐怖奶奶ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 4480809144    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="xgo制作", ["Content"] = "",  Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E6%81%90%E6%80%96%E8%80%81%E5%A5%B6%E5%A5%B6%E5%A4%9A%E4%BA%BA%E6%B8%B8%E6%88%8F.lua"))()end})
local xgo = AudioTab:Section({Title = "x-ฅ音游ฅ",    Content = "ฅ待更新ฅ"})

local xgo = AsymmetriccompetitiveTab:Section({Title = "x-ฅ破坏者谜团ฅ2",    Content = "ฅ破坏者谜团ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 142823291    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local roles
local teleportEnabled = false
local espEnabled = false
local godModeEnabled = false
local function findCoinContainer()
for _, child in pairs(workspace:GetChildren()) do
local coinContainer = child:FindFirstChild("CoinContainer")
if coinContainer then
return coinContainer end  end return nil end
local function findNearestCoin(radius)
local coinContainer = findCoinContainer()
if not coinContainer then
print("没有找到唱歌") return nil end
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local nearestCoin = nil
local nearestDistance = radius
for _, coin in pairs(coinContainer:GetChildren()) do
local distance = (coin.Position - humanoidRootPart.Position).Magnitude
if distance < nearestDistance then
nearestCoin = coin
nearestDistance = distance end end return nearestCoin end
local function teleportToCoin(coin)
local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
local tweenInfo = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out) -- 将持续时间降低至0.1秒
local tween = TweenService:Create(humanoidRootPart, tweenInfo, {CFrame = coin.CFrame})
tween:Play() return tween end
local isTeleporting = false
local function teleportToNearbyOrRandomCoin()
if not teleportEnabled or isTeleporting then return end
local nearbyRadius = 50 -- 调整此值以更改“附近”距离
local nearbyCoin = findNearestCoin(nearbyRadius)
if nearbyCoin then
print("传送到附近的硬币")
isTeleporting = true
local tween = teleportToCoin(nearbyCoin)
tween.Completed:Connect(function()
isTeleporting = false
teleportToNearbyOrRandomCoin() -- 立即移动到下一个硬币
end) else    local coinContainer = findCoinContainer()
if not coinContainer then
print("没有找到唱歌")
return end
local coins = coinContainer:GetChildren()
if #coins == 0 then
print("没有发现硬币")
return end
local randomCoin = coins[math.random(1, #coins)]
print("传送到随机硬币")
isTeleporting = true
local tween = teleportToCoin(randomCoin)
tween.Completed:Connect(function()
isTeleporting = false
teleportToNearbyOrRandomCoin() -- 立即移动到下一个硬币
end) end end
local function onCharacterAdded(newCharacter)
character = newCharacter  end
player.CharacterAdded:Connect(onCharacterAdded)
RunService.Heartbeat:Connect(function()
    if teleportEnabled and character and character:FindFirstChild("HumanoidRootPart") then
teleportToNearbyOrRandomCoin()
end end)
function CreateHighlight() -- 为新参与者制作任何新的亮点
for i, v in pairs(Players:GetChildren()) do
if v ~= player and v.Character and not v.Character:FindFirstChild("Highlight") then
Instance.new("Highlight", v.Character)           
end  end end
function UpdateHighlights() -- 获取当前角色颜色（凌乱）
for _, v in pairs(Players:GetChildren()) do
if v ~= player and v.Character and v.Character:FindFirstChild("Highlight") then
local Highlight = v.Character:FindFirstChild("Highlight")
if v.Name == Sheriff and IsAlive(v) then
Highlight.FillColor = Color3.fromRGB(0, 0, 225)
elseif v.Name == Murder and IsAlive(v) then
Highlight.FillColor = Color3.fromRGB(225, 0, 0)
elseif v.Name == Hero and IsAlive(v) and not IsAlive(game.Players[Sheriff]) then
Highlight.FillColor = Color3.fromRGB(255, 250, 0)
else Highlight.FillColor = Color3.fromRGB(0, 225, 0)
 end end end end    
function IsAlive(Player) -- 简单的功能
for i, v in pairs(roles) do
if Player.Name == i then
if not v.Killed and not v.Dead then
return true else return false
end end end end    
RunService.RenderStepped:connect(function()
if espEnabled then
roles = ReplicatedStorage:FindFirstChild("GetPlayerData", true):InvokeServer()
for i, v in pairs(roles) do
if v.Role == "Murderer" then
Murder = i
elseif v.Role == 'Sheriff' then
Sheriff = i
elseif v.Role == 'Hero' then
Hero = i
end  end
CreateHighlight()
UpdateHighlights()
end  end)
local accessories = {}
function GodMode()
if player.Character then
if player.Character:FindFirstChild("Humanoid") then
for _, accessory in pairs(player.Character.Humanoid:GetAccessories()) do
table.insert(accessories, accessory:Clone())
end
player.Character.Humanoid.Name = "deku"
end
local v = player.Character["deku"]:Clone()
v.Parent = player.Character
v.Name = "Humanoid"
wait(0.1)
player.Character["deku"]:Destroy()
workspace.CurrentCamera.CameraSubject = player.Character.Humanoid
for _, accessory in pairs(accessories) do
player.Character.Humanoid:AddAccessory(accessory)end
player.Character.Animate.Disabled = true
wait(0.1)
player.Character.Animate.Disabled = false
end  end
xgo:Toggle({["Title"]="自动糖果",["Content"] = "",["Default"] = false,["Callback"] = function(value)teleportEnabled = value end})
xgo:Toggle({["Title"]="玩家ESP",["Content"] = "",["Default"] = false,["Callback"] = function(value)espEnabled = value end})
xgo:Toggle({["Title"]="上帝模式[结束后重置]",	["Content"] = "",["Default"] = false,	["Callback"] = function (value)           godModeEnabled = value        if godModeEnabled then          GodMode()        end   end})
xgo:Button({Title="破坏者谜团", ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E7%A0%B4%E5%9D%8F%E8%80%85%E8%B0%9C%E5%9B%A22.lua"))() end})
xgo:Button({Title="Xhub", ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/Au0yX/Community/main/XhubMM2"))() end})
local xgo = AsymmetriccompetitiveTab:Section({Title = "x-ฅ吃香蕉ฅ",    Content = "ฅ吃香蕉ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 4448566543    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="吃香蕉", ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/ProjectpopCat/ywxoscripts/main/B4n4n43t2.lua"))() end})
xgo:Button({Title="吃香蕉菜单版", ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://gist.githubusercontent.com/NovaVanity/131e258977e50e1ec0184c72818b8bfd/raw"))() end})
local xgo = TowerDefenseTab:Section({Title = "x-ฅ塔防ฅ",    Content = "ฅ待更新ฅ"})

local xgo = DrivingTab:Section({Title = "x-ฅ出租车司机ฅ",    Content = "ฅ出租车司机ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 7305309231    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="xgo制作", ["Content"] = "",  Callback = function()    loadstring(game:HttpGet(("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E5%87%BA%E7%A7%9F%E8%BD%A6%E5%8F%B8%E6%9C%BATaxi.lua")))() end})
xgo:Button({Title="菜单版", ["Content"] = "",  Callback = function()    loadstring(game:HttpGet(("https://raw.githubusercontent.com/loadstringguy/taxi-boss/refs/heads/main/script.lua")))() end})
local xgo = DrivingTab:Section({Title = "x-ฅVehicle Legendsฅ",    Content = "ฅVehicle Legendsฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 4566572536    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="xgo制作",  ["Content"] = "",  Callback = function()        loadstring(game:HttpGet(("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgoVehicle%20Legends%F0%9F%9A%93CARS.lua")))() end})
local xgo = DrivingTab:Section({Title = "x-ฅ河北唐县ฅ",Content = "ฅ河北唐县ฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",  Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 4618049391    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
local virtualUser = game:GetService('VirtualUser')
virtualUser:CaptureController()
function teleportTo(CFrame) 
	game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame
end
_G.autoFarm = false
function autoFarm()
	while _G.autoFarm do
		fireclickdetector(game:GetService("Workspace").DeliverySys.Misc["Package Pile"].ClickDetector)
		task.wait(1.8)
		for _,point in pairs(game:GetService("Workspace").DeliverySys.DeliveryPoints:GetChildren()) do
			if point.Locate.Locate.Enabled then
				teleportTo(point.CFrame)
			end
		end
		task.wait(0)
	end
end
xgo:Toggle({["Title"]="刷钱",["Content"] = "",["Default"] = false,["Callback"] = function(value)
_G.autoFarm = value
	if value then
		autoFarm()
	end
end})
xgo:Button({Title="小go1.0",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%B2%B3%E5%8C%97%E5%94%90%E5%8E%BF%20.lua"))() end})
xgo:Button({Title="小go（仅供测试）",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E6%B2%B3%E5%8C%97%E5%94%90%E5%8E%BF"))() end})
xgo:Button({Title="卡车刷钱",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/ok/T%20ang%20County"))() end})
function switchTeam(teamName)
    local args = {
        [1] = teamName
    }
    game:GetService("ReplicatedStorage").TeamSwitch:FireServer(unpack(args))
end
-- 创建按钮并调用函数
function xgoButton(title, teamName)
    xgo:Button({
        Title = title,
        Content = "",
        Callback = function()
            switchTeam(teamName)
        end
    })
end
-- 调用函数创建按钮
xgoButton("变成警察(需要先购买警察通行证)", "Police")
xgoButton("变成平民", "Civilian")
xgoButton("变成混合冰淇淋", "Mixue Ice Cream")
xgoButton("变成咖啡师", "Teawen Barista")
xgoButton("变成送货司机", "Delivery Driver")
xgoButton("变成出租车司机", "Taxi Driver")
xgoButton("变成线上计程车", "Ole Online Taxi Sharing")
xgoButton("变成卡车司机", "Trucker")
xgoButton("变成超市收银员", "Grocery Cashier")
xgoButton("变成罪犯", "Criminal")
xgoButton("变成学生", "Student")
xgoButton("变成老师", "Teacher")
xgoButton("变成商店员工", "Store Worker")
xgoButton("变成变pao商店工人", "Pao Store Worker")
xgoButton("变成救援人员", "Paramedic")
xgoButton("变成巴车司机", "Bus Driver")
local xgo = ParkourTab:Section({Title = "x-ฅ跑酷ฅ",Content = "ฅ待更新ฅ"})

local xgo = RNGTab:Section({Title = "x-ฅ索尔的RNGฅ",Content = "RNG-ฅ索尔的RNGฅ"})
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 15532962292    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="索尔的RNG",  ["Content"] = "1",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Looser3itx/Hmmmmmmmmmmmmmmmmmmmmmmmmmmmm/main/loader.lua"))()   end})
xgo:Button({Title="索尔的RNG",  ["Content"] = "2",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/LOLking123456/upd/main/rng"))()end})
local xgo = ScriptTab:Section({Title = "x-ฅxgo脚本ฅ",Content = "脚本-ฅxgoฅ"})
function xgoButton(title, content, url)
    xgo:Button({Title=title, Content=content, Callback = function() loadstring(game:HttpGet(url))() end})
end
xgoButton("重新刷新脚本", "", "https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/2.1814.lua")
xgoButton("xgo主页", "1", "https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%96%B0%E7%89%88%E6%9C%AC.lua")
xgoButton("xgo主页", "2", "https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo")
xgoButton("小go主页", "3", "https://raw.githubusercontent.com/lIlIlIlIlI24568/14362llll364XXGOLLLk22222/refs/heads/main/goto")
xgoButton("小gov1", "", "https://raw.githubusercontent.com/lIlIlIlIlI24568/143628IIIIlllllliilililIIlll.YXZX.LUA/refs/heads/main/V1")
xgoButton("小goV2","","https://raw.githubusercontent.com/lIlIlIlIlI24568/143628IIIIlllllliilililIIlll.YXZX.LUA/refs/heads/main/V2.lua")
xgoButton("https://www-uxvip.notion.site/Avezteam-net\n-128812d45628807b9f52d77ce6644053","","https://pastefy.app/Nt2LaL5b/raw")
local xgo = ScriptTab:Section({Title = "x-ฅ卡密测试ฅ",Content = "测试-ฅxgoฅ"})
_G.Key = "ABC" -- 修改为你自己的密钥！
_G.KeyInput = "字符串"
function MainScript()
     loadstring(game:HttpGet'https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo')'xgo'
end
function LinkCopiedNotification()
     game:GetService("StarterGui"):SetCore("SendNotification", {Title = "链接已复制！";   Text = "链接已复制到你的剪贴板！";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
end
function CorrectKeyNotification()
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "正确密钥！";   Text = "你输入了正确的密钥！";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
end
function IncorrectKeyNotification()
    game:GetService("StarterGui"):SetCore("SendNotification", {Title = "错误密钥！";   Text = "你输入了错误的密钥！";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
end
xgo:Button({
    Title = "获取密钥",
    Content = "复制密钥链接",
    Callback = function()
        setclipboard("测试未做,只是研究一下密钥:ABC") -- 获取你密钥的链接
        LinkCopiedNotification()
    end    
})
xgo:TextInput({
    Title = "输入密钥",
    Content = "",
    ["Place Holder Text"] = "请输入你的密钥",
    ["Clear Text On Focus"] = false,
    Callback = function(Value)
        _G.KeyInput = Value
    end
})
xgo:Button({
    Title = "检查密钥",
    Content = "验证输入的密钥",
    Callback = function()
        if _G.KeyInput == _G.Key then
            MainScript()
            CorrectKeyNotification()
        else
            IncorrectKeyNotification()
        end
    end    
})
xgo:Seperator("-- 获取游戏服务中的ProximityPromptService，这个服务用于处理近距离提示")
xgo:Seperator("local ProximityPromptService = game:GetService(\"ProximityPromptService\")")
xgo:Seperator("-- 设置一个标志，表示是否启用即时交互功能")
xgo:Seperator("local instantInteractEnabled = true")
xgo:Seperator("-- 监听ProximityPromptService中的PromptButtonHoldBegan事件")
xgo:Seperator("-- 当玩家按下提示按钮时，该事件会被触发")
xgo:Seperator("ProximityPromptService.PromptButtonHoldBegan:Connect(function(prompt, player)")
xgo:Seperator("    -- 如果即时交互功能被启用")
xgo:Seperator("    if instantInteractEnabled then")
xgo:Seperator("        -- 调用fireproximityprompt函数，传入提示对象prompt")
xgo:Seperator("        -- 这个函数可能是自定义的，用于处理玩家与提示对象的交互")
xgo:Seperator("        fireproximityprompt(prompt)")
xgo:Seperator("    end")
xgo:Seperator("end)")
local xgo = XTab:Section({Title = "x-ฅ游戏ฅ",Content = "脚本脚本-ฅxgoฅ"})
xgo:Button({Title="小鸟游戏",["Content"] = "",Callback = function()local gui = Instance.new("ScreenGui")
gui.Name = "FlappyBirdGame"
gui.IgnoreGuiInset = true
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
local gameFrame = Instance.new("Frame")
gameFrame.Size = UDim2.new(1, 0, 1, 0)
gameFrame.BackgroundColor3 = Color3.fromRGB(77, 194, 203)
gameFrame.Parent = gui
local bird = Instance.new("ImageLabel")
bird.Size = UDim2.new(0, 41, 0, 30)
bird.Position = UDim2.new(0.2, -16, 0.9, -15)
bird.BackgroundTransparency = 1
bird.Parent = gameFrame
local birdFrames = {
    "rbxassetid://96051635244958",
    "rbxassetid://104480021254835",
    "rbxassetid://76745734370381"
}
local currentFrame = 1
local function animateBird()
    while true do
        bird.Image = birdFrames[currentFrame]
        currentFrame = currentFrame % #birdFrames + 1
        wait(0.1) end end
spawn(animateBird)
local jumpButton = Instance.new("ImageButton")
jumpButton.Size = UDim2.new(0, 83, 0, 83)
jumpButton.Position = UDim2.new(0.5, -50, 0.7, -50)
jumpButton.Image = "rbxassetid://119291898564586"
jumpButton.BackgroundTransparency = 1
jumpButton.ZIndex = 2
jumpButton.Parent = gameFrame
local isGameOver = false
local birdVelocity = 0
local function jump()
    if not isGameOver then
        birdVelocity = -15
        jumpButton.Image = "rbxassetid://91140047005345" wait(0.05)
        jumpButton.Image = "rbxassetid://119291898564586" end  end
jumpButton.MouseButton1Click:Connect(jump)
local exitButton = Instance.new("TextButton")
local corner = Instance.new("UICorner")
exitButton.Size = UDim2.new(0, 50, 0, 45)
exitButton.Position = UDim2.new(1, -70, 0, 10)
exitButton.Text = "关闭"
exitButton.TextSize = 24
exitButton.Font = "FredokaOne"
exitButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
exitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
exitButton.ZIndex = 3
exitButton.Parent = gameFrame
corner.CornerRadius = UDim.new(0, 40)
corner.Parent = exitButton
local function createPipe(height, isTop)
    local pipe = Instance.new("ImageLabel")
    pipe.Size = UDim2.new(0, 50, 0, height)
    pipe.Image = "rbxassetid://93518102403011"
    pipe.BackgroundTransparency = 1
    pipe.BorderSizePixel = 0
    if isTop then
        pipe.Position = UDim2.new(1, 0, 0, 0)
        pipe.Rotation = 180
else    pipe.Position = UDim2.new(1, 0, 1, -height) end
    pipe.Parent = gameFrame
    return pipe  end
local function checkCollision()
    for _, child in ipairs(gameFrame:GetChildren()) do
        if child:IsA("ImageLabel") and child.Image == "rbxassetid://93518102403011" then
            local birdPos = bird.AbsolutePosition
            local birdSize = bird.AbsoluteSize
            local pipePos = child.AbsolutePosition
            local pipeSize = child.AbsoluteSize
            if birdPos.X < pipePos.X + pipeSize.X and birdPos.X + birdSize.X > pipePos.X and
               birdPos.Y < pipePos.Y + pipeSize.Y and birdPos.Y + birdSize.Y > pipePos.Y then
                return true end end end return false end
local function gameLoop()
    while true do
        if isGameOver then
            bird.Position = UDim2.new(0.2, -15, 0.5, -15)
            birdVelocity = 0
            jumpButton.Visible = true
            for _, child in ipairs(gameFrame:GetChildren()) do
                if child:IsA("ImageLabel") and child.Image == "rbxassetid://93518102403011" then
                    child:Destroy()
                end end
            isGameOver = false
else        birdVelocity = birdVelocity + 2
            bird.Position = bird.Position + UDim2.new(0, 0, 0, birdVelocity)
            if checkCollision() or bird.Position.Y.Offset > gameFrame.AbsoluteSize.Y - 50 then
                isGameOver = true
                jumpButton.Visible = false end
            if math.random(1, 20) == 1 then
                local pipeHeight = math.random(100, gameFrame.AbsoluteSize.Y - 200)
                createPipe(pipeHeight, true)
                createPipe(gameFrame.AbsoluteSize.Y - pipeHeight - 150, false) end
            for _, child in ipairs(gameFrame:GetChildren()) do
                if child:IsA("ImageLabel") and child.Image == "rbxassetid://93518102403011" then
                    child.Position = child.Position - UDim2.new(0.02, 0, 0, 0)
                    if child.Position.X.Scale < -0.1 then
                        child:Destroy()
                    end end end end wait(0.05)end end
spawn(gameLoop)exitButton.MouseButton1Click:Connect(function() gui:Destroy()end)end})
xgo:Button({Title="井棋游戏",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/ECCSco/ECCS-V3/refs/heads/main/Tic%20Tac%20Toe%20V2"))()end})
xgo:Button({Title="1v1看谁点的快",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/ECCSco/ECCS-V3/refs/heads/main/1V1%20Clicker"))()end})
local xgo = LeisureTab:Section({Title = "x-小猫游戏",Content = "休闲-小猫游戏"})
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local currentPosition = character.PrimaryPart.Position
xgo:Button({Title="传送到游戏",["Content"] = "点击传送",Callback = function() local Players = game:GetService("Players")local TeleportService = game:GetService("TeleportService")local placeId = 13482468151    local player = Players.LocalPlayer     local function teleportPlayer()    TeleportService:Teleport(placeId, player)end     teleportPlayer()end})
xgo:Button({Title="xgo制作",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E5%B0%8F%E7%8C%AB%E6%B8%B8%E6%88%8F.lua"))()end})
xgo:Button({Title="小猫",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Biem6ondo/Kittengame/refs/heads/main/KittenGame"))()end})
xgo:Button({Title="系统聊天FE",["Content"] = "",Callback = function()local ScreenGui = Instance.new("ScreenGui") local TextBox = Instance.new("TextBox")    ScreenGui.Parent = game.CoreGui    TextBox.Parent = ScreenGui    TextBox.Size = UDim2.new(0, 250, 0, 50)    TextBox.Position = UDim2.new(0, 10, 0, 50)    TextBox.Text = ""    TextBox.ClearTextOnFocus = false    TextBox.BackgroundTransparency = 0.6    TextBox.FocusLost:Connect(function(enterPressed)        if enterPressed then            local args = { [1] = TextBox.Text } game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ChatAnnouncement_Client"):FireServer(unpack(args)) TextBox.Text = ""  end end)end})
local customName1 = ""
local customName2 = ""
xgo:TextInput({["Title"]="名字",["Content"] = "输入你的名字......",["Place Holder Text"] = "名称",  ["Clear Text On Focus"] = false,["Callback"] = function(Value)customName1 = Value end})
xgo:TextInput({["Title"]="描述",["Content"] = "描述自己......",["Place Holder Text"] = "描述",  ["Clear Text On Focus"] = false,["Callback"] = function(Value)customName2 = Value  end})
xgo:Button({Title="申请名称",["Content"] = "",Callback = function()local args = { customName1, customName2 } game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ChangeName"):FireServer(unpack(args))end})
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local targetPosition = Vector3.new(-235, 289, -308)
local isTeleportEnabled = false
local teleportCoroutine
local function teleport()character:SetPrimaryPartCFrame(CFrame.new(targetPosition))end
local function teleportLoop()while isTeleportEnabled do teleport()wait(30)end end
local function holdKey()
local VirtualInputManager = game:GetService("VirtualInputManager")
local keyToHold = Enum.KeyCode.E while isTeleportEnabled do VirtualInputManager:SendKeyEvent(true, keyToHold, false, nil) wait()end end
xgo:Toggle({["Title"]= "塔场[测试版]\n等待30sec",["Content"] = "",["Default"] = false,["Callback"] = function(Value) 
isTeleportEnabled = Value
if isTeleportEnabled then
teleportCoroutine = coroutine.create(teleportLoop)
coroutine.resume(teleportCoroutine)
holdKey() else if teleportCoroutine then
isTeleportEnabled = false
end end end})
xgo:Button({Title="酒店大堂音频",["Content"] = "",Callback = function()local args = {[1] = "General"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("UpdateMusicRegion"):FireServer(unpack(args))end})
xgo:Button({Title="派对音频",["Content"] = "",Callback = function()local args = {[1] = "PartyRoom"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("UpdateMusicRegion"):FireServer(unpack(args))end})
xgo:Button({Title="幕后音频",["Content"] = "",Callback = function()local args = {[1] = "Level0"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("UpdateMusicRegion"):FireServer(unpack(args))end})
xgo:Button({Title="鲨鱼猫",["Content"] = "",Callback = function()local args = {[1] = "SharkCat",[2] = "Chunky"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MorphEvents"):WaitForChild("Morph"):FireServer(unpack(args))end})
xgo:Button({Title="故障猫",["Content"] = "",Callback = function()local args = {[1] = "Glitch",[2] = "Regular"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MorphEvents"):WaitForChild("Morph"):FireServer(unpack(args))end})
xgo:Button({Title="棕猫",["Content"] = "",Callback = function()local args = {[1] = "Caracal",[2] = "Regular"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MorphEvents"):WaitForChild("Morph"):FireServer(unpack(args))end})
xgo:Button({Title="宝贝加拉拉卡",["Content"] = "",Callback = function()local args = {[1] = "Caracal_Small",[2] = "Baby"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MorphEvents"):WaitForChild("Morph"):FireServer(unpack(args))end})
xgo:Button({Title="婴儿故障",["Content"] = "",Callback = function()local args = {[1] = "Glitch_Small",[2] = "Baby"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MorphEvents"):WaitForChild("Morph"):FireServer(unpack(args))end})
xgo:Button({Title="小鲨鱼猫",["Content"] = "",Callback = function()local args = {[1] = "SharkCat_Small",[2] = "Baby"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MorphEvents"):WaitForChild("Morph"):FireServer(unpack(args))end})
xgo:Button({Title="停止动画",["Content"] = "",Callback = function()local Players = game:GetService("Players")local player = Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait()local humanoid = character:WaitForChild("Humanoid")for _, animationTrack in pairs(humanoid:GetPlayingAnimationTracks()) do animationTrack:Stop(0) end end})
local function playAnimation(animationId)local player = game.Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait()local humanoid = character:WaitForChild("Humanoid")local animation = Instance.new("Animation")animation.AnimationId = animationId local animationTrack = humanoid:LoadAnimation(animation)animationTrack:Play()end
xgo:Button({Title="跳舞?",["Content"] = "",Callback = function()playAnimation("rbxassetid://13781860130")end})
xgo:Button({Title="步行路程",["Content"] = "",Callback = function()playAnimation("rbxassetid://13523069123")end})
xgo:Button({Title="聚集你的耳朵.",["Content"] = "",Callback = function()playAnimation("rbxassetid://18122889704")end})
xgo:Button({Title="空中翻转",["Content"] = "",Callback = function()playAnimation("rbxassetid://13988137029")end})
xgo:Button({Title="攀登",["Content"] = "",Callback = function()playAnimation("rbxassetid://13523540004")end})
xgo:Button({Title="下降",["Content"] = "",Callback = function()playAnimation("rbxassetid://14721751956")end})
xgo:Button({Title="空闲(没有lol)",["Content"] = "",Callback = function()playAnimation("rbxassetid://13491665689")end})
xgo:Button({Title="跳跃",["Content"] = "",Callback = function()playAnimation("rbxassetid://14722433759")end})
xgo:Button({Title="游泳",["Content"] = "",Callback = function()playAnimation("rbxassetid://13530452574")end})
xgo:Button({Title="那是什么样的坐着??",["Content"] = "",Callback = function()playAnimation("rbxassetid://13548095490")end})
xgo:Button({Title="游泳闲置",["Content"] = "",Callback = function()playAnimation("rbxassetid://13530393903")end})
xgo:Button({Title="跳舞2",["Content"] = "",Callback = function()playAnimation("rbxassetid://13743929837")end})
xgo:Button({Title="跳舞1",["Content"] = "",Callback = function()playAnimation("rbxassetid://13743928032")end})
xgo:Button({Title="挖",["Content"] = "",Callback = function()playAnimation("rbxassetid://14473099389")end})
xgo:Button({Title="吃",["Content"] = "",Callback = function()playAnimation("rbxassetid://13977803893")end})
xgo:Button({Title="飞",["Content"] = "",Callback = function()playAnimation("rbxassetid://15476393873")end})
xgo:Button({Title="嘶嘶声",["Content"] = "",Callback = function()playAnimation("rbxassetid://13735385119")end})
xgo:Button({Title="睡眠2",["Content"] = "",Callback = function()playAnimation("rbxassetid://14568990204")end})
xgo:Button({Title="站",["Content"] = "",Callback = function()playAnimation("rbxassetid://13752541416")end})
xgo:Button({Title="舞蹈5",["Content"] = "",Callback = function()playAnimation("rbxassetid://17441473388")end})
xgo:Button({Title="面包",["Content"] = "",Callback = function()playAnimation("rbxassetid://14713006844")end})
xgo:Button({Title="面包旋转",["Content"] = "",Callback = function()playAnimation("rbxassetid://15948507502")end})
xgo:Button({Title="喵",["Content"] = "",Callback = function()playAnimation("rbxassetid://13539585541")end})
local part
xgo:Toggle({["Title"]= "在水上行走",["Content"] = "",["Default"] = false,["Callback"] = function(state) 
if state then
if not part then
part = Instance.new("Part")
part.Position = Vector3.new(0, 7.75, 0)
part.Size = Vector3.new(2048, 0.1, 2048)
part.Anchored = true
part.Transparency = 1
part.Parent = game.Workspace
end else if part then
part:Destroy()
part = nil
end end end})
xgo:Button({Title="奇怪的跳跃动画(减少性能!)\n*关闭,您需要重新加入",["Content"] = "",Callback = function()while wait(0.3) do
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://13988137029"
local animationTrack = humanoid:LoadAnimation(animation)
local function onJump()
if humanoid:GetState() == Enum.HumanoidStateType.Jumping then
animationTrack:Play()
end end
humanoid.StateChanged:Connect(function(_, newState)
if newState == Enum.HumanoidStateType.Jumping then
onJump()
end end)end end})
xgo:Button({Title="清除聊天",["Content"] = "",  Callback = function()
local newline_count = 20001
local newline_text = ""
for i = 1, newline_count do
newline_text = newline_text .. "\n"
end
local args = {[1] = newline_text}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ChatAnnouncement_Client"):FireServer(unpack(args))end})
xgo:Button({Title="滞后(弱:157/kBs)",["Content"] = "",Callback = function()
local newline_count = 35000
local newline_text = ""
for i = 1, newline_count do newline_text = newline_text .. "ฅ" end
local args = {[1] = newline_text}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ChatAnnouncement_Client"):FireServer(unpack(args))end})
xgo:Button({Title="邪恶的猫说(beta)",["Content"] = "",Callback = function()local args = {[1] = string.rep("\n", 5000) .. "<font color='rgb(255, 0, 0)'><b>EVIL CAT: I see you.  </b></font>"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("ChatAnnouncement_Client"):FireServer(unpack(args))end})
xgo:Button({Title="停止", ["Content"] = "停止骑海豚",Callback = function()game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SurfEvents"):WaitForChild("ReachedLand"):FireServer()end})
xgo:Button({Title="骑正常海豚", ["Content"] = "",Callback = function()local args = {    [1] = CFrame.new(-88.55406188964844, 20.067283630371094, 110.55277252197266, -0.20561473071575165, -9.94988536007213e-09, 0.9786331653594971, 6.436981436763745e-08, 1, 2.369147900083135e-08, -0.9786330461502075, 6.7865741470996e-08, -0.20561474561691284),    [2] = "Dolphin"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SurfEvents"):WaitForChild("PlayerEnteredWater"):FireServer(unpack(args))end})
xgo:Button({Title="骑金海豚", ["Content"] = "",Callback = function()local args = {    [1] = CFrame.new(-88.55406188964844, 20.067283630371094, 110.55277252197266, -0.20561473071575165, -9.94988536007213e-09, 0.9786331653594971, 6.436981436763745e-08, 1, 2.369147900083135e-08, -0.9786330461502075, 6.7865741470996e-08, -0.20561474561691284),    [2] = "Dolphin_Gold"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SurfEvents"):WaitForChild("PlayerEnteredWater"):FireServer(unpack(args))end})
xgo:Button({Title="骑粉红色海豚", ["Content"] = "",Callback = function()local args = {    [1] = CFrame.new(-88.55406188964844, 20.067283630371094, 110.55277252197266, -0.20561473071575165, -9.94988536007213e-09, 0.9786331653594971, 6.436981436763745e-08, 1, 2.369147900083135e-08, -0.9786330461502075, 6.7865741470996e-08, -0.20561474561691284),    [2] = "Dolphin_Pink"}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("SurfEvents"):WaitForChild("PlayerEnteredWater"):FireServer(unpack(args))end})
xgo:Button({Title="传送出生地", ["Content"] = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-14, 17, 78)end})
xgo:Button({Title="传送岛（度假）", ["Content"] = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-183, 12, 373)end})
xgo:Button({Title="obby（塔）", ["Content"] = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-234, 17, -256)end})
xgo:Button({Title="红色/光游戏", ["Content"] = "",Callback = function()game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84, 12, -328) end})
local isPlaying = false
xgo:Toggle({["Title"]= "声音[喵]",["Content"] = "",["Default"] = false,["Callback"] = function (bool) isPlaying = bool    if isPlaying then while isPlaying do local args = {[1] = game:GetService("ReplicatedStorage"):WaitForChild("Animations"):WaitForChild("Emotes"):WaitForChild("Meow"):WaitForChild("Animation_Cat"):WaitForChild("meow")}game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("PlaySound"):FireServer(unpack(args))wait(0) end else        local stopArgs = {[1] = game:GetService("ReplicatedStorage"):WaitForChild("Animations"):WaitForChild("Emotes"):WaitForChild("Meow"):WaitForChild("Animation_Cat"):WaitForChild("meow")}        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("StopSound"):FireServer(unpack(stopArgs))    end    end})




