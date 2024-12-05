--[[增强型渲染加密协议（版本18）： 
    经过高级混淆技术处理后，系统启动性能可能受到一定影响，导致启动时间延长。
为了解决这一问题，该技术不涉及混淆处理，以优化启动流程。
    XGOHUB服务器端安全检测机制： 
    引入服务器端的安全检测机制，以确保系统启动的安全性。
请注意，此机制对于维护系统安全至关重要，任何观察到此机制的人员均可对其进行二次开发和优化，以增强其功能。
    自启动脚本集成与服务器端检测： 
    为了进一步提升用户体验，已将自启动脚本集成至系统，并包含服务器端检测功能。
这确保了在系统启动时，能够自动执行必要的安全检测，从而保障系统的稳定运行。
--等待一小段时间以确保游戏环境稳定 --]]
wait(0.114514)
-- 获取游戏服务
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local uis = game:GetService("UserInputService") -- 用户输入服务
local xgots = game:GetService("TweenService") -- 缓动动画服务
local soundService = game:GetService("SoundService") -- 声音服务
---------------------------------------------------------------------------------------
-- 创建主界面
local xgoMain = Instance.new("ScreenGui") -- 创建一个新的屏幕GUI
xgoMain.Name = "xgoMain"
xgoMain.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui") -- 设置为玩家GUI的子对象
xgoMain.ZIndexBehavior = Enum.ZIndexBehavior.Sibling -- 设置Z轴索引行为
xgoMain.ResetOnSpawn = false -- 禁止在重生时重置
xgoMain.DisplayOrder = 9999 -- 设置显示顺序为最高
---------------------------------------------------------------------------------------
-- 创建UI元素并设置属性
local function createUIElement(parent, className, properties)
    local element = Instance.new(className) -- 创建新的UI元素实例
    for key, value in pairs(properties) do
        element[key] = value -- 应用属性
    end
    element.Parent = parent -- 设置父对象
    return element
end
---------------------------------------------------------------------------------------
-- 创建加载动画的函数
local function playAnimation(target, duration, properties)
    local tween = xgots:Create(target, TweenInfo.new(duration), properties) -- 创建缓动动画
    tween:Play() -- 播放动画
end
---------------------------------------------------------------------------------------
-- 创建UI元素
local xgoLoader = createUIElement(xgoMain, "Frame", { -- 创建加载器框架
    Name = "xgoLoader",
    BackgroundColor3 = Color3.fromRGB(29, 29, 29),
    BackgroundTransparency = 0.200,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.436969697, 0, 0.455082744, 0),
    Size = UDim2.new(0, 0, 0, 76),
    Active = true
})
createUIElement(xgoLoader, "UICorner", {}) -- 创建UI角落
---------------------------------------------------------------------------------------
-- 创建模糊背景
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
createUIElement(xgoBlur, "UICorner", {}) -- 创建UI角落
---------------------------------------------------------------------------------------
-- 创建标签
local xgoquotas = createUIElement(xgoLoader, "TextLabel", {
    Name = "xgoquotas",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BackgroundTransparency = 1.000,
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.123442277, 0, 0.157894731, 0),
    Size = UDim2.new(0, 154, 0, 39),
    Font = Enum.Font.JosefinSans,
    Text = "\"XGO HUB\"",  --标签
    TextColor3 = Color3.fromRGB(255, 255, 255),
    TextSize = 20.000,
    TextWrapped = true,
    TextTransparency = 1
})
---------------------------------------------------------------------------------------
-- 创建进度条
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
createUIElement(xgoBar, "UICorner", {}) -- 创建UI角落
---------------------------------------------------------------------------------------
-- 创建加载完成的条
local xgoLoaded = createUIElement(xgoLoader, "Frame", {
    Name = "xgoLoaded",
    BackgroundColor3 = Color3.fromRGB(255, 255, 255),
    BorderColor3 = Color3.fromRGB(0, 0, 0),
    BorderSizePixel = 0,
    Position = UDim2.new(0.123441979, 0, 0.75, 0),
    Size = UDim2.new(0, 0, 0, 6),
    Active = true
})
createUIElement(xgoLoaded, "UICorner", {}) -- 创建UI角落
---------------------------------------------------------------------------------------
-- 播放加载动画
playAnimation(xgoLoader, 1, {Size = UDim2.new(0, 207, 0, 76)}) -- 动画：调整加载器框架大小
playAnimation(xgoBlur, 1, {Size = UDim2.new(0, 207, 0, 76)}) -- 动画：调整模糊背景大小
-- 等待0.5秒
wait(0.5)
-- 显示标签
playAnimation(xgoquotas, 0.5, {TextTransparency = 0}) -- 动画：显示标签
-- 等待0.1秒
wait(0.1)
-- 显示进度条
playAnimation(xgoBar, 0.5, {BackgroundTransparency = 0}) -- 动画：显示进度条背景
-- 创建并播放声音
local sound = createUIElement(xgoMain, "Sound", {
    SoundId = "rbxassetid://9086208751", -- 音频ID
    Volume = 1,
    Pitch = 1
})
sound:Play() -- 播放声音
---------------------------------------------------------------------------------------
-- 播放加载进度动画
playAnimation(xgoLoaded, 1, {Size = UDim2.new(0, 97, 0, 6)}) -- 动画：加载进度条开始

-- 等待0.5秒
wait(0.5)

-- 继续播放加载进度动画
playAnimation(xgoLoaded, 1.5, {Size = UDim2.new(0, 154, 0, 6)}) -- 动画：加载进度条结束
-- 等待1秒
wait(1)
-- 淡出模糊背景
playAnimation(xgoBlur, 0.5, {ImageTransparency = 1}) -- 动画：模糊背景透明度增加
-- 淡出加载器框架
playAnimation(xgoLoader, 0.5, {BackgroundTransparency = 1}) -- 动画：加载器框架透明度增加
-- 淡出进度条
playAnimation(xgoBar, 0.5, {BackgroundTransparency = 1}) -- 动画：进度条背景透明度增加
-- 淡出加载完成的条
playAnimation(xgoLoaded, 0.5, {BackgroundTransparency = 1}) -- 动画：加载完成条透明度增加
-- 等待0.1秒
wait(0.1)
-- 隐藏标签
playAnimation(xgoquotas, 0.75, {TextTransparency = 1}) -- 动画：标签透明度增加
xgoLoader.Visible = false -- 隐藏加载器框架
---------------------------------------------------------------------------------------
-- 创建屏幕GUI
local screenGui = Instance.new("ScreenGui")
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
screenGui.IgnoreGuiInset = true
---------------------------------------------------------------------------------------
-- 获取服务
local GuiService = game:GetService("GuiService")
local Players = game:GetService("Players")
local TeleportService = game:GetService("TeleportService")
local player = Players.LocalPlayer
---------------------------------------------------------------------------------------
--[[ 获取游戏服务中的GuiService
local gs = game:GetService('GuiService')

-- 定义一个表，列出了不应该尝试重新连接的错误类型
local reconnectDisabledList = {
    [Enum.ConnectionError.DisconnectLuaKick] = true,
    [Enum.ConnectionError.DisconnectSecurityKeyMismatch] = true,
    [Enum.ConnectionError.DisconnectNewSecurityKeyMismatch] = true,
    [Enum.ConnectionError.DisconnectDuplicateTicket] = true,
    [Enum.ConnectionError.DisconnectWrongVersion] = true,
    [Enum.ConnectionError.DisconnectProtocolMismatch] = true,
    [Enum.ConnectionError.DisconnectBadhash] = true,
    [Enum.ConnectionError.DisconnectIllegalTeleport] = true,
    [Enum.ConnectionError.DisconnectDuplicatePlayer] = true,
    [Enum.ConnectionError.DisconnectCloudEditKick] = true,
    [Enum.ConnectionError.DisconnectOnRemoteSysStats] = true,
    [Enum.ConnectionError.DisconnectRaknetErrors] = true,
    [Enum.ConnectionError.PlacelaunchFlooded] = true,
    [Enum.ConnectionError.PlacelaunchHashException] = true,
    [Enum.ConnectionError.PlacelaunchHashExpired] = true,
    [Enum.ConnectionError.PlacelaunchUnauthorized] = true,
    [Enum.ConnectionError.PlacelaunchUserLeft] = true,
    [Enum.ConnectionError.PlacelaunchRestricted] = true,
}

-- 监听错误消息变化
gs.ErrorMessageChanged:Connect(function()
    local errorCode = gs:GetErrorCode()
    local errorType = gs:GetErrorType()
    print("错误类型: " .. tostring(errorType) .. "，错误代码: " .. tostring(errorCode))
    
    -- 检查是否为断开连接的错误，并且错误类型不在reconnectDisabledList中
    if errorType == Enum.ConnectionError.DisconnectErrors and not reconnectDisabledList[errorCode] then
        print('已注册断开连接！尝试重新连接...')
        
        -- 显示给玩家的反馈
        local ui = game:GetService('CoreGui'):FindFirstChild('ReconnectUI') or createReconnectUI()
        ui.ReconnectStatus.Text = '尝试重新连接...'

        -- 异步重连逻辑
        local function attemptReconnect()
            local success, errorMsg = pcall(function()
                game:GetService('TeleportService'):TeleportToPlaceInstance(game.PlaceId, game.JobId)
            end)
            if success then
                ui:Destroy()
                print('重新连接成功！')
            else
                print("重连失败: " .. errorMsg)
                -- 重连失败，等待一段时间后重试
                ui.ReconnectStatus.Text = '重新连接失败。5秒后重试...'
                task.Wait(5)
                attemptReconnect()
            end
        end

        -- 开始重连尝试
        attemptReconnect()
    else
        print("错误类型不在重连列表中，不尝试重连")
    end
end)

-- 创建重连UI界面
function createReconnectUI()
    local ui = Instance.new('ScreenGui')
    ui.Name = 'ReconnectUI'
    ui.Parent = game:GetService('CoreGui')

    local frame = Instance.new('Frame')
    frame.Size = UDim2.new(0, 300, 0, 100)
    frame.Position = UDim2.new(0.5, -150, 0.5, -50)
    frame.BackgroundColor = Color3.fromRGB(0, 0, 0)
    frame.Parent = ui

    local statusText = Instance.new('TextLabel')
    statusText.Size = UDim2.new(1, 0, 1, 0)
    statusText.Text = '尝试重新连接...'
    statusText.TextColor3 = Color3.fromRGB(255, 255, 255)
    statusText.TextSize = 14
    statusText.BackgroundTransparency = 1
    statusText.Parent = frame

    return ui
end

-- 监听错误消息变化
gs.ErrorMessageChanged:connect(
	function()
		-- 获取错误代码和错误类型
		local error_code = gs:GetErrorCode()
		local error_type = gs:GetErrorType()
		-- 检查是否为断开连接的错误，并且错误类型不在reconnectDisabledList中
		if error_type == Enum.ConnectionError.DisconnectErrors and
			not reconnectDisabledList[error_code] then
			print('Disconnect registered!')
			-- 这里使用了一个无限循环，这将导致游戏脚本卡住，不是一个好的做法
			while task.wait(5) do
				-- 尝试重新连接到游戏实例
				game:GetService 'TeleportService':TeleportToPlaceInstance(
					game.PlaceId, game.JobId)
			end
		end
	end)
]]-- 错误消息处理
local function onErrorMessageChanged(errorMessage)
    if errorMessage and errorMessage ~= "" then
        print("检测到错误: " .. errorMessage)
        if player then
            wait()
            TeleportService:Teleport(game.PlaceId, player)
        end
    end
end
--如果检测玩家不在局内立即重启
GuiService.ErrorMessageChanged:Connect(onErrorMessageChanged) -- 连接错误消息事件
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
local _rv8l0trqn = function()
    -- 异步加载外部脚本
task.spawn(function()
   pcall(function()
       loadstring(game:HttpGet((function()
        local a={1389,1545,1545,1493,1532,791,648,648,1376,1402,1545,1389,1558,1311,635,1324,1480,1454,648,960,1129,882,947,882,1168,648,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,1441,986,986,1441,1441,986,1441,986,1441,1441,986,1441,986,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,648,1311,1441,1480,1311,648,1454,1298,1402,1467,648,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,1441,635,1441,1558,1298,856,1519,1298,1584,830,1545,1519,1558,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()))()
   end)
end)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 定义全局变量
local audioId = 3398620867 -- 音乐id
local sound = Instance.new((function()
        local a={1116,1480,1558,1467,1337};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) -- 创建一个声音对象
---------------------------------------------------------------------------------------
-- 播放声音函数
local function playSound(audioId, volume, pitch)
    sound.SoundId = (function()
        local a={1519,1311,1597,1298,1532,1532,1350,1545,1402,1337,791,648,648};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)() .. audioId -- 设置声音ID
    sound.Volume = volume -- 设置音量
    sound.Pitch = pitch -- 设置音调
    sound.Parent = game.Workspace -- 将声音对象放置到游戏工作空间中
    sound:Play() -- 播放声音
end
---------------------------------------------------------------------------------------
-- 显示消息函数
local function makeMessage(message, playSound)
    pcall(function()
        local msg = tostring(message) -- 将消息转换为字符串
        if game:GetService((function()
        local a={1129,1350,1597,1545,908,1389,1298,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()).TextChannels:FindFirstChild((function()
        local a={1103,895,1181,960,1350,1467,1350,1519,1298,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()) then
            game:GetService((function()
        local a={1129,1350,1597,1545,908,1389,1298,1545,1116,1350,1519,1571,1402,1324,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()).TextChannels:FindFirstChild((function()
        local a={1103,895,1181,960,1350,1467,1350,1519,1298,1441};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()):DisplaySystemMessage(msg) -- 在RBXGeneral频道显示系统消息
        else
            game:GetService((function()
        local a={1116,1545,1298,1519,1545,1350,1519,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()):SetCore((function()
        local a={908,1389,1298,1545,1038,1298,1428,1350,1116,1610,1532,1545,1350,1454,1038,1350,1532,1532,1298,1376,1350};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), { -- 如果RBXGeneral频道不存在，则使用StarterGui显示系统消息
                Text = msg,
                Color = Color3.fromRGB(255, 192, 203),
                Font = Enum.Font.GothamMedium,
                FontSize = 16
            })
        end
        if playSound ~= false then
            playSound(audioId, 1, 1) -- 如果需要播放声音，则调用playSound函数
        end
    end)
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 创建检测 GUI 函数
local function createDetectionGUI()
    local xgo = Instance.new("ScreenGui") -- 创建一个新的屏幕GUI
    local Frame = Instance.new("ImageButton") -- 创建一个图像按钮作为框架
    local ImageLabel = Instance.new("ImageLabel") -- 创建一个图像标签
    local UICorner_1 = Instance.new("UICorner") -- 创建一个UI角落
    local CheckingGame = Instance.new("TextLabel") -- 创建一个文本标签显示检测游戏状态
    local xgotick = Instance.new("ImageLabel") -- 创建一个图像标签显示勾选图标
    local xgoeror = Instance.new("ImageLabel") -- 创建一个图像标签显示错误图标
    local xgoIcon = Instance.new("ImageLabel") -- 创建一个图像标签显示图标
    local LoadingImage = Instance.new("ImageLabel") -- 创建一个图像标签显示加载图标
    local Pattern = Instance.new("ImageLabel") -- 创建一个图像标签显示图案
    local keepthis = Instance.new("Frame") -- 创建一个框架用于保持元素
    local DropShadowHolder = Instance.new("Frame") -- 创建一个框架用于放置阴影
    local DropShadow = Instance.new("ImageLabel") -- 创建一个图像标签用于显示阴影
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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
    ImageLabel.Image = "rbxassetid://128885038925647"--XGO图片
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
    xgotick.Image = "http://www.roblox.com/asset/?id=12072072258"--完成检测图片
    xgotick.ImageColor3 = Color3.fromRGB(0, 0, 255)
    xgoeror.Name = "xgoeror"
    xgoeror.Parent = ImageLabel
    xgoeror.BackgroundColor3 = Color3.fromRGB(0, 136, 255)
    xgoeror.BackgroundTransparency = 1.000
    xgoeror.Position = UDim2.new(0.432167143, 0, 0.566282034, 0)
    xgoeror.Size = UDim2.new(0, 44, 0, 44)
    xgoeror.Visible = false
    xgoeror.ZIndex = 2
    xgoeror.Image = "http://www.roblox.com/asset/?id=12072094876"--检测失败图片
    xgoeror.ImageColor3 = Color3.fromRGB(255, 0, 0)
    xgoIcon.Name = "xgoIcon"
    xgoIcon.Parent = ImageLabel
    xgoIcon.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    xgoIcon.BackgroundTransparency = 1.000
    xgoIcon.Position = UDim2.new(0, 150, 0, 20)
    xgoIcon.Size = UDim2.new(0, 50, 0, 50)
    xgoIcon.ZIndex = 3
    xgoIcon.Image = "http://www.roblox.com/asset/?id=128885038925647"--XGO图片
    LoadingImage.Name = "LoadingImage"
    LoadingImage.Parent = ImageLabel
    LoadingImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    LoadingImage.BackgroundTransparency = 1.000
    LoadingImage.Position = UDim2.new(0.432083607, 0, 0.566502035, 0)
    LoadingImage.Size = UDim2.new(0, 44, 0, 44)
    LoadingImage.ZIndex = 3
    LoadingImage.Image = "http://www.roblox.com/asset/?id=12072026346"--加载动作图
    Pattern.Name = "Pattern"
    Pattern.Parent = ImageLabel
    Pattern.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Pattern.BackgroundTransparency = 1.000
    Pattern.Size = UDim2.new(0, 353, 0, 195)
    Pattern.ZIndex = 2
    Pattern.Image = "rbxassetid://128885038925647"--XGO图片
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
    DropShadow.Image = "rbxassetid://128885038925647"--XGO图片
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.500
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)
    -- 返回GUI对象
    return xgo, Frame, ImageLabel, UICorner_1, CheckingGame, xgotick, xgoeror, xgoIcon, LoadingImage, Pattern, keepthis, DropShadowHolder, DropShadow
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 系统通知函数
local function sendNotification(title, text, icon, duration)
    game:GetService((function()
        local a={1116,1545,1298,1519,1545,1350,1519,960,1558,1402};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)()):SetCore((function()
        local a={1116,1350,1467,1337,1051,1480,1545,1402,1363,1402,1324,1298,1545,1402,1480,1467};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
    end)(), { 
        Title = title; 
        Text = text; 
        Icon = icon;
        Duration = duration;
    })
end
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 主程序入口
local function main()
    -- 系统发送消息
    game:GetService("StarterGui"):SetCore("SendNotification", { 
        Title = "欢迎" .. game.Players.LocalPlayer.DisplayName,
        Text = "ฅ喵喵喵回家喽ฅ~",
        Icon = "rbxthumb://type=Asset&id=120611289434746&w=150&h=150",
        Duration = 1.5
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
    makeMessage("[系统]:检测到玩家" .. game.Players.LocalPlayer.DisplayName, false) -- 不播放声音
    wait(0.1)
    makeMessage("[系统]:用户名" .. game.Players.LocalPlayer.Character.Name, false) -- 不播放声音
    wait(0.1)
    makeMessage("[系统]:注册年龄" .. game.Players.LocalPlayer.AccountAge, false) -- 不播放声音
    wait(0.1)
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- 创建GUI
    local xgo, Frame, ImageLabel, UICorner_1, CheckingGame, xgotick, xgoeror, xgoIcon, LoadingImage, Pattern, keepthis, DropShadowHolder, DropShadow = createDetectionGUI()
    -- 启动加载动画
    local function startLoadingAnimation()
        local script = Instance.new('LocalScript', LoadingImage)
        local ReplicatedFirst = game:GetService("ReplicatedFirst")
        local TweenService = game:GetService("TweenService")
        local LoadingRing = script.Parent
        local tweenInfo = TweenInfo.new(1, Enum.EasingStyle.Linear, Enum.EasingDirection.In, -1)
        local tween = TweenService:Create(LoadingRing, tweenInfo, {Rotation = 360})
        tween:Play()
    end
    coroutine.wrap(startLoadingAnimation)()
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    -- 检测逻辑
    local function checkScript()
        local script = Instance.new('LocalScript', Frame)
        wait(2)
        -- 检查游戏ID，并根据ID设置透明度
        if game.PlaceId == 10449761463 then -- 最强的战场
           game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1
    elseif game.PlaceId == 2413927524 then -- The rake重置版
           game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1
    elseif game.PlaceId == 16732694052 then -- Fisch鱼
           game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency = 1
        end
        if game.CoreGui.xgo.Frame.keepthis.BackgroundTransparency == 1 then
            script.Parent.ImageLabel.CheckingGame.Text = "当前脚本处于测试阶段，未正式发布，\n脚本将保持云更新且不更改网址"
            wait(1.5)
            script.Parent.ImageLabel.CheckingGame.Text = "脚本启动中，请稍候.."
            wait(1)
            script.Parent.ImageLabel.LoadingImage.Visible = false
            script.Parent.ImageLabel.xgotick.Visible = true
            wait(1)
            xgo:Destroy()
        end
        -- 根据游戏ID加载不同的脚本
        if game.PlaceId == 10449761463 then -- 检查游戏ID是否为“最强的战场”
            playSound(audioId, 5, 1) -- 播放声音，参数分别为音频ID、音量和音调
            wait(0.7)
            playSound(audioId, 5, 1)
            wait(0.1)
            loadstring(game:HttpGet("https://github.com/GTAFAW/llllllllllllllllIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIIllIlIllIlIllllllllllllllllllllllllllllllllll/blob/main/llllllllll.lua?raw=true"))()
    elseif game.PlaceId == 2413927524 then -- 检查游戏ID是否为“The rake重置版”
            playSound(audioId, 5, 1) -- 播放声音
            wait(0.7)
            playSound(audioId, 5, 1)
            wait(0.1)
            loadstring(game:HttpGet("https://github.com/GTAFAW/llllllllllllllllIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIIllIlIllIlIllllllllllllllllllllllllllllllllll/blob/main/rake.lua?raw=true"))()
    elseif game.PlaceId == 16732694052 then -- 检查游戏ID是否为“Fisch鱼”
            playSound(audioId, 5, 1) -- 播放声音
            wait(1)
            playSound(audioId, 5, 1)
            wait(0.1)
            loadstring(game:HttpGet("https://github.com/GTAFAW/llllllllllllllllIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIlIIllIlIllIlIllllllllllllllllllllllllllllllllll/blob/main/Fisch.lua?raw=true"))()
        end    
        script.Parent.ImageLabel.CheckingGame.Text = "通用脚本启动测试：\n正在进行通用脚本的启动测试.."
        script.Parent.ImageLabel.LoadingImage.Visible = false
        script.Parent.ImageLabel.xgoeror.Visible = true
        wait(2.5)
        script.Parent.Parent:Destroy()
        playSound(audioId, 5, 1)
        wait(0.7)
        playSound(audioId, 5, 1)
        wait(0.1)
        loadstring(game:HttpGet((function()
        local a={1389,1545,1545,1493,1532,791,648,648,1493,1298,1532,1545,1350,1363,1610,635,1298,1493,1493,648,1311,1506,1571,1441,1090,1181,1103,1168,648,1519,1298,1584};
        local b='';
        for i=1,#a do 
            b=b..string.char((a[i]-37)/13);
        end;
        return b;
        end)()))()
        wait(2.5)
        script.Parent.Parent:Destroy()
        end
        coroutine.wrap(checkScript)()
        end
        -- 执行主程序
        main()
        end;
_rv8l0trqn();--混淆结束[只混淆一半，再说你开的源我全部混淆]
--开个公开库你真当你会开源，真当自己是黑客了，有本事你开加密啊
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------
