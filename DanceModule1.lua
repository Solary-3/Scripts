local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local sin=math.sin
local cos=math.cos
local rad=math.rad
local abs=math.abs
local tan=math.tan
local min=math.min
local clamp=math.clamp
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local random=function(a,b) 
return mrandom(a*1000,b*1000)/1000
end
local vmagnitude=vector.magnitude --faster than indexing with Magnitude
local vnormalize=vector.normalize --faster than indexing with Unit

--the script doesnt have to read global varaibles every time to get them
--why not have them saved in local varaibles for faster access times
local next=next
local pcall=pcall
local xpcall=xpcall
local type=type
local typeof=typeof
local game=game
local replicatesignal=replicatesignal

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local cfl=CFrame.lookAt
local angles=CFrame.fromEulerAngles --faster than .Angles
local u2=UDim2.new 
local e=Enum 
local rp=RaycastParams.new 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

local sine=osclock()
local deltaTime=0
local v3_0=v3()
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local cf_0=cf()
local v3_xz=v3_101*10
local v3_xzL=v3_101*250.1
local v3_net=v3_010*25.01
local pdloadedtime=nil

local enumMD=e.MouseBehavior.Default

--not "local function rs" to not assign debug names
local rs=function()
local s=""
for i=1,mrandom(8,15) do
if mrandom(2)==2 then
s=s..schar(mrandom(65,90))
else
s=s..schar(mrandom(97,122))
end
end
return s
end

--it runs even faster if u call __index and __newindex metamethods directly
local getMetamethodFromErrorStack=function(userdata,f,test)
local ret=nil
xpcall(f,function()
ret=debug.info(2,"f")
end,userdata,nil,0)
if (type(ret)~="function") or not test(ret) then
return f
end
return ret
end
local insSet=getMetamethodFromErrorStack(game,function(a,b,c) a[b]=c end,function(f) local a=i("Folder") local b=rs() f(a,"Name",b) return a.Name==b end)
local insGet=getMetamethodFromErrorStack(game,function(a,b) return a[b] end,function(f) local a=i("Folder") local b=rs() a.Name=b return f(a,"Name")==b end)
local cfGet=getMetamethodFromErrorStack(cf_0,function(a,b) return a[b] end,function(f) return f(cf(1,2,3),"Position")==v3(1,2,3) end)
local cfMul=getMetamethodFromErrorStack(cf_0,function(a,b) return a*b end,function(f) return angles(1,2,3)*angles(1,2,3)==f(angles(1,2,3),angles(1,2,3)) end)
local cfAdd=getMetamethodFromErrorStack(cf_0,function(a,b) return a+b end,function(f) return cf(1,2,3)+v3(1,2,3)==f(cf(1,2,3),v3(1,2,3)) end)
local v3Get=getMetamethodFromErrorStack(v3_0,function(a,b) return a[b] end,function(f) return v3(1,2,3).Unit==f(v3(1,2,3),"Unit") end)
local v2Get=getMetamethodFromErrorStack(v2(),function(a,b) return a[b] end,function(f) return f(v2(1,2),"Y")==2 end)
--multiplying and adding vector3 is faster if you use the * and + operators
--its faster to multiply X and Y of vector2 than to multiply vector2 and then get X and Y from it

--no need to index instances every time to call their functions
local Clone=insGet(game,"Clone")
local ClearAllChildren=insGet(game,"ClearAllChildren")
local Destroy=insGet(game,"Destroy")
local IsA=insGet(game,"IsA")
local FindFirstChildOfClass=insGet(game,"FindFirstChildOfClass")
local FindFirstChild=insGet(game,"FindFirstChild")
local FindFirstChildWhichIsA=insGet(game,"FindFirstChildWhichIsA")
local GetChildren=insGet(game,"GetChildren")
local IsDescendantOf=insGet(game,"IsDescendantOf")
local QueryDescendants=insGet(game,"QueryDescendants")
local GetPropertyChangedSignal=insGet(game,"GetPropertyChangedSignal")

--findfirstchildofclass faster than getservice
local plrs=FindFirstChildOfClass(game,"Players")
local rus=FindFirstChildOfClass(game,"RunService")
local ws=FindFirstChildOfClass(game,"Workspace")
local uis=FindFirstChildOfClass(game,"UserInputService")
local gs=FindFirstChildOfClass(game,"GuiService")
local sg=FindFirstChildOfClass(game,"StarterGui")
local lp=insGet(plrs,"LocalPlayer")
local pg=FindFirstChildOfClass(lp,"PlayerGui")
local mouse=insGet(lp,"GetMouse")(lp)
--local cdsb=insGet(lp,"ConnectDiedSignalBackend")
local rst=insGet(plrs,"RespawnTime")+0.07 --1/15
local preanimation=insGet(rus,"PreAnimation")
local heartbeat=insGet(rus,"Heartbeat")
local renderstepped=insGet(rus,"RenderStepped")
local PostSimulation=insGet(rus,"PostSimulation")
local PreSimulation=insGet(rus,"PreSimulation")
local GetPlayers=insGet(plrs,"GetPlayers")
local SetCoreGuiEnabled=insGet(sg,"SetCoreGuiEnabled")
local GetCoreGuiEnabled=insGet(sg,"GetCoreGuiEnabled")
local Raycast=insGet(ws,"Raycast")
local Connect=heartbeat.Connect
local Disconnect=Connect(GetPropertyChangedSignal(game,"CreatorId"),type).Disconnect
local Wait=heartbeat.Wait
local GetMouseLocation=insGet(uis,"GetMouseLocation")
local GetFocusedTextBox=insGet(uis,"GetFocusedTextBox")
local GetMouseDelta=insGet(uis,"GetMouseDelta")
local IsMouseButtonPressed=insGet(uis,"IsMouseButtonPressed")
local IsKeyDown=insGet(uis,"IsKeyDown")
local GetDescendants=insGet(game,"GetDescendants")

local Inverse=cfGet(cf_0,"Inverse")
local Lerp=cfGet(cf_0,"Lerp")
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new 
local nr=NumberRange.new 
local u2scale=UDim2.fromScale
local u2offset=UDim2.fromOffset
local RigsTable={}
local VLerp=v3_0.Lerp
local ULerp=u2().Lerp
local CLerp=c3().Lerp





local modules = {}


--[[
// Some of the built in dance modules belongs to Steve 
Credits to Uhhh Reanimatevand its developer(s)
]]

function AddModule(m)
table.insert(modules,m)
end

AddModule(function()
	local m = {}

	m.ModuleType  = "DANCE"
	m.Name        = "Nightmail"
	m.Description = "This is a Nightmail crossing the border, bringing the cheques on the postal border, letters for the rich, letters for the poor, i stop at the corner the girl next door"
	m.Looped = true

	m.Assets = {
		"Nightmail.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Nightmail.lua",
		"Nightmail.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Nightmail.mp3?raw=true",
	}

	m.Config     = function(parent) Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center) end
	m.SaveConfig = function() return {} end
	m.LoadConfig = function(save) end

	local animator = nil
	local start    = 0

	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("Nightmail.mp3"))

		start           = os.clock()
		animator        = AnimLib.Animator.new()
		animator.rig    = figure
		animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Nightmail.lua"))
		animator.looped = true
		animator.speed  = 1
	end

	m.Update = function(dt, figure)
		if animator then
			animator:Step(GetOverrideDanceMusicTime())
		end
	end

	m.Destroy = function(figure)
		animator = nil
	end

	return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Nightmail 1"
    m.Description = "This is a Nightmail crossing the border, bringing the cheques on the postal border, letters for the rich, letters for the poor, i stop at the corner the girl next door"
    m.Assets = {
      "Nightmail1.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Nightmail1.lua",
      "Nightmail.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Nightmail.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("Nightmail.mp3"))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Nightmail1.lua"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
	local m = {}

	m.ModuleType  = "DANCE"
	m.Name        = "Igaku (Steves Version)"
	m.Description = "Steve wants you know that this version of Igaku was made by him"

	m.Assets = {
		"IgakuSutibu.anim@https://github.com/Solary-3/Scripts/raw/refs/heads/main/IgakuSutibu.anim",
		"Igaku.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Igaku.mp3?raw=true",
	}

	m.Config     = function(parent) Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center) end
	m.SaveConfig = function() return {} end
	m.LoadConfig = function(save) end

	local animator = nil
	local start    = 0

	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("Igaku.mp3"))

		start           = os.clock()
		animator        = AnimLib.Animator.new()
		animator.rig    = figure
		animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("IgakuSutibu.anim"))
		animator.looped = true
		animator.speed  = .85
	end

	m.Update = function(dt, figure)
		if animator then
			animator:Step(GetOverrideDanceMusicTime())
		end
	end

	m.Destroy = function(figure)
		animator = nil
	end

	return m
end)

AddModule(function()
	local m = {}

	m.ModuleType  = "DANCE"
	m.Name        = "Hito Mania"
	m.Description = "Bssically Teto Core"
	m.Looped = true

	m.Assets = {
		"Hito Mania.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Hito Mania.lua",
		"Hito Mania.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Hito Mania.mp3?raw=true",
	}

	m.Config     = function(parent) Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center) end
	m.SaveConfig = function() return {} end
	m.LoadConfig = function(save) end

	local animator = nil
	local start    = 0

	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("Hito Mania.mp3"))

		start           = os.clock()
		animator        = AnimLib.Animator.new()
		animator.rig    = figure
		animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Hito Mania.lua"))
		animator.looped = true
		animator.speed  = 1
	end

	m.Update = function(dt, figure)
		if animator then
			animator:Step(GetOverrideDanceMusicTime())
		end
	end

	m.Destroy = function(figure)
		animator = nil
	end

	return m
end)

AddModule(function()
	local m = {}

	m.ModuleType  = "DANCE"
	m.Name        = "Skeleton 2"
	m.Looped = true

	m.Assets = {
		"Skeleton 2.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Skeleton 2.lua",
		"Skeleton2.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Skeleton2.mp3?raw=true",
	}

	m.Config     = function(parent) Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center) end
	m.SaveConfig = function() return {} end
	m.LoadConfig = function(save) end

	local animator = nil
	local start    = 0

	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("Skeleton2.mp3"))

		start           = os.clock()
		animator        = AnimLib.Animator.new()
		animator.rig    = figure
		animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Skeleton 2.lua"))
		animator.looped = true
		animator.speed  = 1
	end

	m.Update = function(dt, figure)
		if animator then
			animator:Step(GetOverrideDanceMusicTime())
		end
	end

	m.Destroy = function(figure)
		animator = nil
	end

	return m
end)

AddModule(function()
	local m = {}

	m.ModuleType  = "DANCE"
	m.Name        = "Otsukare Summer"
	m.Description = " "
	m.Looped = true

	m.Assets = {
		"Otsukare Summer.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Otsukare Summer.lua",
		"OtsukareSummer.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/OtsukareSummer.mp3?raw=true",
	}

	-- No config options needed for this test
	m.Config     = function(parent) Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center) end
	m.SaveConfig = function() return {} end
	m.LoadConfig = function(save) end

	local animator = nil
	local start    = 0

	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("OtsukareSummer.mp3"))

		start           = os.clock()
		animator        = AnimLib.Animator.new()
		animator.rig    = figure
		animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Otsukare Summer.lua"))
		animator.looped = true
		animator.speed  = 1
	end

	m.Update = function(dt, figure)
		if animator then
			animator:Step(GetOverrideDanceMusicTime())
		end
	end

	m.Destroy = function(figure)
		animator = nil
	end

	return m
end)

AddModule(function()
	local m = {}

	m.ModuleType  = "DANCE"
	m.Name        = "Mesmerizer 2"
	m.Description = "No way its the third variant"
	m.Looped = true

	m.Assets = {
		"Mesmerizer 3.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Mesmerizer 3.lua",
		"Mesmerizer.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Mesmerizer.mp3?raw=true",
	}

	m.Config     = function(parent) Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center) end
	m.SaveConfig = function() return {} end
	m.LoadConfig = function(save) end

	local animator = nil
	local start    = 0

	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("Mesmerizer.mp3"))

		start           = os.clock()
		animator        = AnimLib.Animator.new()
		animator.rig    = figure
		animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Mesmerizer 3.lua"))
		animator.looped = true
		animator.speed  = 1
	end

	m.Update = function(dt, figure)
		if animator then
			animator:Step(GetOverrideDanceMusicTime())
		end
	end

	m.Destroy = function(figure)
		animator = nil
	end

	return m
end)

AddModule(function()
	local m = {}

	m.ModuleType  = "DANCE"
	m.Name        = "DoorStuck"
	m.Description = " "
	m.Looped = true

	m.Assets = {
		"DoorStuck.anim@https://github.com/Solary-3/Scripts/raw/refs/heads/main/DoorStuck.anim",
		"door.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/door.mp3?raw=true",
	}

	m.Config     = function(parent) Util_CreateText(parent, " ", 14, Enum.TextXAlignment.Center) end
	m.SaveConfig = function() return {} end
	m.LoadConfig = function(save) end

	local animator = nil
	local start    = 0

	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("door.mp3"))

		start           = os.clock()
		animator        = AnimLib.Animator.new()
		animator.rig    = figure
		animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("DoorStuck.anim"))
		animator.looped = true
		animator.speed  = 1
	end

	m.Update = function(dt, figure)
		if animator then
			animator:Step(GetOverrideDanceMusicTime())
		end
	end

	m.Destroy = function(figure)
		animator = nil
	end

	return m
end)

AddModule(function()
	local m = {}
	m.ModuleType = "DANCE"
	m.Name = "Terraria Swing dance"
	m.Description = "enjoy enjoy enjoy enjoy enjoy enjoy\n-- Credits To Steve"
	m.Assets = {"BusetA.anim@https://github.com/Solary-3/Scripts/raw/refs/heads/main/BusetA.anim",
	  "BusetB.anim@https://github.com/Solary-3/Scripts/raw/refs/heads/main/BusetB.anim",
	  "Buset.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Buset.mp3?raw=true"
	}

		m.MoveForward = false
	  m.Config = function(parent: GuiBase2d)
		Util_CreateSwitch(parent, "Move Forward", m.MoveForward).Changed:Connect(function(val)
			m.MoveForward = val
		end)
	end
	m.LoadConfig = function(save: any)
		m.MoveForward = not not save.MoveForward
	end
	m.SaveConfig = function()
		return {
			MoveForward = m.MoveForward
		}
	end

	local allbusets = {{9, 27.216}, {31.945, 49.95}, {54.557, 72.494}, {77.534, 95.14}}

	local animator1, animator2 = nil, nil
	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("Buset.mp3"))
		animator1 = AnimLib.Animator.new()
		animator1.rig = figure
		animator1.looped = true
		animator1.alpha = 50
		animator1.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("BusetA.anim"))
		animator2 = AnimLib.Animator.new()
		animator2.rig = figure
		animator2.looped = false
		animator2.alpha = 50
		animator2.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("BusetB.anim"))
	end
	m.Update = function(dt, figure)
		local t = GetOverrideDanceMusicTime()
		local s, e = 6767, 6768
		for i=1, #allbusets do
			if t < allbusets[i][2] then
				s, e = allbusets[i][1], allbusets[i][2]
				break
			end
		end
		local m2 = (e - s) / 32
		local t2 = ((t - s) / m2) + 0.28
		if t2 < -8 then
			animator1:Step(t)
		elseif t2 < 0 then
			if t2 < -2 and m.MoveForward then
				local root = figure:FindFirstChild("HumanoidRootPart")
				root.CFrame *= CFrame.new(0, 0, -dt * 3.5 * figure:GetScale())
			end
			animator2:Step(4.8 * (1 - (t2 / -8)))
		elseif t2>=0 then 
			animator2:Step(4.8 + (t2 % 1) * 0.57)
		end
	end
	m.Destroy = function(figure)
		animator1 = nil
		animator2 = nil
		--table.clear(allbusets)
	end
	return m
end)

AddModule(function()
	local m = {}
	m.ModuleType = "DANCE"
	m.Name = "When Your Phone Dies"
	m.Description = "People in japan when their phone dies\nJapan also making electricity with footsteps"
	m.Assets = {
	  "When Your Phone Dies.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/When Your Phone Dies.lua", 
	  "When Your Phone Dies.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/When Your Phone Dies.mp3?raw=true"
	}

		m.MoveForward = false
	  m.Config = function(parent: GuiBase2d)
		Util_CreateSwitch(parent, "Move Forward", m.MoveForward).Changed:Connect(function(val)
			m.MoveForward = val
		end)
	end
	m.LoadConfig = function(save: any)
		m.MoveForward = not not save.MoveForward
	end
	m.SaveConfig = function()
		return {
			MoveForward = m.MoveForward
		}
	end


	local animator1, animator2 = nil, nil
	m.Init = function(figure)
		SetOverrideDanceMusic(AssetGetContentId("When Your Phone Dies.mp3"))
		animator1 = AnimLib.Animator.new()
		animator1.rig = figure
		animator1.looped = true
		animator1.alpha = 50
		animator1.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("When Your Phone Dies.lua"))
		
	end
	m.Update = function(dt, figure)
		local t = GetOverrideDanceMusicTime()
		if m.MoveForward then 
		  local root = figure:FindFirstChild("HumanoidRootPart")
				root.CFrame *= CFrame.new(0, 0, -dt * 1.5 * figure:GetScale())
		end
	  animator1:Step(t)
	end
	m.Destroy = function(figure)
		animator1 = nil
		animator2 = nil
		--table.clear(allbusets)
	end
	return m
end)

AddModule(function()
	local m = {}
	m.ModuleType = "DANCE"
	m.Name = "Kai Cenat And Speed Jumping"
	m.Description = "adventures of luigi and mario\nW SPEED\n--Credits To Steve The Commone One\nthis uses no keyframes"
	m.InternalName = "SpeedAndKaiCenat"
	m.Assets = {
	  "SpeedJumping.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/SpeedJumping.mp3?raw=true"
	}

	m.Intro = true
	m.DifferentTiming = false
	m.LegFix = false
	m.CorrectFlipping = false
	m.PoseToTheFans = true
	m.MusicVariant = 1
	m.Config = function(parent: GuiBase2d)
		Util_CreateSwitch(parent, "Intro", m.Intro).Changed:Connect(function(val)
			m.Intro = val
		end)
		Util_CreateDropdown(parent, "Variant", {"Speed", "Kai Cenat"}, m.DifferentTiming and 2 or 1).Changed:Connect(function(val)
			m.DifferentTiming = val == 2
		end)
		Util_CreateSwitch(parent, "Correct Jumping", m.LegFix).Changed:Connect(function(val)
			m.LegFix = val
		end)
		Util_CreateSwitch(parent, "Correct Flipping", m.CorrectFlipping).Changed:Connect(function(val)
			m.CorrectFlipping = val
		end)
		Util_CreateSwitch(parent, "Pose for the fans", m.PoseToTheFans).Changed:Connect(function(val)
			m.PoseToTheFans = val
		end)
		Util_CreateDropdown(parent, "Music Variant", {"Normal", "Christmas"}, m.MusicVariant).Changed:Connect(function(val)
			m.MusicVariant = val
		end)
	end
	m.LoadConfig = function(save: any)
		m.Intro = not not save.Intro
		m.DifferentTiming = not not save.KaiCenat
		m.LegFix = not not save.LegFix
		m.CorrectFlipping = not not save.CorrectFlipping
		m.PoseToTheFans = not save.DontPose
		m.MusicVariant = save.MusicVariant or m.MusicVariant
	end
	m.SaveConfig = function()
		return {
			Intro = m.Intro,
			KaiCenat = m.DifferentTiming,
			LegFix = m.LegFix,
			CorrectFlipping = m.CorrectFlipping,
			DontPose = not m.PoseToTheFans,
			MusicVariant = m.MusicVariant
		}
	end

	m.Init = function(figure: Model)
		if m.MusicVariant == 1 then
			SetOverrideDanceMusic(AssetGetContentId("SpeedJumping.mp3"), "BABY LAUGH JERSEY FUNK", 1, NumberRange.new(5.516, 19.726))
		end
		if m.MusicVariant == 2 then
			SetOverrideDanceMusic(AssetGetContentId("SpeedJumpingDec.mp3"), "BABY LAUGH JOLLY BEAT", 1, NumberRange.new(5.516, 19.726))
		end
		if not m.Intro then
			SetOverrideDanceMusicTime(5.516)
		end
	end
	m.Update = function(dt: number, figure: Model)
		local t = GetOverrideDanceMusicTime()

		local hum = figure:FindFirstChild("Humanoid")
		if not hum then return end
		local root = figure:FindFirstChild("HumanoidRootPart")
		if not root then return end
		local torso = figure:FindFirstChild("Torso")
		if not torso then return end

		local scale = figure:GetScale()

		local rj = root:FindFirstChild("RootJoint")
		local nj = torso:FindFirstChild("Neck")
		local rsj = torso:FindFirstChild("Right Shoulder")
		local lsj = torso:FindFirstChild("Left Shoulder")
		local rhj = torso:FindFirstChild("Right Hip")
		local lhj = torso:FindFirstChild("Left Hip")

		if t < 5.516 then
			local dur = 0.5
			if t > 2.695 then
				dur = 5
			end
			if t > 3.593 then
				dur = 0.25
			end
			if t > 4.333 then
				dur = 0.05
			end
			local sine = math.sin((t / dur) * math.pi * 2)
			rj.Transform = CFrame.new(0, 0, -2.5 * scale) * CFrame.Angles(math.rad(-90), 0, math.rad(sine * 10))
			nj.Transform = CFrame.identity
			rsj.Transform = CFrame.Angles(0, 0, sine)
			lsj.Transform = CFrame.Angles(0, 0, sine)
			rhj.Transform = CFrame.Angles(0, 0, -sine)
			lhj.Transform = CFrame.Angles(0, 0, -sine)
		else
			local animt = ((t - 5.516) / 7.105) % 1
			local beat = animt * 16 -- 16 jumps
			local beat2 = beat
			local xaxis = animt * 4
			if m.DifferentTiming then
				beat2 -= 0.1 + math.sin(((beat + 1) / 4) * math.pi * 2) * 0.1
				xaxis += 0.67
			end
			local height = 1 - math.pow(1 - math.abs(math.sin(beat2 * math.pi)), 2)
			local yspint, zspint = beat2 % 8, (beat2 + 4) % 8
			if m.CorrectFlipping then
				if m.DifferentTiming then
					yspint, zspint = (beat2 + 1) % 4, 0
				else
					yspint, zspint = 0, beat2 % 4
				end
			end
			local yspin, zspin = math.pow(1 - math.min(yspint, 1), 2) * math.pi * 2, math.pow(1 - math.min(zspint, 1), 4) * math.pi * 2
			if m.CorrectFlipping then
				if not m.DifferentTiming then
					zspin = -zspin
				end
			elseif beat >= 8 then
				yspin, zspin = -yspin, -zspin
			end
			local armssine = 1 - math.pow(1 - math.abs(math.sin(math.pow(beat2 % 1, 3) * math.pi)), 2)
			local arms = math.rad(-75 * armssine)
			local legs = math.rad(-30 * math.abs(math.sin(beat2 * math.pi)))
			if m.LegFix then
				local alpha = 1 - height
				arms = math.rad(-75 * alpha)
				legs = math.rad(-30 * alpha)
			end
			rj.Transform = CFrame.new(math.sin(xaxis * math.pi) * 6.7 * scale, 0, height * 4.1 * scale) * CFrame.Angles(0, zspin, yspin)
			nj.Transform = CFrame.identity
			rsj.Transform = CFrame.Angles(arms, 0, 0)
			lsj.Transform = CFrame.Angles(arms, 0, 0)
			rhj.Transform = CFrame.Angles(legs, 0, 0)
			lhj.Transform = CFrame.Angles(legs, 0, 0)
			if m.PoseToTheFans and beat >= 15 then
				local a = math.sin((beat - 15) * math.pi)
				local b = 1 - a
				if m.DifferentTiming then
					rj.Transform = rj.Transform:Lerp(CFrame.new(0, -3 * scale, 3 * scale) * CFrame.Angles(math.rad(-10), math.rad(-10), 0), a)
					rsj.Transform = CFrame.Angles(arms * b, 0, 3.14 * a)
					lsj.Transform = CFrame.Angles(arms * b, 0, -3.14 * a)
					rhj.Transform = CFrame.Angles(legs * b, 0, 0)
					lhj.Transform = CFrame.Angles(legs * b, 0, 0)
				else
					rj.Transform = rj.Transform:Lerp(CFrame.new(0, -5 * scale, 2 * scale) * CFrame.Angles(math.rad(-10), math.rad(10), 0), a)
					rsj.Transform = CFrame.Angles(arms * b, 0, 1.57 * a)
					lsj.Transform = CFrame.Angles(arms * b, 0, 1 * a)
					rhj.Transform = CFrame.Angles(legs * b, 0, 1 * a)
					lhj.Transform = CFrame.Angles(legs * b, 0, 1.57 * a)
				end
			end
		end
	end
	m.Destroy = function(figure)
	end
	return m
end)

AddModule(function()
	local m = {}
	m.ModuleType = "DANCE"
	m.Name = "Popipo"
	m.Description = "i know you want my vegetable juice\nfirst dance to use rbxm\ni dont recommend doing what i did for this dance though, this is just a good example of how to put stuff in stuff\n -- Credits to Steve"
	m.Assets = {
	  "PopipoDance.anim@https://github.com/Solary-3/Scripts/raw/refs/heads/main/PopipoDance.anim",
	  "PopipoShake.anim@https://github.com/Solary-3/Scripts/raw/refs/heads/main/PopipoShake.anim",
	  "Popipo.rbxm@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Popipo.rbxm",
	  "Popipo(1).mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Popipo(1).mp3?raw=true",
	  "PopipoAlt.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/PopipoAlt.mp3?raw=true"
	}

	m.Effects = true
	m.Config = function(parent: GuiBase2d)
		Util_CreateSwitch(parent, "Effects", m.Effects).Changed:Connect(function(val)
			m.Effects = val
		end)
	end
	m.LoadConfig = function(save: any)
		m.Effects = not save.NoEffects
	end
	m.SaveConfig = function()
		return {
			NoEffects = not m.Effects
		}
	end

	-- vege table
	local vegetable = {"GreenPepper", "Carrot", "Eggplant", "Radish", "Cabbage", "OrangePepper", "Spinach", "Lemon", "Tomato", "Onion", "Banana", "Pumpkin", "RedPepper", "CabbageSphere", "Brocolli", "Apple"}

	local animator1 = nil
	local animator2 = nil
	local instances = {}
	local modelcf = {}
	local HIDECF = CFrame.new(0, -9e9, 0)
	local function pivotto(bp, cf)
		if modelcf[bp] ~= cf then
			modelcf[bp] = cf
			bp:PivotTo(cf)
		end
	end
	m.Init = function(figure: Model)
		if math.random() > 0.67 then
			SetOverrideDanceMusic(AssetGetContentId("PopipoAlt.mp3"), "po pi po pi po po pi po", 1, NumberRange.new(19.2, 57.613))
		else
			SetOverrideDanceMusic(AssetGetContentId("Popipo(1).mp3"), "po pi po pi po po pi po", 1, NumberRange.new(19.2, 57.63))
		end
		animator1 = AnimLib.Animator.new()
		animator1.rig = figure
		animator1.looped = true
		animator1.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("PopipoDance.anim"))
		animator1.map = {{0, 3.201}, {0, 3.2}}
		animator2 = AnimLib.Animator.new()
		animator2.rig = figure
		animator2.looped = false
		animator2.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("PopipoShake.anim"))
		animator2.map = {{31.8, 44.8}, {0, 12.88}}
		for _,v in instances do v:Destroy() end
		modelcf = {}
		if m.Effects then
			local vegetables = game:GetObjects(AssetGetContentId("Popipo.rbxm"))[1]
			vegetables:ScaleTo(figure:GetScale())
			for _,v in vegetables:GetChildren() do
				instances[v.Name] = v
				v.Name = "miku miku oo ee oo - " .. v.Name
				pivotto(v, HIDECF)
			end
			for _,name in vegetable do
				instances[name .. "2"] = instances[name]:Clone()
				instances[name .. "2"].Parent = vegetables
			end
			vegetables.Name = "miku miku oo ee oo"
			vegetables.Parent = workspace
			instances.Model = vegetables
		end
	end
	m.Update = function(dt: number, figure: Model)
		local t = GetOverrideDanceMusicTime()
		if t >= 31.8 and t <= 44.8 then
			animator2:Step(t)
		elseif t >= 19.2 then
			animator1:Step(t + 0.4)
		else
			animator1:Step(t)
		end
		local root = figure:FindFirstChild("HumanoidRootPart")
		if not root then return end
		local larm = figure:FindFirstChild("Left Arm")
		if not larm then return end
		local rarm = figure:FindFirstChild("Right Arm")
		if not rarm then return end
		local scale = figure:GetScale()
		local beat = t / 0.4
		local beatm = beat % 1
		local vbeat = (t + 0.2) / 0.4
		local vbeatm = vbeat % 1
		local vypos = (2 * vbeatm - 1.625 * math.clamp(vbeatm, 0.2, 0.8) - 0.1875) * 8
		local currentvegetable = vegetable[math.floor(vbeat % 16) + 1]
		if t < 25.4 then
			currentvegetable = ""
		end
		if t >= 31.8 and t < 44.8 then
			currentvegetable = ""
		end
		for _,name in vegetable do
			if instances[name] and instances[name .. "2"] then
				if name == currentvegetable then
					pivotto(instances[name], root.CFrame * CFrame.new(-5 * scale, vypos * scale, 0))
					pivotto(instances[name .. "2"], root.CFrame * CFrame.new(5 * scale, vypos * scale, 0))
				else
					pivotto(instances[name], HIDECF)
					pivotto(instances[name .. "2"], HIDECF)
				end
			end
		end
		if instances.Background1 and instances.Background2 and instances.Background3 then
			if t >= 31.8 and t < 38.057 then
				pivotto(instances.Juice, rarm.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(-1.57, 0, 0))
				pivotto(instances.Background1, HIDECF)
				pivotto(instances.Background3.A, HIDECF)
				pivotto(instances.Background3.B, HIDECF)
				pivotto(instances.Background3.C, HIDECF)
				pivotto(instances.Background2, root.CFrame * CFrame.new(-4 * scale, 0, 6 * scale) * CFrame.Angles(0, 0, t / 8))
			elseif t >= 31.8 and t < 41.489 then
				pivotto(instances.Juice, larm.CFrame * CFrame.new(0, -1, 0) * CFrame.Angles(-1.57, 0, 0))
				pivotto(instances.Background1, HIDECF)
				pivotto(instances.Background3.A, HIDECF)
				pivotto(instances.Background3.B, HIDECF)
				pivotto(instances.Background3.C, HIDECF)
				pivotto(instances.Background2, root.CFrame * CFrame.new(4 * scale, 0, 6 * scale) * CFrame.Angles(0, 0, t / 8))
			elseif t >= 31.8 and t < 44.8 then
				pivotto(instances.Juice, HIDECF)
				local a = t - 41.4
				a = 3 * a - math.max(0, a - 0.2) * 2.91015625
				pivotto(instances.Background1, HIDECF)
				pivotto(instances.Background2, HIDECF)
				local la = CFrame.new(0, 3 + a, 0) * CFrame.Angles(0, 0, a * 0.7)
				local lb = CFrame.new(0, a * 0.5, 0) * CFrame.Angles(0, 0, a * 0.1)
				local lc = CFrame.new(0, -3 - a, 0) * CFrame.Angles(0, 0, a * -0.7)
				pivotto(instances.Background3.A, root.CFrame * CFrame.new(0, 0, 4 * scale) * la)
				pivotto(instances.Background3.B, root.CFrame * CFrame.new(0, 0, 4 * scale) * lb)
				pivotto(instances.Background3.C, root.CFrame * CFrame.new(0, 0, 4 * scale) * lc)
			else
				pivotto(instances.Juice, HIDECF)
				pivotto(instances.Background2, HIDECF)
				pivotto(instances.Background3.A, HIDECF)
				pivotto(instances.Background3.B, HIDECF)
				pivotto(instances.Background3.C, HIDECF)
				pivotto(instances.Background1, root.CFrame * CFrame.new(0, 0, 4 * scale))
				local circle = 8 - beatm * 2 + math.max(0, beatm * 8 - 6)
				circle *= 2 - math.min(math.max(0, t - 18.8) / 0.4, 1)
				instances.Background1.A.Size = Vector3.new(0.5, circle, circle)
				instances.Background1.B.Size = Vector3.new(0.4, circle + 1, circle + 1)
				instances.Background1.C.Size = Vector3.new(0.3, circle + 2, circle + 2)
				local r = (t - 19.2) * 8
				local r1, r2 = math.max(0, r) % 40, math.max(0, r - 20) % 40
				instances.Background1.Ring1.Size = Vector3.new(0.3, r1, r1)
				instances.Background1.Ring2.Size = Vector3.new(0.3, r2, r2)
			end
		end
	end
	m.Destroy = function(figure: Model?)
		animator1 = nil
		animator2 = nil
		for _,v in instances do v:Destroy() end
	end
	return m
end)

AddModule(function()
	local m = {}
	m.ModuleType = "DANCE"
	m.Name = "Eyes Closed"
	m.Description = "performative male's favorite artist but fyeeee"
	m.Assets = {
	  "Eyesclosed.anim@https://github.com/valttasar/Valttas-Port-Content/raw/refs/heads/main/Eyes%20Closed/Eyesclosed.anim",
	  "Eyesclosed.mp3@https://github.com/valttasar/Valttas-Port-Content/raw/refs/heads/main/Eyes%20Closed/Eyesclosed.mp3"
	}

	m.Effects = true
	m.Config = function(parent: GuiBase2d)
		Util_CreateSwitch(parent, "Effects", m.Effects).Changed:Connect(function(val)
			m.Effects = val
		end)
	end
	m.LoadConfig = function(save: any)
		m.Effects = not save.NoEffects
	end
	m.SaveConfig = function()
		return {
			NoEffects = not m.Effects
		}
	end

	local animator = nil
	local start = 0
	local instances = {}
	local ringPart = nil
	local ringBars = {}
	local ringSegments = 64
	local ghostTimer = 0
	local activeGhosts = {}
	local ghostColor = Color3.fromRGB(0, 255, 255)

	local function spawnGhost(figure)
		local ghost = Instance.new("Model")
		ghost.Name = "EyesClosedGhost"
		local parts = {"Head", "Torso", "Left Arm", "Right Arm", "Left Leg", "Right Leg"}
		for _, name in parts do
			local src = figure:FindFirstChild(name)
			if not src then continue end
			local p = Instance.new("Part")
			p.Name = name
			p.Anchored = true
			p.CanCollide = false
			p.CanTouch = false
			p.CanQuery = false
			p.CastShadow = false
			p.Color = ghostColor
			p.Material = Enum.Material.Neon
			p.Transparency = 0.55
			if name == "Head" then
				p.Shape = Enum.PartType.Cylinder
				p.Size = Vector3.new(src.Size.Y, src.Size.X, src.Size.Z)
				p.CFrame = src.CFrame * CFrame.Angles(0, 0, math.pi / 2)
			else
				p.Shape = Enum.PartType.Block
				p.Size = src.Size
				p.CFrame = src.CFrame
			end
			local light = Instance.new("PointLight")
			light.Brightness = 1.5
			light.Range = 5
			light.Color = ghostColor
			light.Parent = p
			p.Parent = ghost
		end
		ghost.Parent = workspace
		table.insert(activeGhosts, {model = ghost, elapsed = 0})
	end

	local function updateGhosts(dt)
		local i = 1
		while i <= #activeGhosts do
			local g = activeGhosts[i]
			g.elapsed += dt
			local alpha = g.elapsed / 1.0
			if alpha >= 1 then
				g.model:Destroy()
				table.remove(activeGhosts, i)
			else
				for _, p in g.model:GetChildren() do
					if p:IsA("BasePart") then
						p.Transparency = 0.55 + alpha * 0.45
						local t = 1 - alpha
						p.Color = Color3.fromRGB(
							math.floor(ghostColor.R * 255 * t),
							math.floor(ghostColor.G * 255 * t),
							math.floor(ghostColor.B * 255 * t)
						)
					end
				end
				i += 1
			end
		end
	end

	local function makeEmitters(parent, scale)
		local glow = Instance.new("ParticleEmitter")
		glow.Parent = parent
		glow.LightInfluence = 0
		glow.LightEmission = 1
		glow.Brightness = 2.5
		glow.ZOffset = -1
		glow.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(200, 230, 255)),
			ColorSequenceKeypoint.new(0.4, Color3.fromRGB(80, 160, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(20, 60, 220)),
		})
		glow.Orientation = Enum.ParticleOrientation.FacingCamera
		glow.Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 1.4 * scale),
			NumberSequenceKeypoint.new(0.3, 1.0 * scale),
			NumberSequenceKeypoint.new(0.7, 0.45 * scale),
			NumberSequenceKeypoint.new(1, 0),
		})
		glow.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.05),
			NumberSequenceKeypoint.new(0.4, 0.3),
			NumberSequenceKeypoint.new(0.8, 0.65),
			NumberSequenceKeypoint.new(1, 1),
		})
		glow.Texture = "rbxasset://textures/particles/sparkles_main.dds"
		glow.Lifetime = NumberRange.new(0.18, 0.30)
		glow.Rate = 50
		glow.Speed = NumberRange.new(1.0 * scale, 2.5 * scale)
		glow.SpreadAngle = Vector2.new(45, 45)
		glow.Rotation = NumberRange.new(0, 360)
		glow.RotSpeed = NumberRange.new(-80, 80)
		glow.LockedToPart = false
		glow.Enabled = true
		local sparks = Instance.new("ParticleEmitter")
		sparks.Parent = parent
		sparks.LightInfluence = 0
		sparks.LightEmission = 0.7
		sparks.Brightness = 1.8
		sparks.ZOffset = 0
		sparks.Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 255, 255)),
			ColorSequenceKeypoint.new(0.2, Color3.fromRGB(160, 210, 255)),
			ColorSequenceKeypoint.new(1, Color3.fromRGB(40, 100, 255)),
		})
		sparks.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
		sparks.Size = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0.07 * scale),
			NumberSequenceKeypoint.new(0.5, 0.04 * scale),
			NumberSequenceKeypoint.new(1, 0),
		})
		sparks.Transparency = NumberSequence.new({
			NumberSequenceKeypoint.new(0, 0),
			NumberSequenceKeypoint.new(0.5, 0.35),
			NumberSequenceKeypoint.new(1, 1),
		})
		sparks.Texture = "rbxasset://textures/particles/sparkles_main.dds"
		sparks.Lifetime = NumberRange.new(0.12, 0.28)
		sparks.Rate = 65
		sparks.Speed = NumberRange.new(2.0 * scale, 5.0 * scale)
		sparks.SpreadAngle = Vector2.new(65, 65)
		sparks.Rotation = NumberRange.new(0, 360)
		sparks.RotSpeed = NumberRange.new(-120, 120)
		sparks.LockedToPart = false
		sparks.Enabled = true
		local light = Instance.new("PointLight")
		light.Brightness = 1.2
		light.Range = 5 * scale
		light.Color = Color3.fromRGB(60, 130, 255)
		light.Shadows = false
		light.Parent = parent
		return {glow, sparks, light}
	end

	local function buildFace(part, face, scale)
		local sgui = Instance.new("SurfaceGui")
		sgui.Name = "RingGui_" .. tostring(face)
		sgui.Face = face
		sgui.LightInfluence = 0
		sgui.Brightness = 4
		sgui.AlwaysOnTop = false
		sgui.MaxDistance = 60
		sgui.SizingMode = Enum.SurfaceGuiSizingMode.FixedSize
		sgui.CanvasSize = Vector2.new(256, 256)
		sgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
		sgui.Parent = part
		local bg = Instance.new("Frame")
		bg.Size = UDim2.new(1, 0, 1, 0)
		bg.BackgroundTransparency = 1
		bg.BorderSizePixel = 0
		bg.Parent = sgui
		local bars = {}
		local cx, cy = 128, 128
		local innerR = 88
		local barW = 5
		local flip = (face == Enum.NormalId.Bottom) and -1 or 1
		for i = 1, ringSegments do
			local angle = flip * (i / ringSegments) * math.pi * 2
			local bar = Instance.new("Frame")
			bar.Name = "Bar" .. i
			bar.AnchorPoint = Vector2.new(0.5, 1)
			bar.BackgroundColor3 = Color3.fromRGB(80, 160, 255)
			bar.BorderSizePixel = 0
			bar.BackgroundTransparency = 0
			bar.Position = UDim2.new(0, cx + innerR * math.cos(angle) - barW / 2, 0, cy + innerR * math.sin(angle))
			bar.Size = UDim2.new(0, barW, 0, 2)
			bar.Rotation = math.deg(angle) + 90
			bar.Parent = bg
			local stroke = Instance.new("UIStroke")
			stroke.Color = Color3.fromRGB(140, 210, 255)
			stroke.Thickness = 1.5
			stroke.Transparency = 0.2
			stroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
			stroke.Parent = bar
			table.insert(bars, bar)
		end
		table.insert(instances, sgui)
		return bars
	end

	local function makeRing(figure)
		local scale = figure:GetScale()
		ringPart = Instance.new("Part")
		ringPart.Name = "RingVisualizer"
		ringPart.Anchored = true
		ringPart.CanCollide = false
		ringPart.CanTouch = false
		ringPart.CanQuery = false
		ringPart.Transparency = 1
		ringPart.Size = Vector3.new(8 * scale, 0.01, 8 * scale)
		ringPart.Parent = figure
		table.insert(instances, ringPart)
		local topBars = buildFace(ringPart, Enum.NormalId.Top, scale)
		local bottomBars = buildFace(ringPart, Enum.NormalId.Bottom, scale)
		ringBars = {}
		for i = 1, ringSegments do
			table.insert(ringBars, {top = topBars[i], bottom = bottomBars[i]})
		end
	end

	m.Init = function(figure: Model)
		SetOverrideDanceMusic(AssetGetContentId("Eyesclosed.mp3"), "Eyes Closed", 0.8, NumberRange.new(0, 26.70))
		start = os.clock()
		animator = AnimLib.Animator.new()
		animator.rig = figure
		animator.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("Eyesclosed.anim"))
		animator.looped = true
		for _,v in instances do v:Destroy() end
		for _,g in activeGhosts do g.model:Destroy() end
		instances = {}
		ringBars = {}
		ringPart = nil
		activeGhosts = {}
		ghostTimer = 0
		if m.Effects then
			local scale = figure:GetScale()
			for _, name in {"Left Arm", "Right Arm", "Left Leg", "Right Leg"} do
				local limb = figure:FindFirstChild(name)
				if not limb then continue end
				for _, inst in makeEmitters(limb, scale) do
					table.insert(instances, inst)
				end
			end
			makeRing(figure)
		end
	end
	m.Update = function(dt: number, figure: Model)
		animator:Step(os.clock() - start)
		if m.Effects then
			ghostTimer += dt
			if ghostTimer >= 0.5 then
				ghostTimer = 0
				spawnGhost(figure)
			end
			updateGhosts(dt)
		end
		if not ringPart or #ringBars == 0 then return end
		local root = figure:FindFirstChild("HumanoidRootPart")
		if not root then return end
		local scale = figure:GetScale()
		local head = figure:FindFirstChild("Head")
		local headY = head and head.Position.Y or root.Position.Y
		ringPart.CFrame = CFrame.new(root.Position.X, headY + 3.2 * scale, root.Position.Z)
		local t = GetOverrideDanceMusicTime()
		for i, pair in ringBars do
			local frac = (i - 1) / ringSegments
			local phase = frac * math.pi * 2
			local bass = math.abs(math.sin(t * 2.1 + phase * 0.5))
			local mid = math.abs(math.sin(t * 5.3 + phase * 1.2 + 1.1))
			local treble = math.abs(math.sin(t * 11.7 + phase * 2.5 + 2.3))
			local amplitude = (bass * 0.55 + mid * 0.30 + treble * 0.15) * (0.75 + 0.25 * math.sin(t * 3.14))
			local barH = math.max(2, math.floor(amplitude * 28))
			local col = Color3.fromRGB(
				math.floor(40 + amplitude * 100),
				math.floor(120 + amplitude * 110),
				255
			)
			local sz = UDim2.new(0, 5, 0, barH)
			pair.top.Size = sz
			pair.top.BackgroundColor3 = col
			pair.bottom.Size = sz
			pair.bottom.BackgroundColor3 = col
		end
	end
	m.Destroy = function(figure: Model?)
		animator = nil
		ringPart = nil
		ringBars = {}
		for _,v in instances do v:Destroy() end
		for _,g in activeGhosts do g.model:Destroy() end
		instances = {}
		activeGhosts = {}
		ghostTimer = 0
	end
	return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "HypnoDance"
    m.Description = "Get Hypnotized"
    m.Assets = {
      "HypnoDance.anim@https://github.com/Solary-3/Scripts/raw/refs/heads/main/HypnoDance.anim", 
      "HypnoDance.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/HypnoDance.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("HypnoDance.mp3"), "HypnoDance", 0.8, NumberRange.new(0, 45.5))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("HypnoDance.anim"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Heart Of Glass"
    m.Description = " "
    m.Assets = {
      "Heart Of Glass.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Heart Of Glass.lua",
      "Heart Of Glass.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Heart Of Glass.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("Heart Of Glass.mp3"))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Heart Of Glass.lua"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Phibz Thing"
    m.Description = " "
    m.Assets = {
      "Phibz Thing.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Phibz Thing.lua", 
      "Phibz Thing.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Phibz Thing.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("Phibz Thing.mp3"))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Phibz Thing.lua"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Krump"
    m.Description = "from that one Lightning Cannon mode\nthis uses no keyframes\nanim made by theo"
    m.Assets = {
      "MonsterMash.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/MonsterMash.mp3?raw=true",
      
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("MonsterMash.mp3"))
    end

    m.Update = function(dt, figure)
    local deltaTime=.75 
    sine=os.clock()
    local hum = figure:FindFirstChild("Humanoid")
		if not hum then return end
		local root = figure:FindFirstChild("HumanoidRootPart")
		if not root then return end
		local torso = figure:FindFirstChild("Torso")
		if not torso then return end

		local scale = figure:GetScale()

		local RootJoint = root:FindFirstChild("RootJoint")
		local Neck = torso:FindFirstChild("Neck")
		local RightShoulder = torso:FindFirstChild("Right Shoulder")
		local LeftShoulder = torso:FindFirstChild("Left Shoulder")
		local RightHip = torso:FindFirstChild("Right Hip")
		local LeftHip = torso:FindFirstChild("Left Hip") 
		RootJoint.Transform=Lerp(RootJoint.Transform,cfMul(cf(-0.5*scale*cos((sine*15)+0)+0,0.5*scale*sin((sine*15)+0),-.5),angles(0,-0.17453292519943295+0,0)),deltaTime)
		LeftHip.Transform=cfMul(cf(0,.25+0,.25),angles(0.17453292519943295,0,0))
		RightHip.Transform=cfMul(cf(0+0,.5+0,.25),angles(-0.8726646259971648,0,0))
		RightShoulder.Transform=angles(-1.5707963267948966+0,0,0)
		LeftShoulder.Transform=angles(-1.5707963267948966+0,0,0)
		Neck.Transform=CFrame.identity
    end

    m.Destroy = function(figure)
    end

    return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Invincible Wobble Edit"
    m.Description = "Great for edits fr fr"
    m.Assets = {
      "Invincible Wobble.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Invincible Wobble.lua",
      "Invincible.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Invincible.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("Invincible.mp3"))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Invincible Wobble.lua"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Invincible Wobble Edit 2"
    m.Description = "Great for edits fr fr"
    m.Assets = {
      "Wobbly Edit.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Wobbly Edit.lua",
      "Invincible.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Invincible.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("Invincible.mp3"))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Wobbly Edit.lua"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Billy Bounce"
    m.Description = " "
    m.Assets = {
      "Billy Bounce@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Billy Bounce",
      "BillyBounce.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/BillyBounce.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("BillyBounce.mp3"))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Billy Bounce"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
    local m = {}

    m.ModuleType  = "DANCE"
    m.Name        = "Eggmanned"
    m.Description = "Get Eggmanned"
    m.Assets = {
      "Eggmanned.lua@https://github.com/Solary-3/Scripts/raw/refs/heads/main/Eggmanned.lua",
      "Eggmanned.mp3@https://github.com/Solary-3/Scripts/raw/refs/heads/Audios-1/Eggmanned.mp3?raw=true"
    }

    m.Config = function(parent)
        Util_CreateText(parent, "No settings.", 14, Enum.TextXAlignment.Center)
    end

    m.SaveConfig = function() return {} end
    m.LoadConfig  = function(save) end

    local animator = nil
    local start    = 0

    m.Init = function(figure)
        SetOverrideDanceMusic(AssetGetContentId("Eggmanned.mp3"))

        start           = os.clock()
        animator        = AnimLib.Animator.new()
        animator.rig    = figure
        animator.track  = AnimLib.Track.fromfile(AssetGetPathFromFilename("Eggmanned.lua"))
        animator.looped = true
        animator.speed  = 1
    end

    m.Update = function(dt, figure)
        animator:Step(os.clock() - start)
    end

    m.Destroy = function(figure)
        animator = nil
    end

    return m
end)

AddModule(function()
	local m = {}
	m.ModuleType = "DANCE"
	m.Name = "INTERNET YAMERO"
	m.Description = "me when i lag in tsb\nSTOP LAGGING ME INTERNET\n--Module By Steve"
	m.Assets = {
	  "InternetYamero.anim@https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/main/content/InternetYamero.anim",
	  "InternetYameroSickTock.anim@https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/main/content/InternetYameroSickTock.anim",
	  "InternetYamero.mp3@https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/main/content/InternetYamero.mp3"
	  
	}

	m.FullVersion = false
	m.Config = function(parent: GuiBase2d)
		Util_CreateSwitch(parent, "Complete", m.FullVersion).Changed:Connect(function(val)
			m.FullVersion = val
		end)
	end
	m.LoadConfig = function(save: any)
		m.FullVersion = not not save.FullVersion
	end
	m.SaveConfig = function()
		return {
			FullVersion = m.FullVersion
		}
	end

	local animator1 = nil
	local animator2 = nil
	m.Init = function(figure: Model)
		if m.FullVersion then
			SetOverrideDanceMusic(AssetGetContentId("InternetYamero.mp3"), "NEEDY GIRL OVERDOSE - INTERNET YAMERO", 1)
		else
			SetOverrideDanceMusic(AssetGetContentId("InternetYamero.mp3"), "NEEDY GIRL OVERDOSE - INTERNET YAMERO", 1, NumberRange.new(21.394, 62.94))
			SetOverrideDanceMusicTime(21.394)
		end
		animator1 = AnimLib.Animator.new()
		animator1.rig = figure
		animator1.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("InternetYameroSickTock.anim"))
		animator1.looped = false
		animator2 = AnimLib.Animator.new()
		animator2.rig = figure
		animator2.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("InternetYamero.anim"))
		animator2.looped = true
		animator2.map = {{11, 62.944}, {0, 53.33333}}
	end
	m.Update = function(dt: number, figure: Model)
		local t = GetOverrideDanceMusicTime()
		if t < 11 then
			animator1:Step(t)
		elseif t < 18.667 then
			animator2:Step(t)
		elseif t < 19.333 then
			animator2:Step(math.min((t - 18.667) / 0.1, 1.2))
		elseif t < 20 then
			animator2:Step(math.min((t - 19.333) / 0.1, 1.34))
		elseif t < 21.333 then
			animator2:Step(t * 100)
		else
			animator2:Step(t + 0.667)
		end
	end
	m.Destroy = function(figure: Model?)
		animator1 = nil
		animator2 = nil
	end
	return m
end)

AddModule(function()
	local m = {}
	m.ModuleType = "DANCE"
	m.Name = "INTERNET ANGEL"
	m.Description = "Needy Girl Overdose\n\nthe 67th angel of evangelion\nonly way to beat it is use a fire wall\n--Module By Steve"
	m.Assets = {
	  "InternetAngel.anim@https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/main/content/InternetAngel.anim",
	  "InternetAngelEva.anim@https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/main/content/InternetAngelEva.anim",
	  "InternetAngelNeedy.anim@https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/main/content/InternetAngelNeedy.anim",
	  "InternetAngel1.mp3@https://raw.githubusercontent.com/STEVE-916-create/Uhhhhhh/main/content/InternetAngel.mp3"
	  
	}

	m.FullVersion = false
	m.Effects = true
	m.Config = function(parent: GuiBase2d)
		Util_CreateSwitch(parent, "Effects", m.Effects).Changed:Connect(function(val)
			m.Effects = val
		end)
		Util_CreateSwitch(parent, "Complete", m.FullVersion).Changed:Connect(function(val)
			m.FullVersion = val
		end)
	end
	m.LoadConfig = function(save: any)
		m.FullVersion = not not save.FullVersion
		m.Effects = not save.NoEffects
	end
	m.SaveConfig = function()
		return {
			FullVersion = m.FullVersion,
			NoEffects = not m.Effects
		}
	end

	local animator1 = nil
	local animator2 = nil
	local animator3 = nil
	local textsandstuff = nil
	m.Init = function(figure: Model)
		start = os.clock()
		if m.FullVersion then
			SetOverrideDanceMusic(AssetGetContentId("InternetAngel1.mp3"), "NEEDY GIRL OVERDOSE - INTERNET ANGEL", 1)
			SetOverrideDanceMusicTime(0)
		else
			SetOverrideDanceMusic(AssetGetContentId("InternetAngel1.mp3"), "NEEDY GIRL OVERDOSE - INTERNET ANGEL", 1, NumberRange.new(36, 60))
			SetOverrideDanceMusicTime(36)
		end
		animator1 = AnimLib.Animator.new()
		animator1.rig = figure
		animator1.looped = true
		animator1.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("InternetAngel.anim"))
		animator1.map = {{36, 60}, {0, 23.72}}
		animator2 = AnimLib.Animator.new()
		animator2.rig = figure
		animator2.looped = true
		animator2.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("InternetAngelNeedy.anim"))
		animator2.map = {{0, 0.75}, {0, 0.8}}
		animator3 = AnimLib.Animator.new()
		animator3.rig = figure
		animator3.looped = false
		animator3.track = AnimLib.Track.fromfile(AssetGetPathFromFilename("InternetAngelEva.anim"))
		animator3.map = {{0, 13.5}, {0, 14.37}}
		if textsandstuff then textsandstuff:Destroy() end
		if m.Effects then
			textsandstuff = Instance.new("Part")
			textsandstuff.Transparency = 1
			textsandstuff.Anchored = true
			textsandstuff.CanCollide = false
			textsandstuff.CanTouch = false
			textsandstuff.CanQuery = false
			textsandstuff.Name = "INTERNETANGEL"
			textsandstuff.Size = Vector3.new(12, 6, 0) * figure:GetScale()
			local sgui = Instance.new("SurfaceGui")
			sgui.LightInfluence = 0
			sgui.Brightness = 1
			sgui.AlwaysOnTop = false
			sgui.MaxDistance = 1000
			sgui.SizingMode = Enum.SurfaceGuiSizingMode.FixedSize
			sgui.CanvasSize = Vector2.new(360, 180)
			sgui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
			sgui.Name = "UI"
			sgui.Parent = textsandstuff
			local id = 0
			local function addtext(t, x, y, sx, sy, align)
				local text = Instance.new("TextLabel")
				text.Position = UDim2.new(0, x, 0, y)
				text.Size = UDim2.new(0, sx, 0, sy)
				text.BackgroundTransparency = 1
				text.ClipsDescendants = true
				text.FontFace = Font.fromId(12187371840)
				text.TextColor3 = Color3.new(1, 1, 1)
				text.TextXAlignment = align
				text.TextYAlignment = Enum.TextYAlignment.Center
				text.TextScaled = true
				text.Text = t
				text.Name = tostring(id)
				text.Parent = sgui
				id += 1
			end
			addtext("NEEDY", 20, 65, 320, 50, 0) -- 0
			addtext("GIRL", 20, 65, 320, 50, 1) -- 1
			addtext("NEEDY", 180, 45, 180, 30, 2) -- 2
			addtext("GIRL", 0, 105, 180, 30, 2) -- 3
			addtext("A N G E L", 0, 0, 360, 60, 2) -- 4
			addtext("\n\nn e e d y\n\ng i r l\n\no v e r d o s e", 0, 45, 360, 45, 2) -- 5
			addtext("\n\nn e e d y\n\ng i r l\n\no v e r d o s e", 0, 90, 360, 45, 2) -- 6
			addtext("\n\nn e e d y\n\ng i r l\n\no v e r d o s e", 0, 135, 360, 45, 2) -- 7
			addtext("INTERNET", 20, 40, 320, 40, 0) -- 8
			addtext("INTERNET", 20, 40, 320, 40, 2) -- 9
			addtext("INTERNET", 20, 40, 320, 40, 1) -- 10
			addtext("INTERNET", 20, 70, 320, 40, 0) -- 11
			addtext("INTERNET", 20, 70, 320, 40, 2) -- 12
			addtext("INTERNET", 20, 70, 320, 40, 1) -- 13
			addtext("INTERNET", 20, 100, 320, 40, 0) -- 14
			addtext("INTERNET", 20, 100, 320, 40, 2) -- 15
			addtext("INTERNET", 20, 100, 320, 40, 1) -- 16
			addtext("ANGEL", 0, 0, 360, 180, 2) -- 17
			addtext("INTERNET", 20, 80, 320, 20, 2) -- 18
			addtext("INTERNET", 20, 85, 320, 10, 2) -- 19
			addtext("P A T T E R N   B L U E", 60, 80, 240, 10, 1) -- 20
			addtext("A N G E L", 60, 100, 240, 10, 2) -- 21
			addtext("NEEDY GIRL", 20, 65, 320, 50, 0) -- 22
			addtext("NEEDY GIRL", 20, 65, 320, 50, 1) -- 23
			addtext("\"I-N-TE-RU-NE-TO\"", 0, 160, 360, 10, 2) -- 24
			addtext("\"ANGEL\"", 0, 160, 360, 10, 2) -- 25
			addtext("\"NEEDY GIRL\"", 0, 160, 360, 10, 2) -- 26
			textsandstuff.Parent = figure
		end
	end
	m.Update = function(dt: number, figure: Model)
		local t = GetOverrideDanceMusicTime()
		local textvis = {}
		if t < 10.5 then
			animator2:Step(t)
			local needy = t % 6
			if needy < 1.5 then
				textvis[0] = true
			elseif needy < 3 then
				textvis[1] = true
			else
				textvis[2] = true
				textvis[3] = true
			end
		elseif t < 24 then
			animator3:Step(t - 10.5)
			if t < 12 then
				if t % 0.75 < 0.375 then
					textvis[4] = true
				end
				if (t + 0.000) % 1 < 0.7 then textvis[5] = true end
				if (t + 0.333) % 1 < 0.7 then textvis[6] = true end
				if (t + 0.667) % 1 < 0.7 then textvis[7] = true end
			else
				local eva = (t - 12) / 0.75
				if eva % 4 < 3 then
					textvis[24] = true
				else
					textvis[25] = true
				end
				if eva < 1 then
					textvis[8] = true
				elseif eva < 2 then
					textvis[16] = true
				elseif eva < 3 then
					textvis[12] = true
				elseif eva < 4 then
					textvis[17] = true
				elseif eva < 5 then
					textvis[12] = true
				elseif eva < 6 then
					textvis[18] = true
				elseif eva < 7 then
					textvis[19] = true
				elseif eva < 7.5 then
					textvis[17] = true
				elseif eva < 7.625 then
					textvis[8] = true
				elseif eva < 7.75 then
					textvis[10] = true
				elseif eva < 7.875 then
					textvis[14] = true
				elseif eva < 8 then
					textvis[16] = true
				elseif eva < 9 then
					textvis[14] = true
				elseif eva < 10 then
					textvis[10] = true
					textvis[20] = true
				elseif eva < 11 then
					textvis[18] = true
					textvis[21] = true
				elseif eva < 12 then
					textvis[21] = true
				elseif eva < 13 then
					textvis[13] = true
				elseif eva < 14 then
					textvis[11] = true
				elseif eva < 15 then
					textvis[16] = true
				else
					textvis[20] = true
					textvis[7] = true
				end
			end
		elseif t < 34.5 then
			local needy = t % 6
			if needy < 4.5 then
				animator2:Step(t)
			else
				animator3:Step(needy - 3)
			end
			if needy < 0.75 then
			elseif needy < 1.5 then
				textvis[22] = true
				textvis[26] = true
			elseif needy < 2.25 then
			elseif needy < 3 then
				textvis[23] = true
				textvis[26] = true
			elseif needy < 3.75 then
				textvis[2] = true
				textvis[3] = true
			elseif needy < 4.5 then
				textvis[2] = true
				textvis[3] = true
				textvis[26] = true
			elseif needy < 5.25 then
				textvis[18] = true
				textvis[21] = true
				textvis[7] = true
				textvis[24] = true
			else
				textvis[18] = true
				textvis[21] = true
				textvis[7] = true
				textvis[25] = true
			end
		elseif t < 36 then
			animator3:Step(t - 34.5)
			for i=1, 23 do textvis[i] = math.random(3) == 1 end
		else
			local eva = (t - 36) / 0.75
			if t < 48 then
				if eva % 4 < 3 then
					textvis[24] = true
				else
					textvis[25] = true
				end
			else
				local needy = t % 6
				if needy < 0.75 then
				elseif needy < 1.5 then
					textvis[26] = true
				elseif needy < 2.25 then
				elseif needy < 3 then
					textvis[26] = true
				elseif needy < 3.75 then
				elseif needy < 4.5 then
					textvis[26] = true
				elseif needy < 5.25 then
					textvis[24] = true
				else
					textvis[25] = true
				end
			end
			animator1:Step(t - 36)
		end
		local root = figure:FindFirstChild("HumanoidRootPart")
		if not root then return end
		local scale = figure:GetScale()
		if textsandstuff then
			textsandstuff.CFrame = root.CFrame * CFrame.new(0, 0, -2 * scale)
			local ui = textsandstuff:FindFirstChild("UI")
			if ui then
				for _,v in ui:GetChildren() do
					if v:IsA("TextLabel") and tonumber(v.Name) then
						v.Visible = not not textvis[tonumber(v.Name)]
					end
				end
			end
		end
	end
	m.Destroy = function(figure: Model?)
		animator1 = nil
		animator2 = nil
		animator3 = nil
		if textsandstuff then textsandstuff:Destroy() textsandstuff = nil end
	end
	return m
end)

return modules