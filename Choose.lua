local function notify(text,dur)
local Notify=game:GetService("StarterGui")
Notify:SetCore("SendNotification",{
Title="Mp3 Player";
Text=text})
Duration=5 or dur
end

local Cgui = game:GetService("CoreGui")
if Cgui:FindFirstChild("CHOOSE") then
    Cgui.CHOOSE:Destroy()
end
local ScreenGui = Instance.new("ScreenGui",Cgui)
ScreenGui.Name ="CHOOSE"

local ui = Instance.new("Frame",ScreenGui)
local title = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local Load = Instance.new("TextButton",ui)
local GELATEK = Instance.new("TextButton")
local CURRENTANGLE = Instance.new("TextButton",ui)
local ced = Instance.new("TextLabel")
local corner=Instance.new("UICorner",ui)
 corner1=Instance.new("UICorner",GELATEK)
 corner2=Instance.new("UICorner",CURRENTANGLE)
 corner3=Instance.new("UICorner",Show)
ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ui.Name = "ui"
ui.Active = true
ui.BackgroundColor3 = Color3.new(0, 0, 0)
ui.BackgroundTransparency = 0
ui.BorderSizePixel = 3
ui.Position = UDim2.new(0, 0, 0.419703096, 0)
ui.Size = UDim2.new(0, 200, 0, 200)

title.Name = "title"
title.Parent = ui
title.BackgroundColor3 = Color3.new(68, 68, 68)
title.BackgroundTransparency = 1
title.BorderSizePixel = 2
title.Position = UDim2.new(0, 0, 0.0199999996, 0)
title.Size = UDim2.new(1, 0, 0, 50)
title.Font = "Sarpanch"
title.Text = "CHOOSE Player"
title.TextColor3 = Color3.new(1, 1, 1)
title.TextScaled = true
title.TextSize = 14
title.TextWrapped = true

Frame.Parent = title
Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.07, 0, 0.860000014, 0)
Frame.Size = UDim2.new(0.85, 0, 0, 6)

Wings.Name = "F20 FR"
Wings.Parent = ui
Wings.BackgroundColor3 = Color3.new(1, 1, 1)
Wings.BorderSizePixel = 0
Wings.Position = UDim2.new(0.100000001, 0, 0.300000012, 0)
Wings.Size = UDim2.new(0.800000012, 0, 0, 50)
Wings.Font = "Sarpanch"
Wings.PlaceholderText = "Insert Name"
Wings.Text = "Nameless1"
Wings.TextColor3 = Color3.new(0, 0, 0)
Wings.TextScaled = true
Wings.TextSize = 14
Wings.TextWrapped = true


GELATEK.Name = "Stick"
GELATEK.Parent = ui
GELATEK.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
GELATEK.BackgroundTransparency = 0
GELATEK.BorderSizePixel = 0
GELATEK.Position = UDim2.new(0, 0, 0.629999971, 0)
GELATEK.Size = UDim2.new(0.5, 0, 0, 45)
GELATEK.Font = Enum.Font.Sarpanch
GELATEK.Text = "Play"
GELATEK.TextColor3 = Color3.new(1,1,1)
GELATEK.TextScaled = true
GELATEK.TextSize = 10
GELATEK.TextWrapped = true

CURRENTANGLE.BackgroundColor3 = Color3.new(0.25, 0.25, 0.25)
CURRENTANGLE.Position=UDim2.new(0.50, 0, 0.629999971, 0)
CURRENTANGLE.Size = UDim2.new(0.5, 0, 0, 45)
CURRENTANGLE.TextColor3 = Color3.new(1,1,1)
CURRENTANGLE.Text ="Stop"
CURRENTANGLE.TextScaled = true
CURRENTANGLE.TextSize = 10
CURRENTANGLE.Font=Enum.Font.Sarpanch

ui.Draggable = true

ced.Name = "made"
ced.Parent = ui
ced.BackgroundColor3 = Color3.new(68, 68, 68)
ced.BackgroundTransparency = 1
ced.BorderSizePixel = 2
ced.Position = UDim2.new(0, 0, 0.769999981, 0)
ced.Size = UDim2.new(1, 0, 0, 50)
ced.Font = Enum.Font.Sarpanch
ced.Text = "..."
ced.TextColor3 = Color3.new(1, 1, 1)
ced.TextScaled = true
ced.TextSize = 14
ced.TextWrapped = true
CURRENTANGLE.MouseButton1Click:Connect(function()
Cgui = game:GetService("CoreGui")
if Cgui:FindFirstChild("CHOOSE") then
    Cgui.CHOOSE:Destroy()
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/CurrentangleVer.lua"))()
end)
GELATEK.MouseButton1Click:Connect(function()
Cgui = game:GetService("CoreGui")
if Cgui:FindFirstChild("CHOOSE") then
    Cgui.CHOOSE:Destroy()
end
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/GelatekVersion.lua"))()
end)
