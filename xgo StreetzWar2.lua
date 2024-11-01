-- XenonHUB Secure Loader
local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local TweenService = game:GetService("TweenService")
local RbxAnalytics = game:GetService("RbxAnalyticsService")
local MarketplaceService = game:GetService("MarketplaceService")
local Lighting = game:GetService("Lighting")

-- Secure encoding/decoding functions
local function decode(str)
    local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
    str=string.gsub(str,'[^'..b..'=]','')
    return (str:gsub('.',function(x)
        if x=='=' then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?',function(x)
        if #x~=8 then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end

local function xorCipher(str, key)
    local result = ""
    for i = 1, #str do
        local byte = string.byte(str, i)
        local keyByte = string.byte(key, ((i-1) % #key) + 1)
        result = result .. string.char(bit32.bxor(byte, keyByte))
    end
    return result
end

local function encrypt(str)
    local key = RbxAnalytics:GetClientId()
    return xorCipher(str, key)
end

local function decrypt(str)
    local key = RbxAnalytics:GetClientId()
    return xorCipher(str, key)
end

-- Secure configuration
local secureConfig = {
    ["api_base"] = encrypt("aHR0cHM6Ly94ZW5vbmh1Yi54eXo="),
    ["api_endpoint"] = encrypt("L2FwaS92YWxpZGF0ZS1rZXk="),
    ["bot_token"] = encrypt("Njc4NDIzNTUyNTpBQUh1NFZ0bVAtRmhhZ081cGJhVkpfVmVRbjI5bHZvaUh2Zw=="),
    ["chat_id"] = encrypt("MTcyMjA5MTk5MA==")
}

local function getSecureValue(key)
    return decode(decrypt(secureConfig[key]))
end

-- Constants
local CONFIG = {
    COLORS = {
        BACKGROUND = Color3.fromRGB(25, 25, 35),
        CONTAINER = Color3.fromRGB(30, 30, 40),
        TEXTBOX = Color3.fromRGB(45, 45, 55),
        LOADING_BG = Color3.fromRGB(40, 40, 50),
        LOADING_BAR = Color3.fromRGB(0, 170, 255),
        GET_KEY_BUTTON = Color3.fromRGB(0, 120, 215),
        SUBMIT_BUTTON = Color3.fromRGB(0, 170, 0),
        TEXT = Color3.fromRGB(255, 255, 255),
        ERROR = Color3.fromRGB(255, 0, 0),
        SUCCESS = Color3.fromRGB(0, 255, 0)
    },
    KEY_FILE_PATH = "XenonHUB_Key.txt"
}

-- Secure HTTP request function
local function secureRequest(url, method, body)
    local success, response = pcall(function()
        return http_request({
            Url = url,
            Method = method or "GET",
            Headers = {
                ["Content-Type"] = "application/json",
                ["X-Security-Token"] = RbxAnalytics:GetClientId()
            },
            Body = body and HttpService:JSONEncode(body) or nil
        })
    end)
    
    if not success then
        return nil, "Connection error"
    end
    
    return response
end

-- GUI Creation Functions
local function createScreenGui()
    local screenGui = Instance.new("ScreenGui")
    screenGui.Name = "XenonHUBKey"
    screenGui.ResetOnSpawn = false
    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    screenGui.DisplayOrder = 999
    screenGui.Parent = Players.LocalPlayer:WaitForChild("PlayerGui")
    return screenGui
end

local function createMainFrame(parent)
    local mainFrame = Instance.new("Frame")
    mainFrame.Name = "MainFrame"
    mainFrame.Size = UDim2.new(0, 400, 0, 300)
    mainFrame.Position = UDim2.new(0.5, -200, 0.5, -150)
    mainFrame.BackgroundColor3 = CONFIG.COLORS.BACKGROUND
    mainFrame.BorderSizePixel = 0
    mainFrame.Active = true
    mainFrame.Draggable = true
    mainFrame.Parent = parent
    return mainFrame
end

local function createBlurEffect()
    local blurEffect = Instance.new("BlurEffect")
    blurEffect.Size = 10
    blurEffect.Parent = Lighting
    return blurEffect
end

local function createContainer(parent)
    local container = Instance.new("Frame")
    container.Name = "Container"
    container.Size = UDim2.new(0.9, 0, 0.9, 0)
    container.Position = UDim2.new(0.05, 0, 0.05, 0)
    container.BackgroundColor3 = CONFIG.COLORS.CONTAINER
    container.BorderSizePixel = 0
    container.Parent = parent
    return container
end

local function createTitle(parent)
    local title = Instance.new("TextLabel")
    title.Size = UDim2.new(1, 0, 0, 40)
    title.Position = UDim2.new(0, 0, 0.05, 0)
    title.BackgroundTransparency = 1
    title.Font = Enum.Font.GothamBold
    title.Text = "XenonHUB"
    title.TextColor3 = CONFIG.COLORS.TEXT
    title.TextSize = 24
    title.Parent = parent
    return title
end

local function createTextBox(parent)
    local textBox = Instance.new("TextBox")
    textBox.Size = UDim2.new(0.8, 0, 0, 40)
    textBox.Position = UDim2.new(0.1, 0, 0.3, 0)
    textBox.BackgroundColor3 = CONFIG.COLORS.TEXTBOX
    textBox.BorderSizePixel = 0
    textBox.Font = Enum.Font.Gotham
    textBox.PlaceholderText = "Enter Key Here"
    textBox.PlaceholderColor3 = Color3.fromRGB(180, 180, 180)
    textBox.Text = ""
    textBox.TextColor3 = CONFIG.COLORS.TEXT
    textBox.TextSize = 14
    textBox.ClearTextOnFocus = false
    textBox.Parent = parent
    return textBox
end

local function createLoadingElements(parent)
    local frame = Instance.new("Frame")
    frame.Size = UDim2.new(0.8, 0, 0, 6)
    frame.Position = UDim2.new(0.1, 0, 0.5, 0)
    frame.BackgroundColor3 = CONFIG.COLORS.LOADING_BG
    frame.BorderSizePixel = 0
    frame.Visible = false
    frame.Parent = parent

    local bar = Instance.new("Frame")
    bar.Size = UDim2.new(0, 0, 1, 0)
    bar.BackgroundColor3 = CONFIG.COLORS.LOADING_BAR
    bar.BorderSizePixel = 0
    bar.Parent = frame

    local text = Instance.new("TextLabel")
    text.Size = UDim2.new(1, 0, 0, 20)
    text.Position = UDim2.new(0, 0, 0.6, 0)
    text.BackgroundTransparency = 1
    text.Font = Enum.Font.Gotham
    text.Text = ""
    text.TextColor3 = CONFIG.COLORS.TEXT
    text.TextSize = 14
    text.Parent = parent

    return frame, bar, text
end

local function createButton(parent, text, position, color)
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.35, 0, 0, 40)
    button.Position = position
    button.BackgroundColor3 = color
    button.BorderSizePixel = 0
    button.Font = Enum.Font.GothamBold
    button.Text = text
    button.TextColor3 = CONFIG.COLORS.TEXT
    button.TextSize = 14
    button.Parent = parent
    return button
end

local function createStatusLabel(parent)
    local status = Instance.new("TextLabel")
    status.Size = UDim2.new(1, 0, 0, 20)
    status.Position = UDim2.new(0, 0, 0.85, 0)
    status.BackgroundTransparency = 1
    status.Font = Enum.Font.Gotham
    status.Text = ""
    status.TextColor3 = CONFIG.COLORS.TEXT
    status.TextSize = 14
    status.Parent = parent
    return status
end

local function addCorner(instance, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, radius or 8)
    corner.Parent = instance
end

local function addHoverEffect(button)
    local originalColor = button.BackgroundColor3
    local lighterColor = Color3.new(
        math.min(originalColor.R + 0.1, 1),
        math.min(originalColor.G + 0.1, 1),
        math.min(originalColor.B + 0.1, 1)
    )
    
    button.MouseEnter:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = lighterColor}):Play()
    end)
    
    button.MouseLeave:Connect(function()
        TweenService:Create(button, TweenInfo.new(0.2), {BackgroundColor3 = originalColor}):Play()
    end)
end

-- UI State Management
local function showLoading(loadingFrame, loadingBar, loadingText, text, callback)
    loadingFrame.Visible = true
    loadingText.Text = text
    loadingBar.Size = UDim2.new(0, 0, 1, 0)
    
    local loadingTween = TweenService:Create(loadingBar, 
        TweenInfo.new(1, Enum.EasingStyle.Linear), 
        {Size = UDim2.new(1, 0, 1, 0)}
    )
    
    loadingTween.Completed:Connect(function()
        if callback then
            callback()
        end
    end)
    
    loadingTween:Play()
    return loadingTween
end

local function hideLoading(loadingFrame, loadingText)
    loadingFrame.Visible = false
    loadingText.Text = ""
end

local function showStatus(statusLabel, message, color)
    statusLabel.Text = message
    statusLabel.TextColor3 = color or CONFIG.COLORS.TEXT
    task.delay(3, function()
        if statusLabel then
            statusLabel.Text = ""
        end
    end)
end

local function showNotification(screenGui, message, duration)
    local notification = Instance.new("TextLabel")
    notification.Size = UDim2.new(0, 300, 0, 50)
    notification.Position = UDim2.new(0.5, -150, 0.7, 0)
    notification.BackgroundColor3 = CONFIG.COLORS.BACKGROUND
    notification.TextColor3 = CONFIG.COLORS.TEXT
    notification.BackgroundTransparency = 0.3
    notification.TextScaled = true
    notification.Font = Enum.Font.SourceSans
    notification.Text = message
    notification.Parent = screenGui
    notification.ZIndex = 10

    local corner = Instance.new("UICorner")
    corner.CornerRadius = UDim.new(0, 10)
    corner.Parent = notification

    task.delay(duration or 3, function()
        notification:Destroy()
    end)
end
----------------MAIN ---------------------------------------------------------------


-- Tunggu hingga game dimuat
repeat task.wait(0.25) until game:IsLoaded();

-- Atur gambar dan toggle key untuk Fluent UI
getgenv().Image = "rbxassetid://101547663996049"; -- Masukkan asset id di sini
getgenv().ToggleUI = "LeftControl" -- Tombol untuk menyalakan/mematikan UI Fluent

-- Fungsi untuk memuat UI di pojok kiri
task.spawn(function()
    if not getgenv().LoadedMobileUI == true then 
        getgenv().LoadedMobileUI = true
        local OpenUI = Instance.new("ScreenGui");
        local ImageButton = Instance.new("ImageButton");
        local UICorner = Instance.new("UICorner");
        OpenUI.Name = "OpenUI";
        OpenUI.Parent = game:GetService("CoreGui");
        OpenUI.ZIndexBehavior = Enum.ZIndexBehavior.Sibling;
        ImageButton.Parent = OpenUI;
        ImageButton.BackgroundColor3 = Color3.fromRGB(105, 105, 105);
        ImageButton.BackgroundTransparency = 1;
        ImageButton.Position = UDim2.new(0.1, 0, 0.1, 0); -- Mengubah posisi ke kiri
        ImageButton.Size = UDim2.new(0, 100, 0, 100);
        ImageButton.Image = getgenv().Image;
        ImageButton.Draggable = true;
        UICorner.CornerRadius = UDim.new(0, 200);
        UICorner.Parent = ImageButton;
        ImageButton.MouseButton1Click:Connect(function()
            game:GetService("VirtualInputManager"):SendKeyEvent(true, getgenv().ToggleUI, false, game);
        end)
    end
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Streetz war 2 " .. Fluent.Version,
    SubTitle = "by XenonHUB",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 360),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "dot" }),
    Extra = Window:AddTab({ Title = "Extra", Icon = "dot" }),
    Gun = Window:AddTab({ Title = "Gun-settings", Icon = "dot" }),
    Cars = Window:AddTab({ Title = "Cars", Icon = "dot" }),
	Farm = Window:AddTab({ Title = "Farm", Icon = "dot" }),
    Info = Window:AddTab({ Title = "Info", Icon = "info" }) 
}

-- Identifikasi executor yang sedang digunakan
local executor = identifyexecutor and identifyexecutor() or "Unknown"

-- Informasi pemain
local VirtualUser = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local player = game.Players.LocalPlayer
local accountAge = player.AccountAge
local isPremium = player.MembershipType == Enum.MembershipType.Premium
local accountCreatedDate = os.date("%Y-%m-%d", os.time() - (accountAge * 86400))

-- Tambahkan paragraph untuk info di tab Info
Tabs.Info:AddParagraph({
    Title = "Executor",
    Content = "Current Executor: " .. executor
})

Tabs.Info:AddParagraph({
    Title = "Account Age",
    Content = "Account Age (days): " .. accountAge
})

Tabs.Info:AddParagraph({
    Title = "Premium Status",
    Content = "Is Premium: " .. tostring(isPremium)
})

Tabs.Info:AddParagraph({
    Title = "Account Created",
    Content = "Account Created: " .. accountCreatedDate
})

Tabs.Info:AddParagraph({
    Title = "Discord",
    Content = "https://discord.com/invite/cF8YeDPt2G"
})

Tabs.Info:AddButton({
    Title = "Copy Link Discord",
    Callback = function()
        setclipboard("https://discord.com/invite/cF8YeDPt2G")
    end
})
-- Get Players
local Players = game:GetService("Players")
local Camera = game.Workspace.CurrentCamera
local RunService = game:GetService("RunService")
local targetPlayer = nil
local attackPower = 500
local cameraFollowEnabled = false
local Dropdown
local Workspace = game:GetService("Workspace")
local UserInputService = game:GetService("UserInputService")
local LocalPlayer = Players.LocalPlayer

-- GUN SETTINGS
local autoChangeAmmoEnabled = false
local tools = {}
local currentAmmoValue = 30
local function updatePlayerDropdown()
    if not Dropdown then return end
    local playerNames = {}
    for _, player in pairs(Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end
    Dropdown:SetValues(playerNames)
    if targetPlayer and Players:FindFirstChild(targetPlayer.Name) then
        Dropdown:SetValue(targetPlayer.Name)
    elseif #playerNames > 0 then
        targetPlayer = Players:FindFirstChild(playerNames[1])
        if targetPlayer then
            Dropdown:SetValue(targetPlayer.Name)
        end
    end
end

local function createPlayerDropdown()
    local playerNames = {}
    for _, player in pairs(Players:GetPlayers()) do
        table.insert(playerNames, player.Name)
    end

    -- Create a new dropdown
    Dropdown = Tabs.Extra:AddDropdown("Dropdown", {
        Title = "Select Target Player",
        Values = playerNames,
        Multi = false,
        Default = playerNames[1] or "",
    })

    -- Handle player selection
    Dropdown:OnChanged(function(Value)
        targetPlayer = Players:FindFirstChild(Value)
        if targetPlayer then
            Fluent:Notify({Title = "Target Selected", Content = "Target player set to: " .. Value, Duration = 3})
            if cameraFollowEnabled then
                Camera.CameraSubject = targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid")
            end
        else
            Fluent:Notify({Title = "Error", Content = "Player not found.", Duration = 3})
        end
    end)

    -- Automatically set the dropdown to the first player if no player is selected
    if targetPlayer then
        Dropdown:SetValue(targetPlayer.Name)
    elseif #playerNames > 0 then
        targetPlayer = Players:FindFirstChild(playerNames[1])
        if targetPlayer then
            Dropdown:SetValue(targetPlayer.Name)
        end
    end
end

-- Initial Dropdown Creation
createPlayerDropdown()

-- Button to refresh player dropdown
Tabs.Extra:AddButton({
    Title = "Refresh Player List",
    Callback = function()
        updatePlayerDropdown()
        Fluent:Notify({Title = "Player List Updated", Content = "The player list has been refreshed.", Duration = 3})
    end
})

-- Input for Attack Power
Tabs.Extra:AddInput("Input", {
    Title = "Set Attack Power",
    Default = tostring(attackPower),
    Placeholder = "Enter attack power",
    Numeric = true, -- Only allows numbers
    Finished = true, -- Only calls callback when you press enter
    Callback = function(Value)
        local newValue = tonumber(Value)
        if newValue then
            attackPower = newValue
            Fluent:Notify({Title = "Attack Power Set", Content = "Attack Power set to: " .. attackPower, Duration = 3})
        else
            Fluent:Notify({Title = "Error", Content = "Invalid value for Attack Power.", Duration = 3})
        end
    end
})

-- Toggle for Camera Follow
local Toggle = Tabs.Extra:AddToggle("MyToggle", {
    Title = "Camera to see to kill",
    Default = false,
    Callback = function(state)
        cameraFollowEnabled = state
        if cameraFollowEnabled and targetPlayer then
            Camera.CameraSubject = targetPlayer.Character and targetPlayer.Character:FindFirstChild("Humanoid")
            Fluent:Notify({Title = "Camera Follow", Content = "Camera is now following " .. targetPlayer.Name, Duration = 3})
        else
            Camera.CameraSubject = Players.LocalPlayer.Character:FindFirstChild("Humanoid")
            Fluent:Notify({Title = "Camera Follow", Content = "Camera follow disabled.", Duration = 3})
        end
    end
})

-- Fire Attack Button
Tabs.Extra:AddButton({
    Title = "Klill",
    Description = "You must use fist first",
    Callback = function()
        if targetPlayer then
            local character = targetPlayer.Character
            if character and character:FindFirstChild("Head") then
                local A_1 = character.Head
                local A_2 = attackPower
                local A_3 = Players.LocalPlayer.Character:FindFirstChild("RightHand")
                if A_3 then
                    local Event = Players.LocalPlayer.Character:FindFirstChild("Fist"):FindFirstChild("Script"):FindFirstChild("E")
                    if Event then
                        Event:FireServer(A_1, A_2, A_3)
                        Fluent:Notify({Title = "Kill", Content = "You Kill at " .. targetPlayer.Name, Duration = 3})
                    else
                        Fluent:Notify({Title = "Error", Content = "Attack event not found.", Duration = 3})
                    end
                else
                    Fluent:Notify({Title = "Error", Content = "Player's hand not found.", Duration = 3})
                end
            else
                Fluent:Notify({Title = "Error", Content = "Target player is not available or has respawned.", Duration = 3})
            end
        else
            Fluent:Notify({Title = "Error", Content = "No target selected.", Duration = 3})
        end
    end
})

------------------------------------------ GUN TAB ------------------------------------------------

local function findAmmoValues()
    tools = {}
    local player = Players.LocalPlayer
    local backpack = player.Backpack:GetChildren()

    for _, tool in pairs(backpack) do
        if tool:IsA("Tool") then
            local stuff = tool:FindFirstChild("Stuff")

            if stuff then
                local values = stuff:FindFirstChild("Values")

                if values then
                    local currentAmmo = values:FindFirstChild("CurrentAmmo")
                    local storedAmmo = values:FindFirstChild("StoredAmmo")

                    if currentAmmo and storedAmmo then
                        table.insert(tools, {
                            tool = tool,
                            currentAmmo = currentAmmo,
                            storedAmmo = storedAmmo
                        })
                    else
                    end
                else
                end
            else
            end
        end
    end

    if #tools == 0 then
    end
end

Tabs.Gun:AddToggle("MyToggle", {
    Title = "Enable Ammo Modification",
    Default = false,
    Callback = function(value)
        autoChangeAmmoEnabled = value
        if autoChangeAmmoEnabled then
            findAmmoValues()
        end
    end
})

Tabs.Gun:AddButton({
    Title = "Set CurrentAmmo to 50",
    Callback = function()
        currentAmmoValue = 50
        if autoChangeAmmoEnabled then
            for _, toolData in pairs(tools) do
                toolData.currentAmmo.Value = currentAmmoValue
            end
        else
        end
    end
})

RunService.Heartbeat:Connect(function()
    if autoChangeAmmoEnabled then
        for _, toolData in pairs(tools) do
            toolData.currentAmmo.Value = currentAmmoValue
        end
    end
end)

----------------------------------------------------- MAIN TAB ------------------------------------------

local function UpdateHumanoidRootPartSize(player, newSize)
    if player ~= LocalPlayer and player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
            humanoidRootPart.Size = Vector3.new(newSize, newSize, newSize)
        end
    end
end

local function ResetHumanoidRootPartSize(player)
    if player ~= LocalPlayer and player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
            humanoidRootPart.Size = Vector3.new(2, 2, 1)
        end
    end
end

local function SetHumanoidRootPartAppearance(player, enabled)
    local color = enabled and Color3.new(0, 0, 1) or Color3.new(1, 1, 1)
    local transparency = enabled and 0.7 or 1
    local material = enabled and Enum.Material.Neon or Enum.Material.Plastic

    if player ~= LocalPlayer and player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
            humanoidRootPart.Color = color
            humanoidRootPart.Transparency = transparency
            humanoidRootPart.Material = material
        end
    end
end

local function ResetHumanoidRootPartAppearance(player)
    if player ~= LocalPlayer and player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
            humanoidRootPart.Color = Color3.new(1, 1, 1)
            humanoidRootPart.Transparency = 1
            humanoidRootPart.Material = Enum.Material.Plastic
        end
    end
end

local function ResetPlayerAppearance(player)
    if player.Character then
        local humanoidRootPart = player.Character:FindFirstChild("HumanoidRootPart")

        if humanoidRootPart and humanoidRootPart:IsA("BasePart") then
            humanoidRootPart.Size = Vector3.new(2, 2, 1)
            humanoidRootPart.Color = Color3.new(1, 1, 1)
            humanoidRootPart.Transparency = 1
            humanoidRootPart.Material = Enum.Material.Plastic
        end
    end
end

Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function(character)
        coroutine.wrap(function()
            wait(2)
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart", 10)
            if humanoidRootPart then
                local hitboxSize = HitboxSizeSlider.Value or 10
                local appearanceEnabled = AppearanceToggle.Value or false

                UpdateHumanoidRootPartSize(player, hitboxSize)
                SetHumanoidRootPartAppearance(player, appearanceEnabled)

            else
            end
        end)()
    end)
end)

Players.PlayerRemoving:Connect(function(player)
    ResetPlayerAppearance(player)
end)

local HitboxSizeSlider = Tabs.Main:AddSlider("HitboxSize", {
    Title = "Hitbox Size",
    Description = "Adjust the hitbox size of players",
    Default = 10,
    Min = 10,
    Max = 50,
    Rounding = 0,
    Callback = function(value)
        for _, player in pairs(Players:GetPlayers()) do
            if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
                UpdateHumanoidRootPartSize(player, value)
            end
        end
    end
})

local AppearanceToggle = Tabs.Main:AddToggle("BlueColorToggle", {
    Title = "Disable/Enable Hitbox",
    Default = false,
    Callback = function(enabled)
        for _, player in pairs(Players:GetPlayers()) do
            SetHumanoidRootPartAppearance(player, enabled)
        end
    end
})

-- Update hitbox dan appearance, serta reset jika toggle dinonaktifkan
RunService.Heartbeat:Connect(function()
    for _, player in pairs(Players:GetPlayers()) do
        if player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            if HitboxSizeSlider.Value > 10 then
                UpdateHumanoidRootPartSize(player, HitboxSizeSlider.Value)
            else
                ResetHumanoidRootPartSize(player)
            end

            if AppearanceToggle.Value then
                SetHumanoidRootPartAppearance(player, true)
            else
                ResetHumanoidRootPartAppearance(player)
            end
        end
    end
end)

local toggleHitboxSizeKeybind = Tabs.Main:AddKeybind("ToggleHitboxSizeKeybind", {
    Title = "Toggle Hitbox Size between 10 and 11",
    Mode = "Toggle",
    Default = "T",
    Callback = function(Value)
        if Value then
            local currentSize = HitboxSizeSlider.Value
            if currentSize == 10 then
                HitboxSizeSlider:SetValue(11)
                HitboxSizeSlider.Callback(11)
                print("Hitbox Size set to 11")
                Fluent:Notify({Title = "Hitbox Size Changed", Content = "Hitbox size has been set to 11.", Duration = 3})
            else
                HitboxSizeSlider:SetValue(10)  -- Set nilai slider ke 10
                HitboxSizeSlider.Callback(10)  -- Panggil callback slider dengan nilai baru
                print("Hitbox Size set to 10")
                Fluent:Notify({Title = "Hitbox Size Changed", Content = "Hitbox size has been set to 10.", Duration = 3})
            end
        end
    end,

    ChangedCallback = function(New)
        print("Keybind changed!", New)
    end
})


Tabs.Main:AddButton({
    Title = "GrabTool",
    Callback = function()
        local playerhead = game.Players.LocalPlayer.Character.Head
        local tools = game:GetService("Workspace"):GetDescendants()
        local toolsToSkip = { "Phone","Knife","Machete","Box", "Fanta","Doner","Sprite","Coca-Cola" }
        coroutine.wrap(function()
            for _, tool in pairs(tools) do
                if tool:IsA("Tool") then
                    if table.find(toolsToSkip, tool.Name) then
                        continue
                    end

                    local handle = tool:FindFirstChild("Handle")
                    if handle then
                        local touchInterest = handle:FindFirstChildOfClass("TouchTransmitter")
                        if touchInterest then
                            firetouchinterest(playerhead, handle, 0)
                            wait(0.05)
                            firetouchinterest(playerhead, handle, 1)
                        end
                    end
                end
            end
        end)()
    end
})

local noclipEnabled = false
local noclipConnection

-- Function to enable noclip
local function enableNoclip()
    noclipEnabled = true
    noclipConnection = game:GetService("RunService").Stepped:Connect(function()
        if noclipEnabled and Players.LocalPlayer.Character then
            for _, part in pairs(Players.LocalPlayer.Character:GetDescendants()) do
                if part:IsA("BasePart") and part.CanCollide then
                    part.CanCollide = false
                end
            end
        end
    end)
end

-- Function to disable noclip
local function disableNoclip()
    noclipEnabled = false
    if noclipConnection then
        noclipConnection:Disconnect()
        noclipConnection = nil
    end
    -- Re-enable collisions for all parts
    for _, part in pairs(Players.LocalPlayer.Character:GetDescendants()) do
        if part:IsA("BasePart") then
            part.CanCollide = true
        end
    end
end

-- Keybind to toggle noclip
local Keybind = Tabs.Main:AddKeybind("Keybind", {
    Title = "Toggle Noclip",
    Mode = "Toggle",
    Default = "Q",

    Callback = function(Value)
        if Value then
            enableNoclip()
            Fluent:Notify({Title = "Noclip Enabled", Content = "You can now move through objects.", Duration = 3})
        else
            disableNoclip()
            Fluent:Notify({Title = "Noclip Disabled", Content = "Collisions are back to normal.", Duration = 3})
        end
    end,

    ChangedCallback = function(New)
    end
})

Tabs.Main:AddButton({
    Title = "Bypass JumpCooldown",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local playerGui = player:FindFirstChild("PlayerGui")
        if playerGui then
            local jumpCooldownGui = playerGui:FindFirstChild("JumpCooldown")
            if jumpCooldownGui then
                jumpCooldownGui:Destroy()
            end
        end
    end
})

Tabs.Main:AddButton({
    Title = "Dead no lost money",
    Callback = function()
        local player = game:GetService("Players").LocalPlayer
        local lostmoney = player:FindFirstChild("PlayerScripts")
        if lostmoney then
            local lostmoney = lostmoney:FindFirstChild("LostMoneyClient")
            if lostmoney then
                lostmoney:Destroy()
            end
        end
    end
})

------------------- FARM TAB --------------------

local function equipFistTool()
    local localPlayer = Players.LocalPlayer

    -- Ensure LocalPlayer, Backpack, and Character exist
    if not localPlayer or not localPlayer:FindFirstChild("Backpack") or not localPlayer.Character then
        warn("LocalPlayer, Backpack, or Character not found.")
        return
    end

    local fistTool = localPlayer.Backpack:FindFirstChild("Mop")

    if fistTool then
        fistTool.Parent = localPlayer.Character

        local humanoid = localPlayer.Character:FindFirstChildOfClass("Humanoid")

        if humanoid then
            humanoid:EquipTool(fistTool)
        else
        end
    else
    end
end

-- Toggle for farming
Tabs.Farm:AddToggle("MyToggle", {
    Title = "Farm Little Paki (OP)",
    Default = false,
    Callback = function(value)
        autoRollEnabled = value

        if autoRollEnabled then
            local player = Players.LocalPlayer
            local character = player.Character or player.CharacterAdded:Wait()
            local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

            local cleanParts = workspace.CleanPart:GetChildren()
            local validParts = {}
            for _, part in pairs(cleanParts) do
                local proximityPrompt = part:FindFirstChildOfClass("ProximityPrompt")
                if proximityPrompt and proximityPrompt.Enabled then
                    table.insert(validParts, part)
                end
            end

            if #validParts > 0 then
                local randomPart = validParts[math.random(1, #validParts)]
                if randomPart:IsA("BasePart") then

                    local success, err = pcall(function()
                        humanoidRootPart.CFrame = randomPart.CFrame + Vector3.new(0, 2, 0)
                    end)

                    if not success then
                    end
                end
            else
            end

            task.wait(0.1)

            task.wait(0.1)
            equipFistTool()
            task.wait(0.2)
            heartbeatConnection = RunService.Heartbeat:Connect(function()
                for _, cleanPart in pairs(workspace.CleanPart:GetChildren()) do
                    local proximityPrompt = cleanPart:FindFirstChildOfClass("ProximityPrompt")
                    if proximityPrompt then
                        proximityPrompt.HoldDuration = 0
                        if proximityPrompt.Enabled then
                            proximityPrompt:InputHoldBegin(Enum.KeyCode.E)
                            task.wait(1)  -- Small delay for spamming
                            proximityPrompt:InputHoldEnd(Enum.KeyCode.E)
                        end
                    end
                end
            end)

            while autoRollEnabled do
                validParts = {}
                for _, part in pairs(workspace.CleanPart:GetChildren()) do
                    local proximityPrompt = part:FindFirstChildOfClass("ProximityPrompt")
                    if proximityPrompt and proximityPrompt.Enabled then
                        table.insert(validParts, part)
                    end
                end

                if #validParts > 0 then
                    local randomPart = validParts[math.random(1, #validParts)]
                    if randomPart:IsA("BasePart") then

                        local success, err = pcall(function()
                            humanoidRootPart.CFrame = randomPart.CFrame + Vector3.new(0, 3, 0)
                        end)

                        if not success then
                        end
                    end
                end
                task.wait(5)
            end

        else
            if heartbeatConnection then
                heartbeatConnection:Disconnect()
            end
        end
    end
})

-------------------------- CARS TAB ---------------------------

local player = game:GetService("Players").LocalPlayer
local ownedCars = player:FindFirstChild("OwnedCars")
local carOptions = {}
if ownedCars then
    for _, car in ipairs(ownedCars:GetChildren()) do
        if car:IsA("BoolValue") and car.Value == true then
            table.insert(carOptions, car.Name)
        end
    end
else
end
local Dropdown = Tabs.Cars:AddDropdown("Dropdown", {
    Title = "List Car",
    Values = carOptions,
    Multi = false,
    Default = 1,
})

Dropdown:OnChanged(function(Value)
    selectedCar = Value
end)

Tabs.Cars:AddButton({
    Title = "Spawn Car",
    Callback = function()
        if selectedCar then
            game.ReplicatedStorage.CarRE:InvokeServer("spawn", selectedCar)
        else
        end
    end
})

Tabs.Cars:AddButton({
    Title = "Bring Cars",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local vehicleName = player.Name .. "'s Car"
        local vehicle = workspace.SpawnedVehicles:FindFirstChild(vehicleName)

        if vehicle then
            if character.PrimaryPart and vehicle.PrimaryPart then
                local characterPosition = character.PrimaryPart.Position
                local originalCFrame = vehicle.PrimaryPart.CFrame
                local newPosition = characterPosition - Vector3.new(0, vehicle.PrimaryPart.Size.Y / 2, 5)
                local newCFrame = CFrame.new(newPosition) * CFrame.Angles(originalCFrame:ToEulerAnglesXYZ())
                vehicle:SetPrimaryPartCFrame(newCFrame)
            else
            end
        else
        end
    end
})