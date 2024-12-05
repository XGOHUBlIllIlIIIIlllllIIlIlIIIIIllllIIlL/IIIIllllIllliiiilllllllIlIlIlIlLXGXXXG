--lua语言编写/xgo全源码
local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://9042063815"  sound.Volume = 0.5  sound.Pitch = 1  sound.Parent = game.Workspace  sound:Play()
local xxxgoui = loadstring(game:HttpGet("https://github.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/xxxxgo/blob/main/xgohubUI?raw=true"))()
local Notify = xxxgoui:Notify({Title="ҲƓƠӇƲƁ- goto_O R's 2.1581版\nฅ欢迎宝宝回家ฅ ҲƓƠӇƲƁ",["Description"] = "",["Color"] = Color3.fromRGB(255, 0, 255),Content = "",["Time"] = 5,["Delay"] = 10})
local xgui = xxxgoui:Start({["Name"]="【メ】【G】【Ö】【ℍ】【ⓤ】【ß】",["Description"] = "- goto_O R's 2.1581版",["Info Color"] = Color3.fromRGB(1, 1, 1),["Logo Info"] = "rbxassetid://120611289434746",["Logo Player"] = "rbxassetid://128885038925647", ["Name Info"] = "ҲƓƠӇƲƁ 欢迎宝宝回家",["Name Player"] = "ҲƓƠ",["Info Description"] = "作者:xxxxgo 群聊:259461151",["Tab Width"] = 135,["Color"] = Color3.fromRGB(255, 0, 255),["CloseCallBack"] = function()end})
local MainTab = xgui:MakeTab("x-ฅ信息ฅ")local MusicTab = xgui:MakeTab("x-ฅ音乐天堂ฅ")local AdministratorTab = xgui:MakeTab("x-ฅ管理员ฅ")local PicturequalityTab = xgui:MakeTab("x-ฅ图像画质ฅ")local UniversalTab = xgui:MakeTab("x-ฅ通用/玩家/传送ฅ")local PropsTab = xgui:MakeTab("x-ฅ道具FEฅ")local BlackholeTab = xgui:MakeTab("x-ฅ黑洞ฅ")local TalkTab = xgui:MakeTab("x-ฅ聊天中枢ฅ")local SelfishTab = xgui:MakeTab("x-ฅ自瞄透视ฅ")local LeisureTab = xgui:MakeTab("x-游戏类型-ฅ休闲模拟器ฅ")local SimulationbusinessTab = xgui:MakeTab("x-游戏-ฅ模拟经营ฅ")local ActionadventureTab = xgui:MakeTab("x-游戏类型-ฅ动作冒险ฅ")local ShotTab = xgui:MakeTab("x-游戏类型-ฅ竞技ฅ")local HorrorTab = xgui:MakeTab("x-游戏类型-ฅ恐怖ฅ")local AudioTab = xgui:MakeTab("x-游戏类型-ฅ音游ฅ")local AsymmetriccompetitiveTab = xgui:MakeTab("x-游戏类型-ฅ非对称竞技ฅ")local TowerDefenseTab = xgui:MakeTab("x-游戏类型-ฅ塔防ฅ")local DrivingTab = xgui:MakeTab("x-游戏类型-ฅ载具驾驶ฅ")local ParkourTab = xgui:MakeTab("x-游戏类型-ฅ跑酷obbyฅ")local RNGTab = xgui:MakeTab("x-游戏类型-ฅ创意玩法ฅ[RNG]")local XTab = xgui:MakeTab("x-[游戏]")local ScriptTab = xgui:MakeTab("x-ฅ其他脚本ฅ")
xgo = MainTab:Section({Title="x-ฅ玩家信息ฅ",Content = "ฅ窃取你的所有信息ฅ"})
local function copyToClipboard(text)if setclipboard then setclipboard(text)game:GetService("StarterGui"):SetCore("SendNotification", {Title = "复制成功:\n" .. text,Text = "", Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})
local audioId = 3398620867
local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://" .. audioId sound.Volume = 3 sound.Pitch = 3 sound.Parent = game.Workspace sound:Play()else game:GetService("StarterGui"):SetCore("SendNotification", {Title = "复制失败",Text = "",Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})local audioId = 3398620867 local sound = Instance.new("Sound")sound.SoundId = "rbxassetid://" .. audioId sound.Volume = 3 sound.Pitch = 3 sound.Parent = game.Workspace sound:Play() end end
local function createButton(title, callback)return xgo:Button({Title = title,Content = "",Callback = callback})end
if game:GetService("SoundService").RespectFilteringEnabled == true then
xgo:Seperator("尊重筛选已启用 : 真")
elseif game:GetService("SoundService").RespectFilteringEnabled == false then
xgo:Seperator("尊重筛选已启用 : 假")end
xgo:Seperator("ฅ注入器ฅ:"..identifyexecutor())
xgo:Seperator("ฅ用户名ฅ:"..game.Players.LocalPlayer.Character.Name)
xgo:Seperator("ฅ当前名称ฅ:"..game.Players.LocalPlayer.DisplayName)
xgo:Seperator("ฅ用户帐号ฅ:"..game.Players.LocalPlayer.UserId)
xgo:Seperator("ฅ账号年龄ฅ:"..game.Players.LocalPlayer.AccountAge)
xgo:Seperator("ฅ服务器名称ฅ:"..game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name)
xgo:Seperator("ฅ服务器IDฅ:"..game.GameId)
xgo:Seperator("ฅ服务器地址lDฅ:"..game.PlaceId)
xgo:Seperator("ฅ人物血量ฅ:"..game.Players.LocalPlayer.Character.Humanoid.Health)
xgo:Seperator("ฅ人物跳跃ฅ:"..game.Players.LocalPlayer.Character.Humanoid.JumpPower)
xgo:Seperator("ฅ人物速度ฅ:"..game.Players.LocalPlayer.Character.Humanoid.WalkSpeed)
xgo:Seperator("ฅ人物重力ฅ:"..game.Workspace.Gravity)
xgo:Seperator("ฅ人物高度ฅ:"..game.Players.LocalPlayer.Character.Humanoid.HipHeight)
xgo:Seperator("ฅ当前服务器最高人数ฅ"..game.Players.MaxPlayers)
xgo:Seperator("ฅ作者:xxxxgoฅ")
xgo:Seperator("ฅ脚本全是ҲƓƠ一个人优化更新ฅ")
xgo:Seperator("ฅJobIDฅ:"..game.JobId)
xgo:Seperator("ฅ随机更新或永久不更新ฅ")
xgo:Seperator("ฅ获取客户端IDฅ:"..game:GetService("RbxAnalyticsService"):GetClientId())
xgo:Seperator("==========ฅ《Q群:259461151》ฅ===========")
xgo:Button({Title="ฅ玩家名牌查看ฅ",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/PYjMaUj5"))()end})
xgo:Button({Title="ฅ信息查看ฅ",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/mqrZCSm9"))()end})
createButton("ฅ复制注入器ฅ", function() copyToClipboard(identifyexecutor()) end)
createButton("ฅ复制用户idฅ", function() copyToClipboard(game.Players.LocalPlayer.UserId) end)
createButton("ฅ复制服务器idฅ", function() copyToClipboard(game.GameId) end)
createButton("ฅ复制服务器地址idฅ", function() copyToClipboard(game.PlaceId) end)
createButton("ฅ复制客户端idฅ", function() copyToClipboard(game:GetService("RbxAnalyticsService"):GetClientId()) end)
createButton("ฅ复制JobIDฅ", function() copyToClipboard(game.JobId) end)
xgo = MainTab:Section({Title = "X-ฅ作者信息ฅ",Content = "xxxxgo信息和安全意识"})
xgo:Seperator("xxxgo 和安全三函数")
xgo:Button({Title="复制作者QQ",Content = "QQ:3795512080",Callback = function()setclipboard("3795512080") game:GetService("StarterGui"):SetCore("SendNotification", {Title = "作者[xxxxgo]";   Text = "复制成功,请去剪辑版查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
xgo:Button({Title="复制QQ群",Content = "Q群:259461151",Callback = function()setclipboard("259461151") game:GetService("StarterGui"):SetCore("SendNotification", {Title = "群号"; Text = "复制成功,请去剪辑版查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
xgo:Seperator("ฅ〈三大安全函数〉ฅ")
xgo:Seperator("如果要测试脚本请开启一下三下避免直接被封禁[主要是由某人制作恶意封禁脚本]建议全开")
xgo:Button({Title="安全一",Content = "[生产]分支禁止从其他脚本的更改值.应该用于保护",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/MainProd"))()end})
xgo:Seperator("仅适用于Codex用户!由于其发行与空闲连接（Codex）分支具有兼容性更新这相当于生产分支 ")
xgo:Button({Title="安全二",Content="但没有基于连接的所有连接 并且只能由Codex用户使用,直到他们的问题得到解决",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/CodexTest"))()end})
xgo:Button({Title="安全三",Content="[开发]分支,允许更改其他潜在恶意脚本的值 主要用于调试和测试",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GalacticHypernova/Guardian/main/Main"))()end})
xgo = MainTab:Section({Title = "x-ฅ更新记录[2024]ฅ",Content = "部分更新记录"})
xgo:Seperator("年限:2024年[+]:表示添加[-]:表示删减")
xgo:Seperator("[-]:11月16号;更新了复制信息功能在玩家信息页面最下方并删除了r6拥抱使其恢复以下功能")
xgo:Seperator("[+]:拥抱R6做成工具进行升级|然后这是<---/--->循环黑洞:https://pastebin.com/raw/4TZBv8hQ")
xgo:Seperator("[+]:11月17号;更新触摸甩飞|整理|东西|防止出错|添加mp3外置链接|添加游戏植物冒险")
xgo:Seperator("==========<<<皮卡丘>>>=========| ／l、            |皮卡丘")
xgo:Seperator("                                                          |（ﾟ､ 。７         |图片˂⁽ˈ₍ ⁾˲₎₌")
xgo:Seperator("                                                          |　l、 ~ヽ         |不想记录")
xgo:Seperator("                                                          |　じしf_, )ノ      |๑°ｪ°๑)ﾉ")
xgo:Button({Title="pikaへ　　　　　／|\n　　/＼7　　　 ∠＿/\n　 /　│　　 ／　／\n　│　Z ＿,＜　／　　 /`ヽ\n　│　　　　　ヽ　　 /　　〉\n　 Y　　　　　`　 /　　/\n　ｲ●　､　●　　⊂⊃〈　　/\n　()　 へ　　　　|　＼〈\n　　>ｰ ､_　 ィ　 │ ／／\n　 / へ　　 /　ﾉ＜| ＼＼\n　 ヽ_ﾉ　　(_／　 │／／\n　　7　　　　　　　|／\n　　＞―r￣￣`ｰ―＿6\n",Content ="",Callback = function()game.Players.LocalPlayer:Kick("你伤害了皮卡丘,所以他把你踢了,不是我踢的,你要相信我\n　( ﾟ д ﾟ )　＜被踢了.........\n　　　　..r　　 ヾ\n＿_|_|　/￣￣￣/＿\n　　.＼/　　　/\n反正不是我踢的，我又没踢你，真的真的真的๑乛o乛๑")end})
xgo:Seperator("                                                          |☆☆☆☆☆☆")
xgo:Seperator("                                                          |☆☆☆☆☆")
xgo:Seperator("                                                          |☆☆☆☆")
xgo:Seperator("[+]:坐标进行加强修复寻回自动作脚本出错!|添加空中平台[躲避的安全地方]")
xgo:Seperator("[+]:添加全新加速和添加新的游戏脚本|制作黑洞循环在黑洞页面可找到|添加绘制骨骼")
xgo:Seperator("信息:修复设置速度值时,速度不变的问题|")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("")
xgo:Seperator("========================================================================")
xgo = MusicTab:Section({Title="x-ฅ音乐播放器ฅ",Content = "ฅ小go未收集到你的音乐,你可以使用音乐播放器来播放ฅ"})
xgo:Button({Title="音乐播放器 xgo版本",Content ="音乐播放器输入自己的音乐代码播放音乐",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/cR1zvfH1"))()end})
xgo:Button({Title="音乐播放器 如果有好听的可以投稿",Content ="音乐播放器输入自己的音乐代码播放音乐",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/beta/main/music.lua"))()end})
xgo:Seperator("MP3外置音乐连接器,点击下面复制音乐链接,然后导入即可播放")
xgo:Button({Title="Mp3连接器",Content ="mp3",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Dan41/Scripts/refs/heads/main/GITHUB%20AUDIO%20PLAYER.lua"))()end})
local function xgoButton(title, callback)return xgo:Button({Title = title,Content = "",Callback = callback})end
xgoButton("HMHK - Lifestyle.mp3", function() copyToClipboard("https://raw.github.com/GTAFAW/-/main/HMHK%20-%20Lifestyle.mp3") end)
xgoButton("ฅDJ可乐 - 邓紫棋-泡沫（DJ可乐 remix）.mp3ฅ", function() copyToClipboard("https://raw.github.com/GTAFAW/-/main/DJ%E5%8F%AF%E4%B9%90%20-%20%E9%82%93%E7%B4%AB%E6%A3%8B-%E6%B3%A1%E6%B2%AB%EF%BC%88DJ%E5%8F%AF%E4%B9%90%20remix%EF%BC%89.mp3") end)
xgoButton("ฅG.E.M.邓紫棋 - 多远都要在一起 (Dub Mix).mp3ฅ", function() copyToClipboard("https://raw.github.com/GTAFAW/-/main/G.E.M.%E9%82%93%E7%B4%AB%E6%A3%8B%20-%20%E5%A4%9A%E8%BF%9C%E9%83%BD%E8%A6%81%E5%9C%A8%E4%B8%80%E8%B5%B7%20(Dub%20Mix).mp3") end)
xgoButton("ฅIMG_20241108_021205.jpgฅ", function() copyToClipboard("https://raw.github.com/GTAFAW/-/main/IMG_20241108_021205.jpg") end)
xgoButton("ฅPascal Letoublon Leony - Friendships (Lost My Love).mp3ฅ", function() copyToClipboard("https://raw.github.com/GTAFAW/-/main/Pascal%20Letoublon%20Leony%20-%20Friendships%20(Lost%20My%20Love).mp3") end)
xgoButton("ฅ温顺良人 - 口水旋律vlo.26.mp3ฅ", function() copyToClipboard("https://raw.github.com/GTAFAW/-/main/%E6%B8%A9%E9%A1%BA%E8%89%AF%E4%BA%BA%20-%20%E5%8F%A3%E6%B0%B4%E6%97%8B%E5%BE%8Bvlo.26.mp3") end)
xgo = MusicTab:Section({Title = "x-ฅroblox音乐ฅ",Content = "ฅ收集了70多种音乐ฅ"})--将xgo所有收集的音乐打乱,以方便他们可以更多的听到好听的
xgo:Button({Title="停止播放音乐（所有皆为xgo 一人收集）",Content = "停止所有开启的音乐",Callback = function() for i,v in pairs(workspace:GetDescendants())do if v:IsA("Sound") then v:Destroy()end end end})
local function createSoundButton(name, id)
    xgo:Button({
        Title = name,
        Content = "音乐id:" .. id, --做一个注释意思就是显示他的所有音乐id在其下方
        Callback = function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. id
            sound.Parent = game.Workspace
            sound:Play()
        end
    })
end
local Sounds = {
    ["Pixel Terror & Aviella - Enigma 女版"] = "5410084645",
    ["Grant - Color 女版"] = "7023828725",
    ["Til the Morning (a)女版"] = "1840041842",
    ["I'm Gonna Get Up'RemixA 女版"] = "1847606454",
    ["Elypsis - I MissYou 女版"] = "7023741506",
    ["Direct & Park Avenue - I'll Go 挺好听的"] = "5410081298",
    ["Rogue - Motion"] = "7028557220",
    ["Fun Arcade"] = "1843599021",
    ["Bad Computer"] = "5410082097",
    ["Love Is"] = "7029092469",
    ["Carissa"] = "5410085602",
    ["Rockefeller Street"] = "16831104459",
    ["desert star"] = "5410084938",
    ["ily Pitched"] = "15957461869",
    ["taco bot 3000"] = "9245552700",
    ["raining tacos"] = "142376088",
    ["dion shiawase"] = "5409360995",
    ["cute music"] = "1836519309",
    ["leaked audio"] = "9280071551",
    ["sharknado"] = "9280550653",
    ["walkonwater"] = "9248834984",
    ["no really - rust"] = "272018606",
    ["his cute voice"] = "528728818",
    ["tobu - reflection"] = "11864859928",
    ["moonlight"] = "1961241743",
    ["velocity"] = "10104284161",
    ["flute"] = "467913387",
    ["Upbeat A"] = "9072359432",
    ["Scared"] = "10104284779",
    ["metropolis"] = "659727291",
    ["eg"] = "8996464109",
    ["miracle"] = "1619501952",
    ["meow"] = "467932279",
    ["pink"] = "4681135952",
    ["staeam"] = "4960289400",
    ["paeree"] = "468621896",
    ["wayback"] = "467942273",
    ["lane"] = "8998281117",
    ["nautilus"] = "9072367803",
    ["Martin Graff - Balance"] = "7024183256",
    ["block"] = "467916328",
    ["Colossal Assault"] = "2343544260",
    ["Breach"] = "545296451",
    ["1 Near Sound 2"] = "12306579170",
    ["cyber heist"] = "9042159897",
    ["Rome in Silver & Beach Season - Skin 和上一首一样，都挺好听的"] = "7028570258",
    ["Direct & Essenger - Labyrinth 男版"] = "7023690024",
    ["Solar Flares"] = "1836842889",
    ["Night Vision"] = "1837849285",
    ["When U Coming Back NoVocals"] = "1837871067",
    ["住宅区"] = "1845554017",
    ["These Words Remix"] = "1839721437",
    ["FNAF 2 Song"] = "6913550990",
    ["RecordScratch_1"] = "6917155909",
    ["Play Theme 节奏"] = "1847661821",
    ["jumpstyle 节奏感很强"] = "1839246711",
    ["Autotuned Dancing Roac 电音"] = "4050095124",
    ["SAKU -GTA (Nightcore)"] = "14366981664",
    ["Chaos"] = "1843497734",
    ["Stonebank- What Are YouWaiting For"] = "7028977687",
    ["March Of The Aliens"] = "1836594449",
    ["机器人舞蹈C "] = "1847853099",
    ["Assault Complex"] = "1842940193",
    ["Robotic Dance A"] = "1837853076",
    ["Parry Gripp - Pancake Robot"] = "9245558138",
    ["Destruction Imminent"] = "1837434037",
    ["Urban"] = "1839037193",
    ["Classic Chase"] = "1837560230",
    ["Insurgent"] = "1842908121",
    ["Demolition And Destruction A"] = "9042493127",
    ["Hardstyle"] = "1839246774",
    ["Snapped"] = "1842940253",
    ["Ready 30 Second"] = "9041933055",
    ["Noisestorm -Crab Rave"] = "5410086218",
    ["Intense Motivation"] = "1839703786",
    ["Complete The Mission"] = "1838627720",
    ["Tokyo Machine-PLAY"] = "5410085763",
    ["High Velocity"] = "1839898469",
    ["When Somethingls Cone A"] = "1848213471",
    ["F.O.O.L-Revenger"] = "5410080771",
    ["All Guts No Glory"] = "1837843720",
    ["Full Force -Underscore"] = "1842802012",
    ["Horror Race"] = "1846863084",
    ["Victory Is Ours"] = "1842802498",
    ["Mindwinder (b)"] = "1838075732",
    ["Tony Romera-Heat Wave"] = "5410083226",
    ["Slippy - Flow"] = "7028913008",
    ["War"] = "9042616023",
    ["The Factory"] = "1847799916",
    ["Rip the Guts Out"] = "1837814958",
    ["Pixel Terror - Machina"] = "5410080475",
    ["We Go Hard"] = "1842940420",
    ["Fight Or Flight"] = "1842940300",
    ["Alarm"] = "1845080313",
    ["Parry Gripp - Last Train to Awesome Town"] = "9245554658",
    ["Uproar"] = "1842934837",
    ["The Will To Fight A"] = "1845793864",
    ["Mindwinder (a)"] = "1838075377",
    ["FWLR - Hot"] = "5410082534",
    ["Noisestorm - Escape"] = "5410082879",
    ["Skull Crusher"] = "1842558494",
    ["Ready"] = "9041932892",
    ["Heist"] = "1836782065",
    ["城镇谈话"] = "1845756489",
    ["快乐的歌"] = "1843404009",
    ["一起战斗吗"] = "1843324336",
    ["高保真冷柜A"] = "9043887091",
    ["轻松的场景"] = "1848354536",
    ["在监狱里生活"] = "1841647093",
    ["不再"] = "1846458016",
    ["Cute Story"] = "1839755231",
    ["快乐一点的"] = "9039445224",
    ["Swing it"] = "1843313385",
    ["Police 打鼓伴奏"] = "1842981634",
    ["睡眠歌曲 Baby Song"] = "1838998127",
    ["义勇军进行曲"] = "1845918434",
    ["彩虹瀑布"] = "1837879082"
}
-- 为每个音效创建按钮
for name, id in pairs(Sounds) do
    createSoundButton(name, id)
end
xgo = MusicTab:Section({Title = "x-ฅ娱乐音效ฅ",Content = "ฅ嗯,收集与梗ฅ"})
local function createSoundButton(name, id)
    xgo:Button({
        Title = name,
        Content = "音乐id:" .. id,
        Callback = function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. id
            sound.Parent = game.Workspace
            sound:Play()
        end
    })
end
xgo:Seperator("ฅ整蛊语音还有一些梗ฅ")
local Sounds = {
    ["Rip"] = "429400881",
    ["Ora"] = "6889746326",
    ["Kick"] = "6899466638",
    ["Punch"] = "3280066384",
    ["Lightning"] = "6955233353",
    ["LoudPunch"] = "2319521125",
    ["Loud Za Warudo"] = "8981087259",
    ["N Word Spam"] = "5986485937",
    ["Get Over Here!"] = "8643750815",
    ["Chain"] = "7592607446",
    ["Dora"] = "6995347277",
    ["Ora Barrage"] = "6678126154",
    ["SaW Ora Barrage"] = "6599245588",
    ["Short Muda"] = "6564057272",
    ["Time Stop"] = "5455437798",
    ["Time Resume"] = "3084539117",
    ["When Time is Stopped, There is Only Dio!"] = "6964764259",
    ["Muda Muda Muda"] = "6889746326",
    ["Muda!"] = "6191764144",
    ["Countdown"] = "6675055864",
    ["Zero."] = "7099835652",
    ["Loud Time Resume"] = "6995347277",
    ["This is a test"] = "6949881467",
    ["Impossible!? I can't Move"] = "6946266008",
    ["The one who misread one move... were You."] = "6665016112",
    ["Weakling, Weakling!"] = "6924545163",
    ["I'll teach you the meaning of the word 'retire'"] = "7075003019",
    ["but for you, I feel no pity at all."] = "5842011186",
    ["I've been possessed by an evil spirit."] = "5463102834",
    ["The one to Judge you is my Stand!"] = "5807033225",
    ["I'll smash you to pieces."] = "5584305519",
    ["Hm."] = "9127269834",
    ["Hm? Not bad."] = "4894428927",
    ["Haha!"] = "9127270745",
    ["ZA WARUDO!"] = "1571597070",
    ["yare yare."] = "8657023668",
    ["This is The Greatest High!"] = "6177204732",
    ["Monions, Monions"] = "5986485937",
    ["IMMORTALITY, ETERNAL STANDO POWER!"] = "4580050667",
    ["In the name of GOD I will smite you!"] = "5114781956",
    ["Do you understand?"] = "8925079995",
    ["Good Grief. I made it in time."] = "6520270988",
    ["You did well on your own."] = "5554488284",
    ["But even if u stop time, I'm still going to blow your head off!"] = "6520346428",
    ["Why you? I will fight u later.."] = "4894016902",
    ["I, Jotaro, shall show no mercy!"] = "6186957635",
    ["Star Platinum Over Heaven!"] = "5684695930",
    ["Star Platinum!"] = "5059176420",
    ["Barrage!"] = "5487424124",
    ["Ora!"] = "5867741895",
    ["第1次听吓我一跳"] = "7795812961",
    ["我跌倒了，爬不起来"] = "130768088",
    ["死亡的声音"] = "12222242",
    ["当你在minecraft中死去"] = "2607544190",
    ["悲伤的小提琴"] = "135308045",
    ["喂我!"] = "130766856",
    ["Minions - Bee Doo Bee Doo Bee Doo"] = "130844390",
    ["你在我的沼泽做什么!"] = "130767645",
    ["你是斯巴达"] = "130781067",
    ["那是我的钱包"] = "130760834",
    ["孩子说哎哟哇"] = "12222058",
    ["Oh my god"] = "1841647093",
    ["我是蝙蝠侠"] = "130769318",
    ["约翰的笑声"] = "130759239",
    ["他是免费的"] = "130771265",
    ["李·罗伊·詹金斯"] = "130758889",
    ["防空警报"] = "792323017",
    ["I'll be the judge!"] = "5344619446",
    ["What you Just saw, What just hit you, was ME!"] = "5258899114",
    ["呼噜"] = "9084006093",
    ["Ho ho ho ho"] = "8974931854",
    ["Ben."] = "8974933491",
    ["Yes"] = "8974932300",
    ["No"] = "8974931344",
    ["IP leaked? NO"] = "9074550320",
    ["哈哈哈"] = "5531057176",
    ["I love monions"] = "9087418452",
    ["The hell you keep yammering about.."] = "8397361051",
    ["Hey! What do you mean?"] = "8322982206",
    ["Shut up! You're damn annoying..."] = "6066726827",
    ["Yarou.."] = "8366318357",
    ["He can come."] = "4903897880",
    ["You're done for.."] = "8404022704",
    ["What's wrong?"] = "8600140455",
    ["You will definitely pay!"] = "4903895449",
    ["I, Jotara will end you myself."] = "5296176563",
    ["Ally or Enemy? It's your choice."] = "8825179323",
    ["Do you want a fight? I'll give you a fight."] = "5111658124",
    ["What did you just call me?"] = "8322803654",
    ["Hold it."] = "8404017376",
    ["Star Platinum ! ZA WARUDO!"] = "5736107502",
    ["Time Has Begun to Move again."] = "6678124632",
    ["Time shall resume!"] = "6678124632"
}
for name, id in pairs(Sounds) do
    createSoundButton(name, id)
end
xgo = MusicTab:Section({Title = "x-ฅ网易云音乐[XGO]DJฅ-[暂时下架]",Content = "ฅ付费音乐收藏ฅ"})
xgo:Button({Title="停止音乐-[请等待5~6秒]",Content = "[网易音乐]mp3[由于版权原因,部分仍然在上传]",Callback = function() for i,v in pairs(workspace:GetDescendants())do if v:IsA("Sound") then v:Destroy()end end end})
local function createSoundButton(name, id)
    xgo:Button({
        Title = name,
        Content = "[xxxxgo]上传",
        Callback = function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. id
            sound.Parent = game.Workspace
            sound:Play()
        end
    })
end
local Sounds = {
    ["3ar沉浸在自己的情绪中"] = "90790306522577",
    ["狂妄自嗨"] = "125595566529635",
    ["HMHKLifestyle"] = "106605955064772",
    ["口水旋律vlo.26"] = "133903104827188",
    ["PascalLetoublonLeony-FriendshipsLostMyLove"] = "104162541774019",
    ["Jan问"] = "89909979222567",
    ["心之火"] = "121752295236210",
    ["他说DJ版"] = "115313034003022",
    ["女孩DJ版"] = "112270603883084",
    ["最好的安排DJ版"] = "114450516626092"
}
for name, id in pairs(Sounds) do
    createSoundButton(name, id)
end
xgo = MusicTab:Section({Title = "x-ฅ[邓紫棋]专辑-[暂时下架]ฅ",Content = "ฅ付费音乐收藏ฅ"})
xgo:Button({Title="停止音乐-[请等待5~6秒]",Content = "[邓紫棋]专场[由于版权原因,部分仍然在上传]",Callback = function() for i,v in pairs(workspace:GetDescendants())do if v:IsA("Sound") then v:Destroy()end end end})
local function createSoundButton(name, id)
    xgo:Button({
        Title = name,
        Content = "[xxxxgo]上传",
        Callback = function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. id
            sound.Parent = game.Workspace
            sound:Play()
        end
    })
end
local Sounds = {    
    ["DJ-泡沫"] = "133832466084577",
    ["多远都要在一起"] = "102798191472077",
    ["光年之外"] = "131279016866664",
}
for name, id in pairs(Sounds) do
    createSoundButton(name, id)
end
xgo = MusicTab:Section({Title = "x-ฅ网络热歌榜ฅ-[暂时下架]",Content = "ฅ[XGO]ฅ"})
xgo:Button({Title="停止音乐-[请等待5~6秒]",Content = "[XGO]:[由于版权原因,部分仍然在上传]",Callback = function() for i,v in pairs(workspace:GetDescendants())do if v:IsA("Sound") then v:Destroy()end end end})
local function createSoundButton(name, id)
    xgo:Button({
        Title = name,
        Content = "[xxxxgo]上传",
        Callback = function()
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. id
            sound.Parent = game.Workspace
            sound:Play()
        end
    })
end
local Sounds = {
    ["TRUE与恶魔有约"] = "136249401399662",
    ["罗生门"] = "88946587019602",
    ["没有理由"] = "109529410467863"
}
for name, id in pairs(Sounds) do
    createSoundButton(name, id)
end
xgo = MusicTab:Section({Title = "x-ฅ后续更新...ฅ",Content = "ฅ[ҲƓƠ]ฅ"})
xgo = AdministratorTab:Section({Title = "x-ฅ管理员ฅ",Content = "ฅ管理员ฅ"})
xgo:Button({Title="iw指令",Content ="无限收益",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source')))()Wait("0.5") loadstring(game:HttpGet("https://pastebin.com/raw/jgmJbZeM"))()end})
xgo:Button({Title="无名管理员",Content="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/FilteringEnabled/FE/main/notificationtest"))()end})
xgo:Button({Title="真实产量",Content="更好的IY和IYR翻拍版",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/ffedex/ffedex.github.io/refs/heads/main/TrueYield.official"))()end})
xgo:Button({Title="管理员权限获得游戏通行证",Content ="假的获取通行证",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%AE%A1%E7%90%86%E5%91%98"))()end})
xgo:Button({Title="资源管理器Dex",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/solara_dex"))()end})
xgo:Button({Title="Dex V5",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/dyyll/Dex-V5-leak/refs/heads/main/Dex%20V5.lua"))()end})
xgo:Button({Title="远程监控",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/VateqS/MinionHub/refs/heads/main/remotespy_save"))()end})
xgo = AdministratorTab:Section({Title = "x-ฅ注射器ฅ",Content = "ฅ注入器ฅ"})
xgo:Button({Title="阿尔宙斯v3",Content ="注入器",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()end})
xgo:Button({Title="sᴏʀᴏʟᴀᴢ ʙᴇᴛᴛᴇʀ sᴏʀᴀʟᴀ注入器",Content ="注入器",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/PHNKSC/soralaz/refs/heads/main/better%20sorolaz"))()end})
xgo:Button({Title="管理员注入 暂时无法使用,可能会被踢出去",Content ="注入器",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua')))()end})
xgo:Button({Title="ҲƓƠ普通执行",Content ="注入器",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E6%99%AE%E9%80%9A%E6%89%A7%E8%A1%8C%E5%99%A8')))()end})
xgo:Button({Title="普通执行",Content ="注入器",Callback = function()loadstring(game:HttpGet(("https://raw.githubusercontent.com/iK4oS/backdoor.exe/master/source.lua")))()end})
xgo:Button({Title="执行v2",Content ="注入器",Callback = function()loadstring(game:HttpGet(("https://raw.githubusercontent.com/CloudHub111/Crazy-Executor-V2-Release/refs/heads/main/Open%20Source.Lua")))()end})
xgo = PicturequalityTab:Section({Title = "x-ฅ图像画质ฅ",Content = "ฅ修改你的图像及其画质ฅ"})
xgo:TextInput({["Title"]="时间",["Content"] = "更改时间（24小时制）",["Place Holder Text"] = "1~24输入",  ["Clear Text On Focus"] = false,["Callback"] = function(Time)game.Lighting.ClockTime = Time end})
xgo:Button({Title="美丽天空",Content ="修改天空图像",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/miBCv88z"))end})
xgo:Button({Title="云",Content ="",Callback = function()local terrain = workspace:FindFirstChild("Terrain")if terrain then local clouds = Instance.new("Clouds")clouds.Parent = terrain clouds.Cover = 0.68 clouds.Color = Color3.fromRGB(255, 255, 255)  clouds.Transparency = 0.3 end end})
xgo:Button({Title="落日",Content ="",Callback = function()local light = cloneref(game:GetService("Lighting"))
light.Technology = Enum.Technology.Future
light.ClockTime = 7
light.TimeOfDay = "07:00:00"
light.Brightness = 2
light.OutdoorAmbient = Color3.fromRGB(200, 200, 255)
light.Ambient = Color3.fromRGB(255, 210, 160)
light.FogEnd = 1000
light.FogStart = 200
light.FogColor = Color3.fromRGB(255, 170, 100)
light.ClockTime = light.ClockTime + 0.0000001
local sky = Instance.new("Sky", light)
sky.Name = "SunriseSkybox"
sky.SkyboxBk = "rbxassetid://541743453"
sky.SkyboxDn = "rbxassetid://541743443"
sky.SkyboxFt = "rbxassetid://541743446"
sky.SkyboxLf = "rbxassetid://541743436"
sky.SkyboxRt = "rbxassetid://541743435"
sky.SkyboxUp = "rbxassetid://541743441"
local colorCorr = Instance.new("ColorCorrectionEffect", light)
colorCorr.Brightness = 0.1
colorCorr.Contrast = 0.2
colorCorr.Saturation = 0.3
colorCorr.TintColor = Color3.fromRGB(255, 170, 120)
local bloom = Instance.new("BloomEffect", light)
bloom.Intensity = 0.5
bloom.Size = 24
bloom.Threshold = 2
while true do light.ClockTime = 7 task.wait(1)end end})
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
xgo:Button({Title="光影[浅]",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/jHBfJYmS"))()end})
xgo:Button({Title="光影菜单 小go推荐",Content ="加载较慢 请稍等点击一下就行",Callback = function()loadstring(game:HttpGet("https://scriptblox.com/raw/Universal-Script-Shader-RTX-New-12425"))()end})
xgo:Button({Title="光影v2",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()end})
xgo:Button({Title="光影v4",Content ="",Callback = function()loadstring(game:HttpGet('https://pastebin.com/raw/gUceVJig'))()end})
xgo:Button({Title="RTX 图形画质",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/wh967JHa"))()end})
xgo:Button({Title="RTX 高清",Content ="",Callback = function()
local find1 = game.Lighting:FindFirstChildWhichIsA("BloomEffect") if find1 then
    game.Lighting:FindFirstChildWhichIsA("BloomEffect"):Destroy()
end
local find2 = game.Lighting:FindFirstChildWhichIsA("SunRaysEffect") if find2 then
    game.Lighting:FindFirstChildWhichIsA("SunRaysEffect"):Destroy()
end
local find3 = game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect") if find3 then
    game.Lighting:FindFirstChildWhichIsA("ColorCorrectionEffect"):Destroy()
end
local find4 = game.Lighting:FindFirstChildWhichIsA("BlurEffect") if find4 then
    game.Lighting:FindFirstChildWhichIsA("BlurEffect"):Destroy()
end
local find5 = game.Lighting:FindFirstChildWhichIsA("Sky") if find5 then
    game.Lighting:FindFirstChildWhichIsA("Sky"):Destroy()
end
local blem = Instance.new("BloomEffect",game.Lighting)
local sanrey = Instance.new("SunRaysEffect",game.Lighting)
local color = Instance.new("ColorCorrectionEffect",game.Lighting)
local blor = Instance.new("BlurEffect",game.Lighting)
Instance.new("Sky",game.Lighting)
game.Lighting.ExposureCompensation = 0.34
game.Lighting.ShadowSoftness = 1
game.Lighting.EnvironmentDiffuseScale = 0.343
game.Lighting.EnvironmentSpecularScale = 1
game.Lighting.Brightness = 2
game.Lighting.ColorShift_Top = Color3.fromRGB(118,117,108)
game.Lighting.OutdoorAmbient = Color3.fromRGB(141,141,141)
game.Lighting.GeographicLatitude = 100
game.Lighting.Ambient = Color3.fromRGB(112,112,112)
blem.Intensity = 0.5
blem.Size = 22
blem.Threshold = 1.5
sanrey.Intensity = 0.117
sanrey.Spread = 1
blor.Size = 2
color.Contrast = 0.3
color.Saturation = 0.2
color.TintColor = Color3.fromRGB(255,252,224)end})
xgo = PicturequalityTab:Section({Title = "x-ฅ图像地图ฅ",Content = "ฅ图像ฅ"})
xgo:Button({Title="X射线",Content = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/9MV5rQqA"))()end})
xgo:Button({Title="X射线[重置]",Content = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/DxhTRzkR",true))()end})
xgo:Button({Title="内部击中框",Content = "",Callback = function() settings():GetService("RenderSettings").ShowBoundingBoxes = true end})
xgo:Button({Title="内部击中框[重置]",Content = "",Callback = function() settings():GetService("RenderSettings").ShowBoundingBoxes = false end})
xgo = UniversalTab:Section({Title = "x-ฅ坐标即服务统计ฅ",Content = "ฅ传送位置坐标数ฅ2"})
local function getPosition()local position = game.Players.LocalPlayer.Character.HumanoidRootPart.Position return tostring(math.floor(position.X)) .. ", " .. tostring(math.floor(position.Y)) .. ", " .. tostring(math.floor(position.Z))end
local positionLabel = xgo:Seperator("坐标[小]: " .. getPosition())
local XPosLabel = xgo:Seperator("位置 X |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X)
local YPosLabel = xgo:Seperator("位置 Y |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y)
local ZPosLabel = xgo:Seperator("位置 Z |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)
game:GetService("RunService").Heartbeat:Connect(function()XPosLabel:Set("位置 X |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.X)YPosLabel:Set("位置 Y |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Y)ZPosLabel:Set("位置 Z |: " .. game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position.Z)end)
spawn(function()while task.wait() do positionLabel:Set("坐标[小]: " .. getPosition()) end end)
xgo:Button({Title="维度显示",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/0gRe2nE8"))()end})
xgo:Button({Title="复制位置坐标",Content ="",Callback = function()setclipboard(tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position))
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "位置坐标"; Text = "已复制成功请到剪辑版上查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867 local sound = Instance.new("Sound") sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
xgo:Button({Title="制作传送脚本",Content ="自动制作成脚本",Callback = function()
local position = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        setclipboard("game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(" .. position .. ")")
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "传送"; Text = "复制成功,请去剪辑版查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867 local sound = Instance.new("Sound") sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
local tweenTime = 3 
xgo:TextInput({["Title"]="巡回时间",["Content"] = "输入巡回时长它可以将你慢慢的拉过来",["Place Holder Text"] = "请输入巡回时间",  ["Clear Text On Focus"] = false, Suffix = "Seconds", CurrentValue = tweenTime, Flag = "TweenTimeSlider",["Callback"] = function(value)tweenTime = value end})
xgo:Button({Title="制作巡回传送脚本",Content ="自动制作成脚本",Callback = function()
local position = tostring(game.Players.LocalPlayer.Character.HumanoidRootPart.Position)
        setclipboard('tweenService, tweenInfo = game:GetService("TweenService"), TweenInfo.new(' .. tweenTime .. ', Enum.EasingStyle.Linear)' ..
                     'tweenService:Create(game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart, tweenInfo, {CFrame = CFrame.new(' .. position .. ')}):Play()')
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "巡回时间";   Text = "复制成功,请去剪辑版查看";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()end})
xgo:Button({Title="游戏传送",Content ="复制id",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/3b9sdhKv"))()end})
xgo:Button({Title="数据统计",Content ="检测问题",Callback = function()game:GetService("VirtualInputManager"):SendKeyEvent(true,"F9",false,game)
    print("Players Owned Cars")
    for i,v in pairs(game.Players:GetChildren()) do
        if v.ClassName == "Player" then
            print("------xgo---------"..v.Name.." OwnedCars".."-----xgo----------")
      local tables = {}
      local racetable = {}
        for a,b in pairs(v.Data.OwnedCars:GetChildren()) do
            if b:IsA("BoolValue") and b.Value == true then
               for c,d in pairs(require(game:GetService("ReplicatedStorage").ModuleLists.CarList)) do
               if d.id == tonumber(b.Name) then
               table.insert(tables,d.name..",")
            end end end end
    warn(unpack(tables))
    print("-------xgo---------"..v.Name.." Currencies".."--------xgo-------")
    warn(v.variables.candy.Name..": "..v.variables.candy.Value,v.variables.rep.Name..": "..v.variables.rep.Value,v.Data.coconuts.Name..": "..v.Data.coconuts.Value)
    print("-------xgo--------"..v.Name.." Race Best Times".."-------xgo-------")
    for ok,p in pairs(v.Data.BestTimes:GetAttributes()) do
    rawset(racetable,ok,p) end
    for lol,s in pairs(racetable) do
    warn(lol,s) end end end end})
xgo = UniversalTab:Section({Title = "x-ฅ玩家传送ฅ",Content = "ฅ玩家传送ฅ"})
local playersDropdown = nil
local targ = nil
-- 创建下拉菜单
playersDropdown = xgo:Dropdown({
    ["Title"] = "选择玩家",
    ["Multi"] = false,
    ["Options"] = {},
    ["Default"] = nil,
    ["Place Holder Text"] = "选择玩家",
    ["Callback"] = function(selectedPlayer)
        targ = selectedPlayer
    end
})
-- 更新玩家列表的函数
local function UpdatePlayersTable()
    local players = {}
    for _, player in pairs(game.Players:GetPlayers()) do
        if player ~= game.Players.LocalPlayer then
            table.insert(players, player.Name)
        end
    end
    playersDropdown:Refresh(players, true)
    if #players > 0 then
        playersDropdown:SetDefault(players[1])
    end
end
-- 定时更新玩家列表
spawn(function()
    while wait(0.5) do
        UpdatePlayersTable()
    end
end)
-- 传送到玩家的函数
local function teleportTo(targetPlayerName)
    local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
    if not targetPlayer or not targetPlayer.Character or not targetPlayer.Character.PrimaryPart then
        game.StarterGui:SetCore("SendNotification", {
            Title = "XGOHUB",
            Text = "目标玩家不存在或角色未加载完成",
            Duration = 5
        })
        return
    end
    local localPlayer = game.Players.LocalPlayer
    if not localPlayer or not localPlayer.Character or not localPlayer.Character:FindFirstChild("HumanoidRootPart") then
        game.StarterGui:SetCore("SendNotification", {
            Title = "XGOHUB",
            Text = "本地玩家角色未加载完成",
            Duration = 5
        })
        return
    end
    localPlayer.Character.HumanoidRootPart.CFrame = targetPlayer.Character.PrimaryPart.CFrame
end
-- 传送到选中玩家的按钮
xgo:Button({
    Title = "传送到选中玩家",
    Callback = function()
        if targ and targ ~= "" then
            teleportTo(targ)
        else
            game.StarterGui:SetCore("SendNotification", {
                Title = "XGOHUB",
                Text = "没有玩家或者已经离开",
                Duration = 5
            })
        end
    end
})
-- 文本输入框，用于传送到玩家
xgo:TextInput({
    ["Title"] = "输入名称传送[可以不写全]",
    ["Content"] = "",
    ["Place Holder Text"] = "输入玩家名称",
    ["Clear Text On Focus"] = false,
    ["Callback"] = function(inputName)
        teleportTo(inputName)
    end
})
xgo:Seperator("点击你选择玩家或者点击一下玩家名称进行传送")
-- 为每个玩家创建一个按钮
local function createPlayerButtons()
    for _, player in ipairs(game.Players:GetPlayers()) do
        xgo:Button({
            ["Title"] = player.Name,
            ["Content"] = "",
            Callback = function()
                teleportTo(player.Name)
            end
        })
    end
end
-- 初始创建玩家按钮
createPlayerButtons()
-- 更新玩家按钮列表
spawn(function()
    while true do
        wait(1) -- 可以根据需要调整更新频率
        createPlayerButtons()
        UpdatePlayersTable()
    end
end)
xgo = UniversalTab:Section({Title = "x-ฅ玩家ฅ",Content = "ฅ玩家通用区域ฅ"})
xgo:TextInput({
    Title = "更快的速度", -- 设置文本输入框的标题
    Content = "死亡后重置推荐数值2", -- 设置文本输入框的内容提示
    ["Place Holder Text"] = "速度值", -- 设置占位符文本
    ["Clear Text On Focus"] = false, -- 设置在获得焦点时是否清除文本
    Callback = function(Value)
        local tspeed = tonumber(Value) -- 将输入值转换为数字
        local hb = game:GetService("RunService").Heartbeat
        local tpwalking = true
        local player = game:GetService("Players")
        local lplr = player.LocalPlayer
        local chr = lplr.Character
        local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
        while tpwalking and hb:Wait() and chr and hum and hum.Parent do
            if hum.MoveDirection.Magnitude > 0 then
                if tspeed then
                    chr:TranslateBy(hum.MoveDirection * tspeed) -- 使用输入的速度值来移动角色
                else
                    chr:TranslateBy(hum.MoveDirection) -- 如果没有输入速度值，则以默认速度移动
                end
            end
        end
    end
})
-- 假设Settings和Cache是全局变量，需要提前定义
Settings = Settings or {}
Cache = Cache or {}
-- 初始化Settings和Cache
Settings["Player"] = Settings["Player"] or {}
Settings["Player"]["CFrameSpeed"] = false -- 初始状态为关闭
Settings["Player"]["Speed"] = 16 -- 假设的默认速度值
Cache["Loops"] = Cache["Loops"] or {}
-- 定义CFrame Speed功能
local function CFrameSpeed()
    if Cache["Loops"]["CFrameSpeed"] ~= nil then
        Cache["Loops"]["CFrameSpeed"]:Disconnect()
        Cache["Loops"]["CFrameSpeed"] = nil
    end
    if Settings["Player"]["CFrameSpeed"] then
        Cache["Loops"]["CFrameSpeed"] = game:GetService("RunService").Heartbeat:Connect(function()
            if game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") then
                local Character = game.Players.LocalPlayer.Character
                local Humanoid = Character:FindFirstChild("Humanoid")
                if not Humanoid then return end
                local MoveDirection = Humanoid.MoveDirection
                local Speed = tonumber(Settings["Player"]["Speed"]) or 1 -- 确保Speed是数值类型
                Character.HumanoidRootPart.CFrame = Character.HumanoidRootPart.CFrame + MoveDirection * Speed
            end
        end)
    end
end
-- 使用xgo的TextInput函数创建速度数值输入框
xgo:TextInput({
    Title = "设置速度[电脑]",
    Content = "初始速度值设置的很高",
   ["Place Holder Text"] = "速度值",
   ["Clear Text On Focus"] = false,
    Callback = function(Value)
        -- 确保输入的值是数字
        if tonumber(Value) then
            Settings["Player"]["Speed"] = tonumber(Value)
            -- 如果速度开关是开启状态，更新速度
            if Settings["Player"]["CFrameSpeed"] then
                CFrameSpeed()
            end
        end
    end
})
-- 使用xgo的Toggle函数创建速度开关
xgo:Toggle({
    Title = "速度开/关\n请在上面设置速度值",
    Content = "",
    Default = false,
    Callback = function(xgo)
        Settings["Player"]["CFrameSpeed"] = xgo
        CFrameSpeed()
    end
})
xgo:TextInput({Title="移动速度设置",["Content"] ="",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value end})
xgo:TextInput({Title="跳跃高度设置",["Content"] ="",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value end})
xgo:TextInput({Title="重力设置",["Content"] ="",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Workspace.Gravity = Value end})
xgo:TextInput({Title="血量",["Content"] ="可能是假血",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,Callback = function(Value)game.Players.LocalPlayer.Character.Humanoid.Health = Value	end})
xgo:TextInput({["Title"]="广角",["Content"] = "调整视角",["Place Holder Text"] = "数值",  ["Clear Text On Focus"] = false,["Callback"] = function(Value)game.Workspace.CurrentCamera.FieldOfView = Value end})
xgo:TextInput({["Title"]="超广角[Fov]两者各有不同",["Content"] ="",["Place Holder Text"] = "数值",["Clear Text On Focus"] = false,["Callback"] = function(Value)workspace.CurrentCamera.FieldOfView = Value end})
local hidingPlace -- 用于存储平台实例的全局变量
local atHidingPlace = false -- 标记玩家是否在隐藏地点
local originalPosition -- 保存玩家传送前的位置

-- 创建“隐藏地点”基座的函数
local function createHidingPlace()
    -- 检查基座是否已存在
    if workspace:FindFirstChild("空中平台") then return workspace:FindFirstChild("空中平台") end
    -- 创建基座
    local baseplate = Instance.new("Part")
    baseplate.Name = "空中平台"
    baseplate.Size = Vector3.new(1500, 1, 1500)
    baseplate.Position = Vector3.new(0, 700, 0)
    baseplate.Anchored = true
    baseplate.CanCollide = true
    baseplate.Material = Enum.Material.Metal  --材质包
    baseplate.Parent = workspace

    -- 建造带有门、窗和家具的房子
    local houseSpacing = 60
    for i = 1, 5 do
        local house = Instance.new("Part")
        house.Size = Vector3.new(20, 20, 20)
        house.Position = baseplate.Position + Vector3.new(-250 + i * houseSpacing, 10, -250)
        house.Anchored = true
        house.BrickColor = BrickColor.new("Light orange")
        house.Material = Enum.Material.Brick
        house.Parent = baseplate

        -- 给房子添加窗户
        for j = -1, 1, 2 do
            local window = Instance.new("Part")
            window.Size = Vector3.new(4, 6, 0.5)
            window.Position = house.Position + Vector3.new(j * 7, 5, -1)
            window.Anchored = true
            window.BrickColor = BrickColor.new("Institutional white")
            window.Material = Enum.Material.Glass
            window.Transparency = 0.5
            window.Parent = baseplate
        end

        -- 添加门
        local door = Instance.new("Part")
        door.Size = Vector3.new(4, 10, 0.5)
        door.Position = house.Position + Vector3.new(0, 5, -1)
        door.Anchored = true
        door.BrickColor = BrickColor.new("Brown")
        door.Material = Enum.Material.Wood
        door.Parent = baseplate

        -- 在房子内部添加家具
        local bed = Instance.new("Part")
        bed.Size = Vector3.new(8, 2, 4)
        bed.Position = house.Position + Vector3.new(0, 1, -1)
        bed.Anchored = true
        bed.BrickColor = BrickColor.new("Really red")
        bed.Parent = baseplate
        local table = Instance.new("Part")
        table.Size = Vector3.new(4, 1, 4)
        table.Position = house.Position + Vector3.new(0, 1, 5)
        table.Anchored = true
        table.BrickColor = BrickColor.new("Brown")
        table.Parent = baseplate
        local chair = Instance.new("Part")
        chair.Size = Vector3.new(2, 2, 2)
        chair.Position = house.Position + Vector3.new(3, 1, 5)
        chair.Anchored = true
        chair.BrickColor = BrickColor.new("Reddish brown")
        chair.Parent = baseplate
    end

    -- 建造带有窗户的塔楼
    local towerSpacing = 100
    for i = 1, 3 do
        local tower = Instance.new("Part")
        tower.Size = Vector3.new(20, 100, 20)
        tower.Position = baseplate.Position + Vector3.new(-250 + i * towerSpacing, 50, 200)
        tower.Anchored = true
        tower.BrickColor = BrickColor.new("Institutional white")
        tower.Material = Enum.Material.Concrete
        tower.Parent = baseplate

        -- 在塔楼上间隔添加窗户
        for y = 10, 90, 20 do
            local window = Instance.new("Part")
            window.Size = Vector3.new(8, 8, 0.5)
            window.Position = tower.Position + Vector3.new(0, y, -10)
            window.Anchored = true
            window.BrickColor = BrickColor.new("Institutional white")
            window.Material = Enum.Material.Glass
            window.Transparency = 0.5
            window.Parent = baseplate
        end
    end

    -- 建造连接房子和塔楼的道路
    local road = Instance.new("Part")
    road.Size = Vector3.new(10, 1, 300)
    road.Position = baseplate.Position + Vector3.new(0, 0.5, -250)
    road.Anchored = true
    road.BrickColor = BrickColor.new("Really black")
    road.Material = Enum.Material.Asphalt
    road.Parent = baseplate

    -- 建造带有绿色顶部的树木
    for i = 1, 15 do
        local trunk = Instance.new("Part")
        trunk.Size = Vector3.new(5, 20, 5)
        trunk.Position = baseplate.Position + Vector3.new(math.random(-400, 400), 10, math.random(-400, 400))
        trunk.Anchored = true
        trunk.BrickColor = BrickColor.new("Reddish brown")
        trunk.Material = Enum.Material.Wood
        trunk.Parent = baseplate
        local leaves = Instance.new("Part")
        leaves.Size = Vector3.new(12, 10, 12)
        leaves.Position = trunk.Position + Vector3.new(0, 15, 0)
        leaves.Anchored = true
        leaves.BrickColor = BrickColor.new("Bright green")
        leaves.Material = Enum.Material.Grass
        leaves.Parent = baseplate
    end

    -- 添加草丛
    for i = 1, 20 do
        local grassPatch = Instance.new("Part")
        grassPatch.Size = Vector3.new(math.random(10, 20), 1, math.random(10, 20))
        grassPatch.Position = baseplate.Position + Vector3.new(math.random(-700, 700), 0.5, math.random(-700, 700))
        grassPatch.Anchored = true
        grassPatch.BrickColor = BrickColor.new("Bright green")
        grassPatch.Material = Enum.Material.Grass
        grassPatch.Parent = baseplate
    end

    -- 制造雨效（基座上方的小降落部分）
    for i = 1, 100 do
        local raindrop = Instance.new("Part")
        raindrop.Size = Vector3.new(0.2, 1, 0.2)
        raindrop.Position = baseplate.Position + Vector3.new(math.random(-700, 700), math.random(20, 100), math.random(-700, 700))
        raindrop.Anchored = false
        raindrop.CanCollide = false
        raindrop.BrickColor = BrickColor.new("Really blue")
        raindrop.Material = Enum.Material.SmoothPlastic
        raindrop.Velocity = Vector3.new(0, -50, 0)
        raindrop.Parent = baseplate
    end

    -- 添加长椅和路灯以增加氛围
    for i = 1, 5 do
        local bench = Instance.new("Part")
        bench.Size = Vector3.new(5, 1, 2)
        bench.Position = baseplate.Position + Vector3.new(math.random(-700, 700), 1, math.random(-700, 700))
        bench.Anchored = true
        bench.BrickColor = BrickColor.new("Reddish brown")
        bench.Material = Enum.Material.Wood
        bench.Parent = baseplate
        local lightPole = Instance.new("Part")
        lightPole.Size = Vector3.new(1, 15, 1)
        lightPole.Position = bench.Position + Vector3.new(2, 7.5, 0)
        lightPole.Anchored = true
        lightPole.BrickColor = BrickColor.new("Dark stone grey")
        lightPole.Material = Enum.Material.Metal
        lightPole.Parent = baseplate
        -- 在灯杆顶部添加光源
        local light = Instance.new("PointLight")
        light.Color = Color3.fromRGB(255, 255, 224)  -- 暖黄色光
        light.Brightness = 2
        light.Range = 20
        light.Parent = lightPole
    end

        -- 建造房子的函数
local function createHouse(baseplate, position)
    local houseSize = Vector3.new(20, 20, 20)
    local house = Instance.new("Part")
    house.Size = houseSize
    house.Position = baseplate.Position + position
    house.Anchored = true
    house.BrickColor = BrickColor.new("Light orange")
    house.Material = Enum.Material.Brick
    house.Parent = baseplate

    -- 随机楼层数
    local floorCount = math.random(1, 2)
    local roofHeight = floorCount * 10

    -- 屋顶
    local roof = Instance.new("Part")
    roof.Size = Vector3.new(20, 2, 20)
    roof.Position = house.Position + Vector3.new(0, roofHeight + 18, 0)
    roof.Anchored = true
    roof.BrickColor = BrickColor.new("Dark red")
    roof.Material = Enum.Material.Brick
    roof.Parent = baseplate

    -- 门
    local door = Instance.new("Part")
    door.Size = Vector3.new(4, 10, 0.5)
    door.Position = house.Position + Vector3.new(0, 5, -10)
    door.Anchored = true
    door.BrickColor = BrickColor.new("Brown")
    door.Material = Enum.Material.Wood
    door.Parent = baseplate

    -- 窗户
    for i = -1, 1, 2 do
        local window = Instance.new("Part")
        window.Size = Vector3.new(4, 6, 0.5)
        window.Position = house.Position + Vector3.new(i * 7, 5, -1)
        window.Anchored = true
        window.BrickColor = BrickColor.new("Institutional white")
        window.Material = Enum.Material.Glass
        window.Transparency = 0.5
        window.Parent = baseplate
    end
end

-- 创建山坡的函数
local function createHill(baseplate, position, size)
    local hill = Instance.new("Part")
    hill.Size = size
    hill.Position = baseplate.Position + position
    hill.Anchored = true
    hill.BrickColor = BrickColor.new("Earth green")
    hill.Material = Enum.Material.Grass
    hill.Shape = Enum.PartType.Hill
    hill.Parent = baseplate
end

-- 创建水的函数
local function createWater(baseplate, position, size)
    local water = Instance.new("Part")
    water.Size = size
    water.Position = baseplate.Position + position
    water.Anchored = true
    water.BrickColor = BrickColor.new("Bright blue")
    water.Material = Enum.Material.Water
    water.Transparency = 0.5
    water.Parent = baseplate
end

-- 创建道路的函数
local function createRoad(baseplate, position, size)
    local road = Instance.new("Part")
    road.Size = size
    road.Position = baseplate.Position + position
    road.Anchored = true
    road.BrickColor = BrickColor.new("Really black")
    road.Material = Enum.Material.Asphalt
    road.Parent = baseplate
end

-- 创建泥土的函数
local function createDirt(baseplate, position, size)
    local dirt = Instance.new("Part")
    dirt.Size = size
    dirt.Position = baseplate.Position + position
    dirt.Anchored = true
    dirt.BrickColor = BrickColor.new("Dirt")
    dirt.Material = Enum.Material.Grass
    dirt.Parent = baseplate
end

-- 创建NPC的函数
local function createNPC(baseplate, position)
    local npc = Instance.new("Part")
    npc.Size = Vector3.new(2, 2, 2)
    npc.Position = baseplate.Position + position
    npc.Anchored = true
    npc.BrickColor = BrickColor.new("Bright yellow")
    npc.Material = Enum.Material.SmoothPlastic
    npc.Parent = baseplate
    -- 添加NPC的Humanoid
    local humanoid = Instance.new("Humanoid")
    humanoid.Parent = npc
    -- 添加NPC的HumanoidRootPart
    local rootPart = Instance.new("Part")
    rootPart.Size = Vector3.new(2, 2, 2)
    rootPart.Position = npc.Position
    rootPart.Anchored = true
    rootPart.BrickColor = BrickColor.new("Bright yellow")
    rootPart.Material = Enum.Material.SmoothPlastic
    rootPart.Parent = npc
    npc.HumanoidRootPart = rootPart
end

-- 创建平台和房屋
local function createPlatformAndHouses()
    local baseplate = createHidingPlace()
    for i = 1, 5 do
        local housePosition = Vector3.new(-250 + (i - 1) * 60, 10, -250)
        createHouse(baseplate, housePosition)
    end
    -- 创建山坡
    createHill(baseplate, Vector3.new(0, 0, 500), Vector3.new(100, 20, 100))
    -- 创建水
    createWater(baseplate, Vector3.new(0, 0, 1000), Vector3.new(50, 1, 50))
    -- 创建道路
    createRoad(baseplate, Vector3.new(0, 0, 0), Vector3.new(1500, 1, 1500))
    -- 创建泥土
    createDirt(baseplate, Vector3.new(0, 0, 200), Vector3.new(50, 1, 50))
    -- 创建NPC
    createNPC(baseplate, Vector3.new(0, 0, 300))
end

    return baseplate
end

-- 传送玩家到隐藏地点的函数
local function teleportToHidingPlace()
    if not hidingPlace then
        game.StarterGui:SetCore("SendNotification", {
            Title = "错误",
            Text = "平台未创建"
        })
        return
    end
    if not atHidingPlace then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        originalPosition = character.HumanoidRootPart.Position
        local hidingPlacePosition = CFrame.new(hidingPlace.Position) * CFrame.new(0, 5, 0)
        character.HumanoidRootPart.CFrame = hidingPlacePosition
        atHidingPlace = true
    end
end

-- 返回玩家原来位置的函数
local function returnToOriginalPosition()
    if atHidingPlace then
        local player = game.Players.LocalPlayer
        local character = player.Character
        character.HumanoidRootPart.CFrame = CFrame.new(originalPosition)
        atHidingPlace = false
    end
end

-- 调用xgo:Toggle函数，并传入回调函数onXgoToggle
xgo:Toggle({Title="假延迟[敌人可见]",Content = "使用目的:\n它将导致延迟(Ping)/触发开启;离开例如点,A和B,如果你在点A|切换:开|然后转到点B,然后点击|切换:关|每个人都会看到你移动,并且能够在他落后的时候攻击他", Default = false,Callback = onXgoToggle})
-- 创建平台的函数
xgo:Button({
    Title = "创建/删除空中平台",
    Content = "点击创建或删除平台",
    Callback = function()
        if hidingPlace and hidingPlace:IsA("Part") then
            hidingPlace:Destroy()
            hidingPlace = nil
            atHidingPlace = false
            originalPosition = nil -- 重置原始位置
        else
            hidingPlace = createHidingPlace()
        end
    end
})

-- 创建传送开关按钮
xgo:Toggle({
    ["Title"] = "传送到天空平台",
    ["Default"] = false,
    ["Callback"] = function(xgo)
        if xgo then
            teleportToHidingPlace()
        else
            returnToOriginalPosition()
        end
    end
})
xgo:TextInput({["Title"]= "旋转",["Place Holder Text"] = "旋转速度",["Clear Text On Focus"] = false,TextDisappear = true,Callback = function(Value)
        local speed = tonumber(Value)
        local plr = game:GetService("Players").LocalPlayer
        repeat task.wait() until plr.Character
        local humRoot = plr.Character:WaitForChild("HumanoidRootPart")
        local humanoid = plr.Character:WaitForChild("Humanoid")
        humanoid.AutoRotate = true
        local existingVelocity = humRoot:FindFirstChild("Spinbot")
        if existingVelocity then
        existingVelocity:Destroy() end
        if speed and speed ~= 0 then
        local velocity = Instance.new("AngularVelocity")
        velocity.Attachment0 = humRoot:WaitForChild("RootAttachment")
        velocity.MaxTorque = math.huge
        velocity.AngularVelocity = Vector3.new(0, speed, 0)
        velocity.Parent = humRoot
        velocity.Name = "Spinbot" end end})
xgo:Button({Title="冻结自己 可以将自己暂停",Content ="随时冻结使自己无法移动",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/creepstu/fuzzy-octo-giggle/main/Source"))()end})
xgo:Button({Title="拥抱R6",Content ="",Callback = function()HugTool = Instance.new("Tool")HugTool.Name = "拥抱\nOff" HugTool.RequiresHandle = false HugTool.ToolTip = "拥抱 R6" HugTool.Parent = game.Players.LocalPlayer.Backpack HugTool.Equipped:Connect(function()HugTool.Name = "拥抱\nOn" Anim_1 = Instance.new("Animation")Anim_1.AnimationId = "rbxassetid://283545583" Play_1 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim_1)Anim_2 = Instance.new("Animation")Anim_2.AnimationId = "rbxassetid://225975820" Play_2 = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim_2)Play_1:Play()Play_2:Play()end)HugTool.Unequipped:Connect(function()HugTool.Name = "拥抱\nOff" Play_1:Stop()Play_2:Stop()end)end})
xgo:Toggle({["Title"]="穿墙",["Default"] = false,["Callback"] = function(state)local player = game.Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait() local steppedConnection if state then Noclip = true steppedConnection = game:GetService("RunService").Stepped:Connect(function() if Noclip then for _, child in pairs(game.Workspace:GetChildren()) do if child.Name == player.Name and child:IsA("Model") then for _, part in pairs(child:GetChildren()) do if part:IsA("BasePart") then part.CanCollide = false end end end end else steppedConnection:Disconnect()end end) else Noclip = false if character then for _, part in pairs(character:GetChildren()) do if part:IsA("BasePart") then part.CanCollide = true end end end end end})
xgo:Toggle({["Title"]="自动互动",["Content"] = "",["Default"] = false,["Callback"] = function(state)if state then autoInteract = true while autoInteract do for _, descendant in pairs(workspace:GetDescendants()) do if descendant:IsA("ProximityPrompt") then fireproximityprompt(descendant)end end task.wait(0.25)end else autoInteract = false  end end})
xgo:Button({Title="失重[可以被人当球踢]",Content ="",Callback=function()local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local Camera = workspace.CurrentCamera
local SPEED_MULTIPLIER = 30
local JUMP_POWER = 60
local JUMP_GAP = 0.3
local character = game.Players.LocalPlayer.Character
for i,v in ipairs(character:GetDescendants()) do if v:IsA("BasePart") then v.CanCollide = false   end end
local ball = character.HumanoidRootPart
ball.Shape = Enum.PartType.Ball
ball.Size = Vector3.new(5,5,5)
local humanoid = character:WaitForChild("Humanoid")
local params = RaycastParams.new()
params.FilterType = Enum.RaycastFilterType.Blacklist
params.FilterDescendantsInstances = {character}
local tc = RunService.RenderStepped:Connect(function(delta)
   ball.CanCollide = true
   humanoid.PlatformStand = true
if UserInputService:GetFocusedTextBox() then return end
if UserInputService:IsKeyDown("W") then ball.RotVelocity -= Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER end
if UserInputService:IsKeyDown("A") then ball.RotVelocity -= Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER end
if UserInputService:IsKeyDown("S") then ball.RotVelocity += Camera.CFrame.RightVector * delta * SPEED_MULTIPLIER end
if UserInputService:IsKeyDown("D") then ball.RotVelocity += Camera.CFrame.LookVector * delta * SPEED_MULTIPLIER end
--ball.RotVelocity = ball.RotVelocity - Vector3.new(0,ball.RotVelocity.Y/50,0)
end)
UserInputService.JumpRequest:Connect(function()
local result = workspace:Raycast(
ball.Position,
Vector3.new(0,
-((ball.Size.Y/2)+JUMP_GAP),
0), params)
if result then
ball.Velocity = ball.Velocity + Vector3.new(0,JUMP_POWER,0)end end)
Camera.CameraSubject = ball
humanoid.Died:Connect(function() tc:Disconnect() end) end})
xgo:Button({Title="显示FPS",["Content"] = "",Callback = function()
local ScreenGui = Instance.new("ScreenGui")
local FpsLabel = Instance.new("TextLabel")
ScreenGui.Name = "FPSGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
FpsLabel.Name = "FPSLabel"
FpsLabel.Size = UDim2.new(0, 100, 0, 50)
FpsLabel.Position = UDim2.new(0.75,20,0.075,20)--位置
FpsLabel.BackgroundTransparency = 1
FpsLabel.Font = Enum.Font.SourceSansBold
FpsLabel.Text = "FPS: 0"
FpsLabel.TextSize = 20
FpsLabel.TextColor3 = Color3.fromRGB(255, 165, 0) --颜色
FpsLabel.Parent = ScreenGui
local frameCounter = 0
function updateFpsLabel()
    frameCounter = frameCounter + 1
    if frameCounter >= 20 then -- 20帧
local fps = math.floor(1 / game:GetService("RunService").RenderStepped:Wait())
        FpsLabel.Text = "FPS: " .. fps
        frameCounter = 0    end end
game:GetService("RunService").RenderStepped:Connect(updateFpsLabel)
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") end})
xgo:Button({Title="显示ping",["Content"] = "",Callback = function()
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Ping = Instance.new("ScreenGui")
local Pingtext = Instance.new("TextLabel")
Ping.Name = "Ping"
Ping.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Ping.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Ping.ResetOnSpawn = false
Pingtext.Name = "Pingtext"
Pingtext.Parent = Ping
Pingtext.BackgroundTransparency = 1
local initialPingPositionPC = UDim2.new(1, -230, 0, 0)
local initialFPSPositionPC = UDim2.new(1, -120, 0, 0)
local initialPingPositionMobile = UDim2.new(1, -230, 1, -353)
local initialFPSPositionMobile = UDim2.new(1, -120, 1, -353)
local initialPingPosition = initialPingPositionPC
local initialFPSPosition = initialFPSPositionPC
Pingtext.Position = initialPingPosition
Pingtext.Size = UDim2.new(0, 100, 0, 25)
Pingtext.Font = Enum.Font.SourceSans
Pingtext.Text = "Ping: "
Pingtext.TextColor3 = Color3.fromRGB(255, 255, 255)
Pingtext.TextStrokeTransparency = 0.5
Pingtext.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
Pingtext.TextScaled = true
Pingtext.TextSize = 14.000
Pingtext.TextWrapped = true
RunService.RenderStepped:Connect(function(ping) 
    Pingtext.Text = "Ping: " .. game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString(math.round(2/ping))
end)-- xxxxxxxxxxxxgo
local lastTime = tick()
local frameCount = 0
local TextLabel = Instance.new("TextLabel") 
TextLabel.Name = "FPSLabel"
TextLabel.Parent = Ping
TextLabel.BackgroundTransparency = 1
TextLabel.Position = initialFPSPosition
TextLabel.Size = UDim2.new(0, 45, 0, 25)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "FPS: "
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextStrokeTransparency = 0.5
TextLabel.TextStrokeColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
-- Función para formatear el FPS y cambiar el color si está por debajo de 25
local function FormatFPS(fps)
local formattedFPS = string.format("FPS: %d", math.floor(fps + 0.5))
    -- Cambiar el color del texto si los FPS están por debajo de 25
    if fps < 30 then
        TextLabel.TextColor3 = Color3.new(1, 0, 0) -- Rojo
else    TextLabel.TextColor3 = Color3.new(1, 1, 1) -- Blanco
end return formattedFPS
end     -- Actualización de FPS
RunService.RenderStepped:Connect(function()
local currentTime = tick() frameCount = frameCount + 1 if currentTime - lastTime >= 1 then
local fps = frameCount / (currentTime - lastTime) TextLabel.Text = FormatFPS(fps) frameCount = 0 lastTime = currentTime
end    end) -- Función para actualizar las posiciones según el entorno
local function updatePositions(isMobile) if isMobile then
        initialPingPosition = initialPingPositionMobile
        initialFPSPosition = initialFPSPositionMobile
else    initialPingPosition = initialPingPositionPC
        initialFPSPosition = initialFPSPositionPC
end    end      -- Detectar cambios en la interfaz de usuario (PC a móvil y viceversa)
UserInputService.UserInterfaceChanged:Connect(function()
local isMobile = UserInputService.TouchEnabled updatePositions(isMobile)Pingtext.Position = initialPingPosition TextLabel.Position = initialFPSPosition end) end})
xgo:Button({Title="无敌",["Content"] = "",Callback = function()
local lp = game:GetService "Players".LocalPlayer  if lp.Character:FindFirstChild "Head" then
local char = lp.Character char.Archivable = true
local new = char:Clone() new.Parent = workspace lp.Character = new wait(2)
local oldhum = char:FindFirstChildWhichIsA "Humanoid"
local newhum = oldhum:Clone() newhum.Parent = char newhum.RequiresNeck = false oldhum.Parent = nil wait(2) lp.Character = char new:Destroy() wait(1) newhum:GetPropertyChangedSignal("Health"):Connect( function()if newhum.Health <= 0 then oldhum.Parent = lp.Character wait(1) oldhum:Destroy() end end)workspace.CurrentCamera.CameraSubject = char if char:FindFirstChild "Animate" then char.Animate.Disabled = true wait(.1)char.Animate.Disabled = false end lp.Character:FindFirstChild "Head":Destroy() end end})
xgo:Button({Title="重新加入游戏", ["Content"] = "",Callback = function()game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId,game.JobId,game:GetService("Players").LocalPlayer)end})
xgo:Button({Title="重新加入并回到你原来的地点", ["Content"] = "",Callback = function()local Player = game.Players.LocalPlayer
local Character = Player.Character or false
local Humanoid = Character and Character:FindFirstChildOfClass("Humanoid") or false
local RootPart = Humanoid and Humanoid.RootPart or false
local PrimaryPart = Character and Character.PrimaryPart or false
local BasePart = Character and Character:FindFirstChildWhichIsA("BasePart", true) or false
local Camera = workspace:FindFirstChildWhichIsA("Camera") or false
local OldPos
if RootPart then
    OldPos = RootPart.CFrame
elseif PrimaryPart then
    OldPos = PrimaryPart.CFrame
elseif BasePart then
    OldPos = BasePart.CFrame
elseif Camera then
    OldPos = Camera.Focus
end
queue_on_teleport(string.format([[
    if not game:IsLoaded() then
        game["Loaded"]:wait()
    end
    local Players = game:GetService("Players")
    local Player = Players.LocalPlayer
    local Character = Player.Character or Player.CharacterAppearanceLoaded:wait()
    local RootPart = Character and Character:WaitForChild("HumanoidRootPart")
    local CurrentPos = RootPart and RootPart.CFrame
    if not CurrentPos then return end
    repeat
        RootPart.CFrame = CFrame.new(%s)
        RootPart.Velocity = Vector3.new()
        task.wait()
    until RootPart.CFrame ~= CurrentPos
]], tostring(OldPos)))
Player:Kick("...")
pcall(function()
game:GetService("GuiService"):ClearError()
end)
task.delay(0.1, function()
for i = 1,2 do
pcall(function()
game:GetService("GuiService"):ClearError()
end)
wait(.25)
end
game:GetService("GuiService"):ClearError()
end)
while true do
game:GetService("TeleportService"):TeleportToPlaceInstance(game.PlaceId, game.JobId, game.Players.LocalPlayer)
task.wait()
end end})
xgo:Button({Title="保存游戏",["Content"] = "",Callback = function()saveinstance()end})
xgo:Button({Title="离开游戏",["Content"] = "",Callback = function()game:Shutdown()end})
xgo:Button({Title="进入人少的服务器",["Content"] = "",Callback = function()local Http = game:GetService("HttpService")local TPS = game:GetService("TeleportService")local Api = "https://games.roblox.com/v1/games/" local _place = game.PlaceId local _servers = Api.._place.."/servers/Public?sortOrder=Asc&limit=100" function ListServers(cursor)  local Raw = game:HttpGet(_servers .. ((cursor and "&cursor="..cursor) or ""))  return Http:JSONDecode(Raw) end local Server, Next; repeat  local Servers = ListServers(Next)  Server = Servers.data[1]  Next = Servers.nextPageCursor until Server TPS:TeleportToPlaceInstance(_place,Server.id,game.Players.LocalPlayer)end})
xgo:Button({Title="最高帧率", ["Content"] = "启动最高帧率",Callback = function()setfpscap(999)end})
xgo:Button({Title="速度跳跃工具",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/JMvdFSQX"))()end})
xgo:Button({Title="人物坐下",["Content"] = "",Callback = function()local player = game.Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait()local humanoid = character:WaitForChild("Humanoid")if humanoid and character then humanoid.Sit = true else warn("没有找到人形或人物.")end end})
xgo:Button({Title="人物坐下",["Content"] = "单独开关",Callback = function()  loadstring(game:HttpGet("https://pastebin.com/raw/7RHML3DK"))()end})
xgo:Toggle({Title="夜视",Content = "夜晚的时候可以让你看得很清楚",Default = false,Callback = function(Value)if Value then game.Lighting.Ambient = Color3.new(1, 1, 1)else game.Lighting.Ambient = Color3.new(0, 0, 0)end	end})
xgo:Button({Title="接受死亡",Content ="遇到bug了吧",Callback= function()loadstring(game:HttpGet("https://pastefy.app/mwbRJ43v/raw"))()wait(0.1) game.Players.LocalPlayer.Character.Humanoid.Health=0 end})  
xgo:Button({Title="玩家动作抓取",Content ="Id抓取器",Callback= function()loadstring(game:HttpGet("https://pastebin.com/raw/Pv2YGjEK"))()end})  
xgo:Button({Title="查看你的背包有几个工具",Content ="",Callback= function()local Players = game:GetService("Players")local StarterGui = game:GetService("StarterGui") local LocalPlayer = Players.LocalPlayer local function notifyToolCount()local toolCount = 0 for _, item in ipairs(LocalPlayer.Backpack:GetChildren()) do if item:IsA("Tool") then toolCount = toolCount + 1 end end StarterGui:SetCore("SendNotification",{Title = "工具计数更新",Text = "你有 " .. toolCount .. " 工具在背包里.", Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play() Duration = 5  end notifyToolCount()end})  
xgo = UniversalTab:Section({Title = "x-ฅ通用ฅ",Content ="ฅ基本通用的道具ฅ"})
xgo:Button({Title="对玩家进行观战",Content ="可以观战游戏内的玩家",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628llllffaaaYXZS.123/refs/heads/main/%E8%A7%82%E6%88%98%E7%8E%A9%E5%AE%B6"))()end})
xgo:Button({Title="玩家进入通知",Content ="有新玩家进入后通知",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/boyscp/scriscriptsc/main/bbn.lua"))()end})
xgo:Button({Title="小ƓƠFe合集",Content ="Fe所有合集",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/Fe"))()end})
xgo:Button({Title="后空翻",Content ="",Callback = function()loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-Backflip-Script-18595"))()end})
xgo:Toggle({["Title"]="无限跳",["Content"] = "",["Default"] = false,["Callback"] = function(xgo)Jump = xgo game.UserInputService.JumpRequest:Connect(function()if Jump then game.Players.LocalPlayer.Character.Humanoid:ChangeState("Jumping") end end) end})
xgo:Button({Title="踏空行走",Content ="可以在空中行走",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Float'))()end})
xgo:Button({Title="全图传送 ",Content ="地图点到哪传送哪",Callback = function() mouse = game.Players.LocalPlayer:GetMouse() tool = Instance.new("Tool") tool.RequiresHandle = false tool.Name = "小go全图内任意传送" tool.Activated:connect(function() local pos = mouse.Hit+Vector3.new(0,2.5,0) pos = CFrame.new(pos.X,pos.Y,pos.Z) game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos end) tool.Parent = game.Players.LocalPlayer.Backpack end})
xgo:Button({Title="铁拳[能打飞人]",Content ="可以用铁拳来教训人",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/0Ben1/fe/main/obf_rf6iQURzu1fqrytcnLBAvW34C9N55kS9g9G3CKz086rC47M6632sEd4ZZYB0AYgV.lua.txt')))()end})
xgo:Button({Title="xgo免费动画包",Content ="可以更改你的动作 别人可见",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E5%85%8D%E8%B4%B9%E5%8A%A8%E7%94%BB%E5%8C%85.lua"))()end})
xgo:Button({Title="动作",Content ="可以更改你的动作,别人可见",Callback = function()loadstring(game:HttpGet("https://yarhm.goteamst.com/scr?channel=afem"))()end})
xgo:Button({Title="动作 R6",Content ="R6动作更改",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/ocfi/Animations-obfus/refs/heads/main/obfus"))()end})
xgo:Button({Title="飞行[电脑]",Content ="飞行速度很快",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/08Adf252"))()end})
xgo:Button({Title="goto飞行",Content ="飞行",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/rtbZ0mBW"))()end})
xgo:Button({Title="宙斯汉化飞行",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/ArceusX-Fly.lua"))()end})
xgo:Button({Title="goto飞车",Content ="可以使车子飞行",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%A3%9E%E8%BD%A6"))()end})
xgo:Button({Title="goto百倍飞行",Content ="百倍飞行",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8F%E5%AE%87%E9%A3%9E"))()end})
xgo:Button({Title="穿墙[推荐]",Content ="穿墙",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/Tbq4EuBf"))()end})
xgo:Button({Title="穿墙汉化",Content ="穿墙",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/TtmScripter/OtherScript/main/Noclip"))()end})
xgo:Button({Title="甩人通用",Content ="甩飞游戏内的所有人",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%94%A9%E4%BA%BA%E9%80%9A%E7%94%A8"))()end})
xgo:Button({Title="锁定甩飞 不过你也会死",Content ="锁定甩飞,可以搜索玩家名称进行甩飞",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-FREAKY-FLING/main/kawaii_freaky_fling.lua"))()end})
xgo:Button({Title="xgo锁定甩飞",Content ="锁定甩飞,可以搜索玩家名称进行甩飞",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%20%E9%94%81%E5%AE%9A%E7%94%A9%E9%A3%9E.lua"))()end})
xgo:Button({Title="小go超级无敌旋转",Content ="无敌旋转",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%88%9D%E4%BB%A3%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()end})
xgo:Button({Title="小go超级无敌旋转2.0",Content ="无敌旋转",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E5%B0%8Fgo%E6%B1%89%E5%8C%96%E7%94%A9%E9%A3%9E"))()end})
xgo:Button({Title="触碰甩飞",Content ="触碰到玩家甩飞",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/tWcH48zt"))()end})
xgo:Button({Title="F3X",Content ="改变局内工具",Callback = function()loadstring(game:GetObjects("rbxassetid://6695644299")[1].Source)()end})
xgo:Button({Title="工具包（三个经典工具）",Content ="三个工具经典",Callback = function()loadstring(game:HttpGet("https://cdn.wearedevs.net/scripts/BTools.txt"))()end})
xgo:Button({Title="工具挂",Content ="工具菜单",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Bebo-Mods/BeboScripts/main/StandAwekening.lua"))()end})
xgo:Button({Title="建筑工具",Content ="可复制建筑来进行建造",Callback = function()Hammer = Instance.new("HopperBin")Hammer.Name = "锤子" Hammer.BinType = 4 Hammer.Parent = game.Players.LocalPlayer.Backpack	Clone = Instance.new("HopperBin")Clone.Name = "克隆" Clone.BinType = 3 Clone.Parent = game.Players.LocalPlayer.Backpack Grab = Instance.new("HopperBin")Grab.Name = "抓取" Grab.BinType = 2 end})
xgo:Button({Title="xgo键盘",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo%E5%BB%BA%E7%9B%98.lua"))()end})
xgo:Button({Title="键盘",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt"))()end})
xgo:Button({Title="替身",Content ="可以创造分身",Callback = function()loadstring(game:HttpGet(('https://raw.githubusercontent.com/SkrillexMe/SkrillexLoader/main/SkrillexLoadMain')))()end})
xgo = UniversalTab:Section({Title = "x-ฅ通用ฅ2",Content = "ฅ通用道具ฅ2"})
xgo:Button({Title="反挂机",Content ="防止20分钟后强制掉线",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/9fFu43FF"))()end})
xgo:Button({Title="反挂机1",Content ="防止20分钟后强制掉线 计时",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/gLkx6yhL"))()end})
xgo:Button({Title="反挂机2",Content ="防止20分钟后强制掉线 计时",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/1A348JKJ"))()end})
xgo:Button({Title="选择玩家传送",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%20xgo%E7%8E%A9%E5%AE%B6%E4%BC%A0%E9%80%81.lua"))()end})
xgo:Button({Title="把玩家传送到高空",Content ="把玩家传送到高空进行自由落体",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/WYBZTRv9"))()end})
xgo:Button({Title="玩家控制",Content ="可搭配所有射击游戏",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E7%8E%A9%E5%AE%B6%E6%8E%A7%E5%88%B6"))()end})
xgo:Button({Title="xgo制作幽灵状态 可能会掉血",Content ="幽灵状态进入后,别人不可见",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/0HhGVadL"))() end})
xgo:Button({Title="隐身[亲测有效]",Content ="隐身进入隐身玩家不可见",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/3Rnd9rHf"))()end})
xgo:Button({Title="隐身[xgo制作]",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/GUqrbC54"))()end})
xgo:Button({Title="隐身道具",Content ="",Callback = function()loadstring(game:HttpGet("https://gist.githubusercontent.com/skid123skidlol/cd0d2dce51b3f20ad1aac941da06a1a1/raw/f58b98cce7d51e53ade94e7bb460e4f24fb7e0ff/%257BFE%257D%2520Invisible%2520Tool%2520(can%2520hold%2520tools)"))()end})
local invis_on = false -- 默认隐身状态为关闭
-- 创建声音对象
local sound = Instance.new("Sound", game.Players.LocalPlayer:WaitForChild("PlayerGui"))
sound.SoundId = "rbxassetid://3398620867"
sound.Volume = 1
local function setTransparency(character, transparency)
    for _, part in pairs(character:GetDescendants()) do
        if part:IsA("BasePart") or part:IsA("Decal") then
            part.Transparency = transparency
        end
    end
end
local function toggleInvisibility()
    invis_on = not invis_on -- 切换隐身状态
    sound:Play()
    if invis_on then
        -- 开启隐身
        local savedpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        wait()
        game.Players.LocalPlayer.Character:MoveTo(Vector3.new(-25.95, 84, 3537.55))
        wait(.15)
        local Seat = Instance.new('Seat', game.Workspace)
        Seat.Anchored = false
        Seat.CanCollide = false
        Seat.Name = 'invischair'
        Seat.Transparency = 1 -- 使椅子不可见
        Seat.Position = Vector3.new(-25.95, 84, 35370.55)
        local Weld = Instance.new("Weld", Seat)
        Weld.Part0 = Seat
        Weld.Part1 = game.Players.LocalPlayer.Character:FindFirstChild("Torso") or game.Players.LocalPlayer.Character.UpperTorso
        wait()
        Seat.CFrame = savedpos
        setTransparency(game.Players.LocalPlayer.Character, 0.5)
        game.StarterGui:SetCore("SendNotification", {
            Title = "作者[xxxxgo]";
            Text = "隐身开启";
            Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150";
            Duration = 1;
        })
    else
        -- 关闭隐身
        local invisChair = workspace:FindFirstChild('invischair')
        if invisChair then
            invisChair:Destroy()
        end
        setTransparency(game.Players.LocalPlayer.Character, 0)
        game.StarterGui:SetCore("SendNotification", {
            Title = "作者[xxxxgo]";
            Text = "隐身关闭";
            Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150";
            Duration = 1;
        })
    end
end
-- 创建按钮
xgo:Button({
    Title = "隐身切换",
    Content = "点击切换隐身状态",
    Callback = function()
        toggleInvisibility()
    end
})
xgo:Button({Title="墙体透明工具",Content ="",Callback = function()loadstring(game:HttpGet("https://pastefy.app/vPzYHKAb/raw"))()end})
xgo:Button({Title="全部透明透明工具",Content ="",Callback = function()XRayVision = Instance.new("Tool") XRayVision.Name = "透明工具" XRayVision.RequiresHandle = false XRayVision.Parent = game.Players.LocalPlayer.Backpack local function enableXRay() for _, Part in pairs(workspace:GetDescendants()) do if Part:IsA("BasePart") and not Part:IsDescendantOf(game.Players.LocalPlayer.Character) then Part.Transparency = 0.5 end end end local function disableXRay() for _, Part in pairs(workspace:GetDescendants()) do if Part:IsA("BasePart") and not Part:IsDescendantOf(game.Players.LocalPlayer.Character) then Part.Transparency = 0 end end end local xRayEnabled = false XRayVision.Activated:Connect(function()if xRayEnabled then disableXRay()else enableXRay()end xRayEnabled = not xRayEnabled end)end})
xgo:Button({Title="锁定视角人物可移动",Content ="将视角锁定",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/6eVUiUnv"))()end})
xgo:Button({Title="锁定视角 摄像机",Content ="可以将视角锁定人物可移动",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%94%81%E5%AE%9A%E8%A7%86%E8%A7%92"))()end})
xgo:Button({Title="自由摄像机",Content ="将视角锁定",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/YcTbP0Wh"))()end})
xgo:Button({Title="一键脱衣[衬衫之类]",Content ="将衬衫之类的衣服脱下",Callback = function()local player = game.Players.LocalPlayer local character = player.Character or player.CharacterAdded:Wait()local function removeClothes() for _, item in pairs(character:GetChildren()) do if item:IsA("Shirt") or item:IsA("Pants") then item:Destroy() end end end removeClothes()end})
xgo:Button({Title="xgo一键脱衣2.0",Content ="将除衬衫以外，衣服脱下，R6有效果",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/kNV2MkKY"))()end})
xgo:Button({Title="鼠标(手机非常不建议用)",Content ="鼠标应用脚本错误时使用",Callback = function()loadstring(game:HttpGet(('https://pastefy.ga/V75mqzaz/raw')))()end})
xgo:Button({Title="悬浮鼠标",Content ="鼠标应用脚本错误时使用",Callback = function()loadstring(game:HttpGet(('https://pastefy.app/58d8d52G/raw')))()end})
xgo:Button({Title="外网找的几个道具",Content ="",Callback = function()loadstring(game:HttpGet("https://gist.githubusercontent.com/dark-modz/b04e28198c8eeb1408921a1560792152/raw/67739a2bc571093976e6cd7e51fb526dedd75861/tools"))()end})
xgo:Button({Title="死亡笔记",Content ="死亡笔记",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E6%AD%BB%E4%BA%A1%E7%AC%94%E8%AE%B0"))()end})
xgo:Button({Title="漂浮控制器",Content ="教程（手机需要键盘）:1. J-飞起来    2. K-回到手中",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/jJEXYrbF"))()end}) 
xgo:Button({Title="道具控制器",Content ="教程（手机需要键盘）:1. Q - 靠近   2. E - 离远   3. Y - 投掷   4. J - 超级投掷   5. U - 使物体自转   6. P - 使物体悬浮在空中   7. X - 走得更远一点   8. L - 使方块变直并锁定在前部",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/qCXsAu9Z"))()end}) 
xgo:Button({Title="预算传送门枪2.0",Content ="PC控制：鼠标左键：蓝色传送门 | 鼠标右键：橙色传送门 | R键：消除传送门 | F键：手电筒 | E键：拾取未固定的部件 | C键：放大 | VR控制：右触发器：蓝色传送门 | B键：橙色传送门 | X键：消除传送门 | 左触发器：手电筒 | Y键：拾取未固定的部件",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/obf_t4yPT7828E7S20LlfoVJI8wPLE48hbvu08RcDY416v6253v2jOk12DpoXIY8yOO2.lua%20(1).txt"))()end}) 
xgo:Button({Title="GOBBY助手",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/Nx7sbCMX"))()end})
xgo:Button({Title= "Btools",Content = "",Callback = function()loadstring(game:HttpGet(('https://pastefy.ga/zxwQDjbc/raw'),true))()end})
xgo:Button({Title= "念力工具",Content = "",Callback = function()loadstring(game:HttpGet(('https://paste-drop.com/raw/QkaPV67S9E'),true))()end})
xgo:Button({Title= "假工具",Content = "",Callback = function()loadstring(game:HttpGet(('https://pastefy.app/VYIAk3o1/raw'),true))()end})
xgo:Button({Title= "雾工具",Content = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/bxgUc8BX"))()end})
xgo:Button({Title="漂浮工具",Content = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/cg6RPfxD"))()end})
xgo = UniversalTab:Section({Title = "x-ฅ娱乐ฅ",Content ="ฅ娱乐ฅ"})
xgo:Button({Title="变R6",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/Imagnir/r6_anims_for_r15/main/r6_anims.lua", true))()end})
xgo:Button({
    Title = "举起玩家FE",
    ["Content"] = "当你点击玩家时可以将玩家举起来",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local mouse = player:GetMouse()
        local camera = workspace.CurrentCamera
        local ts = game:GetService("TweenService")

        function createTween(part, cframe, ttime)
            local tweenInfo = TweenInfo.new(ttime)
            local tween = ts:Create(part, tweenInfo, {CFrame = cframe})
            tween:Play()
            tween.Completed:Wait()
        end

        local outline = Instance.new("Highlight")
        local target = nil

        mouse.Button1Up:Connect(function()
            if mouse.Target then
                local model = mouse.Target:FindFirstAncestorOfClass("Model")
                if model and model:FindFirstChild("Humanoid") then
                    camera.CameraSubject = model.Humanoid
                    target = model
                    outline.Parent = model
                else
                    outline.Parent = nil
                end
            end
        end)

        game:GetService("RunService").RenderStepped:Connect(function()
            if player.Character:FindFirstChild("HumanoidRootPart") then
                player.Character.HumanoidRootPart.Velocity = Vector3.new(0, 0, 0)
                if target and target:FindFirstChild("HumanoidRootPart") then
                    if target.HumanoidRootPart.CFrame.Y + 20 < player.Character.HumanoidRootPart.CFrame.Y then
                        tween:Cancel()
                    end
                end
            end
        end)

        while task.wait() do
            if target ~= nil and target:FindFirstAncestorOfClass("Workspace") and target ~= player.Character and player.Character:FindFirstChild("HumanoidRootPart") and target:FindFirstChild("HumanoidRootPart") then
                local character = player.Character
                local hrp = character.HumanoidRootPart
                local thrp = target.HumanoidRootPart
                hrp.CFrame = thrp.CFrame * CFrame.Angles(math.rad(90), 0, 0) + thrp.CFrame.UpVector * -10
            end
            if target ~= nil and target:FindFirstAncestorOfClass("Workspace") and target ~= player.Character and player.Character:FindFirstChild("HumanoidRootPart") and target:FindFirstChild("HumanoidRootPart") then
                local character = player.Character
                local hrp = character.HumanoidRootPart
                local thrp = target.HumanoidRootPart
                local rot = thrp.CFrame * CFrame.Angles(math.rad(25), math.rad(25), math.rad(25))
                createTween(hrp, rot, 1)
            end
        end
    end
})
xgo = BlackholeTab:Section({Title = "x-ฅ黑洞ฅ",Content = "ฅ使周围物体吸附或循环ฅ"})
-- 获取游戏中的服务和玩家信息
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer
local Workspace = game:GetService("Workspace")
-- 初始化黑洞角度和半径变量
local angle = 1
local radius = 10
local blackHoleActive = false
-- 设置玩家函数
local function setupPlayer()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    -- 创建一个文件夹和部件，用于作为黑洞的锚点
    local Folder = Instance.new("Folder", Workspace)
    local Part = Instance.new("Part", Folder)
    local Attachment1 = Instance.new("Attachment", Part)
    Part.Anchored = true
    Part.CanCollide = false
    Part.Transparency = 1
    return humanoidRootPart, Attachment1
end
-- 获取玩家的HumanoidRootPart和Attachment1
local humanoidRootPart, Attachment1 = setupPlayer()
-- 如果网络环境未设置，则初始化网络环境
if not getgenv().Network then
    getgenv().Network = {
        BaseParts = {},
        Velocity = Vector3.new(14.46262424, 14.46262424, 14.46262424)
    }
    -- 保留部件函数
    Network.RetainPart = function(part)
        if typeof(part) == "Instance" and part:IsA("BasePart") and part:IsDescendantOf(Workspace) then
            table.insert(Network.BaseParts, part)
            part.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
            part.CanCollide = false
        end
    end
    -- 启用部件控制函数
    local function EnablePartControl()
        LocalPlayer.ReplicationFocus = Workspace
        RunService.Heartbeat:Connect(function()
            sethiddenproperty(LocalPlayer, "SimulationRadius", math.huge)
            for _, part in pairs(Network.BaseParts) do
                if part:IsDescendantOf(Workspace) then
                    part.Velocity = Network.Velocity
                end
            end
        end)
    end
    -- 启用部件控制
    EnablePartControl()
end
-- 强制控制部件函数
local function ForcePart(v)
    if v:IsA("Part") and not v.Anchored and not v.Parent:FindFirstChild("Humanoid") and not v.Parent:FindFirstChild("Head") and v.Name ~= "Handle" then
        for _, x in next, v:GetChildren() do
            if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                x:Destroy()
            end
        end
        if v:FindFirstChild("Attachment") then
            v:FindFirstChild("Attachment"):Destroy()
        end
        if v:FindFirstChild("AlignPosition") then
            v:FindFirstChild("AlignPosition"):Destroy()
        end
        if v:FindFirstChild("Torque") then
            v:FindFirstChild("Torque"):Destroy()
        end
        v.CanCollide = false
        local Torque = Instance.new("Torque", v)
        Torque.Torque = Vector3.new(1000000, 1000000, 1000000)
        local AlignPosition = Instance.new("AlignPosition", v)
        local Attachment2 = Instance.new("Attachment", v)
        Torque.Attachment0 = Attachment2
        AlignPosition.MaxForce = math.huge
        AlignPosition.MaxVelocity = math.huge
        AlignPosition.Responsiveness = 500
        AlignPosition.Attachment0 = Attachment2
        AlignPosition.Attachment1 = Attachment1
    end
end
-- 切换黑洞状态函数
local function toggleBlackHole()
    blackHoleActive = not blackHoleActive
    if blackHoleActive then
        for _, v in next, Workspace:GetDescendants() do
            ForcePart(v)
        end

        Workspace.DescendantAdded:Connect(function(v)
            if blackHoleActive then
                ForcePart(v)
            end
        end)
        spawn(function()
            while blackHoleActive and RunService.RenderStepped:Wait() do
                angle = angle + math.rad(2)
                local offsetX = math.cos(angle) * radius
                local offsetZ = math.sin(angle) * radius
                Attachment1.WorldCFrame = humanoidRootPart.CFrame * CFrame.new(offsetX, 0, offsetZ)
            end
        end)
    else
        Attachment1.WorldCFrame = CFrame.new(0, -1000, 0)
    end
end
-- 玩家角色添加事件
LocalPlayer.CharacterAdded:Connect(function()
    humanoidRootPart, Attachment1 = setupPlayer()
    if blackHoleActive then
        toggleBlackHole()
    end
end)
-- 创建文本输入控件用于设置黑洞半径
xgo:TextInput({
    ["Title"] = "黑洞半径",
    ["Place Holder Text"] = "输入半径",
    ["Clear TextOn Focus"] = false,
    ["Callback"] = function(Value)
        -- 将输入值转换为数字，并设置黑洞半径
        local radiusValue = tonumber(Value)
        if radiusValue then
            radius = radiusValue
        end
    end
})
-- 创建切换按钮控件用于开启或关闭黑洞
xgo:Toggle({
    ["Title"] = "循环黑洞",
    ["Content"] = "",
    ["Default"] = false,
    ["Callback"] = function(Value)
        if Value then
            toggleBlackHole()
        else
            blackHoleActive = false
        end
    end
})
-- 循环更新角度
spawn(function()
    while true do
        RunService.RenderStepped:Wait()
        if blackHoleActive then
            angle = angle + math.rad(2)
        end
    end
end)
xgo = BlackholeTab:Section({Title = "x-ฅ黑洞脚本ฅ",Content = "ฅ使周围物体吸附或循环ฅ"})
xgo:Button({Title="键盘可单独按键",Content ="键盘可单独寻找按键",Callback = function()loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()end}) 
xgo:Button({Title="循环黑洞复刻版",Content ="",Callback = function()loadstring(game:HttpGet("https://github.com/GTAFAW/llllllllllllllllIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIIllIlIllIlIllllllllllllllllllllllllllllllllll/raw/main/XGOHUBHD.lua"))()end})
xgo:Button({Title="黑洞[PC]",Content ="教程:吸附:E 删除:Q",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/BLACKHOLE_SCRIPT_FOR_PC_ONLY.txt"))()end})
xgo:Button({Title="黑洞小go汉化",Content ="", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E2"))()end})
xgo:Button({Title="黑洞汉化",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/jQd1HedN"))()end})    
xgo:Button({Title="黑洞汉化2",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/uZbcH9Ve"))()end})    
xgo:Button({Title="卡哇伊黑洞",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/uAXpqjJA"))()end})    
xgo:Button({Title="卡哇伊光环\n推荐指数[8, 25, 60][10, 50, 60]",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/hellohellohell012321/KAWAII-AURA/main/kawaii_aura.lua"))()end})    
xgo:Button({Title="黑洞0.4",Content ="",Callback = function()loadstring(game:HttpGet('https://gist.githubusercontent.com/AxolotlBmgo/8888080921c2b426a32dd9ff587baff1/raw/d45e03afed3c1716f36523bbf6dd741d3d2aad00/gistfile1.txt'))()end})
xgo:Button({Title="黑洞1.5",Content ="",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/%E9%BB%91%E6%B4%9E'))()end})
xgo:Button({Title="循环V2",Content ="万磁使周围的物体旋转", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/BOOSBS/666/refs/heads/main/656"))()end})
xgo:Button({Title="循环v3",Content ="万磁使周围的物体旋转", Callback = function()loadstring(game:HttpGet("https://gist.githubusercontent.com/YummKiller/551dc3ab6bef93943f86fa059df9800a/raw/379d601fd2193a54e57093ab076ff97d6cce1dbc/gistfile1.txt"))()end})     
xgo:Button({
    Title = "黑洞工具",
    Content = "",
    Callback = function()
        print('Hello World!')
        local UserInputService = game:GetService("UserInputService")
        local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
        local Folder = Instance.new("Folder", game:GetService("Workspace"))
        local Part = Instance.new("Part", Folder)
        Part.Anchored = true
        Part.CanCollide = false
        Part.Transparency = 1
        local Attachment1 = Instance.new("Attachment", Part)
        local Updated = Mouse.Hit + Vector3.new(0, 5, 0)
        local ForceStrength = 1000

        local function TeleportPart(v)
            if v:IsA("Part") and not v.Anchored and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
                Mouse.TargetFilter = v
                for _, x in pairs(v:GetChildren()) do
                    if x:IsA("BodyAngularVelocity") or x:IsA("BodyForce") or x:IsA("BodyGyro") or x:IsA("BodyPosition") or x:IsA("BodyThrust") or x:IsA("BodyVelocity") or x:IsA("RocketPropulsion") then
                        x:Destroy()
                    end
                end
                if v:FindFirstChild("Attachment") then
                    v:FindFirstChild("Attachment"):Destroy()
                end
                v.CanCollide = false
                local Torque = Instance.new("BodyAngularVelocity", v)
                Torque.AngularVelocity = Vector3.new(0, math.rad(ForceStrength), 0)
                Torque.MaxTorque = Vector3.new(10000, 10000, 10000)
                local AlignPosition = Instance.new("AlignPosition", v)
                local Attachment2 = Instance.new("Attachment", v)
                AlignPosition.MaxForce = 50000
                AlignPosition.MaxVelocity = 50
                AlignPosition.Responsiveness = 50
                AlignPosition.Attachment0 = Attachment2
                AlignPosition.Attachment1 = Attachment1
            end
        end

        local function TeleportAllParts()
            for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                if v:IsA("Part") and v.Parent ~= game:GetService("Players").LocalPlayer.Character then
                    TeleportPart(v)
                end
            end
        end

        TeleportAllParts()
        game:GetService("Workspace").Changed:Connect(function(child)
            if child:IsA("Part") and child.Parent ~= game:GetService("Players").LocalPlayer.Character then
                TeleportPart(child)
            end
        end)

        UserInputService.InputBegan:Connect(function(Key, Chat)
            if Key.KeyCode == Enum.KeyCode.E and not Chat then
                Updated = Mouse.Hit + Vector3.new(0, 5, 0)
            end
        end)

        spawn(function()
            while wait() do
                Attachment1.WorldCFrame = Updated
            end
        end)
    end
loadstring(game:HttpGet(('https://raw.githubusercontent.com/SAZXHUB/Control-update/main/README.md'),true))()end})
xgo:Button({Title="黑洞按E",Content ="万磁使周围的物体旋转", Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/Q9N6hALr"))()end})     
xgo:Button({Title="黑洞E键控制",Content ="黑洞按E",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/BbYdbeDY"))()end})
xgo:Button({Title="低配版不会太卡E键控制",Content ="配置",Callback = function() loadstring(game:HttpGet("https://pastebin.com/raw/Sx6PY4gV"))()end})
xgo:Button({Title="卡哇伊黑洞（可以锁人的哦）",Content ="可以进行锁定玩家", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/114514.IIjjjjiiiallloiia.xxxxg/refs/heads/main/%E9%BB%91%E6%B4%9E",true))()end})
xgo:Button({Title="控制fe黑洞（配置低别用）",Content ="可使周围物体旋转占位适配手机",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/F'e"))()end})
xgo = TalkTab:Section({["Title"] = "x-ฅ聊天中枢ฅ", ["Content"] = "ฅ聊天工具ฅ"})
loadstring(game:HttpGet('https://pastebin.com/raw/E0P5BSyz'))() -- 反聊天记录器（xgo制作）
function chat(msg)if game:GetService("TextChatService").ChatVersion == Enum.ChatVersion.TextChatService then game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(msg)else game.ReplicatedStorage.DefaultChatSystemChatEvents.SayMessageRequest:FireServer(msg, "All")end end 
local method = nil
xgo:Dropdown({["Title"] = "聊天程序",["Multi"] = false,["Options"] = {"ěx́ǎḿṕĺě", "éxạmṕĺe", "ẹ̲х̲ạ̲ṃ̲р̲ḷ̲ẹ̲", "e>x>a>m>p>l>e", "￵example", "3></-\\/\\/\\p|_3"},["Default"] = {"xxxxgo"},["Place Holder Text"] = "选择一种聊天程序",["Callback"] = function(val)method = val end})
function bypasstext(text, method)
    if method == 1 then
        local function addAccents(word)
            local accents = {
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
            }

            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents[letter] then
                    bypassedWord = bypassedWord .. accents[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end

            return bypassedWord
        end

        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents(word))
            end
            return table.concat(words, " ")
        end

        return bypassString(text)
    elseif method == 2 then
        local function addAccents2(word)
            local accents2 = {
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
            }

            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents2[letter] then
                    bypassedWord = bypassedWord .. accents2[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end

            return bypassedWord
        end

        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents2(word))
            end
            return table.concat(words, " ")
        end

        return bypassString(text)
    elseif method == 3 then
        local function addAccents3(word)
            local accents3 = {
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
            }

            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents3[letter] then
                    bypassedWord = bypassedWord .. accents3[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end

            return bypassedWord
        end

        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents3(word))
            end
            return table.concat(words, " ")
        end

        return bypassString(text)
    elseif method == 4 then
        local function modifyText(input)
            local modifiedText = ""
            for i = 1, #input do
                modifiedText = modifiedText .. string.sub(input, i, i) .. ">"
            end

            return modifiedText
        end

        return modifyText(text)
    elseif method == 5 then
        local function addAccents5(word)
            local accents5 = {
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
            }

            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i)
                if accents5[letter] then
                    bypassedWord = bypassedWord .. accents5[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end

            return bypassedWord
        end

        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents5(word))
            end
            return table.concat(words, "")
        end

        return bypassString(text)
    elseif method == 6 then
        local function addAccents6(word)
            local accents6 = {
                a = "/-\\",
                b = "L3",
                c = "C",
                d = "CL",
                e = "3",
                f = "F",
                g = "G",
                h = "|-|",
                i = "L",
                j = "J",
                k = "L<",
                l = "|_",
                m = "/\\/\\",
                n = "/\\/",
                o = "0",
                p = "P",
                q = "Q",
                r = "R",
                s = "$",
                t = "T",
                u = "|_|",
                v = "\\/",
                w = "\\/\\/",
                x = "><",
                y = "Y",
                z = "Z"
            }

            local bypassedWord = ""
            for i = 1, #word do
                local letter = word:sub(i, i):lower()
                if accents6[letter] then
                    bypassedWord = bypassedWord .. accents6[letter]
                else
                    bypassedWord = bypassedWord .. letter
                end
            end

            return bypassedWord
        end

        local function bypassString(input)
            local words = {}
            for word in string.gmatch(input, "%S+") do
                table.insert(words, addAccents6(word))
            end
            return table.concat(words, " ")
        end

        return bypassString(text)
    end
end
xgo:TextInput({["Title"]="聊天",["Content"] = "",["Place Holder Text"] = "话语",["Clear Text On Focus"] = true,["Callback"] = function(val)
        if val ~= "" then
            if method == "ěx́ǎḿṕĺě" then
                chat(bypasstext(val, 1))
            elseif method == "éxạmṕĺe" then
                chat(bypasstext(val, 2))
            elseif method == "ẹ̲х̲ạ̲ṃ̲р̲ḷ̲ẹ̲" then
                chat(bypasstext(val, 3))
            elseif method == "e>x>a>m>p>l>e" then
                chat(bypasstext(val, 4))
            elseif method == "￵example" then
                chat(bypasstext(val, 5))
            elseif method == "3></-\\/\\/\\p|_3" then
                chat(bypasstext(val, 6))
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "操作错误";   Text = "看起来您没有选择任何方法！";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
             end
            else
                game:GetService("StarterGui"):SetCore("SendNotification", {Title = "操作错误";   Text = "看起来您没有输入任何文本！";  Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"}) Duration = 1.5; local audioId = 3398620867  local sound = Instance.new("Sound")  sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
             end 
            end})
local function showNotificationIfEmpty()if spamMessage == "" then local Notify = xxxgoui:Notify({Title = "xgo Hub",	["Description"] = "- goto_O R's 2.1581版",["Color"] = Color3.fromRGB(255, 0, 255),Content = "你好像还没有说话吧",["Time"] = 9,["Delay"] = 10})end end
local function checkAndSendSpam()if spaming and spamMessage ~= "" then repeat wait(spamInterval)chat(spamMessage) until not spaming end end
local function toggleSpamming(val)if val then showNotificationIfEmpty() checkAndSendSpam() else spaming = false end end
xgo:TextInput({["Title"]="填写你想说的话",["Content"] = "点击下面自动发送即可开始",["Place Holder Text"] = "话语",["Clear Text On Focus"] = true,["Callback"] = function(val)spamMessage = val toggleSpamming(spaming)end})
xgo:Slider({["Title"]="时间间隔",["Content"]="",["Min"] = 0,["Max"] = 100,["Increment"] = 1,["Default"] = 1,["ValueName"] = "seconds",["Callback"] = function(val)spamInterval = val toggleSpamming(spaming)end})
xgo:Toggle({["Title"]="自动发送",["Content"]="选好了再发",["Default"] = false,["Callback"] = function(val)spaming = val toggleSpamming(spaming)end})
xgo:Button({Title="修复过滤器",Content ="",Callback = function() chat("abcdefg()!")end})
xgo:Button({Title="聊天记录",Content ="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/bnQY7zVJ"))()end})
xgo:Button({Title="查玩家ip地址 聊天发送",Content ="只能吓唬人 因为是随机数字",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/BingusWR/FakeRobloxIPGrabber/refs/heads/main/FERobloxIpGrabberScrip"))()end})
xgo:Button({Title="传送到玩家面前循环（嘲讽）",Content ="",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/0Ben1/fe./main/Orbit%20GUI"))()end})
xgo:Button({Title="聊天绘画图",Content="在聊天上绘画",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/143628lllkaiiiiiwggv.panmn.lua/refs/heads/main/xz"))()end})
xgo:Button({Title="聊天Gui",Content="",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/jrNudA5M"))()end})
xgo:TextInput({["Title"]="聊天发送循环",["Content"] ="xgo提醒:别说一些容易被举报的话",["Place Holder Text"] = "输入你想说的话",  ["Clear Text On Focus"] = false,["Callback"] = function(V)local TeleportService = game:GetService("TeleportService")local Players = game:GetService("Players")local ReplicatedStorage = game:GetService("ReplicatedStorage")local function spamChat()local message = V while true do game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")wait(2)end end local function flingAll()while true do loadstring(game:HttpGet(" https://raw scripts . net/raw/Universal-Script-FLING-ALL-Script-17590 "))()wait(3)TeleportService:Teleport(game.PlaceId, Players.LocalPlayer)end    end loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/222"))()spawn(spamChat)spawn(flingAll)end})
xgo:Button({Title="聊天机器人[xgo]",Content ="聊天工具",Callback = function()loadstring(game:HttpGetAsync("https://pastefy.app/FVH7aXSz/raw"))()end})
xgo:Button({Title="Al聊天机器人",Content ="聊天工具",Callback = function()loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Synergy-Networks/products/main/BetterBypasser/loader.lua"))()end})
xgo:Button({Title="消息发送栏",Content ="",Callback = function()loadstring(game:HttpGetAsync("https://pastefy.app/EHAtY5Yq/raw"))()end})
xgo:Button({Title="骂人无违规",Content="不知道有没有效果",Callback = function()loadstring(game:GetObjects("rbxassetid://1262435912")[1].Source)()end})
xgo:Button({Title="xgo随机骂人输出",Content ="需要匹配键盘,按G发送",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/lIlIlIlIlI24568/85463.lllllIIIIIlIlIIll.ldzs/refs/heads/main/%E8%81%8A%E5%A4%A9%E4%B8%AD%E6%9E%A2"))()end})
xgo:Button({Title="无违规发送",Content ="",Callback = function()loadstring(game:HttpGet("https://pastefy.app/v475txp0/raw"))()end})
xgo:Button({Title="正确的无违规发送",Content ="",Callback = function()loadstring(game:HttpGet("https://pastefy.app/prfazxgq/raw"))()end})
xgo:Button({Title="聊天翻译（Español）",Content ="",Callback = function()loadstring(game:HttpGet('https://pastebin.com/raw/0CH1hTBB'))()end})
xgo:Button({Title="聊天翻译（英文）",Content ="",Callback = function()loadstring(game:HttpGet('https://pastebin.com/raw/9M6gbKZk'))()end})
xgo:Button({Title="聊天翻译（葡萄牙语）",Content ="",Callback = function()loadstring(game:HttpGet('https://pastebin.com/raw/FGV0z6a1'))()end})
xgo:Button({Title="聊天翻译（法语）",Content ="",Callback = function()loadstring(game:HttpGet('https://pastebin.com/raw/80ub935D'))()end})
xgo = SelfishTab:Section({Title = "x-ฅ自瞄ฅ",Content = "ฅ自瞄准星ฅ"})
xgo:Button({Title="辅助瞄准",["Content"]="",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/main/universal%20silent%20aim%20by%20Mortalexploits'))()end})
xgo:Button({Title="普通中心点",["Content"] = "",Callback = function()local d = Drawing.new("Circle")d.Color, d.Radius, d.Filled, d.Visible = Color3.new(0, 0, 8), 3, true, false game:GetService("RunService").RenderStepped:Connect(function()d.Position = workspace.CurrentCamera.ViewportSize / 2 d.Visible = true end)end})
xgo:Button({Title="战神十字架（小）",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/q2qZbbbx"))()end})
xgo:Button({Title="战神十字架（中）",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/1HT0VwKz"))()end})
xgo:Button({Title="战神十字架（超级）",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/Q2Evf9mH"))()end})
xgo:Button({Title="可调节十字准心",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/kn0a/Crosshair-M/main/Source.lua"))()end})
xgo:Button({Title="辅助瞄准v2",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/universal%20silent%20aim%20by%20Mortalexploits'))()end})        
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
xgo:Seperator("Pc自瞄手机不可用")
local function createAimbotSettings(title, isBlatant, smoothingFactor, shakinessFactor)
    print("正在加载自瞄...")
    local fov = 120 -- 更大的视野范围（120度）
    local maxDistance = 400 -- 检查玩家的最大距离
    local maxTransparency = 1
    local teamCheck = false -- 开启队伍检查（设置为false以忽略队伍）
    local RunService = game:GetService("RunService")
    local UserInputService = game:GetService("UserInputService")
    local Players = game:GetService("Players")
    local Cam = game.Workspace.CurrentCamera
    -- 创建视野范围的绘图
    local FOVring = Drawing.new("Circle")
    FOVring.Visible = true
    FOVring.Thickness = 2
    FOVring.Color = Color3.fromRGB(255, 255, 255) -- 设置视野范围圆圈颜色为白色
    FOVring.Filled = false
    FOVring.Radius = fov
    FOVring.Position = Cam.ViewportSize / 2
    FOVring.Transparency = 0 -- 设置透明度为0（不透明）
    local isAimbotActive = false -- 标记自瞄是否激活（仅在按住鼠标右键时）
    -- 更新视野范围圆圈位置的函数
    local function updateDrawings()
        local camViewportSize = Cam.ViewportSize
        FOVring.Position = camViewportSize / 2
    end
    -- 删除视野范围圆圈并停止自瞄的函数
    local function onKeyDown(input)
        if input.KeyCode == Enum.KeyCode.Delete then
            RunService:UnbindFromRenderStep("FOVUpdate")
            FOVring:Remove()
        end
    end
    UserInputService.InputBegan:Connect(onKeyDown)
    -- 平滑地使相机看向目标位置的函数
    local function lookAtSmoothly(targetPosition)
        local currentPosition = Cam.CFrame.Position
        local direction = (targetPosition - currentPosition).unit
        local smoothCFrame = CFrame.new(currentPosition, currentPosition + direction)
        local interpolatedCFrame = Cam.CFrame:Lerp(smoothCFrame, smoothingFactor)
        Cam.CFrame = interpolatedCFrame
    end
    -- 平滑且带抖动地使相机看向目标位置的函数
    local function lookAtSmoothlyWithShake(targetPosition)
        local currentPosition = Cam.CFrame.Position
        local direction = (targetPosition - currentPosition).unit
        local shakeX = math.random() * shakinessFactor * 2 - shakinessFactor
        local shakeY = math.random() * shakinessFactor * 2 - shakinessFactor
        local shakeZ = math.random() * shakinessFactor * 2 - shakinessFactor
        local shakeDirection = direction + Vector3.new(shakeX, shakeY, shakeZ)
        local smoothCFrame = CFrame.new(currentPosition, currentPosition + shakeDirection)
        local interpolatedCFrame = Cam.CFrame:Lerp(smoothCFrame, smoothingFactor)
        Cam.CFrame = interpolatedCFrame
    end
    -- 根据距离计算透明度的函数
    local function calculateTransparency(distance)
        local transparency = (1 - (distance / maxDistance)) * maxTransparency
        return transparency
    end
    -- 检查玩家是否存活的函数
    local function isPlayerAlive(player)
        local character = player.Character
        if character and character:FindFirstChild("Humanoid") then
            return character.Humanoid.Health > 0
        end
        return false
    end
    -- 在视野范围内找到最近玩家的函数
    local function getClosestPlayerInFOV(trg_part)
        local nearest = nil
        local last = math.huge
        local playerMousePos = Cam.ViewportSize / 2
        local localPlayer = Players.LocalPlayer
        for i = 1, #Players:GetPlayers() do
            local player = Players:GetPlayers()[i]
            if player and player ~= localPlayer and (not teamCheck or player.Team ~= localPlayer.Team) then
                if isPlayerAlive(player) then
                    local part = player.Character and player.Character:FindFirstChild(trg_part)
                    if part then
                        local ePos, isVisible = Cam:WorldToViewportPoint(part.Position)
                        local distance = (Vector2.new(ePos.x, ePos.y) - playerMousePos).Magnitude
                        if distance < last and isVisible and distance < fov and distance < maxDistance then
                            last = distance
                            nearest = player
                        end
                    end
                end
            end
        end
        return nearest
    end
    -- 开关队伍检查的函数
    local function toggleTeamCheck()
        teamCheck = not teamCheck
    end
    toggleTeamCheck() -- 在开始时切换队伍检查
    toggleTeamCheck()
    -- 检测鼠标右键是否按下或释放的函数
    UserInputService.InputBegan:Connect(function(input, gameProcessed)
        if gameProcessed then return end
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            isAimbotActive = true -- 鼠标右键按下时激活自瞄
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton2 then
            isAimbotActive = false -- 鼠标右键释放时取消自瞄
        end
    end)
    -- 每帧运行的更新函数
    RunService.RenderStepped:Connect(function()
        updateDrawings() -- 更新视野范围圆圈的位置
        if isAimbotActive then
            local closest = getClosestPlayerInFOV("Head")
            if closest and closest.Character:FindFirstChild("Head") then
                if isBlatant then
                    lookAt(closest.Character.Head.Position) -- 锁定最近玩家的头部位置
                else
                    lookAtSmoothlyWithShake(closest.Character.Head.Position) -- 平滑且带抖动地锁定最近玩家的头部位置
                end
            end
        end
        -- 根据距离更新视野范围圆圈的透明度
        local closest = getClosestPlayerInFOV("Head")
        if closest then
            local ePos, isVisible = Cam:WorldToViewportPoint(closest.Character.Head.Position)
            local distance = (Vector2.new(ePos.x, ePos.y) - (Cam.ViewportSize / 2)).Magnitude
            FOVring.Transparency = calculateTransparency(distance)
        else
            FOVring.Transparency = 0 -- 当没有玩家在范围内时保持视野范围圆圈不透明
        end
        wait(0.03) -- 小延迟以减少渲染步骤的负载
    end)
    print(title .. " 自瞄完全加载！")
    print("当玩家在您的视野范围内时，视野范围圆圈将出现！")
    print("要开启自瞄，请确保看向某人并按住鼠标右键以锁定目标！")
    print("这是一个PC脚本，作者暂时不会开发任何移动脚本。")
end
xgo:Button({Title="自瞄 : 明显", Content = "", Callback = function()
    createAimbotSettings("明显", true, 0, 0)
end})
xgo:Button({Title="自瞄 : 合法", Content = "", Callback = function()
    createAimbotSettings("合法", false, 0.1, 0)
end})
xgo:Button({Title="自瞄 : 超级合法 (抖动)", Content = "", Callback = function()
    createAimbotSettings("超级合法 (抖动)", false, 0.1, 0.05)
end})
xgo:Button({Title="自瞄 : 新手", Content = "", Callback = function()
    createAimbotSettings("新手", false, 0.02, 0.05)
end})
xgo = SelfishTab:Section({Title = "x-ฅESPฅ",Content = "ฅ透视 框架 血条ฅ"})
xgo:Button({Title="框架 血条 射线 准心",["Content"] = "依旧fl有 Bug 不过我已经改得非常好了",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/xgomn/143628llllffaaaYXZS.123/refs/heads/main/%E9%80%8F%E8%A7%86%E3%80%82%E6%A1%86%E6%9E%B6"))()ExunysDeveloperESP()end})
xgo:Button({Title="血条 射线",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/u1Mr5UkF"))()end})
xgo:Button({Title="人物框架",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/bJhnZ1bw"))()end})
xgo:Button({Title="人物射线",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/iygw9nNf"))()end}) 
xgo:Button({Title="骨骼显示",Content ="",Callback = function()
        local Players = game:GetService("Players")
        local RunService = game:GetService("RunService")
        local Camera = workspace.CurrentCamera
        local LocalPlayer = Players.LocalPlayer
        -- 定义不同rig类型的骨骼连接点
        local bodyConnections = {
            R15 = {
                {"Head", "UpperTorso"},
                {"UpperTorso", "LowerTorso"},
                {"LowerTorso", "LeftUpperLeg"},
                {"LowerTorso", "RightUpperLeg"},
                {"LeftUpperLeg", "LeftLowerLeg"},
                {"LeftLowerLeg", "LeftFoot"},
                {"RightUpperLeg", "RightLowerLeg"},
                {"RightLowerLeg", "RightFoot"},
                {"UpperTorso", "LeftUpperArm"},
                {"UpperTorso", "RightUpperArm"},
                {"LeftUpperArm", "LeftLowerArm"},
                {"LeftLowerArm", "LeftHand"},
                {"RightUpperArm", "RightLowerArm"},
                {"RightLowerArm", "RightHand"}
            },
            R6 = {
                {"Head", "Torso"},
                {"Torso", "Left Arm"},
                {"Torso", "Right Arm"},
                {"Torso", "Left Leg"},
                {"Torso", "Right Leg"}
            }
        }
        local function createLine()
            local line = Drawing.new("Line")
            line.Color = Color3.fromRGB(255, 255, 255)
            line.Thickness = 1
            line.Transparency = 1
            return line
        end
        local skeletons = {}
        local function updateSkeleton(player)
            if player == LocalPlayer then return end
            local character = player.Character
            if not character then return end
            local humanoid = character:FindFirstChild("Humanoid")
            if not humanoid then return end
            local rigType = humanoid.RigType.Name
            local connections = bodyConnections[rigType]
            if not connections then return end
            if not skeletons[player] then
                skeletons[player] = {}
            end
            for _, connection in pairs(connections) do
                local partA = character:FindFirstChild(connection[1])
                local partB = character:FindFirstChild(connection[2])
                if partA and partB then
                    local line = skeletons[player][connection[1] .. "-" .. connection[2]] or createLine()
                    local posA, onScreenA = Camera:WorldToViewportPoint(partA.Position)
                    local posB, onScreenB = Camera:WorldToViewportPoint(partB.Position)
                    if onScreenA and onScreenB then
                        line.From = Vector2.new(posA.X, posA.Y)
                        line.To = Vector2.new(posB.X, posB.Y)
                        line.Visible = true
                    else
                        line.Visible = false
                    end
                    skeletons[player][connection[1] .. "-" .. connection[2]] = line
                end
            end
        end
        local function removeSkeleton(player)
            if skeletons[player] then
                for _, line in pairs(skeletons[player]) do
                    line:Remove()
                end
                skeletons[player] = nil
            end
        end
        RunService.RenderStepped:Connect(function()
            for _, player in pairs(Players:GetPlayers()) do
                updateSkeleton(player)
            end
        end)
        Players.PlayerRemoving:Connect(function(player)
            removeSkeleton(player)
        end)
    end})
xgo:Button({Title="框架0.1",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/42Vqnapv"))()end})
xgo:Button({Title="彩色框架",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/bniV2ray"))()end})
xgo:Button({Title="xgo制作最强Esp",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://pastebin.com/raw/q2KSm6yd"))()end})
xgo:Button({Title="彩色Esp",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow62x/Universal/main/ESP"))()end})
xgo:Button({Title="ESP白色",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()end})
xgo:Button({Title="ESP 外网 电脑可用",["Content"] = "",Callback = function()loadstring(game:HttpGet('https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua'))()end})
xgo:Button({Title="ESP 猫头鹰中心 ",["Content"] = "逐渐适配手机",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/CriShoux/OwlHub/master/OwlHub.txt"))()end})
xgo:Button({Title="CheatX GUI", ["Content"] = "",Callback = function() local UILibrary = loadstring(game:HttpGet("https://pastebin.com/raw/V1ca2q9s"))() local MainUI = UILibrary.Load("CheatX - 3008") local Home = MainUI.AddPage("Home") local ESP = loadstring(game:HttpGet("https://kiriot22.com/releases/ESP.lua"))() ESP:Toggle(true) ESP.Players = false ESP.Tracers = false ESP.Boxes = false ESP.Names = false local function notify(message) game.StarterGui:SetCore("SendNotification", { Title = "CheatX"; Text = message; Icon = ""; Duration = 5; }) end local function teleportToItem(itemName) local donesearch = false for i,v in pairs(game:GetService("Workspace").GameObjects.Physical.Items:GetDescendants()) do if v.Name == "Root" and v.Parent.Name == itemName then game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame donesearch = true break end end if donesearch == false then notify("Item position not defined") end end ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Items, { Type = "Model", Color = Color3.fromRGB(0, 119, 255), IsEnabled = "itemESP" }) ESP:AddObjectListener(game:GetService("Workspace").GameObjects.Physical.Employees, { Type = "Model", CustomName = "Employee", Color = Color3.fromRGB(255, 0, 4), IsEnabled = "employeeToggle" }) Home.AddButton("Unlock Third Person", function() game.Players.LocalPlayer.CameraMaxZoomDistance = 50 game.Players.LocalPlayer.CameraMode = Enum.CameraMode.Classic end) Home.AddToggle("ESP", false, function(Value) ESP.Boxes = Value end) Home.AddToggle("ESP Tracers", false, function(Value) ESP.Tracers = Value end) Home.AddToggle("ESP Nametags", false, function(Value) ESP.Names = Value end) Home.AddToggle("Show Players", false, function(Value) ESP.Players = Value end) Home.AddToggle("Show Employees", false, function(Value) ESP.employeeToggle = Value end) Home.AddToggle("Show Items", false, function(Value) ESP.itemESP = Value end) local Teleports = MainUI.AddPage("Teleports") Teleports.AddButton("Teleport to Hotdog", function() teleportToItem("Hotdog") end) Teleports.AddButton("Teleport to Pizza", function() teleportToItem("Pizza") end) Teleports.AddButton("Teleport to Burger", function() teleportToItem("Burger") end) Teleports.AddButton("Teleport to Medkit", function() teleportToItem("Medkit") end) 	end })
xgo:Slider({["Title"]="Esp最大距离",["Content"] = "距离",["Min"] = 1,["Max"] = 100000,["Increment"] = 1,["Default"] = 100000,Color = Color3.fromRGB(255,255,255),["Callback"] = function(Value)getgenv().mptespdistance = Value end})
xgo:Slider({["Title"]="Esp厚度",["Content"] = "厚度",["Min"] = 1,["Max"] = 30,["Increment"] = 1,["Default"] = 2,Color = Color3.fromRGB(255,255,255),["Callback"] = function(Value)getgenv().mptespthickness = Value end})
xgo:Button({Title="xgo3d人物射线",["Content"] = "", Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/GTAFAW/goto/refs/heads/main/xgo3d%E4%BA%BA%E7%89%A9%E5%B0%84%E7%BA%BF.lua"))()end}) 
xgo:Button({Title="外网框架",["Content"] = "",Callback = function()loadstring(game:HttpGet("https://raw.githubusercontent.com/yzeedw/Mortalv2-main/refs/heads/main/UNIVERSAL%20AIMBOT%20V2"))()end}) 
xgo = SelfishTab:Section({Title = "x-ฅ范围ฅ",Content = "ฅ范围设置ฅ"})
local function changeHeadSize(headSize, colorChange)
    -- 获取玩家服务和本地玩家
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer
    -- 遍历所有玩家
    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local HumanoidRootPart = player.Character.HumanoidRootPart
            -- 设置新的Hitbox大小
            local newHitboxSize = Vector3.new(headSize, headSize, headSize)
            HumanoidRootPart.Size = newHitboxSize
            HumanoidRootPart.Transparency = 0.5
            HumanoidRootPart.CanCollide = false
            -- 如果启用颜色变化
            if colorChange then
                local hue = 0
                -- 每帧更新颜色
                game:GetService("RunService").RenderStepped:Connect(function()
                    hue = (hue + 0.01) % 1
                    HumanoidRootPart.Color = Color3.fromHSV(hue, 1, 1)
                end)
            else
                -- 如果不启用颜色变化，则重置颜色为默认值
                HumanoidRootPart.Color = Color3.new(1, 1, 1) -- 白色
            end
        end
    end
end
-- 默认头部大小
_G.HeadSize = 20;
-- 重置为默认大小的按钮
xgo:Button({Title="默认范围", ["Content"] = "范围20", Callback = function()
    _G.HeadSize = 20
    changeHeadSize(_G.HeadSize, false) -- 传入false以禁用颜色变化
end})
-- 中级范围的按钮
xgo:Button({Title="中级范围", ["Content"] = "范围100", Callback = function()
    _G.HeadSize = 100
    changeHeadSize(_G.HeadSize, false) -- 传入false以禁用颜色变化
end})
-- 高级范围的按钮
xgo:Button({Title="高级范围", ["Content"] = "范围500", Callback = function()
    _G.HeadSize = 500
    changeHeadSize(_G.HeadSize, false) -- 传入false以禁用颜色变化
end})
-- 范围修改的输入框
xgo:TextInput({["Title"]= "范围修改", ["Place Holder Text"] = "数值", ["Clear Text On Focus"] = false, Callback = function(value)
    _G.HeadSize = tonumber(value) or 20
    changeHeadSize(_G.HeadSize, false) -- 传入false以禁用颜色变化
end})
-- 彩色范围修改的输入框
xgo:TextInput({["Title"]= "彩色范围修改", ["Place Holder Text"] = "数值", ["Clear Text On Focus"] = false, Callback = function(value)
    local newSize = tonumber(value) or 20
    changeHeadSize(newSize, true) -- 传入true以启用颜色变化
end})
xgo = PropsTab:Section({Title = "x-ฅ道具ฅ1",Content = "ฅ武器类ฅ"})
local function createItemButton(name, idOrUrl)
    xgo:Button({
        Title = name, -- 只显示按钮的标题，即物品的名称
        Callback = function()
            if type(idOrUrl) == "string" and idOrUrl:match("^https?://") then
                -- 如果ID是一个URL，则从URL加载代码并执行
                local success, result = pcall(function()
                    local httpResult = game:HttpGet(idOrUrl)
                    return loadstring(httpResult)()
                end)
                if not success then
                    warn("Failed to load item from URL: " .. idOrUrl .. "\nError: " .. result)
                end
            else
                -- 如果ID是一个物品ID，则直接获取物品并放入背包
                local item = game:GetObjects("rbxassetid://" .. idOrUrl)[1]
                if item then
                    item.Parent = game.Players.LocalPlayer.Backpack
                else
                    warn("Failed to find item with ID: " .. idOrUrl)
                end
            end
        end
    })
end
local Items = {
    ["弹簧工具"] = "99119158",
    ["万能剪刀"] = "12685082209",
    ["普通剑"] = "8517347614",  
    ["我的世界钻石剑"] = "5138636091",
    ["MM2小刀"] = "3576051114",
    ["斧子"] = "9255749565",
    ["锤子"] = "1380979171",
    ["核弹"] = "10694662894",
    ["普通剪刀"] = "1305578915",
    ["撬棍"] = "134950292",
    ["龙骨炮"] = "10748604184",
    ["武士刀"] = "8668934198",
    ["经典剑"] = "47433",
    ["金属棒球棍"] = "12550781805",
    ["彩虹剑"] = "https://pastebin.com/raw/FW0zvFkH", --从外部资源加载
    ["M249"] = "https://pastebin.com/raw/cJWSByci",
    ["枪"] = "https://pastebin.com/raw/GWdRYDWk",
    ["剑"] = "https://pastebin.com/raw/QTnWUxB7",
    ["步枪"] = "https://pastebin.com/raw/g6B7EKez",
    ["子空间绊雷"] = "https://pastebin.com/raw/vMpNR73S",
    ["火箭筒"] = "https://raw.githubusercontent.com/persopoiu/scripts/main/rushbazooka.lua",
    ["AK47"] = "https://raw.githubusercontent.com/Mye123/Roblox-Scripts/master/AK-47.lua",
    ["seek枪"] = "https://raw.githubusercontent.com/persopoiu/scripts/main/seekgun.lua",
    ["香蕉枪"] = "https://raw.githubusercontent.com/MrNeRD0/Doors-Hack/main/BananaGunByNerd.lua",
    ["照明大炮"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Lightning%20Cannon",
    ["迷你枪"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Minigun",
    ["禁止锤子"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"
}
-- 创建按钮
for name, idOrUrl in pairs(Items) do
    createItemButton(name, idOrUrl)
end
xgo = PropsTab:Section({Title = "x-ฅ道具ฅ2",Content = "ฅ食品 玩偶 类ฅ"})
local function createItemButton(name, idOrUrl)
    xgo:Button({
        Title = name,
        Callback = function()
            if type(idOrUrl) == "string" and idOrUrl:match("^https?://") then
                local success, result = pcall(function()
                    local httpResult = game:HttpGet(idOrUrl)
                    return loadstring(httpResult)()
                end)
                if not success then
                    warn("Failed to load item from URL: " .. idOrUrl .. "\nError: " .. result)
                end
            else
                local item = game:GetObjects("rbxassetid://" .. idOrUrl)[1]
                if item then
                    item.Parent = game.Players.LocalPlayer.Backpack
                else
                    warn("Failed to find item with ID: " .. idOrUrl)
                end
            end
        end
    })
end
local Items = {
    ["气球"] = "844258278",
    ["普通书"] = "139194324",
    ["手机"] = "4919665667",
    ["油漆"] = "1287005601",
    ["Stop标志"] = "1305561850",
    ["钱/robux"] = "78678939",
    ["摄影机"] = "9239732180",
    ["牌子"] = "6752274751",
    ["手电"] = "11242492137",
    ["水瓶"] = "8678380361",
    ["油漆桶"] = "82578488",
    ["灯笼"] = "7301610554",
    ["火把"] = "3499523244",
    ["召唤一辆小汽车"] = "16725966639",
    ["DOORS骷髅钥匙"] = "11697889137",
    ["蛋糕[1]"] = "13175107839",
    ["冰淇淋"] = "110887863",
    ["蛋糕[2]"] = "1523953726",
    ["汉堡"] = "100522628",
    ["Prime(看起来像某一种饮料)"] = "12691961635",
    ["绷带"] = "9956323407",
    ["乐事薯片"] = "11979782807",
    ["普通蜡烛"] = "11222116941",
    ["咖啡"] = "5933367192",
    ["气球"] = "844258278",
    ["普通书"] = "139194324",
    ["杰夫玩偶"] = "13069619857",
    ["Screech玩偶"] = "12387752981",
    ["培根头(???)"] = "651205590",
    ["恐惧玩偶"] = "13071801863",
    ["screech抱枕 pss~"] = "https://pastebin.com/raw/W6LhkY6r",
    ["Seek玩偶"] = "https://pastebin.com/raw/e35wGTze",
    ["魔鬼辣火腿肠"] = "https://raw.githubusercontent.com/sharksharksharkshark/musical-pancake/main/huo.txt",
    ["魔法书"] = "https://raw.githubusercontent.com/K0t1n/Public/main/Magic%20Book",    
    ["巧克力棒"] = "https://raw.githubusercontent.com/K0t1n/Public/main/Chocolate%20Bar%20Script",
    ["夜视仪"] = "https://raw.githubusercontent.com/DeividComSono/Scripts/main/Scanner.lua",
    ["神圣手掌"] = "https://raw.githubusercontent.com/K0t1n/Public/main/Godly%20Hand"
}
for name, idOrUrl in pairs(Items) do
    createItemButton(name, idOrUrl)
end
xgo = PropsTab:Section({Title = "x-ฅ道具ฅ3",    Content = "ฅFE 变身 特效类ฅ"})
local function createItemButton(name, idOrUrl)
    xgo:Button({
        Title = name,
        Callback = function()
            if type(idOrUrl) == "string" and idOrUrl:match("^https?://") then
                local success, result = pcall(function()
                    local httpResult = game:HttpGet(idOrUrl)
                    return loadstring(httpResult)()
                end)
                if not success then
                    warn("Failed to load item from URL: " .. idOrUrl .. "\nError: " .. result)
                end
            else
                local item = game:GetObjects("rbxassetid://" .. idOrUrl)[1]
                if item then
                    item.Parent = game.Players.LocalPlayer.Backpack
                else
                    warn("Failed to find item with ID: " .. idOrUrl)
                end
            end
        end
    })
end
local Items = {
    ["火焰特效"] = "16408664901",
    ["FE C00lgui"] = "8127297852",
    ["大飞机"] = "https://pastebin.com/raw/EJS2Fde3",
    ["巫毒娃娃"] = "https://pastebin.com/raw/xqCCqeha",
    ["FE 1x1x1x1"] = "https://pastebin.com/raw/JipYNCht",
    ["FE用头"] = "https://pastebin.com/raw/BK4Q0DfU",
    ["鼠标"] = "https://pastefy.ga/V75mqzaz/raw",
    ["FE"] = "https://pastefy.ga/a7RTi4un/raw",
    ["超长**"] = "https://pastebin.com/raw/ESWSFND7",
    ["怪物"] = "https://pastebin.com/raw/jfryBKds",
    ["复仇者"] = "https://pastefy.ga/iGyVaTvs/raw",
    ["FE变玩家"] = "https://pastebin.com/raw/XR4sGcgJ",
    ["酷字符"] = "https://raw.githubusercontent.com/sinret/rbxscript.com-scripts-reuploads-/main/coolc",
    ["自动解体"] = "https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/Content/sishen",
    ["FE动画中心"] = "https://raw.githubusercontent.com/GamingScripter/Animation-Hub/main/Animation%20Gui",
    ["完了"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Linked%20Sword",
    ["牙帽战斗机"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer",
    ["NeptunianV"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Krystal%20Dance",
    ["克里斯塔尔舞蹈"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop",
    ["Dearsister"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Dearsister",
    ["工作室假人"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Studio%20Dummy",
    ["木偶大师"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Puppet%20Master",
    ["虐待狂的种族传播者"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sadist%20Genocider",
    ["星夹具"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Star%20Glitcher",
    ["狙击手"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper",
    ["警察"] = "https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Good%20Cop%20Bad%20Cop",
    ["琦玉"] = "https://raw.githubusercontent.com/Xingtaiduan/Script/refs/heads/main/FE/Saitama",
    ["FE猫娘R63"] = "https://raw.githubusercontent.com/Tescalus/Pendulum-Hubs-Source/main/Pendulum%20Hub%20V5.lua",
    ["变身**去操人"] = "https://raw.githubusercontent.com/LemonSquizerr/Universal-FE/refs/heads/main/Leaker%20v2",
    ["FE大长腿"] = "https://gist.githubusercontent.com/1BlueCat/7291747e9f093555573e027621f08d6e/raw/23b48f2463942befe19d81aa8a06e3222996242c/FE%2520Da%2520Feets",  
    ["操人"] = "https://raw.githubusercontent.com/XiaoYunCN/UWU/main/AHAJAJAKAK/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A/A.LUA"
}
for name, idOrUrl in pairs(Items) do
    createItemButton(name, idOrUrl)
end
