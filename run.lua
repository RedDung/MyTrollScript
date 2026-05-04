-- Xóa sạch dấu vết cũ
for _, v in pairs(game:GetService("CoreGui"):GetChildren()) do
    if v.Name == "DungDepChaiSystem" then v:Destroy() end
end

-- Tạo giao diện chính
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "DungDepChaiSystem"
screenGui.Parent = game:GetService("CoreGui")
screenGui.IgnoreGuiInset = true -- Chạy tràn viền luôn

-- Tạo một khung nền nhỏ để chữ nổi bật
local frame = Instance.new("Frame")
frame.Parent = screenGui
frame.Size = UDim2.new(1, 0, 0.08, 0)
frame.Position = UDim2.new(0, 0, 0.05, 0) -- Nằm gần trên cùng
frame.BackgroundTransparency = 0.6 -- Mờ mờ cho ảo
frame.BackgroundColor3 = Color3.new(0, 0, 0)
frame.BorderSizePixel = 0

-- Nhãn chữ "Dũng Đẹp Chai"
local textLabel = Instance.new("TextLabel")
textLabel.Parent = frame
textLabel.Size = UDim2.new(0, 2000, 1, 0) -- Khung cực dài để chữ không bị nhảy dòng
textLabel.BackgroundTransparency = 1
textLabel.Text = "✨ DŨNG ĐẸP CHAI ĐANG THEO DÕI BẠN ✨"
textLabel.TextColor3 = Color3.fromRGB(255, 255, 0) -- Vàng tươi
textLabel.TextSize = 50 -- Vừa đủ to, không quá nhỏ
textLabel.Font = Enum.Font.LuckiestGuy -- Font này bao nổi
textLabel.TextStrokeTransparency = 0 -- Viền đen đậm

-- Hàm chạy vĩnh viễn (Marquee v3)
task.spawn(function()
    while true do
        textLabel.Position = UDim2.new(1, 0, 0, 0)
        local tween = game:GetService("TweenService"):Create(
            textLabel, 
            TweenInfo.new(10, Enum.EasingStyle.Linear), 
            {Position = UDim2.new(-1.5, 0, 0, 0)}
        )
        tween:Play()
        tween.Completed:Wait()
    end
end)

-- Hiện thông báo test trong máy sếp
game.StarterGui:SetCore("SendNotification", {
    Title = "RedDung System",
    Text = "Script Dũng Đẹp Chai đã lên sóng!",
    Duration = 5
})
