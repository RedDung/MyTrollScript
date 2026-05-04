-- Xóa sạch dấu vết cũ
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "DungDepChaiSystem" then v:Destroy() end
end

-- Tạo UI
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DungDepChaiSystem"
screenGui.Parent = game:GetService("CoreGui")

-- Nhãn chữ chạy ngay dòng đỏ
local textLabel = Instance.new("TextLabel")
textLabel.Parent = screenGui
textLabel.Size = UDim2.new(0, 5000, 0, 50) 
-- Vị trí 0.28 là ngay cái vạch đỏ sếp vẽ đấy!
textLabel.Position = UDim2.new(1, 0, 0.28, 0) 
textLabel.BackgroundTransparency = 1
textLabel.Text = "✨ DŨNG ĐẸP CHAI ĐANG THEO DÕI BẠN ✨"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 0) -- Màu vàng cho nổi
textLabel.TextSize = 35 -- Kích thước vừa tầm mắt
textLabel.Font = Enum.Font.GothamBold -- Font này cực sang và gọn
textLabel.TextStrokeTransparency = 0 -- Viền đen rõ nét
textLabel.TextWrapped = false

-- Hàm chạy vĩnh viễn (Fix quãng đường)
task.spawn(function()
    while true do
        -- Xuất phát từ ngoài bên phải
        textLabel.Position = UDim2.new(1, 0, 0.28, 0)
        
        -- Chạy sang trái (đến -2.5 để chạy hết sạch đuôi chữ mới quay lại)
        local tween = game:GetService("TweenService"):Create(
            textLabel, 
            TweenInfo.new(12, Enum.EasingStyle.Linear), 
            {Position = UDim2.new(-2.5, 0, 0.28, 0)}
        )
        tween:Play()
        tween.Completed:Wait()
    end
end)
