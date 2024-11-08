local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042063815"  sound.Volume = 0.5  sound.Pitch = 1  sound.Parent = game.Workspace  sound:Play()
local xxxgoui = loadstring(game:HttpGet("https://github.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/xxxxgo/blob/main/xgohubUI?raw=true"))()
local Notify = xxxgoui:Notify({Title="xgo Hub",["Description"] = "- goto_O R's 2.1581版",["Color"] = Color3.fromRGB(255, 0, 255),Content = "ฅ欢迎宝宝回家ฅ xgo Hub",["Time"] = 1,["Delay"] = 10})
local xgui = xxxgoui:Start({["Name"]="xgo Hub",["Description"] = "- goto_O R's 2.1581版",["Info Color"] = Color3.fromRGB(1, 1, 1),["Logo Info"] = "rbxassetid://120611289434746",["Logo Player"] = "rbxassetid://86331251852533", ["Name Info"] = "xgo Hub 欢迎宝宝回家",["Name Player"] = "xgo",["Info Description"] = "作者:xxxxgo 群聊:259461151",["Tab Width"] = 135,["Color"] = Color3.fromRGB(255, 0, 255),["CloseCallBack"] = function()end})
local MainTab = xgui:MakeTab("x-ฅ信息ฅ")
local MusicTab = xgui:MakeTab("x-ฅ音乐ฅ")
local AdministratorTab = xgui:MakeTab("x-ฅ管理员ฅ")
local PicturequalityTab = xgui:MakeTab("x-ฅ图像画质ฅ")
local UniversalTab = xgui:MakeTab("x-ฅ通用ฅ")
local PlayerTab = xgui:MakeTab("x-ฅ玩家ฅ")
local BlackholeTab = xgui:MakeTab("x-ฅ黑洞ฅ")
local TalkTab = xgui:MakeTab("x-ฅ聊天中枢ฅ")
local SelfishTab = xgui:MakeTab("x-ฅ自瞄透视ฅ")
local PropsTab = xgui:MakeTab("x-ฅ道具FEฅ")
local LeisureTab = xgui:MakeTab("x-游戏-ฅ休闲模拟器ฅ")
local SimulationbusinessTab = xgui:MakeTab("x-游戏-ฅ模拟经营ฅ")
local ActionadventureTab = xgui:MakeTab("x-游戏-ฅ动作冒险ฅ")
local ShotTab = xgui:MakeTab("x-游戏-ฅ枪战ฅ")
local StruggleTab = xgui:MakeTab("x-游戏-ฅ战争ฅ")
local HorrorTab = xgui:MakeTab("x-游戏-ฅ恐怖ฅ")
local AudioTab = xgui:MakeTab("x-游戏-ฅ音游ฅ")
local AsymmetriccompetitiveTab = xgui:MakeTab("x-游戏-ฅ非对称竞技ฅ")
local TowerDefenseTab = xgui:MakeTab("x-游戏-ฅ塔防ฅ")
local DrivingTab = xgui:MakeTab("x-游戏-ฅ载具驾驶ฅ")
local ParkourTab = xgui:MakeTab("x-游戏-ฅ跑酷obbyฅ")
local RNGTab = xgui:MakeTab("x-游戏-ฅ创意玩法ฅ（RNG）")
local ScriptTab = xgui:MakeTab("x-ฅ其他脚本ฅ")
local xgo = MainTab:Section({Title = "X-ฅ玩家信息ฅ",Content = "ฅ窃取你的所有信息ฅ"})
xgo:Seperator("ฅ注入器ฅ:            "..identifyexecutor())
xgo:Seperator("ฅ用户名ฅ:            "..game.Players.LocalPlayer.Character.Name)
xgo:Seperator("ฅ当前名称ฅ:          "..game.Players.LocalPlayer.DisplayName)
xgo:Seperator("ฅ用户帐号ฅ:          "..game.Players.LocalPlayer.UserId)
xgo:Seperator("ฅ账号年龄ฅ:          "..game.Players.LocalPlayer.AccountAge)
xgo:Seperator("ฅ服务器名称ฅ:        "..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
xgo:Seperator("ฅ服务器IDฅ:          "..game.GameId)
xgo:Seperator("ฅ服务器地址lDฅ:      "..game.PlaceId)
xgo:Seperator("ฅ人物血量ฅ:          "..game.Players.LocalPlayer.Character.Humanoid.Health)
xgo:Seperator("ฅ人物跳跃ฅ:          "..game.Players.LocalPlayer.Character.Humanoid.JumpPower)
xgo:Seperator("ฅ人物速度ฅ:          "..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
xgo:Seperator("ฅ人物重力ฅ:          "..game.Workspace.Gravity)
xgo:Seperator("ฅ人物高度ฅ:          "..game.Players.LocalPlayer.Character.Humanoid.HipHeight)
xgo:Seperator("ฅ当前服务器最高人数ฅ"..game.Players.MaxPlayers)
xgo:Seperator("ฅ作者:xxxxgoฅ")
xgo:Seperator("ฅ脚本全是xgo一个人优化更新ฅ")
xgo:Seperator("ฅJobIDฅ:"..game.JobId)
xgo:Seperator("ฅ随机更新或永久不更新ฅ")
xgo:Seperator("ฅ获取客户端IDฅ:"..game:GetService("RbxAnalyticsService"):GetClientId())
xgo:Seperator("==========ฅ《Q群:259461151》ฅ===========")
xgo:Button({Title = "ฅ玩家名牌查看ฅ",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/PYjMaUj5"))()end})
xgo:Button({Title = "ฅ信息查看ฅ",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/mqrZCSm9"))()end})
local xgo = MainTab:Section({Title = "X-ฅ作者信息ฅ",Content = "xxxxgo信息和安全意识"})
xgo:Seperator("xxxgo 和安全三函数")
xgo:Button({Title = "复制作者QQ",Content = "QQ:3795512080",Callback = function()setclipboard("3795512080") local Notify = xxxgoui:Notify({Title = "xgo Hub",["Description"] = "- goto_O R's 2.1581版",["Color"] = Color3.fromRGB(255, 0, 255),Content = "欢迎 消息回复慢或者不回",["Time"] = 1,["Delay"] = 10})end})
xgo:Button({Title = "复制QQ群",	Content = "Q群:259461151",Callback = function()setclipboard("259461151") local Notify = xxxgoui:Notify({Title = "xgo Hub",["Description"] = "- goto_O R's 2.1581版",["Color"] = Color3.fromRGB(255, 0, 255),Content = "欢迎宝宝回家 随机回复，比私聊快",["Time"] = 1,["Delay"] = 10})end})
xgo:Seperator(             "ฅ〈三大安全函数〉ฅ")
xgo:Seperator("如果要测试脚本，请开启一下三下避免直接被封禁（主要是由某人制作恶意封禁脚本）建议全开")
xgo:Button({Title = "安全一",Content = "（生产）分支，禁止从其他脚本的更改值. 应该用于保护",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()end})
local Seperator = xgo:Seperator("仅适用于Codex用户!由于其发行与空闲连接（Codex）分支具有兼容性更新这相当于生产分支 ")
xgo:Button({Title = "安全二",Content = "但没有基于连接的所有连接 并且只能由Codex用户使用,直到他们的问题得到解决",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()end})
xgo:Button({Title = "安全三",Content = "（开发）分支，允许更改其他潜在恶意脚本的值 主要用于调试和测试",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/Main"))()end})
local xgo = MusicTab:Section({Title = "x-ฅ音乐播放器ฅ",    Content = "ฅ小go未收集到你的音乐,你可以使用音乐播放器来播放ฅ"})
xgo:Button({Title = "音乐播放器  xgo版本",	Content ="音乐播放器输入自己的音乐代码播放音乐",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/cR1zvfH1"))()end})
xgo:Button({Title = "音乐播放器    如果有好听的可以投稿",	Content ="音乐播放器输入自己的音乐代码播放音乐",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()end})
xgo:Seperator("小go提示: 嗯，这次更新后面会加上音乐id 前边的话我就不加了，太麻烦了")
local xgo = MusicTab:Section({Title = "x-ฅroblox音乐ฅ",Content = "ฅ收集了70多种音乐ฅ"})
xgo:Button({Title="停止播放音乐（所有皆为xgo 一人收集）",Content = "停止所有开启的音乐",Callback = function() for i,v in pairs(workspace:GetDescendants())do if v:IsA("Sound") then v:Destroy()end	end end})
xgo:Button({Title="Pixel Terror & Aviella - Enigma  女版",Content ="音乐id:5410084645",Callback = function()local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410084645"    sound.Parent = game.Workspace    sound:Play()end})
xgo:Button({Title="Grant - Color  女版",Content ="音乐id:7023828725",Callback = function()local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7023828725"    sound.Parent = game.Workspace    sound:Play()end})
xgo:Button({Title="Til the Morning (a)女版",Content ="音乐id:1840041842",Callback = function()local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1840041842"    sound.Parent = game.Workspace    sound:Play()end})
xgo:Button({Title="I'm Gonna Get Up'RemixA  女版",Content ="音乐id:1847606454",	 	Callback = function()         local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1847606454"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Elypsis - I MissYou  女版",Content ="音乐id:7023741506",	 	Callback = function()         local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7023741506"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Direct & Park Avenue - I'll Go 挺好听的",Content ="音乐id:5410081298",	 	Callback = function()     local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410081298"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Rogue - Motion",Content ="音乐id:7028557220",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7028557220"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Fun Arcade",Content ="音乐id:1843599021",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1843599021"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Bad Computer",Content ="音乐id:5410082097",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410082097"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Love Is",Content ="音乐id:7029092469",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7029092469"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Carissa",Content ="音乐id:5410085602",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410085602"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Rockefeller Street",Content ="音乐id:16831104459",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://16831104459"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="desert star",Content ="音乐id:5410084938",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410084938"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="ily Pitched",Content ="音乐id:15957461869",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://15957461869"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="taco bot 3000",Content ="音乐id:9245552700",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9245552700"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="raining tacos",Content ="音乐id:142376088",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://142376088"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="dion shiawase",Content ="音乐id:5409360995",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5409360995"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="cute music",Content ="音乐id:1836519309",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1836519309"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="leaked audio",Content ="音乐id:9280071551",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9280071551"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="sharknado",Content ="音乐id:9280550653",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9280550653"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="walkonwater",Content ="音乐id:9248834984",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9248834984"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="no really - rust",Content ="音乐id:272018606",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://272018606"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="his cute voice",Content ="音乐id:528728818",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://528728818"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="tobu - reflection",Content ="音乐id:11864859928",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://11864859928"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="moonlight",Content ="音乐id:1961241743",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1961241743"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="velocity",Content ="音乐id:10104284161",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://10104284161"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="flute",Content ="音乐id:467913387",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://467913387"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Upbeat A",Content ="音乐id:9072359432",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9072359432"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Scared",Content ="音乐id:10104284779",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://10104284779"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="metropolis",Content ="音乐id:659727291",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://659727291"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="eg",Content ="音乐id:8996464109",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://8996464109"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="miracle",Content ="音乐id:1619501952",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1619501952"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="meow",Content ="音乐id:467932279",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://467932279"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="pink",Content ="音乐id:4681135952",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://4681135952"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="staeam",Content ="音乐id:4960289400",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://4960289400"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="paeree",Content ="音乐id:468621896",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://468621896"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="wayback",Content ="音乐id:467942273",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://467942273"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="lane",Content ="音乐id:8998281117",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://8998281117"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="nautilus",Content ="音乐id:9072367803",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9072367803"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Martin Graff - Balance",Content ="音乐id:7024183256",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7024183256"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="block",Content ="音乐id:467916328",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://467916328"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Colossal Assault",Content ="音乐id:2343544260",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://2343544260"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Breach",Content ="音乐id:545296451",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://545296451"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="1 Near Sound 2",Content ="音乐id:12306579170",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://12306579170"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="cyber heist",Content ="音乐id:9042159897",	 	Callback = function()    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042159897"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Rome in Silver & Beach Season - Skin 和上一首一样，都挺好听的",	Content ="音乐id:7028570258",	 	Callback = function()      local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7028570258"   sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Direct & Essenger - Labyrinth 男版",Content ="音乐id:7023690024",	 	Callback = function()      local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7023690024"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Solar Flares",Content ="音乐id:1836842889",	 	Callback = function()        local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837871067"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Night Vision",Content ="音乐id:1837849285",	 	Callback = function()        local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837849285"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="When U Coming Back NoVocals",Content ="音乐id:1837871067",	 	Callback = function()            local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1836842889"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="住宅区",Content ="音乐id:1845554017",	 	Callback = function()        local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1845554017"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="These Words Remix",Content ="音乐id:1839721437",	 	Callback = function()       local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1839721437"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="FNAF 2 Song",Content ="音乐id:6913550990",	 	Callback = function()       local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://6913550990"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="RecordScratch_1",Content ="音乐id:6917155909",	 	Callback = function()       local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://6917155909"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Play Theme 节奏",Content ="音乐id:1847661821",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1847661821"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="jumpstyle 节奏感很强",Content ="音乐id:1839246711",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1839246711"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Autotuned Dancing Roach  不知道怎么形容这电音",	Content ="音乐id:4050095124",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://4050095124"    sound.Parent = game.Workspace   sound:Play()    end})
xgo:Button({Title="SAKU -GTA (Nightcore)",Content ="音乐id:14366981664",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://14366981664"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Chaos",Content ="音乐id:1843497734",Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1843497734"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Stonebank- What Are YouWaiting For",Content ="音乐id:7028977687",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7028977687 "    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="March Of The Aliens",Content ="音乐id:1836594449",	 	Callback = function()         local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1836594449"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="机器人舞蹈C ",Content ="音乐id:1847853099",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1847853099"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Assault Complex",Content ="音乐id:1842940193",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842940193"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Robotic Dance A",Content ="音乐id:1837853076",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837853076"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Parry Gripp - Pancake Robot",Content ="音乐id:9245558138",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9245558138"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Destruction Imminent",Content ="音乐id:1837434037",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837434037"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Urban",Content ="音乐id:1839037193",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1839037193"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Classic Chase",Content ="音乐id:1837560230",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837560230"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Insurgent",Content ="音乐id:1842908121",  	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842908121"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Demolition And Destruction A",Content ="音乐id:9042493127",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042493127"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Hardstyle",Content ="音乐id:1839246774",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1839246774"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Snapped",Content ="音乐id:1842940253",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842940253"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Ready 30 Second",Content ="音乐id:9041933055",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9041933055"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Noisestorm -Crab Rave",Content ="音乐id:5410086218",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410086218"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Intense Motivation",Content ="音乐id:1839703786",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1839703786"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Complete The Mission",Content ="音乐id:1838627720",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1838627720"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Tokyo Machine-PLAY",Content ="音乐id:5410085763",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410085763"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="High Velocity",Content ="音乐id:1839898469",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1839898469"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="When Somethingls Cone A",Content ="音乐id:1848213471",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1848213471"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="F.O.O.L-Revenger",Content ="音乐id:5410080771",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410080771"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="All Guts No Glory",Content ="音乐id:1837843720",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837843720"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Full Force -Underscore",Content ="音乐id:1842802012",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842802012"    sound.Parent = game.Workspace    sound:Play()   end})
xgo:Button({Title="Horror Race",Content ="音乐id:1846863084",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1846863084"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Victory Is Ours",Content ="音乐id:1842802498",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842802498"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Mindwinder (b)",Content ="音乐id:1838075732",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1838075732"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Tony Romera-Heat Wave",Content ="音乐id:5410083226",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410083226"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Slippy - Flow",Content ="音乐id:7028913008",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7028913008"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="War",Content ="音乐id:9042616023",Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042616023"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="The Factory",	Content ="音乐id:1847799916",  	 	Callback = function()         local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1847799916"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Rip the Guts Out",Content ="音乐id:1837814958",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837814958"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Pixel Terror - Machina",Content ="音乐id:5410080475",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410080475"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="We Go Hard",Content ="音乐id:1842940420",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842940420"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Fight Or Flight",Content ="音乐id:1842940300",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842940300"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Alarm",Content ="音乐id:1845080313",Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1845080313"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Parry Gripp - Last Train to Awesome Town",Content ="音乐id:9245554658",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9245554658"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Uproar",Content ="音乐id:1842934837",Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842934837"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="The Will To Fight A",Content ="音乐id:1845793864",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1845793864"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Mindwinder (a)",Content ="音乐id:1838075377",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1838075377"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="FWLR - Hot",Content ="音乐id:5410082534",	 	Callback = function()          local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410082534"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Noisestorm - Escape",Content ="音乐id:5410082879",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://5410082879"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Skull Crusher",Content ="音乐id:1842558494",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842558494"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Ready",Content ="音乐id:9041932892",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9041932892"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Heist",Content ="音乐id:1836782065",	 	Callback = function()           local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1836782065"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="城镇谈话",Content ="音乐id:1845756489",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1845756489"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="快乐的歌",Content ="音乐id:1843404009",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1843404009"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="一起战斗吗",Content ="音乐id:1843324336",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1843324336"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="高保真冷柜A",Content ="音乐id:9043887091",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9043887091"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="轻松的场景",Content ="音乐id:1848354536",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1848354536"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="在监狱里生活",Content ="音乐id:1841647093",  	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="不再",Content ="音乐id:1846458016",    	Callback = function()   local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1846458016"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Cute Story",Content ="音乐id:1839755231",    	Callback = function() local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1839755231"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="快乐一点的",Content ="音乐id:9039445224",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9039445224"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Swing it",Content ="音乐id:1843313385",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1843313385"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Police 打鼓伴奏",Content ="音乐id:1842981634",  	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1842981634"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="睡眠歌曲 Baby Song",Content ="音乐id:1838998127",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1838998127"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="义勇军进行曲",Content ="音乐id:1845918434",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1845918434"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="彩虹瀑布",Content ="音乐id:1837879082",    	Callback = function() local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1837879082"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Seperator("ฅ整蛊语音还有一些梗xgo找这些好辛苦的ฅ")
xgo:Button({Title="第1次听吓我一跳",Content ="音乐id:7795812961",    	Callback = function() local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://7795812961"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="我跌倒了,爬不起来",Content ="音乐id:130768088",   	Callback = function() local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130768088"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="死亡的声音",Content ="音乐id:12222242",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://12222242"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="当你在minecraft中死去",Content ="音乐id:2607544190",   	Callback = function() local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://2607544190"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="悲伤的小提琴",Content ="音乐id:135308045",    	Callback = function() local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://135308045"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="喂我!",Content ="音乐id:130766856",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130766856"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Minions - Bee Doo Bee Doo Bee Doo（130844390）",     Content ="音乐id:130844390",  	Callback = function()   local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130844390"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="你在我的沼泽做什么!",Content ="音乐id:130767645",    	Callback = function() local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130767645"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="你是斯巴达",Content ="音乐id:130781067",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130781067"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="那是我的钱包",Content ="音乐id:130760834",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130760834"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="孩子说哎哟哇",Content ="音乐id:12222058",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://12222058"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="Oh my god",Content ="音乐id:1841647093",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://1841647093"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="我是蝙蝠侠",Content ="音乐id:130769318",  	Callback = function()   local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130769318"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="约翰的笑声",Content ="音乐id:130759239",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130759239"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="他是免费的",Content ="音乐id:130771265",  	Callback = function()   local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130771265"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="李·罗伊·詹金斯",Content ="音乐id:130758889",  	Callback = function()   local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://130758889"    sound.Parent = game.Workspace    sound:Play()    end})
xgo:Button({Title="防空警报",Content ="音乐id:792323017",   	Callback = function()  local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://792323017"    sound.Parent = game.Workspace    sound:Play()end})
local xgo = MusicTab:Section({Title = "x-ฅ网易云音乐[XGO]ฅ",    Content = "ฅ付费音乐收藏ฅ"})
xgo:Button({Title="音乐无法关闭只能等待音乐播放完",Content ="[网易音乐]mp3",Callback = function()local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042063815"  sound.Volume = 0.5  sound.Pitch = 1  sound.Parent = game.Workspace  sound:Play()end})
xgo:Button({Title="DJ-可乐[邓紫棋]:泡沫(DJ可乐remix)",Content ="mp3",Callback = function()local player = game.Players.LocalPlayer local playerCamera = workspace.CurrentCamera local ScrGui=Instance.new("ScreenGui", game.CoreGui)local T=Instance.new("TextLabel", ScrGui)T.BackgroundTransparency=1 T.Size=UDim2.new(1,0,0.1,0)T.Position=UDim2.new(0,0,0.7,0)T.TextColor3=Color3.new(1,1,1)T.Text="" T.TextScaled=true T.RichText=true function Lyrics(t, c)  if c==nil then    c=Color3.new(1,1,1)  end  if t==nil then    t=""  end  T.TextColor3=c  T.Text=t end function saveMusicFromUrl(url, fileName)local success, response = pcall(function() return game:HttpGet(url)end)   if success then  writefile("music/SFTG/"..fileName, response)print("音乐保存成功 " .. fileName)else warn("无法下载音乐: " .. response)end end   function playMusic(fileName)local sound = Instance.new("Sound")local soundAsset if getsynasset then  soundAsset = getsynasset("music/SFTG/".. fileName)elseif getcustomasset then   soundAsset = getcustomasset("music/SFTG/".. fileName)else  warn("此executor中没有getsynesset和getCustomasset都没有使用.")end sound.SoundId = soundAsset sound.Looped = false sound.Parent = player.Character or player.CharacterAdded:Wait()sound:Play()print("音乐现在正在播放...")end local musicUrl = "https://raw.githubusercontent.com/GTAFAW/-/main/DJ%E5%8F%AF%E4%B9%90%20-%20%E9%82%93%E7%B4%AB%E6%A3%8B-%E6%B3%A1%E6%B2%AB%EF%BC%88DJ%E5%8F%AF%E4%B9%90%20remix%EF%BC%89.mp3"local musicFileName = "music.mp3" saveMusicFromUrl(musicUrl, musicFileName)playMusic(musicFileName)ScrGui:Destroy()end})
xgo:Button({Title="HMHK-Lifestyle",Content ="mp3",Callback = function()local player = game.Players.LocalPlayer local playerCamera = workspace.CurrentCamera local ScrGui=Instance.new("ScreenGui", game.CoreGui)local T=Instance.new("TextLabel", ScrGui)T.BackgroundTransparency=1 T.Size=UDim2.new(1,0,0.1,0)T.Position=UDim2.new(0,0,0.7,0)T.TextColor3=Color3.new(1,1,1)T.Text="" T.TextScaled=true T.RichText=true function Lyrics(t, c)  if c==nil then    c=Color3.new(1,1,1)  end  if t==nil then    t=""  end  T.TextColor3=c  T.Text=t end function saveMusicFromUrl(url, fileName)local success, response = pcall(function() return game:HttpGet(url)end)   if success then  writefile("music/SFTG/"..fileName, response)print("音乐保存成功 " .. fileName)else warn("无法下载音乐: " .. response)end end   function playMusic(fileName)local sound = Instance.new("Sound")local soundAsset if getsynasset then  soundAsset = getsynasset("music/SFTG/".. fileName)elseif getcustomasset then   soundAsset = getcustomasset("music/SFTG/".. fileName)else  warn("此executor中没有getsynesset和getCustomasset都没有使用.")end sound.SoundId = soundAsset sound.Looped = false sound.Parent = player.Character or player.CharacterAdded:Wait()sound:Play()print("音乐现在正在播放...")end local musicUrl = "https://raw.githubusercontent.com/GTAFAW/-/main/HMHK%20-%20Lifestyle.mp3"local musicFileName = "music.mp3" saveMusicFromUrl(musicUrl, musicFileName)playMusic(musicFileName)ScrGui:Destroy()end})
local xgo = AdministratorTab:Section({Title = "x-ฅ管理员ฅ",Content = "ฅ管理员ฅ"})
xgo:Button({Title="管理员权限 可获得游戏内的通行证",Content ="假的获取通行证",Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%AE%A1%E7%90%86%E5%91%98"))()end})
xgo:Button({Title="资源管理器",Content ="管理员",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/solara_dex"))()end})
xgo:Button({Title="远程监控",Content ="管理员",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/remotespy_save"))()end})
local xgo = AdministratorTab:Section({Title = "x-ฅ注射器ฅ",Content = "ฅ注入器ฅ"})
xgo:Button({Title="阿尔宙斯v3",Content ="注入器",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()end})
xgo:Button({Title="SOROLAZ BETTER SORALA注入器",Content ="注入器",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/PHNKSC/soralaz/refs/heads/main/better%20sorolaz"))()end})
xgo:Button({Title="管理员注入 暂时无法使用,可能会被踢出去",Content ="注入器",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua')))()end})
xgo:Button({Title="xgo 普通执行",Content ="注入器",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%99%AE%E9%80%9A%E6%89%A7%E8%A1%8C%E5%99%A8')))()end})
xgo:Button({Title="普通执行",Content ="注入器",Callback = function()loadstring(game:HttpGet(("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua")))()end})
xgo:Button({Title="执行v2",Content ="注入器",Callback = function()loadstring(game:HttpGet(("https://raw.githubusercontent.com/CloudHub111/Crazy-Executor-V2-Release/refs/heads/main/Open%20Source.Lua")))()end})
local xgo = PicturequalityTab:Section({Title = "x-ฅ图像画质ฅ",Content = "ฅ修改你的图像及其画质ฅ"})
xgo:Button({Title="美丽天空",Content ="修改天空图像",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/miBCv88z"))end})
xgo:Button({Title="变得鲜艳一点",["Content"] = "恐怖游戏内使用最佳",Callback = function()
local Bloom = Instance.new("BloomEffect", game.Lighting)
Bloom.Intensity = 0.12
Bloom.Size = 9e9
Bloom.Threshold = 0.05
local DepthOfField = Instance.new("DepthOfFieldEffect", game.Lighting)
DepthOfField.FarIntensity = 0.3
DepthOfField.FocusDistance = 20
DepthOfField.InFocusRadius = 0
DepthOfField.NearIntensity = 0
local SunRays = Instance.new("SunRaysEffect", game.Lighting)
SunRays.Intensity = 0.1
SunRays.Spread = 0.8
local ColorCorrection = Instance.new("ColorCorrectionEffect", game.Lighting)
ColorCorrection.Brightness = 0.025
ColorCorrection.Contrast = 0.13
ColorCorrection.Saturation = 0.15
game.Lighting.GlobalShadows = false
game.Lighting.OutdoorAmbient = Color3.fromRGB(35, 35, 45)end})
xgo:Button({Title="光影（浅）",Content ="光影修改较浅",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()end})
xgo:Button({Title="光影菜单 小go推荐",Content ="加载较慢 请稍等点击一下就行",Callback = function()loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Shader-RTX-New-12425"))()end})
xgo:Button({Title="光影v2",Content ="光影修改",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()end})
xgo:Button({Title="光影v4",Content ="光影修改",Callback = function()loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()end})
xgo:Button({Title="RTX  图形画质",Content ="画质修改",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/wh967JHa"))()end})
local xgo = UniversalTab:Section({Title = "x-ฅ通用ฅ",Content ="ฅ基本通用的道具ฅ"})
xgo:Button({Title="对玩家进行观战",Content ="可以观战游戏内的玩家",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628llllffaaaYXZS.123/refs/heads/main/%E8%A7%82%E6%88%98%E7%8E%A9%E5%AE%B6"))()end})
xgo:Button({Title="玩家进入通知",Content ="有新玩家进入后通知",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()end})
xgo:Button({Title="小goFe合集",Content ="Fe所有合集",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/Fe"))()end})
xgo:Button({Title="后空翻",Content ="",Callback = function()loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Backflip-Script-18595"))()end})
xgo:Button({Title="无限跳",Content ="可以实现无限连跳",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/lllllllllllllllll114514xxxxg/refs/heads/main/%E6%97%A0%E9%99%90%E8%B7%B3"))()end})
xgo:Button({Title="踏空行走",Content ="可以在空中行走",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()end})
xgo:Button({Title="小go 全图传送 ",Content ="地图点到哪传送哪",Callback = function() mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "小go全图内任意传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack end})
xgo:Button({Title="铁拳（能打飞人）",Content ="可以用铁拳来教训人",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt')))()end})
xgo:Button({Title="iw指令",Content ="无限收益",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()Wait("0.5") loadstring(game:HttpGet("https://pastebin.com/raw/jgmJbZeM"))()end})
xgo:Button({Title="xgo免费动画包",Content ="可以更改你的动作 别人可见",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E5%85%8D%E8%B4%B9%E5%8A%A8%E7%94%BB%E5%8C%85.lua"))()end})
xgo:Button({Title="动作",Content ="可以更改你的动作，别人可见",Callback = function()loadstring(game:HttpGet("https://yarhm.goteamst.com/scr?channel=afem"))()end})
xgo:Button({Title="动作 R6",Content =" R6动作更改",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/Animations-obfus/refs/heads/main/obfus"))()end})
xgo:Button({Title="goto飞行",Content ="飞行",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/rtbZ0mBW"))()end})
xgo:Button({Title="宙斯汉化飞行",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/ArceusX-Fly.lua"))()end})
xgo:Button({Title="goto飞车",Content ="可以使车子飞行",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%A3%9E%E8%BD%A6"))()end})
xgo:Button({Title="goto1.5百倍飞行",Content ="百倍飞行",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8F%E5%AE%87%E9%A3%9E"))()end})
xgo:Button({Title="穿墙汉化",Content ="穿墙",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()end})
xgo:Button({Title="甩人通用",Content ="甩飞游戏内的所有人",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%94%A9%E4%BA%BA%E9%80%9A%E7%94%A8"))()end})
xgo:Button({Title="锁定甩飞 不过你也会死",Content ="锁定甩飞，可以搜索玩家名称进行甩飞",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-FREAKY-FLING/main/kawaii_freaky_fling.lua"))()end})
xgo:Button({Title="xgo 锁定甩飞",Content ="锁定甩飞，可以搜索玩家名称进行甩飞",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E9%94%81%E5%AE%9A%E7%94%A9%E9%A3%9E.lua"))()end})
xgo:Button({Title="F3X",Content ="改变局内工具",Callback = function()loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()end})
xgo:Button({Title="工具包（三个经典工具）",Content ="三个工具经典",Callback = function()loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()end})
xgo:Button({Title="工具挂",Content ="工具菜单",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()end})
xgo:Button({Title="建筑工具",Content ="可复制建筑来进行建造",Callback = function()Hammer = Instance.new("HopperBin")Hammer.Name = "锤子" Hammer.BinType = 4 Hammer.Parent = game.Players.LocalPlayer.Backpack	Clone = Instance.new("HopperBin")Clone.Name = "克隆" Clone.BinType = 3 Clone.Parent = game.Players.LocalPlayer.Backpack Grab = Instance.new("HopperBin")Grab.Name = "抓取" Grab.BinType = 2 end})
xgo:Button({Title="xgo键盘",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E5%BB%BA%E7%9B%98.lua"))()end})
xgo:Button({Title="键盘",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()end})
xgo:Button({Title="替身",Content ="可以创造分身",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()end})
local xgo = UniversalTab:Section({Title = "x-ฅ通用ฅ2",Content = "ฅ通用道具ฅ2"})
xgo:Button({Title="选择玩家传送",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%20xgo%E7%8E%A9%E5%AE%B6%E4%BC%A0%E9%80%81.lua"))()end})
xgo:Button({Title="反挂机",Content ="防止20分钟后强制掉线",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()end})
xgo:Button({Title="反挂机1",Content ="防止20分钟后强制掉线 计时",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/gLkx6yhL"))()end})
xgo:Button({Title="反挂机2",Content ="防止20分钟后强制掉线 计时",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/1A348JKJ"))()end})
xgo:Button({Title="把玩家传送到高空",Content ="把玩家传送到高空进行自由落体",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/WYBZTRv9"))()end})
xgo:Button({Title="xgo制作幽灵状态 可能会掉血",Content ="幽灵状态进入后，别人不可见",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/0HhGVadL"))() end})
xgo:Button({Title="隐身(亲测有效)",Content ="隐身进入隐身玩家不可见",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()end})
xgo:Button({Title="隐身道具",Content ="",Callback = function()loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)"))()end})
xgo:Button({Title="墙体透明工具",Content ="",Callback = function()loadstring(game:HttpGet("https://pastefy.app/vPzYHKAb/raw"))()end})
xgo:Button({Title="锁定视角人物可移动",Content ="将视角锁定",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/6eVUiUnv"))()end})
xgo:Button({Title="玩家控制",Content ="可搭配所有射击游戏",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6"))()end})
xgo:Button({Title="小go超级无敌旋转",Content ="无敌旋转",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%88%9D%E4%BB%A3%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()end})
xgo:Button({Title="小go超级无敌旋转2.0",Content ="无敌旋转",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()end})
xgo:Button({Title="一键脱衣（衬衫之类）",Content ="将衬衫之类的衣服脱下",Callback = function()local player = game.Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait()local function removeClothes() for _, item in pairs(character:GetChildren()) do if item:IsA("Shirt") or item:IsA("Pants") then item:Destroy() end end end removeClothes()end})
xgo:Button({Title="xgo一键脱衣2.0",Content ="将除衬衫以外，衣服脱下，R6有效果",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/kNV2MkKY"))()end})
xgo:Button({Title="鼠标(手机非常不建议用)",Content ="鼠标应用脚本错误时使用",Callback = function()loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw')))()end})
xgo:Button({Title="锁定视角 摄像机",Content ="可以将视角锁定人物可移动",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%94%81%E5%AE%9A%E8%A7%86%E8%A7%92"))()end})
xgo:Button({Title="小go 在外网找的几个道具",Content ="外网的几个道具",Callback = function()loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/b04e28198c8eeb1408921a1560792152/raw/67739a2bc571093976e6cd7e51fb526dedd75861/tools"))()end})
xgo:Button({Title="死亡笔记",Content ="死亡笔记",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0"))()end})
xgo:Button({Title="娱乐特效",Content ="局内改特效",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/xgoizlx/refs/heads/main/ui"))()end}) 
xgo:Button({Title="漂浮控制器",Content ="教程（手机需要键盘）:1. J-飞起来    2. K-回到手中",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/jJEXYrbF"))()end}) 
xgo:Button({Title="道具控制器",Content ="教程（手机需要键盘）:1. Q - 靠近   2. E - 离远   3. Y - 投掷   4. J - 超级投掷   5. U - 使物体自转   6. P - 使物体悬浮在空中   7. X - 走得更远一点   8. L - 使方块变直并锁定在前部",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/qCXsAu9Z"))()end}) 
xgo:Button({Title="GOBBY助手",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/Nx7sbCMX"))()end})
local xgo = PlayerTab:Section({Title = "X-ฅ玩家ฅ",Content = "ฅ玩家通用区域ฅ"})
xgo:TextInput({["Title"]="时间",["Content"] = "更改时间（24小时制）",["Place Holder Text"] = "1~24输入",  ["Clear Text On Focus"] = false,["Callback"] = function(Time)game.Lighting.ClockTime = Time end})
xgo:Button({Title="冻结自己 可以将自己暂停",Content ="随时冻结使自己无法移动",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/creepstu/fuzzy-octo-giggle/main/Source"))()end})
xgo:Button({Title="失重（可以被人当球踢）",Content ="",Callback=function()loadstring(game:HttpGet("https://pastebin.com/raw/axjdwbQy"))()end})
xgo:Button({Title="显示ping",["Content"] = "显示频率",Callback=function()loadstring(game:HttpGet("https://pastebin.com/raw/7eWsZKAE"))()end})
xgo:Button({Title="重新加入游戏", ["Content"] = "",Callback = function()game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService("Players").LocalPlayer)end})
xgo:Button({Title="保存游戏",["Content"] = "",Callback = function()saveinstance()end})
xgo:Button({Title="离开游戏",["Content"] = "",Callback = function()game:Shutdown()end})
xgo:Button({Title="进入人少的服务器",["Content"] = "",Callback = function()local Http = game:GetService("HttpService")local TPS = game:GetService("TeleportService")local Api = "https://games.roblox.com/v1/games/" local _place = game.PlaceId local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100" function ListServers(cursor)  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))  return Http:JSONDecode(Raw) end local Server, Next; repeat  local Servers = ListServers(Next)  Server = Servers.data[1]  Next = Servers.nextPageCursor until Server TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)end})
xgo:Button({Title="最高帧率", ["Content"] = "启动最高帧率",Callback = function()setfpscap(999)end})
xgo:TextInput({["Title"]="广角",["Content"] = "调整视角",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,["Callback"] = function(Value)game.Workspace.CurrentCamera.FieldOfView = Value end})
xgo:TextInput({["Title"]="超广角（Fov）两者各有不同",["Content"] ="",["Place Holder Text"] = "数值",["Clear Text On Focus"] = false,["Callback"] = function(Value)workspace.CurrentCamera.FieldOfView = Value end})
xgo:TextInput({Title="血量",["Content"] ="可能是假血",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Players.LocalPlayer.Character.Humanoid.Health = Value	end})
xgo:TextInput({Title="跳跃高度设置",["Content"] ="",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value end})
xgo:TextInput({Title="移动速度设置",["Content"] ="",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value end})
xgo:TextInput({Title="重力设置",["Content"] ="",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Workspace.Gravity = Value end})
xgo:Button({Title="速度跳跃工具",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/JMvdFSQX"))()end})
xgo:Button({Title="人物坐下",["Content"] = "",Callback = function()local player = game.Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait()local humanoid = character:WaitForChild("Humanoid")if humanoid and character then humanoid.Sit = true else warn("没有找到人形或人物.")end end})
xgo:Button({Title="人物坐下",["Content"] = "单独开关",Callback = function()  loadstring(game:HttpGet("https://pastebin.com/raw/7RHML3DK"))()end})
xgo:Toggle({Title="夜视",Content = "夜晚的时候可以让你看得很清楚",Default = false,Callback = function(Value)if Value then game.Lighting.Ambient = Color3.new(1, 1, 1)else game.Lighting.Ambient = Color3.new(0, 0, 0)end	end})
xgo:Button({Title="接受死亡",Content ="遇到bug了吧",  Callback= function()loadstring(game:HttpGet("https://pastefy.app/mwbRJ43v/raw"))()wait(0.1) game.Players.LocalPlayer.Character.Humanoid.Health=0 end})  
local xgo = BlackholeTab:Section({Title = "x-ฅ黑洞ฅ",Content = "ฅ使周围物体吸附或循环ฅ"})
xgo:Button({Title="键盘可单独按键",Content ="键盘可单独寻找按键",Callback = function()loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()end}) 
xgo:Button({Title="黑洞[PC]",Content ="教程:吸附:E 删除:Q",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/BLACKHOLE_SCRIPT_FOR_PC_ONLY.txt"))()end})
xgo:Button({Title="黑洞小go汉化",Content ="黑洞", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E2"))()end})
xgo:Button({Title="黑洞汉化",Content ="黑洞",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/jQd1HedN"))()end})    
xgo:Button({Title="黑洞汉化2",Content ="黑洞",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/uZbcH9Ve"))()end})    
xgo:Button({Title="黑洞0.4",Content ="黑洞",Callback = function()loadstring(game:HttpGet('https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt'))()end})
xgo:Button({Title="黑洞1.5",Content ="黑洞",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E9%BB%91%E6%B4%9E'))()end})
xgo:Button({Title="循环V2",Content ="万磁使周围的物体旋转", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()end})
xgo:Button({Title="循环v3",Content ="万磁使周围的物体旋转", Callback = function()loadstring(game:HttpGet("https://pastefy.app/vaXK1Kgy/raw"))()end})     
xgo:Button({Title="黑洞E键控制",Content ="黑洞按E",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/BbYdbeDY"))()end})
xgo:Button({Title="低配版不会太卡E键控制",Content ="配置",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/Sx6PY4gV"))()end})
xgo:Button({Title="卡哇伊黑洞（可以锁人的哦）",Content ="可以进行锁定玩家", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E",true))()end})
xgo:Button({Title="控制fe黑洞（配置低别用）",Content ="可使周围物体旋转占位适配手机",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/F'e"))()end})
local xgo = TalkTab:Section({ ["Title"] = "x-ฅ聊天中枢ฅ",    ["Content"] = "ฅ聊天工具ฅ"})
loadstring(game:HttpGet('https://pastebin.com/raw/E0P5BSyz'))() -- 反聊天记录器（xgo制作）
function chat(msg)if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(msg)else game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")end end local method = nil
xgo:Dropdown({["Title"] = "聊天程序",["Multi"] = false,["Options"] = {"ěx́ǎḿṕĺě", "éxạmṕĺe", "ẹ̲х̲ạ̲ṃ̲р̲ḷ̲ẹ̲", "e>x>a>m>p>l>e", "￵example"},["Default"] = {"xxxxgo"},["Place Holder Text"] = "选择一种聊天程序",["Callback"] = function(val)method = val end})
function bypasstext(text, method)if method == 1 then local function addAccents(word)local accents = {
                a = "ǎ",
                b = "ḃ",
                c = "ć",
                d = "d́",
                e = "ě",
                f = "ḟ",
                g = "ġ",
                h = "ḣ",
                i = "í",
                j = "j́",
                k = "ḱ",
                l = "ĺ",
                m = "ḿ",
                n = "n̋",
                o = "ō",
                p = "ṕ",
                q = "q́",
                r = "ŕ",
                s = "ś",
                t = "t̋",
                u = "ū",
                v = "v̇",
                w = "ẃ",
                x = "x́",
                y = "ý",
                z = "ź",
                A = "Ǎ",
                B = "Ḃ",
                C = "Ć",
                D = "D́",
                E = "Ě",
                F = "Ḟ",
                G = "Ġ",
                H = "Ḣ",
                I = "Í",
                J = "J́",
                K = "Ḱ",
                L = "Ĺ",
                M = "Ḿ",
                N = "N̋",
                O = "Ō",
                P = "Ṕ",
                Q = "Q́",
                R = "Ŕ",
                S = "Ś",
                T = "T̋",
                U = "Ū",
                V = "V̇",
                W = "Ẃ",
                X = "X́",
                Y = "Ý",
                Z = "Ź"
               }local bypassedWord = "" for i = 1, #word do local letter = word:sub(i, i)if accents[letter] then bypassedWord = bypassedWord .. accents[letter]else bypassedWord = bypassedWord .. letter end end return bypassedWord end local function bypassString(input)local words = {}for word in string.gmatch(input, "%S+") do table.insert(words, addAccents(word))end return table.concat(words, " ")end return bypassString(text)elseif method == 2 then local function addAccents2(word)local accents2 = {
                a = "ạ",
                b = "ḃ",
                c = "c",
                d = "d́",
                e = "e",
                f = "ḟ",
                g = "ġ",
                h = "ḣ",
                i = "i",
                j = "j́",
                k = "ḳ",
                l = "ĺ",
                m = "m",
                n = "n̋",
                o = "o",
                p = "ṕ",
                q = "q́",
                r = "ŕ",
                s = "ṣ",
                t = "t",
                u = "ụ",
                v = "v̇",
                w = "ẃ",
                x = "x́",
                y = "y",
                z = "z",
                A = "Ạ",
                B = "Ḃ",
                C = "C",
                D = "D́",
                E = "E",
                F = "Ḟ",
                G = "Ġ",
                H = "Ḣ",
                I = "I",
                J = "J́",
                K = "Ḱ",
                L = "Ĺ",
                M = "M",
                N = "N",
                O = "O",
                P = "Ṕ",
                Q = "Q́",
                R = "Ŕ",
                S = "Ṣ",
                T = "T",
                U = "Ụ",
                V = "V̇",
                W = "Ẃ",
                X = "X́",
                Y = "Y",
                Z = "Z"
               }local bypassedWord = "" for i = 1, #word do local letter = word:sub(i, i)if accents2[letter] then bypassedWord = bypassedWord .. accents2[letter]else bypassedWord = bypassedWord .. letter end end return bypassedWord end local function bypassString(input)local words = {}for word in string.gmatch(input, "%S+") do table.insert(words, addAccents2(word))end return table.concat(words, " ")end return bypassString(text)elseif method == 3 then local function addAccents3(word)local accents3 = {
                a = "ạ̲",
                b = "ḅ̲",
                c = "с̲",
                d = "ḍ̲",
                e = "ẹ̲",
                f = "f̲",
                g = "ɡ̲",
                h = "ḥ̲",
                i = "ị̲",
                j = "ј̲",
                k = "ḳ̲",
                l = "ḷ̲",
                m = "ṃ̲",
                n = "ṇ̲",
                o = "ọ̲",
                p = "р̲",
                q = "q̲",
                r = "ṛ̲",
                s = "ṣ̲",
                t = "ṭ̲",
                u = "ụ̲",
                v = "ṿ̲",
                w = "ẉ̲",
                x = "х̲",
                y = "ỵ̲",
                z = "ẓ̲",
                A = "Ạ̲",
                B = "Ḅ̲",
                C = "С̲",
                D = "Ḍ̲",
                E = "Ẹ̲",
                F = "F̲",
                G = "Ɡ̲",
                H = "Ḥ̲",
                I = "Ị̲",
                J = "Ј̲",
                K = "Ḳ̲",
                L = "Ḷ̲",
                M = "Ṃ̲",
                N = "Ṇ̲",
                O = "Ọ̲",
                P = "Р̲",
                Q = "Q̲",
                R = "Ṛ̲",
                S = "Ṣ̲",
                T = "Ṭ̲",
                U = "Ụ̲",
                V = "Ṿ̲",
                W = "Ẉ̲",
                X = "Х̲",
                Y = "Ỵ̲",
                Z = "Ẓ̲"
               }local bypassedWord = "" for i = 1, #word do local letter = word:sub(i, i)if accents3[letter] then bypassedWord = bypassedWord .. accents3[letter]else bypassedWord = bypassedWord .. letter end end return bypassedWord end local function bypassString(input)local words = {}for word in string.gmatch(input, "%S+") do table.insert(words, addAccents3(word))end return table.concat(words, " ")end return bypassString(text)elseif method == 4 then local function modifyText(input)local modifiedText = "" for i = 1, #input do modifiedText = modifiedText .. string.sub(input, i, i) .. ">"end return modifiedText end return modifyText(text)elseif method == 5 then local function addAccents5(word)local accents5 = {
                a = "a",
                b = "b￵￵",
                c = "c￵￵",
                d = "d",
                e = "￵￵e",
                f = "￵￵󠀕f￵￵",
                g = "g",
                h = "h￵￵",
                i = "￵￵i",
                j = "￵￵j￵￵",
                k = "k",
                l = "l￵￵",
                m = "m",
                n = "n",
                o = "o￵￵",
                p = "p",
                q = "q￵￵",
                r = "￵￵r￵￵",
                s = "￵￵s",
                t = "￵￵t￵￵",
                u = "u",
                v = "v",
                w = "w",
                x = "x",
                y = "y",
                z = "￵￵z￵￵󠀕",
                A = "A￵￵󠀕",
                B = "B",
                C = "C",
                D = "￵￵D",
                E = "￵￵E￵￵󠀕",
                F = "F￵￵",
                G = "￵￵G",
                H = "H",
                I = "￵￵I",
                J = "￵￵J",
                K = "K",
                L = "￵￵L",
                M = "M￵￵",
                N = "N￵￵",
                O = "O",
                P = "P￵￵",
                Q = "Q",
                R = "￵￵R",
                S = "S",
                T = "T",
                U = "￵￵U",
                V = "V",
                W = "W￵￵",
                X = "￵￵X",
                Y = "￵￵Y",
                Z = "Z￵￵󠀕"
            }local bypassedWord = "" for i = 1, #word do local letter = word:sub(i, i)if accents5[letter] then bypassedWord = bypassedWord .. accents5[letter]else bypassedWord = bypassedWord .. letter end end return bypassedWord end local function bypassString(input)local words = {}for word in string.gmatch(input, "%S+") do table.insert(words, addAccents5(word))end return table.concat(words, "")end return bypassString(text)end  end
xgo:TextInput({["Title"]="聊天",["Content"] = "",["Place Holder Text"] = "话语",["Clear Text On Focus"] = false,["Callback"] = function(val)if val ~= "" then if method == "ěx́ǎḿṕĺě" then chat(bypasstext(val, 1))elseif method == "éxạmṕĺe" then chat(bypasstext(val, 2))elseif method == "ẹ̲х̲ạ̲ṃ̲р̲ḷ̲ẹ̲" then chat(bypasstext(val, 3))elseif method == "e>x>a>m>p>l>e" then chat(bypasstext(val, 4))elseif method == "￵example" then chat(bypasstext(val, 5))else OrionLib:MakeNotification({Name = "ฅxgoฅ",Content = "ฅ你还没有输入字体ฅ",Image = "rbxassetid://18923878915",Time = 9})end else OrionLib:MakeNotification({Name = "ฅxgoฅ",Content = "ฅ你还没有输入字体ฅ",Image = "rbxassetid://18923878915",Time = 9})end end})
local function showNotificationIfEmpty()if spamMessage == "" then local Notify = xxxgoui:Notify({	Title = "xgo Hub",	["Description"] = "- goto_O R's 2.1581版",	["Color"] = Color3.fromRGB(255, 0, 255),Content = "你好像还没有说话吧",["Time"] = 9,["Delay"] = 10})end end
local function checkAndSendSpam()if spaming and spamMessage ~= "" then repeat wait(spamInterval)chat(spamMessage) until not spaming end end
local function toggleSpamming(val)if val then showNotificationIfEmpty() checkAndSendSpam() else spaming = false end end
xgo:TextInput({["Title"] = "填写你想说的话",["Content"] = "点击下面自动发送即可开始",["Place Holder Text"] = "话语",["Clear Text On Focus"] = true,["Callback"] = function(val)spamMessage = val toggleSpamming(spaming) end})
xgo:Slider({["Title"] = "时间间隔",["Content"] = "",["Min"] = 0,["Max"] = 100,["Increment"] = 1,["Default"] = 1,["ValueName"] = "seconds",["Callback"] = function(val)spamInterval = val toggleSpamming(spaming)end})
xgo:Toggle({["Title"] = "自动发送",["Content"] = "选好了再发",["Default"] = false,["Callback"] = function(val)spaming = val toggleSpamming(spaming)end})
xgo:Button({Title="修复过滤器",Content ="",Callback = function() chat("abcdefg()!")end})
xgo:Button({Title="聊天记录",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/bnQY7zVJ"))()end})
xgo:Button({Title="查玩家ip地址 聊天发送",Content ="只能吓唬人 因为是随机数字",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/FakeRobloxIPGrabber/refs/heads/main/FERobloxIpGrabberScrip"))()end})
xgo:Button({Title="传送到玩家面前循环（嘲讽）",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Orbit%20GUI"))()end})
xgo:Button({Title="聊天绘画图",Content="在聊天上绘画",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628lllkaiiiiiwggv.panmn.lua/refs/heads/main/xz"))()end})
xgo:TextInput({["Title"]="聊天发送循环",["Content"] ="xgo提醒:别说一些容易被举报的话",["Place Holder Text"] = "输入你想说的话",  ["Clear Text On Focus"] = false,["Callback"] = function(V)local TeleportService = game:GetService("TeleportService")local Players = game:GetService("Players")local ReplicatedStorage = game:GetService("ReplicatedStorage")local function spamChat()local message = V while true do game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")wait(2)end end local function flingAll()while true do loadstring(game:HttpGet(" https://raw scripts . net/raw/Universal-Script-FLING-ALL-Script-17590 "))()wait(3)TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)end    end loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/222"))()spawn(spamChat)spawn(flingAll)end})
xgo:Button({Title= "Al聊天机器人",Content ="聊天工具",Callback = function()loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()end})
xgo:Button({Title="骂人无违规",Content="不知道有没有效果",Callback = function()loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()end})
xgo:Button({Title="xgo随机骂人输出",Content ="需要匹配键盘,按G发送",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/85463.lllllIIIIIlIlIIll.ldzs/refs/heads/main/%E8%81%8A%E5%A4%A9%E4%B8%AD%E6%9E%A2"))()end})
local xgo = SelfishTab:Section({Title = "x-ฅ自瞄ฅ",Content = "ฅ自瞄准星ฅ"})
xgo:Button({Title="辅助瞄准",["Content"]="",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/main/universal%20silent%20aim%20by%20Mortalexploits'))()      end})
xgo:Button({Title="普通中心点",["Content"] = "",Callback = function()local d = Drawing.new("Circle")d.Color, d.Radius, d.Filled, d.Visible = Color3.new(0, 0, 8), 3, true, false game:GetService("RunService").RenderStepped:Connect(function()d.Position = workspace.CurrentCamera.ViewportSize / 2 d.Visible = true end)end})
xgo:Button({Title="战神十字架（小）",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/q2qZbbbx"))()     end})
xgo:Button({Title="战神十字架（中）",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/1HT0VwKz"))()  end})
xgo:Button({Title="战神十字架（超级）",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/Q2Evf9mH"))()  end})
xgo:Button({Title="可调节十字准心",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/kn0a/Crosshair-M/main/Source.lua"))()     end})
xgo:Button({Title="辅助瞄准v2",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/universal%20silent%20aim%20by%20Mortalexploits'))()       end})        
xgo:Toggle({["Title"]="锁头",["Content"]="加入队伍检测",["Default"] = false,["Callback"] = function(Value) 		
_G.AimbotEnabled = Value
local Camera = workspace.CurrentCamera
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local LocalPlayer = Players.LocalPlayer
local Holding = false
_G.TeamCheck = true
_G.AimPart = "Head"
_G.Sensitivity = 0
_G.CircleSides = 64
_G.CircleColor = Color3.fromRGB(255, 255, 255)
_G.CircleTransparency = 0.7
_G.CircleRadius = 80
_G.CircleFilled = false
_G.CircleVisible = false
_G.CircleThickness = 0
local FOVCircle = Drawing.new("Circle")
FOVCircle.Position = Vector2.new(Camera.ViewportSize.X / 2, Camera.ViewportSize.Y / 2)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness
local function GetClosestPlayer()
local MaximumDistance = _G.CircleRadius
local Target = nil
for _, v in next, Players:GetPlayers() do
if v.Name ~= LocalPlayer.Name then
if _G.TeamCheck == true then
if v.Team ~= LocalPlayer.Team then
if v.Character ~= nil then
if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
if VectorDistance < MaximumDistance then
Target = v	end end end end end else
if v.Character ~= nil then
if v.Character:FindFirstChild("HumanoidRootPart") ~= nil then
if v.Character:FindFirstChild("Humanoid") ~= nil and v.Character:FindFirstChild("Humanoid").Health ~= 0 then
local ScreenPoint = Camera:WorldToScreenPoint(v.Character:WaitForChild("HumanoidRootPart", math.huge).Position)
local VectorDistance = (Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y) - Vector2.new(ScreenPoint.X, ScreenPoint.Y)).Magnitude
if VectorDistance < MaximumDistance then
Target = v end end end end end end end return Target end
UserInputService.InputBegan:Connect(function(Input)
if Input.UserInputType == Enum.UserInputType.MouseButton2 then
Holding = true end end)
UserInputService.InputEnded:Connect(function(Input)
if Input.UserInputType == Enum.UserInputType.MouseButton2 then
Holding = false end end)
RunService.RenderStepped:Connect(function()
FOVCircle.Position = Vector2.new(UserInputService:GetMouseLocation().X, UserInputService:GetMouseLocation().Y)
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Filled = _G.CircleFilled
FOVCircle.Color = _G.CircleColor
FOVCircle.Visible = _G.CircleVisible
FOVCircle.Radius = _G.CircleRadius
FOVCircle.Transparency = _G.CircleTransparency
FOVCircle.NumSides = _G.CircleSides
FOVCircle.Thickness = _G.CircleThickness
if Holding == true and _G.AimbotEnabled == true then
TweenService:Create(Camera, TweenInfo.new(_G.Sensitivity, Enum.EasingStyle.Sine, Enum.EasingDirection.Out), {CFrame = CFrame.new(Camera.CFrame.Position, GetClosestPlayer().Character[_G.AimPart].Position)}):Play()end end)end})
xgo:Button({Title="情云同款自瞄",["Content"] = "可以调整大小 绘制距离 fl目前有bug",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/uZbHYa7F"))()end})
xgo:Button({Title="小go宙斯二改汉化自瞄", ["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/0K2bLjJ5"))()end})
xgo:Button({Title="自瞄按钮版",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/4XhEFwtt"))()end})
xgo:Button({Title="自瞄",["Content"] = "1",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/uFelikxs/Azure-Hub/main/AimBot.lua"))()end})
xgo:Button({Title="自瞄",["Content"] = "2",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/gXsy4tYU"))()end})
xgo:Button({Title="自瞄ui",["Content"] = "3",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/zm"))()end})
xgo:Button({Title="自瞄ui2.0",["Content"] = "4",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/111111/refs/heads/main/%E8%BE%85%E5%8A%A9%E7%9E%84%E5%87%86"))()end}) 
local xgo = SelfishTab:Section({Title = "x-ฅESPฅ",Content = "ฅ透视 框架 血条ฅ"})
xgo:Button({Title="框架 血条 射线 准心",["Content"] = "依旧fl有 Bug 不过我已经改得非常好了",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/xgomn/143628llllffaaaYXZS.123/refs/heads/main/%E9%80%8F%E8%A7%86%E3%80%82%E6%A1%86%E6%9E%B6"))()ExunysDeveloperESP()end})
xgo:Button({Title="血条 射线",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/u1Mr5UkF"))()end})
xgo:Button({Title="人物框架",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/bJhnZ1bw"))()end})
xgo:Button({Title="人物射线",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/iygw9nNf"))()end}) 
xgo:Button({Title="框架0.1",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/42Vqnapv"))()end})
xgo:Button({Title="彩色框架",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/bniV2ray"))()end})
xgo:Button({Title="xgo制作最强Esp",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/q2KSm6yd"))()end})
xgo:Button({Title="ESP白色",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()end})
xgo:Button({Title="ESP 外网 电脑可用",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()end})
xgo:Button({Title="ESP 猫头鹰中心 ",["Content"] = "逐渐适配手机",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()end})
xgo:Button({Title="CheatX GUI", ["Content"] = "",Callback = function() local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))() local MainUI = UILibrary.Load("CheatX - 3008") local Home = MainUI.AddPage("Home") local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))() ESP:Toggle(true) ESP.Players = false ESP.Tracers = false ESP.Boxes = false ESP.Names = false local function notify(message) game.StarterGui:SetCore("SendNotification", { Title = "CheatX"; Text = message; Icon = ""; Duration = 5; }) end local function teleportToItem(itemName) local donesearch = false for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do if v.Name == "Root" and v.Parent.Name == itemName then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame donesearch = true break end end if donesearch == false then notify("Item position not defined") end end ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Items, { Type = "Model", Color = Color3.fromRGB(0, 119, 255), IsEnabled = "itemESP" }) ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Employees, { Type = "Model", CustomName = "Employee", Color = Color3.fromRGB(255, 0, 4), IsEnabled = "employeeToggle" }) Home.AddButton("Unlock Third Person", function() game.Players.LocalPlayer.CameraMaxZoomDistance = 50 game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic end) Home.AddToggle("ESP", false, function(Value) ESP.Boxes = Value end) Home.AddToggle("ESP Tracers", false, function(Value) ESP.Tracers = Value end) Home.AddToggle("ESP Nametags", false, function(Value) ESP.Names = Value end) Home.AddToggle("Show Players", false, function(Value) ESP.Players = Value end) Home.AddToggle("Show Employees", false, function(Value) ESP.employeeToggle = Value end) Home.AddToggle("Show Items", false, function(Value) ESP.itemESP = Value end) local Teleports = MainUI.AddPage("Teleports") Teleports.AddButton("Teleport to Hotdog", function() teleportToItem("Hotdog") end) Teleports.AddButton("Teleport to Pizza", function() teleportToItem("Pizza") end) Teleports.AddButton("Teleport to Burger", function() teleportToItem("Burger") end) Teleports.AddButton("Teleport to Medkit", function() teleportToItem("Medkit") end) 	end })
xgo:Slider({["Title"]="Esp最大距离",["Content"] = "距离",["Min"] = 1,["Max"] = 100000,["Increment"] = 1,["Default"] = 100000,Color = Color3.fromRGB(255,255,255),["Callback"] = function(Value)getgenv().mptespdistance = Value end})
xgo:Slider({["Title"]="Esp厚度",["Content"] = "厚度",["Min"] = 1,["Max"] = 30,["Increment"] = 1,    ["Default"] = 2,Color = Color3.fromRGB(255,255,255),["Callback"] = function(Value)getgenv().mptespthickness = Value end})
xgo:Button({Title="xgo3d人物射线",["Content"] = "", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo3d%E4%BA%BA%E7%89%A9%E5%B0%84%E7%BA%BF.lua"))()end}) 
xgo:Button({Title="外网框架",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/UNIVERSAL%20AIMBOT%20V2"))()end}) 
local xgo = SelfishTab:Section({Title = "x-ฅ范围ฅ",Content = "ฅ范围设置ฅ"})
xgo:Button({Title="范围",["Content"] = "范围20",Callback = function()
_G.HeadSize = 20
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)end end end end)end})
xgo:Button({Title = "中级范围",["Content"] = "范围100",Callback = function()
_G.HeadSize = 100
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)end end end end)end})
xgo:Button({Title = "高级范围",["Content"] = "范围500",Callback = function()
_G.HeadSize = 500
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)end end end end)end})
xgo:TextInput({["Title"]= "范围修改",["Place Holder Text"] = "数值",["Clear Text On Focus"] = false,	Callback = function(value)print(value)
_G.HeadSize = value
_G.Disabled = true
game:GetService('RunService').RenderStepped:connect(function()
if _G.Disabled then
for i,v in next, game:GetService('Players'):GetPlayers() do
if v.Name ~= game:GetService('Players').LocalPlayer.Name then
pcall(function()
v.Character.HumanoidRootPart.Size = Vector3.new(_G.HeadSize,_G.HeadSize,_G.HeadSize)
v.Character.HumanoidRootPart.Transparency = 0.7
v.Character.HumanoidRootPart.BrickColor = BrickColor.new("Really blue")
v.Character.HumanoidRootPart.Material = "Neon"
v.Character.HumanoidRootPart.CanCollide = false
end)end end end end)end})
xgo:TextInput({["Title"]= "彩色范围修改",	["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,	Callback = function(v) 	  local Players = game:GetService("Players")  local RunService = game:GetService("RunService")   local LocalPlayer = Players.LocalPlayer     local newSize = v     local function ChangeHitboxSize(size)    for _, player in pairs(Players:GetPlayers()) do        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then            local HumanoidRootPart = player.Character.HumanoidRootPart           local newHitboxSize = Vector3.new(size, size, size)            HumanoidRootPart.Size = newHitboxSize            HumanoidRootPart.Transparency = 0.5            HumanoidRootPart.CanCollide = false            local hue = 0            RunService.RenderStepped:Connect(function()                hue = (hue + 0.01) % 1                HumanoidRootPart.Color = Color3.fromHSV(hue, 1, 1)            end)        end    end   end  while true do  ChangeHitboxSize(newSize)    wait(5)   end  end})
local xgo = PropsTab:Section({    Title = "x-ฅ道具ฅ1",    Content = "ฅ武器类ฅ"})
xgo:Button({Title = "万能剪刀",	["Content"] = "可以剪掉一切",  Callback = function()     local Userinputservice = game:GetService("UserInputService")   if not Userinputservice.TouchEnabled then    local shears = game:GetObjects("rbxassetid://12685082209")[1]    shears.Parent = game.Players.LocalPlayer.Backpack    local newCFrame = CFrame.new(0, 0, 0, 0.5, 0.707106829, 0.499999911, -0.5, 0.707106769, -0.49999997, 0.707106769, -2.10734239e-08, -0.707106769)    shears.Grip = newCFrame    local tool = shears    local useAnimation = tool.Animations.use    local function onButton1Down()        local mouse = game.Players.LocalPlayer:GetMouse()        local target = mouse.Target        if target then            if target:IsA("Model") then                    target:Destroy()            else               local parentModel = target:FindFirstAncestorWhichIsA("Model")               if parentModel then                        parentModel:Destroy()                end            end        else            return        end       local humanoid = tool.Parent:FindFirstChildOfClass("Humanoid")        if humanoid then            local animator = humanoid:FindFirstChildOfClass("Animator")            if animator then               if not Sound then                    Sound = Instance.new("Sound")                    Sound.PlaybackSpeed = 1.25                    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9118823101"                    Sound.Parent = tool                end                animator:LoadAnimation(useAnimation):Play()                Sound:Play()                wait(0.5)                Sound:Play()           end        end    end    tool.Activated:Connect(onButton1Down)else    local shears = game:GetObjects("rbxassetid://12685082209")[1]    shears.Parent = game.Players.LocalPlayer.Backpack    local newCFrame = CFrame.new(0, 0, 0, 0.5, 0.707106829, 0.499999911, -0.5, 0.707106769, -0.49999997, 0.707106769, -2.10734239e-08, -0.707106769)    shears.Grip = newCFrame    local tool = shears    local useAnimation = tool.Animations.use    local function onTouchStart()        local mouse = game.Players.LocalPlayer:GetMouse()        local target = mouse.Target        if target then            if target:IsA("Model") then                print(target.Name)                    target:Destroy()            else               local parentModel = target:FindFirstAncestorWhichIsA("Model")                if parentModel then                    print(parentModel.Name)                        parentModel:Destroy()               end            end        else            return        end        local humanoid = tool.Parent:FindFirstChildOfClass("Humanoid")        if humanoid then            local animator = humanoid:FindFirstChildOfClass("Animator")            if animator then                if not Sound then                    Sound = Instance.new("Sound")                    Sound.PlaybackSpeed = 1.25                    local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9118823101"                    Sound.Parent = tool                end                animator:LoadAnimation(useAnimation):Play()                Sound:Play()               wait(0.5)                Sound:Play()            end        end    end    tool.Activated:Connect(onTouchStart) end  	end    })
xgo:Button({Title = "普通剑",	["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://8517347614")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "彩虹剑",	["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://pastebin.com/raw/FW0zvFkH"))()	   end    })
xgo:Button({Title = "我的世界钻石剑",["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://5138636091")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	    end    })
xgo:Button({Title = "MM2小刀",["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://3576051114")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "金属棒球棍",["Content"] = "",  Callback = function()     local Item = game:GetObjects("rbxassetid://12550781805")[1]    Item.Parent = game.Players.LocalPlayer.Backpack 	end    })
xgo:Button({Title = "斧子",["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://9255749565")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "锤子",["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://1380979171")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "核弹",["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://10694662894")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "普通剪刀",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1305578915")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	     end    })
xgo:Button({Title = "撬棍",  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://134950292")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "龙骨炮",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://10748604184")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "武士刀",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://8668934198")[1]   item.Parent = game.Players.LocalPlayer.Backpack 	end    })
xgo:Button({Title = "经典剑",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://47433")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "火箭筒",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/persopoiu/scripts/main/rushbazooka.lua")))()  	end    })
xgo:Button({Title = "AK47",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/Mye123/Roblox-Scripts/master/AK-47.lua")))()  	end    })
xgo:Button({Title = "seek枪",  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua")))()  	end    })
xgo:Button({Title = "M249",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://pastebin.com/raw/cJWSByci")))()  	end    })
xgo:Button({Title = "枪",	  ["Content"] = "",  Callback = function()      loadstring(game:HttpGet('https://pastebin.com/raw/GWdRYDWk'))()  	end    })
xgo:Button({Title = "子空间绊雷",  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet(("https://pastebin.com/raw/vMpNR73S")))()  	end    })
xgo:Button({Title = "香蕉枪", ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua"))()   end    })
xgo:Button({Title = "照明大炮", ["Content"] = "",  Callback =function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Lightning%20Cannon"))()   end    })
xgo:Button({Title = "迷你枪", ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Minigun"))()   end    })
xgo:Button({Title = "禁止锤子",  ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"))()  end    })
xgo:Button({Title = "剑",["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/QTnWUxB7"))()   end    })
xgo:Button({Title = "步枪", ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/g6B7EKez"))()  end    })
local xgo = PropsTab:Section({Title = "x-ฅ道具ฅ2",    Content = "ฅ食品 玩偶 类ฅ"})
xgo:Button({Title ="召唤一辆小汽车",["Content"] = "",  Callback = function()     local Object = game:GetObjects("rbxassetid://16725966639")[1]Object.Parent = game.Workspace        Object:PivotTo(game.Players.LocalPlayer.Character:GetPivot())    end})
xgo:Button({Title = "天使",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/RaXbiByH"))()  end})
xgo:Button({Title ="DOORS骷髅钥匙",["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11697889137")[1]item.Parent = game.Players.LocalPlayer.Backpack    end})
xgo:Button({Title = "黑洞",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/iimateiYT/Scripts/main/Black%20Hole.lua")))()  	end    })
xgo:Button({Title = "魔鬼辣火腿肠",  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt")))()  	end    })
xgo:Button({Title = "气球",	  ["Content"] = "",  Callback = function()         local Item = game:GetObjects("rbxassetid://844258278")[1] Item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "普通书",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://139194324")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "手机",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://4919665667")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "油漆",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1287005601")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "Stop标志",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1305561850")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	     end    })
xgo:Button({Title = "钱/robux",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://78678939")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "摄影机",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://9239732180")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "牌子",	  ["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://6752274751")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "手电",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11242492137")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "水瓶",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://8678380361")[1]   item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "油漆桶",	  ["Content"] = "",  Callback = function()         local Item = game:GetObjects("rbxassetid://82578488")[1] Item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "灯笼",	  ["Content"] = "",  Callback = function()    local item = game:GetObjects("rbxassetid://7301610554")[1]    item.Parent = game.Players.LocalPlayer.Backpack 	end    })
xgo:Button({Title = "火把",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://3499523244")[1]    item.Parent = game.Players.LocalPlayer.Backpack 	end    })
xgo:Button({Title = "魔法书",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book"))()  	end    })
xgo:Button({Title = "screech抱枕 pss~",	  ["Content"] = "",  Callback = function()       		loadstring(game:HttpGet(("https://pastebin.com/raw/W6LhkY6r")))()  	end    })
xgo:Button({Title = "神圣手掌",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Godly%20Hand"))()  	end    })
xgo:Button({Title = "夜视仪",	  ["Content"] = "",  Callback = function()       _G.OnShop = trueloadstring(game:HttpGet('https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua'))()    end})    
xgo:Button({Title = "杰夫玩偶",	  ["Content"] = "",  Callback = function()       		local tool = game:GetObjects("rbxassetid://13069619857")[1]      tool.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "Screech玩偶",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://12387752981")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "培根头(???)",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://651205590")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "恐惧玩偶",	  ["Content"] = "",  Callback = function()     local dread=game:GetObjects("rbxassetid://13071801863")[1];dread.Parent=game.Players.LocalPlayer.Backpack  	        end    })
xgo:Button({Title = "Seek玩偶",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet(("https://pastebin.com/raw/e35wGTze")))() 	end    })
xgo:Button({Title = "巧克力棒",	  ["Content"] = "",  Callback = function()     loadstring(game:HttpGet("https://raw.githubusercontent.com/K0t1n/Public/main/Chocolate%20Bar%20Script"))()  	end    })
xgo:Button({Title = "蛋糕",	  ["Content"] = "",  Callback = function()     local tool = gaetObjects("rbxassetid://13175107839")[1]     tool.Parent = game.Players.LocalPlayer.Backpack    tool.Activated:Connect(function()    tool.Eat:play()    tool.Cake:Destroy()    task.wait(1)    tool.yay:Play()    end)  	end    })
xgo:Button({Title = "冰淇淋",	  ["Content"] = "",  Callback = function()         local Item = game:GetObjects("rbxassetid://110887863")[1] Item.Parent = game.Players.LocalPlayer.Backpack   	end    })
xgo:Button({Title = "蛋糕",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://1523953726")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "汉堡",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://100522628")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "Prime(看起来像某一种饮料)",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://12691961635")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "绷带",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://9956323407")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "乐事薯片",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11979782807")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    })
xgo:Button({Title = "普通蜡烛",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://11222116941")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	    end    })
xgo:Button({Title = "咖啡",	  ["Content"] = "",  Callback = function()     local item = game:GetObjects("rbxassetid://5933367192")[1]    item.Parent = game.Players.LocalPlayer.Backpack  	end    }) 
local xgo = PropsTab:Section({Title = "x-ฅ道具ฅ3",    Content = "ฅFE 变身 特效类ฅ"})
xgo:Button({Title ="火焰特效",      ["Content"] = "",  Callback = function()     local Object = game:GetObjects("rbxassetid://16408664901")[1]     Object.Parent = game.Workspace       Object:PivotTo(game.Players.LocalPlayer.Character:GetPivot())     end})
xgo:Button({Title = "没有头部",  Callback = function(bool)    getgenv().game.Players.LocalPlayer.Character.Head.Transparency = 1    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()    getgenv().game.Players.LocalPlayer.Character.Head.face:Destroy()  end})
xgo:Button({Title = "大飞机",    ["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://pastebin.com/raw/EJS2Fde3"))()  end})
xgo:Button({Title = "酷字符",    ["Content"] = "",  Callback = function()      loadstring(game:HttpGet("https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/coolc"))()  end})
xgo:Button({Title = "巫毒娃娃",    ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/xqCCqeha"))()  end})
xgo:Button({Title = "FE C00lgui",     ["Content"] = "",  Callback = function()   loadstring(game:GetObjects("rbxassetid://8127297852")[1].Source)()   end    })
xgo:Button({Title = "FE 1x1x1x1",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet(('https://pastebin.com/raw/JipYNCht')))()    end    })
xgo:Button({Title = "FE大长腿",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet('https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets'))()    end    })
xgo:Button({Title = "FE用头",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/BK4Q0DfU"))()   end    })
xgo:Button({Title = "鼠标",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw')))()    end    })
xgo:Button({Title = "自动解体",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Content/sishen"))()    end    })
xgo:Button({Title = "超长**",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://pastebin.com/raw/ESWSFND7"))()   end    })
xgo:Button({Title = "操人",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA"))()    end    })
xgo:Button({Title = "FE动画中心",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui"))()    end    })
xgo:Button({Title = "FE",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet('https://pastefy.ga/a7RTi4un/raw'))()    end    })
xgo:Button({Title = "完了",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword"))()   end    })
xgo:Button({Title = "牙帽战斗机",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"))()   end    })
xgo:Button({Title = "NeptunianV",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Krystal%20Dance"))()    end    })
xgo:Button({Title = "克里斯塔尔舞蹈",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"))()     end    })
xgo:Button({Title = "Dearsister",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister"))()    end    })
xgo:Button({Title = "工作室假人",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Studio%20Dummy"))()    end    })
xgo:Button({Title = "木偶大师",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Puppet%20Master"))()    end    })
xgo:Button({Title = "虐待狂的种族传播者",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider"))()    end    })
xgo:Button({Title = "星夹具",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher"))()       end    })
xgo:Button({Title = "狙击手",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"))()    end    })
xgo:Button({Title = "复仇者",     ["Content"] = "",  Callback = function()   loadstring(game:HttpGet(('https://pastefy.ga/iGyVaTvs/raw')))()    end    })
xgo:Button({Title = "怪物",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGetAsync("https://pastebin.com/raw/jfryBKds"))()   end    })
xgo:Button({Title = "警察",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop"))() end    })
xgo:Button({Title = "琦玉",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/FE/Saitama"))()  end    })
xgo:Button({Title = "FE变玩家",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://pastebin.com/raw/XR4sGcgJ"))()  end    })
xgo:Button({Title = "FE猫娘R63",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet("https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua"))()   end    })
xgo:Button({Title = "变身**去操人",     ["Content"] = "",  Callback = function()    loadstring(game:HttpGet('https://raw.githubusercontent.com/LemonSquizerr/Universal-FE/refs/heads/main/Leaker%20v2'))()   end    })

















