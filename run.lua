-- Dọn dẹp bản cũ nếu có
if game.CoreGui:FindFirstChild("DungDepChaiGui") then
    game.CoreGui.DungDepChaiGui:Destroy()
end

-- Tạo UI
local gui = Instance.new("ScreenGui")
gui.Name = "DungDepChaiGui"
gui.Parent = game.CoreGui

-- Tạo nhãn chữ
local label = Instance.new("TextLabel")
label.Parent = gui
label.Size = UDim2.new(0, 1000, 0, 80)
label.Position = UDim2.new(1, 0, 0.2, 0) -- Chạy ở phía trên màn hình tí cho dễ nhìn
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 215, 0) -- Màu vàng Gold cực sang
label.TextSize = 60 -- Chữ to rõ ràng
label.Font = Enum.Font.FredokaOne -- Font nhìn cho nó chill
label.Text = "✨ DŨNG ĐẸP CHAI ✨"
label.TextStrokeTransparency = 0 -- Viền đen cho nổi bật chữ vàng
label.TextStrokeColor3 = Color3.new(0, 0, 0)

-- Hàm cho chữ chạy vĩnh viễn
local function startMarquee()
    while true do
        -- Reset vị trí về bên phải
        label.Position = UDim2.new(1, 0, 0.2, 0)
        
        -- Tạo chuyển động sang bên trái (15 giây cho nó chill, muốn nhanh thì giảm số 15)
        local tweenInfo = TweenInfo.new(15, Enum.EasingStyle.Linear)
        local tween = game:GetService("TweenService"):Create(label, tweenInfo, {Position = UDim2.new(-1.2, 0, 0.2, 0)})
        
        tween:Play()
        tween.Completed:Wait() -- Chạy xong là lặp lại ngay lập tức
    end
end

-- Kích hoạt
task.spawn(startMarquee)

-- Thông báo xác nhận
game.StarterGui:SetCore("SendNotification", {
    Title = "RedDung System",
    Text = "Chế độ 'Dũng Đẹp Chai' đã bật vv!",
    Duration = 5
})
