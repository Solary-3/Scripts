--loadstring(game:HttpGet("https://gist.githubusercontent.com/lolidkwhy678/8789dcee674b733f339fc9376e512287/raw/0faff48438c6091deb3b3672a430cdfb07417111/tsb%2520inventory"))()
local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local playerGui = player:WaitForChild("PlayerGui")
local workspace = game:GetService("Workspace")
local timeposcur = 0
local SG = Instance.new("ScreenGui")
 SG.Parent = player:WaitForChild("PlayerGui")
local CaptionStroke = Instance.new("UIStroke")
local Caption = Instance.new("TextLabel")
local Text2 = Instance.new("UIStroke")
local Text3 = Instance.new("UIStroke")
local Yu = Instance.new("UIStroke")
local C = Instance.new("UIGradient")
local CaptionGradient = Instance.new("UIGradient")
local G = Instance.new("UIGradient")
local Rq = Instance.new("UIGradient")
local char=game:GetService("Players").LocalPlayer.Character
local hum=char:FindFirstChildOfClass("Humanoid")
local h=char.Head
local t=char.Torso
local hrp=char.HumanoidRootPart 
local G = Color3.fromRGB(100, 100, 100)
local A = Color3.fromRGB(255,255,255)
local W = Color3.fromRGB(255, 255, 255)
local H = ColorSequence.new{
    ColorSequenceKeypoint.new(0, A),
    ColorSequenceKeypoint.new(0.500, G),
    ColorSequenceKeypoint.new(1, W)
}



local billboard2 = Instance.new("BillboardGui")
        billboard2.Name = "Test"
        billboard2.Size = UDim2.new(0, 100, 0, 40)
        billboard2.StudsOffset = Vector3.new(0, 5, 0)
        billboard2.Adornee = player.Character.Head
        billboard2.AlwaysOnTop = true
        billboard2.MaxDistance = 25
        billboard2.Parent = player.Character.Head
    local Q = Instance.new("TextLabel")
    Q.Text = "─Tool Version─"
    Q.Font = Enum.Font.Sarpanch
    Q.TextSize = 30
    Q.TextColor3 = Color3.fromRGB(0, 0, 0)
    Q.BackgroundTransparency = 1
    Q.Parent = billboard2
    Q.Position = UDim2.new(0.5, -50, 1, -15) 
    Q.Size = UDim2.new(1, 0, 1, 0)
    Q.Rotation = 0
Text2.Thickness = 1
Text2.Color = Color3.fromRGB(255,255,255)
Text2.Parent = Q
Text2.LineJoinMode = Enum.LineJoinMode.Miter
Rq.Parent = Text2
Rq.Color = H
Rq.Name = "Test3"
Rq.Enabled = true 
Rq.Rotation = 85
Rq.Offset = Vector2.new(-1,0)
local textLabel1 = Instance.new("TextLabel")
textLabel1.Text = "─「 KRYSTAL DANCE 」─"
textLabel1.Font = Enum.Font.Sarpanch
textLabel1.TextSize = 50
textLabel1.TextColor3 = Color3.fromRGB(0, 0, 0)
textLabel1.BackgroundTransparency = 100
textLabel1.Parent = billboard2
textLabel1.Size = UDim2.new(1, 0, 1, 0)
textLabel1.Rotation = 0
Text3.Thickness = 1
Text3.Color = Color3.fromRGB(255,255,255)
Text3.Parent = textLabel1
Text3.LineJoinMode = Enum.LineJoinMode.Miter
C.Parent = Text3
C.Color = H
C.Name = "Test2"
C.Enabled = true 
C.Rotation = 85
C.Offset = Vector2.new(0,0)

local RunService = game:GetService("RunService")
local Player = game:GetService("Players").LocalPlayer
local PlayerMouse = Player:GetMouse()
local Camera = workspace.CurrentCamera
local Character =char
local Humanoid = Character:WaitForChild("Humanoid")
local IsR6 = (Humanoid.RigType == Enum.HumanoidRigType.R6)
local Head = Character:WaitForChild("Head")
local Torso = if IsR6 then Character:WaitForChild("Torso") else Character:WaitForChild("UpperTorso")
local Neck = if IsR6 then Torso:WaitForChild("Neck") else Head:WaitForChild("Neck")
local Waist = if IsR6 then nil else Torso:WaitForChild("Waist")
local NeckOriginC0 = Neck.C0
local WaistOriginC0 = if Waist then Waist.C0 else nil
Neck.MaxVelocity = 1/3
local AllowedStates = {Enum.HumanoidStateType.Running, Enum.HumanoidStateType.Climbing, Enum.HumanoidStateType.Swimming, Enum.HumanoidStateType.Freefall, Enum.HumanoidStateType.Seated}
local IsAllowedState = (table.find(AllowedStates, Humanoid:GetState()) ~= nil)
local find = table.find
local atan = math.atan
local atan2 = math.atan2
Humanoid.StateChanged:Connect(function(_, new)
	IsAllowedState = (find(AllowedStates, new) ~= nil)
end)
local oldC0N = Neck.C0
local updatesPerSecond = 10
local Character = char 
local Root = char.HumanoidRootPart
introsound = Instance.new("Sound",Root)
introsound.SoundId = "rbxassetid://236146895"
introsound.Volume = 1
introsound:Play()
bigfedora = Instance.new("Part",Character)
bigfedora.Size = Vector3.new(2,2,2)
bigfedora.CFrame = bigfedora.CFrame:inverse() * Root.CFrame * CFrame.new(math.random(-60,60),-.2,math.random(-60,60)) * CFrame.Angles(0,math.rad(math.random(-180,180)),0)
bigfedora.CanCollide = false
bigfedora.Anchored = true
bigfedora.Name = "mbigf"
mbigfedora = Instance.new("SpecialMesh", bigfedora)
mbigfedora.MeshType = "FileMesh"
mbigfedora.Scale = Vector3.new(2.5, 2.5, 2.5)
mbigfedora.MeshId,mbigfedora.TextureId = 'http://www.roblox.com/asset/?id=1125478','http://www.roblox.com/asset/?id=1125479'

for i = 1, 60 do
bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(Root.Position) * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.09)
task.wait(1/60)
end
wait(.25)
for i = 1, 50 do
bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(char.Head.Position),.5)
task.wait(1/60)
end
zmc = 0
for i = 1, 29 do
zmc = zmc + 2
mbigfedora.Scale = mbigfedora.Scale - Vector3.new(.15,.15,.15)
bigfedora.CFrame = bigfedora.CFrame * CFrame.Angles(math.rad(0),math.rad(zmc),0)
task.wait(1/60)
end
bigfedora:Remove()
local nim= 0
char.Humanoid.Died:Connect(function()
sound69.PlaybackSpeed = 0
sound69.Parent = nil 
sound69.Volume = 0
end)
local hum = char.Humanoid
local cf = CFrame.new
local DIEDLOOP 
local HEADLOOP
repeat 
    char.Humanoid:Move(Vector3.new(0,0,-1),true)
    task.wait(1/60)
    nim=nim+1
until nim==3


RunService.RenderStepped:Connect(function(deltaTime: number)
	local function Alpha(n)
		return math.clamp(n*deltaTime*60,0,1)
	end
  hum.CameraOffset =  hum.CameraOffset:Lerp((hrp.CFrame*cf(0,1.5,0)):PointToObjectSpace(h.Position),Alpha(.15))
	if IsAllowedState  and dancing == false then
		local HeadPosition = Head.Position
		if Neck then
         local MousePos = PlayerMouse.Hit.Position
			local TranslationVector = (HeadPosition - MousePos).Unit
			local Pitch = atan(TranslationVector.Y)
			local Yaw = TranslationVector:Cross(Torso.CFrame.LookVector).Y
			local Roll = atan(Yaw)
			
			local NeckCFrame
			if IsR6 then
				NeckCFrame = CFrame.Angles(Pitch, 0, Yaw)
			else
			   	NeckCFrame = CFrame.Angles(-Pitch * 0.5, Yaw, -Roll * 0.5)				
			   	local waistCFrame = CFrame.Angles(-Pitch * 0.5, Yaw * 0.5, 0)
			   	Waist.C0 = Waist.C0:Lerp(WaistOriginC0 * waistCFrame, updatesPerSecond * deltaTime)
			end			
			Neck.C0 = Neck.C0:Lerp(NeckOriginC0 * NeckCFrame, updatesPerSecond * deltaTime)
		end
    elseif dancing == true then 
        Neck.C0 = oldC0N
	end	
if char.Humanoid.MoveDirection == Vector3.new(0,0,0) then 
    walking = false 
    idle = true 
else 
    walking = true 
    idle = false 
end
end)


local Playsound = Instance.new("Sound",game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
Playsound.Name = "Danc"
Playsound.Volume = 1
Playsound.Looped = true
Playsound.Parent = game:GetService("RunService")
local exploit = "shitsploit"
        pcall(function()
            exploit = getexecutorname()
        end)
	local customasset = function(id)
        if exploit ~= "CaetSploit" then
        idwithoutthatbit= string.gsub(id,"Dances/","")
        if not isfile(id) then 
         writefile(id,game:HttpGet("https://github.com/Solary-3/Scripts/tree/Audios-1"..idwithoutthatbit))
        end
       repeat task.wait() until isfile(id)
    end
        local s = Instance.new("Sound")
        s.Parent =game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        s.SoundId = getcustomasset(id)
        task.spawn(function()
            task.wait(1)
            s:Destroy()
        end)
        return s.SoundId
    end
local function M()
     Playsound:Stop()
     --Playsound:Destroy()
     end








local tool = Instance.new("Tool", backpack)
tool.Name = "Rat"
tool.RequiresHandle = false
writefile("Dances/rat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/rat.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
	local character = player.Character
	if character then
		Anim = Animator.new(character, 104525136565640)
		Anim:Play()
		Anim.Stopped:Connect(function()
			Anim:Play()
		end)
		Playsound.SoundId = customasset("Dances/rat.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
	end
end)

tool.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
		
		
	end
	M()
end)


local tool = Instance.new("Tool", backpack)
tool.Name = "Rat 2"
tool.RequiresHandle = false
writefile("Dances/rat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/rat.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
	local character = player.Character
	if character then
	     
	     
		Anim = Animator.new(character, 98260902889120)
		Anim:Play()
		Anim.Stopped:Connect(function()
			Anim:Play()
		end)
		
		Playsound.SoundId = customasset("Dances/rat.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
	end
end)

tool.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
		
	end
	M()
end)


local tool = Instance.new("Tool", backpack)
tool.Name = "Boogie"
tool.RequiresHandle = false
writefile("Dances/xxanteria, isq - FUNKED UP (SLOWED) (320kbps).mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/xxanteria%2C%20isq%20-%20FUNKED%20UP%20(SLOWED)%20(320kbps).mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
	local character = player.Character
	if character then
	     
	     
		Anim = Animator.new(character, 16769959846)
		Anim:Play()
		Anim.Stopped:Connect(function()
			Anim:Play()
		end)
		
		Playsound.SoundId = customasset("Dances/xxanteria, isq - FUNKED UP (SLOWED) (320kbps).mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
	end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Assumptions"
tool.RequiresHandle = false

writefile("Dances/Assumptions.mp3",
game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Assumptions.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 75148929064618)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Assumptions.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Assumptions Shuffle"
tool.RequiresHandle = false

writefile("Dances/Assumptions.mp3",
game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Assumptions.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 134470305964325)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Assumptions.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Billie Jean"
tool.RequiresHandle = false

writefile("Dances/Bjean.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Bjean.mp3?raw=true"))
	
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 108805310510119)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Bjean.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Egypt"
tool.RequiresHandle = false

writefile("Dances/Egypt.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Egypt.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
      
     
Anim = Animator.new(character, 95986135548450)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Egypt.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
 
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "CaramellDansen"
tool.RequiresHandle = false

writefile("Dances/caramell.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/caramell.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 103597509139287)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/caramell.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Stock Shuffle"
tool.RequiresHandle = false

writefile("Dances/Stock.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Stock.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 15039780593)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)

Playsound.SoundId = customasset("Dances/Stock.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Gangnam"
tool.RequiresHandle = false

writefile("Dances/gangnamm.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/gangnamm.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 12438774071)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/gangnamm.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Fein"
tool.RequiresHandle = false

writefile("Dances/Fein.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Fein.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 115727639577589)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Fein.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)


local tool = Instance.new("Tool", backpack)
tool.Name = "Griddy"
tool.RequiresHandle = false

writefile("Dances/griddy.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/griddy.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 15704995372)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/griddy.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Two"
tool.RequiresHandle = false

writefile("Dances/LeftRight.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/LeftRight.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 137845929482571)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/LeftRight.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Katzosky"
tool.RequiresHandle = false

writefile("Dances/kazot.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/kazot.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 114036336168567)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/kazot.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Walk"
tool.RequiresHandle = false

writefile("Dances/doodle - Zachz Winner.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/doodle%20-%20Zachz%20Winner.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 124074233795203)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/doodle - Zachz Winner.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Mesmerizer"
tool.RequiresHandle = false

writefile("Dances/Mesmerizer.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Mesmerizer.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 107578737342278)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Mesmerizer.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Bumblebee"
tool.RequiresHandle = false

writefile("Dances/Bumblebee.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Bumblebee.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
      
     
Anim = Animator.new(character, 10048786578)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Bumblebee.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Domino"
tool.RequiresHandle = false

writefile("Dances/Domino.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Domino.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 126683576461381)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Domino.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Yamero"
tool.RequiresHandle = false

writefile("Dances/Yamero.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Yamero.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
      
     
Anim = Animator.new(character, 99905571448278)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Yamero.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Crank That"
tool.RequiresHandle = false

writefile("Dances/Crank.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Crank.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 139148388599834)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Crank.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Smooth Moves"
tool.RequiresHandle = false

writefile("Dances/SmoothMoves.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/SmoothMoves.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 77170841283499)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/SmoothMoves.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Shuba Duck"
tool.RequiresHandle = false

writefile("Dances/Shuba Duck.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Shuba%20Duck.mp3?raw=true"))



if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 13357063395)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Shuba Duck.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Keep Up"
tool.RequiresHandle = false

writefile("Dances/Odetari - KEEP UP (Lyrics) (320kbps).mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Odetari%20-%20KEEP%20UP%20(Lyrics)%20(320kbps).mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 84765927391240)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Odetari - KEEP UP (Lyrics) (320kbps).mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Lemon Melon Cookie"
tool.RequiresHandle = false

writefile("Dances/Lemon.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Lemon.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 120262284704633)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Lemon.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Unlock It"
tool.RequiresHandle = false

writefile("Dances/unlockit.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/unlockit.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 95877864781663)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/unlockit.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Internet Angel"
tool.RequiresHandle = false

writefile("Dances/InternetAngel.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/InternetAngel.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 93104787213396)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/InternetAngel.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Boombox"
tool.RequiresHandle = false

writefile("Dances/Boombox.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Boombox.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 84471848998012)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Boombox.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Peashooter"
tool.RequiresHandle = false

writefile("Dances/balls.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/balls.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 15039779727)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/balls.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Distraction"
tool.RequiresHandle = false
writefile("Dances/Distraction.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Distraction.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 123261586961433)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Distraction.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "It Burns"
tool.RequiresHandle = false
writefile("Dances/ItBurns.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/ItBurns.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 78270528768822)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/ItBurns.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Chronos Shift"
tool.RequiresHandle = false
writefile("Dances/chronoshift.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/chronoshift.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 136302258505787)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/chronoshift.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Million"
tool.RequiresHandle = false
writefile("Dances/Million.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Million.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 109123683211464)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Million.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "I Wanna Runaway"
tool.RequiresHandle = false
writefile("Dances/Runaway.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Runaway.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 119147810948063)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Runaway.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Headlock"
tool.RequiresHandle = false
writefile("Dances/Headlock.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Headlock.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 80641587562132)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Headlock.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Bloodpop"
tool.RequiresHandle = false
writefile("Dances/bloodpop.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/bloodpop.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 132026285699359)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/bloodpop.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Heavy Love"
tool.RequiresHandle = false
writefile("Dances/heavylove.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/heavylove.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 85856686932206)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/heavylove.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Smug Dance"
tool.RequiresHandle = false
writefile("Dances/Smug.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Smug.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 8360493405)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Smug.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Hakari"
tool.RequiresHandle = false
writefile("Dances/TUCA DONKA.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/TUCA%20DONKA.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 114322394064953)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/TUCA DONKA.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Flop"
tool.RequiresHandle = false
writefile("Dances/DO THE FLOP.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/DO%20THE%20FLOP.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 122878040721056)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/DO THE FLOP.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Doodle"
tool.RequiresHandle = false
writefile("Dances/Doodle.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Doodle.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 137721173051346)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Doodle.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Club Penguin"
tool.RequiresHandle = false
writefile("Dances/CLUB PENGUIN DANCE.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/CLUB%20PENGUIN%20DANCE.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 89761302048916)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/CLUB PENGUIN DANCE.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Miohonda"
tool.RequiresHandle = false
writefile("Dances/MioHonda.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/MioHonda.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 97072681531610)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/MioHonda.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Liar Dance"
tool.RequiresHandle = false
writefile("Dances/Liar.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Liar.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 83070385097572)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Liar.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Firework"
tool.RequiresHandle = false
writefile("Dances/Firework.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Firework.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 89935837869234)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Firework.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Monster"
tool.RequiresHandle = false
writefile("Dances/Monster.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Monster.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 81782595704176)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Monster.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Love For You"
tool.RequiresHandle = false
writefile("Dances/LoveForU.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/LoveForU.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 74560719461868)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/LoveForU.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "C14"
tool.RequiresHandle = false
writefile("Dances/C14.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/C14.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 118452043589079)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/C14.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Dance If Your A Goat"
tool.RequiresHandle = false
writefile("Dances/Goat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Goat.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 88802480011454)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Goat.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Spooky Month"
tool.RequiresHandle = false
writefile("Dances/Spooky.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Spooky.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 15231364673)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Spooky.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Silly Billy"
tool.RequiresHandle = false
writefile("Dances/Billy.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Billy.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 108058940444935)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Billy.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Slickback"
tool.RequiresHandle = false
writefile("Dances/SlickBack.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/SlickBack.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 18986357892)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/SlickBack.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Static"
tool.RequiresHandle = false
writefile("Dances/Static.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Static.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 139065991651723)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Static.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Heel Toe Hop"
tool.RequiresHandle = false
writefile("Dances/Heel.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Heel.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 98256622649150)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Heel.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Yippee"
tool.RequiresHandle = false
writefile("Dances/Yippie.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Yippie.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 91260130273371)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Yippie.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Pick Up The Phone"
tool.RequiresHandle = false
writefile("Dances/Pickup.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Pickup.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 92187683724153)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Pickup.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Kemusan"
tool.RequiresHandle = false
writefile("Dances/Chinese.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Chinese.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 124210157097622)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Chinese.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Box Swing"
tool.RequiresHandle = false
writefile("Dances/Box.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Box.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 75405139558088)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Box.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Bomb Monkey"
tool.RequiresHandle = false
writefile("Dances/Monkey.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Monkey.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 75616586799217)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Monkey.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Commercial Break"
tool.RequiresHandle = false
writefile("Dances/Break.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Break.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 74653637870288)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Break.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Popipo"
tool.RequiresHandle = false
writefile("Dances/Popipo.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Popipo.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 115465103089127)
timeposcur = Playsound.TimePosition
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Popipo.mp3")
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "BirdBrain"
tool.RequiresHandle = false
writefile("Dances/Birdbrain.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Birdbrain.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 122216349954401)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Birdbrain.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "XO"
tool.RequiresHandle = false
writefile("Dances/XO.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/XO.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 73559770055600)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/XO.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Roar"
tool.RequiresHandle = false
writefile("Dances/Roar.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Roar.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 114610231812511)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Roar.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Savor The W"
tool.RequiresHandle = false
writefile("Dances/Savor.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Savor.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 8212303002598)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Savor.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)