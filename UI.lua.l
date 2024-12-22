local XUI = {
    ["_xgohub"] = Instance.new("ScreenGui"); -- 根容器，用于在屏幕上显示GUI
    ["_Open"] = Instance.new("TextButton"); -- 打开或激活UI的按钮
    ["_UICorner"] = Instance.new("UICorner"); -- 用于给UI元素添加圆角效果
    ["_InitOpen"] = Instance.new("LocalScript"); -- 初始化UI时执行的代码
    ["_OnClick"] = Instance.new("LocalScript"); -- 按钮点击事件的代码
    ["_Menu"] = Instance.new("Frame"); -- 菜单的主框架
    ["_UICorner1"] = Instance.new("UICorner"); -- 给_Menu添加圆角效果
    ["_标题名称"] = Instance.new("TextLabel"); -- 显示菜单的标题
    ["_小标题"] = Instance.new("TextLabel"); -- 显示副标题或说明
    ["_List"] = Instance.new("Frame"); -- 列表或菜单项的容器
    ["_UICorner2"] = Instance.new("UICorner"); -- 给_List添加圆角效果
    ["_AutoSetup"] = Instance.new("LocalScript"); -- 自动设置或初始化的代码
    ["_ScrollingFrame"] = Instance.new("ScrollingFrame"); -- 可滚动的内容区域
    ["_UIListLayout"] = Instance.new("UIListLayout"); -- 自动排列ScrollingFrame中的元素
    ["_UIPadding"] = Instance.new("UIPadding"); -- 给UI元素添加内边距
    ["_UIPadding1"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_UIGradient"] = Instance.new("UIGradient"); -- UI渐变效果
    ["_UIStroke"] = Instance.new("UIStroke"); -- UI描边效果
    ["_UIGradient1"] = Instance.new("UIGradient"); -- 另一个UI渐变效果
    ["_水印"] = Instance.new("TextLabel"); -- 水印标签
    ["_关闭"] = Instance.new("TextButton"); -- 关闭UI的按钮
    ["_UICorner3"] = Instance.new("UICorner"); -- 给关闭按钮添加圆角效果
    ["_LocalScript"] = Instance.new("LocalScript"); -- 其他本地脚本
    ["_Area"] = Instance.new("ScrollingFrame"); -- 另一个可滚动的内容区域
    ["_TextLabel"] = Instance.new("TextLabel"); -- 文本标签
    ["_TextLabel1"] = Instance.new("TextLabel"); -- 另一个文本标签
    ["_UIStroke1"] = Instance.new("UIStroke"); -- 另一个UI描边效果
    ["_UIGradient2"] = Instance.new("UIGradient"); -- 另一个UI渐变效果
    ["_UIGradient3"] = Instance.new("UIGradient"); -- 又一个UI渐变效果
    ["_注入器"] = Instance.new("TextButton"); -- 注入器按钮
    ["_UICorner4"] = Instance.new("UICorner"); -- 给注入器按钮添加圆角效果
    ["_UIPadding2"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_UIStroke2"] = Instance.new("UIStroke"); -- 另一个UI描边效果
    ["_LocalScript1"] = Instance.new("LocalScript"); -- 另一个本地脚本
    ["_UIScale"] = Instance.new("UIScale"); -- UI缩放
    ["_Init"] = Instance.new("LocalScript"); -- 初始化脚本
    ["_ListButton"] = Instance.new("TextButton"); -- 列表按钮
    ["_UICorner5"] = Instance.new("UICorner"); -- 给列表按钮添加圆角效果
    ["_FUNCTIONS"] = Instance.new("ModuleScript"); -- 功能模块脚本
    ["_Notifications"] = Instance.new("Frame"); -- 通知框架
    ["_UIListLayout1"] = Instance.new("UIListLayout"); -- 另一个UI列表布局
    ["_UIPadding3"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_Placeholder"] = Instance.new("Frame"); -- 占位符框架
    ["_UICorner6"] = Instance.new("UICorner"); -- 给占位符框架添加圆角效果
    ["_TextLabel2"] = Instance.new("TextLabel"); -- 另一个文本标签
    ["_Flee the Facility"] = Instance.new("LocalScript"); -- "逃离设施"本地脚本
    ["_Universal"] = Instance.new("LocalScript"); -- 通用本地脚本
    ["_TextBoxPlaceholder"] = Instance.new("Frame"); -- 文本框占位符框架
    ["_UIListLayout2"] = Instance.new("UIListLayout"); -- 另一个UI列表布局
    ["_TextButton"] = Instance.new("TextButton"); -- 文本按钮
    ["_UICorner7"] = Instance.new("UICorner"); -- 给文本按钮添加圆角效果
    ["_UIPadding4"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_TextBox"] = Instance.new("TextBox"); -- 文本框
    ["_UICorner8"] = Instance.new("UICorner"); -- 给文本框添加圆角效果
    ["_FloatingButton"] = Instance.new("TextButton"); -- 悬浮按钮
    ["_UIPadding5"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_UICorner9"] = Instance.new("UICorner"); -- 给悬浮按钮添加圆角效果
    ["_FloatingButtons"] = Instance.new("Frame"); -- 悬浮按钮框架
    ["_DroppedGunBGUI"] = Instance.new("BillboardGui"); -- 丢弃的枪BillboardGui
    ["_TextLabel3"] = Instance.new("TextLabel"); -- 另一个文本标签
    ["_UIStroke3"] = Instance.new("UIStroke"); -- 另一个UI描边效果
    ["_Murder Mystery 2"] = Instance.new("LocalScript"); -- "谋杀之谜2"本地脚本
    ["_注入器1"] = Instance.new("Frame"); -- 另一个注入器框架
    ["_UICorner10"] = Instance.new("UICorner"); -- 给注入器框架添加圆角效果
    ["_UIStroke4"] = Instance.new("UIStroke"); -- 另一个UI描边效果
    ["_UIGradient4"] = Instance.new("UIGradient"); -- 另一个UI渐变效果
    ["_UIGradient5"] = Instance.new("UIGradient"); -- 又一个UI渐变效果
    ["_UIScale1"] = Instance.new("UIScale"); -- 另一个UI缩放
    ["_TextLabel4"] = Instance.new("TextLabel"); -- 另一个文本标签
    ["_TextBox1"] = Instance.new("TextBox"); -- 另一个文本框
    ["_UICorner11"] = Instance.new("UICorner"); -- 给文本框添加圆角效果
    ["_UIPadding6"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_TextLabel5"] = Instance.new("TextLabel"); -- 另一个文本标签
    ["_Add"] = Instance.new("TextButton"); -- 添加按钮
    ["_UICorner12"] = Instance.new("UICorner"); -- 给添加按钮添加圆角效果
    ["_UIPadding7"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_UIStroke5"] = Instance.new("UIStroke"); -- 另一个UI描边效果
    ["_LocalScript2"] = Instance.new("LocalScript"); -- 另一个本地脚本
    ["_Cancel"] = Instance.new("TextButton"); -- 取消按钮
    ["_UICorner13"] = Instance.new("UICorner"); -- 给取消按钮添加圆角效果
    ["_UIPadding8"] = Instance.new("UIPadding"); -- 另一个UIPadding实例
    ["_UIStroke6"] = Instance.new("UIStroke"); -- 另一个UI描边效果
    ["_LocalScript3"] = Instance.new("LocalScript"); -- 又一个本地脚本
}

-- Properties:
-- 修改_xgohub的属性，设置背景图为图片
XUI["_xgohub"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_xgohub"].BackgroundTransparency = 1
XUI["_xgohub"].Image = "rbxassetid://120611289434746" -- 替换成你的图片ID
XUI["_xgohub"].DisplayOrder = 999999999
XUI["_xgohub"].IgnoreGuiInset = true
XUI["_xgohub"].ScreenInsets = Enum.ScreenInsets.DeviceSafeInsets
XUI["_xgohub"].ResetOnSpawn = false
XUI["_xgohub"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
XUI["_xgohub"].Name = "xgo内部1"
XUI["_xgohub"].Parent = game:GetService("CoreGui")

XUI["_Open"].Font = Enum.Font.Gotham
XUI["_Open"].Text = ""
XUI["_Open"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_Open"].TextSize = 14
XUI["_Open"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_Open"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_Open"].BackgroundTransparency = 1
XUI["_Open"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Open"].BorderSizePixel = 0
XUI["_Open"].Position = UDim2.new(0.499372631, 0, 0.06341701, 0)
XUI["_Open"].Size = UDim2.new(0, 25, 0, 20)
XUI["_Open"].Name = "Open"
XUI["_Open"].Parent = XUI["_xgohub"]

XUI["_UICorner"].Parent = XUI["_Open"]

XUI["_Menu"].AnchorPoint = Vector2.new(0.5, 0)
XUI["_Menu"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_Menu"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Menu"].BorderSizePixel = 0
XUI["_Menu"].ClipsDescendants = true
XUI["_Menu"].Position = UDim2.new(0.499372661, 0, 0.0410327986, 0)
XUI["_Menu"].Size = UDim2.new(0, 441, 0, 268)
XUI["_Menu"].Name = "Menu"
XUI["_Menu"].Parent = XUI["_xgohub"]

XUI["_UICorner1"].Parent = XUI["_Menu"]

XUI["_标题名称"].Font = Enum.Font.GothamBold
XUI["_标题名称"].Text = "XGOHUB"
XUI["_标题名称"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_标题名称"].TextScaled = true
XUI["_标题名称"].TextSize = 14
XUI["_标题名称"].TextWrapped = true
XUI["_标题名称"].TextXAlignment = Enum.TextXAlignment.Left
XUI["_标题名称"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_标题名称"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_标题名称"].BackgroundTransparency = 1
XUI["_标题名称"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_标题名称"].BorderSizePixel = 0
XUI["_标题名称"].Position = UDim2.new(0.186153606, 0, 0.112410031, 0)
XUI["_标题名称"].Size = UDim2.new(0.259631485, 0, 0.0824175924, 0)
XUI["_标题名称"].Name = "HubName"
XUI["_标题名称"].Parent = XUI["_Menu"]

XUI["_小标题"].Font = Enum.Font.GothamBold
XUI["_小标题"].Text = "猫有九条命唯有一颗心"
XUI["_小标题"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_小标题"].TextSize = 14
XUI["_小标题"].TextWrapped = true
XUI["_小标题"].TextXAlignment = Enum.TextXAlignment.Right
XUI["_小标题"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_小标题"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_小标题"].BackgroundTransparency = 1
XUI["_小标题"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_小标题"].BorderSizePixel = 0
XUI["_小标题"].Position = UDim2.new(0.708829343, 0, 0.116141364, 0)
XUI["_小标题"].Size = UDim2.new(0.470515788, 0, 0.082417585, 0)
XUI["_小标题"].Name = "HubDesc"
XUI["_小标题"].Parent = XUI["_Menu"]

XUI["_List"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_List"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_List"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_List"].BorderSizePixel = 0
XUI["_List"].Position = UDim2.new(0.15770267, 0, 0.607306004, 0)
XUI["_List"].Size = UDim2.new(0.315405339, 0, 0.785387993, 0)
XUI["_List"].Name = "List"
XUI["_List"].Parent = XUI["_Menu"]

XUI["_UICorner2"].Parent = XUI["_List"]

XUI["_ScrollingFrame"].ScrollBarThickness = 2
XUI["_ScrollingFrame"].VerticalScrollBarPosition = Enum.VerticalScrollBarPosition.Left
XUI["_ScrollingFrame"].Active = true
XUI["_ScrollingFrame"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_ScrollingFrame"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_ScrollingFrame"].BackgroundTransparency = 1
XUI["_ScrollingFrame"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_ScrollingFrame"].BorderSizePixel = 0
XUI["_ScrollingFrame"].Position = UDim2.new(0.478333294, 0, 0.510989845, 0)
XUI["_ScrollingFrame"].Size = UDim2.new(1, 0, 1, 0)
XUI["_ScrollingFrame"].Parent = XUI["_List"]

XUI["_UIListLayout"].Padding = UDim.new(0, 3)
XUI["_UIListLayout"].HorizontalAlignment = Enum.HorizontalAlignment.Center
XUI["_UIListLayout"].SortOrder = Enum.SortOrder.LayoutOrder
XUI["_UIListLayout"].Parent = XUI["_ScrollingFrame"]

XUI["_UIPadding"].PaddingLeft = UDim.new(0, 4)
XUI["_UIPadding"].Parent = XUI["_ScrollingFrame"]

XUI["_UIPadding1"].PaddingBottom = UDim.new(0, 10)
XUI["_UIPadding1"].PaddingLeft = UDim.new(0, 10)
XUI["_UIPadding1"].PaddingRight = UDim.new(0, 10)
XUI["_UIPadding1"].PaddingTop = UDim.new(0, 10)
XUI["_UIPadding1"].Parent = XUI["_List"]

XUI["_UIGradient"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
XUI["_UIGradient"].Rotation = -133
XUI["_UIGradient"].Parent = XUI["_List"]

XUI["_UIStroke"].Color = Color3.fromRGB(255, 255, 255)
XUI["_UIStroke"].Thickness = 2
XUI["_UIStroke"].Parent = XUI["_List"]

XUI["_UIGradient1"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(111.00000098347664, 111.00000098347664, 111.00000098347664)),
	ColorSequenceKeypoint.new(0.6401384472846985, Color3.fromRGB(114.23875719308853, 114.23875719308853, 114.23875719308853)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 255, 255))
}
XUI["_UIGradient1"].Rotation = -44
XUI["_UIGradient1"].Parent = XUI["_UIStroke"]

XUI["_水印"].Font = Enum.Font.GothamBold
XUI["_水印"].Text = "˃ ˄ ˂̥̥ "
XUI["_水印"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_水印"].TextScaled = true
XUI["_水印"].TextSize = 14
XUI["_水印"].TextTransparency = 0.699999988079071
XUI["_水印"].TextWrapped = true
XUI["_水印"].TextXAlignment = Enum.TextXAlignment.Right
XUI["_水印"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_水印"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_水印"].BackgroundTransparency = 1
XUI["_水印"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_水印"].BorderSizePixel = 0
XUI["_水印"].Position = UDim2.new(0.785926819, 0, 0.160157606, 0)
XUI["_水印"].Size = UDim2.new(0.316320807, 0, 0.0585099049, 0)
XUI["_水印"].Name = "HubCredits"
XUI["_水印"].Parent = XUI["_Menu"]

XUI["_关闭"].Font = Enum.Font.GothamBold
XUI["_关闭"].Text = "X"
XUI["_关闭"].TextColor3 = Color3.fromRGB(0, 0, 0)
XUI["_关闭"].TextSize = 14
XUI["_关闭"].Modal = true
XUI["_关闭"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_关闭"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_关闭"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_关闭"].BorderSizePixel = 0
XUI["_关闭"].Position = UDim2.new(0.947494328, 0, 0.914238751, 0)
XUI["_关闭"].Size = UDim2.new(0.0680272132, 0, 0.111940302, 0)
XUI["_关闭"].ZIndex = 999999999
XUI["_关闭"].Name = "Close"
XUI["_关闭"].Parent = XUI["_Menu"]

XUI["_UICorner3"].Parent = XUI["_关闭"]

XUI["_Area"].AutomaticCanvasSize = Enum.AutomaticSize.Y
XUI["_Area"].ScrollBarThickness = 0
XUI["_Area"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_Area"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_Area"].BackgroundTransparency = 1
XUI["_Area"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Area"].BorderSizePixel = 0
XUI["_Area"].Position = UDim2.new(0.659600496, 0, 0.60637325, 0)
XUI["_Area"].Selectable = false
XUI["_Area"].Size = UDim2.new(0.643815279, 0, 0.783582091, 0)
XUI["_Area"].SelectionGroup = false
XUI["_Area"].Name = "Area"
XUI["_Area"].Parent = XUI["_Menu"]

XUI["_TextLabel"].Font = Enum.Font.GothamBold
XUI["_TextLabel"].Text = "一个随机的集线器菜单"
XUI["_TextLabel"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel"].TextSize = 14
XUI["_TextLabel"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_TextLabel"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel"].BackgroundTransparency = 1
XUI["_TextLabel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextLabel"].BorderSizePixel = 0
XUI["_TextLabel"].Position = UDim2.new(0.4923051, 0, 0.46438089, 0)
XUI["_TextLabel"].Size = UDim2.new(0, 200, 0, 50)
XUI["_TextLabel"].Parent = XUI["_Area"]

XUI["_TextLabel1"].Font = Enum.Font.GothamBold
XUI["_TextLabel1"].Text = "XGOHUB"
XUI["_TextLabel1"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel1"].TextScaled = true
XUI["_TextLabel1"].TextSize = 14
XUI["_TextLabel1"].TextWrapped = true
XUI["_TextLabel1"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_TextLabel1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel1"].BackgroundTransparency = 1
XUI["_TextLabel1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextLabel1"].BorderSizePixel = 0
XUI["_TextLabel1"].Position = UDim2.new(0.491272807, 0, 0.363785654, 0)
XUI["_TextLabel1"].Size = UDim2.new(0, 135, 0, 33)
XUI["_TextLabel1"].Parent = XUI["_Area"]

XUI["_UIStroke1"].Color = Color3.fromRGB(255, 255, 255)
XUI["_UIStroke1"].Thickness = 2
XUI["_UIStroke1"].Parent = XUI["_Menu"]

XUI["_UIGradient2"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
	ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
	ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
}
XUI["_UIGradient2"].Rotation = 62
XUI["_UIGradient2"].Parent = XUI["_UIStroke1"]

XUI["_UIGradient3"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
XUI["_UIGradient3"].Rotation = 68
XUI["_UIGradient3"].Parent = XUI["_Menu"]

XUI["_注入器"].Font = Enum.Font.Gotham
XUI["_注入器"].Text = "添加自定义模块"
XUI["_注入器"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_注入器"].TextScaled = true
XUI["_注入器"].TextSize = 14
XUI["_注入器"].TextWrapped = true
XUI["_注入器"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_注入器"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
XUI["_注入器"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_注入器"].BorderSizePixel = 0
XUI["_注入器"].Position = UDim2.new(0.157244906, 0, 0.914238751, 0)
XUI["_注入器"].Size = UDim2.new(0.260770977, 0, 0.111940302, 0)
XUI["_注入器"].Name = "AddCustomModule"
XUI["_注入器"].Parent = XUI["_Menu"]

XUI["_UICorner4"].Parent = XUI["_注入器"]

XUI["_UIPadding2"].PaddingBottom = UDim.new(0, 5)
XUI["_UIPadding2"].PaddingLeft = UDim.new(0, 5)
XUI["_UIPadding2"].PaddingRight = UDim.new(0, 5)
XUI["_UIPadding2"].PaddingTop = UDim.new(0, 5)
XUI["_UIPadding2"].Parent = XUI["_注入器"]

XUI["_UIStroke2"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
XUI["_UIStroke2"].Color = Color3.fromRGB(255, 255, 255)
XUI["_UIStroke2"].Parent = XUI["_注入器"]

XUI["_UIScale"].Parent = XUI["_Menu"]

XUI["_ListButton"].Font = Enum.Font.Gotham
XUI["_ListButton"].Text = "占位符"
XUI["_ListButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_ListButton"].TextSize = 14
XUI["_ListButton"].TextWrapped = true
XUI["_ListButton"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_ListButton"].BackgroundColor3 = Color3.fromRGB(49.00000087916851, 49.00000087916851, 49.00000087916851)
XUI["_ListButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_ListButton"].BorderSizePixel = 0
XUI["_ListButton"].Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
XUI["_ListButton"].Size = UDim2.new(1, 0, 0, 50)
XUI["_ListButton"].Visible = false
XUI["_ListButton"].Name = "ListButton"
XUI["_ListButton"].Parent = XUI["_xgohub"]

XUI["_UICorner5"].Parent = XUI["_ListButton"]

XUI["_Notifications"].AnchorPoint = Vector2.new(0, 0.5)
XUI["_Notifications"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_Notifications"].BackgroundTransparency = 1
XUI["_Notifications"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Notifications"].BorderSizePixel = 0
XUI["_Notifications"].Position = UDim2.new(-0.00062737026, 0, 0.499319851, 0)
XUI["_Notifications"].Size = UDim2.new(0, 242, 1, 0)
XUI["_Notifications"].Name = "Notifications"
XUI["_Notifications"].Parent = XUI["_xgohub"]

XUI["_UIListLayout1"].Padding = UDim.new(0, 10)
XUI["_UIListLayout1"].HorizontalAlignment = Enum.HorizontalAlignment.Center
XUI["_UIListLayout1"].SortOrder = Enum.SortOrder.LayoutOrder
XUI["_UIListLayout1"].VerticalAlignment = Enum.VerticalAlignment.Bottom
XUI["_UIListLayout1"].Parent = XUI["_Notifications"]

XUI["_UIPadding3"].PaddingBottom = UDim.new(0, 10)
XUI["_UIPadding3"].PaddingLeft = UDim.new(0, 10)
XUI["_UIPadding3"].Parent = XUI["_Notifications"]

XUI["_Placeholder"].AnchorPoint = Vector2.new(0.5, 0)
XUI["_Placeholder"].BackgroundColor3 = Color3.fromRGB(31.000001952052116, 31.000001952052116, 31.000001952052116)
XUI["_Placeholder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Placeholder"].BorderSizePixel = 0
XUI["_Placeholder"].Position = UDim2.new(0.0450000018, 0, 0.112000003, 0)
XUI["_Placeholder"].Visible = false
XUI["_Placeholder"].Name = "Placeholder"
XUI["_Placeholder"].Parent = XUI["_Notifications"]

XUI["_UICorner6"].Parent = XUI["_Placeholder"]

XUI["_TextLabel2"].Font = Enum.Font.Gotham
XUI["_TextLabel2"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel2"].TextScaled = true
XUI["_TextLabel2"].TextSize = 14
XUI["_TextLabel2"].TextWrapped = true
XUI["_TextLabel2"].TextXAlignment = Enum.TextXAlignment.Left
XUI["_TextLabel2"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_TextLabel2"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel2"].BackgroundTransparency = 1
XUI["_TextLabel2"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextLabel2"].BorderSizePixel = 0
XUI["_TextLabel2"].Position = UDim2.new(0.5, 0, 0.5, 0)
XUI["_TextLabel2"].Size = UDim2.new(0.899999976, 0, 0.800000012, 0)
XUI["_TextLabel2"].Parent = XUI["_Placeholder"]

XUI["_TextBoxPlaceholder"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextBoxPlaceholder"].BackgroundTransparency = 1
XUI["_TextBoxPlaceholder"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextBoxPlaceholder"].BorderSizePixel = 0
XUI["_TextBoxPlaceholder"].Size = UDim2.new(1, 0, 0, 50)
XUI["_TextBoxPlaceholder"].Visible = false
XUI["_TextBoxPlaceholder"].Name = "TextBoxPlaceholder"
XUI["_TextBoxPlaceholder"].Parent = XUI["_xgohub"]

XUI["_UIListLayout2"].Padding = UDim.new(0, 5)
XUI["_UIListLayout2"].FillDirection = Enum.FillDirection.Horizontal
XUI["_UIListLayout2"].HorizontalAlignment = Enum.HorizontalAlignment.Center
XUI["_UIListLayout2"].Parent = XUI["_TextBoxPlaceholder"]

XUI["_TextButton"].Font = Enum.Font.Gotham
XUI["_TextButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextButton"].TextScaled = true
XUI["_TextButton"].TextSize = 14
XUI["_TextButton"].TextWrapped = true
XUI["_TextButton"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
XUI["_TextButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextButton"].BorderSizePixel = 0
XUI["_TextButton"].Position = UDim2.new(0.292333364, 0, 1.67999995, 0)
XUI["_TextButton"].Size = UDim2.new(0, 50, 0, 50)
XUI["_TextButton"].Parent = XUI["_TextBoxPlaceholder"]

XUI["_UICorner7"].Parent = XUI["_TextButton"]

XUI["_UIPadding4"].PaddingBottom = UDim.new(0, 5)
XUI["_UIPadding4"].PaddingLeft = UDim.new(0, 5)
XUI["_UIPadding4"].PaddingRight = UDim.new(0, 5)
XUI["_UIPadding4"].PaddingTop = UDim.new(0, 5)
XUI["_UIPadding4"].Parent = XUI["_TextButton"]

XUI["_TextBox"].Font = Enum.Font.Gotham
XUI["_TextBox"].PlaceholderText = "占位符"
XUI["_TextBox"].Text = ""
XUI["_TextBox"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextBox"].TextSize = 14
XUI["_TextBox"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
XUI["_TextBox"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextBox"].BorderSizePixel = 0
XUI["_TextBox"].Size = UDim2.new(0.800000012, 0, 0, 50)
XUI["_TextBox"].Parent = XUI["_TextBoxPlaceholder"]

XUI["_UICorner8"].Parent = XUI["_TextBox"]

XUI["_FloatingButton"].Font = Enum.Font.Unknown
XUI["_FloatingButton"].Text = "射成凶手"
XUI["_FloatingButton"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_FloatingButton"].TextScaled = true
XUI["_FloatingButton"].TextSize = 14
XUI["_FloatingButton"].TextWrapped = true
XUI["_FloatingButton"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_FloatingButton"].BackgroundColor3 = Color3.fromRGB(31.000001952052116, 31.000001952052116, 31.000001952052116)
XUI["_FloatingButton"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_FloatingButton"].BorderSizePixel = 0
XUI["_FloatingButton"].Position = UDim2.new(0, 50, 0, 50)
XUI["_FloatingButton"].Size = UDim2.new(0, 200, 0, 50)
XUI["_FloatingButton"].Visible = false
XUI["_FloatingButton"].Name = "FloatingButton"
XUI["_FloatingButton"].Parent = XUI["_xgohub"]

XUI["_UIPadding5"].PaddingBottom = UDim.new(0, 5)
XUI["_UIPadding5"].PaddingLeft = UDim.new(0, 5)
XUI["_UIPadding5"].PaddingRight = UDim.new(0, 5)
XUI["_UIPadding5"].PaddingTop = UDim.new(0, 5)
XUI["_UIPadding5"].Parent = XUI["_FloatingButton"]

XUI["_UICorner9"].Parent = XUI["_FloatingButton"]

XUI["_FloatingButtons"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_FloatingButtons"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_FloatingButtons"].BackgroundTransparency = 1
XUI["_FloatingButtons"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_FloatingButtons"].BorderSizePixel = 0
XUI["_FloatingButtons"].Position = UDim2.new(0.5, 0, 0.5, 0)
XUI["_FloatingButtons"].Size = UDim2.new(1, 0, 1, 0)
XUI["_FloatingButtons"].ZIndex = 0
XUI["_FloatingButtons"].Name = "FloatingButtons"
XUI["_FloatingButtons"].Parent = XUI["_xgohub"]

XUI["_DroppedGunBGUI"].Active = true
XUI["_DroppedGunBGUI"].AlwaysOnTop = true
XUI["_DroppedGunBGUI"].ClipsDescendants = true
XUI["_DroppedGunBGUI"].Size = UDim2.new(0, 70, 0, 70)
XUI["_DroppedGunBGUI"].Enabled = false
XUI["_DroppedGunBGUI"].ZIndexBehavior = Enum.ZIndexBehavior.Sibling
XUI["_DroppedGunBGUI"].Name = "DroppedGunBGUI"
XUI["_DroppedGunBGUI"].Parent = XUI["_xgohub"]

XUI["_TextLabel3"].Font = Enum.Font.SourceSansBold
XUI["_TextLabel3"].Text = "扔枪！"
XUI["_TextLabel3"].TextColor3 = Color3.fromRGB(255, 225.00001698732376, 0)
XUI["_TextLabel3"].TextScaled = true
XUI["_TextLabel3"].TextSize = 14
XUI["_TextLabel3"].TextWrapped = true
XUI["_TextLabel3"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_TextLabel3"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel3"].BackgroundTransparency = 1
XUI["_TextLabel3"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextLabel3"].BorderSizePixel = 0
XUI["_TextLabel3"].Position = UDim2.new(0.5, 0, 0.5, 0)
XUI["_TextLabel3"].Size = UDim2.new(1, 0, 1, 0)
XUI["_TextLabel3"].Parent = XUI["_DroppedGunBGUI"]

XUI["_UIStroke3"].Parent = XUI["_TextLabel3"]

XUI["_注入器1"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_注入器1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_注入器1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_注入器1"].BorderSizePixel = 0
XUI["_注入器1"].ClipsDescendants = true
XUI["_注入器1"].Position = UDim2.new(0.5, 0, -0.5, 0)
XUI["_注入器1"].Size = UDim2.new(0, 440, 0, 268)
XUI["_注入器1"].Name = "AddCustomModule"
XUI["_注入器1"].Parent = XUI["_xgohub"]

XUI["_UICorner10"].Parent = XUI["_注入器1"]

XUI["_UIStroke4"].Color = Color3.fromRGB(255, 255, 255)
XUI["_UIStroke4"].Thickness = 2
XUI["_UIStroke4"].Parent = XUI["_注入器1"]

XUI["_UIGradient4"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(53.00000064074993, 53.00000064074993, 53.00000064074993)),
	ColorSequenceKeypoint.new(0.15224914252758026, Color3.fromRGB(50.69031357765198, 50.69031357765198, 50.69031357765198)),
	ColorSequenceKeypoint.new(0.4723183512687683, Color3.fromRGB(255, 255, 255)),
	ColorSequenceKeypoint.new(0.7577854990959167, Color3.fromRGB(50.13314567506313, 50.13314567506313, 50.13314567506313)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(48.000000938773155, 48.000000938773155, 48.000000938773155))
}

XUI["_UIGradient4"].Rotation = 62
XUI["_UIGradient4"].Parent = XUI["_UIStroke4"]

XUI["_UIGradient5"].Color = ColorSequence.new{
	ColorSequenceKeypoint.new(0, Color3.fromRGB(36.00000165402889, 36.00000165402889, 36.00000165402889)),
	ColorSequenceKeypoint.new(1, Color3.fromRGB(68.00000354647636, 68.00000354647636, 68.00000354647636))
}
XUI["_UIGradient5"].Rotation = 68
XUI["_UIGradient5"].Parent = XUI["_注入器1"]

XUI["_UIScale1"].Parent = XUI["_注入器1"]

XUI["_TextLabel4"].Font = Enum.Font.Gotham
XUI["_TextLabel4"].Text = "添加自定义模块"
XUI["_TextLabel4"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel4"].TextScaled = true
XUI["_TextLabel4"].TextSize = 14
XUI["_TextLabel4"].TextWrapped = true
XUI["_TextLabel4"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_TextLabel4"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel4"].BackgroundTransparency = 1
XUI["_TextLabel4"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextLabel4"].BorderSizePixel = 0
XUI["_TextLabel4"].Position = UDim2.new(0.352256238, 0, 0.133915231, 0)
XUI["_TextLabel4"].Size = UDim2.new(0.619047642, 0, 0.125920027, 0)
XUI["_TextLabel4"].Parent = XUI["_注入器1"]

XUI["_TextBox1"].ClearTextOnFocus = false
XUI["_TextBox1"].Font = Enum.Font.Gotham
XUI["_TextBox1"].PlaceholderText = "自定义模块链接"
XUI["_TextBox1"].Text = ""
XUI["_TextBox1"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextBox1"].TextScaled = true
XUI["_TextBox1"].TextSize = 14
XUI["_TextBox1"].TextWrapped = true
XUI["_TextBox1"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_TextBox1"].BackgroundColor3 = Color3.fromRGB(22.000000588595867, 22.000000588595867, 22.000000588595867)
XUI["_TextBox1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextBox1"].BorderSizePixel = 0
XUI["_TextBox1"].Position = UDim2.new(0.499648541, 0, 0.500059664, 0)
XUI["_TextBox1"].Size = UDim2.new(0.804988742, 0, 0.544776142, 0)
XUI["_TextBox1"].Parent = XUI["_注入器1"]

XUI["_UICorner11"].Parent = XUI["_TextBox1"]

XUI["_UIPadding6"].PaddingBottom = UDim.new(0, 10)
XUI["_UIPadding6"].PaddingLeft = UDim.new(0, 10)
XUI["_UIPadding6"].PaddingRight = UDim.new(0, 10)
XUI["_UIPadding6"].PaddingTop = UDim.new(0, 10)
XUI["_UIPadding6"].Parent = XUI["_TextBox1"]

XUI["_TextLabel5"].Font = Enum.Font.Gotham
XUI["_TextLabel5"].Text = "只添加您信任的自定义模块!"
XUI["_TextLabel5"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel5"].TextScaled = true
XUI["_TextLabel5"].TextSize = 14
XUI["_TextLabel5"].TextWrapped = true
XUI["_TextLabel5"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_TextLabel5"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_TextLabel5"].BackgroundTransparency = 1
XUI["_TextLabel5"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_TextLabel5"].BorderSizePixel = 0
XUI["_TextLabel5"].Position = UDim2.new(0.499648541, 0, 0.833542168, 0)
XUI["_TextLabel5"].Size = UDim2.new(0.619047642, 0, 0.0550245307, 0)
XUI["_TextLabel5"].Parent = XUI["_注入器1"]

XUI["_Add"].Font = Enum.Font.Gotham
XUI["_Add"].Text = "增加"
XUI["_Add"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_Add"].TextScaled = true
XUI["_Add"].TextSize = 14
XUI["_Add"].TextWrapped = true
XUI["_Add"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_Add"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
XUI["_Add"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Add"].BorderSizePixel = 0
XUI["_Add"].Position = UDim2.new(0.108492024, 0, 0.927298486, 0)
XUI["_Add"].Size = UDim2.new(0.163265288, 0, 0.0858208984, 0)
XUI["_Add"].Name = "Add"
XUI["_Add"].Parent = XUI["_注入器1"]

XUI["_UICorner12"].Parent = XUI["_Add"]

XUI["_UIPadding7"].PaddingBottom = UDim.new(0, 5)
XUI["_UIPadding7"].PaddingLeft = UDim.new(0, 5)
XUI["_UIPadding7"].PaddingRight = UDim.new(0, 5)
XUI["_UIPadding7"].PaddingTop = UDim.new(0, 5)
XUI["_UIPadding7"].Parent = XUI["_Add"]

XUI["_UIStroke5"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
XUI["_UIStroke5"].Color = Color3.fromRGB(255, 255, 255)
XUI["_UIStroke5"].Parent = XUI["_Add"]

XUI["_Cancel"].Font = Enum.Font.Gotham
XUI["_Cancel"].Text = "取消"
XUI["_Cancel"].TextColor3 = Color3.fromRGB(255, 0, 0)
XUI["_Cancel"].TextScaled = true
XUI["_Cancel"].TextSize = 14
XUI["_Cancel"].TextWrapped = true
XUI["_Cancel"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_Cancel"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
XUI["_Cancel"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Cancel"].BorderSizePixel = 0
XUI["_Cancel"].Position = UDim2.new(0.899875283, 0, 0.931029797, 0)
XUI["_Cancel"].Size = UDim2.new(0.163265288, 0, 0.0858208984, 0)
XUI["_Cancel"].Name = "Cancel"
XUI["_Cancel"].Parent = XUI["_注入器1"]

XUI["_UICorner13"].Parent = XUI["_Cancel"]

XUI["_UIPadding8"].PaddingBottom = UDim.new(0, 5)
XUI["_UIPadding8"].PaddingLeft = UDim.new(0, 5)
XUI["_UIPadding8"].PaddingRight = UDim.new(0, 5)
XUI["_UIPadding8"].PaddingTop = UDim.new(0, 5)
XUI["_UIPadding8"].Parent = XUI["_Cancel"]

XUI["_UIStroke6"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
XUI["_UIStroke6"].Color = Color3.fromRGB(255, 0, 0)
XUI["_UIStroke6"].Parent = XUI["_Cancel"]
-- Fake Module Scripts:

local fake_module_scripts = {}

do -- Fake Module: StarterGui.YARHM.FUNCTIONS
    local script = Instance.new("ModuleScript")
    script.Name = "FUNCTIONS"
    script.Parent = XUI["_xgohub"]
    local function module_script()
		local module = {}
		
		local ts = game:GetService("TweenService")
		
		local States = {}
		AREA = script.Parent.Menu.Area
		local function calculateWidth(n)
			if n <= 3 then
				return 30
			else
				local base = 30
				local additional = math.floor((n - 3) / 3) * 30
				return base + additional
			end
		end
		
		local selected = Instance.new("ObjectValue")
		selected.Parent = script.Parent
		selected.Name = "Selected"
		
		function loader(module)
			local unloadtween = ts:Create(AREA, TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = UDim2.fromScale(1.55, 0.606)
			})
		
			unloadtween:Play()
			unloadtween.Completed:Wait()
		
			AREA:ClearAllChildren()
			local listlayout = Instance.new("UIListLayout")
			listlayout.Parent = AREA
			listlayout.Padding = UDim.new(0, 10)
			listlayout.FillDirection = Enum.FillDirection.Vertical
			listlayout.SortOrder = Enum.SortOrder.LayoutOrder
			listlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			for _, item in ipairs(module) do
				if item["Type"] == "Text" then
		
					local text = Instance.new("TextLabel")
					text.Parent = AREA
		
					text.BackgroundTransparency = 1
					text.Text = item["Args"][1]
					text.TextScaled = true
					text.TextColor3 = Color3.fromRGB(255,255,255)
					text.Font = Enum.Font.GothamBold
					text.Size = UDim2.new(1,0,0,20)
					text.TextXAlignment = item["Args"][2] == "center" and Enum.TextXAlignment.Center or Enum.TextXAlignment.Left
					text.RichText = true
		
		
				elseif item["Type"] == "Button" then
		
					local button = Instance.new("TextButton")
					button.Parent = AREA
		
					button.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
					button.Text = item["Args"][1]
					button.TextScaled = true
					button.TextColor3 = Color3.fromRGB(255,255,255)
					button.Font = Enum.Font.GothamBold
					button.Size = UDim2.new(1,0,0,25)
		
					local padding = Instance.new("UIPadding")
					padding.Parent = button
		
					padding.PaddingTop = UDim.new(0, 5)
					padding.PaddingBottom = UDim.new(0, 5)
		
		
					Instance.new("UICorner", button)
		
					local hold = false
		
					button.MouseButton1Click:Connect(function()
						item["Args"][2](button)
					end)
		
					button.MouseButton1Down:Connect(function()
						hold = true
						task.spawn(function()
							task.wait(0.5)
							if not hold then return end
							if not _G.YARHM.FloatingButtons:FindFirstChild(item["Args"][1]) then
		
		
								local newFloatingButton = _G.YARHM.FloatingButton:Clone()
								newFloatingButton.Parent = _G.YARHM.FloatingButtons
								newFloatingButton.Name = item["Args"][1]
								newFloatingButton.Text = item["Args"][1]
								newFloatingButton.Visible = true
		
								newFloatingButton.MouseButton1Click:Connect(function()
									item["Args"][2](newFloatingButton)
								end)
		
								newFloatingButton.Size = UDim2.fromOffset(0, 0)
								ts:Create(newFloatingButton, TweenInfo.new(1, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
									Size = UDim2.fromOffset(200, 50)
								}):Play()
		
								local UserInputService = game:GetService("UserInputService")
		
								local gui = newFloatingButton
		
								local dragging
								local dragInput
								local dragStart
								local startPos
		
								local function update(input)
									local delta = input.Position - dragStart
									ts:Create(gui, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
										Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
									}):Play()
								end
		
								gui.InputBegan:Connect(function(input)
									if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
										dragging = true
										dragStart = input.Position
										startPos = gui.Position
		
										input.Changed:Connect(function()
											if input.UserInputState == Enum.UserInputState.End then
												dragging = false
											end
										end)
									end
								end)
		
								gui.InputChanged:Connect(function(input)
									if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
										dragInput = input
									end
								end)
		
								UserInputService.InputChanged:Connect(function(input)
									if input == dragInput and dragging then
										update(input)
									end
								end)
		
							else
								_G.YARHM.FloatingButtons:FindFirstChild(item["Args"][1]):Destroy()
							end
						end)
					end)
		
					button.MouseButton1Up:Connect(function()
						hold = false
					end)
					button.MouseLeave:Connect(function()
						hold = false
					end)
				elseif item["Type"] == "ButtonGrid" then
		
		
		
		
					local frame = Instance.new("Frame")
					frame.Parent = AREA
					frame.Size = UDim2.new(1, 0, 0, calculateWidth(#item["Args"][2]))
					frame.BackgroundTransparency = 1
		
		
					local gridlayout = Instance.new("UIGridLayout")
					gridlayout.Parent = frame
					gridlayout.CellSize = UDim2.new((1 / item["Args"][1]) - 0.03, 0, 0, 30) -- remove 0.03 because if not it would wrap on its own lol
		
					--print("------")
					--print(item["Args"][2])
					--print(States)
					for buttonname, args in item["Args"][2] do
						local button = Instance.new("TextButton")
						button.Parent = frame
		
						--print(args)
						button.BackgroundColor3 = Color3.fromRGB(22, 22, 22)
						if States[buttonname .. module.Name] then
							button.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
						end
						button.Text = string.gsub(buttonname, "_", " ")
						button.TextScaled = true
						button.TextColor3 = Color3.fromRGB(255,255,255)
						button.Font = Enum.Font.GothamBold
		
						local padding = Instance.new("UIPadding")
						padding.Parent = button
		
						padding.PaddingTop = UDim.new(0, 5)
						padding.PaddingBottom = UDim.new(0, 5)
		
						Instance.new("UICorner", button)
		
						button.MouseButton1Click:Connect(function()
							if item["Toggleable"] then
								item["Args"][2][buttonname](button)
								--print(States[buttonname .. module.Name])
								if States[buttonname .. module.Name] then
									ts:Create(button, TweenInfo.new(0.3), {
										BackgroundColor3 = Color3.fromRGB(22, 22, 22)
									}):Play()
									States[buttonname .. module.Name] = false
								else
									ts:Create(button, TweenInfo.new(0.3), {
										BackgroundColor3 = Color3.fromRGB(0, 200, 0)
									}):Play()
									States[buttonname .. module.Name] = true
								end
							else
								item["Args"][2][buttonname](button)
							end
						end)
					end
		
		
				elseif item["Type"] == "Input" then
					local cloneinput = _G.YARHM.TextBoxPlaceholder:Clone()
					cloneinput.Parent = AREA
					cloneinput.Visible = true
		
					cloneinput.TextBox.PlaceholderText = item["Args"][1]
					cloneinput.TextButton.Text = item["Args"][2]
		
					cloneinput.TextButton.MouseButton1Click:Connect(function()
						item["Args"][3](cloneinput.TextButton, cloneinput.TextBox.Text)
					end)
				end
			end
		
			ts:Create(AREA, TweenInfo.new(0.3, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
				Position = UDim2.fromScale(0.66, 0.606)
			}):Play()
		end
		
		function module.notification(s)
			task.spawn(function()
				local notif = script.Parent.Notifications.Placeholder:Clone()
				notif.Parent = script.Parent.Notifications
				notif.Visible = true
				notif.Name = "notification"
				notif.TextLabel.Text = s
				ts:Create(notif, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Size = UDim2.new(1,0,0,40)
				}):Play()
				task.wait(3)
				local dismiss = ts:Create(notif, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
					Size = UDim2.new(0,0,0,0)
				})
				dismiss:Play()
				dismiss.Completed:Wait()
				notif:Destroy()
			end)
		end
		
		function module.refreshlist()
			for _, v in ipairs(script.Parent.Menu.List.ScrollingFrame:GetChildren()) do
				if v:IsA("TextButton") then
					v:Destroy()
				end
			end
			for modulei, module in ipairs(_G.Modules) do
				local success, err = pcall(function()
					local listbutton = _G.YARHM.ListButton:Clone()
					listbutton.Parent = script.Parent.Menu.List.ScrollingFrame
					listbutton.Name = module.Name
					listbutton.Text = module.Name
					listbutton.Visible = true
		
					listbutton.MouseButton1Click:Connect(function()
		
						if selected.Value then
							ts:Create(selected.Value, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
								BackgroundColor3 = Color3.fromRGB(49, 49, 49),
								TextColor3 = Color3.fromRGB(255,255,255)
							}):Play()
						end
		
						selected.Value = listbutton
		
						ts:Create(selected.Value, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							BackgroundColor3 = Color3.fromRGB(255,255,255),
							TextColor3 = Color3.fromRGB(0,0,0)
						}):Play()
		
						loader(_G.Modules[modulei])
					end)
		
		
		
					listbutton.MouseButton1Down:Connect(function()
						ts:Create(listbutton, TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = UDim2.new(1,-10,0, 40)
						}):Play()
					end)
		
					listbutton.MouseButton1Up:Connect(function()
						ts:Create(listbutton, TweenInfo.new(1.2, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
							Size = UDim2.new(1,0,0,50),
		
						}):Play()
					end)
		
					listbutton.MouseLeave:Connect(function()
						ts:Create(listbutton, TweenInfo.new(0.7, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
							Size = UDim2.new(1,0,0,50),
		
						}):Play()
					end)
		
				end)
				if not success then
					warn("[YARHM] Error while requiring " .. module.Name .. "!")
					warn(err)
				end
			end
		end
		
		return module
		
    end
    fake_module_scripts[script] = module_script
end

-- Fake Local Scripts:

local function GICVX_fake_script() -- Fake Script: StarterGui.YARHM.Open.InitOpen
    local script = Instance.new("LocalScript")
    script.Name = "InitOpen"
    script.Parent = XUI["_Open"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local ts = game:GetService("TweenService")
	
	
	local stroke = Instance.new("UIStroke")
	stroke.Parent = script.Parent
	stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	stroke.Color = Color3.fromRGB(255,255,255)
	
	
	script.Parent.Position = UDim2.fromScale(0.5, -1)
	ts:Create(script.Parent, TweenInfo.new(1.5, Enum.EasingStyle.Elastic, Enum.EasingDirection.Out), {
		Position = UDim2.fromScale(0.5, 0.063)
	}):Play()
	
	
	task.wait(5)
	ts:Create(script.Parent, TweenInfo.new(5), {
		TextTransparency = 1
	}):Play()
	ts:Create(stroke, TweenInfo.new(5), {
		Transparency = 1
	}):Play()
end
local function ZNDKBAA_fake_script() -- Fake Script: StarterGui.YARHM.Open.OnClick
    local script = Instance.new("LocalScript")
    script.Name = "OnClick"
    script.Parent = XUI["_Open"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local ts = game:GetService("TweenService")
	
	
	local clickCount = 0
	local lastClickTime = tick()
	script.Parent.MouseButton1Click:Connect(function()
		local currentTime = tick()
		
		script.Parent.TextTransparency = 0.5
		ts:Create(script.Parent, TweenInfo.new(1),
			{TextTransparency = 1}
		):Play()
		
		-- Check if the time since the last click is within a certain threshold
		if currentTime - lastClickTime < 0.5 then
			clickCount = clickCount + 1
		else
			
			clickCount = 1
		end
	
		lastClickTime = currentTime
	
		if clickCount == 3 then
			-- Triple-click detected
	
			ts:Create(_G.YARHM.Menu, TweenInfo.new(0.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out), 
				{Position = UDim2.fromScale(0.499, 0.041), Size = UDim2.fromOffset(441, 268)}
			):Play()
		end
	end)
	
end
local function VNSWJ_fake_script() -- Fake Script: StarterGui.YARHM.Menu.List.AutoSetup
    local script = Instance.new("LocalScript")
    script.Name = "AutoSetup"
    script.Parent = XUI["_List"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local ts = game:GetService("TweenService")
	
	
	local States = {}
	
	local FloatingButtonConnectionsMouse = {}
	local FloatingButtonConnectionsTouch = {}
	
	task.wait(1)
	
	AREA = script.Parent.Parent.Area
	
	local function calculateWidth(n)
		if n <= 3 then
			return 30
		else
			local base = 30
			local additional = math.floor((n - 3) / 3) * 30
			return base + additional
		end
	end
	
	local listlayout = Instance.new("UIListLayout")
	listlayout.Parent = AREA
	listlayout.Padding = UDim.new(0, 10)
	listlayout.FillDirection = Enum.FillDirection.Vertical
	listlayout.SortOrder = Enum.SortOrder.LayoutOrder
	listlayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	
	
	
	
	task.wait(1) -- magic number to wait modules to load lmao
	require(script.Parent.Parent.Parent.FUNCTIONS).refreshlist()
end
local function TTVRS_fake_script() -- Fake Script: StarterGui.YARHM.Menu.Close.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = XUI["_关闭"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local ts = game:GetService("TweenService")
	
	script.Parent.MouseButton1Click:Connect(function()
		ts:Create(_G.YARHM.Menu, TweenInfo.new(0.4, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), 
			{Position = UDim2.fromScale(0.499, 0), Size = UDim2.fromOffset(441, 0)}
		):Play()
	end)
end
local function TZEK_fake_script() -- Fake Script: StarterGui.YARHM.Menu.AddCustomModule.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = XUI["_注入器"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local ts = game:GetService("TweenService")
	
	script.Parent.MouseButton1Click:Connect(function()
		ts:Create(script.Parent.Parent.UIScale, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Scale = 0.9
		}):Play()
		ts:Create(script.Parent.Parent.Parent.AddCustomModule, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, 0.5)
		}):Play()
	end)
end
local function GIGHQO_fake_script() -- Fake Script: StarterGui.YARHM.Init
    local script = Instance.new("LocalScript")
    script.Name = "Init"
    script.Parent = XUI["_xgohub"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	_G.YARHM = script.Parent
	
	
	
	script.Parent.SafeAreaCompatibility = Enum.SafeAreaCompatibility.None
	script.Parent.ScreenInsets = Enum.ScreenInsets.None
	script.Parent.ResetOnSpawn = false
	
	
	script.Parent.Menu.Position = UDim2.fromScale(0.5, 0)
	script.Parent.Menu.Size = UDim2.fromOffset(441,0)
	
	_G.Modules = {}
	
	require(script.Parent.FUNCTIONS).notification("通用全部加载完毕，谢谢使用:)")
	require(script.Parent.FUNCTIONS).notification("隐藏界面只有楼主:xxxxg 知道怎么进入,想知道怎么进入自己猜")
end
local function RMKEEKN_fake_script() 
    local script = Instance.new("LocalScript")
    script.Name = "Flee the Facility"
    script.Parent = XUI["_xgohub"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local module = {}
	module["gameId"] = 893973440 -- Restrict module to a certain game ID only. 0 allows all games.
	if (module["gameId"] ~= game.GameId) and module["gameId"] ~= 0 then
		script.Enabled = false
	end
	
	module["Name"] = "Flee the Facility"
	
	local ts = game:GetService("TweenService")
	
	local FUNCTIONS = require(script.Parent.FUNCTIONS)
	
	
	module.players = false
	module.pcs = false
	module.pods = false
	module.exits = false
	
	module.antipcerror = false
	module.flashlight = false
	
	local esps = {}
	
	local function getBeast()
		local listplayers = game.Players:GetChildren()
		for _, player in ipairs(listplayers) do
			local character = player.Character
			if character ~= nil and character:FindFirstChild("BeastPowers") then
				return player
			end
		end
	end
	
	local function reloadESP()
	
	
		for _, i in ipairs(workspace:GetChildren()) do
			if i.Name == "PlayerHighlight" and not module.players then
				i:Destroy()
			end
	
			if i.Name == "PCHighlight" and not module.pcs then
				i:Destroy()
			end
	
			if i.Name == "PodsHighlight" and not module.pods then
				i:Destroy()
			end
	
			if i.Name == "ExitsHighlight" and not module.exits then
				i:Destroy()
			end
		end
	
		if module.players then
	
	
	
			local listplayers = game.Players:GetChildren()
			for _, player in ipairs(listplayers) do
				if player ~= game.Players.LocalPlayer and player.Character ~= nil then
					local character = player.Character
					if not character:FindFirstChild("PlayerHighlight") then
						local a = Instance.new("Highlight", workspace)
						esps["PlayerHighlight"] = a
						a.Name = "PlayerHighlight"
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.Adornee = character
						task.spawn(function()
							repeat
								task.wait(0.1)
								if player == getBeast() then
									a.FillColor = Color3.fromRGB(255,0,0)
								else
									a.FillColor = Color3.fromRGB(0,255,0)
								end
							until character == nil or a == nil
						end)
					end
				end
			end
	
	
		end
	
		if module.pcs then
	
	
	
	
			for _, obj in ipairs(game.Workspace:GetDescendants()) do
                        if obj.Name == "ComputerTable" and not obj:FindFirstChild("PCHighlight") then
					local hili = Instance.new("Highlight", workspace)
					esps["PCHighlight"] = hili
					hili.Name = "PCHighlight"
					hili.OutlineTransparency = 1
					hili.Adornee = obj
					hili.FillColor = obj:FindFirstChild("Screen").Color
				end
			end
	
	
		end
	
		if module.pods then
	
	
	
			for _, obj in ipairs(game.Workspace:GetDescendants()) do
				if obj.Name == "FreezePod" then
					local hili = Instance.new("Highlight", workspace)
					esps["PodsHighlight"] = hili
					hili.Name = "PodsHighlight"
					hili.OutlineTransparency = 1
					hili.Adornee = obj
					hili.FillColor = Color3.fromRGB(0, 200, 255)
				end
			end
	
		end
	
	
		if module.exits then
	
	
	
			for _, obj in ipairs(game.Workspace:GetDescendants()) do
				if obj.Name == "ExitDoor" and not obj:FindFirstChild("ExitsHighlight") then
					local hili = Instance.new("Highlight", workspace)
					esps["ExitsHighlight"] = hili
					hili.Name = "ExitsHighlight"
					hili.OutlineTransparency = 1
					hili.Adornee = obj
					hili.FillColor = Color3.fromRGB(255,255,0)
				end
			end
	
		end
	end
	
	
	
	
	module[1] = {
		Type = "Text",
		Args = {"ESPs"}
	}
	
	module[2] = {
		Type = "ButtonGrid",
		Toggleable = true, -- Recolors buttons for you onclick, you still need to save the state yourself
		Args = {3, { -- 3 is the number of columns
			Players = function(Self)
	
				if module.players then
					module.players = false
					reloadESP()
				else
					module.players = true
					reloadESP()
				end
	
	
			end,
			PCs = function(Self)
	
				if module.pcs then
					module.pcs = false
					reloadESP()
				else
					module.pcs = true
					reloadESP()
				end
	
			end,
			Pods = function(Self)
	
				if module.pods then
					module.pods = false
					reloadESP()
				else
					module.pods = true
					reloadESP()
				end
				
	
			end,
			Exits = function(Self)
	
				if module.exits then
					module.exits = false
					reloadESP()
				else
					module.exits = true
					reloadESP()
				end
	
			end,
		}
		} 
	}
	module[3] = { -- spacing, button grid doesnt correctly height himself for some reason
		Type = "Text",
		Args = {""}
	}
	
	module[4] = {
		Type = "Text",
		Args = {"Tools"}
	}
	
	
	local root = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart")
	
	light = Instance.new("PointLight", root)
	light.Brightness = 0
	light.Range = 9999999999
	
	local wslock = false
	local ws = 18
	
	local antifail = false
	
	
	task.spawn(function() 
		if game:GetService("RunService"):IsStudio() then return end -- :)
		
		local OldNameCall = nil
	
		OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
			local Args = {...}
			local NamecallMethod = getnamecallmethod()
	
			if NamecallMethod == "FireServer" and Args[1] == "SetPlayerMinigameResult" and antifail then
				print("迷你游戏结果 - 拦截结果为true")
				Args[2] = true
			end
	
			return OldNameCall(Self, unpack(Args))
		end)
	
	end)
	
	
	module[5] = {
		Type = "ButtonGrid",
		Toggleable = true,
		Args = {3, {
			Anti_PC_Error = function()
				if antifail then antifail = false else antifail = true end
			end,
			Flashlight = function()
				if light.Brightness == 0 then
					light.Brightness = 2.5
				else
					light.Brightness = 0
				end
			end,
		}}
	}
	
	task.spawn(function()
		while task.wait(0.1) do
			if wslock then
				root.Parent:WaitForChild("Humanoid").Walkspeed = ws
			end
		end
	end)
	
	module[6] = {
		Type = "Input",
		Args = {"步行速度", "Set & Lock", function(Self, text)
			if not tonumber(text) then
				FUNCTIONS.notification("输入不是有效的数字.")
				return
			end
			
			ws = tonumber(text)
			wslock = true
		end,}
	}
	
	module[7] = {
		Type = "Button",
		Args = {"解锁所有人", function()
			wslock = false
		end,}
	}	
	
	module[8] = {
		Type = "Text",
		Args = {"锁定意味着无论如何，您的速度将保持不变.这意味着当爬行或跳跃时，你不会慢慢."}
	}
	
	
	_G.Modules[2] = module
end
local function CSGP_fake_script() -- Fake Script: StarterGui.YARHM.Universal
    local script = Instance.new("LocalScript")
    script.Name = "万能"
    script.Parent = XUI["_xgohub"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local module = {}
	module["gameId"] = 0 -- Restrict module to a certain game ID only. 0 allows all games.
	if (module["gameId"] ~= game.GameId) and module["gameId"] ~= 0 then
		script.Enabled = true
	end
	
	module["Name"] = "音乐区"
	
	local ts = game:GetService("TweenService")

-- 创建一个停止播放音乐的按钮
table.insert(module, {
    Type = "Button",
    Args = {"停止播放音乐（所有皆为xgo 一人收集）", function(Self)
        for i, v in pairs(workspace:GetDescendants()) do
            if v:IsA("Sound") then
                v:Destroy()
            end
        end
    end}
})

-- 定义创建音乐按钮的函数
local function createSoundButton(name, id)
    table.insert(module, {
        Type = "Button",
        Args = {name, function(Self)
            local sound = Instance.new("Sound")
            sound.SoundId = "rbxassetid://" .. id
            sound.Parent = game.Workspace
            sound:Play()
        end}
    })
end

-- 音乐ID和名称的映射表
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

	module[4] = {
		Type = "Button",
		Args = {"将移动标题设置带底部", function(Self)
			_G.YARHM.Open.UIStroke.Transparency = 0
			_G.YARHM.Open.TextTransparency = 0
			ts:Create(_G.YARHM.Open, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Position = UDim2.fromScale(0.5, 0.903)
			}):Play()
			
			ts:Create(_G.YARHM.Open.UIStroke, TweenInfo.new(1), {
				Transparency = 1
			}):Play()
			ts:Create(_G.YARHM.Open, TweenInfo.new(1), {
				TextTransparency = 1
			}):Play()
		end}
	}
	
	module[5] = {
		Type = "Button",
		Args = {"将移动标题返回顶部", function(Self)
			_G.YARHM.Open.UIStroke.Transparency = 0
			_G.YARHM.Open.TextTransparency = 0
			ts:Create(_G.YARHM.Open, TweenInfo.new(1, Enum.EasingStyle.Cubic, Enum.EasingDirection.Out), {
				Position = UDim2.fromScale(0.5, 0.063)
			}):Play()
	
			ts:Create(_G.YARHM.Open.UIStroke, TweenInfo.new(1), {
				Transparency = 1
			}):Play()
			ts:Create(_G.YARHM.Open, TweenInfo.new(1), {
				TextTransparency = 1
			}):Play()
		end}
	}
	
	_G.Modules[1] = module
end
local function LOAOODV_fake_script() -- Fake Script: StarterGui.YARHM.Murder Mystery 2
    local script = Instance.new("LocalScript")
    script.Name = "谋杀神秘2"
    script.Parent = XUI["_xgohub"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local module = {}
	module["gameId"] = 0 -- 66654135 -- Restrict module to a certain game ID only. 0 allows all games.
	
	local playerESP = false
	local sheriffAimbot = false
	local coinAutoCollect = false
	local autoShooting = false
	local shootOffset = 3.5
	
	local phs = game:GetService("PathfindingService")
	
	local fu = require(script.Parent.FUNCTIONS)
	
	local function findMurderer()
		for _, i in ipairs(game.Players:GetPlayers()) do
			if i.Backpack:FindFirstChild("Knife") then
				return i
			end
		end
	
		for _, i in ipairs(game.Players:GetPlayers()) do
			if i.Character:FindFirstChild("Knife") then
				return i
			end
		end
	
		return nil
	end
	
	local function findSheriff()
		for _, i in ipairs(game.Players:GetPlayers()) do
			if i.Backpack:FindFirstChild("Gun") then
				return i
			end
		end
	
		for _, i in ipairs(game.Players:GetPlayers()) do
			if i.Character:FindFirstChild("Gun") then
				return i
			end
		end
	
		return nil
	end
	
	
	
	
	--task.spawn(function() 
	--	if game:GetService("RunService"):IsStudio() then return end -- :)
	
	--	local OldNameCall = nil
	
	--	OldNameCall = hookmetamethod(game, "__namecall", function(Self, ...)
	--		local Args = {...}
	--		local NamecallMethod = getnamecallmethod()
	
	--		if NamecallMethod == "InvokeServer" and Args[1] == 1 and sheriffAimbot then
	--			if not findMurderer() then
	--				print("No murderer to be shot!")
	--			else
	--				print("Shot - Intercepting shot to murderer")
	--				Args[2] = findMurderer().Character:FindFirstChild("HumanoidRootPart").Position
	--			end
	--		end
	
	--		return OldNameCall(Self, unpack(Args))
	--	end)
	
	--end)
	
	-- I honestly don't know what went wrong so if any of you experts know why this stuff aint working make a pull request :praying_hands_emoji:
	
	
	module["Name"] = "谋杀神秘2"
	
	-- Player ESP
	workspace.ChildAdded:Connect(function(ch)
		if ch.Name == "Normal" and playerESP then
			fu.notification("地图已加载，等待角色...")
			repeat
				task.wait(1)
			until findMurderer()
			local listplayers = game.Players:GetChildren()
			for _, player in ipairs(listplayers) do
				if  player.Character ~= nil then
					local character = player.Character
					if not character:FindFirstChild("PlayerESP") then
						local a = Instance.new("Highlight", script.Parent)
						a.Name = "PlayerESP"
						a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
						a.Adornee = character
						a.FillColor = Color3.fromRGB(255, 255, 255)
						task.spawn(function()
							if player == findMurderer() then
								a.FillColor = Color3.fromRGB(255,0,0)
							elseif player == findSheriff() then
																a.FillColor = Color3.fromRGB(0, 150, 255)
							else
								a.FillColor = Color3.fromRGB(0,255,0)
							end
							if a then
								if not player then return end
								a.Adornee = player.Character or player.CharactedAdded:Wait()
							end
						end)
					end
				end
			end
			fu.notification("玩家ESP重新加载.")
		end
	end)
	
	workspace.ChildRemoved:Connect(function(ch)
		if ch.Name == "Normal" and playerESP then
			fu.notification("游戏结束，删除ESP.")
			for _, v in ipairs(script.Parent:GetChildren()) do if v.Name == "PlayerESP" then v:Destroy() end end
		end
	end)
	
	-- Dropped Gun ESP
	workspace.ChildAdded:Connect(function(ch)
		if script.Parent:FindFirstChild("GunESP") and ch.Name == "GunDrop" then
			script.Parent:FindFirstChild("GunESP").Adornee = ch
			script.Parent:FindFirstChild("GunESP").Enabled = true
			local bguiclone = script.Parent.DroppedGunBGUI:Clone()
			bguiclone.Parent = script.Parent
			bguiclone.Adornee = workspace:FindFirstChild("GunDrop")
			bguiclone.Enabled = true
			bguiclone.Name = "DGBGUIClone"
			fu.notification("枪已经掉落了！ 找到黄色的亮点.")
		end
	end)
	
	workspace.ChildRemoved:Connect(function(ch)
		if script.Parent:FindFirstChild("GunESP") and ch.Name == "GunDrop" then
			script.Parent:FindFirstChild("GunESP").Enabled = false
			if script.Parent:FindFirstChild("DBGUIClone") then
				script.Parent:FindFirstChild("DBGUIClone"):Destroy()
			end
			fu.notification("有人拿走了掉落的枪.")
		end
	end)
	
	
	-- Coin autocollect
	task.spawn(
		function()
			while task.wait(0.1) do
				if not coinAutoCollect then continue end
				
				if workspace:FindFirstChild("Normal") then
					if workspace:FindFirstChild("Normal"):FindFirstChild("CoinContainer") then
						local coin = workspace.Normal.CoinContainer:FindFirstChild("Coin_Server")
						if not coin then continue end
						local coinPosition = coin.Position
						local characterRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
						local rayDirection = coinPosition * 3
	
						local raycastParams = RaycastParams.new()
						raycastParams.FilterType = Enum.RaycastFilterType.Exclude
						raycastParams.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
						
						local hit = workspace:Raycast(characterRootPart.Position, rayDirection, raycastParams)
						
						if not hit or hit.Instance == coin then -- Check if nothing collides or if it collides with the coin
							game.Players.LocalPlayer.Character:MoveTo(Vector3.new(coin:GetPivot().X, coin:GetPivot().Y, coin:GetPivot().Z))
						end
					    end
				end
			end
		end
	)
	task.spawn(function()
		while task.wait(1) do
			if findSheriff() == game.Players.LocalPlayer and autoShooting then
				fu.notification("自动拍摄开始.")
				repeat
					task.wait(0.1)
					local murderer = findMurderer()
					if not murderer then fu.notification("No murderer.") continue end
					local murdererPosition = murderer.Character.HumanoidRootPart.Position
					local characterRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
					local rayDirection = murdererPosition - characterRootPart.Position
	
					local raycastParams = RaycastParams.new()
					raycastParams.FilterType = Enum.RaycastFilterType.Exclude
					raycastParams.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
	
					local hit = workspace:Raycast(characterRootPart.Position, rayDirection, raycastParams)
					if not hit or hit.Instance.Parent == murderer.Character then -- Check if nothing collides or if it collides with the murderer
						fu.notification("Auto-shooting!")
						if not game.Players.LocalPlayer.Character:FindFirstChild("Gun") then
							local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
							if game.Players.LocalPlayer.Backpack:FindFirstChild("Gun") then
								game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Gun"))
							else
								fu.notification("You don't have the gun..?")
								return
							end
						end
						local args = {
							[1] = 1,
							[2] = findMurderer().Character:FindFirstChild("HumanoidRootPart").Position + findMurderer().Character:FindFirstChild("Humanoid").MoveDirection * shootOffset,
							[3] = "AH"
						}
	
						game:GetService("Players").LocalPlayer.Character.Gun.KnifeServer.ShootGun:InvokeServer(unpack(args))
					end
				until findSheriff() ~= game.Players.LocalPlayer or not autoShooting
			end
		end
	end)
	
	module[1] = {
		Type = "Text",
		Args = {"ESPs"}
	}
	
	module[2] = {
		Type = "ButtonGrid",
		Toggleable = true,
		Args = {2, {
			Players = function()
				if script.Parent:FindFirstChild("PlayerESP") then
					playerESP = false
					for _, i in ipairs(script.Parent:GetChildren()) do if i.Name=="PlayerESP" then i:Destroy() end end
					for _, i in ipairs(script.Parent:GetChildren()) do if i.Name=="DGBGUIClone" then i:Destroy() end end	
				else
					playerESP = true
					local listplayers = game.Players:GetChildren()
					for _, player in ipairs(listplayers) do
						if  player.Character ~= nil then
							local character = player.Character
							if not character:FindFirstChild("PlayerESP") then
								local a = Instance.new("Highlight", script.Parent)
								a.Name = "玩家ESP"
								a.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
								a.Adornee = character
								a.FillColor = Color3.fromRGB(255, 255, 255)
								task.spawn(function()
									if player == findMurderer() then
										a.FillColor = Color3.fromRGB(255,0,0)
									elseif player == findSheriff() then
										a.FillColor = Color3.fromRGB(0, 150, 255)
									else
										a.FillColor = Color3.fromRGB(0,255,0)
									end
									if a then
										if not player then return end
										a.Adornee = player.Character or player.CharactedAdded:Wait()
									end
								end)
							end
						end
					end
				end
			end,
	
			Dropped_Gun = function()
				if script.Parent:FindFirstChild("GunESP") then
					for _, i in ipairs(script.Parent:GetChildren()) do if i.Name=="GunESP" then i:Destroy() end end
					for _, i in ipairs(script.Parent:GetChildren()) do if i.Name=="DGBGUIClone" then i:Destroy() end end
				else
					local gunesp = Instance.new("Highlight", script.Parent)
					gunesp.OutlineTransparency = 1
					gunesp.FillColor = Color3.fromRGB(255, 255, 0)
					gunesp.Name = "GunESP"
					gunesp.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
					gunesp.Enabled = false
					if workspace:FindFirstChild("GunDrop") then
						gunesp.Adornee = workspace:FindFirstChild("GunDrop")
						gunesp.Enabled = true
						local bguiclone = script.Parent.DroppedGunBGUI:Clone()
						bguiclone.Parent = script.Parent
						bguiclone.Adornee = workspace:FindFirstChild("GunDrop")
						bguiclone.Enabled = true
						bguiclone.Name = "DGBGUIClone"
						fu.notification("Gun has been dropped! Find a yellow highlight.")
					end
	
				end
			end,
			
			--Sheriff_Aimbot = function()
			--	if sheriffAimbot then
			--		sheriffAimbot = false
			--	else
			--		sheriffAimbot = true
			--		fu.notification("This will correct your shot to shoot murderer directly.")
			--	end
			--end,
		}}
	}
	
	module[3] = {
		Type = "Text",
		Args = {"Tools"}
	}
	
	module[4] = {
		Type = "Button",
		Args = {"射杀凶手", function(Self)
			if findSheriff() ~= game.Players.LocalPlayer then fu.notification("You're not sheriff/hero.") return end
			if not findMurderer() then
				fu.notification("No murderer to shoot.")
				return
			end
			
			if not game.Players.LocalPlayer.Character:FindFirstChild("Gun") then
				local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Gun") then
					game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Gun"))
				else
					fu.notification("You don't have the gun..?")
					return
				end
			end
			local args = {
				[1] = 1,
				[2] = findMurderer().Character:FindFirstChild("HumanoidRootPart").Position + findMurderer().Character:FindFirstChild("Humanoid").MoveDirection * shootOffset,
				[3] = "AH"
			}
	
			game:GetService("Players").LocalPlayer.Character.Gun.KnifeServer.ShootGun:InvokeServer(unpack(args))
		end,}
	}
	
	module[5] = {
		Type = "Input",
		Args = {"射击位置偏移", "Set", function(Self, text)
			if not tonumber(text) then fu.notification("Not a valid number.") return end
			
			if tonumber(text) > 10 then
				fu.notification("An offset with a multiplier of 10 might not at all shoot the murderer!")
			end
			if tonumber(text) < 0 then
				fu.notification("An offset with a negative multiplier will make a shot BEHIND the murderer's walk direction.")
			end
			shootOffset = tonumber(text)
			fu.notification("Offset has been set.")
		end,}
	}
	
	module[6] = {
		Type = "Text",
		Args = {"当凶手移动时，自动凶手的镜头就会错过. 射击抵消调整凶手的运动. 推荐是3."}
	}
	
	module[7] = {
		Type = "ButtonGrid",
		Toggleable = true,
		Args = {1, {
			Coins_Magnet = function()
				coinAutoCollect = not coinAutoCollect
				if coinAutoCollect then
					fu.notification("硬币磁铁目前正在车辆上.以自己的风险使用.")
				end
			end,
			Auto_Shoot_murderer = function()
				autoShooting = not autoShooting
				if findSheriff() == game.Players.LocalPlayer and autoShooting then
					fu.notification("Auto-shooting started.")
					repeat
						task.wait(0.1)
						local murderer = findMurderer()
						if not murderer then fu.notification("No murderer.") continue end
						local murdererPosition = murderer.Character.HumanoidRootPart.Position
						local characterRootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
						local rayDirection = murdererPosition - characterRootPart.Position
	
						local raycastParams = RaycastParams.new()
						raycastParams.FilterType = Enum.RaycastFilterType.Exclude
						raycastParams.FilterDescendantsInstances = {game.Players.LocalPlayer.Character}
	
						local hit = workspace:Raycast(characterRootPart.Position, rayDirection, raycastParams)
						if not hit or hit.Instance.Parent == murderer.Character then -- Check if nothing collides or if it collides with the murderer
							fu.notification("Auto-shooting!")
							if not game.Players.LocalPlayer.Character:FindFirstChild("Gun") then
								local hum = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
								if game.Players.LocalPlayer.Backpack:FindFirstChild("Gun") then
									game.Players.LocalPlayer.Character:FindFirstChild("Humanoid"):EquipTool(game.Players.LocalPlayer.Backpack:FindFirstChild("Gun"))
								else
									fu.notification("你没有枪..?")
									return
								end
							end
							local args = {
								[1] = 1,
								[2] = findMurderer().Character:FindFirstChild("HumanoidRootPart").Position + findMurderer().Character:FindFirstChild("Humanoid").MoveDirection * shootOffset,
								[3] = "AH"
							}
	
							game:GetService("Players").LocalPlayer.Character.Gun.KnifeServer.ShootGun:InvokeServer(unpack(args))
						end
					until findSheriff() ~= game.Players.LocalPlayer or not autoShooting
				end
			end,
		}}
	}
	
	module[8] = {Type="Text", Args={""}}
	
	module[9] = {
		Type = "Text",
		Args = {"以下工具可以是 <font color='#FF0000'>检测,</font> 游戏和玩家都是明智的.以自己的风险使用.", "center"}
	}
	
	module[10] = {
		Type = "Button",
		Args = {"快速移动到枪枪", function(Self)
			if not workspace:FindFirstChild("GunDrop") then fu.notification("No dropped gun to be teleported to.") return end
			fu.notification("试图枪支到枪..")
			
			local pathToGun = phs:CreatePath({
				AgentRadius = 3,
				AgentHeight = game.Players.LocalPlayer.Character:GetExtentsSize().Y,
				AgentCanJump = true
			})
			local completed, err = pcall(function()
				pathToGun:ComputeAsync(game.Players.LocalPlayer.Character.PrimaryPart.Position, Vector3.new(workspace:FindFirstChild("GunDrop"):GetPivot().X, workspace:FindFirstChild("GunDrop"):GetPivot().Y, workspace:FindFirstChild("GunDrop"):GetPivot().Z))
			end)
			
			if completed and pathToGun.Status == Enum.PathStatus.Success then
				fu.notification("Found a path. Moving.")
				for _, waypoint in pathToGun:GetWaypoints() do
					task.wait(0.1)
					game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"), TweenInfo.new(0.1, Enum.EasingStyle.Linear), {
						CFrame = CFrame.new(waypoint.Position + Vector3.new(0, 3, 0))	
					}):Play()
				end
			else
				fu.notification("找不到枪的适当路径.尝试更靠近枪.")
			end
		end,}
	}
	
	_G.Modules[3] = module
	
end
local function INPG_fake_script() -- Fake Script: StarterGui.YARHM.AddCustomModule.Add.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = XUI["_Add"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local ts = game:GetService("TweenService")
	
	
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.TextBox.Text == "" then return end
		ts:Create(script.Parent.Parent.Parent.Menu.UIScale, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Scale = 1
		}):Play()
		ts:Create(script.Parent.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, -0.5)
		}):Play()
		
		
		local lastmodule = _G.Modules[#_G.Modules]
		require(script.Parent.Parent.Parent.FUNCTIONS).notification("Module is loading...")
		local newmodule = loadstring(game:HttpGet(script.Parent.Parent.TextBox.Text))()
		if newmodule["BG_TASK"] then
			coroutine.wrap(newmodule["BG_TASK"])()
		end
		if _G.Modules[#_G.Modules] ~= lastmodule then
			local newmodule = _G.Modules[#_G.Modules]
			require(script.Parent.Parent.Parent.FUNCTIONS).notification("New module added: " .. newmodule["Name"])
			require(script.Parent.Parent.Parent.FUNCTIONS).refreshlist()
		else
			require(script.Parent.Parent.Parent.FUNCTIONS).notification("Module failed to load after 5 seconds.")
		end
	end)
end
local function BOCLRJC_fake_script() -- Fake Script: StarterGui.YARHM.AddCustomModule.Cancel.LocalScript
    local script = Instance.new("LocalScript")
    script.Name = "LocalScript"
    script.Parent = XUI["_Cancel"]
    local req = require
    local require = function(obj)
        local fake = fake_module_scripts[obj]
        if fake then
            return fake()
        end
        return req(obj)
    end

	local ts = game:GetService("TweenService")
	
	script.Parent.MouseButton1Click:Connect(function()
		ts:Create(script.Parent.Parent.Parent.Menu.UIScale, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Scale = 1
		}):Play()
		ts:Create(script.Parent.Parent, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Position = UDim2.fromScale(0.5, -0.5)
		}):Play()
	end)
end

coroutine.wrap(GICVX_fake_script)()
coroutine.wrap(ZNDKBAA_fake_script)()
coroutine.wrap(VNSWJ_fake_script)()
coroutine.wrap(TTVRS_fake_script)()
coroutine.wrap(TZEK_fake_script)()
coroutine.wrap(GIGHQO_fake_script)()
coroutine.wrap(RMKEEKN_fake_script)()
coroutine.wrap(CSGP_fake_script)()
coroutine.wrap(LOAOODV_fake_script)()
coroutine.wrap(INPG_fake_script)()
coroutine.wrap(BOCLRJC_fake_script)()























