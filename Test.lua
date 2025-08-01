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
local abs=math.abs
local rad=math.rad
local min=math.min
local clamp=math.clamp
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local tunpack=table.unpack

--the script doesnt have to read global varaibles every time to get them
--why not have them saved in local varaibles for faster access times
local next=next
local pcall=pcall
local xpcall=xpcall
local type=type
local typeof=typeof
local game=game

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local cfl=CFrame.lookAt
local angles=CFrame.Angles
local u2=UDim2.new 
local e=Enum 
local rp=RaycastParams.new 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

local sine=osclock()
local deltaTime=0
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_xzL=v3_101*250.1
local v3_net=v3_010*25.01

local function rs(l) 
	l=l or mrandom(8,15) 
	local s="" 
	for i=1,l do 
		if mrandom(1,2)==1 then 
			s=s..schar(mrandom(65,90)) 
		else 
			s=s..schar(mrandom(97,122)) 
		end 
	end 
	return s 
end

--it runs even faster if u call __index and __newindex of metatables of userdata directly
local function getMetamethodFromErrorStack(userdata,f,test)
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
--multiplying and adding vector3 is faster if you use the * and + operators

--no need to index instances every time to call their functions
local Clone=insGet(game,"Clone")
local ClearAllChildren=insGet(game,"ClearAllChildren")
local Destroy=insGet(game,"Destroy")
local IsA=insGet(game,"IsA")
local FindFirstChildOfClass=insGet(game,"FindFirstChildOfClass")
local FindFirstChildWhichIsA=insGet(game,"FindFirstChildWhichIsA")
local GetChildren=insGet(game,"GetChildren")
local GetDescendants=insGet(game,"GetDescendants")
local IsDescendantOf=insGet(game,"IsDescendantOf")
local GetPropertyChangedSignal=insGet(game,"GetPropertyChangedSignal")

--findfirstchildofclass faster than getservice
local plrs=FindFirstChildOfClass(game,"Players")
local rus=FindFirstChildOfClass(game,"RunService")
local ws=FindFirstChildOfClass(game,"Workspace")
local uis=FindFirstChildOfClass(game,"UserInputService")
local gs=FindFirstChildOfClass(game,"GuiService")
local lp=insGet(plrs,"LocalPlayer")
local pg=FindFirstChildOfClass(lp,"PlayerGui")
local mouse=insGet(lp,"GetMouse")(lp)
local stepped=insGet(rus,"Stepped")
local heartbeat=insGet(rus,"Heartbeat")
local renderstepped=insGet(rus,"RenderStepped")

local GetPlayers=insGet(plrs,"GetPlayers")
local Raycast=insGet(ws,"Raycast")
local Connect=heartbeat.Connect
local Disconnect=Connect(GetPropertyChangedSignal(game,"CreatorId"),type).Disconnect
local Wait=heartbeat.Wait
local GetMouseLocation=insGet(uis,"GetMouseLocation")
local GetFocusedTextBox=insGet(uis,"GetFocusedTextBox")
local GetMouseDelta=insGet(uis,"GetMouseDelta")
local IsMouseButtonPressed=insGet(uis,"IsMouseButtonPressed")
local IsKeyDown=insGet(uis,"IsKeyDown")

local Inverse=cfGet(cf_0,"Inverse")
local Lerp=cfGet(cf_0,"Lerp")





if "wanna use myworld reanimate" then
     
    --reanimate by MyWorld#4430 discord.gg/pYVHtSJmEY
    local Vector3_101 = Vector3.new(1, 0, 1)
    local netless_Y = Vector3.new(0, 25.1, 0)
    




local function getNetlessVelocity(realPartVelocity) --change this if you have a better method
        local mag = realPartVelocity.Magnitude
        if (mag > 1) and (mag < 100) then
            local unit = realPartVelocity.Unit
            if (unit.Y > 0.25) or (unit.Y < -0.75) then
                return realPartVelocity * (25.1 / realPartVelocity.Y)
            end
            realPartVelocity = unit * 100
        end
        return (realPartVelocity * Vector3_101) + netless_Y
    end
    local simradius = "false" --simulation radius (net bypass) method
    --"shp" - sethiddenproperty
    --"ssr" - setsimulationradius
    --false - disable
    local noclipAllParts = false --set it to true if you want noclip
    local antiragdoll = true --removes hingeConstraints and ballSocketConstraints from your character
    local newanimate = true --disables the animate script and enables after reanimation
    local discharscripts = false --disables all localScripts parented to your character before reanimation
    local R15toR6 = true --tries to convert your character to r6 if its r15
    local hatcollide = false --makes hats cancollide (credit to ShownApe) (works only with reanimate method 0)
    local humState16 = true --enables collisions for limbs before the humanoid dies (using hum:ChangeState)
    local addtools = false --puts all tools from backpack to character and lets you hold them after reanimation
    local hedafterneck = true --disable aligns for head and enable after neck or torso is removed
    local loadtime = game:GetService("Players").RespawnTime + 0.5 --anti respawn delay
    local method = 0 --reanimation method
    --methods:
    --0 - breakJoints (takes [loadtime] seconds to laod)
    --1 - limbs
    --2 - limbs + anti respawn
    --3 - limbs + breakJoints after [loadtime] seconds
    --4 - remove humanoid + breakJoints
    --5 - remove humanoid + limbs
    local alignmode = 1 --AlignPosition mode
    --modes:
    --1 - AlignPosition rigidity enabled true
    --2 - 2 AlignPositions rigidity enabled both true and false
    --3 - AlignPosition rigidity enabled false
    local flingpart = "HumanoidRootPart" --name of the part or the hat used for flinging
    --the fling function
    --usage: fling(target, duration, velocity)
    --target can be set to: basePart, CFrame, Vector3, character model or humanoid (flings at mouse.Hit if argument not provided))
    --duration (fling time in seconds) can be set to: a number or a string convertable to the number (0.5s if not provided),
    --velocity (fling part rotation velocity) can be set to a vector3 value (Vector3.new(20000, 20000, 20000) if not provided)
    
    local lp = game:GetService("Players").LocalPlayer
    local rs = game:GetService("RunService")
    local stepped = rs.Stepped
    local heartbeat = rs.Heartbeat
    local renderstepped = rs.RenderStepped
    local sg = game:GetService("StarterGui")
    local ws = game:GetService("Workspace")
    local cf = CFrame.new
    local v3 = Vector3.new
    local v3_0 = Vector3.zero
    local inf = math.huge

    local c = lp.Character
    
    if not (c and c.Parent) then
	return
    end
    
    c:GetPropertyChangedSignal("Parent"):Connect(function()
        if not (c and c.Parent) then
    	    c = nil
    	end
    end)
    
    local function gp(parent, name, className)
    	if typeof(parent) == "Instance" then
    		for i, v in pairs(parent:GetChildren()) do
    			if (v.Name == name) and v:IsA(className) then
    				return v
    			end
    		end
    	end
    	return nil
    end
    
    if type(getNetlessVelocity) ~= "function" then
        getNetlessVelocity = nil
    end
    
    local function align(Part0, Part1)
	Part0.CustomPhysicalProperties = PhysicalProperties.new(0, 0, 0, 0, 0)
    
	local att0 = Instance.new("Attachment")
	att0.Orientation = v3_0
	att0.Position = v3_0
	att0.Name = "att0_" .. Part0.Name
	local att1 = Instance.new("Attachment")
	att1.Orientation = v3_0
	att1.Position = v3_0
	att1.Name = "att1_" .. Part1.Name
    
    	if (alignmode == 1) or (alignmode == 2) then
    		local ape = Instance.new("AlignPosition", att0)
    		ape.ApplyAtCenterOfMass = false
    		ape.MaxForce = inf
    		ape.MaxVelocity = inf
    		ape.ReactionForceEnabled = false
    		ape.Responsiveness = 200
    		ape.Attachment1 = att1
    		ape.Attachment0 = att0
    		ape.Name = "AlignPositionRtrue"
    		ape.RigidityEnabled = true
    	end
    
    	if (alignmode == 2) or (alignmode == 3) then
    		local apd = Instance.new("AlignPosition", att0)
    		apd.ApplyAtCenterOfMass = false
    		apd.MaxForce = inf
    		apd.MaxVelocity = inf
    		apd.ReactionForceEnabled = false
    		apd.Responsiveness = 200
    		apd.Attachment1 = att1
    		apd.Attachment0 = att0
    		apd.Name = "AlignPositionRfalse"
    		apd.RigidityEnabled = false
    	end
    
    	local ao = Instance.new("AlignOrientation", att0)
    	ao.MaxAngularVelocity = inf
    	ao.MaxTorque = inf
    	ao.PrimaryAxisOnly = false
    	ao.ReactionTorqueEnabled = false
    	ao.Responsiveness = 200
    	ao.Attachment1 = att1
    	ao.Attachment0 = att0
    	ao.RigidityEnabled = false
    
    	if getNetlessVelocity then
    	    local vel = Part0.Velocity
    	    local velpart = Part1
            local rsteppedcon = renderstepped:Connect(function()
                Part0.Velocity = vel
            end)
            local heartbeatcon = heartbeat:Connect(function()
                vel = Part0.Velocity
                Part0.Velocity = getNetlessVelocity(velpart.Velocity)
            end)
            local attcon = nil
            Part0:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (Part0 and Part0.Parent) then
                    rsteppedcon:Disconnect()
                    heartbeatcon:Disconnect()
                    attcon:Disconnect()
                end
            end)
            attcon = att1:GetPropertyChangedSignal("Parent"):Connect(function()
    	        if not (att1 and att1.Parent) then
    	            attcon:Disconnect()
                    velpart = Part0
    	        else
    	            velpart = att1.Parent
    	            if not velpart:IsA("BasePart") then
    	                velpart = Part0
    	            end
    	        end
    	    end)
    	end
    	
    	att0.Parent = Part0
        att1.Parent = Part1
    end
    
    local function respawnrequest()
    	local ccfr = ws.CurrentCamera.CFrame
    	local c = lp.Character
    	lp.Character = nil
    	lp.Character = c
    	local con = nil
    	con = ws.CurrentCamera.Changed:Connect(function(prop)
    	    if (prop ~= "Parent") and (prop ~= "CFrame") then
    	        return
    	    end
    	    ws.CurrentCamera.CFrame = ccfr
    	    con:Disconnect()
        end)
    end
    
    local destroyhum = (method == 4) or (method == 5)
    local breakjoints = (method == 0) or (method == 4)
    local antirespawn = (method == 0) or (method == 2) or (method == 3)
    
    hatcollide = hatcollide and (method == 0)
    
    addtools = addtools and gp(lp, "Backpack", "Backpack")
    
    local fenv = getfenv()
    local shp = fenv.sethiddenproperty or fenv.set_hidden_property or fenv.set_hidden_prop or fenv.sethiddenprop
    local ssr = fenv.setsimulationradius or fenv.set_simulation_radius or fenv.set_sim_radius or fenv.setsimradius or fenv.set_simulation_rad or fenv.setsimulationrad
    
    if shp and (simradius == "shp") then
    	spawn(function()
    		while c and heartbeat:Wait() do
    			shp(lp, "SimulationRadius", inf)
    		end
    	end)
    elseif ssr and (simradius == "ssr") then
    	spawn(function()
    		while c and heartbeat:Wait() do
    			ssr(inf)
    		end
    	end)
    end
    
    antiragdoll = antiragdoll and function(v)
    	if v:IsA("HingeConstraint") or v:IsA("BallSocketConstraint") then
    		v.Parent = nil
    	end
    end
    
    if antiragdoll then
    	for i, v in pairs(c:GetDescendants()) do
    		antiragdoll(v)
    	end
    	c.DescendantAdded:Connect(antiragdoll)
    end
    
    if antirespawn then
    	respawnrequest()
    end
    
    if method == 0 then
    	wait(loadtime)
    	if not c then
    		return
    	end
    end
    
    if discharscripts then
    	for i, v in pairs(c:GetChildren()) do
    		if v:IsA("LocalScript") then
    			v.Disabled = true
    		end
    	end
    elseif newanimate then
    	local animate = gp(c, "Animate", "LocalScript")
    	if animate and (not animate.Disabled) then
    		animate.Disabled = true
    	else
    		newanimate = false
    	end
    end
    
    if addtools then
    	for i, v in pairs(addtools:GetChildren()) do
    		if v:IsA("Tool") then
    			v.Parent = c
    		end
    	end
    end
    
    pcall(function()
    	settings().Physics.AllowSleep = false
    	settings().Physics.PhysicsEnvironmentalThrottle = Enum.EnviromentalPhysicsThrottle.Disabled
    end)
    
    local OLDscripts = {}
    
    for i, v in pairs(c:GetDescendants()) do
    	if v.ClassName == "Script" then
    		table.insert(OLDscripts, v)
    	end
    end
    
    local function getAccWeldFromMeshAndTexture(meshId, textureId)
    local plr = game.Players.LocalPlayer
    local char = plr and plr.Character or plr.CharacterAdded:Wait()
    local weld
    
    for _, v in pairs(char:GetChildren()) do
        if v:IsA("Accessory") then
            local h = v:FindFirstChild("Handle")
            if h then
                local m = h:FindFirstChildWhichIsA("SpecialMesh") or h:FindFirstChildWhichIsA("Mesh")
                if m then
                    local meshMatch = meshId == "" or (m.MeshId and tostring(m.MeshId):find(meshId))
                    local textureMatch = textureId == "" or (m.TextureId and tostring(m.TextureId):find(textureId))
                    
                    if meshMatch and textureMatch then
                        weld = h:FindFirstChild("AccessoryWeld")
                        if not weld then
                            weld = Instance.new("Weld")
                            weld.Name = "AccessoryWeld"
                            weld.Parent = h
                        end
                        break
                    end
                end
            end
        end
    end
    return weld
end

 local halo=getAccWeldFromMeshAndTexture(4758429875,4764720503)
 local sword1=getAccWeldFromMeshAndTexture(4315410540,4506940486)
 local sword2=getAccWeldFromMeshAndTexture(4315410540,4315250791)
 local sword3=getAccWeldFromMeshAndTexture(4315410540,4458626951)
 local sword4=getAccWeldFromMeshAndTexture(4315410540,4794299274)
 
 local function alignAccessory(accessoryWeld, part0, cframeOffset)
    if not accessoryWeld then return end
    
    local att0 = Instance.new("Attachment")
    att0.Parent = part0
    
    local att1 = Instance.new("Attachment")
    att1.Parent = accessoryWeld.Part1
    
    accessoryWeld.C0 = cframeOffset or CFrame.new()
    accessoryWeld.Part0 = part0
    accessoryWeld.Part1 = att1.Parent
end
local function createAttachmentPoint(part, name, position)
    local att = Instance.new("Attachment")
    att.Name = name
    att.Position = position
    att.Parent = part
    return att
end



 
  --[[  local function getMeshOfPart(v)
	if IsA(v,"MeshPart") then
		return insGet(v,"MeshId"), insGet(v,"TextureID")
	elseif IsA(v,"BasePart") then
		v=FindFirstChildOfClass(v,"SpecialMesh")
		if v then
			return insGet(v,"MeshId"), insGet(v,"TextureId")
		end
	end
	return nil, nil
end]]
    local scriptNames = {}
  --[[  local function Hats(v)
		if c and IsA(v,"Attachment") and IsDescendantOf(c,ws) then
			local v1=attachments[insGet(v,"Name")]
			if v1 then
				local p=insGet(v,"Parent")
				if insGet(p,"Parent")~=c then
					local meshid,textureid=getMeshOfPart(p)
					if meshid then
						local found=false
						for i,_ in next,cframes do
							if (meshid==i.m) and (textureid==i.t) then
								local p1=i.p
								if p1 and IsDescendantOf(p1,c) then
									if p1==p then
										found=true
										break
									end
								else
									found=true
									i.p=p
									makePartCons(p,i)
									break
								end
							else
								local j=i.j
								if j and sfind(meshid,i.m) and sfind(textureid,i.t) then
									i.m=meshid
									i.t=textureid
									i.l=insGet(p,"Position")
									i.p=p
									makePartCons(p,i)
									i.j=nil
									i.Name=insGet(p,"Name")
									j.C0=insGet(v,"CFrame")
									j.C1=v1[2]
									j.Part1=v1[1]
									tinsert(joints,j)
									found=true
									break
								end
							end
						end
					end
				end
			end
		end
    end]]



    for i, v in pairs(c:GetDescendants()) do
	if v:IsA("BasePart") then
		local newName = tostring(i)
		local exists = true
		while exists do
			exists = false
			for i, v in pairs(OLDscripts) do
				if v.Name == newName then
					exists = true
				end
			end
			if exists then
				newName = newName .. "_"    
			end
		end
		table.insert(scriptNames, newName)
		Instance.new("Script", v).Name = newName
	end
    end
    
    c.Archivable = true
    local hum = c:FindFirstChildOfClass("Humanoid")
    if hum then
    	for i, v in pairs(hum:GetPlayingAnimationTracks()) do
    		v:Stop()
    	end
    end
    local cl = c:Clone()
    if hum and humState16 then
        hum:ChangeState(Enum.HumanoidStateType.Physics)
        if destroyhum then
            wait(1.6)
        end
    end
    if hum and hum.Parent and destroyhum then
        hum:Destroy()
    end
    
    if not c then
        return
    end
    
    local head = gp(c, "Head", "BasePart")
    local torso = gp(c, "Torso", "BasePart") or gp(c, "UpperTorso", "BasePart")
    local root = gp(c, "HumanoidRootPart", "BasePart")
    if hatcollide and c:FindFirstChildOfClass("Accessory") then
        local anything = c:FindFirstChildOfClass("BodyColors") or gp(c, "Health", "Script")
        if not (torso and root and anything) then
            return
        end
        torso:Destroy()
        root:Destroy()
        if shp then
            for i,v in pairs(c:GetChildren()) do
                if v:IsA("Accessory") then
                    shp(v, "BackendAccoutrementState", 0)
                    local handle = v:FindFirstChild("Handle")
                if handle then
                    handle.CanCollide = false
                    handle.Massless = true
                    handle.Transparency = 0
                    end
                end 
            end
        end
        anything:Destroy()
    end
    
    local model = Instance.new("Model", c)
    model.Name = model.ClassName
    
    model:GetPropertyChangedSignal("Parent"):Connect(function()
        if not (model and model.Parent) then
    	    model = nil
        end
    end)
    
    for i, v in pairs(c:GetChildren()) do
    	if v ~= model then
    		if addtools and v:IsA("Tool") then
    			for i1, v1 in pairs(v:GetDescendants()) do
    				if v1 and v1.Parent and v1:IsA("BasePart") then
    					local bv = Instance.new("BodyVelocity", v1)
    					bv.Velocity = v3_0
    					bv.MaxForce = v3(1000, 1000, 1000)
    					bv.P = 1250
    					bv.Name = "bv_" .. v.Name
    				end
    			end
    		end
    		v.Parent = model
    	end
    end
    
    if breakjoints then
    	model:BreakJoints()
    else
    	if head and torso then
    		for i, v in pairs(model:GetDescendants()) do
    			if v:IsA("Weld") or v:IsA("Snap") or v:IsA("Glue") or v:IsA("Motor") or v:IsA("Motor6D") then
    				local save = false
    				if (v.Part0 == torso) and (v.Part1 == head) then
    					save = true
    				end
    				if (v.Part0 == head) and (v.Part1 == torso) then
    					save = true
    				end
    				if save then
    					if hedafterneck then
    						hedafterneck = v
    					end
    				else
    					v:Destroy()
    				end
    			end
    		end
    	end
    	if method == 3 then
    		spawn(function()
    			wait(loadtime)
    			if model then
    				model:BreakJoints()
    			end
    		end)
    	end
    end
    
    cl.Parent = c
    for i, v in pairs(cl:GetChildren()) do
    	v.Parent = c
    end
    cl:Destroy()
    
    local noclipmodel = (noclipAllParts and c) or model
    local noclipcon = nil
    local function uncollide()
    	if noclipmodel then
    		for i, v in pairs(noclipmodel:GetDescendants()) do
    		    if v:IsA("BasePart") then
    			    v.CanCollide = false
    		    end
    		end
    	else
    		noclipcon:Disconnect()
    	end
    end
    noclipcon = stepped:Connect(uncollide)
    uncollide()
    
    for i, scr in pairs(model:GetDescendants()) do
    	if (scr.ClassName == "Script") and table.find(scriptNames, scr.Name) then
    		local Part0 = scr.Parent
    		if Part0:IsA("BasePart") then
    			for i1, scr1 in pairs(c:GetDescendants()) do
    				if (scr1.ClassName == "Script") and (scr1.Name == scr.Name) and (not scr1:IsDescendantOf(model)) then
    					local Part1 = scr1.Parent
    					if (Part1.ClassName == Part0.ClassName) and (Part1.Name == Part0.Name) then
    						align(Part0, Part1)
    						scr:Destroy()
    						scr1:Destroy()
    						break
    					end
    				end
    			end
    		end
    	end
    end
    
    for i, v in pairs(c:GetDescendants()) do
    	if v and v.Parent and (not v:IsDescendantOf(model)) then
    		if v:IsA("Decal") then
    		    v.Transparency = 1
    		elseif v:IsA("BasePart") then
    			v.Transparency = 1
    			v.Anchored = false
    		elseif v:IsA("ForceField") then
    			v.Visible = false
    		elseif v:IsA("Sound") then
    			v.Playing = false
    		elseif v:IsA("BillboardGui") or v:IsA("SurfaceGui") or v:IsA("ParticleEmitter") or v:IsA("Fire") or v:IsA("Smoke") or v:IsA("Sparkles") then
    			v.Enabled = false
    		end
    	end
    end
    
    if newanimate then
    	local animate = gp(c, "Animate", "LocalScript")
    	if animate then
    		animate.Disabled = false
    	end
    end
    
    if addtools then
    	for i, v in pairs(c:GetChildren()) do
    		if v:IsA("Tool") then
    			v.Parent = addtools
    		end
    	end
    end
    
    local hum0 = model:FindFirstChildOfClass("Humanoid")
    if hum0 then
        hum0:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (hum0 and hum0.Parent) then
                hum0 = nil
            end
        end)
    end
    
    local hum1 = c:FindFirstChildOfClass("Humanoid")
    if hum1 then
        hum1:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (hum1 and hum1.Parent) then
                hum1 = nil
            end
        end)
        
    	ws.CurrentCamera.CameraSubject = hum1
    	local camSubCon = nil
    	local function camSubFunc()
    		camSubCon:Disconnect()
    		if c and hum1 then
    			ws.CurrentCamera.CameraSubject = hum1
    		end
    	end
    	camSubCon = renderstepped:Connect(camSubFunc)
    	if hum0 then
    		hum0:GetPropertyChangedSignal("Jump"):Connect(function()
    			if hum1 then
    				hum1.Jump = hum0.Jump
    			end
    		end)
    	else
    		respawnrequest()
    	end
    end
    
    local rb = Instance.new("BindableEvent", c)
    rb.Event:Connect(function()
    	rb:Destroy()
    	sg:SetCore("ResetButtonCallback", true)
    	if destroyhum then
    		c:BreakJoints()
    		return
    	end
    	if hum0 and (hum0.Health > 0) then
    		model:BreakJoints()
    		hum0.Health = 0
    	end
    	if antirespawn then
    	    respawnrequest()
    	end
    end)
    sg:SetCore("ResetButtonCallback", rb)
    
    spawn(function()
    	while c do
    		if hum0 and hum1 then
    			hum1.Jump = hum0.Jump
    		end
    		wait()
    	end
    	sg:SetCore("ResetButtonCallback", true)
    end)
    
    R15toR6 = R15toR6 and hum1 and (hum1.RigType == Enum.HumanoidRigType.R15)
    if R15toR6 then
        local part = gp(c, "HumanoidRootPart", "BasePart") or gp(c, "UpperTorso", "BasePart") or gp(c, "LowerTorso", "BasePart") or gp(c, "Head", "BasePart") or c:FindFirstChildWhichIsA("BasePart")
    	if part then
    	    local cfr = part.CFrame
    		local R6parts = { 
    			head = {
    				Name = "Head",
    				Size = v3(2, 1, 1),
    				R15 = {
    					Head = 0
    				}
    			},
    			torso = {
    				Name = "Torso",
    				Size = v3(2, 2, 1),
    				R15 = {
    					UpperTorso = 0.2,
    					LowerTorso = -0.8
    				}
    			},
    			root = {
    				Name = "HumanoidRootPart",
    				Size = v3(2, 2, 1),
    				R15 = {
    					HumanoidRootPart = 0
    				}
    			},
    			leftArm = {
    				Name = "Left Arm",
    				Size = v3(1, 2, 1),
    				R15 = {
    					LeftHand = -0.849,
    					LeftLowerArm = -0.174,
    					LeftUpperArm = 0.415
    				}
    			},
    			rightArm = {
    				Name = "Right Arm",
    				Size = v3(1, 2, 1),
    				R15 = {
    					RightHand = -0.849,
    					RightLowerArm = -0.174,
    					RightUpperArm = 0.415
    				}
    			},
    			leftLeg = {
    				Name = "Left Leg",
    				Size = v3(1, 2, 1),
    				R15 = {
    					LeftFoot = -0.85,
    					LeftLowerLeg = -0.29,
    					LeftUpperLeg = 0.49
    				}
    			},
    			rightLeg = {
    				Name = "Right Leg",
    				Size = v3(1, 2, 1),
    				R15 = {
    					RightFoot = -0.85,
    					RightLowerLeg = -0.29,
    					RightUpperLeg = 0.49
    				}
    			}
    		}
    		for i, v in pairs(c:GetChildren()) do
    			if v:IsA("BasePart") then
    				for i1, v1 in pairs(v:GetChildren()) do
    					if v1:IsA("Motor6D") then
    						v1.Part0 = nil
    					end
    				end
    			end
    		end
    		part.Archivable = true
    		for i, v in pairs(R6parts) do
    			local part = part:Clone()
    			part:ClearAllChildren()
    			part.Name = v.Name
    			part.Size = v.Size
    			part.CFrame = cfr
    			part.Anchored = false
    			part.Transparency = 1
    			part.CanCollide = false
    			for i1, v1 in pairs(v.R15) do
    				local R15part = gp(c, i1, "BasePart")
    				local att = gp(R15part, "att1_" .. i1, "Attachment")
    				if R15part then
    					local weld = Instance.new("Weld", R15part)
    					weld.Name = "Weld_" .. i1
    					weld.Part0 = part
    					weld.Part1 = R15part
    					weld.C0 = cf(0, v1, 0)
    					weld.C1 = cf(0, 0, 0)
    					R15part.Massless = true
    					R15part.Name = "R15_" .. i1
    					R15part.Parent = part
    					if att then
    						att.Parent = part
    						att.Position = v3(0, v1, 0)
    					end
    				end
    			end
    			part.Parent = c
    			R6parts[i] = part
    		end
    		local R6joints = {
    			neck = {
    				Parent = R6parts.torso,
    				Name = "Neck",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.head,
    				C0 = cf(0, 1, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
    				C1 = cf(0, -0.5, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    			},
    			rootJoint = {
    				Parent = R6parts.root,
    				Name = "RootJoint" ,
    				Part0 = R6parts.root,
    				Part1 = R6parts.torso,
    				C0 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0),
    				C1 = cf(0, 0, 0, -1, 0, 0, 0, 0, 1, 0, 1, -0)
    			},
    			rightShoulder = {
    				Parent = R6parts.torso,
    				Name = "Right Shoulder",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.rightArm,
    				C0 = cf(1, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    				C1 = cf(-0.5, 0.5, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    			},
    			leftShoulder = {
    				Parent = R6parts.torso,
    				Name = "Left Shoulder",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.leftArm,
    				C0 = cf(-1, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    				C1 = cf(0.5, 0.5, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    			},
    			rightHip = {
    				Parent = R6parts.torso,
    				Name = "Right Hip",
    				Part0 = R6parts.torso,
    				Part1 = R6parts.rightLeg,
    				C0 = cf(1, -1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0),
    				C1 = cf(0.5, 1, 0, 0, 0, 1, 0, 1, -0, -1, 0, 0)
    			},
    			leftHip = {
    				Parent = R6parts.torso,
    				Name = "Left Hip" ,
    				Part0 = R6parts.torso,
    				Part1 = R6parts.leftLeg,
    				C0 = cf(-1, -1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0),
    				C1 = cf(-0.5, 1, 0, 0, 0, -1, 0, 1, 0, 1, 0, 0)
    			}
    		}
    		for i, v in pairs(R6joints) do
    			local joint = Instance.new("Motor6D")
    			for prop, val in pairs(v) do
    				joint[prop] = val
    			end
    			R6joints[i] = joint
    		end
    		if hum1 then
        		hum1.RigType = Enum.HumanoidRigType.R6
        		hum1.HipHeight = 0
    		end
    	end
    end
    
    local torso1 = torso
    torso = gp(c, "Torso", "BasePart") or ((not R15toR6) and gp(c, torso.Name, "BasePart"))
    if (typeof(hedafterneck) == "Instance") and head and torso and torso1 then
    	local conNeck = nil
    	local conTorso = nil
    	local contorso1 = nil
    	local aligns = {}
    	local function enableAligns()
    	    conNeck:Disconnect()
            conTorso:Disconnect()
            conTorso1:Disconnect()
    		for i, v in pairs(aligns) do
    			v.Enabled = true
    		end
    	end
    	conNeck = hedafterneck.Changed:Connect(function(prop)
    	    if table.find({"Part0", "Part1", "Parent"}, prop) then
    	        enableAligns()
    		end
    	end)
    	conTorso = torso:GetPropertyChangedSignal("Parent"):Connect(enableAligns)
    	conTorso1 = torso1:GetPropertyChangedSignal("Parent"):Connect(enableAligns)
    	for i, v in pairs(head:GetDescendants()) do
    		if v:IsA("AlignPosition") or v:IsA("AlignOrientation") then
    			i = tostring(i)
    			aligns[i] = v
    			v:GetPropertyChangedSignal("Parent"):Connect(function()
    			    aligns[i] = nil
    			end)
    			v.Enabled = false
    		end
    	end
    end
    
    local flingpart0 = gp(model, flingpart, "BasePart") or gp(gp(model, flingpart, "Accessory"), "Handle", "BasePart")
    local flingpart1 = gp(c, flingpart, "BasePart") or gp(gp(c, flingpart, "Accessory"), "Handle", "BasePart")
    
    local fling = function() end
    if flingpart0 and flingpart1 then
        flingpart0:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (flingpart0 and flingpart0.Parent) then
                flingpart0 = nil
                fling = function() end
            end
        end)
        flingpart0.Archivable = true
        flingpart1:GetPropertyChangedSignal("Parent"):Connect(function()
            if not (flingpart1 and flingpart1.Parent) then
                flingpart1 = nil
                fling = function() end
            end
        end)
        local att0 = gp(flingpart0, "att0_" .. flingpart0.Name, "Attachment")
        local att1 = gp(flingpart1, "att1_" .. flingpart1.Name, "Attachment")
        if att0 and att1 then
            att0:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (att0 and att0.Parent) then
                    att0 = nil
                    fling = function() end
                end
            end)
            att1:GetPropertyChangedSignal("Parent"):Connect(function()
                if not (att1 and att1.Parent) then
                    att1 = nil
                    fling = function() end
                end
            end)
            local lastfling = nil
            local mouse = lp:GetMouse()
            fling = function(target, duration, rotVelocity)
                if typeof(target) == "Instance" then
                    if target:IsA("BasePart") then
                        target = target.Position
                    elseif target:IsA("Model") then
                        target = gp(target, "HumanoidRootPart", "BasePart") or gp(target, "Torso", "BasePart") or gp(target, "UpperTorso", "BasePart") or target:FindFirstChildWhichIsA("BasePart")
                        if target then
                            target = target.Position
                        else
                            return
                        end
                    elseif target:IsA("Humanoid") then
                        local parent = target.Parent
                        if not (parent and parent:IsA("Model")) then
                            return
                        end
                        target = gp(target, "HumanoidRootPart", "BasePart") or gp(target, "Torso", "BasePart") or gp(target, "UpperTorso", "BasePart") or target:FindFirstChildWhichIsA("BasePart")
                        if target then
                            target = target.Position
                        else
                            return
                        end
                    else
                        return
                    end
                elseif typeof(target) == "CFrame" then
                    target = target.Position
                elseif typeof(target) ~= "Vector3" then
                    target = mouse.Hit
                    if target then
                        target = target.Position
                    else
                        return
                    end
                end
                lastfling = target
                if type(duration) ~= "number" then
                    duration = tonumber(duration) or 0.5
                end
                if typeof(rotVelocity) ~= "Vector3" then
                    rotVelocity = v3(20000, 20000, 20000)
                end
                if not (target and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                local flingpart = flingpart0:Clone()
                flingpart.Transparency = 1
                flingpart.Size = v3(0.01, 0.01, 0.01)
                flingpart.CanCollide = false
                flingpart.Name = "flingpart_" .. flingpart0.Name
                flingpart.Anchored = true
                flingpart.Velocity = v3_0
                flingpart.RotVelocity = v3_0
                flingpart:GetPropertyChangedSignal("Parent"):Connect(function()
                    if not (flingpart and flingpart.Parent) then
                        flingpart = nil
                    end
                end)
                flingpart.Parent = flingpart1
                if flingpart0.Transparency > 0.5 then
                    flingpart0.Transparency = 0.5
                end
                att1.Parent = flingpart
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = false
                    end
                end
                local con = nil
                con = heartbeat:Connect(function()
                    if target and (lastfling == target) and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = rotVelocity
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                local rsteppedRotVel = v3(
                    ((rotVelocity.X > 0) and -1) or 1,
                    ((rotVelocity.Y > 0) and -1) or 1,
                    ((rotVelocity.Z > 0) and -1) or 1
                )
                local con = nil
                con = renderstepped:Connect(function()
                    if target and (lastfling == target) and flingpart and flingpart0 and flingpart1 and att0 and att1 then
                        flingpart0.RotVelocity = rsteppedRotVel
                        flingpart.Position = target
                    else
                        con:Disconnect()
                    end
                end)
                wait(duration)
                if lastfling ~= target then
                    if flingpart then
                        if att1 and (att1.Parent == flingpart) then
                            att1.Parent = flingpart1
                        end
                        flingpart:Destroy()
                    end
                    return
                end
                target = nil
                if not (flingpart and flingpart0 and flingpart1 and att0 and att1) then
                    return
                end
                flingpart0.RotVelocity = v3_0
                att1.Parent = flingpart1
                for i, v in pairs(att0:GetChildren()) do
                    if v:IsA("AlignOrientation") then
                        v.Enabled = true
                    end
                end
                if flingpart then
                    flingpart:Destroy()
                end
            end
        end
    end
end

local c = game:GetService("Players").LocalPlayer.Character
if not c then return end
local ws = game:GetService("Workspace")
c.AncestryChanged:Connect(function()
    if not c:IsDescendantOf(ws) then
        c = nil
    end
end)
local rs = game:GetService("RunService")
local stepped, renderstepped, heartbeat = rs.Stepped, rs.RenderStepped, rs.Heartbeat
local function gp(parent, name, classname)
    if typeof(parent) == "Instance" then
        for i, v in pairs(parent:GetChildren()) do
            if (v.Name == name) and v:IsA(classname) then
                return v
            end
        end
    end
    return nil
end

local function joint(name, parent, Part0, Part1, fakejoint)
    fakejoint.C0 = CFrame.new()
    fakejoint.C1 = CFrame.new()
    local joint = gp(parent, name, "Motor6D")
    if joint then
        fakejoint.C0 = joint.C0
        fakejoint.C1 = joint.C1
    end
    local con = nil
    con = stepped:Connect(function()
        if not c then
            return con:Disconnect()
        end
        local fix = nil
        fix = function()
            if not joint then 
                joint = Instance.new("Motor6D")
                joint.Changed:Connect(fix)
                joint.Destroying:Connect(function() joint = nil end)
            end
            joint.Part0 = Part0
            joint.Part1 = Part1
            joint.C0 = fakejoint.C0
            joint.C1 = fakejoint.C1
            joint.Parent = parent
        end
        fix()
    end)
end

local function part(name)
    local part = gp(c, name, "BasePart")
    if not part then
        part = Instance.new("Part")
        part.Name = name
        part.Transparency = 1
        part.CanCollide = false
        part.Massless = true
        part.Size = Vector3.new(1, 1, 1)
        part.Parent = c
    end
    local size = part.Size
    part.Destroying:Connect(function()
        part = nil
        c = nil
    end)
    local con = nil
    con = stepped:Connect(function()
        if not part then
            return con:Disconnect()
        end
        part.Anchored = false
        part.Name = name
        part.Size = size
        part.CanQuery = false
        part.CanTouch = false
        part.Parent = c
    end)
    return part
end

local Torso = part("Torso")
local RightArm = part("Right Arm")
local LeftArm = part("Left Arm")
local LeftLeg = part("Left Leg")
local RightLeg = part("Right Leg")
local Head = part("Head")
local HumanoidRootPart = part("HumanoidRootPart")

local RootJoint = {}
local RightShoulder = {}
local LeftShoulder = {}
local RightHip = {}
local LeftHip = {}
local Neck = {}

joint("Neck", Torso, Torso, Head, Neck)
joint("RootJoint", HumanoidRootPart, HumanoidRootPart, Torso, RootJoint)
joint("Right Shoulder", Torso, Torso, RightArm, RightShoulder)
joint("Left Shoulder", Torso, Torso, LeftArm, LeftShoulder)
joint("Right Hip", Torso, Torso, RightLeg, RightHip)
joint("Left Hip", Torso, Torso, LeftLeg, LeftHip)


--createAttachmentPoint(Torso, "SwordAttach", v3(1, 0.5, 0.5))

local animate = gp(c, "Animate", "LocalScript")
if animate then
    animate.Disabled = true
end
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")

local hum = c:FindFirstChildOfClass("Humanoid") or Instance.new("Humanoid", c)
local states = {
    [0]=false,[8]=true,
    [10]=false,[12]=false,
    [11]=false,[1]=false,
    [2]=true,[3]=true,
    [7]=true,[6]=false,
    [5]=true,[13]=false,
    [14]=false,[15]=false,
    [4]=false,[16]=false
}
for i, v in pairs(states) do
    hum:SetStateEnabled(i, v)
end
for i, v in pairs(hum:GetPlayingAnimationTracks()) do
    v:Stop()
end
hum.RigType = Enum.HumanoidRigType.R6
hum.BreakJointsOnDeath = false
hum.RequiresNeck = false
hum.MaxHealth = 0
hum.Health = 0
hum:ChangeState(8)

local modes = {
    q = "lay",
    e = "sit",
    r = "rickroll",
    t = "wave",
    y = "dab",
    u = "dance",
    p = "T",
    f = "float",
    g = "floss",
    h = "emote",
    j = "pushups",
    k = "kazotsky",
    l = "L"
}
for i, v in pairs(modes) do
    if type(i) == "string" then
        modes[Enum.KeyCode[i:upper()]] = v
    end
end
local uis, mode = game:GetService("UserInputService"), ""
uis.InputBegan:Connect(function(key)
    if uis:GetFocusedTextBox() then return end
    key = key.KeyCode
    if mode == modes[key] then
        mode = ""
    else
        mode = modes[key] or mode
    end
end)
local cf, v3, euler, sin, sine, abs = CFrame.new, Vector3.new, CFrame.fromEulerAnglesXYZ, math.sin, 0, math.abs
local con = nil
con = renderstepped:Connect(function(deltaTime)
    if not c then
        return con:Disconnect()
    end
    local vel = HumanoidRootPart.Velocity
    sine += deltaTime
    deltaTime *= 10
    if vel.Magnitude > 2 then
        if abs(vel.X) + abs(vel.Z) > abs(vel.Y) then -- walk
       
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.55,-0.75-0.15*sin(sine*1.15),-0.25),angles(-1.3089969389957472+0.08726646259971647*sin(sine*1),0.4363323129985824,0.17453292519943295)),deltaTime)    
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.25 * sin(sine*1.15),0),angles(-1.9198621771937625,0,3.141592653589793)),deltaTime)
 Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.1*sin(sine*1),0),angles(-1.3089969389957472,0,3.141592653589793)),deltaTime)  
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,-0.25-0.15*sin(sine*1.15),0),angles(-1.3089969389957472,0.3490658503988659,0.4363323129985824)),deltaTime)  
  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.45,-1-0.15*sin(sine*1.15),-0.55),angles(-1.1344640137963142+0.08726646259971647*sin(sine*1),0.3490658503988659,0)),deltaTime)
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.75-0.15*sin(sine*1.15),-0.95),angles(0,0.3490658503988659,1.5707963267948966)),deltaTime)
if halo then 
    halo.C0=Lerp(halo.C0,cf(0,0.15 * sin(sine*1),-2),deltaTime)
end
if sword1 then 
 sword1.C0=Lerp(sword1.C0,cfMul(cf(2.5,2.45+0.15*sin(sine*1),-2),angles(0,0,3.141592653589793+6.283185307179586*sin(sine*0.25))),deltaTime) 
end
if sword2 then
sword2.C0=Lerp(sword2.C0,cfMul(cf(2.5,2.45+0.15*sin(sine*1),-2),angles(0,0,6.283185307179586*sin(sine*0.25))),deltaTime)
end
if sword3 then 
sword3.C0=Lerp(sword3.C0,cfMul(cf(2.5,2.45+0.15*sin(sine*1),-2),angles(0,0,1.5707963267948966+6.283185307179586*sin(sine*0.25))),deltaTime)
end
if sword4 then 
sword4.C0=Lerp(sword4.C0,cfMul(cf(2.5,2.45,-2),angles(0,0,4.71238898038469+6.283185307179586*sin(sine*0.25))),deltaTime)
end
        elseif vel.Y > 0 then -- jump
            
RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf_0,angles(-1.4835298641951802 + Vfw * 0.1, Vrt * -0.05, -3.141592653589793)),deltaTime) 
RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.3962634015954636, 0, -3.141592653589793 - Vrt)),deltaTime) 
RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
            --Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Torso,0,0,0,4,-90,5,0.25,4,0,0,0,4,0,5,0,4,0,0,0,4,-180,0,0,4,Head,0,0,0,4,-80,-5,0.5,4,1,0,0,4,0,-5,0.25,4,0,0,0,4,-180,0,0,4,LeftArm,-1,0,0,4,230,-5,0.5,4,0.5,0,0,4,-100,-5,0.25,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,90,-5,0.5,4,-1,0,0,4,95,5,0.25,4,0,0,0,4,-90,0,0,4,RightArm,1,0,0,4,230,-5,0.5,4,0.5,0,0,4,100,-5,0.25,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,90,-5,0.5,4,-1,0,0,4,-95,5,0.25,4,0,0,0,4,90,0,0,4
            
        else -- fall
            
RootJoint.C0 = Lerp(RootJoint.C0,cfMul(cf_0,angles(-1.6580627893946132 + Vfw * 0.1, Vrt * -0.05, -3.141592653589793)),deltaTime) 
RightShoulder.C0 = Lerp(RightShoulder.C0,cfMul(cf(1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.7453292519943295 + 0.08726646259971647 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
LeftHip.C0 = Lerp(LeftHip.C0,cfMul(cf(-1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.6580627893946132 + 0.06981317007977318 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
LeftShoulder.C0 = Lerp(LeftShoulder.C0,cfMul(cf(-1, 0.5, 0),angles(4.014257279586958 - 0.08726646259971647 * sin((sine + 0.5) * 4), -1.7453292519943295 - 0.08726646259971647 * sin((sine + 0.25) * 4), 1.5707963267948966)),deltaTime) 
Neck.C0 = Lerp(Neck.C0,cfMul(cf(0, 1, 0),angles(-1.7453292519943295, 0, -3.141592653589793 - Vrt)),deltaTime) 
RightHip.C0 = Lerp(RightHip.C0,cfMul(cf(1, -1, 0),angles(1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.5) * 4), 1.6580627893946132 - 0.06981317007977318 * sin((sine + 0.25) * 4), -1.5707963267948966)),deltaTime) 
            
        end
    else --idle
        
        if mode == "" then
      


Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.9198621771937625,0,3.141592653589793)),deltaTime) 
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.75,0.65+0.25*sin(sine*2),-0.55),angles(-0.08726646259971647+0.17453292519943295*sin(sine*2),-0.3490658503988659,0.3490658503988659+0.08726646259971647*sin(sine*2))),deltaTime) 
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.25,-0.95+0.15*sin(sine*2),0.15),angles(-0.3490658503988659,0.3490658503988659,-0.17453292519943295+0.08726646259971647*sin(sine*2))),deltaTime) 
 RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.25,-1,0.25),angles(0.17453292519943295*sin(sine*2),-0.3490658503988659,0)),deltaTime)  
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.75+0.25*sin(sine*2),0.55),angles(3.141592653589793,-0.3490658503988659,-0.6981317007977318)),deltaTime) 
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,7.5+0.95*sin(sine*2),0),angles(-1.5707963267948966,0.17453292519943295,3.141592653589793)),deltaTime) 
if sword1 then 
sword1.C0=Lerp(sword1.C0,cfMul(cf(2,2.1,-3-0.55*sin(sine*2)),angles(1.5707963267948966,17.453292519943297*sin(sine*0.15),0)),deltaTime) 
end
if sword3 then 
sword3.C0=Lerp(sword3.C0,cfMul(cf(2,1.9,-3-0.55*sin(sine*2)),angles(1.5707963267948966,3.141592653589793+17.453292519943297*sin(sine*0.15),0)),deltaTime) 
end
if sword2 then
 sword2.C0=Lerp(sword2.C0,cfMul(cf(2,2,-0.95),angles(0,0,4.363323129985824+0.8726646259971648*sin(sine*2))),deltaTime)  
end
if halo then
 halo.C0=Lerp(halo.C0,cfMul(cf(2.5,0.55,-4-0.55*sin(sine*2)),angles(1.6580627893946132,0,-0.17453292519943295)),deltaTime) 
end
if sword4 then
 sword4.C0=Lerp(sword4.C0,cfMul(cf(2,2,-0.95),angles(0,0,-0.8726646259971648*sin(sine*2))),deltaTime)
     end
        elseif mode == "lay" then
            
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.25 * sin(sine*1.15),0),angles(-0.6108652381980153,0,3.141592653589793)),deltaTime)   
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,0),angles(-0.7853981633974483-0.17453292519943295*sin(sine*1.15),-1.5707963267948966,0)),deltaTime) 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.85,1.16,-0.45+0.1*sin(sine*1.15)),angles(1.5707963267948966,0.3490658503988659,-0.2617993877991494)),deltaTime) 
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0,-0.25+0.15*sin(sine*1.15)),angles(-1.0471975511965976-0.17453292519943295*sin(sine*1.16),0.3490658503988659,0.17453292519943295)),deltaTime) 
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0.05 * sin(sine*1.15)),angles(-2.007128639793479,0,3.141592653589793)),deltaTime) 
 RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(-1.3089969389957472-0.17453292519943295*sin(sine*1.15),1.5707963267948966,0)),deltaTime)  

if halo then
halo.C0=Lerp(halo.C0,cfMul(cf(0,0,7.5-0.15*sin(sine*1.15)),angles(0,0,-17.453292519943297*sin(sine*0.15))),deltaTime)
end
if sword1 then
sword1.C0=Lerp(sword1.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,17.453292519943297*sin(sine*0.15))),deltaTime)
end
if sword2 then
sword2.C0=Lerp(sword2.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,1.5707963267948966+17.453292519943297*sin(sine*0.15))),deltaTime) 
end
if sword3 then
 sword3.C0=Lerp(sword3.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,3.141592653589793+17.453292519943297*sin(sine*0.15))),deltaTime) 
end
if sword4 then
 sword4.C0=Lerp(sword4.C0,cfMul(cf(2.35,2.25,7.5-0.15*sin(sine*1.15)),angles(0,0,4.71238898038469+17.453292519943297*sin(sine*0.15))),deltaTime)
 
     end
        elseif mode == "sit" then
            
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.9198621771937625+0.08726646259971647*sin(sine*1.15),0,3.141592653589793)),deltaTime) 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.45,-0.15-0.15*sin(sine*1),0),angles(-0.7853981633974483,0.3490658503988659,-0.6108652381980153+0.17453292519943295*sin(sine*1.15))),deltaTime) 
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,1-0.25*sin(sine*1.25),0),angles(-1.3962634015954636-0.08726646259971647*sin(sine*1.15),0,3.141592653589793)),deltaTime) 
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.95,-0.55,-0.55),angles(-0.3490658503988659+0.17453292519943295*sin(sine*1.15),-1.5707963267948966,0)),deltaTime) 
 RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.75,-0.75,0.35),angles(-0.8726646259971648-0.17453292519943295*sin(sine*1.15),0.4363323129985824,0)),deltaTime)  
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.35-0.15*sin(sine*1.15),-0.25),angles(1.5707963267948966-0.04363323129985824*sin(sine*1.15),0.3490658503988659,0.17453292519943295)),deltaTime) 
 if sword1 then
sword1.C0=Lerp(sword1.C0,cfMul(cf(1.85+0.1*sin(sine*1.15),4-0.15*sin(sine*1.15),-0.65-0.1*sin(sine*1.15)),angles(0,0,1.5707963267948966)),deltaTime) 
end
if sword2 then
sword2.C0=Lerp(sword2.C0,cfMul(cf(0.45,2.75+0.2*sin(sine*1.155),-1.55),angles(1.5707963267948966,-1.5707963267948966,1.5707963267948966)),deltaTime) 
end
if sword3 then
sword3.C0=Lerp(sword3.C0,cfMul(cf(2.35,2.55-0.15*sin(sine*1.15),-1.55),angles(0,0,1.5707963267948966+3.141592653589793*sin(sine*1))),deltaTime) 
end
if sword4 then
sword4.C0=Lerp(sword4.C0,cfMul(cf(2.35,2.55-0.15*sin(sine*1.15),-1.55),angles(0,0,4.71238898038469+3.141592653589793*sin(sine*1))),deltaTime)
end
if halo then
halo.C0=Lerp(halo.C0,cfMul(cf(0,-4,-2),angles(0.3490658503988659,0,0)),deltaTime)
end
        elseif mode == "rickroll" then
            
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0.25-0.15*sin(sine*1.15),0),angles(0.17453292519943295,0.3490658503988659,0.5235987755982988)),deltaTime)
 Neck.C0=Lerp(Neck.C0,cfMul(cf(0,0.85-0.1*sin(sine*1.15),0),angles(-2.007128639793479-0.11344640137963143*sin(sine*1.15),0,3.141592653589793)),deltaTime)
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5+0.15*sin(sine*1.1),-1),angles(1.5707963267948966,0,1.4835298641951802)),deltaTime)
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,1.25-0.15*sin(sine*1.15),0),angles(-1.3089969389957472,0,3.141592653589793)),deltaTime)
 RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1-0.15*sin(sine*1.15),0),angles(-0.9599310885968813+0.17453292519943295*sin(sine*1),1.5707963267948966,0)),deltaTime)
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.45-0.15*sin(sine*1.15),-0.85),angles(0.08726646259971647-0.08726646259971647*sin(sine*1.15),-1.5707963267948966,0)),deltaTime) 
if halo then
 halo.C0=Lerp(halo.C0,cfMul(cf(0,0,-2),angles(0,0,7.853981633974483*sin(sine*0.25))),deltaTime)
end
if sword1 then
 sword1.C0=Lerp(sword1.C0,cfMul(cf(1.75-0.15*sin(sine*1.15),3-0.15*sin(sine*1.15),1.55),angles(-1.6580627893946132,0.6283185307179586,1.5707963267948966)),deltaTime)
end
if sword2 then
sword2.C0=Lerp(sword2.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,1.3089969389957472-17.453292519943297*sin(sine*0.25))),deltaTime)
end
if sword3 then
sword3.C0=Lerp(sword3.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,3.4033920413889427-17.453292519943297*sin(sine*0.25))),deltaTime)
end
if sword4 then
sword4.C0=Lerp(sword4.C0,cfMul(cf(2.35,2.35,-2),angles(0,0,5.497787143782138-17.453292519943297*sin(sine*0.25))),deltaTime)
            end
        elseif mode == "wave" then
if sword1 then
sword1.C0=Lerp(sword1.C0,cfMul(cf(2.35,2.35,-1),angles(0,0,2.356194490192345+17.453292519943297*sin(sine*0.25))),deltaTime)
end
if sword2 then 
sword2.C0=Lerp(sword2.C0,cfMul(cf(2.75+0.25*sin(sine*1.15),2.35+0.15*sin(sine*1.25),-2.35),angles(1.5707963267948966,-0.08726646259971647+0.08726646259971647*sin(sine*1.25),-1.5707963267948966)),deltaTime)  
end
if sword3 then 
sword3.C0=Lerp(sword3.C0,cfMul(cf(2.35,2.35,-1),angles(0,0,3.9269908169872414-0.7853981633974483*sin(sine*1.15))),deltaTime) 
end
if sword4 then 
sword4.C0=Lerp(sword4.C0,cfMul(cf(2.35,2.35,-1),angles(0,0,0.7853981633974483+0.7853981633974483*sin(sine*1.15))),deltaTime)
end
if halo then
halo.C0=Lerp(halo.C0,cfMul(cf(0,0,-1),angles(0,0,-17.453292519943297*sin(sine*0.15))),deltaTime)
end
 Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.05*sin(sine*1.15),0),angles(-2.181661564992912,0,3.141592653589793)),deltaTime) 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.55,0,0),angles(-0.17453292519943295+0.3490658503988659*sin(sine*1.15),0.3490658503988659,-0.7853981633974483)),deltaTime) 
 RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.75-0.25*sin(sine*1.15),-0.55),angles(-0.5235987755982988+0.08726646259971647*sin(sine*1.25),1.5707963267948966,0)),deltaTime) 
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(0.55,-0.15 * sin(sine*1.15),-0.75),angles(1.9198621771937625,2.356194490192345,0.9599310885968813)),deltaTime)
  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.25 * sin(sine*1.15),0),angles(-1.9198621771937625-0.17453292519943295*sin(sine*1.15),0,3.141592653589793)),deltaTime) 
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75-0.25*sin(sine*1.15),0),angles(-0.3490658503988659-0.08726646259971647*sin(sine*1.15),-1.5707963267948966,0)),deltaTime)  
        
        elseif mode == "dab" then
if halo  then
halo.C0=Lerp(halo.C0,cfMul(cf(0,-0.15 * sin(sine*1.15),-1.1),angles(0,0,-17.453292519943297*sin(sine*0.25))),deltaTime)
end
if sword1 then
sword1.C0=Lerp(sword1.C0,cfMul(cf(1.34,4.25,-0.6+0.15*sin(sine*1.15)),angles(1.6580627893946132,-2.443460952792061,0.4363323129985824)),deltaTime)
end
if sword2 then
sword2.C0=Lerp(sword2.C0,cfMul(cf(2.35,2.35-0.15*sin(sine*1.25),-1.1),angles(0,0,3.9269908169872414+0.7853981633974483*sin(sine*1))),deltaTime)
end
if sword3 then
sword3.C0=Lerp(sword3.C0,cfMul(cf(2.35,2.35-0.15*sin(sine*1.15),-1.1),angles(0,0,0.8726646259971648-0.7853981633974483*sin(sine*1))),deltaTime) 
end
if sword4 then 
sword4.C0=Lerp(sword4.C0,cfMul(cf(2.55,-0.15,-1+0.15*sin(sine*1.15)),angles(1.6580627893946132,0.6457718232379019,0.4363323129985824)),deltaTime)
end
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,1.25-0.35*sin(sine*1.25),0),angles(-1.5707963267948966,0,3.141592653589793)),deltaTime) 
 Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1.1-0.05*sin(sine*1.15),0),angles(-1.7453292519943295,0,3.141592653589793)),deltaTime) 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.55,0.75-0.15*sin(sine*1.15),-0.35),angles(1.9198621771937625,0.3490658503988659,0)),deltaTime) 
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.55,0.75-0.15*sin(sine*1.15),-0.5),angles(1.5707963267948966,-0.3490658503988659,-0.2617993877991494)),deltaTime) 
 RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.55-0.25*sin(sine*1.15),-0.55),angles(-0.2617993877991494+0.17453292519943295*sin(sine*1.15),1.5707963267948966,0)),deltaTime) 
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1-0.25*sin(sine*1.15),0),angles(-0.6108652381980153-0.17453292519943295*sin(sine*1.15),-1.5707963267948966,0)),deltaTime)
            
        elseif mode == "dance" then
            
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1, 1 + 0.5 * sin((sine + 0.078125) * 6.4), -0.5) * euler(-0.3490658503988659 + 1.0471975511965976 * sin((sine + 0.078125) * 6.4), -1.6580627893946132 + 0.6108652381980153 * sin((sine + 0.078125) * 6.4), -1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.5707963267948966 - 0.17453292519943295 * sin((sine + 0.078125) * 6.4), 1.8325957145940461 + 0.2617993877991494 * sin(sine * 6.4), -1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5882496193148399 + 0.17453292519943295 * sin((sine - 0.078125) * 6.4), 0.08726646259971647 + 0.17453292519943295 * sin((sine + 0.078125) * 6.4), 3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1, 0.5 + 0.15 * sin((sine + 0.546875) * 12.8), 0) * euler(1.9198621771937625 + 0.2617993877991494 * sin((sine + 0.546875) * 12.8), 1.6580627893946132 - 0.2617993877991494 * sin(sine * 6.4), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(1.5707963267948966 - 0.12217304763960307 * sin((sine + 0.078125) * 6.4), -1.8325957145940461 + 0.2617993877991494 * sin(sine * 6.4), 1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.6 * sin(sine * 6.4), 0, 0) * euler(-1.5882496193148399 + 0.08726646259971647 * sin((sine + 0.078125) * 6.4), -0.08726646259971647 * sin(sine * 6.4), 3.141592653589793 + 0.08726646259971647 * sin(sine * 6.4)), deltaTime) 
            --LeftArm,-1,0,0,6.4,-20,60,0.078125,6.4,1,0.5,0.078125,6.4,-95,35,0.078125,6.4,-0.5,0,0,6.4,-90,0,0,6.4,RightLeg,1,0,0,6.4,90,-10,0.078125,6.4,-1,0,0,6.4,105,15,0,6.4,0,0,0,6.4,-90,0,0,6.4,Head,0,0,0,6.4,-91,10,-0.078125,6.4,1,0,0,6.4,5,10,0.078125,6.4,0,0,0,6.4,180,0,0,6.4,RightArm,1,0,0,6.4,110,15,0.546875,12.8,0.5,0.15,0.546875,12.8,95,-15,0,6.4,0,0,0,6.4,-90,0,0,6.4,LeftLeg,-1,0,0,6.4,90,-7,0.078125,6.4,-1,0,0,6.4,-105,15,0,6.4,0,0,0,6.4,90,0,0,6.4,Fedora_Handle,8.657480066176504e-09,0,0,6.4,-6,0,0,6.4,-0.15052366256713867,0,0,6.4,0,0,0,6.4,-0.010221302509307861,0,0,6.4,-1,0,0,6.4,Torso,0,-0.6,0,6.4,-91,5,0.078125,6.4,0,0,0,6.4,-0,-5,0,6.4,0,0,0,6.4,180,5,0,6.4
            
        elseif mode == "T" then
            
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5, 0.5, 0) * euler(1.5707963267948966, 3.141592653589793, -1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(0, 1.5707963267948966, 0), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5, 0.5, 0) * euler(1.5707963267948966, 3.141592653589793, 1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(0, -1.5707963267948966, 0), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0, 0) * euler(-1.5707963267948966, 0, -3.141592653589793), deltaTime) 
            --RightArm,1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,-90,0,0,1,RightLeg,1,0,0,1,0,0,0,1,-1,0,0,1,90,0,0,1,0,0,0,1,0,0,0,1,Fedora_Handle,8.657480066176504e-09,0,0,1,-6,0,0,1,-0.15052366256713867,0,0,1,0,0,0,1,-0.010221302509307861,0,0,1,0,0,0,1,LeftArm,-1.5,0,0,1,90,0,0,1,0.5,0,0,1,180,0,0,1,0,0,0,1,90,0,0,1,LeftLeg,-1,0,0,1,-0,0,0,1,-1,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,Head,0,0,0,1,-90,0,0,1,1,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1,Torso,0,0,0,1,-90,0,0,1,0,0,0,1,0,0,0,1,0,0,0,1,-180,0,0,1

        elseif mode == "float" then
            
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1.5 - 0.5 * sin((sine + 0.1) * 2), 0.5 + 0.5 * sin((sine - 0.5) * 2), 0) * euler(1.5707963267948966, 3.141592653589793 + 0.5235987755982988 * sin((sine - 1) * 2), -1.5707963267948966 - 0.2617993877991494 * sin(sine * 0.5)), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.5707963267948966 - 0.17453292519943295 * sin(sine * 2), 1.5707963267948966 - 0.08726646259971647 * sin((sine + 0.7) * 2), -1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 3 + 0.7 * sin((sine + 0.15) * 2), 0) * euler(-1.5707963267948966 + 0.08726646259971647 * sin((sine - 0.5) * 2), 0, -3.141592653589793 + 0.2617993877991494 * sin(sine * 0.5)), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(1.5707963267948966 - 0.08726646259971647 * sin(sine * 2), -1.5707963267948966 + 0.08726646259971647 * sin((sine + 0.7) * 2), 1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1.5 + 0.5 * sin((sine + 0.1) * 2), 0.5 + 0.5 * sin((sine - 0.5) * 2), 0) * euler(1.5707963267948966, 3.141592653589793 - 0.5235987755982988 * sin((sine - 1) * 2), 1.5707963267948966 - 0.2617993877991494 * sin(sine * 0.5)), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 - 0.17453292519943295 * sin((sine + 0.5) * 2), 0.17453292519943295 * sin(sine * 1), -3.141592653589793 + 0.5235987755982988 * sin(sine * 0.3)), deltaTime) 
            --RightArm,1.5,-0.5,0.1,2,90,0,0,2,0.5,0.5,-0.5,2,180,30,-1,2,0,0,0,2,-90,-15,0,0.5,Fedora_Handle,8.657480066176504e-09,0,0,2,-6,0,0,2,-0.15052366256713867,0,0,2,0,0,0,2,-0.010221302509307861,0,0,2,0,0,0,2,RightLeg,1,0,0,2,90,-10,0,2,-1,0,0,2,90,-5,0.7,2,0,0,0,2,-90,0,0,2,Torso,0,0,0,2,-90,5,-0.5,2,3,0.7,0.15,2,0,0,0,1,0,0,0,2,-180,15,0,0.5,LeftLeg,-1,0,0,2,90,-5,0,2,-1,0,0,2,-90,5,0.7,2,0,0,0,2,90,0,0,2,LeftArm,-1.5,0.5,0.1,2,90,0,0,2,0.5,0.5,-0.5,2,180,-30,-1,2,0,0,0,2,90,-15,0,0.5,Head,0,0,0,2,-90,-10,0.5,2,1,0,0,2,0,10,0,1,0,0,0,2,-180,30,0,0.3
            
        elseif mode == "floss" then
            
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.125) * 16), -0.2617993877991494 * sin((sine + 0.05) * 8), -3.141592653589793 + 0.5235987755982988 * sin(sine * 1.1)), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.9 + 0.4 * sin(sine * 8), 0.5, -0.5 * sin((sine - 0.35) * 4)) * euler(1.5707963267948966 + 0.6981317007977318 * sin(sine * 4), 1.5707963267948966 + 0.8726646259971648 * sin(sine * 8), -1.5707963267948966 + 0.17453292519943295 * sin((sine - 0.35) * 4)), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin((sine + 0.4) * 8), 0, 0) * euler(-1.5707963267948966, 0.3490658503988659 * sin(sine * 8), -3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.4 * sin((sine - 0.01) * 8), 0) * euler(1.5707963267948966, -1.7453292519943295 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.4 * sin((sine - 0.01) * 8), 0) * euler(1.5707963267948966, 1.7453292519943295 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.9 + 0.4 * sin(sine * 8), 0.5, 0.5 * sin((sine + 0.25) * 4)) * euler(1.5707963267948966, -1.5707963267948966 + 0.8726646259971648 * sin(sine * 8), 1.5707963267948966 + 0.6981317007977318 * sin((sine + 0.25) * 4)), deltaTime) 
            --Head,0,0,0,8,-90,2.5,0.125,16,1,0,0,8,0,-15,0.05,8,0,0,0,8,-180,30,0,1.1,RightArm,0.9,0.4,0,8,90,40,0,4,0.5,0,0,8,90,50,0,8,0,-0.5,-0.35,4,-90,10,-0.35,4,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8,Torso,0,-0.1,0.4,8,-90,0,0,8,0,0,0,4,0,20,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.4,-0.01,8,-100,30,0,8,0,0,0,8,90,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.4,-0.01,8,100,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.9,0.4,0,8,90,0,0.25,4,0.5,0,0,8,-90,50,0,8,0,0.5,0.25,4,90,40,0.25,4
            
        elseif mode == "emote" then
            
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966, -0.4363323129985824 * sin(sine * 8), -3.141592653589793), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1 + 0.3 * sin(sine * 8), 0) * euler(1.5707963267948966, 1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), -1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5, 1, 0) * euler(-0.5235987755982988, -1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5, 1, 0) * euler(-0.5235987755982988, 1.5707963267948966 - 0.5235987755982988 * sin(sine * 8), 3.141592653589793), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(-0.1 * sin(sine * 8), 0.2 * sin((sine + 0.1) * 16), 0) * euler(-1.5707963267948966, 0.2617993877991494 * sin(sine * 8), -3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1 - 0.3 * sin(sine * 8), 0) * euler(1.5707963267948966, -1.5707963267948966 + 0.5235987755982988 * sin(sine * 8), 1.5707963267948966), deltaTime) 
            --Head,0,0,0,8,-90,0,0,8,1,0,0,8,0,-25,0,8,0,0,0,8,-180,0,0,8,RightLeg,1,0,0,8,90,0,0,8,-1,0.3,0,8,90,30,0,8,0,0,0,8,-90,0,0,8,LeftArm,-0.5,0,0,8,-30,0,0,8,1,0,0,8,-90,-30,0,8,0,0,0,8,180,0,0,8,RightArm,0.5,0,0,8,-30,0,0,8,1,0,0,16,90,-30,0,8,0,0,0,8,180,0,0,8,Torso,0,-0.1,0,8,-90,0,0,8,0,0.2,0.1,16,0,15,0,8,0,0,0,8,-180,0,0,8,LeftLeg,-1,0,0,8,90,0,0,8,-1,-0.3,0,8,-90,30,0,8,0,0,0,8,90,0,0,8,Fedora_Handle,8.657480066176504e-09,0,0,8,-6,0,0,8,-0.15052366256713867,0,0,8,0,0,0,8,-0.010221302509307861,0,0,8,0,0,0,8
            
        elseif mode == "pushups" then
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, -1.7 + 0.5 * sin(sine * 3.2), 0.3 * sin(sine * 3.2)) * euler(3.4033920413889427 + 0.17453292519943295 * sin(sine * 3.2), 0, 3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(1 - 0.25 * sin(sine * 3.2), 0.5 + 0.2 * sin(sine * 3.2), -0.75 * sin(sine * 3.2)) * euler(3.0543261909900767 - 0.17453292519943295 * sin(sine * 3.2), 1.3962634015954636 + 0.17453292519943295 * sin(sine * 3.2), -1.5707963267948966), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-1 + 0.25 * sin(sine * 3.2), 0.5 + 0.2 * sin(sine * 3.2), -0.75 * sin(sine * 3.2)) * euler(3.0543261909900767 - 0.17453292519943295 * sin(sine * 3.2), -1.3962634015954636 - 0.17453292519943295 * sin(sine * 3.2), 1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.6580627893946132 + 0.17453292519943295 * sin((sine - 0.3125) * 3.2), 0, 3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(-1.5707963267948966, -1.7453292519943295, -1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(1.5707963267948966, 1.3962634015954636, -1.5707963267948966), deltaTime) 
            --Torso,0,0,0,3.2,195,10,0,3.2,-1.7,0.5,0,3.2,-0,0,0,3.2,0,0.3,0,3.2,180,0,0,3.2,RightArm,1,-0.25,0,3.2,175,-10,0,3.2,0.5,0.2,0,3.2,80,10,0,3.2,0,-0.75,0,3.2,-90,0,0,0,LeftArm,-1,0.25,0,3.2,175,-10,0,3.2,0.5,0.2,0,3.2,-80,-10,0,3.2,0,-0.75,0,3.2,90,0,0,3.2,Head,0,0,0,3.2,-95,10,-0.3125,3.2,1,0,0,3.2,-0,0,0,3.2,0,0,0,3.2,180,0,0,3.2,LeftLeg,-1,0,0,3.2,-90,0,0,3.2,-1,0,0,3.2,-100,0,0,3.2,0,0,0,3.2,-90,0,0,3.2,RightLeg,1,0,0,3.2,90,0,0,3.2,-1,0,0,3.2,80,0,0,3.2,0,0,0,3.2,-90,0,0,3.2,Fedora_Handle,8.657480066176504e-09,0,0,3.2,-6,0,0,3.2,-0.15052366256713867,0,0,3.2,0,0,0,3.2,-0.010221302509307861,0,0,3.2,-1,0,0,3.2
            
        elseif mode == "kazotsky" then
            
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.5 - 0.15 * sin(sine * 6.4), 0.3, 0) * euler(2.792526803190927 + 0.08726646259971647 * sin(sine * 12.8), -0.17453292519943295 - 0.08726646259971647 * sin(sine * 6.4), 1.4835298641951802 - 0.08726646259971647 * sin(sine * 12.8)), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(2.0943951023931953 - 0.8726646259971648 * sin(sine * 6.4), 1.6580627893946132 - 0.08726646259971647 * sin(sine * 6.4), -1.5707963267948966), deltaTime) 
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.2 + 0.3 * sin((sine + 0.171875) * 12.8), 0) * euler(-1.4835298641951802 + 0.08726646259971647 * sin((sine + 0.15625) * 12.8), 0.08726646259971647 * sin(sine * 6.4), 3.141592653589793 + 0.17453292519943295 * sin(sine * 6.4)), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.5 - 0.15 * sin(sine * 6.4), 0.3, 0) * euler(2.792526803190927 + 0.08726646259971647 * sin(sine * 12.8), 0.17453292519943295 - 0.08726646259971647 * sin(sine * 6.4), -1.4835298641951802 + 0.08726646259971647 * sin(sine * 12.8)), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5882496193148399 + 0.08726646259971647 * sin(sine * 12.8), -0.08726646259971647 * sin((sine + 0.15625) * 6.4), 3.141592653589793), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(2.0943951023931953 + 0.8726646259971648 * sin(sine * 6.4), -1.6580627893946132 - 0.08726646259971647 * sin(sine * 6.4), 1.5707963267948966), deltaTime) 
            --LeftArm,-0.5,-0.15,0,6.4,160,5,0,12.8,0.3,0,0,6.4,-10,-5,0,6.4,0,0,0,6.4,85,-5,0,12.8,RightLeg,1,0,0,6.4,120,-50,0,6.4,-1,0,0,6.4,95,-5,0,6.4,0,0,0,6.4,-90,0,0,6.4,Fedora_Handle,8.657480066176504e-09,0,0,6.4,-6,0,0,6.4,-0.15052366256713867,0,0,6.4,0,0,0,6.4,-0.010221302509307861,0,0,6.4,-1,0,0,6.4,Torso,0,0,0,6.4,-85,5,0.15625,12.8,0.2,0.3,0.171875,12.8,-0,5,0,6.4,0,0,0,6.4,180,10,0,6.4,RightArm,0.5,-0.15,0,6.4,160,5,0,12.8,0.3,0,0,6.4,10,-5,0,6.4,0,0,0,6.4,-85,5,0,12.8,Head,0,0,0,6.4,-91,5,0,12.8,1,0,0,6.4,-0,-5,0.15625,6.4,0,0,0,6.4,180,0,0,6.4,LeftLeg,-1,0,0,6.4,120,50,0,6.4,-1,0,0,6.4,-95,-5,0,6.4,0,0,0,6.4,90,0,0,6.4
            
        elseif mode == "L" then
            
            RootJoint.C0 = RootJoint.C0:Lerp(cf(0, 0.25 + 0.25 * sin((sine + 0.25) * 8), 0) * euler(-1.5707963267948966, 0.17453292519943295 * sin(sine * 4), -3.141592653589793), deltaTime) 
            LeftShoulder.C0 = LeftShoulder.C0:Lerp(cf(-0.7, 0.5, -0.3) * euler(1.7453292519943295, -0.8726646259971648, 1.5707963267948966), deltaTime) 
            Neck.C0 = Neck.C0:Lerp(cf(0, 1, 0) * euler(-1.5707963267948966 + 0.04363323129985824 * sin((sine + 0.1) * 8), -0.17453292519943295 * sin((sine + 0.1) * 4), -3.141592653589793), deltaTime) 
            RightShoulder.C0 = RightShoulder.C0:Lerp(cf(0.7, 0.8, 0) * euler(1.0471975511965976 + 0.03490658503988659 * sin(sine * 8), 2.0943951023931953 + 0.10471975511965978 * sin((sine + 0.1) * 4), 1.5707963267948966), deltaTime) 
            RightHip.C0 = RightHip.C0:Lerp(cf(1, -1, 0) * euler(2.2689280275926285 - 0.8726646259971648 * sin(sine * 4), 1.9198621771937625 - 0.3490658503988659 * sin(sine * 4), -1.5707963267948966), deltaTime) 
            LeftHip.C0 = LeftHip.C0:Lerp(cf(-1, -1, 0) * euler(2.2689280275926285 + 0.8726646259971648 * sin(sine * 4), -1.9198621771937625 - 0.3490658503988659 * sin(sine * 4), 1.5707963267948966), deltaTime) 
            --Torso,0,0,0,4,-90,0,0,4,0.25,0.25,0.25,8,0,10,0,4,0,0,0,4,-180,0,0,4,LeftArm,-0.7,0,0,4,100,0,0,4,0.5,0,0,4,-50,0,0,4,-0.3,0,0,4,90,0,0,4,Fedora_Handle,8.657480066176504e-09,0,0,4,-6,0,0,4,-0.15052366256713867,0,0,4,0,0,0,4,-0.010221302509307861,0,0,4,0,0,0,4,Head,0,0,0,4,-90,2.5,0.1,8,1,0,0,4,0,-10,0.1,4,0,0,0,4,-180,0,0,4,RightArm,0.7,0,0,4,60,2,0,8,0.8,0,0,4,120,6,0.1,4,0,0,0,4,90,0,0,4,RightLeg,1,0,0,4,130,-50,0,4,-1,0,0,4,110,-20,0,4,0,0,0,4,-90,0,0,4,LeftLeg,-1,0,0,4,130,50,0,4,-1,0,0,4,-110,-20,0,4,0,0,0,4,90,0,0,4

        end
        
    end
end)