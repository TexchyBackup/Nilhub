local g = Instance.new("ScreenGui")
g.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local b = Instance.new("TextButton")
b.Parent = g
b.Size = UDim2.new(0, 100, 0, 50)
b.Position = UDim2.new(1, -110, 0.5, -25)
b.Text = "Toggle"

local r = true

local grayScreen = Instance.new("Frame")
grayScreen.Size = UDim2.new(1, 0, 1, 0)
grayScreen.BackgroundColor3 = Color3.new(0.5, 0.5, 0.5)
grayScreen.ZIndex = 0 

b.MouseButton1Click:Connect(function()
	r = not r
	game:GetService("RunService"):Set3dRenderingEnabled(r)
	if not r then
		grayScreen.Parent = g 
	else
		grayScreen.Parent = nil
	end
end)
