-- Xóa bản cũ nếu có
local old = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("DungDepChaiGui")
if old then old:Destroy() end

-- Tạo UI
local gui = Instance.new("ScreenGui")
gui.Name = "DungDepChaiGui"
gui.ResetOnSpawn = false -- Chết đi sống lại chữ vẫn còn
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Tạo nhãn chữ
local label = Instance.new("TextLabel")
label.Parent = gui
label.Size = UDim2.new(0, 1000, 0, 100)
label.Position = UDim2.new(1, 0, 0.3, 0)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 215, 0) -- Vàng Gold
label.TextSize = 60
label.Font = Enum.Font.FredokaOne
label.Text = "DŨNG ĐẸP CHAI"
label.TextStrokeTransparency = 0
label.ZIndex = 10 -- Ưu tiên hiện trên cùng

-- Hàm chạy vĩnh viễn
task.spawn(function()
    while true do
        label.Position = UDim2.new(1, 0, 0.3, 0)
        local tween = game:GetService("TweenService"):Create(label, TweenInfo.new(8, Enum.EasingStyle.Linear), {Position = UDim2.new(-1.5, 0, 0.3, 0)})
        tween:Play()
        tween.Completed:Wait()
    end
end)
