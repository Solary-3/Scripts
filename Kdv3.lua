

if isfile and isfolder and writefile and (getsynasset or getcustomasset) and (not isfolder("Dances")) then
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Hey!";
	Duration = 5;
	Text = "This only shows up once if your new to this."
})
task.wait(1.500)
local Bindable = Instance.new("BindableFunction")
	local function Copy(e)
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Kdv3Audiopacks.lua"))()
		Bindable:Destroy()
	end
	Bindable.OnInvoke = Copy
	game.StarterGui:SetCore("SendNotification",{
		Title = "Mp3 Package ";
		Text = "Click the download button to download the .mp3 package for Krystal Dance V3, its not a virus i swear.";
		Duration = 10;
		Callback = Bindable,
		Button1 = "Download Audios";
	})

task.wait(1.500)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Service";
	Duration = 1;
	Text = "Wait For the mp3 to finish downloading, then the script will run automatically."
})
task.wait(1.500)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Service";
	Duration = 1;
	Text = "Audios Finished Downloading, Now Proceeding to reanimate."
})
task.wait(180)
end



task.wait(1.500)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 1;
	Text = "Checking Updates..."
})
task.wait(1.500)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Kdv3Audiopacks.lua"))() 
-- Automatically Downloads Updates ^
                                ---  |
task.wait(.1)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Reanimate.lua"))()
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 4;
	Text = "This Script Was Made By Hemi, Modified By Paradigm/Theo"
})
task.wait(1.500)
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 1;
	Text = "Krystal Dance V3 On Top! Enjoy!"
})
task.wait(1.950)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 4;
	Text = "If your Experiencing lag issues..."
})
task.wait(1.250)
game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 4;
	Text = "This wasn't meant to run low perfoming devices"
})

if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
task.wait(2.750)
local player = game:GetService("Players").LocalPlayer
    local character = player.Character
    if not character then return end
    -- Play animation
    local Intro = Animator.new(character, 15957361339)
    Intro:Play()
task.wait(3.550)
local is = game:GetService("InsertService")
local idleanim = game:GetObjects("rbxassetid://95706831570411")[1]
local walkanim = game:GetObjects("rbxassetid://130213485744288")[1]
local randompart = Instance.new("Part",game:GetService("RunService"))
local coolparticles = is:LoadLocalAsset("rbxassetid://87299663038091").ParticleAttachment
coolparticles.Parent = randompart
local playbacktrack = true 
local script = Instance.new("LocalScript")
local timeposcur = 0 
local playanother = false
local playing = false
local dancing = false
local rtrnv;
local c;
local tbl3;
local v;
local anim;
local count;
local hhhh;
local asdf;
local s;
local animid;
local plr;
local char=game:GetService("Players").LocalPlayer.Character
local hum=char:FindFirstChildOfClass("Humanoid")
local h=char.Head
local t=char.Torso
local hrp=char.HumanoidRootPart 
local cframe;
local torso;
local rs;
local ls;
local rh;
local lh;
local n;
local rj;
local rsc0;
local lsc0;
local rhc0;
local lhc0;
local rjc0;
local nc02;
local gc0;
local orsc0;
local olsc0;
local orhc0;
local olhc0;
local orjc0;
local onc0;
local count2;
local maxcount2;
local walking = false
local idle = false
local RunService = game:GetService("RunService")
local function getnext(tbl,number)
	c=100
	rtrnv=0
	for i,v in pairs(tbl) do
		if i>number and i-number<c then
c=i-number
rtrnv=i
		end
	end
	return(rtrnv)
end
local function wait2(tim)
	if tim<0.1 then
		game:GetService("RunService").Heartbeat:Wait()
	else
		for i=1,tim*40 do
game:GetService("RunService").Heartbeat:Wait()
		end
	end
end
local function kftotbl(kf) -- Below this is literal pain..
	tbl3 = {}
	for i,v in pairs(kf:GetDescendants()) do
		if v:IsA("Pose") then
tbl3[string.sub(v.Name,1,1)..string.sub(v.Name,#v.Name,#v.Name)] = v.CFrame
		end
	end
	return(tbl3)
end
local sound69 = Instance.new("Sound",game:GetService("RunService"))
sound69.Looped = true
sound69.Name = "danc"
sound69.Playing = true
sound69.Volume = .75
local plr = game.Players.LocalPlayer
local RunService = game:GetService("RunService")

local function functionToBind()
    char.Humanoid:Move(Vector3.new(0,0,-1),false)
end
local script = Instance.new("Script")
ArtificialHB = Instance.new("BindableEvent",script)
ArtificialHB.Name = "Heartbeat"
script:WaitForChild("Heartbeat")
frame = 1 / 60
tf = 0
allowframeloss = false
tossremainder = false
lastframe = tick()
script.Heartbeat:Fire()
game:GetService("RunService").Heartbeat:Connect(function(s,p)
   tf = tf + s
   if tf >= frame then
	   if allowframeloss then
		   script.Heartbeat:Fire()
		   lastframe = tick()
	   else
		   for i = 1,math.floor(tf / frame) do
			pcall(function()
			   script.Heartbeat:Fire()
			end)
		   end
		   lastframe = tick()
	   end
	   if tossremainder then
		   tf = 0
	   else
		   tf = tf - frame * math.floor(tf / frame)
	   end
   end
end)
function swait(num)
   if num == 0 or num == nil then
	   ArtificialHB.Event:Wait()
   else
	   for i = 0,num do
		   ArtificialHB.Event:Wait()
	   end
   end
end

			function fwait(seconds)
				seconds = (seconds < 0.000001) and 0.000001 or seconds -- absolute limit of roblox, anything below just crashes lol so this limits it so it doesnt crash
			
				local event = game:GetService("RunService").PreRender or game:GetService("RunService").Heartbeat
			
				local startTime = tick()
				while tick() - startTime < seconds do
					event:Wait()
				end
			end		
            local legitjustran = false
            local loopsplaying=0 
            local rst 
            local lst
            local rht 
            local lht 
            local nt 
            local rjt
	local function playanim(id,speed,isadance,custominstance)
        playanother = true 
        loopsplaying+=1
        if legitjustran == true then return end
        legitjustran = true 
        if isadance == nil then 
            isadance = true 
        end
        if isadance == true  then 
            sound69.Volume =0
        end
        if dancing == true then 
            sound69:Play()
            sound69.TimePosition = 0
           end
        if dancing == true then 
            walking = false
            idle = false
           end
		if speed == nil then 
			speed = 2000
		end
        if dancing == true then 
            idle = false 
            char.Humanoid:Move(Vector3.new(0,0,-1),true)
            walking = false 
        end
        wait(.005)
        if isadance == true  then 
            sound69.Volume = .75
        end
        if dancing == true then 
            sound69:Play()
            sound69.TimePosition = 0
           end
        legitjustran = false
        playanother = false 
   
        local animid="rbxassetid://"..id
   char = char
   pcall(function()
       hhhh=char.Humanoid.Animator
   hhhh.Parent = nil
   end)
   for _,v in pairs(char.Humanoid:GetPlayingAnimationTracks()) do
       v:Stop()
   end
   cframe = char.HumanoidRootPart.CFrame
   torso = char.Torso
   -----------------------------------------------------------
   local ts = game:GetService("TweenService")
   local tsi = TweenInfo.new(1/(30*speed))
   rs = torso["Right Shoulder"] -- Just took this from another script(Faster).
   ls = torso["Left Shoulder"]
   rh = torso["Right Hip"]
   lh = torso["Left Hip"]
   n = torso["Neck"]
   rj = char.HumanoidRootPart["RootJoint"]
   rsc0 = rs.C0
   lsc0 = ls.C0
   rhc0 = rh.C0
   lhc0 = lh.C0
   rjc0 = rj.C0
   nc02 = n.C0
   gc0 = CFrame.new()
   orsc0 = rs.C0
   olsc0 = ls.C0
   orhc0 = rh.C0
   olhc0 = lh.C0
   orjc0 = rj.C0
   onc0 = n.C0
   count2 = 100
   maxcount2=100
   playanother = false
   frame = 1 / (30*speed)
	if custominstance == nil then
     animid=is:LoadLocalAsset(animid)
	else
		animid = custominstance
	end
    animid.Parent = workspace
     local anim={}
   for i,v in pairs(animid:GetChildren()) do
       if v:IsA("Keyframe") then
           anim[v.Time]=kftotbl(v)
       end
   end
   
   count = 0
   char=char
   if dancing == true then 
    sound69:Play()
    sound69.TimePosition = 0
   end
   plr.CharacterRemoving:Connect(function()
       if playing == true then
           playing = false
       end
   end)
   while true do
    print(loopsplaying)
    if loopsplaying>1 then 
        break
    end
       if playanother == true then
           local deft = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
           rs.Transform = deft
           ls.Transform = deft
           lh.Transform = deft
           rj.Transform = deft
           n.Transform  = deft
           rh.Transform = deft  
           pcall(function()
            rst:Cancel()
            rht:Cancel()
            lht:Cancel()
            lst:Cancel()
            nt:Cancel()
            rjt:Cancel()
        end)

           break
       else
           for i,oasjdadlasdkadkldjkl in pairs(anim) do
  local asdf=getnext(anim,count)
 local  v=anim[asdf]
   if playanother == true then
       local deft = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
       rs.Transform = deft
       ls.Transform = deft
       lh.Transform = deft
       rj.Transform = deft
       n.Transform  = deft
       rh.Transform = deft  
       pcall(function()
        rst:Cancel()
        rht:Cancel()
        lht:Cancel()
        lst:Cancel()
        nt:Cancel()
        rjt:Cancel()
    end)
       break
   end
   if walking == true and char.Humanoid.MoveDirection == Vector3.new(0,0,0) then 
    break 
   end
   frame = 1 / (30*speed)
   if dancing == true and isadance == false then 
    break 
   end
   if dancing == true then 
    walking = false
    idle = false
   end
   if walking == true and idle == true then 
    playanother = true 
   end
   if v["Lg"] then
       lhc0 = v["Lg"]
   end
   if v["Rg"] then
       rhc0 = v["Rg"]
   end
   if v["Lm"] then
       lsc0 = v["Lm"]
   end
   if v["Rm"] then
       rsc0 = v["Rm"]
   end
   if v["To"] then
       rjc0 = v["To"]
   end
   if v["Hd"] then
       nc02 = v["Hd"]
   end
   count2=0
   maxcount2=asdf-count
   count=asdf
    swait(1/(30*speed))
   if playanother == true then
    local deft = CFrame.new(0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1)
    rs.Transform = deft
    ls.Transform = deft
    lh.Transform = deft
    rj.Transform = deft
    n.Transform  = deft
    rh.Transform = deft  
    pcall(function()
        rst:Cancel()
        rht:Cancel()
        lht:Cancel()
        lst:Cancel()
        nt:Cancel()
        rjt:Cancel()
    end)
    break
    end
   count2=maxcount2
   if v["Lg"] then
	lht = ts:Create(char.Torso["Left Hip"],tsi,{Transform = CFrame.new(v["Lg"].p*char:GetScale())*v["Lg"].Rotation}):Play()
      -- char.Torso["Left Hip"].Transform = CFrame.new(v["Lg"].p*char:GetScale())*v["Lg"].Rotation
   end
   if v["Rg"] then
	rht = ts:Create(char.Torso["Right Hip"],tsi,{Transform = CFrame.new(v["Rg"].p*char:GetScale())*v["Rg"].Rotation}):Play()
    --   char.Torso["Right Hip"].Transform = CFrame.new(v["Rg"].p*char:GetScale())*v["Rg"].Rotation
   end
   if v["Lm"] then
	lst = ts:Create(char.Torso["Left Shoulder"],tsi,{Transform = CFrame.new(v["Lm"].p*char:GetScale())*v["Lm"].Rotation}):Play()
     --  char.Torso["Left Shoulder"].Transform =  CFrame.new(v["Lm"].p*char:GetScale())*v["Lm"].Rotation
   end
   if v["Rm"] then
	rst = ts:Create(char.Torso["Right Shoulder"],tsi,{Transform = CFrame.new(v["Rm"].p*char:GetScale())*v["Rm"].Rotation}):Play()
      -- char.Torso["Right Shoulder"].Transform = CFrame.new(v["Rm"].p*char:GetScale())*v["Rm"].Rotation
   end
   if v["To"] then
	rjt = ts:Create(char.HumanoidRootPart["RootJoint"],tsi,{Transform = CFrame.new(v["To"].p*char:GetScale())*v["To"].Rotation}):Play()
      -- char.HumanoidRootPart["RootJoint"].Transform = CFrame.new(v["To"].p*char:GetScale())*v["To"].Rotation
   end
   if v["Hd"] then
	nt = ts:Create(char.Torso["Neck"],tsi,{Transform = CFrame.new(v["Hd"].p*char:GetScale())*v["Hd"].Rotation}):Play()
       --char.Torso["Neck"].Transform =  CFrame.new(v["Hd"].p*char:GetScale())*v["Hd"].Rotation
   end
           end
       end
   end
           end   
           local exploit = "shitsploit"
        pcall(function()
            exploit = getexecutorname()
        end)
	local customasset = function(id)
        if exploit ~= "CaetSploit" then
        idwithoutthatbit= string.gsub(id,"Dances/","")
        if not isfile(id) then 
         writefile(id,game:HttpGet("https://github.com/Nitro-GT/music/raw/refs/heads/main/"..idwithoutthatbit))
        end
       repeat task.wait() until isfile(id)
    end
        local s = Instance.new("Sound")
        s.Parent = game:GetService("RunService")
        s.SoundId = getcustomasset(id)
        task.spawn(function()
            task.wait(1)
            s:Destroy()
        end)
        return s.SoundId
    end
           local exploit = "shitsploit"
        pcall(function()
            exploit = getexecutorname()
        end)
	local customasset = function(id)
        if exploit ~= "CaetSploit" then
        idwithoutthatbit= string.gsub(id,"Dances/","")
        if not isfile(id) then 
         writefile(id,game:HttpGet("https://github.com/Zaki23655/Music/raw/main/"..idwithoutthatbit))
        end
       repeat task.wait() until isfile(id)
    end
        local s = Instance.new("Sound")
        s.Parent = game:GetService("RunService")
        s.SoundId = getcustomasset(id)
        task.spawn(function()
            task.wait(1)
            s:Destroy()
        end)
        return s.SoundId
    end
           local function stopanim()
           if loopsplaying>0 then 
                loopsplaying-=1
           end
            playanother = true 
            playanother = true 
            playanother = true 
            playanother = true 
            sound69.PlaybackSpeed = 1
            if playbacktrack == true then 
            sound69.SoundId = customasset("Dances/doodle - Zachz Winner.mp3")
            sound69.Volume = .65
            else 
                sound69:Stop()
            end
            coolparticles.Parent = randompart
            pcall(function()
                rst:Cancel()
                rht:Cancel()
                lht:Cancel()
                lst:Cancel()
                nt:Cancel()
                rjt:Cancel()
            end)
            if dancing == true then 
                sound69.TimePosition = timeposcur
                dancing = false
                idle = true 
                char.Humanoid:Move(Vector3.new(0,0,-1),true)
                walking = false 
                wait(.065)
                if walking == true and idle == false and  char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and playanother==true  then 
                task.spawn(function()
                playanim(136078657506707,1,false)
                end)
            end
            end
                    end
local mode = 1 


local INPUTLOOP 
local uis = game:GetService("UserInputService")
INPUTLOOP = uis.InputBegan:Connect(function(k,chatting)
	if char.Humanoid.Sit == true then return end
    if chatting then return end 
        local k = string.lower(string.gsub(tostring(k.KeyCode),"Enum.KeyCode.",""))
	if mode == 1 then 
	if k == "q" then 
		if dancing == false then 
            stopanim()
dancing = true
task.wait(.005)
		    sound69.SoundId = customasset("Dances/rat.mp3")
		    timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
		    playanim(98260902889120,1.5)
else
	        stopanim()
		end
	elseif k == "e" then 
		if dancing == false then 
stopanim()
dancing = true
task.wait(.005)
sound69.SoundId = customasset("Dances/xxanteria, isq - FUNKED UP (SLOWED) (320kbps).mp3")
timeposcur = sound69.TimePosition 
sound69:Play()
sound69.Volume = .75
coolparticles.Parent = char.Torso
playanim(16769959846,1.2)
		else
stopanim()

end
		elseif k == "r" then 
if dancing == false then 
	stopanim()
dancing = true
task.wait(.005)
	sound69.SoundId = customasset("Dances/Assumptions.mp3")
	sound69.PlaybackSpeed = 1
	timeposcur = sound69.TimePosition 
sound69:Play()
	playanim(75148929064618,1.2)
else
	stopanim()
	sound69.PlaybackSpeed = 1
	
	end
elseif k == "t" then 
if dancing == false then 
stopanim()
dancing = true
task.wait(.005)
sound69.SoundId = customasset("Dances/Bjean.mp3")
timeposcur = sound69.TimePosition 
sound69:Play()
playanim(108805310510119,1.2)
	else
stopanim()
sound69.PlaybackSpeed = 1
		
end
elseif k == "y" then 
if dancing == false then 
stopanim()
dancing = true
task.wait(.005)
sound69.SoundId = customasset("Dances/Egypt.mp3")
sound69.PlaybackSpeed = 1
timeposcur = sound69.TimePosition 
sound69:Play()
playanim(95986135548450,1.5)
		else
stopanim()

end
    elseif k == "u" then 
if dancing == false then 
    stopanim()
dancing = true
task.wait(.005)
    sound69.SoundId = customasset("Dances/caramell.mp3")
    sound69.PlaybackSpeed = 1
    timeposcur = sound69.TimePosition 
sound69:Play()
    playanim(103597509139287)
else
    stopanim()
    sound69.PlaybackSpeed = 1
    
 end
elseif k == "f" then 
    if dancing == false then 
        stopanim()
dancing = true
task.wait(.005)
        sound69.SoundId = customasset("Dances/Stock.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(86067433847393,0.75)
    else
        stopanim()
        
    end
elseif k == "g" then 
    if dancing == false then 
        stopanim()
dancing = true
task.wait(.005)
        sound69.SoundId = customasset("Dances/gangnamm.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(12438774071)
    else
        stopanim()
        
    end
elseif k == "p" then 
    if dancing == false then 
        stopanim()
dancing = true
task.wait(.005)
        sound69.SoundId = customasset("Dances/Fein.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(115727639577589,1.5)
    else
        stopanim()
        
    end
elseif k == "j" then 
    if dancing == false then 
        stopanim()
dancing = true
task.wait(.005)
        sound69.SoundId = customasset("Dances/dancingin.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(96444866125796)
    else
        stopanim()
        
    end

elseif k == "l" then 
    if dancing == false then 
        stopanim()
    dancing = true
    task.wait(.005)
        sound69.SoundId = customasset("Dances/griddy.mp3")
        char.Humanoid.WalkSpeed = 4*char:GetScale()
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(15704995372)
    else
        char.Humanoid.WalkSpeed = 14*char:GetScale()
        stopanim()
        
    end
elseif k == "z" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/lux.ogg")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(15092317950)
    else
        stopanim()
        
    end
elseif k == "x" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/kazot.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(114036336168567,1)
    else
        stopanim()
        
    end
elseif k == "h" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/doodle - Zachz Winner.mp3")
        timeposcur = sound69.TimePosition 
         char.Humanoid.WalkSpeed = 7*char:GetScale()
sound69:Play()
        playanim(124074233795203,1.5)
    else
    char.Humanoid.WalkSpeed = 14*char:GetScale()
        stopanim()
        
    end
elseif k == "v" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Odetari - KEEP UP (Lyrics) (320kbps).mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(107578737342278,1.5)
    else
        stopanim()
        
    end

elseif k == "c" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Bumblebee.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(10048786578)
    else
        stopanim()
        
    end
elseif k == "n" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Domino.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(126683576461381,1.5)
    else
        stopanim()
        
    end

  elseif k == "comma" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Yamero.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(99905571448278,1.5)
    else
        stopanim()
        
    end
elseif k == "leftbracket" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Crank.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(139148388599834,2)
    else
        stopanim()
        
    end
elseif k == "k" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/SmoothMoves.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(77170841283499,1.5)
    else
        stopanim()
        
    end
    
elseif k == "rightbracket" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Shuba Duck.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(13357063395)
    else
        stopanim()
        
    end
    
    elseif k == "minus" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Odetari - KEEP UP (Lyrics) (320kbps).mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(74512050800520,1.5)
    else
        stopanim()
        
   end
 end
end
if mode == 2 then 
    if k == "q" then 
           if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/unlockit.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(95877864781663,1.5)
    else
        stopanim()
        
           end 
    elseif k == "e" then
        if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/InternetAngel.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(93104787213396,2.5)
    else
        stopanim()
        
                     end 
           elseif k == "r" then
                     if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/freeflow.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(101564911432113)
    else
        stopanim()
        
                     end 
           elseif k == "t" then 
          if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/whateverlike.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(83266223088944)
    else
        stopanim()
        
          end
           elseif k == "y" then 
          if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/balls.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(15039779727)
    else
        stopanim()
        
    end
elseif k == "h" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/faster.ogg")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(10609437925)
    else
        stopanim()
        
    end
elseif k == "g" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/tryna.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(14887006269)
    else
        stopanim()
        
    end
                                elseif k == [[f]] then 
                                    if dancing == false then 
                                        stopanim()
                                        dancing = true
                                        task.wait(.005)
                                        sound69.SoundId = customasset("Dances/chronoshift.mp3")
                                        timeposcur = sound69.TimePosition 
sound69:Play()
                                        playanim(125834337223799)
                                    else
                                        stopanim()
                                        
                                    end
elseif k == "j" then 
    if dancing == false then 
stopanim()
dancing = true
task.wait(.005)
sound69.SoundId = customasset("Dances/dancingwit.mp3")
sound69.PlaybackSpeed = 1
timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
playanim(93585895457618)
    else
stopanim()
sound69.PlaybackSpeed = 1

end
                                elseif k == "k" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/frightfunk.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(70835462045983)
    else
        stopanim()
        
    end
elseif k == "u" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/bloodpop.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(132026285699359)
    else
        stopanim()
        
    end
elseif k == "n" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        playanim(90819860436349)
    else
        stopanim()
        
    end
elseif k == "z" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/leftright.mp3")
        timeposcur = sound69.TimePosition 
        sound69:Play()
        playanim(137845929482571)
    else
        stopanim()
        
    end    
elseif k == "x" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/heavylove.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(85856686932206)
    else
        stopanim()
        
    end
elseif k == "leftbracket" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Smug.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(8360493405)
    else
        stopanim()
        
    end
elseif k == "rightbracket" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/Pp music.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(8483186407)
    else
        stopanim()
        
    end
elseif k == "l" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/ТРИ ПОЛОСКИ ⧸ KOLM TRIIPU ⧸ THREE STRIPES.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(13012728861,10)
    else
        stopanim()
        
    end
elseif k == "comma" then 
    if dancing == false then 
        stopanim()
        dancing = true
        task.wait(.005)
        sound69.SoundId = customasset("Dances/TUCA DONKA.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
coolparticles.Parent = char.Torso
        playanim(92699725136780,1.5)
    else
        stopanim()
        
    end

elseif k == "p" then
    if dancing == false then
       stopanim()
       dancing = true
       task.wait(.005)
       sound69.SoundId = customasset("Dances/DO THE FLOP.mp3")
        timeposcur = sound69.TimePosition
       sound69:play()
       coolparticles.Parent = char.Torso
       playanim(122878040721056)
   else
  stopanim()
    end
    
elseif k == "c" then
  if dancing == false then
    stopanim()
    dancing = true
    task.wait(.005)
    sound69.SoundId = customasset("Dances/Doodle.mp3")
        timeposcur = sound69.TimePosition 
    sound69:Play()
    coolparticles.Parent = char.Torso
    playanim(137721173051346,1.5)
   else
  stopanim()

  end

elseif k == "rightshift" then
  if dancing == false then
    stopanim()
   dancing = true
    task.wait(.005)
    sound69.SoundId = customasset("Dances/CLUB PENGUIN DANCE.mp3")
        timeposcur = sound69.TimePosition 
    sound69:Play()
    coolparticles.Parent = char.Torso
    playanim(89761302048916)
   else
  stopanim()

  end
elseif k == "v" then 
    if dancing == false then 
        stopanim()
dancing = true
task.wait(.005)
        sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(97072681531610,1.5)
    else
        stopanim()
        
    end
  end 
end
if mode == 3 then
if k == "q" then
    if dancing == false then
sound69:Stop()
task.wait(.1)
sound69.SoundId = customasset("Dances/Stop.mp3")
sound69:Play()
        stopanim()
  dancing = true
task.wait(.005)
if dancing == true then
        local Anim = Animator.new(character, 74138372568467)
Anim:Play()
sound69.SoundId = customasset("Dances/UNLIMITEDFLEXWORKS.mp3")
        timeposcur = sound69.TimePosition 

sound69:Play()
local Stop = 1
task.wait(32.246)
for Loop = 1, 10, 1 do
if Stop == 10 then
sound69:Stop()
task.wait(1.550)
break
end
if dancing == true then
    Anim:Play() 
task.wait(32.246)
Stop = Stop +1
end
end
end
    else
        stopanim()
end


elseif k == "e" then 
    if dancing == false then
sound69:Stop()
task.wait(.1)
sound69.SoundId = customasset("Dances/Stop.mp3")
sound69:Play()
        stopanim()
  dancing = true
task.wait(.005)
if dancing == true then
        local Jun = Animator.new(character, 91787441180652)
sound69.SoundId = customasset("Dances/NMG.mp3")
        timeposcur = sound69.TimePosition
sound69:Play()
task.wait(0.550)
Jun:Play()
local StopJun = 1
task.wait(9.22)
for LoopJun = 1, 10, 1 do
if StopJun == 10 then
sound69:Stop()
Jun:Stop()
task.wait(1.550)
break
end
if dancing == true then
    Jun:Play() 
task.wait(9.22)
StopJun = StopJun +1 
end
end
end
    else
        stopanim()
end
elseif k == "f" then 
    if dancing == false then 
        stopanim()
  dancing = true
task.wait(.005)
        --sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(18855618191,0.75)
    else
        stopanim()
end
elseif k == "r" then 
    if dancing == false then 
        stopanim()
  dancing = true
task.wait(.005)
        --sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(18855612259,0.75)
    else
        stopanim()
end
elseif k == "t" then 
    if dancing == false then 
        stopanim()
  dancing = true
task.wait(.005)
        --sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(18855608155,0.75)
    else
        stopanim()
end
elseif k == "y" then 
    if dancing == false then 
        stopanim()
  dancing = true
task.wait(.005)
        --sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(18855613409,0.75)
    else
        stopanim()
end
elseif k == "u" then 
    if dancing == false then 
        stopanim()
  dancing = true
task.wait(.005)
        --sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(18855855016,0.75)
    else
        stopanim()
end
elseif k == "p" then 
    if dancing == false then 
        stopanim()
  dancing = true
task.wait(.005)
        --sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(18855616922,0.75)
    else
        stopanim()
end
end
end
if mode == 4 then
if k == "e" then 
    if dancing == false then 
        stopanim()
dancing = true
task.wait(.005)
        sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(97072681531610,1.5)
    else
        stopanim()
end
elseif k == "q" then 
    if dancing == false then 
        stopanim()
  dancing = true
task.wait(.005)
        sound69.SoundId = customasset("Dances/MioHonda.mp3")
        timeposcur = sound69.TimePosition 
sound69:Play()
        playanim(97072681531610,1.5)
    else
        stopanim()
end
end
end

if k == "equals" then 
    playbacktrack = not playbacktrack
    if dancing == false then 
    if playbacktrack == true then 
        sound69:Play()
        sound69.Volume = .75
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = "Krystal Dance V3";
            Duration = 5;
            Text = "Background music enabled"
        })
    else 
    sound69:Stop()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Krystal Dance V3";
        Duration = 5;
        Text = "Background music disabled"
    })
    end
    end
end
if k == "m" then  --Modes
    if mode == 3 then 
mode = 4
  game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 4"
})
elseif mode == 2 then
    mode = 3 
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 3"
})
elseif mode == 1 then
        mode = 2 
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 2"
})
elseif mode == 4 then 
    mode = 1
    game:GetService("StarterGui"):SetCore("SendNotification", {
	Title = "Krystal Dance V3";
	Duration = 5;
	Text = "Page 1"
})
    end
end
end)











char.Humanoid:GetPropertyChangedSignal("MoveDirection"):Connect(function()
	if char.Humanoid.Sit == false then 
    if char.Humanoid.MoveDirection == Vector3.new(0,0,0) and dancing == false and idle == false then
    walking = false
    idle = true
	stopanim()
	fwait(1/500)
        if idle == true and walking == false and char.Humanoid.MoveDirection == Vector3.new(0,0,0) and dancing == false and playanother==true then
            playanim(0,1,false,idleanim )
            end
        elseif char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and walking == false then 
            char.Humanoid.WalkSpeed = 14*char:GetScale()
            walking = true
            idle = false
            stopanim()
            fwait(1/500)
            if walking == true and idle == false and  char.Humanoid.MoveDirection ~= Vector3.new(0,0,0) and dancing == false and playanother==true  then 
                playanim(130213485744288,1,false,walkanim)
            end
    end
end
    end)
	char.Humanoid:GetPropertyChangedSignal("Sit"):Connect(function()
		print("sit")
		if char.Humanoid.Sit == true then 
			stopanim()
			
			math.randomseed(os.clock())
			if math.random(1,2) == 1 then 
			playanim(133312100962627,1,false)
			else 
			playanim(122775909441631,1,false)
			end
		else 
			stopanim()
			task.wait(.05)
			stopanim()
			char.Humanoid:Move(Vector3.new(0,0,-1),true)
			char.Humanoid:Move(Vector3.new(0,0,-1),true)
			char.Humanoid:Move(Vector3.new(0,0,-1),true)
		end
	end)
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
mbigfedora.Scale = Vector3.new(5, 5, 5)
mbigfedora.MeshId,mbigfedora.TextureId = 'http://www.roblox.com/asset/?id=1125478','http://www.roblox.com/asset/?id=1125479'

for i = 1, 60 do
bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(Root.Position) * CFrame.new(0,-.1,0) * CFrame.Angles(math.rad(0),math.rad(0),math.rad(0)),.09)
task.wait(1/60)
end
wait(.25)
for i = 1, 50 do
bigfedora.CFrame = bigfedora.CFrame:lerp(CFrame.new(char.Head.Position),.05)
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
         --local MousePos = PlayerMouse.Hit.Position
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
--Credits
task.wait(2.5)
--game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("Thanks To SonixDev For Letting me use his Extra pages Function")
tion")
