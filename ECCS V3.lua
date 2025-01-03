if game:GetService("CoreGui"):FindFirstChild("UIGui") then
game:GetService("CoreGui"):FindFirstChild("UIGui"):Destroy()
game.Workspace.CurrentCamera.FieldOfView  = 70
end
UIGui = Instance.new("ScreenGui")
CoreSystemFrame = Instance.new("Frame")
CoreSystemFrameBackground = Instance.new("Frame")
CoreSystemFrameUICorner = Instance.new("UICorner")
CoreSystemFrameBackgroundUICorner = Instance.new("UICorner")
MinButton = Instance.new("TextButton")
UIClick = Instance.new("Sound")
MessageFrame = Instance.new("TextButton")
MessageFrameUICorner = Instance.new("UICorner")
Clock = Instance.new("TextLabel")
StartUpSound = Instance.new("Sound")
OpenButtonUI = Instance.new("Sound")
MessageBackgroundFrame = Instance.new("Frame")
TextLabel1 = Instance.new("TextLabel")
MessageBackgroundFrameUICorner = Instance.new("UICorner")
MessageImage = Instance.new("ImageLabel")
CloseNotif = Instance.new("Sound")
MessageImageUICorner = Instance.new("UICorner")
OpenUIButtons = Instance.new("Sound")
HomeButton = Instance.new("ImageButton")
HomeButtonUICorner = Instance.new("UICorner")
CloseUISound = Instance.new("Sound")
Blur = Instance.new("BlurEffect")
TweenService = game:GetService("TweenService")
SearcherOpenUIButton = Instance.new("ImageButton")
SearcherOpenUIButtonUICorner = Instance.new("UICorner")
ConsoleButton = Instance.new("ImageButton")
HoverButtons = Instance.new("Sound")
EditorButton = Instance.new("ImageButton")
MusicButton = Instance.new("ImageButton")
WelcomeLabel = Instance.new("TextLabel")
PlayerIcon = Instance.new("ImageLabel")
PlayerIconUI = Instance.new("UICorner")
PlayerIconBackground = Instance.new("Frame")
PlayerIconBackgroundUI = Instance.new("UICorner")
GameFrameBackground = Instance.new("Frame")
GameFrameBackgroundUICorner = Instance.new("UICorner")
GameFrame = Instance.new("ImageLabel")
GameFrameUICorner = Instance.new("UICorner")
FPSLabel = Instance.new("TextLabel")
FPSLabelUICorner = Instance.new("UICorner")
RunService = game:GetService("RunService")
RenderStepped = RunService.RenderStepped
sec = nil
FPS = {}
PingLabel = Instance.new("TextLabel")
PingLabelUICorner = Instance.new("UICorner")
CPULabel = Instance.new("TextLabel")
CPUUICorner = Instance.new("UICorner")
GPULabel = Instance.new("TextLabel")
GPUUICorner = Instance.new("UICorner")
PlayersInServer = Instance.new("TextLabel")
PlayersInServerUICorner = Instance.new("UICorner")
ServerSize = Instance.new("TextLabel")
ServerSizeUICorner = Instance.new("UICorner")
ServerLive = Instance.new("TextLabel")
ServerLiveUICorner = Instance.new("UICorner")
Executor = Instance.new("TextLabel")
ExecutorUICorner = Instance.new("UICorner")
MainFrame = Instance.new("Frame")
SearchBox = Instance.new("TextBox")
UICorner_3 = Instance.new("UICorner")
ScriptAuthor = Instance.new("TextLabel")
ScriptListFrame = Instance.new("ScrollingFrame")
UIPadding = Instance.new("UIPadding")
Scripts = Instance.new("Folder")
UIGridLayout = Instance.new("UIGridLayout")
ScriptFrame = Instance.new("ImageLabel")
UICorner_6 = Instance.new("UICorner")
ScriptTitle = Instance.new("TextLabel")
ExecuteButton = Instance.new("TextButton")
UICorner_7 = Instance.new("UICorner")
InfoButton = Instance.new("TextButton")
UICorner_8 = Instance.new("UICorner")
ScriptGame = Instance.new("TextLabel")
VerifiedScriptFrame = Instance.new("ImageLabel")
UICorner_9 = Instance.new("UICorner")
ScriptTitle_2 = Instance.new("TextLabel")
VerifiedIcon = Instance.new("ImageLabel")
ExecuteButton_2 = Instance.new("TextButton")
UICorner_10 = Instance.new("UICorner")
UICorner_11 = Instance.new("UICorner")
ScriptAuthor_2 = Instance.new("TextLabel")
ScriptGame_2 = Instance.new("TextLabel")
ExecuteButtonBackground = Instance.new("Frame")
ExecuteButtonBackgroundUICorner = Instance.new("UICorner")
CopyLinkButton = Instance.new("TextButton")
CopyLinkButtonUICorner = Instance.new("UICorner")
CopyLinkButton_2 = Instance.new("TextButton")
CopyLinkButtonUICorner_2 = Instance.new("UICorner")
CopyScriptButton = Instance.new("TextButton")
CopyScriptButtonUICorner = Instance.new("UICorner")
CopyScriptButton_2 = Instance.new("TextButton")
CopyScriptButtonUICorner_2 = Instance.new("UICorner")
OpenDescriptionButton = Instance.new("TextButton")
OpenDescriptionButtonUICorner = Instance.new("UICorner")
OpenDescriptionButton_2 = Instance.new("TextButton")
OpenDescriptionButtonUICorner_2 = Instance.new("UICorner")
CopyLinkButtonBackground = Instance.new("Frame")
CopyLinkButtonBackgroundUICorner = Instance.new("UICorner")
CopyScriptBackground = Instance.new("Frame")
CopyScriptBackgroundUICorner = Instance.new("UICorner")
OpenDescriptionBackground = Instance.new("Frame")
OpenDescriptionBackgroundUICorner = Instance.new("UICorner")
ExecuteButtonBackground_2 = Instance.new("Frame")
ExecuteButtonBackgroundUICorner_2 = Instance.new("UICorner")
CopyLinkButtonBackground_2 = Instance.new("Frame")
CopyLinkButtonBackgroundUICorner_2 = Instance.new("UICorner")
CopyScriptBackground_2 = Instance.new("Frame")
CopyScriptBackgroundUICorner_2 = Instance.new("UICorner")
OpenDescriptionBackground_2 = Instance.new("Frame")
OpenDescriptionBackgroundUICorner_2 = Instance.new("UICorner")
DescriptionScript = Instance.new("TextButton")
DescriptionScriptUICorner = Instance.new("UICorner")
BackgroundImage = Instance.new("ImageLabel")
ConsoleOutput = Instance.new("TextLabel")
BackgroundImageUICorner = Instance.new("UICorner")
ConsoleOutputUICorner = Instance.new("UICorner")
BackgroundConsoleUICorner = Instance.new("UICorner")
BackgroundConsole = Instance.new("Frame")
logTable = {}
CloseDescriptionSound = Instance.new("Sound")
EditorBackground = Instance.new("Frame")
EditorMainFrame = Instance.new("ImageLabel")
EditorTextBox = Instance.new("TextBox")
ExecuteButtonBackground_3 = Instance.new("Frame")
ExecuteButton_3 = Instance.new("TextButton")
EditorBackgroundUICorner = Instance.new("UICorner")
EditorMainFrameUICorner = Instance.new("UICorner")
ExecuteButtonBackgroundUICorner_3 = Instance.new("UICorner")
ExecuteButtonUICorner_3 = Instance.new("UICorner")
SaveButtonBackground = Instance.new("Frame")
SaveButtonBackgroundUICorner = Instance.new("UICorner")
SaveButton = Instance.new("TextButton")
SaveButtonUICorner = Instance.new("UICorner")
ClearButtonBackground = Instance.new("Frame")
ClearButtonBackgroundUICorner = Instance.new("UICorner")
ClearButton = Instance.new("TextButton")
ClearButtonUICorner = Instance.new("UICorner")
EditorTextBoxUICorner = Instance.new("UICorner")
EditorTextBoxBackgroundUICorner = Instance.new("UICorner")
CopyButtonBackground = Instance.new("Frame")
CopyButtonBackgroundUICorner = Instance.new("UICorner")
CopyButton = Instance.new("TextButton")
CopyButtonUICorner = Instance.new("UICorner")
SondFrameBackground = Instance.new("Frame")
SondFrame = Instance.new("ImageLabel")
MainSondFrame = Instance.new("Frame")
SoundTextBox = Instance.new("TextBox")
SondFrameBackgroundUICorner = Instance.new("UICorner")
SondFrameUICorner = Instance.new("UICorner")
MainSondFrameUICorner = Instance.new("UICorner")
SoundTextBoxUICorner = Instance.new("UICorner")
CoreSound = Instance.new("Sound")
Stop_PlayButton = Instance.new("ImageButton")
AudioName = Instance.new("TextLabel")
Stop_PlayButtonBackground = Instance.new("Frame")
Stop_PlayButtonBackgroundUICorner = Instance.new("UICorner")
Stop_PlayButtonBackground_2 = Instance.new("Frame")
Stop_PlayButtonBackgroundUICorner_2 = Instance.new("UICorner")
Volume = 1
SaveButtonBackground_2 = Instance.new("Frame")
SaveButtonBackgroundUICorner_2 = Instance.new("UICorner")
SaveButton_2 = Instance.new("ImageButton")
SaveButtonUICorner_2 = Instance.new("UICorner")
PlaylistButtonBackground = Instance.new("Frame")
PlaylistButtonBackgroundUICorner = Instance.new("UICorner")
PlaylistButtonBackground_2 = Instance.new("Frame")
PlaylistButtonBackgroundUICorner_2 = Instance.new("UICorner")
PlaylistButton = Instance.new("ImageButton")
VolumeFrame = Instance.new("Frame")
VolumeFrameUICorner = Instance.new("UICorner")
VolumeUpButtonBackground = Instance.new("Frame")
VolumeUpButtonBackgroundUICorner = Instance.new("UICorner")
VolumeUpButton = Instance.new("ImageButton")
VolumeUpButtonUICorner = Instance.new("UICorner")
VolumeDownButtonBackground = Instance.new("Frame")
VolumeDownButtonBackgroundUICorner = Instance.new("UICorner")
VolumeDownButton = Instance.new("ImageButton")
VolumeDownButtonUICorner = Instance.new("UICorner")
VolumeUpButton_2 = Instance.new("ImageButton")
VolumeUpButtonUICorner_2 = Instance.new("UICorner")
VolumeDownButton_2 = Instance.new("ImageButton")
VolumeDownButtonUICorner_2 = Instance.new("UICorner")
ReloadBackgroundButton = Instance.new("Frame")
ReloadBackgroundButtonUICorner = Instance.new("UICorner")
ReloadButton = Instance.new("ImageButton")
ReloadButtonUICorner = Instance.new("UICorner")
HistoryBackgroundButton = Instance.new("Frame")
HistoryBackgroundButtonUICorner = Instance.new("UICorner")
HistoryButton = Instance.new("ImageButton")
HistoryButtonUICorner = Instance.new("UICorner")
ClearAndSearchBackground = Instance.new("Frame")
ClearAndSearchBackgroundUICorner = Instance.new("UICorner")
ClearAndSearch = Instance.new("ImageButton")
ClearAndSearchUICorner = Instance.new("UICorner")
ClearButton_2Background = Instance.new("Frame")
ClearButton_2BackgroundUICorner = Instance.new("UICorner")
ClearButton_2 = Instance.new("ImageButton")
ClearButton_2UICorner = Instance.new("UICorner")
AutoExecuteBackground = Instance.new("Frame")
AutoExecuteBackgroundUICorner = Instance.new("UICorner")
AutoExecute = Instance.new("TextButton")
AutoExecuteUICorner = Instance.new("UICorner")
AutoExecuteBackground_2 = Instance.new("Frame")
AutoExecuteBackgroundUICorner_2 = Instance.new("UICorner")
AutoExecute_2 = Instance.new("TextButton")
AutoExecuteUICorner_2 = Instance.new("UICorner")
CommentsBackground = Instance.new("Frame")
CommentsBackgroundUICorner = Instance.new("UICorner")
CommentsButton = Instance.new("ImageButton")
CommentsButtonUICorner = Instance.new("UICorner")
CommentsBackground_2 = Instance.new("Frame")
CommentsBackgroundUICorner_2 = Instance.new("UICorner")
CommentsButton_2 = Instance.new("ImageButton")
CommentsButtonUICorner_2 = Instance.new("UICorner")
InfoBox = Instance.new("Frame")
InfoBoxUICorner = Instance.new("UICorner")
Info = Instance.new("Frame")
Author = Instance.new("Frame")
InfoBoxAuthor = Instance.new("TextLabel")
ProfilePicture = Instance.new("ImageLabel")
Comments = Instance.new("Frame")
Inner = Instance.new("Frame")
UICorner_21 = Instance.new("UICorner")
Line = Instance.new("Frame")
CommentsText = Instance.new("TextLabel")
Comments_2 = Instance.new("ScrollingFrame")
Comment = Instance.new("Frame")
Content = Instance.new("TextLabel")
Author_2 = Instance.new("TextLabel")
ProfilePicture_2 = Instance.new("ImageLabel")
UICorner_22 = Instance.new("UICorner")
UIListLayout_3 = Instance.new("UIListLayout")
NoComments = Instance.new("TextLabel")
CommentsWhiteLine = Instance.new("Frame")
CloseCommentsButtonBackground = Instance.new("Frame")
CloseCommentsButtonBackgroundUICorner = Instance.new("UICorner")
CloseCommentsButton = Instance.new("ImageButton")
CloseCommentsButtonUICorner = Instance.new("UICorner")
LikeImg = Instance.new("ImageLabel")
DisLikeImg = Instance.new("ImageLabel")
LikeCount = Instance.new("TextLabel")
DislikeCount = Instance.new("TextLabel")

local function format(Int)
return string.format("%02i", Int)
end
 
local function convertToHMS(Seconds)
local Minutes = (Seconds - Seconds%60)/60
Seconds = Seconds - Minutes*60
local Hours = (Minutes - Minutes%60)/60
Minutes = Minutes - Hours*60
return format(Hours)..":"..format(Minutes)..":"..format(Seconds)
end
 
UIGui.Name = "UIGui"
UIGui.Parent = game.CoreGui
UIGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
game.CoreGui.UIGui.Enabled = true
 
Blur.Size = 0
Blur.Parent = workspace.CurrentCamera
 
UIClick.Parent = game:GetService("SoundService")
UIClick.SoundId = "rbxassetid://626181985" --点击声音
UIClick.Playing = true
UIClick.Looped = false
UIClick.Volume = 1
UIClick:Stop()
 
CoreSound.Parent = game:GetService("SoundService")
CoreSound.Playing = true
CoreSound.Looped = true
CoreSound.Volume = Volume
CoreSound:Stop()
 
CloseDescriptionSound.Parent = game:GetService("SoundService")
CloseDescriptionSound.SoundId = "rbxassetid://6698737249"
CloseDescriptionSound.Playing = true
CloseDescriptionSound.Looped = false
CloseDescriptionSound.Volume = 1
CloseDescriptionSound:Stop()
 
StartUpSound.Parent = game:GetService("SoundService")
StartUpSound.SoundId = "rbxassetid://6228337171"
StartUpSound.Playing = true
StartUpSound.Looped = false
StartUpSound.Volume = 1
StartUpSound:Stop()
 
OpenButtonUI.Parent = game:GetService("SoundService")
OpenButtonUI.SoundId = "rbxassetid://3779036535"
OpenButtonUI.Playing = true
OpenButtonUI.Looped = false
OpenButtonUI.Volume = 1
OpenButtonUI:Stop()
 
HoverButtons.Parent = game:GetService("SoundService")
HoverButtons.SoundId = "rbxassetid://6698737249"
HoverButtons.Playing = true
HoverButtons.Looped = false
HoverButtons.Volume = 1
HoverButtons:Stop()
 
CloseNotif.Parent = game:GetService("SoundService")
CloseNotif.SoundId = "rbxassetid://2566705750"
CloseNotif.Playing = true
CloseNotif.Looped = false
CloseNotif.Volume = 1
CloseNotif:Stop()
 
CloseUISound.Parent = game:GetService("SoundService")
CloseUISound.SoundId = "rbxassetid://2570875942"
CloseUISound.Playing = true
CloseUISound.Looped = false
CloseUISound.Volume = 1
CloseUISound:Stop()
 
OpenUIButtons.Parent = game:GetService("SoundService")
OpenUIButtons.SoundId = "rbxassetid://3779036535"
OpenUIButtons.Playing = true
OpenUIButtons.Looped = false
OpenUIButtons.Volume = 1
OpenUIButtons:Stop()
 
MessageBackgroundFrame.Name = "MessageBackgroundFrame"
MessageBackgroundFrame.Parent = UIGui
MessageBackgroundFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MessageBackgroundFrame.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
MessageBackgroundFrame.Position = UDim2.new(0.5, 0, 2.5, 0)
MessageBackgroundFrame.Size = UDim2.new(0, 300, 0, 60)
MessageBackgroundFrame.ZIndex = 2
 
MessageBackgroundFrameUICorner.CornerRadius = UDim.new(0, 12)
MessageBackgroundFrameUICorner.Parent = MessageBackgroundFrame
 
MessageFrame.Name = "MessageFrame"
MessageFrame.Parent = MessageBackgroundFrame
MessageFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MessageFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MessageFrame.Size = UDim2.new(0, 297.3, 0, 57.5)
MessageFrame.AutoButtonColor = false
MessageFrame.Font = Enum.Font.SourceSansBold
MessageFrame.Text = "Successfully Loaded"
MessageFrame.TextColor3 = Color3.fromRGB(255, 255, 255)
MessageFrame.TextYAlignment = Enum.TextYAlignment.Top
MessageFrame.TextXAlignment = Enum.TextXAlignment.Right
MessageFrame.TextSize = 30
MessageFrame.AnchorPoint = Vector2.new(0.5, 0.5)
 
MessageFrameUICorner.CornerRadius = UDim.new(0, 12)
MessageFrameUICorner.Parent = MessageFrame
 
local emoji = ({
        ["01 01"] = "🎆",
        [(function(Year)
            local A = math.floor(Year/100)
            local B = math.floor((13+8*A)/25)
            local C = (15-B+A-math.floor(A/4))%30
            local D = (4+A-math.floor(A/4))%7
            local E = (19*(Year%19)+C)%30
            local F = (2*(Year%4)+4*(Year%7)+6*E+D)%7
            local G = (22+E+F)
            if E == 29 and F == 6 then
                return "04 19"
            elseif E == 28 and F == 6 then
                return "04 18"
            elseif 31 < G then
                return ("04 %02d"):format(G-31)
            end
            return ("03 %02d"):format(G)
        end)(tonumber(os.date"%Y"))] = "🥚",
        ["10 31"] = "🎃",
        ["12 25"] = "🎄"
    })[os.date("%m %d")]
    if emoji then
        MessageFrame.Text = ("%s %s"):format(MessageFrame.Text, emoji)
    end
MessageFrame.MouseButton1Click:Connect(function()
CloseNotif:Play()
MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 2.5, 0),"InOut","Sine",0.3)
end)
 
MessageImage.Name = "MessageImage"
MessageImage.Parent = MessageFrame
MessageImage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MessageImage.BackgroundTransparency = 0.5
MessageImage.Position = UDim2.new(0.03, 0, 0.15, 0)
MessageImage.Size = UDim2.new(0, 40, 0, 40)
MessageImage.BorderSizePixel = 0
MessageImage.Image = "rbxassetid://15980315949" --未加载头像
 
MessageImageUICorner.Parent = MessageImage
MessageImageUICorner.CornerRadius = UDim.new(0.5, 0)
 
TextLabel1.Name = "TextLabel1"
TextLabel1.Parent = MessageFrame
TextLabel1.BackgroundTransparency = 1
TextLabel1.Position = UDim2.new(0.55, 0, 0.7, 0)
TextLabel1.Size = UDim2.new(0, 1, 0, 1)
TextLabel1.Font = Enum.Font.SourceSansBold
TextLabel1.Text = "Welcome to ECCS V3, "..game.Players.LocalPlayer.DisplayName
TextLabel1.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel1.TextTransparency = 0.3
TextLabel1.TextSize = 15
 
spawn(function()
repeat
wait()
if  MessageBackgroundFrame.Position == UDim2.new(0.5, 0, 0.9, 0) then
wait(4)
MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 2.5, 0),"InOut","Sine",0.8)
CloseNotif:Play()
end
until 
MessageBackgroundFrame == nil
end)
----------------------------按钮设置---------------------------------------------------------------
CoreSystemFrameBackground.Name = "CoreSystemFrameBackground"
CoreSystemFrameBackground.Parent = UIGui
CoreSystemFrameBackground.AnchorPoint = Vector2.new(0.5, 0.5)
CoreSystemFrameBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CoreSystemFrameBackground.Position = UDim2.new(-0.03, 0, 0.45, 0)
CoreSystemFrameBackground.Size = UDim2.new(0, 53.7, 0, 223)
CoreSystemFrameBackground.ZIndex = 2
CoreSystemFrameBackground.BackgroundColor3 = Color3.new(0, 0, 0)
CoreSystemFrameBackground.Transparency = 1

CoreSystemFrameBackgroundUICorner.CornerRadius = UDim.new(0, 12)
CoreSystemFrameBackgroundUICorner.Parent = CoreSystemFrameBackground

CoreSystemFrame.Name = "CoreSystemFrame"
CoreSystemFrame.Parent = CoreSystemFrameBackground
CoreSystemFrame.AnchorPoint = Vector2.new(0.5, 0.5)
CoreSystemFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CoreSystemFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
CoreSystemFrame.Size = UDim2.new(0, 50, 0, 220)
CoreSystemFrame.ZIndex = 2

CoreSystemFrameUICorner.CornerRadius = UDim.new(0, 12)
CoreSystemFrameUICorner.Parent = CoreSystemFrame

HomeButton.Parent = CoreSystemFrame
HomeButton.Size = UDim2.new(0, 33, 0, 33)
HomeButton.Position = UDim2.new(0.5, 0, 0.1, 0)
HomeButton.AnchorPoint = Vector2.new(0.5, 0.5)
HomeButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HomeButton.ZIndex = 2
HomeButton.Image = "rbxassetid://15997029966" --房屋
HomeButton.AutoButtonColor = false


HomeButtonUICorner.CornerRadius = UDim.new(0, 12)
HomeButtonUICorner.Parent = HomeButton
HomeButton.MouseButton1Click:Connect(function()
game.Workspace.CurrentCamera.FieldOfView  = 70
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
MusicButton.Image = "rbxassetid://15996975276"
ConsoleButton.Image = "rbxassetid://16006754625"
EditorButton.Image = "rbxassetid://16006689419"
if HomeButton.Image == "rbxassetid://15997029966" then
Blur.Size = 100
HomeButton.Image = "rbxassetid://15997127208"
OpenButtonUI:Play()
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, 0.3, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if HomeButton.Image == "rbxassetid://15997127208" then
HomeButton.Image = "rbxassetid://15997029966"
CloseUISound:Play()
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)
 
MainFrame.Name = "MainFrame"
MainFrame.Parent = UIGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BackgroundTransparency = 1
MainFrame.Position = UDim2.new(0.5, 0, -1, 0)
MainFrame.Size = UDim2.new(0, 100, 0, 100)

SearcherOpenUIButton.Parent = CoreSystemFrame
SearcherOpenUIButton.Size = UDim2.new(0, 33, 0, 33)
SearcherOpenUIButton.Position = UDim2.new(0.5, 0, 0.28, 0)
SearcherOpenUIButton.AnchorPoint = Vector2.new(0.5, 0.5)
SearcherOpenUIButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SearcherOpenUIButton.ZIndex = 2
SearcherOpenUIButton.Image = "rbxassetid://15996914627" --放大镜搜索
SearcherOpenUIButton.AutoButtonColor = false
 
SearcherOpenUIButtonUICorner.CornerRadius = UDim.new(0, 12)
SearcherOpenUIButtonUICorner.Parent = SearcherOpenUIButton
 
SearcherOpenUIButton.MouseButton1Click:Connect(function()
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
MusicButton.Image = "rbxassetid://15996975276"
ConsoleButton.Image = "rbxassetid://16006754625"
EditorButton.Image = "rbxassetid://16006689419"
if SearcherOpenUIButton.Image == "rbxassetid://15996914627" then
SearcherOpenUIButton.Image = "rbxassetid://15997131910"
OpenButtonUI:Play()
Blur.Size = 100
MainFrame:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if SearcherOpenUIButton.Image == "rbxassetid://15997131910" then
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
CloseUISound:Play()
Blur.Size = 0
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)

EditorButton.Parent = CoreSystemFrame
EditorButton.Size = UDim2.new(0, 33, 0, 33)
EditorButton.Position = UDim2.new(0.5, 0, 0.64, 0)
EditorButton.AnchorPoint = Vector2.new(0.5, 0.5)
EditorButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorButton.ZIndex = 2
EditorButton.Image = "rbxassetid://16006689419" --注入器
EditorButton.AutoButtonColor = false
EditorButton.BorderSizePixel = 0
 
EditorButton.MouseButton1Click:Connect(function()
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
ConsoleButton.Image = "rbxassetid://16006754625"
MusicButton.Image = "rbxassetid://15996975276"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
if EditorButton.Image == "rbxassetid://16006689419" then
EditorButton.Image = "rbxassetid://16006691599"
OpenButtonUI:Play()
EditorBackground:TweenPosition(UDim2.new(0.525, 0, 0.5, 0),"InOut","Sine",0.1)
Blur.Size = 100
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if EditorButton.Image == "rbxassetid://16006691599" then
EditorButton.Image = "rbxassetid://16006689419"
CloseUISound:Play()
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)

ConsoleButton.Parent = CoreSystemFrame
ConsoleButton.Size = UDim2.new(0, 33, 0, 33)
ConsoleButton.Position = UDim2.new(0.5, 0, 0.46, 0)
ConsoleButton.AnchorPoint = Vector2.new(0.5, 0.5)
ConsoleButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleButton.ZIndex = 2
ConsoleButton.Image = "rbxassetid://16006754625" --信息记录。危险
ConsoleButton.AutoButtonColor = false
ConsoleButton.BorderSizePixel = 0

ConsoleButton.MouseButton1Click:Connect(function()
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
MusicButton.Image = "rbxassetid://15996975276"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
EditorButton.Image = "rbxassetid://16006689419"
if ConsoleButton.Image == "rbxassetid://16006754625" then
ConsoleButton.Image = "rbxassetid://16006757026"
OpenButtonUI:Play()
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, 0.5, 0),"InOut","Sine",0.1)
Blur.Size = 100
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if ConsoleButton.Image == "rbxassetid://16006757026" then
ConsoleButton.Image = "rbxassetid://16006754625"
CloseUISound:Play()
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)

MusicButton.Parent = CoreSystemFrame
MusicButton.Size = UDim2.new(0, 30, 0, 30)
MusicButton.Position = UDim2.new(0.5, 0, 0.82, 0)
MusicButton.AnchorPoint = Vector2.new(0.5, 0.5)
MusicButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MusicButton.ZIndex = 2
MusicButton.Image = "rbxassetid://15996975276" --音乐
MusicButton.AutoButtonColor = false
MusicButton.BorderSizePixel = 0
 
MusicButton.MouseButton1Click:Connect(function()
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
EditorButton.Image = "rbxassetid://16006689419"
ConsoleButton.Image = "rbxassetid://16006754625"
if MusicButton.Image == "rbxassetid://15996975276" then
MusicButton.Image = "rbxassetid://15997129790"
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, 0.5, 0),"InOut","Sine",0.1)
OpenButtonUI:Play()
Blur.Size = 100
game.Workspace.CurrentCamera.FieldOfView  = 30
else
if MusicButton.Image == "rbxassetid://15997129790" then
MusicButton.Image = "rbxassetid://15996975276"
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
CloseUISound:Play()
Blur.Size = 0
game.Workspace.CurrentCamera.FieldOfView  = 70
end
end
end)
 
MinButton.Name = "MinButton"
MinButton.Parent = UIGui
MinButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MinButton.Position = UDim2.new(0, 0, 0.43, 0)
MinButton.Size = UDim2.new(0, 30, 0, 30)
MinButton.AutoButtonColor = false
MinButton.Font = Enum.Font.SourceSansBold
MinButton.Text = "<"
MinButton.TextColor3 = Color3.fromRGB(255, 255, 255)
MinButton.TextSize = 30
MinButton.BackgroundTransparency = 1

Clock.Parent = CoreSystemFrame
Clock.Size = UDim2.new(0, 55, 0, 32)
Clock.Position = UDim2.new(0, -2.5, 0, 195)
Clock.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Clock.BackgroundTransparency = 1
Clock.Text = os.date("%H:%M")
Clock.TextColor3 = Color3.fromRGB(200, 200, 200)
Clock.Font = Enum.Font.SourceSansBold
Clock.TextSize = 20
 
MinButton:TweenPosition(UDim2.new(0.05, 0, 0.43, 0),"InOut","Sine",1)
CoreSystemFrameBackground:TweenPosition(UDim2.new(0.03, 0, 0.45, 0),"InOut","Sine",1)
 
MinButton.MouseButton1Click:Connect(function()
UIClick:Play()
Blur.Size = 0
SondFrameBackground:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
EditorBackground:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
BackgroundConsole:TweenPosition(UDim2.new(0.525, 0, -1, 0),"InOut","Sine",0.1)
GameFrameBackground:TweenPosition(UDim2.new(0.25, 0, -1, 0),"InOut","Sine",0.1)
MainFrame:TweenPosition(UDim2.new(0.5, 0, -1, 0),"InOut","Sine",0.1)
game.Workspace.CurrentCamera.FieldOfView  = 70
HomeButton.Image = "rbxassetid://15997029966"
SearcherOpenUIButton.Image = "rbxassetid://15996914627"
MusicButton.Image = "rbxassetid://15996975276"
ConsoleButton.Image = "rbxassetid://16006754625"
EditorButton.Image = "rbxassetid://16006689419"
if MinButton.Text == "<" then
MinButton.Text = ">"
CoreSystemFrameBackground:TweenPosition(UDim2.new(-0.03, 0, 0.45, 0),"InOut","Sine",0.15)
MinButton:TweenPosition(UDim2.new(0, 0, 0.43, 0),"InOut","Sine",0.15)
else
if MinButton.Text == ">" then
MinButton.Text = "<"
MinButton:TweenPosition(UDim2.new(0.05, 0, 0.43, 0),"InOut","Sine",0.15)
CoreSystemFrameBackground.Visible = true
CoreSystemFrameBackground:TweenPosition(UDim2.new(0.03, 0, 0.45, 0),"InOut","Sine",0.15)
end
end
end)
----------------------------------------------------------------------------------------------------------------
PlayerIcon.Name = "PlayerIcon"
PlayerIcon.Parent = PlayerIconBackground
PlayerIcon.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlayerIcon.Position = UDim2.new(0.026, 0, 0.025, 0)
PlayerIcon.Size = UDim2.new(0, 66, 0, 66)
PlayerIcon.Image = "rbxassetid://15980315949" --未加载头像
 
PlayerIconUI.Parent = PlayerIcon
PlayerIconUI.CornerRadius = UDim.new(0.5, 0)
 
PlayerIconBackground.Name = "PlayerIconBackground"
PlayerIconBackground.Parent = GameFrame
PlayerIconBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
PlayerIconBackground.Position = UDim2.new(0.05, 0, -0.6, 0)
PlayerIconBackground.Size = UDim2.new(0, 70, 0, 70)
 
PlayerIconBackgroundUI.Parent = PlayerIconBackground
PlayerIconBackgroundUI.CornerRadius = UDim.new(0.5, 0)
 
WelcomeLabel.Name = "WelcomeLabel"
WelcomeLabel.Parent = GameFrame
WelcomeLabel.BackgroundTransparency = 1
WelcomeLabel.Position = UDim2.new(0.23, 0, -0.6, 0)
WelcomeLabel.Size = UDim2.new(0.5, 0, 0.4, 0)
WelcomeLabel.Font = Enum.Font.SourceSansBold
WelcomeLabel.Text = "欢迎回家，用户"
WelcomeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
WelcomeLabel.TextXAlignment = Enum.TextXAlignment.Left
WelcomeLabel.TextYAlignment = Enum.TextYAlignment.Top
WelcomeLabel.TextWrapped = true
WelcomeLabel.TextSize = 25
 
GameFrameBackground.Name = "GameFrameBackground"
GameFrameBackground.Parent = UIGui
GameFrameBackground.Position = UDim2.new(0.25, 0, -1, 0)
GameFrameBackground.Size = UDim2.new(0.5, 0, 0.5, 0)
GameFrameBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
 
GameFrameBackgroundUICorner.Parent = GameFrameBackground
GameFrameBackgroundUICorner.CornerRadius = UDim.new(0, 12)
 
GameFrame.Name = "GameFrame"
GameFrame.Parent = GameFrameBackground
GameFrame.Position = UDim2.new(0.005, 0, 0.01, 0)
GameFrame.Size = UDim2.new(0.99, 0, 0.985, 0)
GameFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GameFrame.Image = "rbxassetid://16027463995" --背景
 
GameFrameUICorner.Parent = GameFrame
GameFrameUICorner.CornerRadius = UDim.new(0, 12)
 
FPSLabel.Name = "FPSLabel"
FPSLabel.Parent = GameFrame
FPSLabel.Position = UDim2.new(0.01, 0, 0.015, 0)
FPSLabel.Size = UDim2.new(0.35, 0, 0.2, 0)
FPSLabel.Font = Enum.Font.SourceSansBold
FPSLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
FPSLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
FPSLabel.TextSize = 25
FPSLabel.BackgroundTransparency = 0.8
 
FPSLabelUICorner.Parent = FPSLabel
FPSLabelUICorner.CornerRadius = UDim.new(0, 12)
 
local function fre()
    local fr = tick()
    for index = #FPS, 1, -1 do
        FPS[index + 1] = (FPS[index] >= fr - 1) and FPS[index] or nil
    end
    FPS[1] = fr
    local fps = (tick() - sec >= 1 and #FPS) or (#FPS / (tick() - sec))
    fps = math.floor(fps)
    FPSLabel.Text = "帧率: "..fps
end
sec = tick()
RenderStepped:Connect(fre)
 
PingLabel.Name = "PingLabel"
PingLabel.Parent = GameFrame
PingLabel.Position = UDim2.new(0.37, 0, 0.015, 0)
PingLabel.Size = UDim2.new(0.62, 0, 0.2, 0)
PingLabel.Font = Enum.Font.SourceSansBold
PingLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
PingLabel.TextSize = 25
PingLabel.BackgroundTransparency = 0.8
 
PingLabelUICorner.Parent = PingLabel
PingLabelUICorner.CornerRadius = UDim.new(0, 12)
 
 
CPULabel.Name = "CPULabel"
CPULabel.Parent = GameFrame
CPULabel.Position = UDim2.new(0.01, 0, 0.265, 0)
CPULabel.Size = UDim2.new(0.62, 0, 0.2, 0)
CPULabel.Font = Enum.Font.SourceSansBold
CPULabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CPULabel.TextColor3 = Color3.fromRGB(255, 255, 255)
CPULabel.TextSize = 25
CPULabel.BackgroundTransparency = 0.8
 
CPUUICorner.Parent = CPULabel
CPUUICorner.CornerRadius = UDim.new(0, 12)
 
GPULabel.Name = "GPULabel"
GPULabel.Parent = GameFrame
GPULabel.Position = UDim2.new(0.64, 0, 0.265, 0)
GPULabel.Size = UDim2.new(0.35, 0, 0.2, 0)
GPULabel.Font = Enum.Font.SourceSansBold
GPULabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GPULabel.TextColor3 = Color3.fromRGB(255, 255, 255)
GPULabel.TextSize = 25
GPULabel.BackgroundTransparency = 0.8
 
GPUUICorner.Parent = GPULabel
GPUUICorner.CornerRadius = UDim.new(0, 12)
 
PlayersInServer.Name = "PlayersInServer"
PlayersInServer.Parent = GameFrame
PlayersInServer.Position = UDim2.new(0.01, 0, 0.78, 0)
PlayersInServer.Size = UDim2.new(0.62, 0, 0.2, 0)
PlayersInServer.Font = Enum.Font.SourceSansBold
PlayersInServer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
PlayersInServer.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayersInServer.TextSize = 25
PlayersInServer.BackgroundTransparency = 0.8
 
PlayersInServerUICorner.Parent = PlayersInServer
PlayersInServerUICorner.CornerRadius = UDim.new(0, 12)
 
ServerSize.Name = "ServerSize"
ServerSize.Parent = GameFrame
ServerSize.Position = UDim2.new(0.64, 0, 0.78, 0)
ServerSize.Size = UDim2.new(0.35, 0, 0.2, 0)
ServerSize.Font = Enum.Font.SourceSansBold
ServerSize.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerSize.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerSize.TextSize = 25
ServerSize.BackgroundTransparency = 0.8
 
ServerSizeUICorner.Parent = ServerSize
ServerSizeUICorner.CornerRadius = UDim.new(0, 12)
 
 
ServerLive.Name = "ServerLive"
ServerLive.Parent = GameFrame
ServerLive.Position = UDim2.new(0.01, 0, 0.52, 0)
ServerLive.Size = UDim2.new(0.35, 0, 0.2, 0)
ServerLive.Font = Enum.Font.SourceSansBold
ServerLive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ServerLive.TextColor3 = Color3.fromRGB(255, 255, 255)
ServerLive.TextSize = 25
ServerLive.BackgroundTransparency = 0.8
ServerLive.TextScaled = true
ServerLive.TextWrapped = true
 
ServerLiveUICorner.Parent = ServerLive
ServerLiveUICorner.CornerRadius = UDim.new(0, 12)
 
Executor.Name = "Executor"
Executor.Parent = GameFrame
Executor.Position = UDim2.new(0.37, 0, 0.52, 0)
Executor.Size = UDim2.new(0.62, 0, 0.2, 0)
Executor.Font = Enum.Font.SourceSansBold
Executor.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Executor.TextColor3 = Color3.fromRGB(255, 255, 255)
Executor.TextSize = 25
Executor.BackgroundTransparency = 0.8
 
ExecutorUICorner.Parent = Executor
ExecutorUICorner.CornerRadius = UDim.new(0, 12)
 
spawn(function()
repeat
wait()
local ping = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").Ping:GetValue())
local gpu = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").GPU:GetValue())
local cpu = tonumber(game:GetService("Stats"):FindFirstChild("PerformanceStats").CPU:GetValue())
cpu = math.floor(cpu)
gpu = math.floor(gpu)
ping = math.floor(ping)
PingLabel.Text = "Ping: "..ping
CPULabel.Text = "CPU: "..cpu
GPULabel.Text = "GPU: "..gpu
PlayersInServer.Text = "玩家数: "..#game.Players:GetPlayers()
ServerSize.Text = "服务器容量: "..game.Players.MaxPlayers
ServerLive.Text = "服务器在线时间: "..convertToHMS(time())
Executor.Text = "执行器: "..identifyexecutor()
Clock.Text = os.date("%H:%M")
until 
PingLabel == nil
end)
 
 
InfoBox.Visible = false
 
InfoBox.Name = "InfoBox"
InfoBox.Parent = MainFrame
InfoBox.BackgroundTransparency = 0.2
InfoBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
InfoBox.BorderSizePixel = 0
InfoBox.Position = UDim2.new(-3.55, 0, -1.4, 0)
InfoBox.Size = UDim2.new(0, 855, 0, 400)
InfoBox.ZIndex = 3
 
InfoBoxUICorner.CornerRadius = UDim.new(0, 12)
InfoBoxUICorner.Parent = InfoBox

SearchBox.Name = "SearchBox"
SearchBox.Parent = MainFrame
SearchBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SearchBox.BackgroundTransparency = 0.5
SearchBox.Position = UDim2.new(-3.55, 0, -1.8, 0)
SearchBox.Size = UDim2.new(0, 855, 0, 26)
SearchBox.ClearTextOnFocus = false
SearchBox.Font = Enum.Font.SourceSansBold
SearchBox.PlaceholderText = "点击搜索"
SearchBox.Text = ""
SearchBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.TextTransparency = 0
SearchBox.TextScaled = true
SearchBox.TextSize = 14.000
SearchBox.TextWrapped = true
 
UICorner_3.CornerRadius = UDim.new(0, 12)
UICorner_3.Parent = SearchBox
 
ScriptListFrame.Name = "ScriptListFrame"
ScriptListFrame.Parent = MainFrame
ScriptListFrame.Active = true
ScriptListFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ScriptListFrame.BackgroundTransparency = 1
ScriptListFrame.BorderSizePixel = 0
ScriptListFrame.Position = UDim2.new(-3.8, 0, -1.5, 0)
ScriptListFrame.Size = UDim2.new(0, 1000, 0, 420)
ScriptListFrame.ZIndex = 2
ScriptListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
 
ScriptAuthor.Name = "ScriptAuthor"
ScriptAuthor.Parent = ScriptFrame
ScriptAuthor.BackgroundTransparency = 1
ScriptAuthor.Position = UDim2.new(0, 10, 0, 150)
ScriptAuthor.Size = UDim2.new(0, 280, 0, 30)
ScriptAuthor.Font = Enum.Font.SourceSansBold
ScriptAuthor.Text = "作者：ScriptAuthor"
ScriptAuthor.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptAuthor.TextSize = 14.000
ScriptAuthor.TextWrapped = true
ScriptAuthor.TextScaled = true
ScriptAuthor.TextXAlignment = Enum.TextXAlignment.Left
 
UIPadding.Parent = ScriptListFrame
UIPadding.PaddingBottom = UDim.new(0, 10)
UIPadding.PaddingLeft = UDim.new(0, 25)
UIPadding.PaddingRight = UDim.new(0, 25)
UIPadding.PaddingTop = UDim.new(0, 10)
 
Scripts.Name = "Scripts"
Scripts.Parent = ScriptListFrame
 
UIGridLayout.Parent = Scripts
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellPadding = UDim2.new(0, 20, 0, 20)
UIGridLayout.CellSize = UDim2.new(0, 855, 0, 400)
 
ScriptFrame.Name = "ScriptFrame"
ScriptFrame.Parent = Scripts
ScriptFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScriptFrame.BackgroundTransparency = 0.5
ScriptFrame.Size = UDim2.new(0, 200, 0, 100)
ScriptFrame.Position = UDim2.new(1.5, 0, 0, 0)
ScriptFrame.Image = "rbxassetid://16050153732" --ui背景
 
UICorner_6.CornerRadius = UDim.new(0, 12)
UICorner_6.Parent = ScriptFrame
 
ScriptTitle.Name = "ScriptTitle"
ScriptTitle.Parent = ScriptFrame
ScriptTitle.BackgroundTransparency = 1
ScriptTitle.Position = UDim2.new(0, 10, 0, 20)
ScriptTitle.Size = UDim2.new(0, 840, 0, 100)
ScriptTitle.Font = Enum.Font.SourceSansBold
ScriptTitle.Text = "脚本标题"
ScriptTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptTitle.TextScaled = true
ScriptTitle.TextSize = 14.000
ScriptTitle.TextWrapped = true
ScriptTitle.TextXAlignment = Enum.TextXAlignment.Left
 
ExecuteButtonBackground.Name = "ExecuteButtonBackground"
ExecuteButtonBackground.Parent = ScriptFrame
ExecuteButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ExecuteButtonBackground.Position = UDim2.new(0.0123, 0, 0.794, 0)
ExecuteButtonBackground.Size = UDim2.new(0, 205, 0, 55)
 
ExecuteButtonBackgroundUICorner.Parent = ExecuteButtonBackground
ExecuteButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
ExecuteButton.Name = "ExecuteButton"
ExecuteButton.Parent = ScriptFrame
ExecuteButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton.Position = UDim2.new(0.015, 0, 0.8, 0)
ExecuteButton.Size = UDim2.new(0, 200, 0, 50)
ExecuteButton.AutoButtonColor = false
ExecuteButton.Font = Enum.Font.SourceSansBold
ExecuteButton.Text = "执行"
ExecuteButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton.TextSize = 14.000
ExecuteButton.TextScaled = true
ExecuteButton.TextWrapped = true
 
UICorner_7.CornerRadius = UDim.new(0, 12)
UICorner_7.Parent = ExecuteButton
 
CopyLinkButtonBackground.Name = "CopyLinkButtonBackground"
CopyLinkButtonBackground.Parent = ScriptFrame
CopyLinkButtonBackground.BackgroundColor3 = Color3.fromRGB(55,55, 55)
CopyLinkButtonBackground.Position = UDim2.new(0.2569, 0, 0.794, 0)
CopyLinkButtonBackground.Size = UDim2.new(0, 205, 0, 55)
 
CopyLinkButtonBackgroundUICorner.Parent = CopyLinkButtonBackground
CopyLinkButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
CopyLinkButton.Name = "CopyLinkButton"
CopyLinkButton.Parent = ScriptFrame
CopyLinkButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyLinkButton.Position = UDim2.new(0.26, 0, 0.8, 0)
CopyLinkButton.Size = UDim2.new(0, 200, 0, 50)
CopyLinkButton.AutoButtonColor = false
CopyLinkButton.Font = Enum.Font.SourceSansBold
CopyLinkButton.Text = "复制链接"
CopyLinkButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyLinkButton.TextSize = 14.000
CopyLinkButton.TextScaled = true
CopyLinkButton.TextWrapped = true
 
CopyLinkButtonUICorner.CornerRadius = UDim.new(0, 12)
CopyLinkButtonUICorner.Parent = CopyLinkButton

CopyScriptBackground.Name = "CopyScriptBackground"
CopyScriptBackground.Parent = ScriptFrame
CopyScriptBackground.BackgroundColor3 = Color3.fromRGB(55 ,55, 55)
CopyScriptBackground.Position = UDim2.new(0.5022, 0, 0.794, 0)
CopyScriptBackground.Size = UDim2.new(0, 205, 0, 55)
 
CopyScriptBackgroundUICorner.Parent = CopyScriptBackground
CopyScriptBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
CopyScriptButton.Name = "CopyScriptButton"
CopyScriptButton.Parent = ScriptFrame
CopyScriptButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyScriptButton.Position = UDim2.new(0.505, 0, 0.8, 0)
CopyScriptButton.Size = UDim2.new(0, 200, 0, 50)
CopyScriptButton.AutoButtonColor = false
CopyScriptButton.Font = Enum.Font.SourceSansBold
CopyScriptButton.Text = "复制脚本"
CopyScriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyScriptButton.TextSize = 14.000
CopyScriptButton.TextScaled = true
CopyScriptButton.TextWrapped = true
 
CopyScriptButtonUICorner.CornerRadius = UDim.new(0, 12)
CopyScriptButtonUICorner.Parent = CopyScriptButton
 
OpenDescriptionBackground.Name = "OpenDescriptionBackground"
OpenDescriptionBackground.Parent = ScriptFrame
OpenDescriptionBackground.BackgroundColor3 = Color3.fromRGB(55,55, 55)
OpenDescriptionBackground.Position = UDim2.new(0.747, 0, 0.794, 0)
OpenDescriptionBackground.Size = UDim2.new(0, 205, 0, 55)
 
OpenDescriptionBackgroundUICorner.Parent = OpenDescriptionBackground
OpenDescriptionBackgroundUICorner.CornerRadius = UDim.new(0, 15)

OpenDescriptionButton.Name = "OpenDescriptionButton"
OpenDescriptionButton.Parent = ScriptFrame
OpenDescriptionButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenDescriptionButton.Position = UDim2.new(0.75, 0, 0.8, 0)
OpenDescriptionButton.Size = UDim2.new(0, 200, 0, 50)
OpenDescriptionButton.AutoButtonColor = false
OpenDescriptionButton.Font = Enum.Font.SourceSansBold
OpenDescriptionButton.Text = "描述"
OpenDescriptionButton.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenDescriptionButton.TextSize = 14.000
OpenDescriptionButton.TextScaled = true
OpenDescriptionButton.TextWrapped = true
 
OpenDescriptionButtonUICorner.CornerRadius = UDim.new(0, 12)
OpenDescriptionButtonUICorner.Parent = OpenDescriptionButton
 
ScriptGame.Name = "ScriptGame"
ScriptGame.Parent = ScriptFrame
ScriptGame.BackgroundTransparency = 1
ScriptGame.Position = UDim2.new(0, 10, 0, 220)
ScriptGame.Size = UDim2.new(0, 280, 0, 30)
ScriptGame.Font = Enum.Font.SourceSansBold
ScriptGame.Text = "游戏"
ScriptGame.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptGame.TextSize = 14
ScriptGame.TextWrapped = true
ScriptGame.TextScaled = true
ScriptGame.TextXAlignment = Enum.TextXAlignment.Left
 
VerifiedScriptFrame.Name = "VerifiedScriptFrame"
VerifiedScriptFrame.Parent = Scripts
VerifiedScriptFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VerifiedScriptFrame.Size = UDim2.new(0, 300, 0, 150)
VerifiedScriptFrame.Image = "rbxassetid://16050153732" --ui背景
 
UICorner_9.CornerRadius = UDim.new(0, 12)
UICorner_9.Parent = VerifiedScriptFrame
 
ScriptTitle_2.Name = "ScriptTitle"
ScriptTitle_2.Parent = VerifiedScriptFrame
ScriptTitle_2.BackgroundTransparency = 1
ScriptTitle_2.Position = UDim2.new(0, 10, 0, 20)
ScriptTitle_2.Size = UDim2.new(0, 840, 0, 100)
ScriptTitle_2.Font = Enum.Font.SourceSansBold
ScriptTitle_2.Text = "脚本标题"
ScriptTitle_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ScriptTitle_2.TextScaled = true
ScriptTitle_2.TextSize = 14.000
ScriptTitle_2.TextWrapped = true
ScriptTitle_2.TextXAlignment = Enum.TextXAlignment.Left
 
VerifiedIcon.Name = "VerifiedIcon"
VerifiedIcon.Parent = VerifiedScriptFrame
VerifiedIcon.BackgroundTransparency = 0
VerifiedIcon.Position = UDim2.new(0.75, 0, 0.35, 0)
VerifiedIcon.Size = UDim2.new(0, 215, 0, 150)
VerifiedIcon.Image = "rbxassetid://15621211889" --蓝色圆圈里边的✓
VerifiedIcon.BackgroundTransparency = 1
 
ExecuteButtonBackground_2.Name = "ExecuteButtonBackground"
ExecuteButtonBackground_2.Parent = VerifiedScriptFrame
ExecuteButtonBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
ExecuteButtonBackground_2.Position = UDim2.new(0.0123, 0, 0.794, 0)
ExecuteButtonBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
ExecuteButtonBackgroundUICorner_2.Parent = ExecuteButtonBackground_2
ExecuteButtonBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
 
ExecuteButton_2.Name = "ExecuteButton"
ExecuteButton_2.Parent = VerifiedScriptFrame
ExecuteButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton_2.Position = UDim2.new(0.015, 0, 0.8, 0)
ExecuteButton_2.Size = UDim2.new(0, 200, 0, 50)
ExecuteButton_2.AutoButtonColor = false
ExecuteButton_2.Font = Enum.Font.SourceSansBold
ExecuteButton_2.Text = "执行"
ExecuteButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton_2.TextSize = 14.000
ExecuteButton_2.TextScaled = true
ExecuteButton_2.TextWrapped = true
 
UICorner_10.CornerRadius = UDim.new(0, 12)
UICorner_10.Parent = ExecuteButton_2
 
CopyLinkButtonBackground_2.Name = "CopyLinkButtonBackground"
CopyLinkButtonBackground_2.Parent = VerifiedScriptFrame
CopyLinkButtonBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
CopyLinkButtonBackground_2.Position = UDim2.new(0.2569, 0, 0.794, 0)
CopyLinkButtonBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
CopyLinkButtonBackgroundUICorner_2.Parent = CopyLinkButtonBackground_2
CopyLinkButtonBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
 
CopyLinkButton_2.Name = "CopyLinkButton"
CopyLinkButton_2.Parent = VerifiedScriptFrame
CopyLinkButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyLinkButton_2.Position = UDim2.new(0.26, 0, 0.8, 0)
CopyLinkButton_2.Size = UDim2.new(0, 200, 0, 50)
CopyLinkButton_2.AutoButtonColor = false
CopyLinkButton_2.Font = Enum.Font.SourceSansBold
CopyLinkButton_2.Text = "复制链接"
CopyLinkButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyLinkButton_2.TextSize = 14.000
CopyLinkButton_2.TextScaled = true
CopyLinkButton_2.TextWrapped = true
 
CopyLinkButtonUICorner_2.CornerRadius = UDim.new(0, 12)
CopyLinkButtonUICorner_2.Parent = CopyLinkButton_2
 
AutoExecuteBackground.Name = "AutoExecuteBackground"
AutoExecuteBackground.Parent = ScriptFrame
AutoExecuteBackground.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecuteBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AutoExecuteBackground.Position = UDim2.new(0.04, 0, 0.72, 0)
AutoExecuteBackground.Size = UDim2.new(0, 46, 0, 46)
 
AutoExecuteBackgroundUICorner.CornerRadius = UDim.new(0, 15)
AutoExecuteBackgroundUICorner.Parent = AutoExecuteBackground
 
AutoExecute.Name = "AutoExecute"
AutoExecute.Parent = ScriptFrame
AutoExecute.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecute.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoExecute.Position = AutoExecuteBackground.Position
AutoExecute.Size = UDim2.new(0, 41, 0, 41)
AutoExecute.Text = "★"
AutoExecute.AutoButtonColor = false
AutoExecute.Font = Enum.Font.SourceSansBold
AutoExecute.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoExecute.TextSize = 35

AutoExecuteUICorner.CornerRadius = UDim.new(0, 12)
AutoExecuteUICorner.Parent = AutoExecute
 
CommentsBackground.Name = "CommentsBackground"
CommentsBackground.Parent = ScriptFrame
CommentsBackground.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CommentsBackground.Position = UDim2.new(0.96, 0, 0.72, 0)
CommentsBackground.Size = UDim2.new(0, 46, 0, 46)
 
CommentsBackgroundUICorner.CornerRadius = UDim.new(0, 15)
CommentsBackgroundUICorner.Parent = CommentsBackground
 
CommentsButton.Name = "CommentsButton"
CommentsButton.Parent = ScriptFrame
CommentsButton.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CommentsButton.Position = CommentsBackground.Position
CommentsButton.Size = UDim2.new(0, 41, 0, 41)
CommentsButton.Image = "rbxassetid://18946598838" --信息
CommentsButton.AutoButtonColor = false

CommentsButtonUICorner.CornerRadius = UDim.new(0, 12)
CommentsButtonUICorner.Parent = CommentsButton

CommentsBackground_2.Name = "CommentsBackground"
CommentsBackground_2.Parent = VerifiedScriptFrame
CommentsBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsBackground_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CommentsBackground_2.Position = UDim2.new(0.96, 0, 0.72, 0)
CommentsBackground_2.Size = UDim2.new(0, 46, 0, 46)
 
CommentsBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
CommentsBackgroundUICorner_2.Parent = CommentsBackground_2
 
CommentsButton_2.Name = "CommentsButton"
CommentsButton_2.Parent = VerifiedScriptFrame
CommentsButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
CommentsButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CommentsButton_2.Position = CommentsBackground_2.Position
CommentsButton_2.Size = UDim2.new(0, 41, 0, 41)
CommentsButton_2.Image = "rbxassetid://18946598838"  --信息
CommentsButton_2.AutoButtonColor = false

CommentsButtonUICorner_2.CornerRadius = UDim.new(0, 12)
CommentsButtonUICorner_2.Parent = CommentsButton_2

AutoExecuteBackground_2.Name = "AutoExecuteBackground"
AutoExecuteBackground_2.Parent = VerifiedScriptFrame
AutoExecuteBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecuteBackground_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
AutoExecuteBackground_2.Position = AutoExecuteBackground.Position
AutoExecuteBackground_2.Size = UDim2.new(0, 46, 0, 46)
 
AutoExecuteBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
AutoExecuteBackgroundUICorner_2.Parent = AutoExecuteBackground_2
 
AutoExecute_2.Name = "AutoExecute"
AutoExecute_2.Parent = VerifiedScriptFrame
AutoExecute_2.AnchorPoint = Vector2.new(0.5, 0.5)
AutoExecute_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
AutoExecute_2.Position = AutoExecuteBackground.Position
AutoExecute_2.Size = UDim2.new(0, 41, 0, 41)
AutoExecute_2.Text = "★"
AutoExecute_2.AutoButtonColor = false
AutoExecute_2.Font = Enum.Font.SourceSansBold
AutoExecute_2.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoExecute_2.TextSize = 35

AutoExecuteUICorner_2.CornerRadius = UDim.new(0, 12)
AutoExecuteUICorner_2.Parent = AutoExecute_2

CopyScriptBackground_2.Name = "CopyScriptBackground"
CopyScriptBackground_2.Parent = VerifiedScriptFrame
CopyScriptBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
CopyScriptBackground_2.Position = UDim2.new(0.5022, 0, 0.794, 0)
CopyScriptBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
CopyScriptBackgroundUICorner_2.Parent = CopyScriptBackground_2
CopyScriptBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)
 
CopyScriptButton_2.Name = "CopyScriptButton"
CopyScriptButton_2.Parent = VerifiedScriptFrame
CopyScriptButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyScriptButton_2.Position = UDim2.new(0.505, 0, 0.8, 0)
CopyScriptButton_2.Size = UDim2.new(0, 200, 0, 50)
CopyScriptButton_2.AutoButtonColor = false
CopyScriptButton_2.Font = Enum.Font.SourceSansBold
CopyScriptButton_2.Text = "复制脚本"
CopyScriptButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyScriptButton_2.TextSize = 14.000
CopyScriptButton_2.TextScaled = true
CopyScriptButton_2.TextWrapped = true
 
CopyScriptButtonUICorner_2.CornerRadius = UDim.new(0, 12)
CopyScriptButtonUICorner_2.Parent = CopyScriptButton_2

OpenDescriptionBackground_2.Name = "OpenDescriptionBackground"
OpenDescriptionBackground_2.Parent = VerifiedScriptFrame
OpenDescriptionBackground_2.BackgroundColor3 = Color3.fromRGB(55,55, 55)
OpenDescriptionBackground_2.Position = UDim2.new(0.747, 0, 0.794, 0)
OpenDescriptionBackground_2.Size = UDim2.new(0, 205, 0, 55)
 
OpenDescriptionBackgroundUICorner_2.Parent = OpenDescriptionBackground_2
OpenDescriptionBackgroundUICorner_2.CornerRadius = UDim.new(0, 15)

OpenDescriptionButton_2.Name = "OpenDescriptionButton"
OpenDescriptionButton_2.Parent = VerifiedScriptFrame
OpenDescriptionButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
OpenDescriptionButton_2.Position = UDim2.new(0.75, 0, 0.8, 0)
OpenDescriptionButton_2.Size = UDim2.new(0, 200, 0, 50)
OpenDescriptionButton_2.AutoButtonColor = false
OpenDescriptionButton_2.Font = Enum.Font.SourceSansBold
OpenDescriptionButton_2.Text = "描述"
OpenDescriptionButton_2.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenDescriptionButton_2.TextSize = 14.000
OpenDescriptionButton_2.TextScaled = true
OpenDescriptionButton_2.TextWrapped = true
 
OpenDescriptionButtonUICorner_2.CornerRadius = UDim.new(0, 12)
OpenDescriptionButtonUICorner_2.Parent = OpenDescriptionButton_2
 
ScriptAuthor_2.Name = "ScriptAuthor"
ScriptAuthor_2.Parent = VerifiedScriptFrame
ScriptAuthor_2.BackgroundTransparency = 1
ScriptAuthor_2.Position = UDim2.new(0, 10, 0, 150)
ScriptAuthor_2.Size = UDim2.new(0, 280, 0, 30)
ScriptAuthor_2.Font = Enum.Font.SourceSansBold
ScriptAuthor_2.Text = "作者：ScriptAuthor"
ScriptAuthor_2.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptAuthor_2.TextSize = 14.000
ScriptAuthor_2.TextWrapped = true
ScriptAuthor_2.TextScaled = true
ScriptAuthor_2.TextXAlignment = Enum.TextXAlignment.Left
 
ScriptGame_2.Name = "ScriptGame"
ScriptGame_2.Parent = VerifiedScriptFrame
ScriptGame_2.BackgroundTransparency = 1
ScriptGame_2.Position = UDim2.new(0, 10, 0, 220)
ScriptGame_2.Size = UDim2.new(0, 280, 0, 30)
ScriptGame_2.Font = Enum.Font.Code
ScriptGame_2.Text = "游戏"
ScriptGame_2.TextColor3 = Color3.fromRGB(192, 192, 192)
ScriptGame_2.TextSize = 14.000
ScriptGame_2.TextWrapped = true
ScriptGame_2.TextScaled = true
ScriptGame_2.TextXAlignment = Enum.TextXAlignment.Left
 
DescriptionScript.Name = "DescriptionScript"
DescriptionScript.Parent = MainFrame
DescriptionScript.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
DescriptionScript.Position = UDim2.new(-3.55, 0, -1.4, 0)
DescriptionScript.Size = UDim2.new(0, 855, 0, 400)
DescriptionScript.AutoButtonColor = false
DescriptionScript.BackgroundTransparency = 0.2
DescriptionScript.Font = Enum.Font.SourceSansBold
DescriptionScript.Text = "描述"
DescriptionScript.TextColor3 = Color3.fromRGB(255, 255, 255)
DescriptionScript.TextSize = 14.000
DescriptionScript.TextScaled = true
DescriptionScript.TextWrapped = true
 
DescriptionScriptUICorner.CornerRadius = UDim.new(0, 12)
DescriptionScriptUICorner.Parent = DescriptionScript
 
DescriptionScript.Visible = false

ReloadBackgroundButton.Name = "ReloadBackgroundButton"
ReloadBackgroundButton.Parent = MainFrame
ReloadBackgroundButton.AnchorPoint = Vector2.new(0.5, 0.5)
ReloadBackgroundButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ReloadBackgroundButton.Position = UDim2.new(-3.9, 0, 2.3, 0)
ReloadBackgroundButton.Size = UDim2.new(0, 46, 0, 46)
 
ReloadBackgroundButtonUICorner.CornerRadius = UDim.new(0, 15)
ReloadBackgroundButtonUICorner.Parent = ReloadBackgroundButton
 
ReloadButton.Name = "ReloadButton"
ReloadButton.Parent = ReloadBackgroundButton
ReloadButton.AnchorPoint = Vector2.new(0.5, 0.5)
ReloadButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ReloadButton.Position = UDim2.new(0.5, 0, 0.5, 0)
ReloadButton.Size = UDim2.new(0, 41, 0, 41)
ReloadButton.Image = "rbxassetid://16422858330" --重置键
ReloadButton.AutoButtonColor = false
 
ReloadButtonUICorner.CornerRadius = UDim.new(0, 12)
ReloadButtonUICorner.Parent = ReloadButton

HistoryBackgroundButton.Name = "HistoryBackgroundButton"
HistoryBackgroundButton.Parent = MainFrame
HistoryBackgroundButton.AnchorPoint = Vector2.new(0.5, 0.5)
HistoryBackgroundButton.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
HistoryBackgroundButton.Position = UDim2.new(-3.9, 0, 1.8, 0)
HistoryBackgroundButton.Size = UDim2.new(0, 46, 0, 46)
 
HistoryBackgroundButtonUICorner.CornerRadius = UDim.new(0, 15)
HistoryBackgroundButtonUICorner.Parent = HistoryBackgroundButton
 
HistoryButton.Name = "HistoryButton"
HistoryButton.Parent = HistoryBackgroundButton
HistoryButton.AnchorPoint = Vector2.new(0.5, 0.5)
HistoryButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
HistoryButton.Position = UDim2.new(0.5, 0, 0.5, 0)
HistoryButton.Size = UDim2.new(0, 41, 0, 41)
HistoryButton.Image = "rbxassetid://16428511381" --时间信息
HistoryButton.AutoButtonColor = false
 
HistoryButtonUICorner.CornerRadius = UDim.new(0, 12)
HistoryButtonUICorner.Parent = HistoryButton

ClearAndSearchBackground.Name = "ClearAndSearchBackground"
ClearAndSearchBackground.Parent = MainFrame
ClearAndSearchBackground.AnchorPoint = Vector2.new(0.5, 0.5)
ClearAndSearchBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ClearAndSearchBackground.Position = UDim2.new(-3.9, 0, -1.2, 0)
ClearAndSearchBackground.Size = UDim2.new(0, 46, 0, 46)
 
ClearAndSearchBackgroundUICorner.CornerRadius = UDim.new(0, 15)
ClearAndSearchBackgroundUICorner.Parent = ClearAndSearchBackground
 
ClearAndSearch.Name = "ClearAndSearch"
ClearAndSearch.Parent = ClearAndSearchBackground
ClearAndSearch.AnchorPoint = Vector2.new(0.5, 0.5)
ClearAndSearch.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClearAndSearch.Position = UDim2.new(0.5, 0, 0.5, 0)
ClearAndSearch.Size = UDim2.new(0, 41, 0, 41)
ClearAndSearch.Image = "rbxassetid://16449084806" --箭头点击
ClearAndSearch.AutoButtonColor = false
 
ClearAndSearchUICorner.CornerRadius = UDim.new(0, 12)
ClearAndSearchUICorner.Parent = ClearAndSearch

Info.Name = "Info"
Info.Parent = InfoBox
Info.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Info.BackgroundTransparency = 1
Info.Size = UDim2.new(0, 995, 0, 100)
 
Comments.Name = "Comments"
Comments.Parent = InfoBox
Comments.BackgroundTransparency = 1
Comments.Size = UDim2.new(0, 400, 0, 414)
 
Inner.Name = "Inner"
Inner.Parent = Comments
Inner.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Inner.Position = UDim2.new(0, 0, 0, 10)
Inner.BackgroundTransparency = 1
Inner.Size = UDim2.new(0, 400, 0, 414)
 
UICorner_21.CornerRadius = UDim.new(0, 12)
UICorner_21.Parent = Inner
 
Comments_2.Name = "Comments"
Comments_2.Parent = Inner
Comments_2.Active = true
Comments_2.BackgroundTransparency = 1
Comments_2.BorderSizePixel = 0
Comments_2.Position = UDim2.new(0, 3.5, 0, -6.5)
Comments_2.Size = UDim2.new(0, 860, 0, 400)
Comments_2.CanvasSize = UDim2.new(0, 0, 0, 0)
 
Comment.Name = "Comment"
Comment.Parent = Comments_2
Comment.BackgroundTransparency = 1
Comment.Size = UDim2.new(0, 860, 0, 150)
 
Content.Name = "Content"
Content.Parent = Comment
Content.BackgroundTransparency = 1
Content.Position = UDim2.new(0, 0, 0, 49)
Content.Size = UDim2.new(0, 850, 0, 100)
Content.Font = Enum.Font.SourceSansBold
Content.Text = "评论"
Content.TextColor3 = Color3.fromRGB(255, 255, 255)
Content.TextSize = 14
Content.TextWrapped = true
Content.TextXAlignment = Enum.TextXAlignment.Left
Content.TextYAlignment = Enum.TextYAlignment.Top
Content.TextScaled = true
 
CommentsWhiteLine.Name = "CommentsWhiteLine"
CommentsWhiteLine.Parent = Content
CommentsWhiteLine.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
CommentsWhiteLine.BorderSizePixel = 0
CommentsWhiteLine.Size = UDim2.new(0, 850, 0, 1)
CommentsWhiteLine.Position = UDim2.new(0, 0, 0, 99)

Author_2.Name = "Author"
Author_2.Parent = Comment
Author_2.BackgroundTransparency = 1
Author_2.Position = UDim2.new(0, 50, 0, 5)
Author_2.Size = UDim2.new(0, 620, 0, 40)
Author_2.Font = Enum.Font.SourceSansBold
Author_2.Text = "作者"
Author_2.TextColor3 = Color3.fromRGB(255, 255, 255)
Author_2.TextScaled = true
Author_2.TextWrapped = true
Author_2.TextXAlignment = Enum.TextXAlignment.Left
 
ProfilePicture_2.Name = "ProfilePicture"
ProfilePicture_2.Parent = Comment
ProfilePicture_2.BackgroundTransparency = 1
ProfilePicture_2.Position = UDim2.new(0, 5, 0, 5)
ProfilePicture_2.Size = UDim2.new(0, 40, 0, 40)
ProfilePicture_2.Image = "rbxassetid://17093333262" --脚本网站头像
 
LikeImg.Name = "LikeImg"
LikeImg.Parent = Comment
LikeImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
LikeImg.BackgroundTransparency = 1
LikeImg.Position = UDim2.new(0, 672, 0, 10)
LikeImg.Size = UDim2.new(0, 25, 0, 25)
LikeImg.Image = "rbxassetid://18949293967" --👍

DisLikeImg.Name = "DisLikeImg"
DisLikeImg.Parent = Comment
DisLikeImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DisLikeImg.BackgroundTransparency = 1
DisLikeImg.Position = UDim2.new(0, 760, 0, 10)
DisLikeImg.Size = UDim2.new(0, 25, 0, 25)
DisLikeImg.Image = "rbxassetid://18949332467" --👎

LikeCount.Name = "LikeCount"
LikeCount.Parent = Comment
LikeCount.BackgroundTransparency = 1
LikeCount.Position = UDim2.new(0, 710, 0, 10)
LikeCount.Size = UDim2.new(0, 50, 0, 25)
LikeCount.Font = Enum.Font.SourceSansBold
LikeCount.Text = "0"
LikeCount.TextColor3 = Color3.fromRGB(255, 255, 255)
LikeCount.TextScaled = true
LikeCount.TextWrapped = true
LikeCount.TextXAlignment = Enum.TextXAlignment.Left
LikeCount.TextYAlignment = Enum.TextYAlignment.Bottom

DislikeCount.Name = "DislikeCount"
DislikeCount.Parent = Comment
DislikeCount.BackgroundTransparency = 1
DislikeCount.Position = UDim2.new(0, 797, 0, 10)
DislikeCount.Size = UDim2.new(0, 50, 0, 25)
DislikeCount.Font = Enum.Font.SourceSansBold
DislikeCount.Text = "0"
DislikeCount.TextColor3 = Color3.fromRGB(255, 255, 255)
DislikeCount.TextScaled = true
DislikeCount.TextWrapped = true
DislikeCount.TextXAlignment = Enum.TextXAlignment.Left
DislikeCount.TextYAlignment = Enum.TextYAlignment.Bottom

UICorner_22.CornerRadius = UDim.new(1, 0)
UICorner_22.Parent = ProfilePicture_2
 
UIListLayout_3.Parent = Comments_2
UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout_3.Padding = UDim.new(0, 0)
 
NoComments.Name = "NoComments"
NoComments.Parent = InfoBox
NoComments.BackgroundTransparency = 1
NoComments.Position = UDim2.new(0.49, 0, 0.5, 0)
NoComments.Size = UDim2.new(0, 10, 0, 5)
NoComments.Font = Enum.Font.SourceSansBold
NoComments.Text = "还没有评论"
NoComments.TextColor3 = Color3.fromRGB(255, 255, 255)
NoComments.TextSize = 50

CloseCommentsButtonBackground.Name = "CloseCommentsButtonBackground"
CloseCommentsButtonBackground.Parent = InfoBox
CloseCommentsButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
CloseCommentsButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CloseCommentsButtonBackground.Position = UDim2.new(1.03, 0, 0.058, 0)
CloseCommentsButtonBackground.Size = UDim2.new(0, 46, 0, 46)
 
CloseCommentsButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
CloseCommentsButtonBackgroundUICorner.Parent = CloseCommentsButtonBackground
 
CloseCommentsButton.Name = "CloseCommentsButton"
CloseCommentsButton.Parent = CloseCommentsButtonBackground
CloseCommentsButton.AnchorPoint = Vector2.new(0.5, 0.5)
CloseCommentsButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CloseCommentsButton.Position = UDim2.new(0.5, 0, 0.5, 0)
CloseCommentsButton.Size = UDim2.new(0, 41, 0, 41)
CloseCommentsButton.Image = "rbxassetid://18946644800"
CloseCommentsButton.AutoButtonColor = false

CloseCommentsButtonUICorner.CornerRadius = UDim.new(0, 12)
CloseCommentsButtonUICorner.Parent = CloseCommentsButton

BackgroundConsole.Name = "BackgroundConsole"
BackgroundConsole.Parent = UIGui
BackgroundConsole.AnchorPoint = Vector2.new(0.5, 0.5)
BackgroundConsole.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
BackgroundConsole.Position = UDim2.new(0.525, 0, -1, 0)
BackgroundConsole.Size = UDim2.new(0, 860, 0, 405)
 
BackgroundConsoleUICorner.CornerRadius = UDim.new(0, 15)
BackgroundConsoleUICorner.Parent = BackgroundConsole
 
BackgroundImage.Name = "BackgroundImage"
BackgroundImage.Parent = BackgroundConsole
BackgroundImage.AnchorPoint = Vector2.new(0.5, 0.5)
BackgroundImage.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
BackgroundImage.Position = UDim2.new(0.5, 0, 0.5, 0)
BackgroundImage.Size = UDim2.new(0, 855, 0, 400)
BackgroundImage.Image = "rbxassetid://16068028120"
 
BackgroundImageUICorner.CornerRadius = UDim.new(0, 12)
BackgroundImageUICorner.Parent = BackgroundImage
 
ConsoleOutput.Name = "ConsoleOutput"
ConsoleOutput.Parent = BackgroundImage
ConsoleOutput.AnchorPoint = Vector2.new(0.5, 0.5)
ConsoleOutput.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ConsoleOutput.BackgroundTransparency = 0.2
ConsoleOutput.Position = UDim2.new(0.5, 0, 0.5, 0)
ConsoleOutput.Size = UDim2.new(0, 855, 0, 400)
ConsoleOutput.Text = "通知、警告和脚本错误将显示在这里，以简化处理。"
ConsoleOutput.TextColor3 = Color3.fromRGB(255, 255, 255)
ConsoleOutput.TextScaled = false
ConsoleOutput.Font = Enum.Font.Code
ConsoleOutput.TextSize = 14
ConsoleOutput.TextWrapped = true
ConsoleOutput.TextXAlignment = Enum.TextXAlignment.Left
ConsoleOutput.TextYAlignment = Enum.TextYAlignment.Top
 
ConsoleOutputUICorner.CornerRadius = UDim.new(0, 12)
ConsoleOutputUICorner.Parent = ConsoleOutput
 
EditorBackground.Name = "EditorBackground"
EditorBackground.Parent = UIGui
EditorBackground.AnchorPoint = Vector2.new(0.5, 0.5)
EditorBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
EditorBackground.Position = UDim2.new(0.525, 0, -1, 0)
EditorBackground.Size = UDim2.new(0, 860, 0, 405)
 
EditorBackgroundUICorner.CornerRadius = UDim.new(0, 15)
EditorBackgroundUICorner.Parent = EditorBackground
 
EditorMainFrame.Name = "EditorMainFrame"
EditorMainFrame.Parent = EditorBackground
EditorMainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
EditorMainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorMainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
EditorMainFrame.Size = UDim2.new(0, 855, 0, 400)
EditorMainFrame.Image = "rbxassetid://16109043024" --背景2
 
EditorMainFrameUICorner.CornerRadius = UDim.new(0, 12)
EditorMainFrameUICorner.Parent = EditorMainFrame
 
EditorTextBox.Name = "EditorTextBox"
EditorTextBox.Parent = EditorMainFrame
EditorTextBox.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
EditorTextBox.BackgroundTransparency = 0.2
EditorTextBox.Position = UDim2.new(0.02, 0, 0.04, 0)
EditorTextBox.Size = UDim2.new(0, 820, 0, 310)
EditorTextBox.ClearTextOnFocus = false
EditorTextBox.Font = Enum.Font.SourceSansBold
EditorTextBox.PlaceholderText = "打印(\"你好世界\")"
EditorTextBox.Text = ""
EditorTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
EditorTextBox.TextTransparency = 0
EditorTextBox.TextSize = 14.000
EditorTextBox.TextWrapped = true
EditorTextBox.TextXAlignment = Enum.TextXAlignment.Left
EditorTextBox.TextYAlignment = Enum.TextYAlignment.Top
 
EditorTextBoxUICorner.CornerRadius = UDim.new(0, 12)
EditorTextBoxUICorner.Parent = EditorTextBox
 
ExecuteButtonBackground_3.Name = "ExecuteButtonBackground_3"
ExecuteButtonBackground_3.Parent = EditorMainFrame
ExecuteButtonBackground_3.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ExecuteButtonBackground_3.Position = UDim2.new(0.02, 0, 0.85, 0)
ExecuteButtonBackground_3.Size = UDim2.new(0, 195, 0, 55)
 
ExecuteButtonBackgroundUICorner_3.Parent = ExecuteButtonBackground_3
ExecuteButtonBackgroundUICorner_3.CornerRadius = UDim.new(0, 15)
 
ClearButtonBackground.Name = "ClearButtonBackground"
ClearButtonBackground.Parent = EditorMainFrame
ClearButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ClearButtonBackground.Position = UDim2.new(0.75, 0, 0.85, 0)
ClearButtonBackground.Size = UDim2.new(0, 195, 0, 55)
 
ClearButtonBackgroundUICorner.Parent = ClearButtonBackground
ClearButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
SaveButtonBackground.Name = "SaveButtonBackground"
SaveButtonBackground.Parent = EditorMainFrame
SaveButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SaveButtonBackground.Position = UDim2.new(0.506, 0, 0.85, 0)
SaveButtonBackground.Size = UDim2.new(0, 195, 0, 55)
 
SaveButtonBackgroundUICorner.Parent = SaveButtonBackground
SaveButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
CopyButtonBackground.Name = "CopyButtonBackground"
CopyButtonBackground.Parent = EditorMainFrame
CopyButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
CopyButtonBackground.Position = UDim2.new(0.264, 0, 0.85, 0)
CopyButtonBackground.Size = UDim2.new(0, 195, 0, 55)
 
CopyButtonBackgroundUICorner.Parent = CopyButtonBackground
CopyButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
 
ExecuteButton_3.Name = "ExecuteButton_3"
ExecuteButton_3.Parent = ExecuteButtonBackground_3
ExecuteButton_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ExecuteButton_3.Position = UDim2.new(0.013, 0, 0.05, 0)
ExecuteButton_3.Size = UDim2.new(0, 190, 0, 50)
ExecuteButton_3.AutoButtonColor = false
ExecuteButton_3.Font = Enum.Font.SourceSansBold
ExecuteButton_3.Text = "执行"
ExecuteButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
ExecuteButton_3.TextSize = 14.000
ExecuteButton_3.TextScaled = true
ExecuteButton_3.TextWrapped = true
 
ExecuteButtonUICorner_3.CornerRadius = UDim.new(0, 12)
ExecuteButtonUICorner_3.Parent = ExecuteButton_3
 
SaveButton.Name = "SaveButton"
SaveButton.Parent = SaveButtonBackground
SaveButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SaveButton.Position = UDim2.new(0.013, 0, 0.05, 0)
SaveButton.Size = UDim2.new(0, 190, 0, 50)
SaveButton.AutoButtonColor = false
SaveButton.Font = Enum.Font.SourceSansBold
SaveButton.Text = "保存"
SaveButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SaveButton.TextSize = 14.000
SaveButton.TextScaled = true
SaveButton.TextWrapped = true
 
SaveButtonUICorner.CornerRadius = UDim.new(0, 12)
SaveButtonUICorner.Parent = SaveButton
 
CopyButton.Name = "CopyButton"
CopyButton.Parent = CopyButtonBackground
CopyButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CopyButton.Position = UDim2.new(0.013, 0, 0.05, 0)
CopyButton.Size = UDim2.new(0, 190, 0, 50)
CopyButton.AutoButtonColor = false
CopyButton.Font = Enum.Font.SourceSansBold
CopyButton.Text = "复制"
CopyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CopyButton.TextSize = 14.000
CopyButton.TextScaled = true
CopyButton.TextWrapped = true
 
CopyButtonUICorner.CornerRadius = UDim.new(0, 12)
CopyButtonUICorner.Parent = CopyButton
 
ClearButton.Name = "ClearButton"
ClearButton.Parent = ClearButtonBackground
ClearButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClearButton.Position = UDim2.new(0.013, 0, 0.05, 0)
ClearButton.Size = UDim2.new(0, 190, 0, 50)
ClearButton.AutoButtonColor = false
ClearButton.Font = Enum.Font.SourceSansBold
ClearButton.Text = "清除"
ClearButton.TextColor3 = Color3.fromRGB(255, 255, 255)
ClearButton.TextSize = 14.000
ClearButton.TextScaled = true
ClearButton.TextWrapped = true
 
ClearButtonUICorner.CornerRadius = UDim.new(0, 12)
ClearButtonUICorner.Parent = ClearButton

ClearButton_2Background.Name = "ClearButton_2Background"
ClearButton_2Background.Parent = BackgroundConsole
ClearButton_2Background.AnchorPoint = Vector2.new(0.5, 0.5)
ClearButton_2Background.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
ClearButton_2Background.Position = UDim2.new(-0.04, 0, 0.945, 0)
ClearButton_2Background.Size = UDim2.new(0, 46, 0, 46)
 
ClearButton_2BackgroundUICorner.CornerRadius = UDim.new(0, 15)
ClearButton_2BackgroundUICorner.Parent = ClearButton_2Background
 
ClearButton_2.Name = "ClearButton_2"
ClearButton_2.Parent = ClearButton_2Background
ClearButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
ClearButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ClearButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
ClearButton_2.Size = UDim2.new(0, 41, 0, 41)
ClearButton_2.Image = "rbxassetid://16477707611" --垃圾桶
ClearButton_2.AutoButtonColor = false
 
ClearButton_2UICorner.CornerRadius = UDim.new(0, 12)
ClearButton_2UICorner.Parent = ClearButton_2

SondFrameBackground.Name = "SondFrameBackground"
SondFrameBackground.Parent = UIGui
SondFrameBackground.AnchorPoint = Vector2.new(0.5, 0.5)
SondFrameBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SondFrameBackground.Position = UDim2.new(0.5, 0, -1, 0)
SondFrameBackground.Size = UDim2.new(0, 350, 0, 400)
 
SondFrameBackgroundUICorner.CornerRadius = UDim.new(0, 15)
SondFrameBackgroundUICorner.Parent = SondFrameBackground
 
SondFrame.Name = "SondFrame"
SondFrame.Parent = SondFrameBackground
SondFrame.AnchorPoint = Vector2.new(0.5, 0.5)
SondFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SondFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
SondFrame.Size = UDim2.new(0, 345, 0, 395)
SondFrame.Image = "rbxassetid://16139850662" --背景3
 
SondFrameUICorner.CornerRadius = UDim.new(0, 15)
SondFrameUICorner.Parent = SondFrame
 
MainSondFrame.Name = "MainSondFrame"
MainSondFrame.Parent = SondFrame
MainSondFrame.BackgroundTransparency = 0.4
MainSondFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainSondFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainSondFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainSondFrame.Size = UDim2.new(0, 345, 0, 395)
 
MainSondFrameUICorner.CornerRadius = UDim.new(0, 15)
MainSondFrameUICorner.Parent = MainSondFrame
 
SoundTextBox.Name = "SoundTextBox"
SoundTextBox.Parent = MainSondFrame
SoundTextBox.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SoundTextBox.BackgroundTransparency = 0.4
SoundTextBox.Position = UDim2.new(0.0055, 0, 0.01, 0)
SoundTextBox.Size = UDim2.new(0, 340, 0, 25)
SoundTextBox.ClearTextOnFocus = false
SoundTextBox.Font = Enum.Font.SourceSansBold
SoundTextBox.PlaceholderText = "声音ID在这里"
SoundTextBox.Text = ""
SoundTextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
SoundTextBox.TextTransparency = 0
SoundTextBox.TextScaled = true
SoundTextBox.TextSize = 14.000
SoundTextBox.TextWrapped = true
 
SoundTextBoxUICorner.CornerRadius = UDim.new(0, 15)
SoundTextBoxUICorner.Parent = SoundTextBox
 
Stop_PlayButtonBackground.Name = "Stop_PlayButtonBackground"
Stop_PlayButtonBackground.Parent = MainSondFrame
Stop_PlayButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
Stop_PlayButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
Stop_PlayButtonBackground.Position = UDim2.new(0.5, 0, 0.5, 0)
Stop_PlayButtonBackground.Size = UDim2.new(0, 105, 0, 105)
 
Stop_PlayButtonBackgroundUICorner.CornerRadius = UDim.new(1, 0)
Stop_PlayButtonBackgroundUICorner.Parent = Stop_PlayButtonBackground
 
Stop_PlayButtonBackground_2.Name = "Stop_PlayButtonBackground_2"
Stop_PlayButtonBackground_2.Parent = Stop_PlayButtonBackground
Stop_PlayButtonBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
Stop_PlayButtonBackground_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Stop_PlayButtonBackground_2.Position = UDim2.new(0.5, 0, 0.5, 0)
Stop_PlayButtonBackground_2.Size = UDim2.new(0, 100, 0, 100)
 
Stop_PlayButtonBackgroundUICorner_2.CornerRadius = UDim.new(1, 0)
Stop_PlayButtonBackgroundUICorner_2.Parent = Stop_PlayButtonBackground_2
 
Stop_PlayButton.Name = "Stop_PlayButton"
Stop_PlayButton.Parent = Stop_PlayButtonBackground_2
Stop_PlayButton.AnchorPoint = Vector2.new(0.5, 0.5)
Stop_PlayButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
Stop_PlayButton.Size = UDim2.new(0, 80, 0, 80)
Stop_PlayButton.BackgroundTransparency = 1
Stop_PlayButton.Image = "rbxassetid://16139639068" --暂停
 
AudioName.Name = "AudioName"
AudioName.Parent = MainSondFrame
AudioName.BackgroundTransparency = 1
AudioName.Position = UDim2.new(0.0055, 0, 0.1, 0)
AudioName.Size = UDim2.new(0, 340, 0, 25)
AudioName.Font = Enum.Font.SourceSansBold
AudioName.Text = ""
AudioName.TextColor3 = Color3.fromRGB(192, 192, 192)
AudioName.TextScaled = true
AudioName.TextSize = 14.000
AudioName.TextWrapped = true
AudioName.TextXAlignment = Enum.TextXAlignment.Left
 
SaveButtonBackground_2.Name = "SaveButtonBackground_2"
SaveButtonBackground_2.Parent = MainSondFrame
SaveButtonBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
SaveButtonBackground_2.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
SaveButtonBackground_2.Position = UDim2.new(0.2, 0, 0.5, 0)
SaveButtonBackground_2.Size = UDim2.new(0, 55, 0, 55)
 
SaveButtonBackgroundUICorner_2.CornerRadius = UDim.new(1, 0)
SaveButtonBackgroundUICorner_2.Parent = SaveButtonBackground_2
 
SaveButton_2.Name = "SaveButton_2"
SaveButton_2.Parent = SaveButtonBackground_2
SaveButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
SaveButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
SaveButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
SaveButton_2.Size = UDim2.new(0, 50, 0, 50)
SaveButton_2.Image = "rbxassetid://16139574980" --音乐部分的保存键
SaveButton_2.AutoButtonColor = false
 
SaveButtonUICorner_2.CornerRadius = UDim.new(1, 0)
SaveButtonUICorner_2.Parent = SaveButton_2
 
PlaylistButtonBackground.Name = "PlaylistButtonBackground"
PlaylistButtonBackground.Parent = MainSondFrame
PlaylistButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
PlaylistButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
PlaylistButtonBackground.Position = UDim2.new(0.8, 0, 0.5, 0)
PlaylistButtonBackground.Size = UDim2.new(0, 55, 0, 55)
 
PlaylistButtonBackgroundUICorner.CornerRadius = UDim.new(1, 0)
PlaylistButtonBackgroundUICorner.Parent = PlaylistButtonBackground
 
PlaylistButtonBackground_2.Name = "PlaylistButtonBackground_2"
PlaylistButtonBackground_2.Parent = PlaylistButtonBackground
PlaylistButtonBackground_2.AnchorPoint = Vector2.new(0.5, 0.5)
PlaylistButtonBackground_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlaylistButtonBackground_2.Position = UDim2.new(0.5, 0, 0.5, 0)
PlaylistButtonBackground_2.Size = UDim2.new(0, 50, 0, 50)
 
PlaylistButtonBackgroundUICorner_2.CornerRadius = UDim.new(1, 0)
PlaylistButtonBackgroundUICorner_2.Parent = PlaylistButtonBackground_2
 
PlaylistButton.Name = "PlaylistButton"
PlaylistButton.Parent = PlaylistButtonBackground_2
PlaylistButton.AnchorPoint = Vector2.new(0.5, 0.5)
PlaylistButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
PlaylistButton.Position = UDim2.new(0.55, 0, 0.55, 0)
PlaylistButton.Size = UDim2.new(0, 40, 0, 40)
PlaylistButton.Image = "rbxassetid://16139588106"
PlaylistButton.BackgroundTransparency = 1
 
VolumeDownButtonBackground.Name = "VolumeDownButtonBackground"
VolumeDownButtonBackground.Parent = MainSondFrame
VolumeDownButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeDownButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
VolumeDownButtonBackground.Position = UDim2.new(0.1, 0, 0.9, 0)
VolumeDownButtonBackground.Size = UDim2.new(0, 50, 0, 35)
 
VolumeDownButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
VolumeDownButtonBackgroundUICorner.Parent = VolumeDownButtonBackground
 
VolumeUpButtonBackground.Name = "VolumeUpButtonBackground"
VolumeUpButtonBackground.Parent = MainSondFrame
VolumeUpButtonBackground.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeUpButtonBackground.BackgroundColor3 = Color3.fromRGB(55, 55, 55)
VolumeUpButtonBackground.Position = UDim2.new(0.9, 0, 0.9, 0)
VolumeUpButtonBackground.Size = UDim2.new(0, 50, 0, 35)
 
VolumeUpButtonBackgroundUICorner.CornerRadius = UDim.new(0, 15)
VolumeUpButtonBackgroundUICorner.Parent = VolumeUpButtonBackground
 
VolumeUpButton.Name = "VolumeUpButton"
VolumeUpButton.Parent = VolumeUpButtonBackground
VolumeUpButton.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeUpButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeUpButton.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeUpButton.Size = UDim2.new(0, 46, 0, 32)
VolumeUpButton.Image = "rbxassetid://16164520143"
VolumeUpButton.AutoButtonColor = false
 
VolumeUpButtonUICorner.CornerRadius = UDim.new(0, 12)
VolumeUpButtonUICorner.Parent = VolumeUpButton
 
VolumeDownButton.Name = "VolumeDownButton"
VolumeDownButton.Parent = VolumeDownButtonBackground
VolumeDownButton.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeDownButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeDownButton.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeDownButton.Size = UDim2.new(0, 46, 0, 32)
VolumeDownButton.Image = "rbxassetid://16164522333"
VolumeDownButton.AutoButtonColor = false
 
VolumeDownButtonUICorner.CornerRadius = UDim.new(0, 12)
VolumeDownButtonUICorner.Parent = VolumeDownButton
 
VolumeDownButton_2.Name = "VolumeDownButton_2"
VolumeDownButton_2.Parent = VolumeDownButtonBackground
VolumeDownButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeDownButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeDownButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeDownButton_2.Size = UDim2.new(0, 46, 0, 32)
VolumeDownButton_2.Image = "rbxassetid://16164522333"
VolumeDownButton_2.AutoButtonColor = false
 
VolumeDownButtonUICorner_2.CornerRadius = UDim.new(0, 12)
VolumeDownButtonUICorner_2.Parent = VolumeDownButton_2
 
VolumeUpButton_2.Name = "VolumeUpButton_2"
VolumeUpButton_2.Parent = VolumeUpButtonBackground
VolumeUpButton_2.AnchorPoint = Vector2.new(0.5, 0.5)
VolumeUpButton_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
VolumeUpButton_2.Position = UDim2.new(0.5, 0, 0.5, 0)
VolumeUpButton_2.Size = UDim2.new(0, 46, 0, 32)
VolumeUpButton_2.Image = "rbxassetid://16164520143"
VolumeUpButton_2.AutoButtonColor = false
 
VolumeUpButtonUICorner_2.CornerRadius = UDim.new(0, 12)
VolumeUpButtonUICorner_2.Parent = VolumeUpButton_2
 
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
 
VolumeFrame.Name = "VolumeFrame"
VolumeFrame.Parent = MainSondFrame
VolumeFrame.Position = UDim2.new(0.2, 0, 0.895, 0)
VolumeFrame.Size = UDim2.new(0, 10, 0, 5)
VolumeFrame.BackgroundColor3 = Color3.new(255, 255, 255)
 
VolumeFrameUICorner.CornerRadius = UDim.new(1, 0)
VolumeFrameUICorner.Parent = VolumeFrame
 
 
function setHoverDef(from, to, obj)
    from = from or obj.Size
    
    obj.MouseEnter:Connect(function()
 
        TweenService:Create(obj, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = to
}):Play()
 
    end)
    
    obj.MouseLeave:Connect(function()
 
        TweenService:Create(obj, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = from
 }):Play()
 
    end)
end
 
setHoverDef(nil, UDim2.new(0, 40, 0, 40), HomeButton)
setHoverDef(nil, UDim2.new(0, 40, 0, 40), SearcherOpenUIButton)
setHoverDef(nil, UDim2.new(0, 40, 0, 40), ConsoleButton)
setHoverDef(nil, UDim2.new(0, 40, 0, 40), EditorButton)
setHoverDef(nil, UDim2.new(0, 36, 0, 36), MusicButton) 

function createfolders(path)
 local pathtbl = string.split(path, "/")
 for i, v in pairs(pathtbl) do
  if i == 1 then
   if not isfolder(v) then
    makefolder(v)
   end
  else
   local newpath = pathtbl[1]
   for i2=2, i-1 do
    newpath = newpath.. "/" ..pathtbl[i2]
   end
   newpath = newpath.. "/" ..v
   if not isfolder(newpath) then
    makefolder(newpath)
   end
  end
 end
end
 
if not isfolder("ECCS_V3") then
createfolders("ECCS_V3/CoreSystem/Files")
end
 
if not isfile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS", ""..EditorTextBox.Text)
end
 
if not isfile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS", " ")
end

if not isfile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS", " ")
end

if not isfile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS") then
writefile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS", "")
end

local ReadAE = readfile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS")
spawn(function()
loadstring(ReadAE)()
end)

local ReadECCSV3 = readfile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS")
EditorTextBox.Text = ""..ReadECCSV3

ExecuteButton_3.MouseButton1Click:Connect(function()
loadstring(EditorTextBox.Text)()
end)
 
CopyButton.MouseButton1Click:Connect(function()
setclipboard(EditorTextBox.Text)
end)
 
EditorTextBox.FocusLost:Connect(function(enterPressed)
if enterPressed then
HoverButtons:Play()
loadstring(EditorTextBox.Text)()
end
end)
 
SaveButton.MouseButton1Click:Connect(function()
writefile("ECCS_V3/CoreSystem/Files/ECCSV3EDITOR.ECCS", ""..EditorTextBox.Text)
end)
 
ClearButton.MouseButton1Click:Connect(function()
EditorTextBox.Text = ""
end)
 
function setHoverColor(Out, to2, obj2)
    Out = Out or obj2.BackgroundColor3
    
    obj2.MouseEnter:Connect(function()
 
        TweenService:Create(obj2, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = to2
}):Play()
 end)
    
    obj2.MouseLeave:Connect(function()
 
        TweenService:Create(obj2, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = Out
 }):Play()
 end)
end
 
function setHoverColor_2(Out2, to3, obj3)
    Out2 = Out2 or obj3.BackgroundColor3
    
    obj3.MouseEnter:Connect(function()
 
        TweenService:Create(obj3, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = to3
}):Play()
 
    end)
    
    obj3.MouseLeave:Connect(function()
 
        TweenService:Create(obj3, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            BackgroundColor3 = Out2
 }):Play()
 
    end)
end

setHoverColor(nil, Color3.fromRGB(200, 200, 200), CoreSystemFrameBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), MessageBackgroundFrame)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), GameFrameBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), PlayerIconBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), BackgroundConsole)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), ExecuteButtonBackground_3)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), ClearButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), SaveButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), CopyButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), EditorBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), SondFrameBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), Stop_PlayButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), SaveButtonBackground_2)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), PlaylistButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), VolumeDownButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), VolumeUpButtonBackground)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), ReloadBackgroundButton)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), HistoryBackgroundButton)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), ClearAndSearchBackground)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), ClearButton_2Background)
setHoverColor_2(nil, Color3.fromRGB(200, 200, 200), CloseCommentsButtonBackground)

Stop_PlayButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)

ClearAndSearchBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
SaveButtonBackground_2.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
PlaylistButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
VolumeDownButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
VolumeUpButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
GameFrameBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
PlayerIconBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
game:GetService("LogService").MessageOut:Connect(
function(Message)
    repeat
        wait()
    until Message
    logTable[#logTable + 1] = Message
    ConsoleOutput.Text = (table.concat(logTable, "\n"))
    for i, v in pairs(logTable) do
        if i == 30 then
            table.remove(logTable, 1)
        end
    end
end
)

function setHoverSysSize(Out2, to23, obj23)
    Out2 = Out2 or obj23.Size
    
    obj23.MouseEnter:Connect(function()
 
        TweenService:Create(obj23, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = to23
}):Play()
 
    end)
    
    obj23.MouseLeave:Connect(function()
 
        TweenService:Create(obj23, TweenInfo.new(0.2, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {
            Size = Out2
 }):Play()
 
    end)
end
 
setHoverSysSize(nil, UDim2.new(0, 303, 0, 63), MessageBackgroundFrame)
setHoverSysSize(nil, UDim2.new(0, 55.7, 0, 225), CoreSystemFrameBackground)
 
 
 
local getfakeasset = getcustomasset or getsynasset
 
HttpService = game:GetService("HttpService")
TweenService = game:GetService("TweenService")
 
 
 
local page = 1
local gquery = ""
 
function tableConcat(t1,t2)
    for i, v in pairs(t2) do
        table.insert(t1, v)
    end
    return t1
end
 
 
ScriptListFrame.AutomaticCanvasSize = Enum.AutomaticSize.Y
ScriptListFrame.ScrollBarImageColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.InfoBox.Comments.Inner.Comments.AutomaticCanvasSize = Enum.AutomaticSize.Y
MainFrame.InfoBox.Comments.Inner.Comments.ScrollBarImageColor3 = Color3.new(0, 0, 0)
MainFrame.InfoBox.Comments.Inner.Comments.ScrollBarImageTransparency = 1
 
VerifiedScript = VerifiedScriptFrame:Clone()
Script = ScriptFrame:Clone()
ScriptFrame:Destroy()
VerifiedScriptFrame:Destroy()
Comment = MainFrame.InfoBox.Comments.Inner.Comments.Comment:Clone()
MainFrame.InfoBox.Comments.Inner.Comments.Comment:Destroy()
 
 
function _if(a, b, c)
    if a then return b else return c end
end
 
function fastmodeExec(func)
    if getgenv().fastmode == true then
        task.spawn(func)
    else
        func()
    end
end
 
function fetchScripts(query, page)
    page = page or 1
    query = HttpService:UrlEncode(query)
    
    local url = _if(query == "", "https://www.scriptblox.com/api/script/fetch?page="..tostring(page), "https://scriptblox.com/api/script/search?q="..query.."&max=100&mode=free&page=".. tostring(page))
    local req = HttpService:JSONDecode(game:HttpGetAsync(url)).result
    
    return req.scripts
end
 
function fetchComments(scriptId, page)
 page = page or 1 
 
 url = "https://scriptblox.com/api/comment/" ..scriptId.. "?page=" ..tostring(page).. "&max=100"
 req = HttpService:JSONDecode(game:HttpGetAsync(url)).result
 
 return req.comments
end

function fixScript(scriptObj)
 
            local req = HttpService:JSONDecode(game:HttpGetAsync("https://www.scriptblox.com/api/script/".. scriptObj.slug)).script
            scriptObj["script"] = _if(scriptObj["script"], scriptObj["script"], req.script)
            scriptObj["features"] = _if(scriptObj["features"], scriptObj["features"], req.features)
            scriptObj["owner"] = _if(scriptObj["owner"], scriptObj["owner"], req.owner)
            
  
    return scriptObj
end
 
 function updateInfoBox(scriptObj)
 scriptObj = fixScript(scriptObj)
 
 
 commentsUIListLayout = MainFrame.InfoBox.Comments.Inner.Comments.UIListLayout:Clone()
 MainFrame.InfoBox.Comments.Inner.Comments:ClearAllChildren()
 commentsUIListLayout.Parent = MainFrame.InfoBox.Comments.Inner.Comments
 
 task.spawn(function()
  for _, v in pairs(fetchComments(scriptObj["_id"])) do
 
   newComment = Comment:Clone()
   newComment.Parent = MainFrame.InfoBox.Comments.Inner.Comments
   newComment.Content.Text = v.text
   newComment.Author.Text = v.commentBy.username
   newComment.LikeCount.Text = v.likeCount
   newComment.DislikeCount.Text = v.dislikeCount
if Content.Visible == true then
NoComments.Visible = false
end
  end
 end)
end
 
function refreshScripts(scriptTbl)
    if #scriptTbl <= 0 then
        SearchBox.Text = ""
        SearchBox.PlaceholderText = "没有找到脚本"
        wait(1)
        SearchBox.PlaceholderText = "点击搜索"
        return
    else
        SearchBox.PlaceholderText = "点击搜索"
    end
    
    local UIGridLayoutCopy = UIGridLayout:Clone()
    Scripts:ClearAllChildren()
    UIGridLayoutCopy.Parent = Scripts
    
    addScripts(scriptTbl)
end
 
function addScripts(scriptTbl)
    for i, v in pairs(scriptTbl) do
        fastmodeExec(function()
            local newScript
 
            v = fixScript(v)
 
            if v.verified == true then
                newScript = VerifiedScript:Clone()
                newScript.ScriptTitle.Text = v.title
                newScript.ScriptAuthor.Text = "by ".. v.owner.username
                newScript.ScriptGame.Text = v.game.name
                newScript.Parent = Scripts
            else
                newScript = Script:Clone()
                newScript.ScriptTitle.Text = v.title
                newScript.ScriptAuthor.Text = "by ".. v.owner.username
                newScript.ScriptGame.Text = v.game.name
                newScript.Parent = Scripts
            end
 
            newScript.ExecuteButton.MouseButton1Click:Connect(function()
 
                loadstring(v.script)()
            end)
 
            newScript.CopyLinkButton.MouseButton1Click:Connect(function()
            setclipboard("https://scriptblox.com/script/".. v.slug)
end)
 
newScript.AutoExecute.MouseButton1Click:Connect(function()
    local ReadAE = readfile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS")
    if ReadAE ~= v.script then
        writefile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS", v.script)
        MessageFrame.Text = "脚本已保存"
        TextLabel1.Text = "脚本已添加到自动执行"
        MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0),"InOut","Sine",0.8)
    else
        if ReadAE == v.script then
            writefile("ECCS_V3/CoreSystem/Files/AUTOEXECUTE.ECCS", " ")
            MessageFrame.Text = "脚本已删除"
            TextLabel1.Text = "脚本已从自动执行中删除"
            MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0),"InOut","Sine",0.8)
        end
    end
end)


setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.ExecuteButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.CopyLinkButtonBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.CopyScriptBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.OpenDescriptionBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.AutoExecuteBackground)
setHoverColor(nil, Color3.fromRGB(200, 200, 200), newScript.CommentsBackground)

newScript.AutoExecuteBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)

newScript.CommentsBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)

newScript.ExecuteButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.CopyLinkButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.CopyScriptBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.OpenDescriptionBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
newScript.CopyScriptButton.MouseButton1Click:Connect(function()
setclipboard(v.script)
end)
 
newScript.OpenDescriptionButton.MouseButton1Click:Connect(function()
DescriptionScript.Visible = true
DescriptionScript.Text = v.features
ScriptListFrame.Visible = false
end)

newScript.CommentsButton.MouseButton1Click:Connect(function()
updateInfoBox(v)
ScriptListFrame.Visible = false
InfoBox.Visible = true
NoComments.Visible = true
end)
 
end)
end
 
    
    pagefetchrunning = false
end
CloseCommentsButton.MouseButton1Click:Connect(function()
InfoBox.Visible = false
ScriptListFrame.Visible = true
CloseDescriptionSound:Play()
end)
DescriptionScript.MouseButton1Click:Connect(function()
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
CloseDescriptionSound:Play()
end)
 
BackgroundConsole.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
 
ExecuteButtonBackground_3.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
ExecuteButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
ClearButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
SaveButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
 
CopyButtonBackground.MouseEnter:Connect(function()
HoverButtons:Play()
end)
 
 
SearchBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
InfoBox.Visible = false
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
        gquery = SearchBox.Text
        page = 1
        local scriptsTbl = fetchScripts(SearchBox.Text, 1)
        refreshScripts(scriptsTbl)
   writefile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS", ""..SearchBox.Text)
    end
end)

ReloadButton.MouseButton1Click:Connect(function()
InfoBox.Visible = false
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
        gquery = SearchBox.Text
        page = 1
        local scriptsTbl = fetchScripts(SearchBox.Text, 1)
        refreshScripts(scriptsTbl)
end)

ReloadButton.MouseEnter:Connect(function()
  HoverButtons:Play()
 end)
HistoryButton.MouseEnter:Connect(function()
  HoverButtons:Play()
 end)

ClearButton_2.MouseButton1Click:Connect(function()
    ConsoleOutput.Text = "通知、警告和脚本错误将显示在这里，以简化处理。"
end)

ClearButton_2.MouseEnter:Connect(function()
  HoverButtons:Play()
 end)

HistoryButton.MouseButton1Click:Connect(function()
InfoBox.Visible = false
local ReadECCSV3History = readfile("ECCS_V3/CoreSystem/Files/ECCSV3SearchHistory.ECCS")
SearchBox.Text = ""..ReadECCSV3History
DescriptionScript.Visible = false
ScriptListFrame.Visible = true
        gquery = SearchBox.Text
        page = 1
        local scriptsTbl = fetchScripts(SearchBox.Text, 1)
        refreshScripts(scriptsTbl)
end)

SearchBox.FocusLost:Connect(function(enterPressed)
if enterPressed then
HoverButtons:Play()
end
end)
 
 
VolumeUpButton.MouseButton1Click:Connect(function()
Volume = Volume + 0.5
end)
 
VolumeDownButton.MouseButton1Click:Connect(function()
Volume = Volume - 0.5
end)
 
SaveButton_2.MouseButton1Click:Connect(function()
    if Stop_PlayButton.Image == "rbxassetid://16139639068" and SoundTextBox.Text == "" then
        SoundTextBox.PlaceholderText = "请输入Id"
        wait(1)
        SoundTextBox.PlaceholderText = "声音Id在这里"
    else
        SoundTextBox.PlaceholderText = "声音Id在这里"
        if SaveButton_2.Image == "rbxassetid://16139574980" then
            SaveButton_2.Image = "rbxassetid://16139703752"
            writefile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS", ""..SoundTextBox.Text)
        else
            if SaveButton_2.Image == "rbxassetid://16139703752" then
                SaveButton_2.Image = "rbxassetid://16139574980"
                writefile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS", " ")
            end
        end
    end
end)
 
PlaylistButton.MouseButton1Click:Connect(function()
local ReadECCSV3_2 = readfile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS")
SoundTextBox.Text = ReadECCSV3_2
if SoundTextBox.Text == " " then
SoundTextBox.Text = ""
end
end)
 
ClearAndSearch.MouseButton1Click:Connect(function()
SearchBox.Text = ""
SearchBox:CaptureFocus()
end)

Stop_PlayButton.MouseButton1Click:Connect(function()
    if Stop_PlayButton.Image == "rbxassetid://16139639068" and SoundTextBox.Text == "" then
        SoundTextBox.PlaceholderText = "请输入Id"
        wait(1)
        SoundTextBox.PlaceholderText = "请输入声音Id"
    else
        SoundTextBox.PlaceholderText = "请输入声音Id"
        if Stop_PlayButton.Image == "rbxassetid://16139639068" then
            Stop_PlayButton.Image = "rbxassetid://16139637058"
            Stop_PlayButton.Position = UDim2.new(0.5, 0, 0.5, 0)
            Audio = game:GetService("MarketplaceService"):GetProductInfo(SoundTextBox.Text)
            AudioName.Text = Audio.Name
            CoreSound.SoundId = "rbxassetid://"..SoundTextBox.Text
            CoreSound:Play()
        else
            if Stop_PlayButton.Image == "rbxassetid://16139637058" then
                Stop_PlayButton.Image = "rbxassetid://16139639068"
                Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
                CoreSound:Stop()
            end
        end
    end
end)
 
SoundTextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        if Stop_PlayButton.Image == "rbxassetid://16139639068" and SoundTextBox.Text == "" then
            SoundTextBox.PlaceholderText = "在这里输入Id"
            wait(1)
            SoundTextBox.PlaceholderText = "在这里输入声音Id"
        else
            SoundTextBox.PlaceholderText = "在这里输入声音Id"
            if Stop_PlayButton.Image == "rbxassetid://16139637058" then
                Stop_PlayButton.Image = "rbxassetid://16139639068"
                Stop_PlayButton.Position = UDim2.new(0.5, 0, 0.5, 0)
                Audio = game:GetService("MarketplaceService"):GetProductInfo(SoundTextBox.Text)
                AudioName.Text = Audio.Name
                CoreSound.SoundId = "rbxassetid://"..SoundTextBox.Text
                CoreSound:Play()
            else
                if Stop_PlayButton.Image == "rbxassetid://16139637058" then
                    Stop_PlayButton.Image = "rbxassetid://16139639068"
                    Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
                    CoreSound:Stop()
                end
            end
        end
    end
end)
 
spawn(function()
repeat
wait()
local ReadECCSV3_2 = readfile("ECCS_V3/CoreSystem/Files/ECCSV3Player.ECCS")
if SoundTextBox.Text == ReadECCSV3_2 then
SaveButton_2.Image = "rbxassetid://16139703752"
else
if SoundTextBox.Text ~= ReadECCSV3_2 then
SaveButton_2.Image = "rbxassetid://16139574980"
end
if SoundTextBox.Text == "" then
SaveButton_2.Image = "rbxassetid://16139574980"
Stop_PlayButton.Image = "rbxassetid://16139639068"
Stop_PlayButton.Position = UDim2.new(0.6, 0, 0.5, 0)
CoreSound:Stop()
AudioName.Text = ""
end
end
until 
SaveButton_2 == nil
end)
 
spawn(function()
repeat
wait()
CoreSound.Volume = Volume
if Volume == 0 then
VolumeFrame:TweenSize(UDim2.new(0, 0, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = false
VolumeDownButton_2.Visible = true
VolumeUpButton_2.Visible = false
else
if Volume == 0.5 then
VolumeFrame:TweenSize(UDim2.new(0, 55, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = true
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
else
if Volume == 1 then
VolumeFrame:TweenSize(UDim2.new(0, 105, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = true
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
else
if Volume == 1.5 then
VolumeFrame:TweenSize(UDim2.new(0, 155, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = true
VolumeDownButton.Visible = true
VolumeDownButton_2.Visible = false
VolumeUpButton_2.Visible = false
else
if Volume == 2 then
VolumeFrame:TweenSize(UDim2.new(0, 205, 0, 5), "Out", "Linear", 0.5)
VolumeUpButton.Visible = false
VolumeDownButton.Visible = true
VolumeUpButton_2.Visible = true
VolumeDownButton_2.Visible = false
end
end
end
end
end
until 
SaveButton_2 == nil
end)
 
refreshScripts(fetchScripts(gquery, 1))
 
ScriptListFrame:GetPropertyChangedSignal("CanvasPosition"):Connect(function()
    if (ScriptListFrame.CanvasPosition.Y + ScriptListFrame.AbsoluteSize.Y) >= ScriptListFrame.AbsoluteCanvasSize.Y -200 and not pagefetchrunning then
        page = page + 1
        pagefetchrunning = true
        addScripts(fetchScripts(gquery, page))
    end
end)
PlayerIcon.Image = "https://www.roblox.com/headshot-thumbnail/image?userId=".. game.Players.LocalPlayer.UserId .."&width=999&height=999&format=png"
WelcomeLabel.Text = "欢迎回家，"..game.Players.LocalPlayer.DisplayName
MessageFrame.Text = "已成功加载"
TextLabel1.Text = "欢迎来到ECCS V3，"..game.Players.LocalPlayer.DisplayName
MessageBackgroundFrame:TweenPosition(UDim2.new(0.5, 0, 0.9, 0),"InOut","Sine",0.8)
StartUpSound:Play()
