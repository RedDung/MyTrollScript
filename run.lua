-- Xóa sạch bản cũ để không chồng chéo
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "DungDepChaiSystem" then v:Destroy() end
end

-- Tạo UI gọn nhẹ
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DungDepChaiSystem"
screenGui.Parent = game:GetService("CoreGui")

-- Nhãn chữ (Không dùng khung nền nữa cho đỡ vướng)
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Size = UDim2.new(0, 3000, 0, 30) -- Khung cực mỏng
textLabel.Position = UDim2.new(1, 0, 0.02, 0) -- ĐÃ SỬA: Sát mép trên cùng
textLabel.BackgroundTransparency = 1
textLabel.Text = "✨ DŨNG ĐẸP CHAI ĐANG THEO DÕI BẠN ✨"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- Màu trắng cho thanh lịch
textLabel.TextSize = 25 -- ĐÃ SỬA: Nhỏ gọn, tinh tế
textLabel.Font = Enum.Font.SourceSansBold -- Font mảnh nhưng rõ
textLabel.TextStrokeTransparency = 0.5 -- Viền mờ thôi
textLabel.TextWrapped = false

-- Hàm chạy vĩnh viễn
task.spawn(function()
    while true do
        textLabel.Position = UDim2.new(1, 0, 0.02, 0)
        local tween = game:GetService("TweenService"):Create(
            textLabel, 
            TweenInfo.new(12, Enum.EasingStyle.Linear), 
            {Position = UDim2.new(-1.2, 0, 0.02, 0)}
        )
        tween:Play()
        tween.Completed:Wait()
    end
end)
