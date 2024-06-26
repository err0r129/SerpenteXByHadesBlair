--isso ai
local gui = Instance.new("ScreenGui")
gui.Name = "DraggableGUI"
gui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local frame = Instance.new("Frame")
frame.Name = "DraggableFrame"
frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0, 100, 0, 100)
frame.BackgroundTransparency = 0.4
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0
frame.Active = true
frame.Draggable = true
frame.Parent = gui

local button = Instance.new("TextButton")
button.Name = "InfJumpButton"
button.Size = UDim2.new(0.8, 0, 0, 30)
button.Position = UDim2.new(0.1, 0, 0.5, -15)
button.BackgroundColor3 = Color3.new(0, 0.5, 1)
button.Font = Enum.Font.SourceSans
button.TextColor3 = Color3.new(1, 1, 1)
button.TextSize = 14
button.Text = "InfJump"
button.Parent = frame

local label = Instance.new("TextLabel")
label.Name = "CreatorLabel"
label.Size = UDim2.new(0, 200, 0, 20)
label.Position = UDim2.new(0, 0, 0, -20)
label.BackgroundTransparency = 1
label.Font = Enum.Font.SourceSansBold
label.TextColor3 = Color3.new(1, 1, 1)
label.TextSize = 14
label.Text = "Made by err0r129"
label.Parent = frame

local infiniteJumpEnabled = false

local function onButtonClick()
    infiniteJumpEnabled = not infiniteJumpEnabled
    button.Text = infiniteJumpEnabled and "Disable InfJump" or "Enable InfJump"
end

button.MouseButton1Click:Connect(onButtonClick)

game:GetService("UserInputService").JumpRequest:Connect(function()
    if infiniteJumpEnabled then 
        game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):ChangeState("Jumping")
    end
end)
