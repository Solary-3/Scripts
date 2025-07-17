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








local tool1 = Instance.new("Tool", backpack)
tool1.Name = "JK"
tool1.RequiresHandle = false
writefile("Dances/JK.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/JK.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool1.Equipped:Connect(function()
	local character = player.Character
	if character then
		Anim = Animator.new(character, 119103839008664)
		Anim:Play()
		Anim.Stopped:Connect(function()
		     wait(1)
			Anim:Play()
		end)
		Playsound.SoundId = customasset("Dances/JK.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
	end
end)

tool1.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
		
		
	end
	M()
end)

local tool2 = Instance.new("Tool", backpack)
tool2.Name = "KJ"
tool2.RequiresHandle = false
writefile("Dances/UNLIMITEDFLEXWORKS.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/UNLIMITEDFLEXWORKS.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool2.Equipped:Connect(function()
	local character = player.Character
	if character then
		Anim = Animator.new(character, 74138372568467)
		Anim:Play()
		Playsound.SoundId = customasset("Dances/UNLIMITEDFLEXWORKS.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
		wait(32.246)
		Anim.Stopped:Connect(function()
			Anim:Play()
			wait(32.246)
		end)
	end
end)

tool2.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
	end
	M()
end)










local tool3 = Instance.new("Tool", backpack)
tool3.Name = "Rat"
tool3.RequiresHandle = false
writefile("Dances/rat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/rat.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool3.Equipped:Connect(function()
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

tool3.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
		
		
	end
	M()
end)


local tool4 = Instance.new("Tool", backpack)
tool4.Name = "Rat 2"
tool4.RequiresHandle = false
writefile("Dances/rat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/rat.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool4.Equipped:Connect(function()
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

tool4.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
		
	end
	M()
end)


local tool5 = Instance.new("Tool", backpack)
tool5.Name = "Boogie"
tool5.RequiresHandle = false
writefile("Dances/xxanteria, isq - FUNKED UP (SLOWED) (320kbps).mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/xxanteria%2C%20isq%20-%20FUNKED%20UP%20(SLOWED)%20(320kbps).mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool5.Equipped:Connect(function()
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

tool5.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool6 = Instance.new("Tool", backpack)
tool6.Name = "Assumptions"
tool6.RequiresHandle = false

writefile("Dances/Assumptions.mp3",
game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Assumptions.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool6.Equipped:Connect(function()
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

tool6.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool7 = Instance.new("Tool", backpack)
tool7.Name = "Assumptions Shuffle"
tool7.RequiresHandle = false

writefile("Dances/Assumptions.mp3",
game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Assumptions.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool7.Equipped:Connect(function()
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

tool7.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool8 = Instance.new("Tool", backpack)
tool8.Name = "Billie Jean"
tool8.RequiresHandle = false

writefile("Dances/Bjean.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Bjean.mp3?raw=true"))
	
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool8.Equipped:Connect(function()
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

tool8.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool9 = Instance.new("Tool", backpack)
tool9.Name = "Egypt"
tool9.RequiresHandle = false

writefile("Dances/Egypt.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Egypt.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool9.Equipped:Connect(function()
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

tool9.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
 
end
M()
end)

local tool10 = Instance.new("Tool", backpack)
tool10.Name = "CaramellDansen"
tool10.RequiresHandle = false

writefile("Dances/caramell.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/caramell.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool10.Equipped:Connect(function()
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

tool10.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool11 = Instance.new("Tool", backpack)
tool11.Name = "Stock Shuffle"
tool11.RequiresHandle = false

writefile("Dances/Stock.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Stock.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool11.Equipped:Connect(function()
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

tool11.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool12 = Instance.new("Tool", backpack)
tool12.Name = "Gangnam"
tool12.RequiresHandle = false

writefile("Dances/gangnamm.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/gangnamm.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool12.Equipped:Connect(function()
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

tool12.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool13 = Instance.new("Tool", backpack)
tool13.Name = "Fein"
tool13.RequiresHandle = false

writefile("Dances/Fein.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Fein.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool13.Equipped:Connect(function()
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

tool13.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)


local tool14 = Instance.new("Tool", backpack)
tool14.Name = "Griddy"
tool14.RequiresHandle = false

writefile("Dances/griddy.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/griddy.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool14.Equipped:Connect(function()
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

tool14.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool15 = Instance.new("Tool", backpack)
tool15.Name = "Two"
tool15.RequiresHandle = false

writefile("Dances/LeftRight.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/LeftRight.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool15.Equipped:Connect(function()
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

tool15.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool16 = Instance.new("Tool", backpack)
tool16.Name = "Katzosky"
tool16.RequiresHandle = false

writefile("Dances/kazot.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/kazot.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool16.Equipped:Connect(function()
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

tool16.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool17 = Instance.new("Tool", backpack)
tool17.Name = "Walk"
tool17.RequiresHandle = false

writefile("Dances/doodle - Zachz Winner.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/doodle%20-%20Zachz%20Winner.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool17.Equipped:Connect(function()
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

tool17.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool18 = Instance.new("Tool", backpack)
tool18.Name = "Mesmerizer"
tool18.RequiresHandle = false

writefile("Dances/Mesmerizer.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Mesmerizer.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool18.Equipped:Connect(function()
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

tool18.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool19 = Instance.new("Tool", backpack)
tool19.Name = "Bumblebee"
tool19.RequiresHandle = false

writefile("Dances/Bumblebee.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Bumblebee.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool19.Equipped:Connect(function()
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

tool19.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool20 = Instance.new("Tool", backpack)
tool20.Name = "Domino"
tool20.RequiresHandle = false

writefile("Dances/Domino.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Domino.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool20.Equipped:Connect(function()
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

tool20.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool21 = Instance.new("Tool", backpack)
tool21.Name = "Yamero"
tool21.RequiresHandle = false

writefile("Dances/Yamero.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Yamero.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool21.Equipped:Connect(function()
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

tool21.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool22 = Instance.new("Tool", backpack)
tool22.Name = "Crank That"
tool22.RequiresHandle = false

writefile("Dances/Crank.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Crank.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool22.Equipped:Connect(function()
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

tool22.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool23 = Instance.new("Tool", backpack)
tool23.Name = "Smooth Moves"
tool23.RequiresHandle = false

writefile("Dances/SmoothMoves.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/SmoothMoves.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool23.Equipped:Connect(function()
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

tool23.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool24 = Instance.new("Tool", backpack)
tool24.Name = "Shuba Duck"
tool24.RequiresHandle = false

writefile("Dances/Shuba Duck.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Shuba%20Duck.mp3?raw=true"))



if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool24.Equipped:Connect(function()
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

tool24.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool25 = Instance.new("Tool", backpack)
tool25.Name = "Keep Up"
tool25.RequiresHandle = false

writefile("Dances/Odetari - KEEP UP (Lyrics) (320kbps).mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Odetari%20-%20KEEP%20UP%20(Lyrics)%20(320kbps).mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool25.Equipped:Connect(function()
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

tool25.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool26 = Instance.new("Tool", backpack)
tool26.Name = "Lemon Melon Cookie"
tool26.RequiresHandle = false

writefile("Dances/Lemon.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Lemon.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool26.Equipped:Connect(function()
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

tool26.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool27 = Instance.new("Tool", backpack)
tool27.Name = "Unlock It"
tool27.RequiresHandle = false

writefile("Dances/unlockit.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/unlockit.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool27.Equipped:Connect(function()
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

tool27.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool28 = Instance.new("Tool", backpack)
tool28.Name = "Internet Angel"
tool28.RequiresHandle = false

writefile("Dances/InternetAngel.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/InternetAngel.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool28.Equipped:Connect(function()
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

tool28.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool29 = Instance.new("Tool", backpack)
tool29.Name = "Boombox"
tool29.RequiresHandle = false

writefile("Dances/Boombox.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Boombox.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool29.Equipped:Connect(function()
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

tool29.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool30 = Instance.new("Tool", backpack)
tool30.Name = "Peashooter"
tool30.RequiresHandle = false

writefile("Dances/balls.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/balls.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool30.Equipped:Connect(function()
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

tool30.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool31 = Instance.new("Tool", backpack)
tool31.Name = "Distraction"
tool31.RequiresHandle = false
writefile("Dances/Distraction.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Distraction.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool31.Equipped:Connect(function()
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

tool31.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool32 = Instance.new("Tool", backpack)
tool32.Name = "It Burns"
tool32.RequiresHandle = false
writefile("Dances/ItBurns.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/ItBurns.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool32.Equipped:Connect(function()
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

tool32.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool33 = Instance.new("Tool", backpack)
tool33.Name = "Chronos Shift"
tool33.RequiresHandle = false
writefile("Dances/chronoshift.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/chronoshift.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool33.Equipped:Connect(function()
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

tool33.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool34 = Instance.new("Tool", backpack)
tool34.Name = "Million"
tool34.RequiresHandle = false
writefile("Dances/Million.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Million.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool34.Equipped:Connect(function()
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

tool34.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool35 = Instance.new("Tool", backpack)
tool35.Name = "I Wanna Runaway"
tool35.RequiresHandle = false
writefile("Dances/Runaway.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Runaway.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool35.Equipped:Connect(function()
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

tool35.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool36 = Instance.new("Tool", backpack)
tool36.Name = "Headlock"
tool36.RequiresHandle = false
writefile("Dances/Headlock.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Headlock.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool36.Equipped:Connect(function()
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

tool36.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool37 = Instance.new("Tool", backpack)
tool37.Name = "Bloodpop"
tool37.RequiresHandle = false
writefile("Dances/bloodpop.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/bloodpop.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool37.Equipped:Connect(function()
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

tool37.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool38 = Instance.new("Tool", backpack)
tool38.Name = "Heavy Love"
tool38.RequiresHandle = false
writefile("Dances/heavylove.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/heavylove.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool38.Equipped:Connect(function()
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

tool38.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool39 = Instance.new("Tool", backpack)
tool39.Name = "Smug Dance"
tool39.RequiresHandle = false
writefile("Dances/Smug.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Smug.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool39.Equipped:Connect(function()
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

tool39.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool40 = Instance.new("Tool", backpack)
tool40.Name = "Hakari"
tool40.RequiresHandle = false
writefile("Dances/TUCA DONKA.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/TUCA%20DONKA.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool40.Equipped:Connect(function()
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

tool40.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool41 = Instance.new("Tool", backpack)
tool41.Name = "Flop"
tool41.RequiresHandle = false
writefile("Dances/DO THE FLOP.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/DO%20THE%20FLOP.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool41.Equipped:Connect(function()
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

tool41.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool42 = Instance.new("Tool", backpack)
tool42.Name = "Doodle"
tool42.RequiresHandle = false
writefile("Dances/Doodle.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Doodle.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool42.Equipped:Connect(function()
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

tool42.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool43 = Instance.new("Tool", backpack)
tool43.Name = "Club Penguin"
tool43.RequiresHandle = false
writefile("Dances/CLUB PENGUIN DANCE.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/CLUB%20PENGUIN%20DANCE.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool43.Equipped:Connect(function()
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

tool43.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool44 = Instance.new("Tool", backpack)
tool44.Name = "Miohonda"
tool44.RequiresHandle = false
writefile("Dances/MioHonda.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/MioHonda.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool44.Equipped:Connect(function()
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

tool44.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool45 = Instance.new("Tool", backpack)
tool45.Name = "Liar Dance"
tool45.RequiresHandle = false
writefile("Dances/Liar.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Liar.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool45.Equipped:Connect(function()
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

tool45.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool46 = Instance.new("Tool", backpack)
tool46.Name = "Firework"
tool46.RequiresHandle = false
writefile("Dances/Firework.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Firework.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool46.Equipped:Connect(function()
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

tool46.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool47 = Instance.new("Tool", backpack)
tool47.Name = "Monster"
tool47.RequiresHandle = false
writefile("Dances/Monster.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Monster.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool47.Equipped:Connect(function()
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

tool47.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool48 = Instance.new("Tool", backpack)
tool48.Name = "Love For You"
tool48.RequiresHandle = false
writefile("Dances/LoveForU.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/LoveForU.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool48.Equipped:Connect(function()
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

tool48.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool49 = Instance.new("Tool", backpack)
tool49.Name = "C14"
tool49.RequiresHandle = false
writefile("Dances/C14.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/C14.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool49.Equipped:Connect(function()
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

tool49.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool50 = Instance.new("Tool", backpack)
tool50.Name = "Dance If Your A Goat"
tool50.RequiresHandle = false
writefile("Dances/Goat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Goat.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool50.Equipped:Connect(function()
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

tool50.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool51 = Instance.new("Tool", backpack)
tool51.Name = "Spooky Month"
tool51.RequiresHandle = false
writefile("Dances/Spooky.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Spooky.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool51.Equipped:Connect(function()
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

tool51.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool52 = Instance.new("Tool", backpack)
tool52.Name = "Silly Billy"
tool52.RequiresHandle = false
writefile("Dances/Billy.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Billy.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool52.Equipped:Connect(function()
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

tool52.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool53 = Instance.new("Tool", backpack)
tool53.Name = "Slickback"
tool53.RequiresHandle = false
writefile("Dances/SlickBack.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/SlickBack.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool53.Equipped:Connect(function()
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

tool53.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool54 = Instance.new("Tool", backpack)
tool54.Name = "Static"
tool54.RequiresHandle = false
writefile("Dances/Static.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Static.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool54.Equipped:Connect(function()
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

tool54.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool55 = Instance.new("Tool", backpack)
tool55.Name = "Heel Toe Hop"
tool55.RequiresHandle = false
writefile("Dances/Heel.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Heel.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool55.Equipped:Connect(function()
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

tool55.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool56 = Instance.new("Tool", backpack)
tool56.Name = "Yippee"
tool56.RequiresHandle = false
writefile("Dances/Yippie.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Yippie.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool56.Equipped:Connect(function()
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

tool56.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool57 = Instance.new("Tool", backpack)
tool57.Name = "Pick Up The Phone"
tool57.RequiresHandle = false
writefile("Dances/Pickup.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Pickup.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool57.Equipped:Connect(function()
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

tool57.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool58 = Instance.new("Tool", backpack)
tool58.Name = "Kemusan"
tool58.RequiresHandle = false
writefile("Dances/Chinese.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Chinese.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool58.Equipped:Connect(function()
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

tool58.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool59 = Instance.new("Tool", backpack)
tool59.Name = "Box Swing"
tool59.RequiresHandle = false
writefile("Dances/Box.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Box.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool59.Equipped:Connect(function()
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

tool59.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool60 = Instance.new("Tool", backpack)
tool60.Name = "Bomb Monkey"
tool60.RequiresHandle = false
writefile("Dances/Monkey.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Monkey.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool60.Equipped:Connect(function()
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

tool60.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool61 = Instance.new("Tool", backpack)
tool61.Name = "Commercial Break"
tool61.RequiresHandle = false
writefile("Dances/Break.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Break.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool61.Equipped:Connect(function()
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

tool61.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool62 = Instance.new("Tool", backpack)
tool62.Name = "Popipo"
tool62.RequiresHandle = false
writefile("Dances/Popipo.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Popipo.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool62.Equipped:Connect(function()
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

tool62.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool63 = Instance.new("Tool", backpack)
tool63.Name = "BirdBrain"
tool63.RequiresHandle = false
writefile("Dances/Birdbrain.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Birdbrain.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool63.Equipped:Connect(function()
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

tool63.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool64 = Instance.new("Tool", backpack)
tool64.Name = "XO"
tool64.RequiresHandle = false
writefile("Dances/XO.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/XO.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool64.Equipped:Connect(function()
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

tool64.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool65 = Instance.new("Tool", backpack)
tool65.Name = "Roar"
tool65.RequiresHandle = false
writefile("Dances/Roar.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Roar.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool65.Equipped:Connect(function()
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

tool65.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool66 = Instance.new("Tool", backpack)
tool66.Name = "Savor The W"
tool66.RequiresHandle = false
writefile("Dances/Savor.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Savor.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool66.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 82123030025988)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Savor.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool66.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool67 = Instance.new("Tool", backpack)
tool67.Name = "Prism Shuffle"
tool67.RequiresHandle = false
writefile("Dances/Prism.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Prism.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool67.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 132979558739339)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Prism.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool67.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool68 = Instance.new("Tool", backpack)
tool68.Name = "Rambunctious"
tool68.RequiresHandle = false
writefile("Dances/Rambunctious.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Rambunctious.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool68.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 112645644540728)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Rambunctious.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool68.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool69 = Instance.new("Tool", backpack)
tool69.Name = "Take Down"
tool69.RequiresHandle = false
writefile("Dances/TakeDown.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/TakeDown.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool69.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 70380478678297)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/TakeDown.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool69.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)