-- Xóa sạch bản cũ
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "DungDepChaiSystem" then v:Destroy() end
end

-- Tạo UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DungDepChaiSystem"
screenGui.Parent = game:GetService("CoreGui")

-- Nhãn chữ
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
-- ĐÃ SỬA: Size vừa đủ để không làm lỗi Tween
textLabel.Size = UDim2.new(0, 1000, 0, 50) 
textLabel.Position = UDim2.new(1, 0, 0.28, 0) -- Vị trí vạch đỏ của sếp
textLabel.BackgroundTransparency = 1
textLabel.Text = "✨ DŨNG ĐẸP CHAI ĐANG THEO DÕI BẠN ✨"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 0) 
textLabel.TextSize = 35 
textLabel.Font = Enum.Font.GothamBold
textLabel.TextStrokeTransparency = 0
textLabel.TextXAlignment = Enum.TextXAlignment.Left -- Căn lề trái để chữ đi đầu tiên

-- Hàm chạy vĩnh viễn (Fix lỗi biến mất sớm)
task.spawn(function()
    while true do
        -- 1. Đưa chữ về sát mép phải màn hình
        textLabel.Position = UDim2.new(1, 0, 0.28, 0)
        
        -- 2. Chạy sang trái cho tới khi cái đuôi chữ biến mất hẳn (-1.5 là đủ)
        local tween = game:GetService("TweenService"):Create(
            textLabel, 
            TweenInfo.new(10, Enum.EasingStyle.Linear), 
            {Position = UDim2.new(-1.5, 0, 0.28, 0)} 
        )
        tween:Play()
        tween.Completed:Wait() -- Đợi chạy xong 100% rồi mới lặp lại
    end
end)
