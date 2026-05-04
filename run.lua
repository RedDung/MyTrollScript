-- Xóa bản cũ nếu có
local old = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("DungDepChaiGui")
if old then old:Destroy() end

-- Tạo UI
local gui = Instance.new("ScreenGui")
gui.Name = "DungDepChaiGui"
gui.ResetOnSpawn = false 
gui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Tạo nhãn chữ
local label = Instance.new("TextLabel")
label.Parent = gui
label.Size = UDim2.new(0, 5000, 0, 100) 
label.Position = UDim2.new(1, 0, 0.1, 0) -- ĐÃ SỬA: Đưa lên cao hơn (0.1)
label.BackgroundTransparency = 1
label.TextColor3 = Color3.fromRGB(255, 215, 0) 
label.TextSize = 45 -- ĐÃ SỬA: Chữ nhỏ lại cho tinh tế
label.Font = Enum.Font.FredokaOne 
label.Text = "✨ DŨNG ĐẸP CHAI ✨"
label.TextStrokeTransparency = 0.5 -- Viền mờ đi tí cho đẹp
label.TextWrapped = false 
label.ZIndex = 10 

-- Hàm chạy vĩnh viễn
task.spawn(function()
    while true do
        -- Xuất phát từ ngoài bên phải
        label.Position = UDim2.new(1, 0, 0.1, 0)
        -- Chuyển động (10 giây cho chữ nhỏ chạy thong dong)
        local tweenInfo = TweenInfo.new(10, Enum.EasingStyle.Linear)
        local tween = game:GetService("TweenService"):Create(label, tweenInfo, {Position = UDim2.new(-1.2, 0, 0.1, 0)})
        tween:Play()
        tween.Completed:Wait()
    end
end)
