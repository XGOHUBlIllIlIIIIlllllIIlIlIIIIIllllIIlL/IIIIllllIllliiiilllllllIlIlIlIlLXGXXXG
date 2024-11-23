--渲染加密v18混淆后 启动后时间较长 由于xxxxgo不想加密启动页面
--XGOHUB服务器检测--[[ 看到者可拿去二改启动页面 --]]
--开启自启动脚本--[[ 包含服务器检测 --]]
-- 等待一小段时间以确保游戏环境稳定
wait(0.114514)
-- 获取游戏服务
local uis = game:GetService("UserInputService")
local xgots = game:GetService("TweenService")
local soundService = game:GetService("SoundService") -- 获取声音服务
-- 创建主界面
local xgoMain = Instance.new("ScreenGui")
xgoMain.Name = "xgoMain"
xgoMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
xgoMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
xgoMain.ResetOnSpawn = false
xgoMain.DisplayOrder = 9999
-- 创建UI元素并设置属性
local function createUIElement(parent, className, properties)
    local element = Instance.new(className)
    for key, value in pairs(properties) do
        element[key] = value
    end
    element.Parent = parent
    return element
end
-- 创建加载动画的函数
local function playAnimation(target, duration, properties)
    local tween = xgots:Create(target, TweenInfo.new(duration), properties)
    tween:Play()
end
-- 创建UI元素
local xgoLoader = createUIElement(xgoMain, "Frame", {
    Name = "xgoLoader",
    BackgroundColor3 = Color3.fromRGB(29, 29, 29),
    BackgroundTransparency = 0.200,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.436969697, 0, 0.455082744, 0),
    Size = UDim2.new(0, 0, 0, 76),
    Active = true
})
createUIElement(xgoLoader, "UICorner", {})
local xgoBlur = createUIElement(xgoLoader, "ImageLabel", {
    Name = "xgoBlur",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1.000,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(-0.00483091781, 0, 0, 0),
    Size = UDim2.new(0, 0, 0, 76),
    Image = "http://www.roblox.com/asset/?id=128885038925647",
    ImageTransparency = 0.550
})
createUIElement(xgoBlur, "UICorner", {})
local xgoquotas = createUIElement(xgoLoader, "TextLabel", {
    Name = "xgoquotas",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1.000,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.123442277, 0, 0.157894731, 0),
    Size = UDim2.new(0, 154, 0, 39),
    Font = Enum.Font.JosefinSans,
    Text = "\"XGO HUB\"",
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 20.000,
    TextWrapped = true,
    TextTransparency = 1
})
local xgoBar = createUIElement(xgoLoader, "Frame", {
    Name = "xgoBar",
    BackgroundColor3 = Color3.fromRGB(84, 84, 84),
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.128272906, 0, 0.75, 0),
    Size = UDim2.new(0, 154, 0, 6),
    Active = true,
    BackgroundTransparency = 1
})
createUIElement(xgoBar, "UICorner", {})
local xgoLoaded = createUIElement(xgoLoader, "Frame", {
    Name = "xgoLoaded",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.123441979, 0, 0.75, 0),
    Size = UDim2.new(0, 0, 0, 6),
    Active = true
})
createUIElement(xgoLoaded, "UICorner", {})
-- 播放加载动画
playAnimation(xgoLoader, 1, {Size = UDim2.new(0, 207, 0, 76)})
playAnimation(xgoBlur, 1, {Size = UDim2.new(0, 207, 0, 76)})
-- 等待0.5秒
wait(0.5)
-- 显示标签
playAnimation(xgoquotas, 0.5, {TextTransparency = 0})
-- 等待0.1秒
wait(0.1)
-- 显示进度条
playAnimation(xgoBar, 0.5, {BackgroundTransparency = 0})
-- 创建并播放声音
local sound = createUIElement(xgoMain, "Sound", {
    SoundId = "rbxassetid://9086208751", -- 音频ID
    Volume = 1,
    Pitch = 1
})
sound:Play()
-- 播放加载进度动画
playAnimation(xgoLoaded, 1, {Size = UDim2.new(0, 97, 0, 6)})
-- 等待0.5秒
wait(0.5)
-- 继续播放加载进度动画
playAnimation(xgoLoaded, 1.5, {Size = UDim2.new(0, 154, 0, 6)})
-- 等待1秒
wait(1)
-- 淡出模糊背景
playAnimation(xgoBlur, 0.5, {ImageTransparency = 1})
-- 淡出加载器框架
playAnimation(xgoLoader, 0.5, {BackgroundTransparency = 1})
-- 淡出进度条
playAnimation(xgoBar, 0.5, {BackgroundTransparency = 1})
-- 淡出加载完成的条
playAnimation(xgoLoaded, 0.5, {BackgroundTransparency = 1})
-- 等待0.1秒
wait(0.1)
-- 隐藏标签
playAnimation(xgoquotas, 0.75, {TextTransparency = 1})
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
GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged)
task.spawn(function()
   pcall(function()
       loadstring(game:HttpGet("https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/XGOHUB.lua"))()
   end)
end)
-- 定义全局变量
local audioId = 3398620867 -- 音乐id
local sound = Instance.new("Sound")
-- 播放声音函数
local function playSound(audioId, volume, pitch)
    sound.SoundId = "rbxassetid://" .. audioId
    sound.Volume = volume
    sound.Pitch = pitch
    sound.Parent = game.Workspace
    sound:Play()
end
-- 显示消息函数
local function makeMessage(message, playSound)
    pcall(function()
        local msg = tostring(message)
        if game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral") then
            game:GetService("TextChatService").TextChannels:FindFirstChild("RBXGeneral"):DisplaySystemMessage(msg)
        else
            game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
                Text = msg,
                Color = Color3.fromRGB(255, 192, 203),
                Font = Enum.Font.GothamMedium,
                FontSize = 16
            })
        end
        if playSound ~= false then
            playSound(audioId, 1, 1) -- 使用已定义的playSound函数
        end
    end)
end
-- 播放声音函数
local function playSound(audioId, volume, pitch)
    sound.SoundId = "rbxassetid://" .. audioId
    sound.Volume = volume
    sound.Pitch = pitch
    sound.Parent = game.Workspace
    sound:Play()
end
-- 创建检测 GUI 函数
local function createDetectionGUI()
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
    -- 属性设置
    xgo.Name = "xgo"
    xgo.Parent = game.CoreGui
    xgo.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Frame.Name = "Frame"
    Frame.Parent = xgo
    Frame.Active = false
    Frame.BackgroundColor3 = Color3.fromRGB(11, 19, 31)
    Frame.BorderSizePixel = 0
    Frame.Position = UDim2.new(0.350, 0, 0.3, 0)
    Frame.Selectable = false
    Frame.Size = UDim2.new(0, 353, 0, 195)
    ImageLabel.Parent = Frame
    ImageLabel.BackgroundColor3 = Color3.fromRGB(11, 19, 31)
    ImageLabel.BorderSizePixel = 0
    ImageLabel.Position = UDim2.new(-0.000856399536, 0, -0.00353580713, 0)
    ImageLabel.Size = UDim2.new(0, 353, 0, 195)
    ImageLabel.Image = "rbxassetid://128885038925647"
    ImageLabel.ImageColor3 = Color3.fromRGB(0, 136, 255)
    ImageLabel.ImageTransparency = 0.800
    UICorner_1.Parent = ImageLabel
    CheckingGame.Name = "CheckingGame"
    CheckingGame.Parent = ImageLabel
    CheckingGame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    CheckingGame.BackgroundTransparency = 1.000
    CheckingGame.Position = UDim2.new(0.186968833, 0, 0.430298805, 0)
    CheckingGame.Size = UDim2.new(0, 219, 0, 27)
    CheckingGame.ZIndex = 3
    CheckingGame.Font = Enum.Font.SourceSansBold
    CheckingGame.Text = "检测游戏中"
    CheckingGame.TextColor3 = Color3.fromRGB(255, 255, 255)
    CheckingGame.TextSize = 20.000
    xgotick.Name = "xgotick"
    xgotick.Parent = ImageLabel
    xgotick.BackgroundColor3 = Color3.fromRGB(0, 136, 255)
    xgotick.BackgroundTransparency = 1.000
    xgotick.Position = UDim2.new(0.432167143, 0, 0.566282034, 0)
    xgotick.Size = UDim2.new(0, 44, 0, 44)
    xgotick.Visible = false
    xgotick.ZIndex = 2
    xgotick.Image = "http://www.roblox.com/asset/?id=12072072258"
    xgoeror.Name = "xgoeror"
    xgoeror.Parent = ImageLabel
    xgoeror.BackgroundColor3 = Color3.fromRGB(0, 136, 255)
    xgoeror.BackgroundTransparency = 1.000
    xgoeror.Position = UDim2.new(0.432167143, 0, 0.566282034, 0)
    xgoeror.Size = UDim2.new(0, 44, 0, 44)
    xgoeror.Visible = false
    xgoeror.ZIndex = 2
    xgoeror.Image = "http://www.roblox.com/asset/?id=12072094876"
    xgoeror.ImageColor3 = Color3.fromRGB(255, 0, 0)
    xgoIcon.Name = "xgoIcon"
    xgoIcon.Parent = ImageLabel
    xgoIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    xgoIcon.BackgroundTransparency = 1.000
    xgoIcon.Position = UDim2.new(0, 150, 0, 20)
    xgoIcon.Size = UDim2.new(0, 50, 0, 50)
    xgoIcon.ZIndex = 3
    xgoIcon.Image = "http://www.roblox.com/asset/?id=128885038925647"
    LoadingImage.Name = "LoadingImage"
    LoadingImage.Parent = ImageLabel
    LoadingImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LoadingImage.BackgroundTransparency = 1.000
    LoadingImage.Position = UDim2.new(0.432083607, 0, 0.566502035, 0)
    LoadingImage.Size = UDim2.new(0, 44, 0, 44)
    LoadingImage.ZIndex = 3
    LoadingImage.Image = "http://www.roblox.com/asset/?id=12072026346"
    Pattern.Name = "Pattern"
    Pattern.Parent = ImageLabel
    Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Pattern.BackgroundTransparency = 1.000
    Pattern.Size = UDim2.new(0, 353, 0, 195)
    Pattern.ZIndex = 2
    Pattern.Image = "rbxassetid://128885038925647"
    Pattern.ImageColor3 = Color3.fromRGB(99, 95, 98)
    Pattern.ImageTransparency = 0.600
    Pattern.ScaleType = Enum.ScaleType.Tile
    Pattern.SliceCenter = Rect.new(0, 256, 0, 256)
    Pattern.TileSize = UDim2.new(0, 250, 0, 250)
    keepthis.Name = "keepthis"
    keepthis.Parent = Frame
    keepthis.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
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
    DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow.Size = UDim2.new(1, 47, 1, 47)
    DropShadow.ZIndex = 0
    DropShadow.Image = "rbxassetid://128885038925647"
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.500
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
        -- 返回GUI对象
    return xgo, Frame, ImageLabel, UICorner_1, CheckingGame, xgotick, xgoeror, xgoIcon, LoadingImage, Pattern, keepthis, DropShadowHolder, DropShadow
end
-- 系统通知函数
local function sendNotification(title, text, icon, duration)
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = title; 
        Text = text; 
        Icon = icon;
        Duration = duration;
    })
end
-- 主程序入口
local function main()
    -- 系统发送消息    
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "欢迎宝宝"..game.Players.LocalPlayer.DisplayName;
        Text = "ฅ喵喵喵回家喽ฅ~";
        Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150";
        Duration = 1.5;
    })
    playSound(audioId, 2.5, 2)
    wait(2.5)
    sendNotification("………️", "………", "rbxthumb://type=Asset&id=120611289434746&w=150&h=150", 1.5)
    playSound(audioId, 3, 3)
    wait(1)
    sendNotification("加载..数据..", "🐾…🐾…🐾…", "rbxthumb://type=Asset&id=120611289434746&w=150&h=150", 1.5)
    playSound(audioId, 2.5, 4)
    wait(1)
    sendNotification("[断开/踢]:自启动已\n开启", "🐾🐾…🐾…", "rbxthumb://type=Asset&id=120611289434746&w=150&h=150", 1.5)
    playSound(audioId, 2.5, 5)
    wait(1)
    sendNotification("开启检测...", "🐾🐾🐾……", "rbxthumb://type=Asset&id=120611289434746&w=150&h=150", 1.5)
    playSound(audioId, 5, 6)
    wait(0.1)
    makeMessage("[系统]:你好欢迎使用xgohub（此消息仅自己可见）", false) -- 不播放声音 改为true则播放声音
    wait(0.1)
    makeMessage("[系统]:客户端加载中...", false) -- 不播放声音
    wait(0.1)
    makeMessage("[系统]:开始检测..[脚本测试:玩得开心]", false) -- 不播放声音
    wait(0.1)
    makeMessage("[系统]:检测到玩家"..game.Players.LocalPlayer.DisplayName, false) -- 不播放声音
    wait(0.1)
    makeMessage("[系统]:用户名"..game.Players.LocalPlayer.Character.Name, false) -- 不播放声音
    wait(0.1)
    makeMessage("[系统]:注册年龄"..game.Players.LocalPlayer.AccountAge, false) -- 不播放声音
    wait(0.1)
    -- 创建GUI
    local xgo, Frame, ImageLabel, UICorner_1, CheckingGame, xgotick, xgoeror, xgoIcon, LoadingImage, Pattern, keepthis, DropShadowHolder, DropShadow = createDetectionGUI()
    -- 启动加载动画
    local function startLoadingAnimation()
        local script = Instance.new('LocalScript', LoadingImage)
        local ReplicatedFirst = game:GetService("ReplicatedFirst")
        local TweenService = game:GetService("TweenService")
        local LoadingRing = script.Parent
        local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
        local tween = TweenService:Create(LoadingRing, tweenInfo, {Rotation=360})
        tween:Play()
    end
    coroutine.wrap(startLoadingAnimation)()
        -- 检测逻辑
    local function checkScript()
        local script = Instance.new('LocalScript', Frame)
        wait(3)
        if game.PlaceId == 10449761463 then -- 最强的战场
            game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1
        end
--[[        elseif game.PlaceId == 服务器ID or game.PlaceId == 多服务器ID then 
            game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1
        end
        elseif game.PlaceId == 服务器ID then
           game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1
        end]]
        if game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency == 1 then
            script.Parent.ImageLabel.CheckingGame.Text = "脚本为测试,还未正式发布\n保持云更新,不改网址"
            wait(1.5)
            script.Parent.ImageLabel.CheckingGame.Text = "正在开启脚本,稍等"
            wait(1)
            script.Parent.ImageLabel.LoadingImage.Visible = false
            script.Parent.ImageLabel.xgotick.Visible = true
            wait(1)
            xgo:Destroy()
        if game.PlaceId == 10449761463 then
                playSound(audioId, 5, 1)
                wait(0.7)
                playSound(audioId, 5, 1)
                wait(0.1)
                loadstring(game:HttpGet("https://github.com/GTAFAW/llllllllllllllllIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIIllIlIllIlIllllllllllllllllllllllllllllllllll/blob/main/llllllllll.lua?raw=true"))()
            end
--[[      elseif game.PlaceId == 服务器ID or game.PlaceId == 多服务器ID then 
                playSound(audioId, 5, 1)
                wait(1)
                playSound(audioId, 5, 1)
                wait(0.1)
                loadstring(game:HttpGet(('脚本')))()
	        end
        elseif game.PlaceId == 服务器ID then
                playSound(audioId, 5, 1)
                wait(1)
                playSound(audioId, 5, 1)
                wait(0.1)
	            loadstring(game:HttpGet(('脚本')))()
            end]]
        else
            script.Parent.ImageLabel.CheckingGame.Text = "只是测试以后可能制作检测\n正在启动主脚本..."
            script.Parent.ImageLabel.LoadingImage.Visible = false
            script.Parent.ImageLabel.xgoeror.Visible = true
            wait(3.5)
            script.Parent.Parent:Destroy()
            playSound(audioId, 5, 1)
            wait(0.7)
            playSound(audioId, 5, 1)
            wait(0.1)
            loadstring(game:HttpGet("https://pastefy.app/bqvlQXRW/raw"))()
            wait(3.5)
            script.Parent.Parent:Destroy()
        end
    end
    coroutine.wrap(checkScript)()
end
-- 执行主程序
main()
