local placeId = game.PlaceId
local chapter1PlaceId = 4480809144
local chapter2PlaceId = 10384852727
local chapter3PlaceId = 10384858885

if placeId == chapter1PlaceId then
    print("Chapter 1")
    wait(1)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Chapter 1",
        Text = "Loading...",
        Duration = 3
    })
    wait(2)

local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
local Window = WindUI:CreateWindow({
    Title = "XGOHUB l 恐怖奶奶[第1章]", -- UI标题
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
    Title = "XGOHUB | 恐怖奶奶", -- 标题
    Icon = "rbxassetid://128885038925647", -- 图标
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), -- 颜色1
        Color3.fromHex("F89B29") -- 颜色2
    )
})

local HighlightLib = {}

local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineTransparency = 0.5
local CoreGui = game:FindService("CoreGui")
local Workspace = game.Workspace
local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

HighlightLib.Models = {}
HighlightLib.Parts = {}

local function addNameTag(instance, name, color)
    local nameTag = Instance.new("BillboardGui")
    nameTag.Adornee = instance
    nameTag.Size = UDim2.new(0, 75, 0, 30)
    nameTag.StudsOffset = Vector3.new(0, 3, 0)
    nameTag.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = color
    textLabel.TextStrokeTransparency = 0
    textLabel.Text = name
    textLabel.TextScaled = true
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextSize = 12
    textLabel.Parent = nameTag

    nameTag.Parent = instance
end

local function HighlightPart(name, fillColor, outlineColor)
    for _, object in ipairs(Workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            if object.Name:lower() == name:lower() then
                local Highlight = Instance.new("Highlight")
                Highlight.Parent = Storage
                Highlight.Adornee = object
                Highlight.FillColor = fillColor
                Highlight.DepthMode = DepthMode
                Highlight.FillTransparency = FillTransparency
                Highlight.OutlineColor = outlineColor
                Highlight.OutlineTransparency = OutlineTransparency
                addNameTag(object, name, outlineColor)
                table.insert(HighlightLib.Parts, {object, Highlight})
            end
        end
    end
end

local function HighlightModel(name, fillColor, outlineColor)
    for _, model in ipairs(Workspace:GetDescendants()) do
        if model:IsA("Model") and model.Name:lower() == name:lower() then
            local highlight = Instance.new("Highlight")
            highlight.Name = model.Name
            highlight.FillColor = fillColor
            highlight.DepthMode = DepthMode
            highlight.FillTransparency = FillTransparency
            highlight.OutlineColor = outlineColor
            highlight.OutlineTransparency = OutlineTransparency
            highlight.Parent = Storage
            highlight.Adornee = model
            table.insert(HighlightLib.Models, {model, highlight})
            addNameTag(model, model.Name, outlineColor)
            return
        end
    end
end

local function UpdateHighlights()
    for _, highlightedPart in pairs(HighlightLib.Parts) do
        local part, highlight = highlightedPart[1], highlightedPart[2]
        if part and part.Parent then
            highlight.Adornee = part
        else
            highlight:Destroy()
            table.remove(HighlightLib.Parts, _)
        end
    end

    for _, highlightedModel in pairs(HighlightLib.Models) do
        local model, highlight = highlightedModel[1], highlightedModel[2]
        if model and model.Parent then
            highlight.Adornee = model
        else
            highlight:Destroy()
            table.remove(HighlightLib.Models, _)
        end
    end
end

Workspace.DescendantAdded:Connect(function(instance)
    if instance:IsA("BasePart") or instance:IsA("Model") then
        UpdateHighlights()
    end
end)

HighlightLib.HighlightModel = function(name, fillColor, outlineColor)
    HighlightModel(name, fillColor, outlineColor)
end

HighlightLib.HighlightPart = function(name, fillColor, outlineColor)
    HighlightPart(name, fillColor, outlineColor)
end

local tab = Window:Tab({
    Title = "第1章", -- 主要标签
    Icon = "house", -- 房子图标
})
local ESPTab = Window:Tab({
    Title = "ESP", -- 主要标签
    Icon = "eye", -- 房子图标
})
local ToolsTab = Window:Tab({
    Title = "客户端", -- 信息标签
    Icon = "book-user", -- 图标
})
local Divider = Window:Divider() -- 分隔线

local SettingsTab = Window:Tab({
    Title = "窗口和文件配置[设置]", -- 窗口和文件配置
    Icon = "settings", -- 设置图标
})
local CreateThemeTab = Window:Tab({
    Title = "创建主题", -- 创建主题
    Icon = "palette", -- 调色板图标
})
local Divider = Window:Divider() -- 分隔线
tab:Section({ 
    Title = "第1章",
    TextSize = 22,
})

local lighting = game.Lighting
local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

local Dropdown = tab:Dropdown({
    Title = "项目选择",
    Desc = "从下拉菜单中选择项目以获取",
    Multi = false, -- 根据需要设置是否允许多选
    Value = "Preset1", -- 默认选中的值
    AllowNone = true, -- 允许不选择
    Values = presets, -- 下拉菜单中的所有值
    Callback = function(selectedPreset)
        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    local preset = workspace:FindFirstChild(selectedPreset)
                    if preset then
                        local toolObject = preset:FindFirstChild(tool.Name)
                        if toolObject and toolObject:FindFirstChild("InteractRemote") then
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            toolObject.InteractRemote:FireServer(unpack(args))
                            wait(0.1)
                        end
                    end
                end
            end
        else
            warn("Lighting not found.")
        end
    end
})

local Button = tab:Button({
    Title = "选择全部项目",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    for _, presetName in ipairs(presets) do
                        local preset = workspace:FindFirstChild(presetName)
                        if preset then
                            local toolObject = preset:FindFirstChild(tool.Name)
                            if toolObject and toolObject:FindFirstChild("InteractRemote") then
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer
                                }
                                toolObject.InteractRemote:FireServer(unpack(args))
                                wait(0.1)
                            end
                        end
                    end
                end
            end
        else
            warn("Please Don't Skid ;-;")
        end
    end,
})

local Button = tab:Button({
    Title = "获得全部物品", -- 设置按钮的标题
    Callback = function()
        local generalItems = {"Crossbow", "Note", "FreezeTrap", "Pepper spray"}
        local args = {
            [1] = game:GetService("Players").LocalPlayer
        }

        local function interactWithItem(itemName)
            local generalItemsFolder = workspace:FindFirstChild("General Items")
            if generalItemsFolder then
                local item = generalItemsFolder:FindFirstChild(itemName)
                if item and item:FindFirstChild("InteractRemote") then
                    item.InteractRemote:FireServer(unpack(args))
                    return true
                end
            end
            return false
        end

        for _, itemName in ipairs(generalItems) do
            interactWithItem(itemName)
            wait(0.1)
        end
    end,
})

-- 获得钥匙按钮
local ButtonGetKey = tab:Button({
    Title = "获得钥匙",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") and tool.Name:find("key") then
                    for _, presetName in ipairs(presets) do
                        local preset = workspace:FindFirstChild(presetName)
                        if preset then
                            local toolObject = preset:FindFirstChild(tool.Name)
                            if toolObject and toolObject:FindFirstChild("InteractRemote") then
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer
                                }
                                toolObject.InteractRemote:FireServer(unpack(args))
                                wait(0.1)
                            end
                        end
                    end
                end
            end
        else
            warn("Please Don't Skid ;-;")
        end
    end,
})

-- 透视奶奶按钮
local Button = ESPTab:Button({
    Title = "透视奶奶",
    Callback = function()
        HighlightLib.HighlightModel("Granny", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Model") and descendant.Name == "Granny" then
                HighlightLib.HighlightModel("Granny", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))
            end
        end)
    end,
})

-- 透视母亲按钮
local Button = ESPTab:Button({
    Title = "透视SlendrinaMother",
    Callback = function()
        HighlightLib.HighlightModel("SlendrinaMother", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Model") and descendant.Name == "SlendrinaMother" then
                HighlightLib.HighlightModel("SlendrinaMother", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))
            end
        end)
    end,
})

-- 透视玩家按钮
local Button = ESPTab:Button({
    Title = "透视玩家",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
    end,
})

-- 透视物品按钮
local Button = ESPTab:Button({
    Title = "透视物品",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        local toolNames = {}
        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    table.insert(toolNames, tool.Name)
                end
            end
        end

        local function highlightMatchingParts()
            for _, part in ipairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and table.find(toolNames, part.Name) then
                    HighlightLib.HighlightPart(part.Name, Color3.fromRGB(0, 225, 0), Color3.fromRGB(0, 225, 0))
                end
            end
        end

        highlightMatchingParts()

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("BasePart") and table.find(toolNames, descendant.Name) then
                HighlightLib.HighlightPart(descendant.Name, Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 225, 0))
            end
        end)
    end,
})

-- 练习模式按钮
local Button = ToolsTab:Button({
    Title = "练习模式",
    Callback = function()
        for _, object in pairs(workspace:GetDescendants()) do
            if object:IsA("Model") and object.Name == "Granny" then
                object:Destroy()
            end
        end
        wait(0.1)
        for _, object in pairs(workspace:GetDescendants()) do
            if object:IsA("Model") and object.Name == "SlendrinaMother" then
                object:Destroy()
            end
        end
    end,
})

-- 即时互动按钮
local Button = ToolsTab:Button({
    Title = "即时互动",
    Callback = function()
        game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            fireproximityprompt(prompt)
        end)
    end,
})

-- 去除陷阱按钮
local Button = ToolsTab:Button({
    Title = "去除陷阱",
    Callback = function()
        while true do
            for _, object in pairs(workspace:GetDescendants()) do
                if object:IsA("Part") and object.Name == "Close" then
                    object:Destroy()
                end
            end
            wait(5)
        end
    end,
})

-- OP的按钮
local isToggled = false
local hiddenButtons = {}

local function hideDropButtons(container)
    for _, v in pairs(container:GetDescendants()) do
        if v:IsA("TextButton") and v.Text:find("DROP") then
            if v.Visible then
                v.Visible = false
                table.insert(hiddenButtons, v)
            end
        end
    end
end

local function showHiddenButtons()
    for _, v in ipairs(hiddenButtons) do
        if v and v.Parent then
            v.Visible = true
        end
    end
    hiddenButtons = {}
end

local Button = ToolsTab:Button({
    Title = "OP的",
    Callback = function()
        isToggled = not isToggled
        if isToggled then
            hideDropButtons(workspace)
        else
            showHiddenButtons()
        end
    end,
})

local Button = ToolsTab:Toggle({
    Title = "放置陷阱",
    Default = false,
    Callback = function(state)
        local isToggled = state

        if not isToggled then
            hideDropButtons(workspace)
            hideDropButtons(game:GetService("Players"))
        else
            showHiddenButtons()
        end

        while isToggled do
            task.wait(0.1)
            local args = {
                [1] = game:GetService("Players").LocalPlayer
            }
            local player = game:GetService("Players").LocalPlayer
            local character = player.Character
            local backpack = player:FindFirstChildOfClass("Backpack")

            local freezeTrapTool = backpack and backpack:FindFirstChild("Freeze trap")
            if freezeTrapTool and character then
                local humanoid = character:FindFirstChildOfClass("Humanoid")
                if humanoid then
                    humanoid:EquipTool(freezeTrapTool)
                end
            end

            local freezeTrap = workspace:FindFirstChild("General Items"):FindFirstChild("FreezeTrap")
            if freezeTrap and freezeTrap:FindFirstChild("InteractRemote") then
                freezeTrap.InteractRemote:FireServer(unpack(args))
            end
            task.wait(0.1)

            local freezeTrapInCharacter = character and character:FindFirstChild("Freeze trap")
            if freezeTrapInCharacter and freezeTrapInCharacter:FindFirstChild("FireEvent") then
                freezeTrapInCharacter.FireEvent:FireServer(unpack(args))
            end
            task.wait(0.1)
        end

        if not isToggled then
            hideDropButtons(workspace)
            hideDropButtons(game:GetService("Players"))
        end
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
    Desc = "通用脚本[等待1~5秒]",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/2.1814.lua?raw=true"))()
    end,
})

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = SettingsTab:Dropdown({
    Title = "选择主题",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = SettingsTab:Toggle({
    Title = "切换窗口透明度",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

SettingsTab:Section({ Title = "保存" })

local fileNameInput = ""
SettingsTab:Input({
    Title = "输入文件名",
    PlaceholderText = "输入文件名",
    Callback = function(text)
        fileNameInput = text
    end
})

SettingsTab:Button({
    Title = "保存文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

SettingsTab:Section({ Title = "加载" })

local filesDropdown
local files = ListFiles()

filesDropdown = SettingsTab:Dropdown({
    Title = "选择文件",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
    end
})

SettingsTab:Button({
    Title = "加载文件",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "文件已加载",
                    Content = "加载的数据: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})
SettingsTab:Button({
    Title = "覆盖文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})
SettingsTab:Button({
    Title = "刷新列表",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})
local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].PlaceholderText

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        PlaceholderText = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = CreateThemeTab:Input({
    Title = "主题名称",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})
CreateThemeTab:Colorpicker({
    Title = "背景颜色",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "轮廓颜色",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "文字颜色",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "占位符文本颜色",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

CreateThemeTab:Button({
    Title = "更新主题",
    Callback = function()
        updateTheme()
    end
})
elseif placeId == chapter2PlaceId then
    print("Chapter 2")
    wait(1)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Chapter 2",
        Text = "Loading...",
        Duration = 3
    })
    wait(2)

local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
local Window = WindUI:CreateWindow({
    Title = "XGOHUB l 恐怖奶奶[第2章]", -- UI标题
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
    Title = "XGOHUB | 恐怖奶奶", -- 标题
    Icon = "rbxassetid://128885038925647", -- 图标
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), -- 颜色1
        Color3.fromHex("F89B29") -- 颜色2
    )
})

local HighlightLib = {}

local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineTransparency = 0.5
local CoreGui = game:FindService("CoreGui")
local Workspace = game.Workspace
local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

HighlightLib.Models = {}
HighlightLib.Parts = {}

local function addNameTag(instance, name, color)
    local nameTag = Instance.new("BillboardGui")
    nameTag.Adornee = instance
    nameTag.Size = UDim2.new(0, 75, 0, 30)
    nameTag.StudsOffset = Vector3.new(0, 3, 0)
    nameTag.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = color
    textLabel.TextStrokeTransparency = 0
    textLabel.Text = name
    textLabel.TextScaled = true
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextSize = 12
    textLabel.Parent = nameTag

    nameTag.Parent = instance
end

local function HighlightPart(name, fillColor, outlineColor)
    for _, object in ipairs(Workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            if object.Name:lower() == name:lower() then
                local Highlight = Instance.new("Highlight")
                Highlight.Parent = Storage
                Highlight.Adornee = object
                Highlight.FillColor = fillColor
                Highlight.DepthMode = DepthMode
                Highlight.FillTransparency = FillTransparency
                Highlight.OutlineColor = outlineColor
                Highlight.OutlineTransparency = OutlineTransparency
                addNameTag(object, name, outlineColor)
                table.insert(HighlightLib.Parts, {object, Highlight})
            end
        end
    end
end

local function HighlightModel(name, fillColor, outlineColor)
    for _, model in ipairs(Workspace:GetDescendants()) do
        if model:IsA("Model") and model.Name:lower() == name:lower() then
            local highlight = Instance.new("Highlight")
            highlight.Name = model.Name
            highlight.FillColor = fillColor
            highlight.DepthMode = DepthMode
            highlight.FillTransparency = FillTransparency
            highlight.OutlineColor = outlineColor
            highlight.OutlineTransparency = OutlineTransparency
            highlight.Parent = Storage
            highlight.Adornee = model
            table.insert(HighlightLib.Models, {model, highlight})
            addNameTag(model, model.Name, outlineColor)
            return
        end
    end
end

local function UpdateHighlights()
    for _, highlightedPart in pairs(HighlightLib.Parts) do
        local part, highlight = highlightedPart[1], highlightedPart[2]
        if part and part.Parent then
            highlight.Adornee = part
        else
            highlight:Destroy()
            table.remove(HighlightLib.Parts, _)
        end
    end

    for _, highlightedModel in pairs(HighlightLib.Models) do
        local model, highlight = highlightedModel[1], highlightedModel[2]
        if model and model.Parent then
            highlight.Adornee = model
        else
            highlight:Destroy()
            table.remove(HighlightLib.Models, _)
        end
    end
end

Workspace.DescendantAdded:Connect(function(instance)
    if instance:IsA("BasePart") or instance:IsA("Model") then
        UpdateHighlights()
    end
end)

HighlightLib.HighlightModel = function(name, fillColor, outlineColor)
    HighlightModel(name, fillColor, outlineColor)
end

HighlightLib.HighlightPart = function(name, fillColor, outlineColor)
    HighlightPart(name, fillColor, outlineColor)
end

local tab = Window:Tab({
    Title = "第2章", -- 主要标签
    Icon = "house", -- 房子图标
})
local ESPTab = Window:Tab({
    Title = "ESP", -- 主要标签
    Icon = "eye", -- 房子图标
})
local ToolsTab = Window:Tab({
    Title = "客户端", -- 信息标签
    Icon = "book-user", -- 图标
})
local Divider = Window:Divider() -- 分隔线

local SettingsTab = Window:Tab({
    Title = "窗口和文件配置[设置]", -- 窗口和文件配置
    Icon = "settings", -- 设置图标
})
local CreateThemeTab = Window:Tab({
    Title = "创建主题", -- 创建主题
    Icon = "palette", -- 调色板图标
})
local Divider = Window:Divider() -- 分隔线
tab:Section({ 
    Title = "第2章",
    TextSize = 22,
})

local lighting = game.Lighting
local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

local Dropdown = tab:Dropdown({
    Title = "项目选择",
    Desc = "从下拉菜单中选择项目以获取",
    Multi = false, -- 根据需要设置是否允许多选
    Value = "Preset1", -- 默认选中的值
    AllowNone = true, -- 允许不选择
    Values = presets, -- 下拉菜单中的所有值
    Callback = function(selectedPreset)
        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    local preset = workspace:FindFirstChild(selectedPreset)
                    if preset then
                        local toolObject = preset:FindFirstChild(tool.Name)
                        if toolObject and toolObject:FindFirstChild("InteractRemote") then
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            toolObject.InteractRemote:FireServer(unpack(args))
                            wait(0.1)
                        end
                    end
                end
            end
        else
            warn("Lighting not found.")
        end
    end
})

local Button = tab:Button({
    Title = "选择全部项目",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    for _, presetName in ipairs(presets) do
                        local preset = workspace:FindFirstChild(presetName)
                        if preset then
                            local toolObject = preset:FindFirstChild(tool.Name)
                            if toolObject and toolObject:FindFirstChild("InteractRemote") then
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer
                                }
                                toolObject.InteractRemote:FireServer(unpack(args))
                                wait(0.1)
                            end
                        end
                    end
                end
            end
        else
            warn("Please Don't Skid ;-;")
        end
    end,
})

local ButtonGetKey = tab:Button({
    Title = "获得钥匙",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") and tool.Name:find("key") then
                    for _, presetName in ipairs(presets) do
                        local preset = workspace:FindFirstChild(presetName)
                        if preset then
                            local toolObject = preset:FindFirstChild(tool.Name)
                            if toolObject and toolObject:FindFirstChild("InteractRemote") then
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer
                                }
                                toolObject.InteractRemote:FireServer(unpack(args))
                                wait(0.1)
                            end
                        end
                    end
                end
            end
        else
            warn("Please Don't Skid ;-;")
        end
    end,
})
-- 透视奶奶按钮
local Button = ESPTab:Button({
    Title = "透视奶奶",
    Callback = function()
        HighlightLib.HighlightModel("Granny", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Model") and descendant.Name == "Granny" then
                HighlightLib.HighlightModel("Granny", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))
            end
        end)
    end,
})
local Button = ESPTab:Button({
    Title = "透视爷爷",
    Callback = function()
        HighlightLib.HighlightModel("Grandpa", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Model") and descendant.Name == "Grandpa" then
                HighlightLib.HighlightModel("Grandpa", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))
            end
        end)
    end,
})
-- 透视玩家按钮
local Button = ESPTab:Button({
    Title = "透视玩家",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
    end,
})

-- 透视物品按钮
local Button = ESPTab:Button({
    Title = "透视物品",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        local toolNames = {}
        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    table.insert(toolNames, tool.Name)
                end
            end
        end

        local function highlightMatchingParts()
            for _, part in ipairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and table.find(toolNames, part.Name) then
                    HighlightLib.HighlightPart(part.Name, Color3.fromRGB(0, 225, 0), Color3.fromRGB(0, 225, 0))
                end
            end
        end

        highlightMatchingParts()

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("BasePart") and table.find(toolNames, descendant.Name) then
                HighlightLib.HighlightPart(descendant.Name, Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 225, 0))
            end
        end)
    end,
})
-- 练习模式按钮
local Button = ToolsTab:Button({
    Title = "练习模式",
    Callback = function()
        for _, object in pairs(workspace:GetDescendants()) do
            if object:IsA("Model") and object.Name == "Granny" then
                object:Destroy()
            end
        end
        wait(0.1)
        for _, object in pairs(workspace:GetDescendants()) do
            if object:IsA("Model") and object.Name == "SlendrinaMother" then
                object:Destroy()
            end
        end
    end,
})

-- 即时互动按钮
local Button = ToolsTab:Button({
    Title = "即时互动",
    Callback = function()
        game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            fireproximityprompt(prompt)
        end)
    end,
})

-- 去除陷阱按钮
local Button = ToolsTab:Button({
    Title = "去除陷阱",
    Callback = function()
        while true do
            for _, object in pairs(workspace:GetDescendants()) do
                if object:IsA("Part") and object.Name == "Close" then
                    object:Destroy()
                end
            end
            wait(5)
        end
    end,
})

local Button = tab.newButton({
    Title = "扔手榴弹",
    Callback = function()
        local screenGui = Instance.new("ScreenGui")
        screenGui.Name = "菜单"
        screenGui.ResetOnSpawn = false
        screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

        local button = Instance.new("TextButton")
        button.Size = UDim2.new(0, 100, 0, 30)
        button.Position = UDim2.new(0, 10, 0, 10)
        button.Text = "抛出-G"
        button.Font = Enum.Font.SourceSans
        button.FontSize = Enum.FontSize.Size24
        button.TextColor3 = Color3.new(1, 1, 1)
        button.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        button.Parent = screenGui

        local toggleButton = Instance.new("TextButton")
        toggleButton.Size = UDim2.new(0, 100, 0, 30)
        toggleButton.Position = UDim2.new(0, 10, 0, 50)
        toggleButton.Text = "切换拖动"
        toggleButton.Name = "ToggleDragButton" -- Unique identifier
        toggleButton.Font = Enum.Font.SourceSans
        toggleButton.FontSize = Enum.FontSize.Size24
        toggleButton.TextColor3 = Color3.new(1, 1, 1)
        toggleButton.BackgroundColor3 = Color3.new(0.2, 0.2, 0.2)
        toggleButton.Parent = screenGui

        -- Remove duplicates of "ToggleDragButton"
        for _, gui in pairs(screenGui:GetChildren()) do
            if gui:IsA("TextButton") and gui.Name == "ToggleDragButton" and gui ~= toggleButton then
                gui:Destroy()
            end
        end

        local UserInputService = game:GetService("UserInputService")

        local dragToggle = false
        local dragInput = nil
        local dragStart = nil
        local startPos = nil

        local function updateInput(input)
            local delta = input.Position - dragStart
            button.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        end

        local function toggleDraggable()
            dragToggle = not dragToggle
            if not dragToggle then
                button.AnchorPoint = Vector2.new(0.5, 0.5)
                button.Position = UDim2.new(0, button.Position.X.Offset, 0, button.Position.Y.Offset)
                if button:FindFirstChild("AnchorsConstraint") then
                    button.AnchorsConstraint:Destroy()
                end
            end
        end

        button.InputBegan:Connect(function(input)
            if (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseButton1) and dragToggle then
                dragStart = input.Position
                startPos = button.Position
                input.Changed:Connect(function()
                    if input.UserInputState == Enum.UserInputState.End then
                        dragToggle = false
                    end
                end)
            end
        end)

        UserInputService.InputChanged:Connect(function(input)
            if dragToggle and (input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement) then
                updateInput(input)
            end
        end)

        toggleButton.MouseButton1Click:Connect(toggleDraggable)

        button.MouseButton1Click:Connect(function()
            local args = {
                [1] = game:GetService("Players").LocalPlayer
            }
            game:GetService("Players").LocalPlayer.PlayerGui.MainGUI.ScreenGUI.HandGrenadeGUI.EnemyDamage:FireServer(unpack(args))
        end)
    end
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
    Desc = "通用脚本[等待1~5秒]",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/2.1814.lua?raw=true"))()
    end,
})

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = SettingsTab:Dropdown({
    Title = "选择主题",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = SettingsTab:Toggle({
    Title = "切换窗口透明度",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

SettingsTab:Section({ Title = "保存" })

local fileNameInput = ""
SettingsTab:Input({
    Title = "输入文件名",
    PlaceholderText = "输入文件名",
    Callback = function(text)
        fileNameInput = text
    end
})

SettingsTab:Button({
    Title = "保存文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

SettingsTab:Section({ Title = "加载" })

local filesDropdown
local files = ListFiles()

filesDropdown = SettingsTab:Dropdown({
    Title = "选择文件",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
    end
})

SettingsTab:Button({
    Title = "加载文件",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "文件已加载",
                    Content = "加载的数据: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})
SettingsTab:Button({
    Title = "覆盖文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})
SettingsTab:Button({
    Title = "刷新列表",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})
local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].PlaceholderText

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        PlaceholderText = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = CreateThemeTab:Input({
    Title = "主题名称",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})
CreateThemeTab:Colorpicker({
    Title = "背景颜色",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "轮廓颜色",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "文字颜色",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "占位符文本颜色",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

CreateThemeTab:Button({
    Title = "更新主题",
    Callback = function()
        updateTheme()
    end
})
elseif placeId == chapter3PlaceId then
    print("Chapter 3")
    wait(1)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Chapter 3",
        Text = "Loading...",
        Duration = 3
    })
    wait(2)

local WindUI = loadstring(game:HttpGet("https://tree-hub.vercel.app/api/UI/WindUI"))()
local Window = WindUI:CreateWindow({
    Title = "XGOHUB l 恐怖奶奶[第3章]", -- UI标题
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
    Title = "XGOHUB | 恐怖奶奶", -- 标题
    Icon = "rbxassetid://128885038925647", -- 图标
    Color = ColorSequence.new(
        Color3.fromHex("FF0F7B"), -- 颜色1
        Color3.fromHex("F89B29") -- 颜色2
    )
})

local HighlightLib = {}

local DepthMode = "AlwaysOnTop"
local FillTransparency = 0.5
local OutlineTransparency = 0.5
local CoreGui = game:FindService("CoreGui")
local Workspace = game.Workspace
local Storage = Instance.new("Folder")
Storage.Parent = CoreGui
Storage.Name = "Highlight_Storage"

HighlightLib.Models = {}
HighlightLib.Parts = {}

local function addNameTag(instance, name, color)
    local nameTag = Instance.new("BillboardGui")
    nameTag.Adornee = instance
    nameTag.Size = UDim2.new(0, 75, 0, 30)
    nameTag.StudsOffset = Vector3.new(0, 3, 0)
    nameTag.AlwaysOnTop = true

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.TextColor3 = color
    textLabel.TextStrokeTransparency = 0
    textLabel.Text = name
    textLabel.TextScaled = true
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextSize = 12
    textLabel.Parent = nameTag

    nameTag.Parent = instance
end

local function HighlightPart(name, fillColor, outlineColor)
    for _, object in ipairs(Workspace:GetDescendants()) do
        if object:IsA("BasePart") then
            if object.Name:lower() == name:lower() then
                local Highlight = Instance.new("Highlight")
                Highlight.Parent = Storage
                Highlight.Adornee = object
                Highlight.FillColor = fillColor
                Highlight.DepthMode = DepthMode
                Highlight.FillTransparency = FillTransparency
                Highlight.OutlineColor = outlineColor
                Highlight.OutlineTransparency = OutlineTransparency
                addNameTag(object, name, outlineColor)
                table.insert(HighlightLib.Parts, {object, Highlight})
            end
        end
    end
end

local function HighlightModel(name, fillColor, outlineColor)
    for _, model in ipairs(Workspace:GetDescendants()) do
        if model:IsA("Model") and model.Name:lower() == name:lower() then
            local highlight = Instance.new("Highlight")
            highlight.Name = model.Name
            highlight.FillColor = fillColor
            highlight.DepthMode = DepthMode
            highlight.FillTransparency = FillTransparency
            highlight.OutlineColor = outlineColor
            highlight.OutlineTransparency = OutlineTransparency
            highlight.Parent = Storage
            highlight.Adornee = model
            table.insert(HighlightLib.Models, {model, highlight})
            addNameTag(model, model.Name, outlineColor)
            return
        end
    end
end

local function UpdateHighlights()
    for _, highlightedPart in pairs(HighlightLib.Parts) do
        local part, highlight = highlightedPart[1], highlightedPart[2]
        if part and part.Parent then
            highlight.Adornee = part
        else
            highlight:Destroy()
            table.remove(HighlightLib.Parts, _)
        end
    end

    for _, highlightedModel in pairs(HighlightLib.Models) do
        local model, highlight = highlightedModel[1], highlightedModel[2]
        if model and model.Parent then
            highlight.Adornee = model
        else
            highlight:Destroy()
            table.remove(HighlightLib.Models, _)
        end
    end
end

Workspace.DescendantAdded:Connect(function(instance)
    if instance:IsA("BasePart") or instance:IsA("Model") then
        UpdateHighlights()
    end
end)

HighlightLib.HighlightModel = function(name, fillColor, outlineColor)
    HighlightModel(name, fillColor, outlineColor)
end

HighlightLib.HighlightPart = function(name, fillColor, outlineColor)
    HighlightPart(name, fillColor, outlineColor)
end

local tab = Window:Tab({
    Title = "第3章", -- 主要标签
    Icon = "house", -- 房子图标
})
local ESPTab = Window:Tab({
    Title = "ESP", -- 主要标签
    Icon = "eye", -- 房子图标
})
local ToolsTab = Window:Tab({
    Title = "客户端", -- 信息标签
    Icon = "book-user", -- 图标
})
local Divider = Window:Divider() -- 分隔线

local SettingsTab = Window:Tab({
    Title = "窗口和文件配置[设置]", -- 窗口和文件配置
    Icon = "settings", -- 设置图标
})
local CreateThemeTab = Window:Tab({
    Title = "创建主题", -- 创建主题
    Icon = "palette", -- 调色板图标
})
local Divider = Window:Divider() -- 分隔线
tab:Section({ 
    Title = "第3章",
    TextSize = 22,
})

local lighting = game.Lighting
local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

local Dropdown = tab:Dropdown({
    Title = "项目选择",
    Desc = "从下拉菜单中选择项目以获取",
    Multi = false, -- 根据需要设置是否允许多选
    Value = "Preset1", -- 默认选中的值
    AllowNone = true, -- 允许不选择
    Values = presets, -- 下拉菜单中的所有值
    Callback = function(selectedPreset)
        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    local preset = workspace:FindFirstChild(selectedPreset)
                    if preset then
                        local toolObject = preset:FindFirstChild(tool.Name)
                        if toolObject and toolObject:FindFirstChild("InteractRemote") then
                            local args = {
                                [1] = game:GetService("Players").LocalPlayer
                            }
                            toolObject.InteractRemote:FireServer(unpack(args))
                            wait(0.1)
                        end
                    end
                end
            end
        else
            warn("Lighting not found.")
        end
    end
})

local Button = tab:Button({
    Title = "选择全部项目",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    for _, presetName in ipairs(presets) do
                        local preset = workspace:FindFirstChild(presetName)
                        if preset then
                            local toolObject = preset:FindFirstChild(tool.Name)
                            if toolObject and toolObject:FindFirstChild("InteractRemote") then
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer
                                }
                                toolObject.InteractRemote:FireServer(unpack(args))
                                wait(0.1)
                            end
                        end
                    end
                end
            end
        else
            warn("Please Don't Skid ;-;")
        end
    end,
})

-- 获得钥匙按钮
local Button = tab:Button({
    Title = "获得钥匙",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") and tool.Name:find("key") then
                    for _, presetName in ipairs(presets) do
                        local preset = workspace:FindFirstChild(presetName)
                        if preset then
                            local toolObject = preset:FindFirstChild(tool.Name)
                            if toolObject and toolObject:FindFirstChild("InteractRemote") then
                                local args = {
                                    [1] = game:GetService("Players").LocalPlayer
                                }
                                toolObject.InteractRemote:FireServer(unpack(args))
                                wait(0.1)
                            end
                        end
                    end
                end
            end
        else
            warn("Please Don't Skid ;-;")
        end
    end,
})
-- 透视奶奶按钮
local Button = ESPTab:Button({
    Title = "透视奶奶",
    Callback = function()
        HighlightLib.HighlightModel("Granny", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Model") and descendant.Name == "Granny" then
                HighlightLib.HighlightModel("Granny", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))
            end
        end)
    end,
})

local Button = ESPTab:Button({
    Title = "透视爷爷",
    Callback = function()
        HighlightLib.HighlightModel("Grandpa", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Model") and descendant.Name == "Grandpa" then
                HighlightLib.HighlightModel("Grandpa", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))
            end
        end)
    end,
})
local Button = ESPTab:Button({
    Title = "透视Slendrina",
    Callback = function()
        HighlightLib.HighlightModel("Slendrina", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("Model") and descendant.Name == "Slendrina" then
                HighlightLib.HighlightModel("Slendrina", Color3.fromRGB(255, 0, 0), Color3.fromRGB(255, 0, 0))
            end
        end)
    end,
})
-- 透视玩家按钮
local Button = ESPTab:Button({
    Title = "透视玩家",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP"))()
    end,
})

-- 透视物品按钮
local Button = ESPTab:Button({
    Title = "透视物品",
    Callback = function()
        local lighting = game.Lighting
        local presets = {"Preset1", "Preset2", "Preset3", "Preset4", "Preset5"}

        local toolNames = {}
        if lighting then
            for _, tool in pairs(lighting:GetChildren()) do
                if tool:IsA("Tool") then
                    table.insert(toolNames, tool.Name)
                end
            end
        end

        local function highlightMatchingParts()
            for _, part in ipairs(workspace:GetDescendants()) do
                if part:IsA("BasePart") and table.find(toolNames, part.Name) then
                    HighlightLib.HighlightPart(part.Name, Color3.fromRGB(0, 225, 0), Color3.fromRGB(0, 225, 0))
                end
            end
        end

        highlightMatchingParts()

        workspace.DescendantAdded:Connect(function(descendant)
            if descendant:IsA("BasePart") and table.find(toolNames, descendant.Name) then
                HighlightLib.HighlightPart(descendant.Name, Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 225, 0))
            end
        end)
    end,
})

-- 练习模式按钮
local Button = ToolsTab:Button({
    Title = "练习模式",
    Callback = function()
        for _, object in pairs(workspace:GetDescendants()) do
            if object:IsA("Model") and object.Name == "Granny" then
                object:Destroy()
            end
        end
        wait(0.1)
        for _, object in pairs(workspace:GetDescendants()) do
            if object:IsA("Model") and object.Name == "SlendrinaMother" then
                object:Destroy()
            end
        end
    end,
})

-- 即时互动按钮
local Button = ToolsTab:Button({
    Title = "即时互动",
    Callback = function()
        game:GetService("ProximityPromptService").PromptButtonHoldBegan:Connect(function(prompt)
            fireproximityprompt(prompt)
        end)
    end,
})

-- 去除陷阱按钮
local Button = ToolsTab:Button({
    Title = "去除陷阱",
    Callback = function()
        while true do
            for _, object in pairs(workspace:GetDescendants()) do
                if object:IsA("Part") and object.Name == "Close" then
                    object:Destroy()
                end
            end
            wait(5)
        end
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
    Desc = "通用脚本[等待1~5秒]",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/XGOHUBlIllIlIIIIlllllIIlIlIIIIIllllIIlL/IIIIllllIllliiiilllllllIlIlIlIlLXGXXXG/refs/heads/main/2.1814.lua?raw=true"))()
    end,
})

local themeValues = {}
for name, _ in pairs(WindUI:GetThemes()) do
    table.insert(themeValues, name)
end

local themeDropdown = SettingsTab:Dropdown({
    Title = "选择主题",
    Multi = false,
    AllowNone = false,
    Value = nil,
    Values = themeValues,
    Callback = function(theme)
        WindUI:SetTheme(theme)
    end
})
themeDropdown:Select(WindUI:GetCurrentTheme())

local ToggleTransparency = SettingsTab:Toggle({
    Title = "切换窗口透明度",
    Callback = function(e)
        Window:ToggleTransparency(e)
    end,
    Value = WindUI:GetTransparency()
})

SettingsTab:Section({ Title = "保存" })

local fileNameInput = ""
SettingsTab:Input({
    Title = "输入文件名",
    PlaceholderText = "输入文件名",
    Callback = function(text)
        fileNameInput = text
    end
})

SettingsTab:Button({
    Title = "保存文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})

SettingsTab:Section({ Title = "加载" })

local filesDropdown
local files = ListFiles()

filesDropdown = SettingsTab:Dropdown({
    Title = "选择文件",
    Multi = false,
    AllowNone = true,
    Values = files,
    Callback = function(selectedFile)
        fileNameInput = selectedFile
    end
})

SettingsTab:Button({
    Title = "加载文件",
    Callback = function()
        if fileNameInput ~= "" then
            local data = LoadFile(fileNameInput)
            if data then
                WindUI:Notify({
                    Title = "文件已加载",
                    Content = "加载的数据: " .. HttpService:JSONEncode(data),
                    Duration = 5,
                })
                if data.Transparent then 
                    Window:ToggleTransparency(data.Transparent)
                    ToggleTransparency:SetValue(data.Transparent)
                end
                if data.Theme then WindUI:SetTheme(data.Theme) end
            end
        end
    end
})
SettingsTab:Button({
    Title = "覆盖文件",
    Callback = function()
        if fileNameInput ~= "" then
            SaveFile(fileNameInput, { Transparent = WindUI:GetTransparency(), Theme = WindUI:GetCurrentTheme() })
        end
    end
})
SettingsTab:Button({
    Title = "刷新列表",
    Callback = function()
        filesDropdown:Refresh(ListFiles())
    end
})
local currentThemeName = WindUI:GetCurrentTheme()
local themes = WindUI:GetThemes()

local ThemeAccent = themes[currentThemeName].Accent
local ThemeOutline = themes[currentThemeName].Outline
local ThemeText = themes[currentThemeName].Text
local ThemePlaceholderText = themes[currentThemeName].PlaceholderText

function updateTheme()
    WindUI:AddTheme({
        Name = currentThemeName,
        Accent = ThemeAccent,
        Outline = ThemeOutline,
        Text = ThemeText,
        PlaceholderText = ThemePlaceholderText
    })
    WindUI:SetTheme(currentThemeName)
end

local CreateInput = CreateThemeTab:Input({
    Title = "主题名称",
    Value = currentThemeName,
    Callback = function(name)
        currentThemeName = name
    end
})
CreateThemeTab:Colorpicker({
    Title = "背景颜色",
    Default = Color3.fromHex(ThemeAccent),
    Callback = function(color)
        ThemeAccent = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "轮廓颜色",
    Default = Color3.fromHex(ThemeOutline),
    Callback = function(color)
        ThemeOutline = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "文字颜色",
    Default = Color3.fromHex(ThemeText),
    Callback = function(color)
        ThemeText = color:ToHex()
    end
})
CreateThemeTab:Colorpicker({
    Title = "占位符文本颜色",
    Default = Color3.fromHex(ThemePlaceholderText),
    Callback = function(color)
        ThemePlaceholderText = color:ToHex()
    end
})

CreateThemeTab:Button({
    Title = "更新主题",
    Callback = function()
        updateTheme()
    end
})
