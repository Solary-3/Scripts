local Global=(getgenv and getgenv()) or shared
local Flooring=Global.Flooring
function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end

local scriptfolder=Global.Cont or workspace
local sound=Global.Loud or nil
local im2=Global.im2 or nil
local MusicPlayer=Global.MusicPlayer or nil
local rootpart1=Global.rootpart1 or nil
local rootpart=Global.rootpart or nil
local insSet=Global.insSet or nil
local head=Global.head or nil
local torso=Global.torso or nil
function TweenFunction(obj, speed,whattype, anim)
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
if whattype =="pos" then
return TweenService:Create(obj, hii,{Position=anim})
elseif whattype =="size" then
return TweenService:Create(obj, hii,{Size=anim})
elseif whattype =="bt" then
return TweenService:Create(obj, hii,{BackgroundTransparency=anim})
elseif whattype =="trans" then
return TweenService:Create(obj, hii,{Transparency=anim})
elseif whattype=="rot" then
return TweenService:Create(obj, hii,{Rotation=anim})
elseif whattype=="brightness" then
return TweenService:Create(obj, hii,{Brightness=anim})
end
end
function BetterTween(obj, speed, prop)
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)

end
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local v2=Vector2.new
local nr=NumberRange.new
local rus=game:service'RunService'
local PostSimulation=rus.PostSimulation
local sin=math.sin
local cos=math.cos
local rad=math.rad
local abs=math.abs
local min=math.min
local mrandom=math.random
local clamp=math.clamp
local cf=CFrame.new
local angles=CFrame.Angles
local tinsert=table.insert
local u2scale=UDim2.fromScale
local Name="Cheatreal"









function Cheatreal()
if scriptfolder:FindFirstChild(Name.."Assets") then return end
local foldah=i("Folder",scriptfolder)
foldah.Name=Name.."Assets"
foldah:SetAttribute("VFX",true)

--// Init Default Instances
local Floor=Instance.new("Part", foldah)
Floor.Name="Floor"
Floor.Anchored=true
Floor.CanCollide=false
Floor.CanQuery=false
Floor.CanTouch=false
Floor.Transparency=1
Floor.Reflectance=0
Floor.Color=Color3.new(0,0,0)
Floor.Material=Enum.Material.Plastic
Floor.Size=Vector3.new(60,1,60)
Floor.CastShadow=true
Floor.Massless=true
local li=i("PointLight",Floor)


local PartFXFloor=Instance.new("Part", foldah)
PartFXFloor.Name="PartFXFloor"
PartFXFloor.Anchored=true
PartFXFloor.CanCollide=false
PartFXFloor.CanQuery=false
PartFXFloor.CanTouch=false
PartFXFloor.Transparency=1
PartFXFloor.Reflectance=0
PartFXFloor.Color=Color3.new(0,0,0)
PartFXFloor.Material=Enum.Material.Plastic
PartFXFloor.Size=Vector3.new(10,1,10)
PartFXFloor.CastShadow=true
PartFXFloor.Massless=true


local tspawn=task.spawn
function sphereMK(bonuspeed,FastSpeed,type,pos,x1,y1,z1,value,color,outerpos)
local type = type
local char=Floor
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.Color=color
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Material = "Neon"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = pos
local li=i("PointLight",rng)
li.Range=sound.PlaybackLoudness/75
li.Color=color
li.Brightness=sound.PlaybackLoudness/30
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*outerpos
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshType = "Sphere"
rngm.Scale = Vector3.new(x1,y1,z1)

local scaler2 = 1
local speeder = FastSpeed
if type == "Add" then
scaler2 = 1*value
elseif type == "Divide" then
scaler2 = 1/value
end
task.spawn(function()
for i = 0,10/bonuspeed,0.1 do
swait()

if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
end

speeder = speeder - 0.01*FastSpeed*bonuspeed
rng.CFrame = rng.CFrame + rng.CFrame.lookVector*speeder*bonuspeed
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2*bonuspeed, 0)
end
rng:Destroy()
end)
end



function slash(bonuspeed,rotspeed,rotatingop,typeofshape,type,typeoftrans,pos,scale,value,color)
local type = type
local char=Floor
local rotenable = rotatingop
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.Color = color
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Material = "Neon"
rng.Size = Vector3.new(.1, .1, .1)
rng.Transparency = 0
if typeoftrans == "In" then
rng.Transparency = 1
end
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = pos
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshType = "FileMesh"
if typeofshape == "Normal" then
rngm.MeshId = "rbxassetid://662586858"
elseif typeofshape == "Round" then
rngm.MeshId = "rbxassetid://662585058"
end
rngm.Scale = scale
local scaler2 = 1/10
if type == "Add" then
scaler2 = 1*value/10
elseif type == "Divide" then
scaler2 = 1/value/10
end
local randomrot = math.random(1,2)
task.spawn(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed/10
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed/10
end
if rotenable == true then
if randomrot == 1 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(rotspeed*bonuspeed/2),0)
elseif randomrot == 2 then
rng.CFrame = rng.CFrame*CFrame.Angles(0,math.rad(-rotspeed*bonuspeed/2),0)
end
end
if typeoftrans == "Out" then
rng.Transparency = rng.Transparency + 0.01*bonuspeed
elseif typeoftrans == "In" then
rng.Transparency = rng.Transparency - 0.01*bonuspeed
end
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed/10, 0, scaler2*bonuspeed/10)
end
rng:Destroy()
end)
end


function sphere2(bonuspeed,type,pos,scale,value,value2,value3,color)
local type = type
local char=Floor
local rng = Instance.new("Part", char)
rng.Anchored = true
rng.CanCollide = false
rng.FormFactor = 3
rng.Name = "Ring"
rng.Material = "Neon"
rng.Size = Vector3.new(1, 1, 1)
rng.Transparency = 0
rng.TopSurface = 0
rng.BottomSurface = 0
rng.CFrame = pos
local rngm = Instance.new("SpecialMesh", rng)
rngm.MeshType = "Sphere"
rngm.Scale = scale
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
if type == "Add" then
scaler2 = 1*value
scaler2b = 1*value2
scaler2c = 1*value3
elseif type == "Divide" then
scaler2 = 1/value
scaler2b = 1/value2
scaler2c = 1/value3
end

tspawn(function()
for i = 0,10/bonuspeed,0.1 do
swait()
if type == "Add" then
scaler2 = scaler2 - 0.01*value/bonuspeed
scaler2b = scaler2b - 0.01*value/bonuspeed
scaler2c = scaler2c - 0.01*value/bonuspeed
elseif type == "Divide" then
scaler2 = scaler2 - 0.01/value*bonuspeed
scaler2b = scaler2b - 0.01/value*bonuspeed
scaler2c = scaler2c - 0.01/value*bonuspeed
end
rng.Transparency = rng.Transparency + 0.01*bonuspeed
rngm.Scale = rngm.Scale + Vector3.new(scaler2*bonuspeed, scaler2b*bonuspeed, scaler2c*bonuspeed)
end
rng:Destroy()
end)
end


function wave1(type,speed,scaleto,position,color)
tspawn(function()
local type = type
local char=Floor
local function oswait(seconds)
if seconds==nil then seconds=0 end
local start = os.clock()
repeat
wait()
until os.clock() >= start + seconds
end
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local w1=i("MeshPart", char)
w1.Name="Wave1"
w1.MeshId="rbxassetid://863344136"
w1.Anchored=true
w1.CanCollide=false
w1.CanQuery=false
w1.CanTouch=false
w1.Reflectance=0
w1.Color=color
w1.CFrame=position
w1.Material=Enum.Material.Neon
w1.CastShadow=false
w1.Massless=true
w1.Material=Enum.Material.Neon
w1.TextureID=""
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
task.spawn(function()
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)

end
local speed=1.5/speed
if type=="Out" then
w1.Size=v3(0,0,0)
w1.Transparency=0
local r=BetterTween(w1,speed,{Size=v3(scaleto,scaleto,scaleto)})
local t=BetterTween(w1,speed,{Transparency=1})
r:Play()
t:Play()
r.Completed:Wait()
w1:Destroy()
elseif type=="In" then
w1.Size=v3(scaleto,scaleto,scaleto)
local s=BetterTween(w1,speed,{Size=v3(0,0,0)})
local y=BetterTween(w1,speed,{Transparency=0})
w1.Transparency=.5
s:Play()
y:Play()
s.Completed:Wait()
w1:Destroy()
end
end)
end) end

function wave2(type,speed,scaleto,position,color)
tspawn(function()
local type = type
local char=Floor
local function oswait(seconds)
if seconds==nil then seconds=0 end
local start = os.clock()
repeat
wait()
until os.clock() >= start + seconds
end
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local w2=i("MeshPart", char)
w2.Name="Wave2"
w2.MeshId="rbxassetid://6862105399"
w2.Anchored=true
w2.CanCollide=false
w2.CanQuery=false
w2.CanTouch=false
w2.Reflectance=0
w2.Color=color
w2.CFrame=position
w2.Material=Enum.Material.Neon
w2.CastShadow=false
w2.Massless=true
w2.Material=Enum.Material.Neon
w2.TextureID=""
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
task.spawn(function()
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)

end
local speed=1.5/speed
if type=="Out" then
w2.Size=v3(0,0,0)
w2.Transparency=0
local r=BetterTween(w2,speed,{Size=v3(scaleto,scaleto,scaleto)})
local t=BetterTween(w2,speed,{Transparency=1})
r:Play()
t:Play()
r.Completed:Wait()
w2:Destroy()
elseif type=="In" then
w2.Size=v3(scaleto,scaleto,scaleto)
local s=BetterTween(w2,speed,{Size=v3(0,0,0)})
local y=BetterTween(w2,speed,{Transparency=0})
w2.Transparency=.5
s:Play()
y:Play()
s.Completed:Wait()
w2:Destroy()
end
end)
end) end

function wave3(type,speed,scaleto,position,color)
tspawn(function()
local type = type
local char=Floor
local function oswait(seconds)
if seconds==nil then seconds=0 end
local start = os.clock()
repeat
wait()
until os.clock() >= start + seconds
end
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local w3=i("MeshPart", char)
w3.Name="Wave3"
w3.MeshId="rbxassetid://17388414697"
w3.Anchored=true
w3.CanCollide=false
w3.CanQuery=false
w3.CanTouch=false
w3.Reflectance=0
w3.Color=color
w3.CFrame=position
w3.Material=Enum.Material.Neon
w3.CastShadow=false
w3.Massless=true
w3.Material=Enum.Material.Neon
w3.TextureID=""
task.spawn(function()
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)

end
local speed=1.5/speed
if type=="Out" then
w3.Size=v3(0,0,0)
w3.Transparency=0
local r=BetterTween(w3,speed,{Size=v3(scaleto,scaleto,scaleto)})
local t=BetterTween(w3,speed,{Transparency=1})
r:Play()
t:Play()
r.Completed:Wait()
w3:Destroy()
elseif type=="In" then
w3.Size=v3(scaleto,scaleto,scaleto)
local s=BetterTween(w3,speed,{Size=v3(0,0,0)})
local y=BetterTween(w3,speed,{Transparency=0})
w3.Transparency=.5
s:Play()
y:Play()
s.Completed:Wait()
w3:Destroy()
end
end)
end) end

function wave4(type,speed,scaleto,position,color)
tspawn(function()
local type = type
local char=Floor
local function oswait(seconds)
if seconds==nil then seconds=0 end
local start = os.clock()
repeat
wait()
until os.clock() >= start + seconds
end
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local w4=i("MeshPart", char)
w4.Name="Wave4"
w4.MeshId="rbxassetid://20329976"
w4.Anchored=true
w4.CanCollide=false
w4.CanQuery=false
w4.CanTouch=false
w4.Reflectance=0
w4.Color=color
w4.CFrame=position
w4.Material=Enum.Material.Neon
--w4.Size=v3(0,0,0)
w4.CastShadow=false
w4.Massless=true
w4.Material=Enum.Material.Neon
w4.TextureID=""
local scaler2 = 1
local scaler2b = 1
local scaler2c = 1
task.spawn(function()
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)

end
local speed=1.5/speed
if type=="Out" then
w4.Size=v3(0,0,0)
local r=BetterTween(w4,speed,{Size=v3(scaleto,scaleto,scaleto)})
local t=BetterTween(w4,speed,{Transparency=1})
r:Play()
t:Play()
w4.Transparency=0
r.Completed:Wait()
w4:Destroy()
elseif type=="In" then
w4.Size=v3(scaleto,scaleto,scaleto)
local s=BetterTween(w4,speed,{Size=v3(0,0,0)})
local y=BetterTween(w4,speed,{Transparency=0})
w4.Transparency=.5
s:Play()
y:Play()
s.Completed:Wait()
w4:Destroy()
end
end)
end) end

function block(type,speed,startsize,endsize,pos,col,starttransparency,outline,ocol,donttransparent)
if donttransparent==nil then donttransparent=false end
local type = type
local char=Floor
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local Block_1=i("Part", char)
Block_1.Name="Block"
Block_1.Anchored=true
Block_1.CanCollide=false
Block_1.CanQuery=false
Block_1.CanTouch=false
Block_1.Reflectance=0
Block_1.Color=col
Block_1.Material=Enum.Material.Neon
Block_1.Size=startsize
Block_1.CastShadow=false
Block_1.CFrame=pos
Block_1.Massless=true
if outline then 
local h=i("Highlight",Block_1)
h.FillTransparency=1
h.DepthMode="Occluded"
h.OutlineColor=ocol
end
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)
end
local speed=1.5/speed
tspawn(function()
if type=="Out" then 
Block_1.Transparency=starttransparency
Block_1.Size=startsize
local t=BetterTween(Block_1,speed,{Size=endsize})
if donttransparent then
local t1=BetterTween(Block_1,speed,{Transparency=1})
t1:Play()
end
t:Play()
t.Completed:Wait()
Block_1:Destroy()
elseif type=="In" then
Block_1.Transparency=starttransparency
Block_1.Size=endsize
local t=BetterTween(Block_1,speed,{Size=startsize})
if donttransparent then
local t1=BetterTween(Block_1,speed,{Transparency=0})
t1:Play()
end
t:Play()
t.Completed:Wait()
Block_1:Destroy()
end
end)


end

function block1(type,speed,startsize,endsize,pos,col,starttransparency,endpos,outline,ocol,donttransparent)
if donttransparent==nil then donttransparent=false end
local type = type
local char=Floor
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local Block_1=i("Part", char)
Block_1.Name="Block"
Block_1.Anchored=true
Block_1.CanCollide=false
Block_1.CanQuery=false
Block_1.CanTouch=false
Block_1.Reflectance=0
Block_1.Color=col
Block_1.Material=Enum.Material.Neon
Block_1.Size=startsize
Block_1.CastShadow=false
Block_1.CFrame=pos
Block_1.Massless=true
if outline then 
local h=i("Highlight",Block_1)
h.FillTransparency=1
h.DepthMode="Occluded"
h.OutlineColor=ocol
end
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)
end
local speed=1.5/speed
tspawn(function()
if type=="Out" then 
Block_1.Transparency=starttransparency
Block_1.Size=startsize
local t=BetterTween(Block_1,speed,{Size=endsize})
local t2=BetterTween(Block_1,speed,{CFrame=endpos})
if donttransparent then
local t1=BetterTween(Block_1,speed,{Transparency=1})
t1:Play()
end
t:Play()
t2:Play()
t.Completed:Wait()
Block_1:Destroy()
elseif type=="In" then
Block_1.Transparency=starttransparency
Block_1.Size=endsize
local t=BetterTween(Block_1,speed,{Size=startsize})
local t2=BetterTween(Block_1,speed,{CFrame=endpos})
if donttransparent then
local t1=BetterTween(Block_1,speed,{Transparency=0})
t1:Play()
end
t2:Play()
t:Play()
t.Completed:Wait()
Block_1:Destroy()
end
end)


end

function blockmoveup(type,speed,startsize,endsize,pos,col,starttransparency,endpos,outline,ocol,donttransparent)
if donttransparent==nil then donttransparent=false end
if outline==nil then outline=false end
local type = type
local char=Floor
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local Block_1=i("Part", char)
Block_1.Name="Block"
Block_1.Anchored=true
Block_1.CanCollide=false
Block_1.CanQuery=false
Block_1.CanTouch=false
Block_1.Reflectance=0
Block_1.Color=col
Block_1.Material=Enum.Material.Neon
Block_1.Size=startsize
Block_1.CastShadow=false
Block_1.CFrame=pos
Block_1.Massless=true
if outline then 
local h=i("Highlight",Block_1)
h.FillTransparency=1
h.DepthMode="Occluded"
h.OutlineColor=ocol
end
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)
end
local speed=1.5/speed
tspawn(function()
if type=="Out" then 
Block_1.Transparency=starttransparency
Block_1.Size=startsize
local t=BetterTween(Block_1,speed,{Size=endsize})
local t2=BetterTween(Block_1,speed,{Position=v3(Block_1.Position.X,Block_1.Position.Y*endpos,Block_1.Position.Z)})
if donttransparent then
local t1=BetterTween(Block_1,speed,{Transparency=1})
t1:Play()
end
t:Play()
t2:Play()
t.Completed:Wait()
Block_1:Destroy()
elseif type=="In" then
Block_1.Transparency=starttransparency
Block_1.Size=endsize
local t=BetterTween(Block_1,speed,{Size=startsize})
local t2=BetterTween(Block_1,speed,{Position=v3(Block_1.Position.X,Block_1.Position.Y*endpos,Block_1.Position.Z)})
if donttransparent then
local t1=BetterTween(Block_1,speed,{Transparency=0})
t1:Play()
end
t:Play()
t2:Play()
t.Completed:Wait()
Block_1:Destroy()
end
end)


end

function sphere(type,speed,startsize,endsize,pos,col,starttransparency,donttransparent)
if donttransparent==nil then donttransparent=false end
local type = type
local char=Floor
local i=Instance.new 
local nr=NumberRange.new
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local v3=Vector3.new
local rgb=Color3.fromRGB
local c3=Color3.new
local Sphere_23=i("MeshPart", char)
Sphere_23.Name="Sphere"
Sphere_23.MeshId="rbxassetid://482906818"
Sphere_23.Anchored=true
Sphere_23.CanCollide=false
Sphere_23.CanQuery=false
Sphere_23.CanTouch=false
Sphere_23.Transparency=1
Sphere_23.Reflectance=0
Sphere_23.Color=col
Sphere_23.Material=Enum.Material.Neon
Sphere_23.CFrame=pos
Sphere_23.CastShadow=false
Sphere_23.Massless=true
Sphere_23.Material=Enum.Material.Neon
Sphere_23.TextureID=""
Sphere_23.DoubleSided=false
function BetterTween(obj, speed, prop,AnimType)
if AnimType==nil then AnimType="Quad" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[AnimType], Enum.EasingDirection.In)
return TweenService:Create(obj, hii,prop)
end
local speed=1.5/speed
tspawn(function()
if type=="Out" then 
Sphere_23.Transparency=starttransparency
Sphere_23.Size=startsize
local t=BetterTween(Sphere_23,speed,{Size=endsize})
if donttransparent then
local t1=BetterTween(Sphere_23,speed,{Transparency=1})
t1:Play()
end
t:Play()
t.Completed:Wait()
Sphere_23:Destroy()
elseif type=="In" then 
Sphere_23.Transparency=starttransparency
Sphere_23.Size=endsize
local t=BetterTween(Sphere_23,speed,{Size=startsize})
if donttransparent then
local t1=BetterTween(Sphere_23,speed,{Transparency=0})
t1:Play()
end
t:Play()
t.Completed:Wait()
Sphere_23:Destroy()
end

end)


end












local Attachment_571=i("Attachment", Floor)
Attachment_571.Name="Attachment"
Attachment_571:SetAttribute("AuraInstance", true)
Attachment_571.Visible=false
Attachment_571.CFrame=cf(0,0,0,-0.427768349647522,0,-0.9038884043693542,0,1,0,0.9038884043693542,0,-0.427768349647522)


local _21_573=i("Attachment", Attachment_571)
_21_573.Name="21"
_21_573:SetAttribute("AuraInstance", true)
_21_573.Visible=false
_21_573.CFrame=cf(0,-1.5821943283081055,-10.237735748291016,0,0,-1,0,1,0,1,0,0)



local ParticleEmitter_574=i("ParticleEmitter", _21_573)
ParticleEmitter_574.Name="ParticleEmitter"
ParticleEmitter_574:SetAttribute("EmitDelay", 0)
ParticleEmitter_574:SetAttribute("AuraInstance", true)
ParticleEmitter_574.Enabled=true
ParticleEmitter_574.Rate=5
ParticleEmitter_574.Lifetime=nr(1,1)
ParticleEmitter_574.Speed=nr(0,0)
ParticleEmitter_574.Rotation=nr(0,0)
ParticleEmitter_574.RotSpeed=nr(0,0)
ParticleEmitter_574.Size=ns({nsk(0.000000,1.540276,0.000000),nsk(1.000000,1.540276,0.000000)})
ParticleEmitter_574.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_574.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_574.LightEmission=0
ParticleEmitter_574.LightInfluence=0
ParticleEmitter_574.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_574.Drag=0
ParticleEmitter_574.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_574.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_574.ZOffset=0
ParticleEmitter_574.Texture="rbxassetid://14221498728"
ParticleEmitter_574.LockedToPart=true
ParticleEmitter_574.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_574.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_574.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_574.FlipbookFramerate=nr(1,1)
ParticleEmitter_574.FlipbookStartRandom=false
ParticleEmitter_574.Squash=ns({nsk(0.000000,1.361485,0.000000),nsk(1.000000,1.361485,0.000000)})
ParticleEmitter_574.Brightness=20



local _5_575=i("Attachment", Attachment_571)
_5_575.Name="5"
_5_575:SetAttribute("AuraInstance", true)
_5_575.Visible=false
_5_575.CFrame=cf(0,-1.5821945667266846,10.2377290725708,0,0,-1,0,1,0,1,0,0)



local ParticleEmitter_576=i("ParticleEmitter", _5_575)
ParticleEmitter_576.Name="ParticleEmitter"
ParticleEmitter_576:SetAttribute("EmitDelay", 0)
ParticleEmitter_576:SetAttribute("AuraInstance", true)
ParticleEmitter_576.Enabled=true
ParticleEmitter_576.Rate=5
ParticleEmitter_576.Lifetime=nr(1,1)
ParticleEmitter_576.Speed=nr(0,0)
ParticleEmitter_576.Rotation=nr(0,0)
ParticleEmitter_576.RotSpeed=nr(0,0)
ParticleEmitter_576.Size=ns({nsk(0.000000,1.246170,0.000000),nsk(1.000000,1.246170,0.000000)})
ParticleEmitter_576.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_576.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_576.LightEmission=0
ParticleEmitter_576.LightInfluence=0
ParticleEmitter_576.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_576.Drag=0
ParticleEmitter_576.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_576.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_576.ZOffset=0
ParticleEmitter_576.Texture="rbxassetid://14221498728"
ParticleEmitter_576.LockedToPart=true
ParticleEmitter_576.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_576.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_576.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_576.FlipbookFramerate=nr(1,1)
ParticleEmitter_576.FlipbookStartRandom=false
ParticleEmitter_576.Squash=ns({nsk(0.000000,2.997766,0.000000),nsk(1.000000,2.997766,0.000000)})
ParticleEmitter_576.Brightness=20



local _10_577=i("Attachment", Attachment_571)
_10_577.Name="10"
_10_577:SetAttribute("AuraInstance", true)
_10_577.Visible=false
_10_577.CFrame=cf(-10.2377290725708,-1.5821945667266846,0.000007100697530404432,-1,0,0,0,1,0,0,0,-1)



local ParticleEmitter_578=i("ParticleEmitter", _10_577)
ParticleEmitter_578.Name="ParticleEmitter"
ParticleEmitter_578:SetAttribute("EmitDelay", 0)
ParticleEmitter_578:SetAttribute("AuraInstance", true)
ParticleEmitter_578.Enabled=true
ParticleEmitter_578.Rate=5
ParticleEmitter_578.Lifetime=nr(1,1)
ParticleEmitter_578.Speed=nr(0,0)
ParticleEmitter_578.Rotation=nr(0,0)
ParticleEmitter_578.RotSpeed=nr(0,0)
ParticleEmitter_578.Size=ns({nsk(0.000000,0.440499,0.000000),nsk(1.000000,0.440499,0.000000)})
ParticleEmitter_578.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_578.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_578.LightEmission=0
ParticleEmitter_578.LightInfluence=0
ParticleEmitter_578.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_578.Drag=0
ParticleEmitter_578.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_578.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_578.ZOffset=0
ParticleEmitter_578.Texture="rbxassetid://14221498728"
ParticleEmitter_578.LockedToPart=true
ParticleEmitter_578.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_578.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_578.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_578.FlipbookFramerate=nr(1,1)
ParticleEmitter_578.FlipbookStartRandom=false
ParticleEmitter_578.Squash=ns({nsk(0.000000,0.798916,0.000000),nsk(1.000000,0.798916,0.000000)})
ParticleEmitter_578.Brightness=20



local _8_579=i("Attachment", Attachment_571)
_8_579.Name="8"
_8_579:SetAttribute("AuraInstance", true)
_8_579.Visible=false
_8_579.CFrame=cf(10.2377290725708,-1.5821943283081055,0.000007100697530404432,-1,0,0,0,1,0,0,0,-1)



local ParticleEmitter_580=i("ParticleEmitter", _8_579)
ParticleEmitter_580.Name="ParticleEmitter"
ParticleEmitter_580:SetAttribute("EmitDelay", 0)
ParticleEmitter_580:SetAttribute("AuraInstance", true)
ParticleEmitter_580.Enabled=true
ParticleEmitter_580.Rate=5
ParticleEmitter_580.Lifetime=nr(1,1)
ParticleEmitter_580.Speed=nr(0,0)
ParticleEmitter_580.Rotation=nr(0,0)
ParticleEmitter_580.RotSpeed=nr(0,0)
ParticleEmitter_580.Size=ns({nsk(0.000000,0.448010,0.000000),nsk(1.000000,0.448010,0.000000)})
ParticleEmitter_580.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_580.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_580.LightEmission=0
ParticleEmitter_580.LightInfluence=0
ParticleEmitter_580.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_580.Drag=0
ParticleEmitter_580.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_580.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_580.ZOffset=0
ParticleEmitter_580.Texture="rbxassetid://14221498728"
ParticleEmitter_580.LockedToPart=true
ParticleEmitter_580.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_580.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_580.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_580.FlipbookFramerate=nr(1,1)
ParticleEmitter_580.FlipbookStartRandom=false
ParticleEmitter_580.Squash=ns({nsk(0.000000,1.877911,0.000000),nsk(1.000000,1.877911,0.000000)})
ParticleEmitter_580.Brightness=20



local _1_581=i("Attachment", Attachment_571)
_1_581.Name="1"
_1_581:SetAttribute("AuraInstance", true)
_1_581.Visible=false
_1_581.CFrame=cf(7.239189624786377,-1.5821943283081055,-7.239182472229004,-0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_582=i("ParticleEmitter", _1_581)
ParticleEmitter_582.Name="ParticleEmitter"
ParticleEmitter_582:SetAttribute("EmitDelay", 0)
ParticleEmitter_582:SetAttribute("AuraInstance", true)
ParticleEmitter_582.Enabled=true
ParticleEmitter_582.Rate=5
ParticleEmitter_582.Lifetime=nr(1,1)
ParticleEmitter_582.Speed=nr(0,0)
ParticleEmitter_582.Rotation=nr(0,0)
ParticleEmitter_582.RotSpeed=nr(0,0)
ParticleEmitter_582.Size=ns({nsk(0.000000,0.637404,0.000000),nsk(1.000000,0.637404,0.000000)})
ParticleEmitter_582.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_582.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_582.LightEmission=0
ParticleEmitter_582.LightInfluence=0
ParticleEmitter_582.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_582.Drag=0
ParticleEmitter_582.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_582.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_582.ZOffset=0
ParticleEmitter_582.Texture="rbxassetid://14221498728"
ParticleEmitter_582.LockedToPart=true
ParticleEmitter_582.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_582.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_582.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_582.FlipbookFramerate=nr(1,1)
ParticleEmitter_582.FlipbookStartRandom=false
ParticleEmitter_582.Squash=ns({nsk(0.000000,0.727743,0.000000),nsk(1.000000,0.727743,0.000000)})
ParticleEmitter_582.Brightness=20



local _9_583=i("Attachment", Attachment_571)
_9_583.Name="9"
_9_583:SetAttribute("AuraInstance", true)
_9_583.Visible=false
_9_583.CFrame=cf(-7.239189624786377,-1.5821945667266846,7.239168167114258,-0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_584=i("ParticleEmitter", _9_583)
ParticleEmitter_584.Name="ParticleEmitter"
ParticleEmitter_584:SetAttribute("EmitDelay", 0)
ParticleEmitter_584:SetAttribute("AuraInstance", true)
ParticleEmitter_584.Enabled=true
ParticleEmitter_584.Rate=5
ParticleEmitter_584.Lifetime=nr(1,1)
ParticleEmitter_584.Speed=nr(0,0)
ParticleEmitter_584.Rotation=nr(0,0)
ParticleEmitter_584.RotSpeed=nr(0,0)
ParticleEmitter_584.Size=ns({nsk(0.000000,0.421875,0.000000),nsk(1.000000,0.421875,0.000000)})
ParticleEmitter_584.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_584.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_584.LightEmission=0
ParticleEmitter_584.LightInfluence=0
ParticleEmitter_584.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_584.Drag=0
ParticleEmitter_584.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_584.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_584.ZOffset=0
ParticleEmitter_584.Texture="rbxassetid://14221498728"
ParticleEmitter_584.LockedToPart=true
ParticleEmitter_584.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_584.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_584.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_584.FlipbookFramerate=nr(1,1)
ParticleEmitter_584.FlipbookStartRandom=false
ParticleEmitter_584.Squash=ns({nsk(0.000000,0.742628,0.000000),nsk(1.000000,0.742628,0.000000)})
ParticleEmitter_584.Brightness=20



local _2_585=i("Attachment", Attachment_571)
_2_585.Name="2"
_2_585:SetAttribute("AuraInstance", true)
_2_585.Visible=false
_2_585.CFrame=cf(-7.239189624786377,-1.5821945667266846,-7.239153861999512,-0.7071342468261719,0,0.707079291343689,0,1,0,-0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_586=i("ParticleEmitter", _2_585)
ParticleEmitter_586.Name="ParticleEmitter"
ParticleEmitter_586:SetAttribute("EmitDelay", 0)
ParticleEmitter_586:SetAttribute("AuraInstance", true)
ParticleEmitter_586.Enabled=true
ParticleEmitter_586.Rate=5
ParticleEmitter_586.Lifetime=nr(1,1)
ParticleEmitter_586.Speed=nr(0,0)
ParticleEmitter_586.Rotation=nr(0,0)
ParticleEmitter_586.RotSpeed=nr(0,0)
ParticleEmitter_586.Size=ns({nsk(0.000000,0.523226,0.000000),nsk(1.000000,0.523226,0.000000)})
ParticleEmitter_586.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_586.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_586.LightEmission=0
ParticleEmitter_586.LightInfluence=0
ParticleEmitter_586.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_586.Drag=0
ParticleEmitter_586.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_586.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_586.ZOffset=0
ParticleEmitter_586.Texture="rbxassetid://14221498728"
ParticleEmitter_586.LockedToPart=true
ParticleEmitter_586.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_586.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_586.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_586.FlipbookFramerate=nr(1,1)
ParticleEmitter_586.FlipbookStartRandom=false
ParticleEmitter_586.Squash=ns({nsk(0.000000,0.696709,0.000000),nsk(1.000000,0.696709,0.000000)})
ParticleEmitter_586.Brightness=20



local _16_587=i("Attachment", Attachment_571)
_16_587.Name="16"
_16_587:SetAttribute("AuraInstance", true)
_16_587.Visible=false
_16_587.CFrame=cf(7.239189624786377,-1.5821943283081055,7.239168167114258,-0.7071342468261719,0,0.707079291343689,0,1,0,-0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_588=i("ParticleEmitter", _16_587)
ParticleEmitter_588.Name="ParticleEmitter"
ParticleEmitter_588:SetAttribute("EmitDelay", 0)
ParticleEmitter_588:SetAttribute("AuraInstance", true)
ParticleEmitter_588.Enabled=true
ParticleEmitter_588.Rate=5
ParticleEmitter_588.Lifetime=nr(1,1)
ParticleEmitter_588.Speed=nr(0,0)
ParticleEmitter_588.Rotation=nr(0,0)
ParticleEmitter_588.RotSpeed=nr(0,0)
ParticleEmitter_588.Size=ns({nsk(0.000000,0.489666,0.000000),nsk(1.000000,0.489666,0.000000)})
ParticleEmitter_588.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_588.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_588.LightEmission=0
ParticleEmitter_588.LightInfluence=0
ParticleEmitter_588.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_588.Drag=0
ParticleEmitter_588.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_588.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_588.ZOffset=0
ParticleEmitter_588.Texture="rbxassetid://14221498728"
ParticleEmitter_588.LockedToPart=true
ParticleEmitter_588.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_588.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_588.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_588.FlipbookFramerate=nr(1,1)
ParticleEmitter_588.FlipbookStartRandom=false
ParticleEmitter_588.Squash=ns({nsk(0.000000,1.322901,0.000000),nsk(1.000000,1.322901,0.000000)})
ParticleEmitter_588.Brightness=20



local _18_589=i("Attachment", Attachment_571)
_18_589.Name="18"
_18_589:SetAttribute("AuraInstance", true)
_18_589.Visible=false
_18_589.CFrame=cf(2.6497530937194824,-1.5821943283081055,-9.888885498046875,-0.2588644027709961,0,-0.965913712978363,0,1,0,0.965913712978363,0,-0.2588644027709961)



local ParticleEmitter_590=i("ParticleEmitter", _18_589)
ParticleEmitter_590.Name="ParticleEmitter"
ParticleEmitter_590:SetAttribute("EmitDelay", 0)
ParticleEmitter_590:SetAttribute("AuraInstance", true)
ParticleEmitter_590.Enabled=true
ParticleEmitter_590.Rate=5
ParticleEmitter_590.Lifetime=nr(1,1)
ParticleEmitter_590.Speed=nr(0,0)
ParticleEmitter_590.Rotation=nr(0,0)
ParticleEmitter_590.RotSpeed=nr(0,0)
ParticleEmitter_590.Size=ns({nsk(0.000000,1.326941,0.000000),nsk(1.000000,1.326941,0.000000)})
ParticleEmitter_590.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_590.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_590.LightEmission=0
ParticleEmitter_590.LightInfluence=0
ParticleEmitter_590.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_590.Drag=0
ParticleEmitter_590.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_590.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_590.ZOffset=0
ParticleEmitter_590.Texture="rbxassetid://14221498728"
ParticleEmitter_590.LockedToPart=true
ParticleEmitter_590.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_590.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_590.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_590.FlipbookFramerate=nr(1,1)
ParticleEmitter_590.FlipbookStartRandom=false
ParticleEmitter_590.Squash=ns({nsk(0.000000,0.791178,0.000000),nsk(1.000000,0.791178,0.000000)})
ParticleEmitter_590.Brightness=20



local _15_591=i("Attachment", Attachment_571)
_15_591.Name="15"
_15_591:SetAttribute("AuraInstance", true)
_15_591.Visible=false
_15_591.CFrame=cf(-2.6496963500976562,-1.5821945667266846,9.888893127441406,-0.2588644027709961,0,-0.965913712978363,0,1,0,0.965913712978363,0,-0.2588644027709961)



local ParticleEmitter_592=i("ParticleEmitter", _15_591)
ParticleEmitter_592.Name="ParticleEmitter"
ParticleEmitter_592:SetAttribute("EmitDelay", 0)
ParticleEmitter_592:SetAttribute("AuraInstance", true)
ParticleEmitter_592.Enabled=true
ParticleEmitter_592.Rate=5
ParticleEmitter_592.Lifetime=nr(1,1)
ParticleEmitter_592.Speed=nr(0,0)
ParticleEmitter_592.Rotation=nr(0,0)
ParticleEmitter_592.RotSpeed=nr(0,0)
ParticleEmitter_592.Size=ns({nsk(0.000000,0.436857,0.000000),nsk(1.000000,0.436857,0.000000)})
ParticleEmitter_592.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_592.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_592.LightEmission=0
ParticleEmitter_592.LightInfluence=0
ParticleEmitter_592.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_592.Drag=0
ParticleEmitter_592.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_592.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_592.ZOffset=0
ParticleEmitter_592.Texture="rbxassetid://14221498728"
ParticleEmitter_592.LockedToPart=true
ParticleEmitter_592.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_592.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_592.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_592.FlipbookFramerate=nr(1,1)
ParticleEmitter_592.FlipbookStartRandom=false
ParticleEmitter_592.Squash=ns({nsk(0.000000,1.005405,0.000000),nsk(1.000000,1.005405,0.000000)})
ParticleEmitter_592.Brightness=20



local _6_593=i("Attachment", Attachment_571)
_6_593.Name="6"
_6_593:SetAttribute("AuraInstance", true)
_6_593.Visible=false
_6_593.CFrame=cf(-9.888885498046875,-1.5821945667266846,-2.6497104167938232,-0.9659297466278076,0,0.2588047981262207,0,1,0,-0.2588047981262207,0,-0.9659297466278076)



local ParticleEmitter_594=i("ParticleEmitter", _6_593)
ParticleEmitter_594.Name="ParticleEmitter"
ParticleEmitter_594:SetAttribute("EmitDelay", 0)
ParticleEmitter_594:SetAttribute("AuraInstance", true)
ParticleEmitter_594.Enabled=true
ParticleEmitter_594.Rate=5
ParticleEmitter_594.Lifetime=nr(1,1)
ParticleEmitter_594.Speed=nr(0,0)
ParticleEmitter_594.Rotation=nr(0,0)
ParticleEmitter_594.RotSpeed=nr(0,0)
ParticleEmitter_594.Size=ns({nsk(0.000000,0.449292,0.000000),nsk(1.000000,0.449292,0.000000)})
ParticleEmitter_594.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_594.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_594.LightEmission=0
ParticleEmitter_594.LightInfluence=0
ParticleEmitter_594.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_594.Drag=0
ParticleEmitter_594.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_594.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_594.ZOffset=0
ParticleEmitter_594.Texture="rbxassetid://14221498728"
ParticleEmitter_594.LockedToPart=true
ParticleEmitter_594.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_594.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_594.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_594.FlipbookFramerate=nr(1,1)
ParticleEmitter_594.FlipbookStartRandom=false
ParticleEmitter_594.Squash=ns({nsk(0.000000,0.565323,0.000000),nsk(1.000000,0.565323,0.000000)})
ParticleEmitter_594.Brightness=20



local _24_595=i("Attachment", Attachment_571)
_24_595.Name="24"
_24_595:SetAttribute("AuraInstance", true)
_24_595.Visible=false
_24_595.CFrame=cf(9.888885498046875,-1.5821943283081055,2.6497247219085693,-0.9659297466278076,0,0.2588047981262207,0,1,0,-0.2588047981262207,0,-0.9659297466278076)



local ParticleEmitter_596=i("ParticleEmitter", _24_595)
ParticleEmitter_596.Name="ParticleEmitter"
ParticleEmitter_596:SetAttribute("EmitDelay", 0)
ParticleEmitter_596:SetAttribute("AuraInstance", true)
ParticleEmitter_596.Enabled=true
ParticleEmitter_596.Rate=5
ParticleEmitter_596.Lifetime=nr(1,1)
ParticleEmitter_596.Speed=nr(0,0)
ParticleEmitter_596.Rotation=nr(0,0)
ParticleEmitter_596.RotSpeed=nr(0,0)
ParticleEmitter_596.Size=ns({nsk(0.000000,0.534573,0.000000),nsk(1.000000,0.534573,0.000000)})
ParticleEmitter_596.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_596.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_596.LightEmission=0
ParticleEmitter_596.LightInfluence=0
ParticleEmitter_596.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_596.Drag=0
ParticleEmitter_596.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_596.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_596.ZOffset=0
ParticleEmitter_596.Texture="rbxassetid://14221498728"
ParticleEmitter_596.LockedToPart=true
ParticleEmitter_596.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_596.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_596.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_596.FlipbookFramerate=nr(1,1)
ParticleEmitter_596.FlipbookStartRandom=false
ParticleEmitter_596.Squash=ns({nsk(0.000000,0.752895,0.000000),nsk(1.000000,0.752895,0.000000)})
ParticleEmitter_596.Brightness=20



local _22_597=i("Attachment", Attachment_571)
_22_597.Name="22"
_22_597:SetAttribute("AuraInstance", true)
_22_597.Visible=false
_22_597.CFrame=cf(8.866158485412598,-1.5821943283081055,-5.118871688842773,-0.8660073280334473,0,-0.5000313520431519,0,1,0,0.5000313520431519,0,-0.8660073280334473)



local ParticleEmitter_598=i("ParticleEmitter", _22_597)
ParticleEmitter_598.Name="ParticleEmitter"
ParticleEmitter_598:SetAttribute("EmitDelay", 0)
ParticleEmitter_598:SetAttribute("AuraInstance", true)
ParticleEmitter_598.Enabled=true
ParticleEmitter_598.Rate=5
ParticleEmitter_598.Lifetime=nr(1,1)
ParticleEmitter_598.Speed=nr(0,0)
ParticleEmitter_598.Rotation=nr(0,0)
ParticleEmitter_598.RotSpeed=nr(0,0)
ParticleEmitter_598.Size=ns({nsk(0.000000,0.537173,0.000000),nsk(1.000000,0.537173,0.000000)})
ParticleEmitter_598.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_598.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_598.LightEmission=0
ParticleEmitter_598.LightInfluence=0
ParticleEmitter_598.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_598.Drag=0
ParticleEmitter_598.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_598.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_598.ZOffset=0
ParticleEmitter_598.Texture="rbxassetid://14221498728"
ParticleEmitter_598.LockedToPart=true
ParticleEmitter_598.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_598.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_598.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_598.FlipbookFramerate=nr(1,1)
ParticleEmitter_598.FlipbookStartRandom=false
ParticleEmitter_598.Squash=ns({nsk(0.000000,4.034031,0.000000),nsk(1.000000,4.034031,0.000000)})
ParticleEmitter_598.Brightness=20



local _23_599=i("Attachment", Attachment_571)
_23_599.Name="23"
_23_599:SetAttribute("AuraInstance", true)
_23_599.Visible=false
_23_599.CFrame=cf(5.118921279907227,-1.5821943283081055,8.866144180297852,-0.49995946884155273,0,0.8660488128662109,0,1,0,-0.8660488128662109,0,-0.49995946884155273)



local ParticleEmitter_600=i("ParticleEmitter", _23_599)
ParticleEmitter_600.Name="ParticleEmitter"
ParticleEmitter_600:SetAttribute("EmitDelay", 0)
ParticleEmitter_600:SetAttribute("AuraInstance", true)
ParticleEmitter_600.Enabled=true
ParticleEmitter_600.Rate=5
ParticleEmitter_600.Lifetime=nr(1,1)
ParticleEmitter_600.Speed=nr(0,0)
ParticleEmitter_600.Rotation=nr(0,0)
ParticleEmitter_600.RotSpeed=nr(0,0)
ParticleEmitter_600.Size=ns({nsk(0.000000,0.490193,0.000000),nsk(1.000000,0.490193,0.000000)})
ParticleEmitter_600.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_600.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_600.LightEmission=0
ParticleEmitter_600.LightInfluence=0
ParticleEmitter_600.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_600.Drag=0
ParticleEmitter_600.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_600.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_600.ZOffset=0
ParticleEmitter_600.Texture="rbxassetid://14221498728"
ParticleEmitter_600.LockedToPart=true
ParticleEmitter_600.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_600.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_600.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_600.FlipbookFramerate=nr(1,1)
ParticleEmitter_600.FlipbookStartRandom=false
ParticleEmitter_600.Squash=ns({nsk(0.000000,0.625970,0.000000),nsk(1.000000,0.625970,0.000000)})
ParticleEmitter_600.Brightness=20



local _19_601=i("Attachment", Attachment_571)
_19_601.Name="19"
_19_601:SetAttribute("AuraInstance", true)
_19_601.Visible=false
_19_601.CFrame=cf(-8.866158485412598,-1.5821945667266846,5.1188645362854,-0.8660073280334473,0,-0.5000313520431519,0,1,0,0.5000313520431519,0,-0.8660073280334473)



local ParticleEmitter_602=i("ParticleEmitter", _19_601)
ParticleEmitter_602.Name="ParticleEmitter"
ParticleEmitter_602:SetAttribute("EmitDelay", 0)
ParticleEmitter_602:SetAttribute("AuraInstance", true)
ParticleEmitter_602.Enabled=true
ParticleEmitter_602.Rate=5
ParticleEmitter_602.Lifetime=nr(1,1)
ParticleEmitter_602.Speed=nr(0,0)
ParticleEmitter_602.Rotation=nr(0,0)
ParticleEmitter_602.RotSpeed=nr(0,0)
ParticleEmitter_602.Size=ns({nsk(0.000000,0.575393,0.000000),nsk(1.000000,0.575393,0.000000)})
ParticleEmitter_602.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_602.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_602.LightEmission=0
ParticleEmitter_602.LightInfluence=0
ParticleEmitter_602.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_602.Drag=0
ParticleEmitter_602.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_602.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_602.ZOffset=0
ParticleEmitter_602.Texture="rbxassetid://14221498728"
ParticleEmitter_602.LockedToPart=true
ParticleEmitter_602.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_602.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_602.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_602.FlipbookFramerate=nr(1,1)
ParticleEmitter_602.FlipbookStartRandom=false
ParticleEmitter_602.Squash=ns({nsk(0.000000,1.192542,0.000000),nsk(1.000000,1.192542,0.000000)})
ParticleEmitter_602.Brightness=20



local _7_603=i("Attachment", Attachment_571)
_7_603.Name="7"
_7_603:SetAttribute("AuraInstance", true)
_7_603.Visible=false
_7_603.CFrame=cf(-5.118921279907227,-1.5821945667266846,-8.866122245788574,-0.49995946884155273,0,0.8660488128662109,0,1,0,-0.8660488128662109,0,-0.49995946884155273)



local ParticleEmitter_604=i("ParticleEmitter", _7_603)
ParticleEmitter_604.Name="ParticleEmitter"
ParticleEmitter_604:SetAttribute("EmitDelay", 0)
ParticleEmitter_604:SetAttribute("AuraInstance", true)
ParticleEmitter_604.Enabled=true
ParticleEmitter_604.Rate=5
ParticleEmitter_604.Lifetime=nr(1,1)
ParticleEmitter_604.Speed=nr(0,0)
ParticleEmitter_604.Rotation=nr(0,0)
ParticleEmitter_604.RotSpeed=nr(0,0)
ParticleEmitter_604.Size=ns({nsk(0.000000,1.382026,0.000000),nsk(1.000000,1.382026,0.000000)})
ParticleEmitter_604.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_604.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_604.LightEmission=0
ParticleEmitter_604.LightInfluence=0
ParticleEmitter_604.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_604.Drag=0
ParticleEmitter_604.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_604.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_604.ZOffset=0
ParticleEmitter_604.Texture="rbxassetid://14221498728"
ParticleEmitter_604.LockedToPart=true
ParticleEmitter_604.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_604.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_604.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_604.FlipbookFramerate=nr(1,1)
ParticleEmitter_604.FlipbookStartRandom=false
ParticleEmitter_604.Squash=ns({nsk(0.000000,0.618857,0.000000),nsk(1.000000,0.618857,0.000000)})
ParticleEmitter_604.Brightness=20



local _20_605=i("Attachment", Attachment_571)
_20_605.Name="20"
_20_605:SetAttribute("AuraInstance", true)
_20_605.Visible=false
_20_605.CFrame=cf(5.118921279907227,-1.5821943283081055,-8.866122245788574,-0.49995946884155273,0,-0.8660488128662109,0,1,0,0.8660488128662109,0,-0.49995946884155273)



local ParticleEmitter_606=i("ParticleEmitter", _20_605)
ParticleEmitter_606.Name="ParticleEmitter"
ParticleEmitter_606:SetAttribute("EmitDelay", 0)
ParticleEmitter_606:SetAttribute("AuraInstance", true)
ParticleEmitter_606.Enabled=true
ParticleEmitter_606.Rate=5
ParticleEmitter_606.Lifetime=nr(1,1)
ParticleEmitter_606.Speed=nr(0,0)
ParticleEmitter_606.Rotation=nr(0,0)
ParticleEmitter_606.RotSpeed=nr(0,0)
ParticleEmitter_606.Size=ns({nsk(0.000000,0.526945,0.000000),nsk(1.000000,0.526945,0.000000)})
ParticleEmitter_606.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_606.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_606.LightEmission=0
ParticleEmitter_606.LightInfluence=0
ParticleEmitter_606.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_606.Drag=0
ParticleEmitter_606.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_606.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_606.ZOffset=0
ParticleEmitter_606.Texture="rbxassetid://14221498728"
ParticleEmitter_606.LockedToPart=true
ParticleEmitter_606.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_606.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_606.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_606.FlipbookFramerate=nr(1,1)
ParticleEmitter_606.FlipbookStartRandom=false
ParticleEmitter_606.Squash=ns({nsk(0.000000,2.841361,0.000000),nsk(1.000000,2.841361,0.000000)})
ParticleEmitter_606.Brightness=20



local _14_607=i("Attachment", Attachment_571)
_14_607.Name="14"
_14_607:SetAttribute("AuraInstance", true)
_14_607.Visible=false
_14_607.CFrame=cf(-5.1188645362854,-1.5821945667266846,8.866144180297852,-0.49995946884155273,0,-0.8660488128662109,0,1,0,0.8660488128662109,0,-0.49995946884155273)



local ParticleEmitter_608=i("ParticleEmitter", _14_607)
ParticleEmitter_608.Name="ParticleEmitter"
ParticleEmitter_608:SetAttribute("EmitDelay", 0)
ParticleEmitter_608:SetAttribute("AuraInstance", true)
ParticleEmitter_608.Enabled=true
ParticleEmitter_608.Rate=5
ParticleEmitter_608.Lifetime=nr(1,1)
ParticleEmitter_608.Speed=nr(0,0)
ParticleEmitter_608.Rotation=nr(0,0)
ParticleEmitter_608.RotSpeed=nr(0,0)
ParticleEmitter_608.Size=ns({nsk(0.000000,0.921519,0.000000),nsk(1.000000,0.921519,0.000000)})
ParticleEmitter_608.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_608.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_608.LightEmission=0
ParticleEmitter_608.LightInfluence=0
ParticleEmitter_608.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_608.Drag=0
ParticleEmitter_608.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_608.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_608.ZOffset=0
ParticleEmitter_608.Texture="rbxassetid://14221498728"
ParticleEmitter_608.LockedToPart=true
ParticleEmitter_608.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_608.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_608.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_608.FlipbookFramerate=nr(1,1)
ParticleEmitter_608.FlipbookStartRandom=false
ParticleEmitter_608.Squash=ns({nsk(0.000000,1.922097,0.000000),nsk(1.000000,1.922097,0.000000)})
ParticleEmitter_608.Brightness=20



local _13_609=i("Attachment", Attachment_571)
_13_609.Name="13"
_13_609:SetAttribute("AuraInstance", true)
_13_609.Visible=false
_13_609.CFrame=cf(-8.866101264953613,-1.5821945667266846,-5.118843078613281,-0.8660073280334473,0,0.5000313520431519,0,1,0,-0.5000313520431519,0,-0.8660073280334473)



local ParticleEmitter_610=i("ParticleEmitter", _13_609)
ParticleEmitter_610.Name="ParticleEmitter"
ParticleEmitter_610:SetAttribute("EmitDelay", 0)
ParticleEmitter_610:SetAttribute("AuraInstance", true)
ParticleEmitter_610.Enabled=true
ParticleEmitter_610.Rate=5
ParticleEmitter_610.Lifetime=nr(1,1)
ParticleEmitter_610.Speed=nr(0,0)
ParticleEmitter_610.Rotation=nr(0,0)
ParticleEmitter_610.RotSpeed=nr(0,0)
ParticleEmitter_610.Size=ns({nsk(0.000000,0.602027,0.000000),nsk(1.000000,0.602027,0.000000)})
ParticleEmitter_610.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_610.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_610.LightEmission=0
ParticleEmitter_610.LightInfluence=0
ParticleEmitter_610.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_610.Drag=0
ParticleEmitter_610.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_610.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_610.ZOffset=0
ParticleEmitter_610.Texture="rbxassetid://14221498728"
ParticleEmitter_610.LockedToPart=true
ParticleEmitter_610.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_610.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_610.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_610.FlipbookFramerate=nr(1,1)
ParticleEmitter_610.FlipbookStartRandom=false
ParticleEmitter_610.Squash=ns({nsk(0.000000,1.188205,0.000000),nsk(1.000000,1.188205,0.000000)})
ParticleEmitter_610.Brightness=20



local _17_611=i("Attachment", Attachment_571)
_17_611.Name="17"
_17_611:SetAttribute("AuraInstance", true)
_17_611.Visible=false
_17_611.CFrame=cf(8.866101264953613,-1.5821943283081055,5.1188788414001465,-0.8660073280334473,0,0.5000313520431519,0,1,0,-0.5000313520431519,0,-0.8660073280334473)



local ParticleEmitter_612=i("ParticleEmitter", _17_611)
ParticleEmitter_612.Name="ParticleEmitter"
ParticleEmitter_612:SetAttribute("EmitDelay", 0)
ParticleEmitter_612:SetAttribute("AuraInstance", true)
ParticleEmitter_612.Enabled=true
ParticleEmitter_612.Rate=5
ParticleEmitter_612.Lifetime=nr(1,1)
ParticleEmitter_612.Speed=nr(0,0)
ParticleEmitter_612.Rotation=nr(0,0)
ParticleEmitter_612.RotSpeed=nr(0,0)
ParticleEmitter_612.Size=ns({nsk(0.000000,1.254626,0.000000),nsk(1.000000,1.254626,0.000000)})
ParticleEmitter_612.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_612.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_612.LightEmission=0
ParticleEmitter_612.LightInfluence=0
ParticleEmitter_612.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_612.Drag=0
ParticleEmitter_612.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_612.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_612.ZOffset=0
ParticleEmitter_612.Texture="rbxassetid://14221498728"
ParticleEmitter_612.LockedToPart=true
ParticleEmitter_612.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_612.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_612.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_612.FlipbookFramerate=nr(1,1)
ParticleEmitter_612.FlipbookStartRandom=false
ParticleEmitter_612.Squash=ns({nsk(0.000000,1.899747,0.000000),nsk(1.000000,1.899747,0.000000)})
ParticleEmitter_612.Brightness=20



local _3_613=i("Attachment", Attachment_571)
_3_613.Name="3"
_3_613:SetAttribute("AuraInstance", true)
_3_613.Visible=false
_3_613.CFrame=cf(9.88894271850586,-1.5821943283081055,-2.6497104167938232,-0.9659297466278076,0,-0.2588047981262207,0,1,0,0.2588047981262207,0,-0.9659297466278076)



local ParticleEmitter_614=i("ParticleEmitter", _3_613)
ParticleEmitter_614.Name="ParticleEmitter"
ParticleEmitter_614:SetAttribute("EmitDelay", 0)
ParticleEmitter_614:SetAttribute("AuraInstance", true)
ParticleEmitter_614.Enabled=true
ParticleEmitter_614.Rate=5
ParticleEmitter_614.Lifetime=nr(1,1)
ParticleEmitter_614.Speed=nr(0,0)
ParticleEmitter_614.Rotation=nr(0,0)
ParticleEmitter_614.RotSpeed=nr(0,0)
ParticleEmitter_614.Size=ns({nsk(0.000000,0.648257,0.000000),nsk(1.000000,0.648257,0.000000)})
ParticleEmitter_614.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_614.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_614.LightEmission=0
ParticleEmitter_614.LightInfluence=0
ParticleEmitter_614.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_614.Drag=0
ParticleEmitter_614.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_614.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_614.ZOffset=0
ParticleEmitter_614.Texture="rbxassetid://14221498728"
ParticleEmitter_614.LockedToPart=true
ParticleEmitter_614.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_614.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_614.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_614.FlipbookFramerate=nr(1,1)
ParticleEmitter_614.FlipbookStartRandom=false
ParticleEmitter_614.Squash=ns({nsk(0.000000,2.678332,0.000000),nsk(1.000000,2.678332,0.000000)})
ParticleEmitter_614.Brightness=20



local _11_615=i("Attachment", Attachment_571)
_11_615.Name="11"
_11_615:SetAttribute("AuraInstance", true)
_11_615.Visible=false
_11_615.CFrame=cf(2.6498098373413086,-1.5821943283081055,9.888921737670898,-0.2588644027709961,0,0.965913712978363,0,1,0,-0.965913712978363,0,-0.2588644027709961)



local ParticleEmitter_616=i("ParticleEmitter", _11_615)
ParticleEmitter_616.Name="ParticleEmitter"
ParticleEmitter_616:SetAttribute("EmitDelay", 0)
ParticleEmitter_616:SetAttribute("AuraInstance", true)
ParticleEmitter_616.Enabled=true
ParticleEmitter_616.Rate=5
ParticleEmitter_616.Lifetime=nr(1,1)
ParticleEmitter_616.Speed=nr(0,0)
ParticleEmitter_616.Rotation=nr(0,0)
ParticleEmitter_616.RotSpeed=nr(0,0)
ParticleEmitter_616.Size=ns({nsk(0.000000,0.571590,0.000000),nsk(1.000000,0.571590,0.000000)})
ParticleEmitter_616.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_616.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_616.LightEmission=0
ParticleEmitter_616.LightInfluence=0
ParticleEmitter_616.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_616.Drag=0
ParticleEmitter_616.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_616.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_616.ZOffset=0
ParticleEmitter_616.Texture="rbxassetid://14221498728"
ParticleEmitter_616.LockedToPart=true
ParticleEmitter_616.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_616.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_616.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_616.FlipbookFramerate=nr(1,1)
ParticleEmitter_616.FlipbookStartRandom=false
ParticleEmitter_616.Squash=ns({nsk(0.000000,1.766251,0.000000),nsk(1.000000,1.766251,0.000000)})
ParticleEmitter_616.Brightness=20



local _12_617=i("Attachment", Attachment_571)
_12_617.Name="12"
_12_617:SetAttribute("AuraInstance", true)
_12_617.Visible=false
_12_617.CFrame=cf(-9.88894271850586,-1.5821945667266846,2.6497175693511963,-0.9659297466278076,0,-0.2588047981262207,0,1,0,0.2588047981262207,0,-0.9659297466278076)



local ParticleEmitter_618=i("ParticleEmitter", _12_617)
ParticleEmitter_618.Name="ParticleEmitter"
ParticleEmitter_618:SetAttribute("EmitDelay", 0)
ParticleEmitter_618:SetAttribute("AuraInstance", true)
ParticleEmitter_618.Enabled=true
ParticleEmitter_618.Rate=5
ParticleEmitter_618.Lifetime=nr(1,1)
ParticleEmitter_618.Speed=nr(0,0)
ParticleEmitter_618.Rotation=nr(0,0)
ParticleEmitter_618.RotSpeed=nr(0,0)
ParticleEmitter_618.Size=ns({nsk(0.000000,1.587762,0.000000),nsk(1.000000,1.587762,0.000000)})
ParticleEmitter_618.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_618.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_618.LightEmission=0
ParticleEmitter_618.LightInfluence=0
ParticleEmitter_618.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_618.Drag=0
ParticleEmitter_618.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_618.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_618.ZOffset=0
ParticleEmitter_618.Texture="rbxassetid://14221498728"
ParticleEmitter_618.LockedToPart=true
ParticleEmitter_618.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_618.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_618.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_618.FlipbookFramerate=nr(1,1)
ParticleEmitter_618.FlipbookStartRandom=false
ParticleEmitter_618.Squash=ns({nsk(0.000000,0.827232,0.000000),nsk(1.000000,0.827232,0.000000)})
ParticleEmitter_618.Brightness=20



local _4_619=i("Attachment", Attachment_571)
_4_619.Name="4"
_4_619:SetAttribute("AuraInstance", true)
_4_619.Visible=false
_4_619.CFrame=cf(-2.6497530937194824,-1.5821945667266846,-9.888885498046875,-0.2588644027709961,0,0.965913712978363,0,1,0,-0.965913712978363,0,-0.2588644027709961)



local ParticleEmitter_620=i("ParticleEmitter", _4_619)
ParticleEmitter_620.Name="ParticleEmitter"
ParticleEmitter_620:SetAttribute("EmitDelay", 0)
ParticleEmitter_620:SetAttribute("AuraInstance", true)
ParticleEmitter_620.Enabled=true
ParticleEmitter_620.Rate=5
ParticleEmitter_620.Lifetime=nr(1,1)
ParticleEmitter_620.Speed=nr(0,0)
ParticleEmitter_620.Rotation=nr(0,0)
ParticleEmitter_620.RotSpeed=nr(0,0)
ParticleEmitter_620.Size=ns({nsk(0.000000,3.746422,0.000000),nsk(1.000000,3.746422,0.000000)})
ParticleEmitter_620.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_620.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_620.LightEmission=0
ParticleEmitter_620.LightInfluence=0
ParticleEmitter_620.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_620.Drag=0
ParticleEmitter_620.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_620.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_620.ZOffset=0
ParticleEmitter_620.Texture="rbxassetid://14221498728"
ParticleEmitter_620.LockedToPart=true
ParticleEmitter_620.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_620.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_620.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_620.FlipbookFramerate=nr(1,1)
ParticleEmitter_620.FlipbookStartRandom=false
ParticleEmitter_620.Squash=ns({nsk(0.000000,1.856571,0.000000),nsk(1.000000,1.856571,0.000000)})
ParticleEmitter_620.Brightness=20



local _41_621=i("Attachment", Attachment_571)
_41_621.Name="41"
_41_621:SetAttribute("AuraInstance", true)
_41_621.Visible=false
_41_621.CFrame=cf(-1.3363512754440308,-1.5821943283081055,-10.150162696838379,0.13057415187358856,0,-0.991438627243042,0,1,0,0.991438627243042,0,0.13057415187358856)



local ParticleEmitter_622=i("ParticleEmitter", _41_621)
ParticleEmitter_622.Name="ParticleEmitter"
ParticleEmitter_622:SetAttribute("EmitDelay", 0)
ParticleEmitter_622:SetAttribute("AuraInstance", true)
ParticleEmitter_622.Enabled=true
ParticleEmitter_622.Rate=5
ParticleEmitter_622.Lifetime=nr(1,1)
ParticleEmitter_622.Speed=nr(0,0)
ParticleEmitter_622.Rotation=nr(0,0)
ParticleEmitter_622.RotSpeed=nr(0,0)
ParticleEmitter_622.Size=ns({nsk(0.000000,0.596975,0.000000),nsk(1.000000,0.596975,0.000000)})
ParticleEmitter_622.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_622.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_622.LightEmission=0
ParticleEmitter_622.LightInfluence=0
ParticleEmitter_622.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_622.Drag=0
ParticleEmitter_622.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_622.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_622.ZOffset=0
ParticleEmitter_622.Texture="rbxassetid://14221498728"
ParticleEmitter_622.LockedToPart=true
ParticleEmitter_622.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_622.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_622.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_622.FlipbookFramerate=nr(1,1)
ParticleEmitter_622.FlipbookStartRandom=false
ParticleEmitter_622.Squash=ns({nsk(0.000000,0.686463,0.000000),nsk(1.000000,0.686463,0.000000)})
ParticleEmitter_622.Brightness=20



local _42_623=i("Attachment", Attachment_571)
_42_623.Name="42"
_42_623:SetAttribute("AuraInstance", true)
_42_623.Visible=false
_42_623.CFrame=cf(1.3362376689910889,-1.5821945667266846,10.150135040283203,0.13057415187358856,0,-0.991438627243042,0,1,0,0.991438627243042,0,0.13057415187358856)



local ParticleEmitter_624=i("ParticleEmitter", _42_623)
ParticleEmitter_624.Name="ParticleEmitter"
ParticleEmitter_624:SetAttribute("EmitDelay", 0)
ParticleEmitter_624:SetAttribute("AuraInstance", true)
ParticleEmitter_624.Enabled=true
ParticleEmitter_624.Rate=5
ParticleEmitter_624.Lifetime=nr(1,1)
ParticleEmitter_624.Speed=nr(0,0)
ParticleEmitter_624.Rotation=nr(0,0)
ParticleEmitter_624.RotSpeed=nr(0,0)
ParticleEmitter_624.Size=ns({nsk(0.000000,0.695031,0.000000),nsk(1.000000,0.695031,0.000000)})
ParticleEmitter_624.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_624.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_624.LightEmission=0
ParticleEmitter_624.LightInfluence=0
ParticleEmitter_624.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_624.Drag=0
ParticleEmitter_624.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_624.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_624.ZOffset=0
ParticleEmitter_624.Texture="rbxassetid://14221498728"
ParticleEmitter_624.LockedToPart=true
ParticleEmitter_624.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_624.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_624.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_624.FlipbookFramerate=nr(1,1)
ParticleEmitter_624.FlipbookStartRandom=false
ParticleEmitter_624.Squash=ns({nsk(0.000000,3.936826,0.000000),nsk(1.000000,3.936826,0.000000)})
ParticleEmitter_624.Brightness=20



local _33_625=i("Attachment", Attachment_571)
_33_625.Name="33"
_33_625:SetAttribute("AuraInstance", true)
_33_625.Visible=false
_33_625.CFrame=cf(-10.150191307067871,-1.5821945667266846,1.336294412612915,-0.9914486408233643,0,-0.1304979771375656,0,1,0,0.1304979771375656,0,-0.9914486408233643)



local ParticleEmitter_626=i("ParticleEmitter", _33_625)
ParticleEmitter_626.Name="ParticleEmitter"
ParticleEmitter_626:SetAttribute("EmitDelay", 0)
ParticleEmitter_626:SetAttribute("AuraInstance", true)
ParticleEmitter_626.Enabled=true
ParticleEmitter_626.Rate=5
ParticleEmitter_626.Lifetime=nr(1,1)
ParticleEmitter_626.Speed=nr(0,0)
ParticleEmitter_626.Rotation=nr(0,0)
ParticleEmitter_626.RotSpeed=nr(0,0)
ParticleEmitter_626.Size=ns({nsk(0.000000,0.494996,0.000000),nsk(1.000000,0.494996,0.000000)})
ParticleEmitter_626.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_626.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_626.LightEmission=0
ParticleEmitter_626.LightInfluence=0
ParticleEmitter_626.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_626.Drag=0
ParticleEmitter_626.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_626.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_626.ZOffset=0
ParticleEmitter_626.Texture="rbxassetid://14221498728"
ParticleEmitter_626.LockedToPart=true
ParticleEmitter_626.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_626.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_626.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_626.FlipbookFramerate=nr(1,1)
ParticleEmitter_626.FlipbookStartRandom=false
ParticleEmitter_626.Squash=ns({nsk(0.000000,0.825143,0.000000),nsk(1.000000,0.825143,0.000000)})
ParticleEmitter_626.Brightness=20



local _34_627=i("Attachment", Attachment_571)
_34_627.Name="34"
_34_627:SetAttribute("AuraInstance", true)
_34_627.Visible=false
_34_627.CFrame=cf(10.150135040283203,-1.5821943283081055,-1.3362802267074585,-0.9914486408233643,0,-0.1304979771375656,0,1,0,0.1304979771375656,0,-0.9914486408233643)



local ParticleEmitter_628=i("ParticleEmitter", _34_627)
ParticleEmitter_628.Name="ParticleEmitter"
ParticleEmitter_628:SetAttribute("EmitDelay", 0)
ParticleEmitter_628:SetAttribute("AuraInstance", true)
ParticleEmitter_628.Enabled=true
ParticleEmitter_628.Rate=5
ParticleEmitter_628.Lifetime=nr(1,1)
ParticleEmitter_628.Speed=nr(0,0)
ParticleEmitter_628.Rotation=nr(0,0)
ParticleEmitter_628.RotSpeed=nr(0,0)
ParticleEmitter_628.Size=ns({nsk(0.000000,1.308043,0.000000),nsk(1.000000,1.308043,0.000000)})
ParticleEmitter_628.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_628.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_628.LightEmission=0
ParticleEmitter_628.LightInfluence=0
ParticleEmitter_628.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_628.Drag=0
ParticleEmitter_628.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_628.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_628.ZOffset=0
ParticleEmitter_628.Texture="rbxassetid://14221498728"
ParticleEmitter_628.LockedToPart=true
ParticleEmitter_628.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_628.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_628.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_628.FlipbookFramerate=nr(1,1)
ParticleEmitter_628.FlipbookStartRandom=false
ParticleEmitter_628.Squash=ns({nsk(0.000000,1.266498,0.000000),nsk(1.000000,1.266498,0.000000)})
ParticleEmitter_628.Brightness=20



local _43_629=i("Attachment", Attachment_571)
_43_629.Name="43"
_43_629:SetAttribute("AuraInstance", true)
_43_629.Visible=false
_43_629.CFrame=cf(6.232310771942139,-1.5821943283081055,-8.122160911560059,-0.6087931990623474,0,-0.7933290600776672,0,1,0,0.7933290600776672,0,-0.6087931990623474)



local ParticleEmitter_630=i("ParticleEmitter", _43_629)
ParticleEmitter_630.Name="ParticleEmitter"
ParticleEmitter_630:SetAttribute("EmitDelay", 0)
ParticleEmitter_630:SetAttribute("AuraInstance", true)
ParticleEmitter_630.Enabled=true
ParticleEmitter_630.Rate=5
ParticleEmitter_630.Lifetime=nr(1,1)
ParticleEmitter_630.Speed=nr(0,0)
ParticleEmitter_630.Rotation=nr(0,0)
ParticleEmitter_630.RotSpeed=nr(0,0)
ParticleEmitter_630.Size=ns({nsk(0.000000,1.229617,0.000000),nsk(1.000000,1.229617,0.000000)})
ParticleEmitter_630.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_630.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_630.LightEmission=0
ParticleEmitter_630.LightInfluence=0
ParticleEmitter_630.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_630.Drag=0
ParticleEmitter_630.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_630.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_630.ZOffset=0
ParticleEmitter_630.Texture="rbxassetid://14221498728"
ParticleEmitter_630.LockedToPart=true
ParticleEmitter_630.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_630.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_630.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_630.FlipbookFramerate=nr(1,1)
ParticleEmitter_630.FlipbookStartRandom=false
ParticleEmitter_630.Squash=ns({nsk(0.000000,2.593306,0.000000),nsk(1.000000,2.593306,0.000000)})
ParticleEmitter_630.Brightness=20



local _44_631=i("Attachment", Attachment_571)
_44_631.Name="44"
_44_631:SetAttribute("AuraInstance", true)
_44_631.Visible=false
_44_631.CFrame=cf(8.122118949890137,-1.5821943283081055,6.232338905334473,-0.7933783531188965,0,0.60872882604599,0,1,0,-0.60872882604599,0,-0.7933783531188965)



local ParticleEmitter_632=i("ParticleEmitter", _44_631)
ParticleEmitter_632.Name="ParticleEmitter"
ParticleEmitter_632:SetAttribute("EmitDelay", 0)
ParticleEmitter_632:SetAttribute("AuraInstance", true)
ParticleEmitter_632.Enabled=true
ParticleEmitter_632.Rate=5
ParticleEmitter_632.Lifetime=nr(1,1)
ParticleEmitter_632.Speed=nr(0,0)
ParticleEmitter_632.Rotation=nr(0,0)
ParticleEmitter_632.RotSpeed=nr(0,0)
ParticleEmitter_632.Size=ns({nsk(0.000000,0.736450,0.000000),nsk(1.000000,0.736450,0.000000)})
ParticleEmitter_632.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_632.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_632.LightEmission=0
ParticleEmitter_632.LightInfluence=0
ParticleEmitter_632.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_632.Drag=0
ParticleEmitter_632.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_632.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_632.ZOffset=0
ParticleEmitter_632.Texture="rbxassetid://14221498728"
ParticleEmitter_632.LockedToPart=true
ParticleEmitter_632.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_632.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_632.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_632.FlipbookFramerate=nr(1,1)
ParticleEmitter_632.FlipbookStartRandom=false
ParticleEmitter_632.Squash=ns({nsk(0.000000,0.857629,0.000000),nsk(1.000000,0.857629,0.000000)})
ParticleEmitter_632.Brightness=20



local _45_633=i("Attachment", Attachment_571)
_45_633.Name="45"
_45_633:SetAttribute("AuraInstance", true)
_45_633.Visible=false
_45_633.CFrame=cf(-6.232424259185791,-1.5821945667266846,8.122146606445312,-0.6087931990623474,0,-0.7933290600776672,0,1,0,0.7933290600776672,0,-0.6087931990623474)



local ParticleEmitter_634=i("ParticleEmitter", _45_633)
ParticleEmitter_634.Name="ParticleEmitter"
ParticleEmitter_634:SetAttribute("EmitDelay", 0)
ParticleEmitter_634:SetAttribute("AuraInstance", true)
ParticleEmitter_634.Enabled=true
ParticleEmitter_634.Rate=5
ParticleEmitter_634.Lifetime=nr(1,1)
ParticleEmitter_634.Speed=nr(0,0)
ParticleEmitter_634.Rotation=nr(0,0)
ParticleEmitter_634.RotSpeed=nr(0,0)
ParticleEmitter_634.Size=ns({nsk(0.000000,0.471069,0.000000),nsk(1.000000,0.471069,0.000000)})
ParticleEmitter_634.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_634.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_634.LightEmission=0
ParticleEmitter_634.LightInfluence=0
ParticleEmitter_634.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_634.Drag=0
ParticleEmitter_634.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_634.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_634.ZOffset=0
ParticleEmitter_634.Texture="rbxassetid://14221498728"
ParticleEmitter_634.LockedToPart=true
ParticleEmitter_634.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_634.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_634.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_634.FlipbookFramerate=nr(1,1)
ParticleEmitter_634.FlipbookStartRandom=false
ParticleEmitter_634.Squash=ns({nsk(0.000000,4.602204,0.000000),nsk(1.000000,4.602204,0.000000)})
ParticleEmitter_634.Brightness=20



local _35_635=i("Attachment", Attachment_571)
_35_635.Name="35"
_35_635:SetAttribute("AuraInstance", true)
_35_635.Visible=false
_35_635.CFrame=cf(-8.122175216674805,-1.5821945667266846,-6.232324600219727,-0.7933783531188965,0,0.60872882604599,0,1,0,-0.60872882604599,0,-0.7933783531188965)



local ParticleEmitter_636=i("ParticleEmitter", _35_635)
ParticleEmitter_636.Name="ParticleEmitter"
ParticleEmitter_636:SetAttribute("EmitDelay", 0)
ParticleEmitter_636:SetAttribute("AuraInstance", true)
ParticleEmitter_636.Enabled=true
ParticleEmitter_636.Rate=5
ParticleEmitter_636.Lifetime=nr(1,1)
ParticleEmitter_636.Speed=nr(0,0)
ParticleEmitter_636.Rotation=nr(0,0)
ParticleEmitter_636.RotSpeed=nr(0,0)
ParticleEmitter_636.Size=ns({nsk(0.000000,1.225551,0.000000),nsk(1.000000,1.225551,0.000000)})
ParticleEmitter_636.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_636.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_636.LightEmission=0
ParticleEmitter_636.LightInfluence=0
ParticleEmitter_636.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_636.Drag=0
ParticleEmitter_636.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_636.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_636.ZOffset=0
ParticleEmitter_636.Texture="rbxassetid://14221498728"
ParticleEmitter_636.LockedToPart=true
ParticleEmitter_636.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_636.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_636.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_636.FlipbookFramerate=nr(1,1)
ParticleEmitter_636.FlipbookStartRandom=false
ParticleEmitter_636.Squash=ns({nsk(0.000000,1.570945,0.000000),nsk(1.000000,1.570945,0.000000)})
ParticleEmitter_636.Brightness=20



local _36_637=i("Attachment", Attachment_571)
_36_637.Name="36"
_36_637:SetAttribute("AuraInstance", true)
_36_637.Visible=false
_36_637.CFrame=cf(1.3363512754440308,-1.5821943283081055,-10.15014934539795,-0.1305745542049408,0,-0.9914385080337524,0,1,0,0.9914385080337524,0,-0.1305745542049408)



local ParticleEmitter_638=i("ParticleEmitter", _36_637)
ParticleEmitter_638.Name="ParticleEmitter"
ParticleEmitter_638:SetAttribute("EmitDelay", 0)
ParticleEmitter_638:SetAttribute("AuraInstance", true)
ParticleEmitter_638.Enabled=true
ParticleEmitter_638.Rate=5
ParticleEmitter_638.Lifetime=nr(1,1)
ParticleEmitter_638.Speed=nr(0,0)
ParticleEmitter_638.Rotation=nr(0,0)
ParticleEmitter_638.RotSpeed=nr(0,0)
ParticleEmitter_638.Size=ns({nsk(0.000000,0.662692,0.000000),nsk(1.000000,0.662692,0.000000)})
ParticleEmitter_638.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_638.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_638.LightEmission=0
ParticleEmitter_638.LightInfluence=0
ParticleEmitter_638.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_638.Drag=0
ParticleEmitter_638.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_638.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_638.ZOffset=0
ParticleEmitter_638.Texture="rbxassetid://14221498728"
ParticleEmitter_638.LockedToPart=true
ParticleEmitter_638.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_638.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_638.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_638.FlipbookFramerate=nr(1,1)
ParticleEmitter_638.FlipbookStartRandom=false
ParticleEmitter_638.Squash=ns({nsk(0.000000,0.837837,0.000000),nsk(1.000000,0.837837,0.000000)})
ParticleEmitter_638.Brightness=20



local _48_639=i("Attachment", Attachment_571)
_48_639.Name="48"
_48_639:SetAttribute("AuraInstance", true)
_48_639.Visible=false
_48_639.CFrame=cf(-1.3362376689910889,-1.5821945667266846,10.15014934539795,-0.1305745542049408,0,-0.9914385080337524,0,1,0,0.9914385080337524,0,-0.1305745542049408)



local ParticleEmitter_640=i("ParticleEmitter", _48_639)
ParticleEmitter_640.Name="ParticleEmitter"
ParticleEmitter_640:SetAttribute("EmitDelay", 0)
ParticleEmitter_640:SetAttribute("AuraInstance", true)
ParticleEmitter_640.Enabled=true
ParticleEmitter_640.Rate=5
ParticleEmitter_640.Lifetime=nr(1,1)
ParticleEmitter_640.Speed=nr(0,0)
ParticleEmitter_640.Rotation=nr(0,0)
ParticleEmitter_640.RotSpeed=nr(0,0)
ParticleEmitter_640.Size=ns({nsk(0.000000,1.436486,0.000000),nsk(1.000000,1.436486,0.000000)})
ParticleEmitter_640.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_640.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_640.LightEmission=0
ParticleEmitter_640.LightInfluence=0
ParticleEmitter_640.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_640.Drag=0
ParticleEmitter_640.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_640.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_640.ZOffset=0
ParticleEmitter_640.Texture="rbxassetid://14221498728"
ParticleEmitter_640.LockedToPart=true
ParticleEmitter_640.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_640.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_640.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_640.FlipbookFramerate=nr(1,1)
ParticleEmitter_640.FlipbookStartRandom=false
ParticleEmitter_640.Squash=ns({nsk(0.000000,1.166988,0.000000),nsk(1.000000,1.166988,0.000000)})
ParticleEmitter_640.Brightness=20



local _46_641=i("Attachment", Attachment_571)
_46_641.Name="46"
_46_641:SetAttribute("AuraInstance", true)
_46_641.Visible=false
_46_641.CFrame=cf(6.232481002807617,-1.5821943283081055,8.122133255004883,-0.6087931990623474,0,0.7933290600776672,0,1,0,-0.7933290600776672,0,-0.6087931990623474)



local ParticleEmitter_642=i("ParticleEmitter", _46_641)
ParticleEmitter_642.Name="ParticleEmitter"
ParticleEmitter_642:SetAttribute("EmitDelay", 0)
ParticleEmitter_642:SetAttribute("AuraInstance", true)
ParticleEmitter_642.Enabled=true
ParticleEmitter_642.Rate=5
ParticleEmitter_642.Lifetime=nr(1,1)
ParticleEmitter_642.Speed=nr(0,0)
ParticleEmitter_642.Rotation=nr(0,0)
ParticleEmitter_642.RotSpeed=nr(0,0)
ParticleEmitter_642.Size=ns({nsk(0.000000,3.128799,0.000000),nsk(1.000000,3.128799,0.000000)})
ParticleEmitter_642.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_642.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_642.LightEmission=0
ParticleEmitter_642.LightInfluence=0
ParticleEmitter_642.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_642.Drag=0
ParticleEmitter_642.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_642.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_642.ZOffset=0
ParticleEmitter_642.Texture="rbxassetid://14221498728"
ParticleEmitter_642.LockedToPart=true
ParticleEmitter_642.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_642.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_642.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_642.FlipbookFramerate=nr(1,1)
ParticleEmitter_642.FlipbookStartRandom=false
ParticleEmitter_642.Squash=ns({nsk(0.000000,1.228408,0.000000),nsk(1.000000,1.228408,0.000000)})
ParticleEmitter_642.Brightness=20



local _29_643=i("Attachment", Attachment_571)
_29_643.Name="29"
_29_643:SetAttribute("AuraInstance", true)
_29_643.Visible=false
_29_643.CFrame=cf(-10.150135040283203,-1.5821945667266846,-1.3362802267074585,-0.9914486408233643,0,0.1304979771375656,0,1,0,-0.1304979771375656,0,-0.9914486408233643)



local ParticleEmitter_644=i("ParticleEmitter", _29_643)
ParticleEmitter_644.Name="ParticleEmitter"
ParticleEmitter_644:SetAttribute("EmitDelay", 0)
ParticleEmitter_644:SetAttribute("AuraInstance", true)
ParticleEmitter_644.Enabled=true
ParticleEmitter_644.Rate=5
ParticleEmitter_644.Lifetime=nr(1,1)
ParticleEmitter_644.Speed=nr(0,0)
ParticleEmitter_644.Rotation=nr(0,0)
ParticleEmitter_644.RotSpeed=nr(0,0)
ParticleEmitter_644.Size=ns({nsk(0.000000,1.096114,0.000000),nsk(1.000000,1.096114,0.000000)})
ParticleEmitter_644.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_644.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_644.LightEmission=0
ParticleEmitter_644.LightInfluence=0
ParticleEmitter_644.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_644.Drag=0
ParticleEmitter_644.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_644.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_644.ZOffset=0
ParticleEmitter_644.Texture="rbxassetid://14221498728"
ParticleEmitter_644.LockedToPart=true
ParticleEmitter_644.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_644.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_644.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_644.FlipbookFramerate=nr(1,1)
ParticleEmitter_644.FlipbookStartRandom=false
ParticleEmitter_644.Squash=ns({nsk(0.000000,0.683591,0.000000),nsk(1.000000,0.683591,0.000000)})
ParticleEmitter_644.Brightness=20



local _47_645=i("Attachment", Attachment_571)
_47_645.Name="47"
_47_645:SetAttribute("AuraInstance", true)
_47_645.Visible=false
_47_645.CFrame=cf(-8.122175216674805,-1.5821945667266846,6.232324600219727,-0.7933783531188965,0,-0.60872882604599,0,1,0,0.60872882604599,0,-0.7933783531188965)



local ParticleEmitter_646=i("ParticleEmitter", _47_645)
ParticleEmitter_646.Name="ParticleEmitter"
ParticleEmitter_646:SetAttribute("EmitDelay", 0)
ParticleEmitter_646:SetAttribute("AuraInstance", true)
ParticleEmitter_646.Enabled=true
ParticleEmitter_646.Rate=5
ParticleEmitter_646.Lifetime=nr(1,1)
ParticleEmitter_646.Speed=nr(0,0)
ParticleEmitter_646.Rotation=nr(0,0)
ParticleEmitter_646.RotSpeed=nr(0,0)
ParticleEmitter_646.Size=ns({nsk(0.000000,1.201747,0.000000),nsk(1.000000,1.201747,0.000000)})
ParticleEmitter_646.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_646.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_646.LightEmission=0
ParticleEmitter_646.LightInfluence=0
ParticleEmitter_646.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_646.Drag=0
ParticleEmitter_646.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_646.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_646.ZOffset=0
ParticleEmitter_646.Texture="rbxassetid://14221498728"
ParticleEmitter_646.LockedToPart=true
ParticleEmitter_646.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_646.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_646.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_646.FlipbookFramerate=nr(1,1)
ParticleEmitter_646.FlipbookStartRandom=false
ParticleEmitter_646.Squash=ns({nsk(0.000000,0.878378,0.000000),nsk(1.000000,0.878378,0.000000)})
ParticleEmitter_646.Brightness=20



local _40_647=i("Attachment", Attachment_571)
_40_647.Name="40"
_40_647:SetAttribute("AuraInstance", true)
_40_647.Visible=false
_40_647.CFrame=cf(-6.232424259185791,-1.5821945667266846,-8.12210464477539,-0.6087931990623474,0,0.7933290600776672,0,1,0,-0.7933290600776672,0,-0.6087931990623474)



local ParticleEmitter_648=i("ParticleEmitter", _40_647)
ParticleEmitter_648.Name="ParticleEmitter"
ParticleEmitter_648:SetAttribute("EmitDelay", 0)
ParticleEmitter_648:SetAttribute("AuraInstance", true)
ParticleEmitter_648.Enabled=true
ParticleEmitter_648.Rate=5
ParticleEmitter_648.Lifetime=nr(1,1)
ParticleEmitter_648.Speed=nr(0,0)
ParticleEmitter_648.Rotation=nr(0,0)
ParticleEmitter_648.RotSpeed=nr(0,0)
ParticleEmitter_648.Size=ns({nsk(0.000000,0.790003,0.000000),nsk(1.000000,0.790003,0.000000)})
ParticleEmitter_648.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_648.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_648.LightEmission=0
ParticleEmitter_648.LightInfluence=0
ParticleEmitter_648.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_648.Drag=0
ParticleEmitter_648.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_648.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_648.ZOffset=0
ParticleEmitter_648.Texture="rbxassetid://14221498728"
ParticleEmitter_648.LockedToPart=true
ParticleEmitter_648.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_648.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_648.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_648.FlipbookFramerate=nr(1,1)
ParticleEmitter_648.FlipbookStartRandom=false
ParticleEmitter_648.Squash=ns({nsk(0.000000,0.557605,0.000000),nsk(1.000000,0.557605,0.000000)})
ParticleEmitter_648.Brightness=20



local _38_649=i("Attachment", Attachment_571)
_38_649.Name="38"
_38_649:SetAttribute("AuraInstance", true)
_38_649.Visible=false
_38_649.CFrame=cf(8.122175216674805,-1.5821943283081055,-6.232381820678711,-0.7933783531188965,0,-0.60872882604599,0,1,0,0.60872882604599,0,-0.7933783531188965)



local ParticleEmitter_650=i("ParticleEmitter", _38_649)
ParticleEmitter_650.Name="ParticleEmitter"
ParticleEmitter_650:SetAttribute("EmitDelay", 0)
ParticleEmitter_650:SetAttribute("AuraInstance", true)
ParticleEmitter_650.Enabled=true
ParticleEmitter_650.Rate=5
ParticleEmitter_650.Lifetime=nr(1,1)
ParticleEmitter_650.Speed=nr(0,0)
ParticleEmitter_650.Rotation=nr(0,0)
ParticleEmitter_650.RotSpeed=nr(0,0)
ParticleEmitter_650.Size=ns({nsk(0.000000,0.581599,0.000000),nsk(1.000000,0.581599,0.000000)})
ParticleEmitter_650.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_650.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_650.LightEmission=0
ParticleEmitter_650.LightInfluence=0
ParticleEmitter_650.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_650.Drag=0
ParticleEmitter_650.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_650.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_650.ZOffset=0
ParticleEmitter_650.Texture="rbxassetid://14221498728"
ParticleEmitter_650.LockedToPart=true
ParticleEmitter_650.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_650.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_650.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_650.FlipbookFramerate=nr(1,1)
ParticleEmitter_650.FlipbookStartRandom=false
ParticleEmitter_650.Squash=ns({nsk(0.000000,0.944383,0.000000),nsk(1.000000,0.944383,0.000000)})
ParticleEmitter_650.Brightness=20



local _37_651=i("Attachment", Attachment_571)
_37_651.Name="37"
_37_651:SetAttribute("AuraInstance", true)
_37_651.Visible=false
_37_651.CFrame=cf(10.150135040283203,-1.5821943283081055,1.3362802267074585,-0.9914486408233643,0,0.1304979771375656,0,1,0,-0.1304979771375656,0,-0.9914486408233643)



local ParticleEmitter_652=i("ParticleEmitter", _37_651)
ParticleEmitter_652.Name="ParticleEmitter"
ParticleEmitter_652:SetAttribute("EmitDelay", 0)
ParticleEmitter_652:SetAttribute("AuraInstance", true)
ParticleEmitter_652.Enabled=true
ParticleEmitter_652.Rate=5
ParticleEmitter_652.Lifetime=nr(1,1)
ParticleEmitter_652.Speed=nr(0,0)
ParticleEmitter_652.Rotation=nr(0,0)
ParticleEmitter_652.RotSpeed=nr(0,0)
ParticleEmitter_652.Size=ns({nsk(0.000000,2.588512,0.000000),nsk(1.000000,2.588512,0.000000)})
ParticleEmitter_652.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_652.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_652.LightEmission=0
ParticleEmitter_652.LightInfluence=0
ParticleEmitter_652.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_652.Drag=0
ParticleEmitter_652.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_652.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_652.ZOffset=0
ParticleEmitter_652.Texture="rbxassetid://14221498728"
ParticleEmitter_652.LockedToPart=true
ParticleEmitter_652.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_652.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_652.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_652.FlipbookFramerate=nr(1,1)
ParticleEmitter_652.FlipbookStartRandom=false
ParticleEmitter_652.Squash=ns({nsk(0.000000,0.930930,0.000000),nsk(1.000000,0.930930,0.000000)})
ParticleEmitter_652.Brightness=20



local _25_653=i("Attachment", Attachment_571)
_25_653.Name="25"
_25_653:SetAttribute("AuraInstance", true)
_25_653.Visible=false
_25_653.CFrame=cf(-9.458470344543457,-1.5821945667266846,3.9178099632263184,-0.9238815307617188,0,-0.3826785683631897,0,1,0,0.3826785683631897,0,-0.9238815307617188)



local ParticleEmitter_654=i("ParticleEmitter", _25_653)
ParticleEmitter_654.Name="ParticleEmitter"
ParticleEmitter_654:SetAttribute("EmitDelay", 0)
ParticleEmitter_654:SetAttribute("AuraInstance", true)
ParticleEmitter_654.Enabled=true
ParticleEmitter_654.Rate=5
ParticleEmitter_654.Lifetime=nr(1,1)
ParticleEmitter_654.Speed=nr(0,0)
ParticleEmitter_654.Rotation=nr(0,0)
ParticleEmitter_654.RotSpeed=nr(0,0)
ParticleEmitter_654.Size=ns({nsk(0.000000,1.356398,0.000000),nsk(1.000000,1.356398,0.000000)})
ParticleEmitter_654.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_654.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_654.LightEmission=0
ParticleEmitter_654.LightInfluence=0
ParticleEmitter_654.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_654.Drag=0
ParticleEmitter_654.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_654.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_654.ZOffset=0
ParticleEmitter_654.Texture="rbxassetid://14221498728"
ParticleEmitter_654.LockedToPart=true
ParticleEmitter_654.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_654.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_654.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_654.FlipbookFramerate=nr(1,1)
ParticleEmitter_654.FlipbookStartRandom=false
ParticleEmitter_654.Squash=ns({nsk(0.000000,2.285011,0.000000),nsk(1.000000,2.285011,0.000000)})
ParticleEmitter_654.Brightness=20



local _31_655=i("Attachment", Attachment_571)
_31_655.Name="31"
_31_655:SetAttribute("AuraInstance", true)
_31_655.Visible=false
_31_655.CFrame=cf(-3.9178240299224854,-1.5821945667266846,9.458441734313965,-0.3826873302459717,0,-0.9238779544830322,0,1,0,0.9238779544830322,0,-0.3826873302459717)



local ParticleEmitter_656=i("ParticleEmitter", _31_655)
ParticleEmitter_656.Name="ParticleEmitter"
ParticleEmitter_656:SetAttribute("EmitDelay", 0)
ParticleEmitter_656:SetAttribute("AuraInstance", true)
ParticleEmitter_656.Enabled=true
ParticleEmitter_656.Rate=5
ParticleEmitter_656.Lifetime=nr(1,1)
ParticleEmitter_656.Speed=nr(0,0)
ParticleEmitter_656.Rotation=nr(0,0)
ParticleEmitter_656.RotSpeed=nr(0,0)
ParticleEmitter_656.Size=ns({nsk(0.000000,0.948681,0.000000),nsk(1.000000,0.948681,0.000000)})
ParticleEmitter_656.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_656.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_656.LightEmission=0
ParticleEmitter_656.LightInfluence=0
ParticleEmitter_656.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_656.Drag=0
ParticleEmitter_656.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_656.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_656.ZOffset=0
ParticleEmitter_656.Texture="rbxassetid://14221498728"
ParticleEmitter_656.LockedToPart=true
ParticleEmitter_656.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_656.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_656.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_656.FlipbookFramerate=nr(1,1)
ParticleEmitter_656.FlipbookStartRandom=false
ParticleEmitter_656.Squash=ns({nsk(0.000000,1.570945,0.000000),nsk(1.000000,1.570945,0.000000)})
ParticleEmitter_656.Brightness=20



local _39_657=i("Attachment", Attachment_571)
_39_657.Name="39"
_39_657:SetAttribute("AuraInstance", true)
_39_657.Visible=false
_39_657.CFrame=cf(3.9178807735443115,-1.5821943283081055,-9.458427429199219,-0.3826873302459717,0,-0.9238779544830322,0,1,0,0.9238779544830322,0,-0.3826873302459717)



local ParticleEmitter_658=i("ParticleEmitter", _39_657)
ParticleEmitter_658.Name="ParticleEmitter"
ParticleEmitter_658:SetAttribute("EmitDelay", 0)
ParticleEmitter_658:SetAttribute("AuraInstance", true)
ParticleEmitter_658.Enabled=true
ParticleEmitter_658.Rate=5
ParticleEmitter_658.Lifetime=nr(1,1)
ParticleEmitter_658.Speed=nr(0,0)
ParticleEmitter_658.Rotation=nr(0,0)
ParticleEmitter_658.RotSpeed=nr(0,0)
ParticleEmitter_658.Size=ns({nsk(0.000000,0.466794,0.000000),nsk(1.000000,0.466794,0.000000)})
ParticleEmitter_658.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_658.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_658.LightEmission=0
ParticleEmitter_658.LightInfluence=0
ParticleEmitter_658.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_658.Drag=0
ParticleEmitter_658.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_658.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_658.ZOffset=0
ParticleEmitter_658.Texture="rbxassetid://14221498728"
ParticleEmitter_658.LockedToPart=true
ParticleEmitter_658.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_658.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_658.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_658.FlipbookFramerate=nr(1,1)
ParticleEmitter_658.FlipbookStartRandom=false
ParticleEmitter_658.Squash=ns({nsk(0.000000,0.800874,0.000000),nsk(1.000000,0.800874,0.000000)})
ParticleEmitter_658.Brightness=20



local _26_659=i("Attachment", Attachment_571)
_26_659.Name="26"
_26_659:SetAttribute("AuraInstance", true)
_26_659.Visible=false
_26_659.CFrame=cf(9.458470344543457,-1.5821943283081055,-3.9178099632263184,-0.9238815307617188,0,-0.3826785683631897,0,1,0,0.3826785683631897,0,-0.9238815307617188)



local ParticleEmitter_660=i("ParticleEmitter", _26_659)
ParticleEmitter_660.Name="ParticleEmitter"
ParticleEmitter_660:SetAttribute("EmitDelay", 0)
ParticleEmitter_660:SetAttribute("AuraInstance", true)
ParticleEmitter_660.Enabled=true
ParticleEmitter_660.Rate=5
ParticleEmitter_660.Lifetime=nr(1,1)
ParticleEmitter_660.Speed=nr(0,0)
ParticleEmitter_660.Rotation=nr(0,0)
ParticleEmitter_660.RotSpeed=nr(0,0)
ParticleEmitter_660.Size=ns({nsk(0.000000,1.000656,0.000000),nsk(1.000000,1.000656,0.000000)})
ParticleEmitter_660.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_660.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_660.LightEmission=0
ParticleEmitter_660.LightInfluence=0
ParticleEmitter_660.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_660.Drag=0
ParticleEmitter_660.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_660.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_660.ZOffset=0
ParticleEmitter_660.Texture="rbxassetid://14221498728"
ParticleEmitter_660.LockedToPart=true
ParticleEmitter_660.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_660.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_660.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_660.FlipbookFramerate=nr(1,1)
ParticleEmitter_660.FlipbookStartRandom=false
ParticleEmitter_660.Squash=ns({nsk(0.000000,2.456816,0.000000),nsk(1.000000,2.456816,0.000000)})
ParticleEmitter_660.Brightness=20



local _27_661=i("Attachment", Attachment_571)
_27_661.Name="27"
_27_661:SetAttribute("AuraInstance", true)
_27_661.Visible=false
_27_661.CFrame=cf(-3.9178240299224854,-1.5821945667266846,-9.458413124084473,-0.3826873302459717,0,0.9238779544830322,0,1,0,-0.9238779544830322,0,-0.3826873302459717)



local ParticleEmitter_662=i("ParticleEmitter", _27_661)
ParticleEmitter_662.Name="ParticleEmitter"
ParticleEmitter_662:SetAttribute("EmitDelay", 0)
ParticleEmitter_662:SetAttribute("AuraInstance", true)
ParticleEmitter_662.Enabled=true
ParticleEmitter_662.Rate=5
ParticleEmitter_662.Lifetime=nr(1,1)
ParticleEmitter_662.Speed=nr(0,0)
ParticleEmitter_662.Rotation=nr(0,0)
ParticleEmitter_662.RotSpeed=nr(0,0)
ParticleEmitter_662.Size=ns({nsk(0.000000,0.591203,0.000000),nsk(1.000000,0.591203,0.000000)})
ParticleEmitter_662.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_662.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_662.LightEmission=0
ParticleEmitter_662.LightInfluence=0
ParticleEmitter_662.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_662.Drag=0
ParticleEmitter_662.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_662.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_662.ZOffset=0
ParticleEmitter_662.Texture="rbxassetid://14221498728"
ParticleEmitter_662.LockedToPart=true
ParticleEmitter_662.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_662.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_662.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_662.FlipbookFramerate=nr(1,1)
ParticleEmitter_662.FlipbookStartRandom=false
ParticleEmitter_662.Squash=ns({nsk(0.000000,2.301102,0.000000),nsk(1.000000,2.301102,0.000000)})
ParticleEmitter_662.Brightness=20



local _30_663=i("Attachment", Attachment_571)
_30_663.Name="30"
_30_663:SetAttribute("AuraInstance", true)
_30_663.Visible=false
_30_663.CFrame=cf(-9.458413124084473,-1.5821945667266846,-3.9177956581115723,-0.9238815307617188,0,0.3826785683631897,0,1,0,-0.3826785683631897,0,-0.9238815307617188)



local ParticleEmitter_664=i("ParticleEmitter", _30_663)
ParticleEmitter_664.Name="ParticleEmitter"
ParticleEmitter_664:SetAttribute("EmitDelay", 0)
ParticleEmitter_664:SetAttribute("AuraInstance", true)
ParticleEmitter_664.Enabled=true
ParticleEmitter_664.Rate=5
ParticleEmitter_664.Lifetime=nr(1,1)
ParticleEmitter_664.Speed=nr(0,0)
ParticleEmitter_664.Rotation=nr(0,0)
ParticleEmitter_664.RotSpeed=nr(0,0)
ParticleEmitter_664.Size=ns({nsk(0.000000,1.540276,0.000000),nsk(1.000000,1.540276,0.000000)})
ParticleEmitter_664.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_664.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_664.LightEmission=0
ParticleEmitter_664.LightInfluence=0
ParticleEmitter_664.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_664.Drag=0
ParticleEmitter_664.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_664.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_664.ZOffset=0
ParticleEmitter_664.Texture="rbxassetid://14221498728"
ParticleEmitter_664.LockedToPart=true
ParticleEmitter_664.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_664.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_664.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_664.FlipbookFramerate=nr(1,1)
ParticleEmitter_664.FlipbookStartRandom=false
ParticleEmitter_664.Squash=ns({nsk(0.000000,1.103907,0.000000),nsk(1.000000,1.103907,0.000000)})
ParticleEmitter_664.Brightness=20



local _28_665=i("Attachment", Attachment_571)
_28_665.Name="28"
_28_665:SetAttribute("AuraInstance", true)
_28_665.Visible=false
_28_665.CFrame=cf(9.458355903625488,-1.5821943283081055,3.9178240299224854,-0.9238815307617188,0,0.3826785683631897,0,1,0,-0.3826785683631897,0,-0.9238815307617188)



local ParticleEmitter_666=i("ParticleEmitter", _28_665)
ParticleEmitter_666.Name="ParticleEmitter"
ParticleEmitter_666:SetAttribute("EmitDelay", 0)
ParticleEmitter_666:SetAttribute("AuraInstance", true)
ParticleEmitter_666.Enabled=true
ParticleEmitter_666.Rate=5
ParticleEmitter_666.Lifetime=nr(1,1)
ParticleEmitter_666.Speed=nr(0,0)
ParticleEmitter_666.Rotation=nr(0,0)
ParticleEmitter_666.RotSpeed=nr(0,0)
ParticleEmitter_666.Size=ns({nsk(0.000000,1.768039,0.000000),nsk(1.000000,1.768039,0.000000)})
ParticleEmitter_666.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_666.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_666.LightEmission=0
ParticleEmitter_666.LightInfluence=0
ParticleEmitter_666.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_666.Drag=0
ParticleEmitter_666.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_666.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_666.ZOffset=0
ParticleEmitter_666.Texture="rbxassetid://14221498728"
ParticleEmitter_666.LockedToPart=true
ParticleEmitter_666.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_666.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_666.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_666.FlipbookFramerate=nr(1,1)
ParticleEmitter_666.FlipbookStartRandom=false
ParticleEmitter_666.Squash=ns({nsk(0.000000,4.950856,0.000000),nsk(1.000000,4.950856,0.000000)})
ParticleEmitter_666.Brightness=20



local _32_667=i("Attachment", Attachment_571)
_32_667.Name="32"
_32_667:SetAttribute("AuraInstance", true)
_32_667.Visible=false
_32_667.CFrame=cf(3.9178807735443115,-1.5821943283081055,9.458456039428711,-0.3826873302459717,0,0.9238779544830322,0,1,0,-0.9238779544830322,0,-0.3826873302459717)



local ParticleEmitter_668=i("ParticleEmitter", _32_667)
ParticleEmitter_668.Name="ParticleEmitter"
ParticleEmitter_668:SetAttribute("EmitDelay", 0)
ParticleEmitter_668:SetAttribute("AuraInstance", true)
ParticleEmitter_668.Enabled=true
ParticleEmitter_668.Rate=5
ParticleEmitter_668.Lifetime=nr(1,1)
ParticleEmitter_668.Speed=nr(0,0)
ParticleEmitter_668.Rotation=nr(0,0)
ParticleEmitter_668.RotSpeed=nr(0,0)
ParticleEmitter_668.Size=ns({nsk(0.000000,0.530093,0.000000),nsk(1.000000,0.530093,0.000000)})
ParticleEmitter_668.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501868,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_668.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_668.LightEmission=0
ParticleEmitter_668.LightInfluence=0
ParticleEmitter_668.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_668.Drag=0
ParticleEmitter_668.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_668.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_668.ZOffset=0
ParticleEmitter_668.Texture="rbxassetid://14221498728"
ParticleEmitter_668.LockedToPart=true
ParticleEmitter_668.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_668.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_668.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_668.FlipbookFramerate=nr(1,1)
ParticleEmitter_668.FlipbookStartRandom=false
ParticleEmitter_668.Squash=ns({nsk(0.000000,0.593025,0.000000),nsk(1.000000,0.593025,0.000000)})
ParticleEmitter_668.Brightness=20


local SPIN_554=i("Attachment", Floor)
SPIN_554.Name="SPIN"
SPIN_554:SetAttribute("AuraInstance", true)
SPIN_554.Visible=false
SPIN_554.CFrame=cf(0,-1.75,0,1,0,0,0,1,0,0,0,1)



local mid_555=i("ParticleEmitter", SPIN_554)
mid_555.Name="mid"
mid_555:SetAttribute("AuraInstance", true)
mid_555.Enabled=false
mid_555.Rate=5
mid_555.Lifetime=nr(0.75,0.75)
mid_555.Speed=nr(0.01757499948143959,0.01757499948143959)
mid_555.Rotation=nr(-180,180)
mid_555.RotSpeed=nr(0,0)
mid_555.Size=ns({nsk(0.000000,10.750000,0.000000),nsk(1.000000,10.750000,0.000000)})
mid_555.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
mid_555.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
mid_555.LightEmission=0
mid_555.LightInfluence=0
mid_555.Acceleration=v3(0.000000,0.000000,0.000000)
mid_555.Drag=0
mid_555.EmissionDirection=Enum.NormalId.Top
mid_555.SpreadAngle=v2(0.000000,0.000000)
mid_555.ZOffset=0
mid_555.Texture="rbxassetid://16477162837"
mid_555.LockedToPart=true
mid_555.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
mid_555.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
mid_555.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
mid_555.FlipbookFramerate=nr(1,1)
mid_555.FlipbookStartRandom=false
mid_555.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
mid_555.Brightness=4



local mid2_556=i("ParticleEmitter", SPIN_554)
mid2_556.Name="mid2"
mid2_556:SetAttribute("AuraInstance", true)
mid2_556.Enabled=false
mid2_556.Rate=5
mid2_556.Lifetime=nr(1,1)
mid2_556.Speed=nr(0.01757499948143959,0.01757499948143959)
mid2_556.Rotation=nr(-180,180)
mid2_556.RotSpeed=nr(0,0)
mid2_556.Size=ns({nsk(0.000000,10.000000,0.000000),nsk(0.585696,5,0.000000),nsk(1.000000,10.000000,0.000000)})
mid2_556.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
mid2_556.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
mid2_556.LightEmission=0
mid2_556.LightInfluence=0
mid2_556.Acceleration=v3(0.000000,0.000000,0.000000)
mid2_556.Drag=0
mid2_556.EmissionDirection=Enum.NormalId.Top
mid2_556.SpreadAngle=v2(0.000000,0.000000)
mid2_556.ZOffset=0
mid2_556.Texture="rbxassetid://16477162837"
mid2_556.LockedToPart=true
mid2_556.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
mid2_556.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
mid2_556.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
mid2_556.FlipbookFramerate=nr(1,1)
mid2_556.FlipbookStartRandom=false
mid2_556.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
mid2_556.Brightness=1



local folood_557=i("ParticleEmitter", SPIN_554)
folood_557.Name="folood"
folood_557:SetAttribute("AuraInstance", true)
folood_557.Enabled=true
folood_557.Rate=35
folood_557.Lifetime=nr(2,2)
folood_557.Speed=nr(0.01757499948143959,0.01757499948143959)
folood_557.Rotation=nr(-180,180)
folood_557.RotSpeed=nr(0,0)
folood_557.Size=ns({nsk(0.000000,7.000000,1.312500),nsk(0.498721,6.937500,1.407928),nsk(1.000000,7.000000,0.000000)})
folood_557.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.102392,1.000000,0.000000),nsk(0.106129,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
folood_557.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
folood_557.LightEmission=1
folood_557.LightInfluence=0
folood_557.Acceleration=v3(0.000000,0.000000,0.000000)
folood_557.Drag=0
folood_557.EmissionDirection=Enum.NormalId.Top
folood_557.SpreadAngle=v2(0.000000,0.000000)
folood_557.ZOffset=0
folood_557.Texture="rbxassetid://1084976679"
folood_557.LockedToPart=true
folood_557.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
folood_557.FlipbookLayout=Enum.ParticleFlipbookLayout.None
folood_557.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
folood_557.FlipbookFramerate=nr(1,1)
folood_557.FlipbookStartRandom=false
folood_557.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
folood_557.Brightness=5



local idk_558=i("ParticleEmitter", SPIN_554)
idk_558.Name="idk"
idk_558:SetAttribute("AuraInstance", true)
idk_558.Enabled=true
idk_558.Rate=50
idk_558.Lifetime=nr(0.25,0.25)
idk_558.Speed=nr(35.14999771118164,35.14999771118164)
idk_558.Rotation=nr(-90,-90)
idk_558.RotSpeed=nr(0,0)
idk_558.Size=ns({nsk(0.000000,1.757500,0.000000),nsk(1.000000,5.437500,0.000000)})
idk_558.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498588,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
idk_558.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
idk_558.LightEmission=1
idk_558.LightInfluence=0
idk_558.Acceleration=v3(0.000000,0.000000,0.000000)
idk_558.Drag=0
idk_558.EmissionDirection=Enum.NormalId.Front
idk_558.SpreadAngle=v2(0.000000,380.000000)
idk_558.ZOffset=1
idk_558.Texture="https://assetgame.roblox.com/asset/?id=12363816837&assetName=lines_8"
idk_558.LockedToPart=true
idk_558.Orientation=Enum.ParticleOrientation.VelocityParallel
idk_558.FlipbookLayout=Enum.ParticleFlipbookLayout.None
idk_558.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
idk_558.FlipbookFramerate=nr(1,1)
idk_558.FlipbookStartRandom=false
idk_558.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
idk_558.Brightness=5



local ParticleEmitter_559=i("ParticleEmitter", SPIN_554)
ParticleEmitter_559.Name="ParticleEmitter"
ParticleEmitter_559:SetAttribute("AuraInstance", true)
ParticleEmitter_559.Enabled=true
ParticleEmitter_559.Rate=20
ParticleEmitter_559.Lifetime=nr(2,2)
ParticleEmitter_559.Speed=nr(0.01757499948143959,0.01757499948143959)
ParticleEmitter_559.Rotation=nr(-180,180)
ParticleEmitter_559.RotSpeed=nr(0,0)
ParticleEmitter_559.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.328249,4.750000,0.000000),nsk(1.000000,10.000000,0.000000)})
ParticleEmitter_559.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.102392,1.000000,0.000000),nsk(0.106129,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_559.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter_559.LightEmission=1
ParticleEmitter_559.LightInfluence=0
ParticleEmitter_559.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_559.Drag=0
ParticleEmitter_559.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_559.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_559.ZOffset=0
ParticleEmitter_559.Texture="rbxassetid://16477162837"
ParticleEmitter_559.LockedToPart=true
ParticleEmitter_559.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_559.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_559.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_559.FlipbookFramerate=nr(1,1)
ParticleEmitter_559.FlipbookStartRandom=false
ParticleEmitter_559.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_559.Brightness=5



local ParticleEmitter2_560=i("ParticleEmitter", SPIN_554)
ParticleEmitter2_560.Name="ParticleEmitter2"
ParticleEmitter2_560:SetAttribute("AuraInstance", true)
ParticleEmitter2_560.Enabled=true
ParticleEmitter2_560.Rate=2.5
ParticleEmitter2_560.Lifetime=nr(1,1)
ParticleEmitter2_560.Speed=nr(0.01757499948143959,0.01757499948143959)
ParticleEmitter2_560.Rotation=nr(0,0)
ParticleEmitter2_560.RotSpeed=nr(0,0)
ParticleEmitter2_560.Size=ns({nsk(0.000000,13.500000,0.000000),nsk(1.000000,13.500000,0.000000)})
ParticleEmitter2_560.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(0.919282,0.118750,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter2_560.Color=cs({csk(0.000000,c3(0.761765,1.000000,0.250000)),csk(1.000000,c3(0.761765,1.000000,0.250000))})
ParticleEmitter2_560.LightEmission=1
ParticleEmitter2_560.LightInfluence=0
ParticleEmitter2_560.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter2_560.Drag=0
ParticleEmitter2_560.EmissionDirection=Enum.NormalId.Top
ParticleEmitter2_560.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter2_560.ZOffset=0
ParticleEmitter2_560.Texture="rbxassetid://1084952073"
ParticleEmitter2_560.LockedToPart=true
ParticleEmitter2_560.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter2_560.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter2_560.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter2_560.FlipbookFramerate=nr(1,1)
ParticleEmitter2_560.FlipbookStartRandom=false
ParticleEmitter2_560.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter2_560.Brightness=1



local l=1
rr=PostSimulation:Connect(function(dt)
if not scriptfolder:FindFirstChild(Name.."Assets") then
rr:Disconnect()
end
l+=1




for _,v in foldah:GetDescendants() do 
if v:IsA("ParticleEmitter") then
v.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3),
})
end
end
local v5 = 30 + (sound.PlaybackLoudness or 0) / 200 * 330
local v6 = math.clamp(v5, 30, 360)
local v7 = Attachment_571
local v8 = v7.CFrame
local v9 = CFrame.Angles
local v10 = v6 * dt
v7.CFrame = v8 * v9(0, math.rad(v10), 0)

mid_555:Emit(sound.PlaybackLoudness/765)
mid2_556:Emit(sound.PlaybackLoudness/765)
for _, v1 in pairs(Attachment_571:GetChildren()) do
if v1:IsA("Attachment") then
v1.ParticleEmitter.Squash = NumberSequence.new(sound.PlaybackLoudness / math.random(60, 600))
v1.ParticleEmitter.Size = NumberSequence.new(0.075 + sound.PlaybackLoudness / math.random(80, 1000))
end
end
li.Color=im2.ImageColor3
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
TweenFunction(PartFXFloor,.01,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
PartFXFloor.Rotation=v3(0,l*20,0)
li.Brightness=5+sound.PlaybackLoudness/50.5
li.Range=2+sound.PlaybackLoudness/100.5
local f=PartFXFloor
local s=clamp(sound.PlaybackLoudness/25,0,math.random(5,10))
local s1=s/2
--Floor.Rotation=v3(0,l*10,0)
block1("In",3,v3(0,1,1),v3(s,1,1),f.CFrame*cf(9.5,s1,0)*angles(0,rad(0),rad(45)),c3(1,1,1),0,f.CFrame*cf(9.5,0,0)*angles(0,rad(0),rad(45)),true,im2.ImageColor3,true)
block1("In",3,v3(0,1,1),v3(s,1,1),f.CFrame*cf(-9.5,s1,0)*angles(0,rad(0),rad(-45)),c3(1,1,1),0,f.CFrame*cf(-9.5,0,0)*angles(0,rad(0),rad(-45)),true,im2.ImageColor3,true)




end)

end

repeat Cheatreal() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")