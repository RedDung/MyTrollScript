-- Xóa sạch bản cũ
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "DungDepChaiSystem" then v:Destroy() end
end

-- Tạo UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DungDepChaiSystem"
screenGui.Parent = game:GetService("CoreGui")

-- Khung nền (Làm mỏng lại cho tinh tế)
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(1, 0, 0.05, 0) -- Giảm độ dày khung
frame.Position = UDim2.new(0, 0, 0.1, 0) -- Hạ thấp xuống một chút (0.1)
frame.BackgroundTransparency = 0.7 
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0

-- Chữ "Dũng Đẹp Chai"
local textLabel = Instance.new("TextLabel")
textLabel.Parent = frame
textLabel.Size = UDim2.new(0, 5000, 1, 0) 
textLabel.BackgroundTransparency = 1
textLabel.Text = "✨ DŨNG ĐẸP CHAI ĐANG THEO DÕI BẠN ✨"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 0) 
textLabel.TextSize = 35 -- ĐÃ SỬA: Chữ nhỏ lại vừa mắt
textLabel.Font = Enum.Font.FredokaOne 
textLabel.TextStrokeTransparency = 0.2
textLabel.TextWrapped = false

-- Chạy vĩnh viễn
task.spawn(function()
    while true do
        textLabel.Position = UDim2.new(1, 0, 0, 0)
        local tween = game:GetService("TweenService"):Create(
            textLabel, 
            TweenInfo.new(12, Enum.EasingStyle.Linear), -- Chạy chậm lại tí cho sang
            {Position = UDim2.new(-1.2, 0, 0, 0)}
        )
        tween:Play()
        tween.Completed:Wait()
    end
end)
