local g = Instance.new("ScreenGui")
g.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local b = Instance.new("TextButton")
b.Parent = g
b.Size = UDim2.new(0, 100, 0, 50)
b.Position = UDim2.new(1, -110, 0.5, -25)
b.Text = "Toggle"

local r = true

b.MouseButton1Click:Connect(function()
    r = not r
    game:GetService("RunService"):Set3dRenderingEnabled(r)
end)
