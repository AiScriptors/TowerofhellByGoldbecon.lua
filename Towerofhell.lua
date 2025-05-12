local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local Player = Players.LocalPlayer

-- ScreenGui
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = Player.PlayerGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

-- Звуки
local WaterSound = Instance.new("Sound", ScreenGui)
WaterSound.SoundId = "rbxassetid://9118823266" -- Звук воды
WaterSound.Volume = 0.5
local ClickSound = Instance.new("Sound", ScreenGui)
ClickSound.SoundId = "rbxassetid://9112826957" -- Звук клика
ClickSound.Volume = 0.3
local SwooshSound = Instance.new("Sound", ScreenGui)
SwooshSound.SoundId = "rbxassetid://9118823475" -- Звук сворачивания
SwooshSound.Volume = 0.4

-- Вступление "By Ismail"
local IntroFrame = Instance.new("Frame", ScreenGui)
IntroFrame.Size = UDim2.new(0, 140, 0, 50)
IntroFrame.Position = UDim2.new(0.5, -70, -0.2, 0)
IntroFrame.BackgroundTransparency = 1
local IntroLabel = Instance.new("TextLabel", IntroFrame)
IntroLabel.Size = UDim2.new(1, 0, 1, 0)
IntroLabel.BackgroundTransparency = 1
IntroLabel.Text = "<font color=\"rgb(0,255,255)\">B</font><font color=\"rgb(50,200,255)\">y</font> <font color=\"rgb(100,150,255)\">I</font><font color=\"rgb(150,100,255)\">s</font><font color=\"rgb(200,50,255)\">m</font><font color=\"rgb(255,0,255)\">a</font><font color=\"rgb(255,50,200)\">i</font><font color=\"rgb(255,100,150)\">l</font>"
IntroLabel.Font = Enum.Font.GothamBlack
IntroLabel.TextScaled = true
IntroLabel.RichText = true

-- Меню ключа
local KeyFrame = Instance.new("Frame", ScreenGui)
KeyFrame.Size = UDim2.new(0, 230, 0, 170)
KeyFrame.Position = UDim2.new(0.5, -115, 0.5, -85)
KeyFrame.BackgroundTransparency = 0.5
KeyFrame.BackgroundColor3 = Color3.fromRGB(5, 40, 70)
KeyFrame.Visible = false
KeyFrame.ZIndex = 10
local KeyCorner = Instance.new("UICorner", KeyFrame)
KeyCorner.CornerRadius = UDim.new(0, 15)
local KeyGradient = Instance.new("UIGradient", KeyFrame)
KeyGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(5, 40, 70)), ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 90, 150))}
local KeyStroke = Instance.new("UIStroke", KeyFrame)
KeyStroke.Thickness = 2
KeyStroke.Color = Color3.fromRGB(100, 200, 255)
KeyStroke.Transparency = 0.4
local KeyTitle = Instance.new("TextLabel", KeyFrame)
KeyTitle.Size = UDim2.new(1, 0, 0, 35)
KeyTitle.Text = "Key BABFT"
KeyTitle.TextColor3 = Color3.fromRGB(180, 255, 255)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextScaled = true
local KeyInput = Instance.new("TextBox", KeyFrame)
KeyInput.Size = UDim2.new(0.85, 0, 0, 35)
KeyInput.Position = UDim2.new(0.075, 0, 0.3, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.BackgroundTransparency = 0.3
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter Key"
KeyInput.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyInput.Font = Enum.Font.Gotham
local SubmitButton = Instance.new("TextButton", KeyFrame)
SubmitButton.Size = UDim2.new(0.85, 0, 0, 35)
SubmitButton.Position = UDim2.new(0.075, 0, 0.55, 0)
SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 180, 255)
SubmitButton.Text = "Submit"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.Font = Enum.Font.GothamBold
local StatusLabel = Instance.new("TextLabel", KeyFrame)
StatusLabel.Size = UDim2.new(0.85, 0, 0, 25)
StatusLabel.Position = UDim2.new(0.075, 0, 0.75, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 180, 180)
StatusLabel.TextScaled = true
StatusLabel.Font = Enum.Font.Gotham

-- Основное меню
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 270, 0, 330)
MainFrame.Position = UDim2.new(0.5, -135, 0.5, -165)
MainFrame.BackgroundTransparency = 0.5
MainFrame.BackgroundColor3 = Color3.fromRGB(5, 40, 70)
MainFrame.Visible = false
local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 15)
local MainGradient = Instance.new("UIGradient", MainFrame)
MainGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(5, 40, 70)), ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 90, 150))}
local MainStroke = Instance.new("UIStroke", MainFrame)
MainStroke.Thickness = 2
MainStroke.Color = Color3.fromRGB(100, 200, 255)
MainStroke.Transparency = 0.4
local Scroll = Instance.new("ScrollingFrame", MainFrame)
Scroll.Size = UDim2.new(1, -10, 1, -50)
Scroll.Position = UDim2.new(0, 5, 0, 45)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 4
Scroll.CanvasSize = UDim2.new(0, 0, 0, 400)
local Avatar = Instance.new("ImageLabel", MainFrame)
Avatar.Size = UDim2.new(0, 40, 0, 40)
Avatar.Position = UDim2.new(0, 5, 0, 5)
Avatar.BackgroundTransparency = 1
Avatar.Image = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size48x48)
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(0, 100, 0, 20)
Title.Position = UDim2.new(0.5, -50, 0, 15)
Title.BackgroundTransparency = 1
Title.Text = "BABFT Menu"
Title.TextColor3 = Color3.fromRGB(180, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
local Close = Instance.new("TextButton", MainFrame)
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Position = UDim2.new(1, -30, 0, 5)
Close.BackgroundColor3 = Color3.fromRGB(255, 80, 80)
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.Font = Enum.Font.Gotham

-- Круг
local Circle = Instance.new("TextButton", ScreenGui)
Circle.Size = UDim2.new(0, 80, 0, 80)
Circle.Position = MainFrame.Position
Circle.BackgroundColor3 = Color3.fromRGB(5, 40, 70)
Circle.BackgroundTransparency = 0.5
Circle.Visible = false
local CircleCorner = Instance.new("UICorner", Circle)
CircleCorner.CornerRadius = UDim.new(1, 0)
local CircleGradient = Instance.new("UIGradient", Circle)
CircleGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0, Color3.fromRGB(5, 40, 70)), ColorSequenceKeypoint.new(1, Color3.fromRGB(15, 90, 150))}
local CircleStroke = Instance.new("UIStroke", Circle)
CircleStroke.Thickness = 3
CircleStroke.Color = Color3.fromRGB(100, 200, 255)
CircleStroke.Transparency = 0.3
local CircleAvatar = Instance.new("ImageLabel", Circle)
CircleAvatar.Size = UDim2.new(0.6, 0, 0.6, 0)
CircleAvatar.Position = UDim2.new(0.2, 0, 0.2, 0)
CircleAvatar.BackgroundTransparency = 1
CircleAvatar.Image = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size48x48)
local CirclePulse = Instance.new("UIStroke", Circle)
CirclePulse.Thickness = 2
CirclePulse.Color = Color3.fromRGB(150, 255, 255)
CirclePulse.Transparency = 0.5
-- Пульсация круга
spawn(function()
    while true do
        TweenService:Create(CirclePulse, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 4, Transparency = 0.2}):Play()
        wait(1)
        TweenService:Create(CirclePulse, TweenInfo.new(1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Thickness = 2, Transparency = 0.5}):Play()
        wait(1)
    end
end)

-- Анимация "By Ismail"
print("Showing By Ismail")
WaterSound:Play()
TweenService:Create(IntroFrame, TweenInfo.new(0.7, Enum.EasingStyle.Bounce), {Position = UDim2.new(0.5, -70, 0.5, -25)}):Play()
wait(1.5)
TweenService:Create(IntroLabel, TweenInfo.new(0.5), {TextTransparency = 1}):Play()
wait(0.5)
IntroFrame.Visible = false
KeyFrame.Visible = true
print("KeyFrame visible")

-- Проверка ключа
SubmitButton.MouseButton1Click:Connect(function()
    ClickSound:Play()
    print("Key: " .. KeyInput.Text)
    if KeyInput.Text == "123" then
        StatusLabel.Text = "Successful login"
        print("Key correct")
        wait(0.5)
        KeyFrame.Visible = false
        MainFrame.Visible = true
    else
        StatusLabel.Text = "Invalid Key"
        print("Invalid key, kicking")
        local shake = TweenService:Create(KeyFrame, TweenInfo.new(0.1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 2, true), {Position = UDim2.new(0.5, -95, 0.5, -85)})
        shake:Play()
        wait(0.5)
        Player:Kick("Invalid Key")
    end
end)
KeyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        ClickSound:Play()
        SubmitButton:Activate()
    end
end)

-- Сворачивание
local function toggle()
    if MainFrame.Visible then
        SwooshSound:Play()
        TweenService:Create(MainFrame, TweenInfo.new(0.2), {Size = UDim2.new(0, 80, 0, 80), Position = Circle.Position}):Play()
        wait(0.2)
        MainFrame.Visible = false
        Circle.Visible = true
        print("Menu minimized")
    else
        ClickSound:Play()
        Circle.Visible = false
        MainFrame.Visible = true
        TweenService:Create(MainFrame, TweenInfo.new(0.2), {Size = UDim2.new(0, 270, 0, 330), Position = UDim2.new(0.5, -135, 0.5, -165)}):Play()
        print("Menu restored")
    end
end
Close.MouseButton1Click:Connect(toggle)
Circle.MouseButton1Click:Connect(toggle)

-- Перетаскивание (MainFrame)
local dragging, dragStart, startPos
MainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = true
        dragStart = input.Position
        startPos = MainFrame.Position
    end
end)
MainFrame.InputChanged:Connect(function(input)
    if dragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - dragStart
        MainFrame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
        Circle.Position = MainFrame.Position
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        dragging = false
    end
end)

-- Перетаскивание (KeyFrame)
local keyDragging, keyDragStart, keyStartPos
KeyFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        keyDragging = true
        keyDragStart = input.Position
        keyStartPos = KeyFrame.Position
    end
end)
KeyFrame.InputChanged:Connect(function(input)
    if keyDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - keyDragStart
        KeyFrame.Position = UDim2.new(keyStartPos.X.Scale, keyStartPos.X.Offset + delta.X, keyStartPos.Y.Scale, keyStartPos.Y.Offset + delta.Y)
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        keyDragging = false
    end
end)

-- Перетаскивание (Circle)
local circleDragging, circleDragStart, circleStartPos
Circle.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        circleDragging = true
        circleDragStart = input.Position
        circleStartPos = Circle.Position
    end
end)
Circle.InputChanged:Connect(function(input)
    if circleDragging and input.UserInputType == Enum.UserInputType.MouseMovement then
        local delta = input.Position - circleDragStart
        Circle.Position = UDim2.new(circleStartPos.X.Scale, circleStartPos.X.Offset + delta.X, circleStartPos.Y.Scale, circleStartPos.Y.Offset + delta.Y)
        MainFrame.Position = Circle.Position
    end
end)
UserInputService.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 then
        circleDragging = false
    end
end)
