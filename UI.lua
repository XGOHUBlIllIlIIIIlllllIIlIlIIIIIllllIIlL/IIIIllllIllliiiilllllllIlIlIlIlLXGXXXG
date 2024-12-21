local XUI = {
	["_xgohub"] = Instance.new("ScreenGui");
	["_Open"] = Instance.new("TextButton");
	["_UICorner"] = Instance.new("UICorner");
	["_InitOpen"] = Instance.new("LocalScript");
	["_OnClick"] = Instance.new("LocalScript");
	["_Menu"] = Instance.new("Frame");
	["_UICorner1"] = Instance.new("UICorner");
	["_标题名称"] = Instance.new("TextLabel");
	["_HubDesc"] = Instance.new("TextLabel");
	["_List"] = Instance.new("Frame");
	["_UICorner2"] = Instance.new("UICorner");
	["_AutoSetup"] = Instance.new("LocalScript");
	["_ScrollingFrame"] = Instance.new("ScrollingFrame");
	["_UIListLayout"] = Instance.new("UIListLayout");
	["_UIPadding"] = Instance.new("UIPadding");
	["_UIPadding1"] = Instance.new("UIPadding");
	["_UIGradient"] = Instance.new("UIGradient");
	["_UIStroke"] = Instance.new("UIStroke");
	["_UIGradient1"] = Instance.new("UIGradient");
	["_HubCredits"] = Instance.new("TextLabel");
	["_Close"] = Instance.new("TextButton");
	["_UICorner3"] = Instance.new("UICorner");
	["_LocalScript"] = Instance.new("LocalScript");
	["_Area"] = Instance.new("ScrollingFrame");
	["_TextLabel"] = Instance.new("TextLabel");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_UIStroke1"] = Instance.new("UIStroke");
	["_UIGradient2"] = Instance.new("UIGradient");
	["_UIGradient3"] = Instance.new("UIGradient");
	["_AddCustomModule"] = Instance.new("TextButton");
	["_UICorner4"] = Instance.new("UICorner");
	["_UIPadding2"] = Instance.new("UIPadding");
	["_UIStroke2"] = Instance.new("UIStroke");
	["_LocalScript1"] = Instance.new("LocalScript");
	["_UIScale"] = Instance.new("UIScale");
	["_Init"] = Instance.new("LocalScript");
	["_ListButton"] = Instance.new("TextButton");
	["_UICorner5"] = Instance.new("UICorner");
	["_FUNCTIONS"] = Instance.new("ModuleScript");
	["_Notifications"] = Instance.new("Frame");
	["_UIListLayout1"] = Instance.new("UIListLayout");
	["_UIPadding3"] = Instance.new("UIPadding");
	["_Placeholder"] = Instance.new("Frame");
	["_UICorner6"] = Instance.new("UICorner");
	["_TextLabel2"] = Instance.new("TextLabel");
	["_Flee the Facility"] = Instance.new("LocalScript");
	["_Universal"] = Instance.new("LocalScript");
	["_TextBoxPlaceholder"] = Instance.new("Frame");
	["_UIListLayout2"] = Instance.new("UIListLayout");
	["_TextButton"] = Instance.new("TextButton");
	["_UICorner7"] = Instance.new("UICorner");
	["_UIPadding4"] = Instance.new("UIPadding");
	["_TextBox"] = Instance.new("TextBox");
	["_UICorner8"] = Instance.new("UICorner");
	["_FloatingButton"] = Instance.new("TextButton");
	["_UIPadding5"] = Instance.new("UIPadding");
	["_UICorner9"] = Instance.new("UICorner");
	["_FloatingButtons"] = Instance.new("Frame");
	["_DroppedGunBGUI"] = Instance.new("BillboardGui");
	["_TextLabel3"] = Instance.new("TextLabel");
	["_UIStroke3"] = Instance.new("UIStroke");
	["_Murder Mystery 2"] = Instance.new("LocalScript");
	["_AddCustomModule1"] = Instance.new("Frame");
	["_UICorner10"] = Instance.new("UICorner");
	["_UIStroke4"] = Instance.new("UIStroke");
	["_UIGradient4"] = Instance.new("UIGradient");
	["_UIGradient5"] = Instance.new("UIGradient");
	["_UIScale1"] = Instance.new("UIScale");
	["_TextLabel4"] = Instance.new("TextLabel");
	["_TextBox1"] = Instance.new("TextBox");
	["_UICorner11"] = Instance.new("UICorner");
	["_UIPadding6"] = Instance.new("UIPadding");
	["_TextLabel5"] = Instance.new("TextLabel");
	["_Add"] = Instance.new("TextButton");
	["_UICorner12"] = Instance.new("UICorner");
	["_UIPadding7"] = Instance.new("UIPadding");
	["_UIStroke5"] = Instance.new("UIStroke");
	["_LocalScript2"] = Instance.new("LocalScript");
	["_Cancel"] = Instance.new("TextButton");
	["_UICorner13"] = Instance.new("UICorner");
	["_UIPadding8"] = Instance.new("UIPadding");
	["_UIStroke6"] = Instance.new("UIStroke");
	["_LocalScript3"] = Instance.new("LocalScript");
}

-- Properties:

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

XUI["_HubDesc"].Font = Enum.Font.GothamBold
XUI["_HubDesc"].Text = "猫有九条命唯有一颗心"
XUI["_HubDesc"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_HubDesc"].TextSize = 14
XUI["_HubDesc"].TextWrapped = true
XUI["_HubDesc"].TextXAlignment = Enum.TextXAlignment.Right
XUI["_HubDesc"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_HubDesc"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_HubDesc"].BackgroundTransparency = 1
XUI["_HubDesc"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_HubDesc"].BorderSizePixel = 0
XUI["_HubDesc"].Position = UDim2.new(0.708829343, 0, 0.116141364, 0)
XUI["_HubDesc"].Size = UDim2.new(0.470515788, 0, 0.082417585, 0)
XUI["_HubDesc"].Name = "HubDesc"
XUI["_HubDesc"].Parent = XUI["_Menu"]

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

XUI["_HubCredits"].Font = Enum.Font.GothamBold
XUI["_HubCredits"].Text = "˃ ˄ ˂̥̥ "
XUI["_HubCredits"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_HubCredits"].TextScaled = true
XUI["_HubCredits"].TextSize = 14
XUI["_HubCredits"].TextTransparency = 0.699999988079071
XUI["_HubCredits"].TextWrapped = true
XUI["_HubCredits"].TextXAlignment = Enum.TextXAlignment.Right
XUI["_HubCredits"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_HubCredits"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_HubCredits"].BackgroundTransparency = 1
XUI["_HubCredits"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_HubCredits"].BorderSizePixel = 0
XUI["_HubCredits"].Position = UDim2.new(0.785926819, 0, 0.160157606, 0)
XUI["_HubCredits"].Size = UDim2.new(0.316320807, 0, 0.0585099049, 0)
XUI["_HubCredits"].Name = "HubCredits"
XUI["_HubCredits"].Parent = XUI["_Menu"]

XUI["_Close"].Font = Enum.Font.GothamBold
XUI["_Close"].Text = "X"
XUI["_Close"].TextColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Close"].TextSize = 14
XUI["_Close"].Modal = true
XUI["_Close"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_Close"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_Close"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_Close"].BorderSizePixel = 0
XUI["_Close"].Position = UDim2.new(0.947494328, 0, 0.914238751, 0)
XUI["_Close"].Size = UDim2.new(0.0680272132, 0, 0.111940302, 0)
XUI["_Close"].ZIndex = 999999999
XUI["_Close"].Name = "Close"
XUI["_Close"].Parent = XUI["_Menu"]

XUI["_UICorner3"].Parent = XUI["_Close"]

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

XUI["_AddCustomModule"].Font = Enum.Font.Gotham
XUI["_AddCustomModule"].Text = "添加自定义模块"
XUI["_AddCustomModule"].TextColor3 = Color3.fromRGB(255, 255, 255)
XUI["_AddCustomModule"].TextScaled = true
XUI["_AddCustomModule"].TextSize = 14
XUI["_AddCustomModule"].TextWrapped = true
XUI["_AddCustomModule"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_AddCustomModule"].BackgroundColor3 = Color3.fromRGB(50.00000461935997, 50.00000461935997, 50.00000461935997)
XUI["_AddCustomModule"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_AddCustomModule"].BorderSizePixel = 0
XUI["_AddCustomModule"].Position = UDim2.new(0.157244906, 0, 0.914238751, 0)
XUI["_AddCustomModule"].Size = UDim2.new(0.260770977, 0, 0.111940302, 0)
XUI["_AddCustomModule"].Name = "AddCustomModule"
XUI["_AddCustomModule"].Parent = XUI["_Menu"]

XUI["_UICorner4"].Parent = XUI["_AddCustomModule"]

XUI["_UIPadding2"].PaddingBottom = UDim.new(0, 5)
XUI["_UIPadding2"].PaddingLeft = UDim.new(0, 5)
XUI["_UIPadding2"].PaddingRight = UDim.new(0, 5)
XUI["_UIPadding2"].PaddingTop = UDim.new(0, 5)
XUI["_UIPadding2"].Parent = XUI["_AddCustomModule"]

XUI["_UIStroke2"].ApplyStrokeMode = Enum.ApplyStrokeMode.Border
XUI["_UIStroke2"].Color = Color3.fromRGB(255, 255, 255)
XUI["_UIStroke2"].Parent = XUI["_AddCustomModule"]

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

XUI["_AddCustomModule1"].AnchorPoint = Vector2.new(0.5, 0.5)
XUI["_AddCustomModule1"].BackgroundColor3 = Color3.fromRGB(255, 255, 255)
XUI["_AddCustomModule1"].BorderColor3 = Color3.fromRGB(0, 0, 0)
XUI["_AddCustomModule1"].BorderSizePixel = 0
XUI["_AddCustomModule1"].ClipsDescendants = true
XUI["_AddCustomModule1"].Position = UDim2.new(0.5, 0, -0.5, 0)
XUI["_AddCustomModule1"].Size = UDim2.new(0, 440, 0, 268)
XUI["_AddCustomModule1"].Name = "AddCustomModule"
XUI["_AddCustomModule1"].Parent = XUI["_xgohub"]

XUI["_UICorner10"].Parent = XUI["_AddCustomModule1"]

XUI["_UIStroke4"].Color = Color3.fromRGB(255, 255, 255)
XUI["_UIStroke4"].Thickness = 2
XUI["_UIStroke4"].Parent = XUI["_AddCustomModule1"]

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
XUI["_UIGradient5"].Parent = XUI["_AddCustomModule1"]

XUI["_UIScale1"].Parent = XUI["_AddCustomModule1"]

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
XUI["_TextLabel4"].Parent = XUI["_AddCustomModule1"]

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
XUI["_TextBox1"].Parent = XUI["_AddCustomModule1"]

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
XUI["_TextLabel5"].Parent = XUI["_AddCustomModule1"]

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
XUI["_Add"].Parent = XUI["_AddCustomModule1"]

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
XUI["_Cancel"].Parent = XUI["_AddCustomModule1"]

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
    script.Parent = XUI["_Close"]
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
    script.Parent = XUI["_AddCustomModule"]
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
	
	module["Name"] = "Universal"
	
	local ts = game:GetService("TweenService")
	
	module[1] = {
		Type = "Text",
		Args = {"通用模块 - 适用于大多数游戏"}
	}
	
	module[2] = {
		Type = "Button",
		Args = {"无限产量", function(Self)
			loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
		end}
	}
	
	module[3] = {
		Type = "Text",
		Args = {"---"}
	}
	
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























