--混淆启动后时间较长
--XGOHUB服务器检测
--开启自启动脚本
wait(0.0114514)

local Camera = workspace.CurrentCamera
local uis = game:GetService("UserInputService")
local xgots = game:GetService("TweenService")
local xgoMain = Instance.new("ScreenGui")
local xgoLoader = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local xgoBlur = Instance.new("ImageLabel")
local UICorner_2 = Instance.new("UICorner")
local xgoquotas = Instance.new("TextLabel")
local xgoBar = Instance.new("Frame")
local UICorner_3 = Instance.new("UICorner")
local xgoLoaded = Instance.new("Frame")
local UICorner_4 = Instance.new("UICorner")

xgoMain.Name = "xgoMain"
xgoMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
xgoMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
xgoMain.ResetOnSpawn = false
xgoMain.DisplayOrder = 9999

xgoLoader.Name = "xgoLoader"
xgoLoader.Parent = xgoMain
xgoLoader.BackgroundColor3 = Color3.fromRGB(29, 29, 29)
xgoLoader.BackgroundTransparency = 0.200
xgoLoader.BorderColor3 = Color3.fromRGB(0, 0, 0)
xgoLoader.BorderSizePixel = 0
xgoLoader.Position = UDim2.new(0.436969697, 0, 0.455082744, 0)
xgoLoader.Size = UDim2.new(0, 0, 0, 76)
xgoLoader.Active = true

UICorner.Parent = xgoLoader

xgoBlur.Name = "xgoBlur"
xgoBlur.Parent = xgoLoader
xgoBlur.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
xgoBlur.BackgroundTransparency = 1.000
xgoBlur.BorderColor3 = Color3.fromRGB(0, 0, 0)
xgoBlur.BorderSizePixel = 0
xgoBlur.Position = UDim2.new(-0.00483091781, 0, 0, 0)
xgoBlur.Size = UDim2.new(0, 0, 0, 76)
xgoBlur.Image = "http://www.roblox.com/asset/?id=128885038925647"--启动图片
xgoBlur.ImageTransparency = 0.550

UICorner_2.Parent = xgoBlur

xgoquotas.Name = "xgoquotas"
xgoquotas.Parent = xgoLoader
xgoquotas.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
xgoquotas.BackgroundTransparency = 1.000
xgoquotas.BorderColor3 = Color3.fromRGB(0, 0, 0)
xgoquotas.BorderSizePixel = 0
xgoquotas.Position = UDim2.new(0.123442277, 0, 0.157894731, 0)
xgoquotas.Size = UDim2.new(0, 154, 0, 39)
xgoquotas.Font = Enum.Font.JosefinSans
xgoquotas.Text = "\"XGO HUB\""
xgoquotas.TextColor3 = Color3.fromRGB(255, 255, 255)
xgoquotas.TextSize = 20.000
xgoquotas.TextWrapped = true
xgoquotas.TextTransparency = 1

xgoBar.Name = "xgoBar"
xgoBar.Parent = xgoLoader
xgoBar.BackgroundColor3 = Color3.fromRGB(84, 84, 84)
xgoBar.BorderColor3 = Color3.fromRGB(0, 0, 0)
xgoBar.BorderSizePixel = 0
xgoBar.Position = UDim2.new(0.128272906, 0, 0.75, 0)
xgoBar.Size = UDim2.new(0, 154, 0, 6)
xgoBar.Active = true
xgoBar.BackgroundTransparency = 1

UICorner_3.Parent = xgoBar

xgoLoaded.Name = "xgoLoaded"
xgoLoaded.Parent = xgoLoader
xgoLoaded.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
xgoLoaded.BorderColor3 = Color3.fromRGB(0, 0, 0)
xgoLoaded.BorderSizePixel = 0
xgoLoaded.Position = UDim2.new(0.123441979, 0, 0.75, 0)
xgoLoaded.Size = UDim2.new(0, 0, 0, 6)
xgoLoaded.Active = true

UICorner_4.Parent = xgoLoaded

local popup = xgots:Create(xgoLoader, TweenInfo.new(2), {Size = UDim2.new(0, 207, 0, 76)})
popup:Play()

local popup2 = xgots:Create(xgoBlur, TweenInfo.new(2), {Size = UDim2.new(0, 207, 0, 76)})
popup2:Play()

wait(1)

local pop = xgots:Create(xgoquotas, TweenInfo.new(1), {TextTransparency = 0})
pop:Play()

wait(0.2)

local pop2 = xgots:Create(xgoBar, TweenInfo.new(1), {BackgroundTransparency = 0})
pop2:Play()

local Loading = xgots:Create(xgoLoaded, TweenInfo.new(2), {Size = UDim2.new(0, 97, 0, 6)})
Loading:Play()

wait(1.3)

local Loading2 = xgots:Create(xgoLoaded, TweenInfo.new(3.2), {Size = UDim2.new(0, 154, 0, 6)})
Loading2:Play()

wait(3.2)

local Loading2 = xgots:Create(xgoLoaded, TweenInfo.new(3.2), {Size = UDim2.new(0, 154, 0, 6)})
Loading2:Play()

wait(1.2)

local dis1 = xgots:Create(xgoBlur, TweenInfo.new(1), {ImageTransparency = 1})
dis1:Play()

local dis2 = xgots:Create(xgoLoader, TweenInfo.new(1), {BackgroundTransparency = 1})
dis2:Play()

local dis3 = xgots:Create(xgoBar, TweenInfo.new(1), {BackgroundTransparency = 1})
dis3:Play()

local dis4 = xgots:Create(xgoLoaded, TweenInfo.new(1), {BackgroundTransparency = 1})
dis4:Play()

wait(0.2)

local trans = xgots:Create(xgoquotas, TweenInfo.new(1.5), {TextTransparency = 1})
trans:Play()

xgoLoader.Visible = false
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.IgnoreGuiInset = true

local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")

local player = Players.LocalPlayer

local function onErrorMessageChanged(errorMessage)
    if errorMessage and errorMessage ~= "" then
        print("检测到错误: " .. errorMessage)

        if player then
            wait()
            TeleportService:Teleport(game.PlaceId, player)
        end
    end
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/XGOHUB.lua"))()
GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged)
local audioId = 3398620867 
local sound = Instance.new("Sound")
local function makeMessage(message)
    pcall(function()
        local msg = tostring(message)
        if game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral") then
          game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral"):DisplaySystemMessage(msg)
else      game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
                Text = msg,
                Color = Color3.fromRGB(255, 192, 203),
                Font = Enum.Font.GothamMedium,
                FontSize = 16
            })
        end
        playSound(Sound1)
    end)
end
--创造检测 GUI
local xgo = Instance.new("ScreenGui")
local Frame = Instance.new("ImageButton")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_1 = Instance.new("UICorner")
local CheckingGame = Instance.new("TextLabel")
local xgotick = Instance.new("ImageLabel")
local xgoeror = Instance.new("ImageLabel")
local xgoIcon = Instance.new("ImageLabel")
local LoadingImage = Instance.new("ImageLabel")
local Pattern = Instance.new("ImageLabel")
local keepthis = Instance.new("Frame")
local DropShadowHolder = Instance.new("Frame")
local DropShadow = Instance.new("ImageLabel")

--属性设置:

xgo.Name = "xgo"
xgo.Parent = game.CoreGui
xgo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Name = "Frame"
Frame.Parent = xgo
Frame.Active = false
Frame.BackgroundColor3 = Color3.fromRGB(11, 19, 31)--颜色
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.350, 0, 0.3, 0)--位置
Frame.Selectable = false
Frame.Size = UDim2.new(0, 353, 0, 195) --大小

ImageLabel.Parent = Frame
ImageLabel.BackgroundColor3 = Color3.fromRGB(11, 19, 31)--颜色
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(-0.000856399536, 0, -0.00353580713, 0)--位置
ImageLabel.Size = UDim2.new(0, 353, 0, 195)--大小
ImageLabel.Image = "rbxassetid://128885038925647" --背景
ImageLabel.ImageColor3 = Color3.fromRGB(0, 136, 255)--颜色
ImageLabel.ImageTransparency = 0.800

UICorner_1.Parent = ImageLabel

CheckingGame.Name = "CheckingGame"
CheckingGame.Parent = ImageLabel
CheckingGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)--颜色
CheckingGame.BackgroundTransparency = 1.000
CheckingGame.Position = UDim2.new(0.186968833, 0, 0.430298805, 0)--位置
CheckingGame.Size = UDim2.new(0, 219, 0, 27)--大小
CheckingGame.ZIndex = 3
CheckingGame.Font = Enum.Font.SourceSansBold
CheckingGame.Text = "检测游戏中"
CheckingGame.TextColor3 = Color3.fromRGB(255, 255, 255)--颜色
CheckingGame.TextSize = 20.000

xgotick.Name = "xgotick"
xgotick.Parent = ImageLabel
xgotick.BackgroundColor3 = Color3.fromRGB(0, 136, 255)--颜色
xgotick.BackgroundTransparency = 1.000
xgotick.Position = UDim2.new(0.432167143, 0, 0.566282034, 0)--位置
xgotick.Size = UDim2.new(0, 44, 0, 44)--大小
xgotick.Visible = false
xgotick.ZIndex = 2
xgotick.Image = "http://www.roblox.com/asset/?id=12072072258"  --检测正确图标
xgotick.ImageColor3 = Color3.fromRGB(0, 136, 255)--颜色

xgoeror.Name = "xgoeror"
xgoeror.Parent = ImageLabel
xgoeror.BackgroundColor3 = Color3.fromRGB(0, 136, 255)--颜色
xgoeror.BackgroundTransparency = 1.000
xgoeror.Position = UDim2.new(0.432167143, 0, 0.566282034, 0)--位置
xgoeror.Size = UDim2.new(0, 44, 0, 44)--大小
xgoeror.Visible = false
xgoeror.ZIndex = 2
xgoeror.Image = "http://www.roblox.com/asset/?id=12072094876"  --检测错误图标
xgoeror.ImageColor3 = Color3.fromRGB(255, 0, 0)--颜色

xgoIcon.Name = "xgoIcon"
xgoIcon.Parent = ImageLabel
xgoIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)--颜色
xgoIcon.BackgroundTransparency = 1.000
xgoIcon.Position = UDim2.new(0, 150, 0, 20)--位置
xgoIcon.Size = UDim2.new(0, 50, 0, 50)--大小
xgoIcon.ZIndex = 3
xgoIcon.Image = "http://www.roblox.com/asset/?id=128885038925647"  --标题图标

LoadingImage.Name = "LoadingImage"
LoadingImage.Parent = ImageLabel
LoadingImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)--颜色
LoadingImage.BackgroundTransparency = 1.000
LoadingImage.Position = UDim2.new(0.432083607, 0, 0.566502035, 0)--位置
LoadingImage.Size = UDim2.new(0, 44, 0, 44)--大小
LoadingImage.ZIndex = 3
LoadingImage.Image = "http://www.roblox.com/asset/?id=12072026346" --加载中.动画图
LoadingImage.ImageColor3 = Color3.fromRGB(255, 255, 255)--颜色

Pattern.Name = "Pattern"
Pattern.Parent = ImageLabel
Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)--颜色
Pattern.BackgroundTransparency = 1.000
Pattern.Size = UDim2.new(0, 353, 0, 195)--大小
Pattern.ZIndex = 2
Pattern.Image = "rbxassetid://128885038925647"  --背景材质
Pattern.ImageColor3 = Color3.fromRGB(99, 95, 98)--颜色
Pattern.ImageTransparency = 0.600
Pattern.ScaleType = Enum.ScaleType.Tile
Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
Pattern.TileSize = UDim2.new(0, 250, 0, 250)

keepthis.Name = "keepthis"
keepthis.Parent = Frame
keepthis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)--颜色
keepthis.Visible = false

DropShadowHolder.Name = "DropShadowHolder"
DropShadowHolder.Parent = Frame
DropShadowHolder.BackgroundTransparency = 1.000
DropShadowHolder.BorderSizePixel = 0
DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
DropShadowHolder.ZIndex = 0

DropShadow.Name = "DropShadow"
DropShadow.Parent = DropShadowHolder
DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
DropShadow.BackgroundTransparency = 1.000
DropShadow.BorderSizePixel = 0
DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)--位置
DropShadow.Size = UDim2.new(1, 47, 1, 47)--大小
DropShadow.ZIndex = 0
DropShadow.Image = "rbxassetid://128885038925647"  --阴影图片
DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
DropShadow.ImageTransparency = 0.500
DropShadow.ScaleType = Enum.ScaleType.Slice
DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

-- 脚本:
--系统发送
makeMessage("[系统]:你好欢迎使用xgohub（此消息仅自己可见）")Wait(0.01)
makeMessage("[系统]:客户端加载中...")Wait(0.1)
makeMessage("[系统]:开始检测..[脚本测试:玩得开心]")Wait(0.1)
makeMessage("[系统]:检测到玩家"..game.Players.LocalPlayer.DisplayName)Wait(0.1)
makeMessage("[系统]:用户名"..game.Players.LocalPlayer.Character.Name)Wait(0.1)
makeMessage("[系统]:注册年龄"..game.Players.LocalPlayer.AccountAge)Wait(0.1)
makeMessage("[系统];用户ID"..game.Players.LocalPlayer.UserId)Wait(0)
game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "欢迎宝宝"..game.Players.LocalPlayer.DisplayName;
	Text = "ฅ喵喵喵回家喽ฅ~";
	Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})
	Duration = 1.5;
	sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 2.5  sound.Pitch = 2   sound.Parent = game.Workspace  sound:Play()
wait(1)--等待1秒
game:GetService("StarterGui"):SetCore("SendNotification", {    
     Title = "………️";   
     Text = "………";  
     Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})
     Duration = 1.5;
     sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 3  sound.Pitch = 3   sound.Parent = game.Workspace  sound:Play()
wait(1)--等待1秒
game:GetService("StarterGui"):SetCore("SendNotification", {  
     Title = "加载..数据..";   
     Text = "🐾…🐾…🐾…"; 
     Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})
     Duration = 1.5; 
     sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 2.5  sound.Pitch = 4   sound.Parent = game.Workspace  sound:Play()
wait(1)--等待1秒
game:GetService("StarterGui"):SetCore("SendNotification", {  
     Title = "[断开/踢]:自启动已\n开启";   
     Text = "🐾🐾…🐾…"; 
     Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})
     Duration = 1.5; 
     sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 2.5  sound.Pitch = 5  sound.Parent = game.Workspace  sound:Play()
wait(1)--等待1秒
game:GetService("StarterGui"):SetCore("SendNotification", {    
     Title = "开启检测...";   
     Text = "🐾🐾🐾……"; 
     Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150"})
     Duration = 1.5;
     sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 5  sound.Pitch = 6   sound.Parent = game.Workspace  sound:Play()
wait(1)--等待1秒

local function FKLHG_fake_script() --加载图像,本地脚本  
	local script = Instance.new('LocalScript', LoadingImage)

	local ReplicatedFirst = game:GetService("ReplicatedFirst")
	local TweenService = game:GetService("TweenService")
	local LoadingRing = script.Parent

	local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
	local tween = TweenService:Create(LoadingRing, tweenInfo, {Rotation=360})
	tween:Play()
end
coroutine.wrap(FKLHG_fake_script)()
local function JCMZ_fake_script() --Frame.本地脚本
	local script = Instance.new('LocalScript', Frame)
	wait(3)--等待3秒

    -------------------------[*]脚本检测[*]-------------------------------
	if game.PlaceId == 10449761463 then --最强的战场
    game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1    
--[[ elseif game.PlaceId == 游戏ID or game.PlaceId == 多服游戏ID then 
    game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1

    elseif game.PlaceId == 游戏ID then
    game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1 ]]
end
	------------------------[*]脚本检测[*]-------------------------------

	if game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency == 1 then
		script.Parent.ImageLabel.CheckingGame.Text = "脚本为测试,还未正式发布\n保持云更新,不改网址"
		wait(1.5)--等待1.5秒
		script.Parent.ImageLabel.CheckingGame.Text = "正在开启脚本,稍等"
		wait(1)--等待1秒
		script.Parent.ImageLabel.LoadingImage.Visible = false
		script.Parent.ImageLabel.xgotick.Visible = true
		wait(1)--等待1秒
		xgo:Destroy()

		if game.PlaceId == 10449761463 then --最强的战场
		sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 5  sound.Pitch = 1   sound.Parent = game.Workspace  sound:Play()Wait(1)sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 5  sound.Pitch = 1   sound.Parent = game.Workspace  sound:Play()Wait(0.1)
        loadstring(game:HttpGet("https://github.com/GTAFAW/llllllllllllllllIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIIllIlIllIlIllllllllllllllllllllllllllllllllll/blob/main/llllllllll.lua?raw=true"))()
        
--[[     elseif game.PlaceId == 游戏ID or game.PlaceId == 多服游戏ID then 
        loadstring(game:HttpGet(('脚本')))()
	
        elseif game.PlaceId == 游戏ID then
	    loadstring(game:HttpGet(('脚本')))()  ]]
    end
	else
        script.Parent.ImageLabel.CheckingGame.Text = "只是测试以后可能制作检测\n正在启动主脚本..."
		script.Parent.ImageLabel.LoadingImage.Visible = false
		script.Parent.ImageLabel.xgoeror.Visible = true
		wait(5.5)--等待5.5秒
		script.Parent.Parent:Destroy()--错误=-<[错误后执行主脚本]>
		sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 5  sound.Pitch = 1   sound.Parent = game.Workspace  sound:Play()Wait(1)sound.SoundId = "rbxassetid://" .. audioId  sound.Volume = 5  sound.Pitch = 1   sound.Parent = game.Workspace  sound:Play()Wait(0.1)
	    loadstring(game:HttpGet("https://pastefy.app/bqvlQXRW/raw"))()
	    wait(5.5)--等待5.5秒
	    script.Parent.Parent:Destroy()--正确=-<[正确则执行服务器脚本]>
	end
end
coroutine.wrap(JCMZ_fake_script)()--结束后执行摧毁
