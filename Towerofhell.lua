local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")
local Player = Players.LocalPlayer

-- Отладка
print("Script starting")

-- ScreenGui
local success, err = pcall(function()
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = Player.PlayerGui
    ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    ScreenGui.ResetOnSpawn = false
    ScreenGui.ZIndex = 10000
    ScreenGui.Name = "BABFTGui"
    print("ScreenGui created")
    return ScreenGui
end)
if not success then
    print("Error creating ScreenGui: " .. tostring(err))
    return
end
local ScreenGui = success

-- By Ismail
local IntroFrame = Instance.new("Frame", ScreenGui)
IntroFrame.Name = "IntroFrame"
IntroFrame.Size = UDim2.new(0, 140, 0, 50)
IntroFrame.Position = UDim2.new(0.5, -70, 0.5, -25)
IntroFrame.BackgroundTransparency = 1
local IntroLabel = Instance.new("TextLabel", IntroFrame)
IntroLabel.Size = UDim2.new(1, 0, 1, 0)
IntroLabel.BackgroundTransparency = 1
IntroLabel.Text = "<font color=\"rgb(0,255,255)\">B</font><font color=\"rgb(50,200,255)\">y</font> <font color=\"rgb(100,150,255)\">I</font><font color=\"rgb(150,100,255)\">s</font><font color=\"rgb(200,50,255)\">m</font><font color=\"rgb(255,0,255)\">a</font><font color=\"rgb(255,50,200)\">i</font><font color=\"rgb(255,100,150)\">l</font>"
IntroLabel.Font = Enum.Font.GothamBlack
IntroLabel.TextScaled = true
IntroLabel.RichText = true
print("IntroFrame created")

-- Меню ключа
local KeyFrame = Instance.new("Frame", ScreenGui)
KeyFrame.Name = "KeyFrame"
KeyFrame.Size = UDim2.new(0, 240, 0, 180)
KeyFrame.Position = UDim2.new(0.5, -120, 0.5, -90)
KeyFrame.BackgroundTransparency = 0.3
KeyFrame.BackgroundColor3 = Color3.fromRGB(0, 80, 160)
KeyFrame.Visible = false
KeyFrame.ZIndex = 20
local KeyCorner = Instance.new("UICorner", KeyFrame)
KeyCorner.CornerRadius = UDim.new(0, 15)
local KeyTitle = Instance.new("TextLabel", KeyFrame)
KeyTitle.Size = UDim2.new(1, 0, 0, 40)
KeyTitle.Text = "Key BABFT"
KeyTitle.TextColor3 = Color3.fromRGB(100, 255, 255)
KeyTitle.Font = Enum.Font.GothamBold
KeyTitle.TextScaled = true
local KeyInput = Instance.new("TextBox", KeyFrame)
KeyInput.Size = UDim2.new(0.9, 0, 0, 40)
KeyInput.Position = UDim2.new(0.05, 0, 0.3, 0)
KeyInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
KeyInput.BackgroundTransparency = 0.2
KeyInput.Text = ""
KeyInput.PlaceholderText = "Enter Key"
KeyInput.TextColor3 = Color3.fromRGB(0, 0, 0)
KeyInput.Font = Enum.Font.Gotham
local SubmitButton = Instance.new("TextButton", KeyFrame)
SubmitButton.Size = UDim2.new(0.9, 0, 0, 40)
SubmitButton.Position = UDim2.new(0.05, 0, 0.55, 0)
SubmitButton.BackgroundColor3 = Color3.fromRGB(0, 200, 255)
SubmitButton.Text = "Submit"
SubmitButton.TextColor3 = Color3.fromRGB(255, 255, 255)
SubmitButton.Font = Enum.Font.GothamBold
local StatusLabel = Instance.new("TextLabel", KeyFrame)
StatusLabel.Size = UDim2.new(0.9, 0, 0, 30)
StatusLabel.Position = UDim2.new(0.05, 0, 0.75, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Text = ""
StatusLabel.TextColor3 = Color3.fromRGB(255, 150, 150)
StatusLabel.TextScaled = true
StatusLabel.Font = Enum.Font.Gotham
print("KeyFrame created")

-- Основное меню
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Name = "MainFrame"
MainFrame.Size = UDim2.new(0, 280, 0, 340)
MainFrame.Position = UDim2.new(0.5, -140, 0.5, -170)
MainFrame.BackgroundTransparency = 0.3
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 80, 160)
MainFrame.Visible = false
local MainCorner = Instance.new("UICorner", MainFrame)
MainCorner.CornerRadius = UDim.new(0, 15)
local Scroll = Instance.new("ScrollingFrame", MainFrame)
Scroll.Size = UDim2.new(1, -10, 1, -60)
Scroll.Position = UDim2.new(0, 5, 0, 55)
Scroll.BackgroundTransparency = 1
Scroll.ScrollBarThickness = 4
Scroll.CanvasSize = UDim2.new(0, 0, 0, 400)
local Avatar = Instance.new("ImageLabel", MainFrame)
Avatar.Size = UDim2.new(0, 45, 0, 45)
Avatar.Position = UDim2.new(0, 5, 0, 5)
Avatar.BackgroundTransparency = 1
Avatar.Image = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size48x48)
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(0, 120, 0, 25)
Title.Position = UDim2.new(0.5, -60, 0, 15)
Title.BackgroundTransparency = 1
Title.Text = "BABFT Menu"
Title.TextColor3 = Color3.fromRGB(100, 255, 255)
Title.TextScaled = true
Title.Font = Enum.Font.GothamBold
local Close = Instance.new("TextButton", MainFrame)
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Position = UDim2.new(1, -35, 0, 5)
Close.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
Close.Text = "X"
Close.TextColor3 = Color3.fromRGB(255, 255, 255)
Close.Font = Enum.Font.Gotham
print("MainFrame created")

-- Круг
local Circle = Instance.new("TextButton", ScreenGui)
Circle.Name = "Circle"
Circle.Size = UDim2.new(0, 80, 0, 80)
Circle.Position = MainFrame.Position
Circle.BackgroundColor3 = Color3.fromRGB(0, 80, 160)
Circle.BackgroundTransparency = 0.3
Circle.Visible = false
local CircleCorner = Instance.new("UICorner", Circle)
CircleCorner.CornerRadius = UDim.new(1, 0)
local CircleAvatar = Instance.new("ImageLabel", Circle)
CircleAvatar.Size = UDim2.new(0.7, 0, 0.7, 0)
CircleAvatar.Position = UDim2.new(0.15, 0, 0.15, 0)
CircleAvatar.BackgroundTransparency = 1
CircleAvatar.Image = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.AvatarBust, Enum.ThumbnailSize.Size48x48)
print("Circle created")

-- Переход от By Ismail к KeyFrame
print("Showing By Ismail")
wait(1.5)
IntroFrame.Visible = false
KeyFrame.Visible = true
print("KeyFrame visible")

-- Проверка ключа
SubmitButton.MouseButton1Click:Connect(function()
    print("Key submitted: " .. KeyInput.Text)
    if KeyInput.Text == "123" then
        StatusLabel.Text = "Successful login"
        print("Key correct")
        wait(0.5)
        KeyFrame.Visible = false
        MainFrame.Visible = true
    else
        StatusLabel.Text = "Invalid Key"
        print("Invalid key, kicking")
        wait(0.5)
        Player:Kick("Invalid Key")
    end
end)
KeyInput.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        print("Enter pressed")
        SubmitButton:Activate()
    end
end)

-- Сворачивание
local function toggle()
    if MainFrame.Visible then
        MainFrame.Visible = false
        Circle.Visible = true
        print("Menu minimized")
    else
        Circle.Visible = false
        MainFrame.Visible = true
        print("Menu restored")
    end
end
Close.MouseButton1Click:Connect(toggle)
Circle.MouseButton1Click:Connect(toggle)

-- Перетаскивание
local function setupDragging(frame)
    local dragging, dragStart, startPos
    frame.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = frame.Position
            print("Dragging started: " .. frame.Name)
        end
    end)
    frame.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
            if frame == MainFrame then
                Circle.Position = frame.Position
            elseif frame == Circle then
                MainFrame.Position = frame.Position
            end
            print("Dragging: " .. frame.Name)
        end
    end)
    UserInputService.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
            print("Dragging ended: " .. frame.Name)
        end
    end)
end
setupDragging(KeyFrame)
setupDragging(MainFrame)
setupDragging(Circle)
