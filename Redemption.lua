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
local scriptfolder=Global.Cont
local sound=Global.Loud
local im2=Global.im2
local MusicPlayer=Global.MusicPlayer
local rootpart1=Global.rootpart1
local rootpart=Global.rootpart
local insSet=Global.insSet
local head=Global.head
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

function CorridorAssets()
if scriptfolder:FindFirstChild("RedemptionAssets") then return end

local foldah=i("Folder",scriptfolder)
foldah.Name="RedemptionAssets"
foldah:SetAttribute("VFX",true)


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
--Floor.CFrame=CFrame.new(211.32192993164062,88.14154815673828,-367.06134033203125,0.6427632570266724,0,0.7660648822784424,0,1,0,-0.7660648822784424,0,0.6427632570266724)
--Floor.Orientation=Vector3.new(0.000000,50.001999,0.000000)
--Floor.Position=Vector3.new(211.321930,88.141548,-367.061340)
Floor.CastShadow=true
Floor.Massless=true
local li=i("PointLight",Floor)

local Attachment_11792=i("Attachment", HumanoidRootPart_11751)
Attachment_11792.Name="Letters"
Attachment_11792:SetAttribute("AuraInstance", true)
Attachment_11792.Position = v3(0.000000,0.000000,0.000000)
Attachment_11792.Visible = false

local BACK_11793=i("ParticleEmitter", Attachment_11792)
BACK_11793.Name="BACK"
BACK_11793.Enabled = true
BACK_11793.Rate = 2
BACK_11793.Lifetime = nr(1,1)
BACK_11793.Speed = nr(6,6)
BACK_11793.Rotation = nr(-15,15)
BACK_11793.RotSpeed = nr(-10,10)
BACK_11793.Size = ns({nsk(0.000000,7.108295,10.753990),nsk(1.000000,6.858587,10.321173)})
BACK_11793.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.243657,0.000000,0.000000),nsk(0.518499,0.000000,0.000000),nsk(0.769556,0.207650,0.000000),nsk(1.000000,1.000000,0.000000)})
BACK_11793.Color = cs({csk(0.000000,c3(1.000000,0.180392,0.180392)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
BACK_11793.LightEmission = -1
BACK_11793.LightInfluence = 0
BACK_11793.Acceleration = v3(0.000000,0.000000,0.000000)
BACK_11793.Drag = 0
BACK_11793.EmissionDirection = Enum.NormalId.Top
BACK_11793.SpreadAngle = v2(180.000000,-180.000000)
BACK_11793.ZOffset = 1
BACK_11793.Texture = "rbxassetid://18333801156"
BACK_11793.LockedToPart = false
BACK_11793.Orientation = Enum.ParticleOrientation.FacingCamera
BACK_11793.FlipbookLayout = Enum.ParticleFlipbookLayout.None
BACK_11793.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
BACK_11793.FlipbookFramerate = nr(20,20)
BACK_11793.FlipbookStartRandom = false
BACK_11793.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local DONT_11794=i("ParticleEmitter", Attachment_11792)
DONT_11794.Name="DONT"
DONT_11794.Enabled = true
DONT_11794.Rate = 2
DONT_11794.Lifetime = nr(1,1)
DONT_11794.Speed = nr(6,6)
DONT_11794.Rotation = nr(-15,15)
DONT_11794.RotSpeed = nr(-10,10)
DONT_11794.Size = ns({nsk(0.000000,7.108295,10.753990),nsk(1.000000,6.858587,10.321173)})
DONT_11794.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.243657,0.000000,0.000000),nsk(0.518499,0.000000,0.000000),nsk(0.769556,0.207650,0.000000),nsk(1.000000,1.000000,0.000000)})
DONT_11794.Color = cs({csk(0.000000,c3(1.000000,0.180392,0.180392)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
DONT_11794.LightEmission = -1
DONT_11794.LightInfluence = 0
DONT_11794.Acceleration = v3(0.000000,0.000000,0.000000)
DONT_11794.Drag = 0
DONT_11794.EmissionDirection = Enum.NormalId.Top
DONT_11794.SpreadAngle = v2(180.000000,-180.000000)
DONT_11794.ZOffset = 1
DONT_11794.Texture = "rbxassetid://18333710267"
DONT_11794.LockedToPart = false
DONT_11794.Orientation = Enum.ParticleOrientation.FacingCamera
DONT_11794.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DONT_11794.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
DONT_11794.FlipbookFramerate = nr(20,20)
DONT_11794.FlipbookStartRandom = false
DONT_11794.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local HOLD_11795=i("ParticleEmitter", Attachment_11792)
HOLD_11795.Name="HOLD"
HOLD_11795.Enabled = true
HOLD_11795.Rate = 2
HOLD_11795.Lifetime = nr(1,1)
HOLD_11795.Speed = nr(6,6)
HOLD_11795.Rotation = nr(-15,15)
HOLD_11795.RotSpeed = nr(-10,10)
HOLD_11795.Size = ns({nsk(0.000000,7.108295,10.753990),nsk(1.000000,6.858587,10.321173)})
HOLD_11795.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.243657,0.000000,0.000000),nsk(0.518499,0.000000,0.000000),nsk(0.769556,0.207650,0.000000),nsk(1.000000,1.000000,0.000000)})
HOLD_11795.Color = cs({csk(0.000000,c3(1.000000,0.180392,0.180392)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
HOLD_11795.LightEmission = -1
HOLD_11795.LightInfluence = 0
HOLD_11795.Acceleration = v3(0.000000,0.000000,0.000000)
HOLD_11795.Drag = 0
HOLD_11795.EmissionDirection = Enum.NormalId.Top
HOLD_11795.SpreadAngle = v2(180.000000,-180.000000)
HOLD_11795.ZOffset = 1
HOLD_11795.Texture = "rbxassetid://18333798031"
HOLD_11795.LockedToPart = false
HOLD_11795.Orientation = Enum.ParticleOrientation.FacingCamera
HOLD_11795.FlipbookLayout = Enum.ParticleFlipbookLayout.None
HOLD_11795.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
HOLD_11795.FlipbookFramerate = nr(20,20)
HOLD_11795.FlipbookStartRandom = false
HOLD_11795.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})


local Attachment_11796=i("Attachment", Floor)
Attachment_11796.Name="Attachment"
Attachment_11796:SetAttribute("AuraInstance", true)
Attachment_11796.Position = v3(0.000000,0.000000,0.000000)
Attachment_11796.Visible = false

local Debris_11797=i("ParticleEmitter", Attachment_11796)
Debris_11797.Name="Debris"
Debris_11797.Enabled = true
Debris_11797.Rate = 43
Debris_11797.Lifetime = nr(1.2999999523162842,2.299999952316284)
Debris_11797.Speed = nr(5,45)
Debris_11797.Rotation = nr(-360,360)
Debris_11797.RotSpeed = nr(150,150)
Debris_11797.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.249246,0.532667,0.000000),nsk(0.857246,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_11797.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_11797.Color = cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Debris_11797.LightEmission = 1
Debris_11797.LightInfluence = 0
Debris_11797.Acceleration = v3(0.000000,0.000000,0.000000)
Debris_11797.Drag = 3
Debris_11797.EmissionDirection = Enum.NormalId.Top
Debris_11797.SpreadAngle = v2(10.000000,10.000000)
Debris_11797.ZOffset = 0
Debris_11797.Texture = "rbxassetid://12942158384"
Debris_11797.LockedToPart = false
Debris_11797.Orientation = Enum.ParticleOrientation.FacingCamera
Debris_11797.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Debris_11797.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Debris_11797.FlipbookFramerate = nr(20,20)
Debris_11797.FlipbookStartRandom = false
Debris_11797.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Debris2_11798=i("ParticleEmitter", Attachment_11796)
Debris2_11798.Name="Debris2"
Debris2_11798.Enabled = true
Debris2_11798.Rate = 43
Debris2_11798.Lifetime = nr(1.2999999523162842,2.299999952316284)
Debris2_11798.Speed = nr(5,45)
Debris2_11798.Rotation = nr(-360,360)
Debris2_11798.RotSpeed = nr(150,150)
Debris2_11798.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.249246,0.532667,0.000000),nsk(0.857246,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris2_11798.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris2_11798.Color = cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
Debris2_11798.LightEmission = -1
Debris2_11798.LightInfluence = 0
Debris2_11798.Acceleration = v3(0.000000,0.000000,0.000000)
Debris2_11798.Drag = 3
Debris2_11798.EmissionDirection = Enum.NormalId.Top
Debris2_11798.SpreadAngle = v2(10.000000,10.000000)
Debris2_11798.ZOffset = 0
Debris2_11798.Texture = "rbxassetid://12942158384"
Debris2_11798.LockedToPart = false
Debris2_11798.Orientation = Enum.ParticleOrientation.FacingCamera
Debris2_11798.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Debris2_11798.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Debris2_11798.FlipbookFramerate = nr(20,20)
Debris2_11798.FlipbookStartRandom = false
Debris2_11798.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fire_11799=i("ParticleEmitter", Attachment_11796)
Fire_11799.Name="Fire"
Fire_11799.Enabled = true
Fire_11799.Rate = 26
Fire_11799.Lifetime = nr(0.6000000238418579,1.2000000476837158)
Fire_11799.Speed = nr(1,10)
Fire_11799.Rotation = nr(-35,35)
Fire_11799.RotSpeed = nr(0,0)
Fire_11799.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.115246,0.985333,0.000000),nsk(0.285246,1.632000,0.000000),nsk(0.575246,1.705333,0.000000),nsk(0.793246,1.185333,0.000000),nsk(1.000000,0.000000,0.000000)})
Fire_11799.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.249246,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Fire_11799.Color = cs({csk(0.000000,c3(1.000000,0.180392,0.180392)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
Fire_11799.LightEmission = -1
Fire_11799.LightInfluence = 0
Fire_11799.Acceleration = v3(0.000000,0.000000,0.000000)
Fire_11799.Drag = 3
Fire_11799.EmissionDirection = Enum.NormalId.Top
Fire_11799.SpreadAngle = v2(0.000000,0.000000)
Fire_11799.ZOffset = 0.019999999552965164
Fire_11799.Texture = "http://www.roblox.com/asset/?id=12807576645"
Fire_11799.LockedToPart = false
Fire_11799.Orientation = Enum.ParticleOrientation.FacingCamera
Fire_11799.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Fire_11799.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Fire_11799.FlipbookFramerate = nr(20,20)
Fire_11799.FlipbookStartRandom = false
Fire_11799.Squash = ns({nsk(0.000000,0.300000,0.000000),nsk(1.000000,0.300000,0.000000)})

local Lightning_11800=i("ParticleEmitter", Attachment_11796)
Lightning_11800.Name="Lightning"
Lightning_11800.Enabled = true
Lightning_11800.Rate = 19
Lightning_11800.Lifetime = nr(0.30000001192092896,0.30000001192092896)
Lightning_11800.Speed = nr(0.002250000135973096,0.002250000135973096)
Lightning_11800.Rotation = nr(0,360)
Lightning_11800.RotSpeed = nr(0,0)
Lightning_11800.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
Lightning_11800.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Lightning_11800.Color = cs({csk(0.000000,c3(1.000000,0.184314,0.184314)),csk(1.000000,c3(1.000000,0.184314,0.184314))})
Lightning_11800.LightEmission = -3
Lightning_11800.LightInfluence = 0
Lightning_11800.Acceleration = v3(0.000000,0.000000,0.000000)
Lightning_11800.Drag = 0
Lightning_11800.EmissionDirection = Enum.NormalId.Top
Lightning_11800.SpreadAngle = v2(360.000000,-360.000000)
Lightning_11800.ZOffset = 0.10000000149011612
Lightning_11800.Texture = "http://www.roblox.com/asset/?id=12800312727"
Lightning_11800.LockedToPart = true
Lightning_11800.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Lightning_11800.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Lightning_11800.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Lightning_11800.FlipbookFramerate = nr(1,1)
Lightning_11800.FlipbookStartRandom = false
Lightning_11800.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Lines_11801=i("ParticleEmitter", Attachment_11796)
Lines_11801.Name="Lines"
Lines_11801.Enabled = true
Lines_11801.Rate = 43
Lines_11801.Lifetime = nr(1.2999999523162842,2.299999952316284)
Lines_11801.Speed = nr(5,45)
Lines_11801.Rotation = nr(-15,15)
Lines_11801.RotSpeed = nr(-5,5)
Lines_11801.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.249246,0.532667,0.000000),nsk(0.857246,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Lines_11801.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Lines_11801.Color = cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
Lines_11801.LightEmission = -1
Lines_11801.LightInfluence = 0
Lines_11801.Acceleration = v3(0.000000,0.000000,0.000000)
Lines_11801.Drag = 3
Lines_11801.EmissionDirection = Enum.NormalId.Top
Lines_11801.SpreadAngle = v2(15.000000,15.000000)
Lines_11801.ZOffset = 0
Lines_11801.Texture = "http://www.roblox.com/asset/?id=8292854478"
Lines_11801.LockedToPart = false
Lines_11801.Orientation = Enum.ParticleOrientation.FacingCamera
Lines_11801.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Lines_11801.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Lines_11801.FlipbookFramerate = nr(20,20)
Lines_11801.FlipbookStartRandom = false
Lines_11801.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Lines2_11802=i("ParticleEmitter", Attachment_11796)
Lines2_11802.Name="Lines2"
Lines2_11802.Enabled = true
Lines2_11802.Rate = 43
Lines2_11802.Lifetime = nr(0.6000000238418579,1.2000000476837158)
Lines2_11802.Speed = nr(20,45)
Lines2_11802.Rotation = nr(0,0)
Lines2_11802.RotSpeed = nr(0,0)
Lines2_11802.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.115246,0.985333,0.000000),nsk(0.285246,1.632000,0.000000),nsk(0.575246,1.705333,0.000000),nsk(0.793246,1.185333,0.000000),nsk(1.000000,0.000000,0.000000)})
Lines2_11802.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.249246,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Lines2_11802.Color = cs({csk(0.000000,c3(1.000000,0.180392,0.180392)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
Lines2_11802.LightEmission = -1
Lines2_11802.LightInfluence = 0
Lines2_11802.Acceleration = v3(0.000000,0.000000,0.000000)
Lines2_11802.Drag = 3
Lines2_11802.EmissionDirection = Enum.NormalId.Top
Lines2_11802.SpreadAngle = v2(0.000000,0.000000)
Lines2_11802.ZOffset = 0
Lines2_11802.Texture = "http://www.roblox.com/asset/?id=8292854478"
Lines2_11802.LockedToPart = false
Lines2_11802.Orientation = Enum.ParticleOrientation.FacingCamera
Lines2_11802.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Lines2_11802.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Lines2_11802.FlipbookFramerate = nr(20,20)
Lines2_11802.FlipbookStartRandom = false
Lines2_11802.Squash = ns({nsk(0.000000,-2.838784,0.000000),nsk(1.000000,1.665702,0.000000)})

local Stars_11803=i("ParticleEmitter", Attachment_11796)
Stars_11803.Name="Stars"
Stars_11803.Enabled = true
Stars_11803.Rate = 26
Stars_11803.Lifetime = nr(0.6000000238418579,1.2000000476837158)
Stars_11803.Speed = nr(1,35)
Stars_11803.Rotation = nr(-35,35)
Stars_11803.RotSpeed = nr(0,0)
Stars_11803.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.105246,2.036975,0.000000),nsk(0.255246,2.940669,0.000000),nsk(0.537246,3.930666,0.000000),nsk(0.795246,2.952881,0.000000),nsk(1.000000,0.000000,0.000000)})
Stars_11803.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.249246,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Stars_11803.Color = cs({csk(0.000000,c3(1.000000,0.180392,0.180392)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
Stars_11803.LightEmission = -1
Stars_11803.LightInfluence = 0
Stars_11803.Acceleration = v3(0.000000,0.000000,0.000000)
Stars_11803.Drag = 3
Stars_11803.EmissionDirection = Enum.NormalId.Top
Stars_11803.SpreadAngle = v2(0.000000,0.000000)
Stars_11803.ZOffset = 0.019999999552965164
Stars_11803.Texture = "rbxassetid://8037777212"
Stars_11803.LockedToPart = false
Stars_11803.Orientation = Enum.ParticleOrientation.FacingCamera
Stars_11803.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Stars_11803.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Stars_11803.FlipbookFramerate = nr(20,20)
Stars_11803.FlipbookStartRandom = false
Stars_11803.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local smoke_11804=i("ParticleEmitter", Attachment_11796)
smoke_11804.Name="smoke"
smoke_11804.Enabled = true
smoke_11804.Rate = 43
smoke_11804.Lifetime = nr(0.75,0.75)
smoke_11804.Speed = nr(32,32)
smoke_11804.Rotation = nr(-360,360)
smoke_11804.RotSpeed = nr(-10,10)
smoke_11804.Size = ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
smoke_11804.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.127378,0.743169,0.000000),nsk(0.489501,0.631250,0.000000),nsk(0.796512,0.830601,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_11804.Color = cs({csk(0.000000,c3(1.000000,0.207843,0.207843)),csk(1.000000,c3(1.000000,0.207843,0.207843))})
smoke_11804.LightEmission = 0
smoke_11804.LightInfluence = 0
smoke_11804.Acceleration = v3(0.000000,0.000000,0.000000)
smoke_11804.Drag = 2
smoke_11804.EmissionDirection = Enum.NormalId.Top
smoke_11804.SpreadAngle = v2(0.000000,0.000000)
smoke_11804.ZOffset = -1
smoke_11804.Texture = "rbxassetid://13927257008"
smoke_11804.LockedToPart = true
smoke_11804.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
smoke_11804.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
smoke_11804.FlipbookMode = Enum.ParticleFlipbookMode.Loop
smoke_11804.FlipbookFramerate = nr(5,5)
smoke_11804.FlipbookStartRandom = false
smoke_11804.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})


local Main_11785=i("Attachment", Floor)
Main_11785.Name="Main"
Main_11785:SetAttribute("AuraInstance", true)
Main_11785.Position = v3(0.000000,0.000000,0.000000)
Main_11785.Visible = false

local smoke1_11786=i("ParticleEmitter", Main_11785)
smoke1_11786.Name="smoke1"
smoke1_11786.Enabled = true
smoke1_11786.Rate = 15
smoke1_11786.Lifetime = nr(0.5,0.5)
smoke1_11786.Speed = nr(0.0010000000474974513,0.0010000000474974513)
smoke1_11786.Rotation = nr(0,0)
smoke1_11786.RotSpeed = nr(0,0)
smoke1_11786.Size = ns({nsk(0.000000,15.964266,0.000000),nsk(1.000000,73.663078,0.000000)})
smoke1_11786.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.480444,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke1_11786.Color = cs({csk(0.000000,c3(0.811765,0.109804,0.109804)),csk(1.000000,c3(0.811765,0.109804,0.109804))})
smoke1_11786.LightEmission = 0
smoke1_11786.LightInfluence = 0
smoke1_11786.Acceleration = v3(0.000000,0.000000,0.000000)
smoke1_11786.Drag = 0
smoke1_11786.EmissionDirection = Enum.NormalId.Top
smoke1_11786.SpreadAngle = v2(360.000000,360.000000)
smoke1_11786.ZOffset = 0
smoke1_11786.Texture = "http://www.roblox.com/asset/?id=12878479106"
smoke1_11786.LockedToPart = true
smoke1_11786.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
smoke1_11786.FlipbookLayout = Enum.ParticleFlipbookLayout.None
smoke1_11786.FlipbookMode = Enum.ParticleFlipbookMode.Loop
smoke1_11786.FlipbookFramerate = nr(1,1)
smoke1_11786.FlipbookStartRandom = false
smoke1_11786.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local smoke2_11787=i("ParticleEmitter", Main_11785)
smoke2_11787.Name="smoke2"
smoke2_11787.Enabled = true
smoke2_11787.Rate = 5
smoke2_11787.Lifetime = nr(0.5,0.5)
smoke2_11787.Speed = nr(0.0010000000474974513,0.0010000000474974513)
smoke2_11787.Rotation = nr(-360,360)
smoke2_11787.RotSpeed = nr(0,0)
smoke2_11787.Size = ns({nsk(0.000000,15.964266,0.000000),nsk(1.000000,73.663078,0.000000)})
smoke2_11787.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.480444,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke2_11787.Color = cs({csk(0.000000,c3(0.811765,0.109804,0.109804)),csk(1.000000,c3(0.811765,0.109804,0.109804))})
smoke2_11787.LightEmission = 0
smoke2_11787.LightInfluence = 0
smoke2_11787.Acceleration = v3(0.000000,0.000000,0.000000)
smoke2_11787.Drag = 0
smoke2_11787.EmissionDirection = Enum.NormalId.Top
smoke2_11787.SpreadAngle = v2(360.000000,360.000000)
smoke2_11787.ZOffset = 0
smoke2_11787.Texture = "rbxassetid://8890667599"
smoke2_11787.LockedToPart = true
smoke2_11787.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
smoke2_11787.FlipbookLayout = Enum.ParticleFlipbookLayout.None
smoke2_11787.FlipbookMode = Enum.ParticleFlipbookMode.Loop
smoke2_11787.FlipbookFramerate = nr(1,1)
smoke2_11787.FlipbookStartRandom = false
smoke2_11787.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local smoke_11788=i("ParticleEmitter", Main_11785)
smoke_11788.Name="smoke"
smoke_11788.Enabled = true
smoke_11788.Rate = 26
smoke_11788.Lifetime = nr(1,1)
smoke_11788.Speed = nr(0.0010000000474974513,0.0010000000474974513)
smoke_11788.Rotation = nr(-360,360)
smoke_11788.RotSpeed = nr(0,0)
smoke_11788.Size = ns({nsk(0.000000,19.906006,0.000000),nsk(1.000000,111.000000,0.000000)})
smoke_11788.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.439246,0.442667,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_11788.Color = cs({csk(0.000000,c3(1.000000,0.074510,0.074510)),csk(1.000000,c3(1.000000,0.074510,0.074510))})
smoke_11788.LightEmission = 0
smoke_11788.LightInfluence = 0
smoke_11788.Acceleration = v3(0.000000,0.000000,0.000000)
smoke_11788.Drag = 0
smoke_11788.EmissionDirection = Enum.NormalId.Top
smoke_11788.SpreadAngle = v2(0.000000,0.000000)
smoke_11788.ZOffset = -3
smoke_11788.Texture = "http://www.roblox.com/asset/?id=13712000835"
smoke_11788.LockedToPart = true
smoke_11788.Orientation = Enum.ParticleOrientation.FacingCamera
smoke_11788.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
smoke_11788.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smoke_11788.FlipbookFramerate = nr(1,1)
smoke_11788.FlipbookStartRandom = false
smoke_11788.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_11789=i("ParticleEmitter", Main_11785)
ParticleEmitter_11789.Name="ParticleEmitter"
ParticleEmitter_11789.Enabled = true
ParticleEmitter_11789.Rate = 9
ParticleEmitter_11789.Lifetime = nr(1,1)
ParticleEmitter_11789.Speed = nr(0,0)
ParticleEmitter_11789.Rotation = nr(-1000,1000)
ParticleEmitter_11789.RotSpeed = nr(-10,10)
ParticleEmitter_11789.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,35.062672,0.000000)})
ParticleEmitter_11789.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.502534,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_11789.Color = cs({csk(0.000000,c3(1.000000,0.094118,0.094118)),csk(1.000000,c3(1.000000,0.094118,0.094118))})
ParticleEmitter_11789.LightEmission = -3
ParticleEmitter_11789.LightInfluence = 0
ParticleEmitter_11789.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_11789.Drag = 1
ParticleEmitter_11789.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_11789.SpreadAngle = v2(-1000.000000,1000.000000)
ParticleEmitter_11789.ZOffset = -0.0010000000474974513
ParticleEmitter_11789.Texture = "http://www.roblox.com/asset/?id=14727016281"
ParticleEmitter_11789.LockedToPart = true
ParticleEmitter_11789.Orientation = Enum.ParticleOrientation.FacingCamera
ParticleEmitter_11789.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
ParticleEmitter_11789.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_11789.FlipbookFramerate = nr(3,3)
ParticleEmitter_11789.FlipbookStartRandom = false
ParticleEmitter_11789.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fire2_11790=i("ParticleEmitter", Main_11785)
fire2_11790.Name="fire2"
fire2_11790:SetAttribute("EmitDelay", 0)
fire2_11790:SetAttribute("EmitCount", 1)
fire2_11790.Enabled = true
fire2_11790.Rate = 18
fire2_11790.Lifetime = nr(0.5,0.5)
fire2_11790.Speed = nr(0.10000000149011612,0.10000000149011612)
fire2_11790.Rotation = nr(-360,360)
fire2_11790.RotSpeed = nr(0,0)
fire2_11790.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,45.983757,0.000000)})
fire2_11790.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
fire2_11790.Color = cs({csk(0.000000,c3(1.000000,0.137255,0.137255)),csk(1.000000,c3(1.000000,0.137255,0.137255))})
fire2_11790.LightEmission = -1
fire2_11790.LightInfluence = 0
fire2_11790.Acceleration = v3(0.000000,0.000000,0.000000)
fire2_11790.Drag = 0
fire2_11790.EmissionDirection = Enum.NormalId.Top
fire2_11790.SpreadAngle = v2(360.000000,-360.000000)
fire2_11790.ZOffset = -1.0010000467300415
fire2_11790.Texture = "rbxassetid://13765238618"
fire2_11790.LockedToPart = true
fire2_11790.Orientation = Enum.ParticleOrientation.FacingCamera
fire2_11790.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
fire2_11790.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fire2_11790.FlipbookFramerate = nr(32,32)
fire2_11790.FlipbookStartRandom = false
fire2_11790.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fire1_11791=i("ParticleEmitter", Main_11785)
fire1_11791.Name="fire1"
fire1_11791:SetAttribute("EmitDelay", 0)
fire1_11791:SetAttribute("EmitCount", 1)
fire1_11791.Enabled = true
fire1_11791.Rate = 18
fire1_11791.Lifetime = nr(0.5,0.5)
fire1_11791.Speed = nr(0.10000000149011612,0.10000000149011612)
fire1_11791.Rotation = nr(-360,360)
fire1_11791.RotSpeed = nr(0,0)
fire1_11791.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,45.983757,0.000000)})
fire1_11791.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
fire1_11791.Color = cs({csk(0.000000,c3(1.000000,0.137255,0.137255)),csk(1.000000,c3(1.000000,0.137255,0.137255))})
fire1_11791.LightEmission = -1
fire1_11791.LightInfluence = 0
fire1_11791.Acceleration = v3(0.000000,0.000000,0.000000)
fire1_11791.Drag = 0
fire1_11791.EmissionDirection = Enum.NormalId.Top
fire1_11791.SpreadAngle = v2(360.000000,-360.000000)
fire1_11791.ZOffset = -1
fire1_11791.Texture = "rbxassetid://13764992917"
fire1_11791.LockedToPart = true
fire1_11791.Orientation = Enum.ParticleOrientation.FacingCamera
fire1_11791.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
fire1_11791.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fire1_11791.FlipbookFramerate = nr(32,32)
fire1_11791.FlipbookStartRandom = false
fire1_11791.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local floor_11767=i("Attachment", Floor)
floor_11767.Name="floor"
floor_11767:SetAttribute("AuraInstance", true)
floor_11767.Position = v3(0.000000,-1,0.000000)
floor_11767.Visible = false

local Crack_11768=i("ParticleEmitter", floor_11767)
Crack_11768.Name="Crack"
Crack_11768.Enabled = true
Crack_11768.Rate = 3
Crack_11768.Lifetime = nr(1.2000000476837158,1.2000000476837158)
Crack_11768.Speed = nr(0.0010000000474974513,0.0010000000474974513)
Crack_11768.Rotation = nr(-360,360)
Crack_11768.RotSpeed = nr(0,0)
Crack_11768.Size = ns({nsk(0.000000,32.789951,0.000000),nsk(1.000000,0.000000,0.000000)})
Crack_11768.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.498906,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Crack_11768.Color = cs({csk(0.000000,c3(1.000000,0.098039,0.098039)),csk(1.000000,c3(1.000000,0.098039,0.098039))})
Crack_11768.LightEmission = -1
Crack_11768.LightInfluence = 0
Crack_11768.Acceleration = v3(0.000000,0.000000,0.000000)
Crack_11768.Drag = 1
Crack_11768.EmissionDirection = Enum.NormalId.Top
Crack_11768.SpreadAngle = v2(0.000000,0.000000)
Crack_11768.ZOffset = 0.0010000000474974513
Crack_11768.Texture = "rbxassetid://13783882492"
Crack_11768.LockedToPart = true
Crack_11768.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Crack_11768.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Crack_11768.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Crack_11768.FlipbookFramerate = nr(20,20)
Crack_11768.FlipbookStartRandom = false
Crack_11768.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local star_11769=i("ParticleEmitter", floor_11767)
star_11769.Name="star"
star_11769.Enabled = true
star_11769.Rate = 10
star_11769.Lifetime = nr(0.6000000238418579,0.6000000238418579)
star_11769.Speed = nr(0.0010000000474974513,0.0010000000474974513)
star_11769.Rotation = nr(-360,360)
star_11769.RotSpeed = nr(45,150)
star_11769.Size = ns({nsk(0.000000,13.000000,0.000000),nsk(1.000000,13.000000,0.000000)})
star_11769.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.498906,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_11769.Color = cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
star_11769.LightEmission = 1
star_11769.LightInfluence = 0
star_11769.Acceleration = v3(0.000000,0.000000,0.000000)
star_11769.Drag = 1
star_11769.EmissionDirection = Enum.NormalId.Top
star_11769.SpreadAngle = v2(0.000000,0.000000)
star_11769.ZOffset = 0.0020000000949949026
star_11769.Texture = "rbxassetid://8037777212"
star_11769.LockedToPart = true
star_11769.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
star_11769.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_11769.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_11769.FlipbookFramerate = nr(20,20)
star_11769.FlipbookStartRandom = false
star_11769.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Crack2_11770=i("ParticleEmitter", floor_11767)
Crack2_11770.Name="Crack2"
Crack2_11770.Enabled = true
Crack2_11770.Rate = 11
Crack2_11770.Lifetime = nr(0.75,0.75)
Crack2_11770.Speed = nr(0.0010000000474974513,0.0010000000474974513)
Crack2_11770.Rotation = nr(-360,360)
Crack2_11770.RotSpeed = nr(0,0)
Crack2_11770.Size = ns({nsk(0.000000,57.364689,0.000000),nsk(1.000000,0.000000,0.000000)})
Crack2_11770.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.498906,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Crack2_11770.Color = cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
Crack2_11770.LightEmission = -3
Crack2_11770.LightInfluence = 0
Crack2_11770.Acceleration = v3(0.000000,0.000000,0.000000)
Crack2_11770.Drag = 1
Crack2_11770.EmissionDirection = Enum.NormalId.Top
Crack2_11770.SpreadAngle = v2(0.000000,0.000000)
Crack2_11770.ZOffset = 0
Crack2_11770.Texture = "rbxassetid://8172249266"
Crack2_11770.LockedToPart = true
Crack2_11770.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Crack2_11770.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Crack2_11770.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Crack2_11770.FlipbookFramerate = nr(20,20)
Crack2_11770.FlipbookStartRandom = false
Crack2_11770.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local slash_11771=i("ParticleEmitter", floor_11767)
slash_11771.Name="slash"
slash_11771.Enabled = true
slash_11771.Rate = 20
slash_11771.Lifetime = nr(0.5,0.5)
slash_11771.Speed = nr(10,40)
slash_11771.Rotation = nr(-360,360)
slash_11771.RotSpeed = nr(0,0)
slash_11771.Size = ns({nsk(0.000000,31.750454,0.000000),nsk(1.000000,61.136940,0.000000)})
slash_11771.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.504228,0.513661,0.000000),nsk(1.000000,1.000000,0.000000)})
slash_11771.Color = cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
slash_11771.LightEmission = 0
slash_11771.LightInfluence = 0
slash_11771.Acceleration = v3(0.000000,0.000000,0.000000)
slash_11771.Drag = 3
slash_11771.EmissionDirection = Enum.NormalId.Top
slash_11771.SpreadAngle = v2(10.000000,10.000000)
slash_11771.ZOffset = 0.0010000000474974513
slash_11771.Texture = "rbxassetid://12403112662"
slash_11771.LockedToPart = true
slash_11771.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
slash_11771.FlipbookLayout = Enum.ParticleFlipbookLayout.None
slash_11771.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
slash_11771.FlipbookFramerate = nr(20,20)
slash_11771.FlipbookStartRandom = false
slash_11771.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local BigVortex_11772=i("ParticleEmitter", floor_11767)
BigVortex_11772.Name="BigVortex"
BigVortex_11772.Enabled = true
BigVortex_11772.Rate = 20
BigVortex_11772.Lifetime = nr(0.75,0.75)
BigVortex_11772.Speed = nr(25,45)
BigVortex_11772.Rotation = nr(-360,360)
BigVortex_11772.RotSpeed = nr(300,300)
BigVortex_11772.Size = ns({nsk(0.000000,21.681124,0.000000),nsk(1.000000,58.703392,0.000000)})
BigVortex_11772.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.495772,0.426230,0.000000),nsk(1.000000,1.000000,0.000000)})
BigVortex_11772.Color = cs({csk(0.000000,c3(1.000000,0.082353,0.082353)),csk(1.000000,c3(1.000000,0.082353,0.082353))})
BigVortex_11772.LightEmission = 1
BigVortex_11772.LightInfluence = 0
BigVortex_11772.Acceleration = v3(0.000000,0.000000,0.000000)
BigVortex_11772.Drag = 3
BigVortex_11772.EmissionDirection = Enum.NormalId.Top
BigVortex_11772.SpreadAngle = v2(-10.000000,10.000000)
BigVortex_11772.ZOffset = 0.10000000149011612
BigVortex_11772.Texture = "rbxassetid://12506449597"
BigVortex_11772.LockedToPart = true
BigVortex_11772.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
BigVortex_11772.FlipbookLayout = Enum.ParticleFlipbookLayout.None
BigVortex_11772.FlipbookMode = Enum.ParticleFlipbookMode.Loop
BigVortex_11772.FlipbookFramerate = nr(1,1)
BigVortex_11772.FlipbookStartRandom = false
BigVortex_11772.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Vortex_11773=i("ParticleEmitter", floor_11767)
Vortex_11773.Name="Vortex"
Vortex_11773.Enabled = true
Vortex_11773.Rate = 20
Vortex_11773.Lifetime = nr(3,3)
Vortex_11773.Speed = nr(0.004999999888241291,0.004999999888241291)
Vortex_11773.Rotation = nr(100,200)
Vortex_11773.RotSpeed = nr(300,300)
Vortex_11773.Size = ns({nsk(0.000000,1.062500,0.000000),nsk(1.000000,40.305794,4.762035)})
Vortex_11773.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.937500,0.000000),nsk(1.000000,1.000000,0.000000)})
Vortex_11773.Color = cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Vortex_11773.LightEmission = 1
Vortex_11773.LightInfluence = 0
Vortex_11773.Acceleration = v3(0.000000,0.000000,0.000000)
Vortex_11773.Drag = 0
Vortex_11773.EmissionDirection = Enum.NormalId.Top
Vortex_11773.SpreadAngle = v2(0.000000,0.000000)
Vortex_11773.ZOffset = 0.004000000189989805
Vortex_11773.Texture = "https://assetgame.roblox.com/asset/?id=12389944306&assetName=906abefa-60fa-4077-ba01-bcf1862573ff"
Vortex_11773.LockedToPart = true
Vortex_11773.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Vortex_11773.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Vortex_11773.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Vortex_11773.FlipbookFramerate = nr(1,1)
Vortex_11773.FlipbookStartRandom = false
Vortex_11773.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local smoke_11774=i("ParticleEmitter", floor_11767)
smoke_11774.Name="smoke"
smoke_11774.Enabled = true
smoke_11774.Rate = 6
smoke_11774.Lifetime = nr(1.2000000476837158,1.2000000476837158)
smoke_11774.Speed = nr(0.0010000000474974513,0.0010000000474974513)
smoke_11774.Rotation = nr(-360,360)
smoke_11774.RotSpeed = nr(0,0)
smoke_11774.Size = ns({nsk(0.000000,22.528002,0.000000),nsk(1.000000,63.649681,0.000000)})
smoke_11774.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.498906,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_11774.Color = cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
smoke_11774.LightEmission = 0
smoke_11774.LightInfluence = 0
smoke_11774.Acceleration = v3(0.000000,0.000000,0.000000)
smoke_11774.Drag = 1
smoke_11774.EmissionDirection = Enum.NormalId.Top
smoke_11774.SpreadAngle = v2(0.000000,0.000000)
smoke_11774.ZOffset = 0
smoke_11774.Texture = "rbxassetid://14004151283"
smoke_11774.LockedToPart = true
smoke_11774.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
smoke_11774.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
smoke_11774.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smoke_11774.FlipbookFramerate = nr(20,20)
smoke_11774.FlipbookStartRandom = false
smoke_11774.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local lightning2_11775=i("ParticleEmitter", floor_11767)
lightning2_11775.Name="lightning2"
lightning2_11775.Enabled = true
lightning2_11775.Rate = 11
lightning2_11775.Lifetime = nr(0.20000000298023224,0.20000000298023224)
lightning2_11775.Speed = nr(0.001125000067986548,0.001125000067986548)
lightning2_11775.Rotation = nr(-360,360)
lightning2_11775.RotSpeed = nr(0,0)
lightning2_11775.Size = ns({nsk(0.000000,0.262922,0.000000),nsk(1.000000,28.170000,0.000000)})
lightning2_11775.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
lightning2_11775.Color = cs({csk(0.000000,c3(1.000000,0.239216,0.239216)),csk(1.000000,c3(1.000000,0.239216,0.239216))})
lightning2_11775.LightEmission = -2
lightning2_11775.LightInfluence = 0
lightning2_11775.Acceleration = v3(0.000000,0.000000,0.000000)
lightning2_11775.Drag = 0
lightning2_11775.EmissionDirection = Enum.NormalId.Top
lightning2_11775.SpreadAngle = v2(10.000000,10.000000)
lightning2_11775.ZOffset = 1
lightning2_11775.Texture = "rbxassetid://13973467824"
lightning2_11775.LockedToPart = true
lightning2_11775.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
lightning2_11775.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
lightning2_11775.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightning2_11775.FlipbookFramerate = nr(1,1)
lightning2_11775.FlipbookStartRandom = false
lightning2_11775.Squash = ns({nsk(0.000000,0.250000,0.000000),nsk(1.000000,0.250000,0.000000)})

local lightning1_11776=i("ParticleEmitter", floor_11767)
lightning1_11776.Name="lightning1"
lightning1_11776.Enabled = true
lightning1_11776.Rate = 11
lightning1_11776.Lifetime = nr(0.20000000298023224,0.20000000298023224)
lightning1_11776.Speed = nr(0.001125000067986548,0.001125000067986548)
lightning1_11776.Rotation = nr(-360,360)
lightning1_11776.RotSpeed = nr(0,0)
lightning1_11776.Size = ns({nsk(0.000000,0.262922,0.000000),nsk(1.000000,28.170000,0.000000)})
lightning1_11776.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
lightning1_11776.Color = cs({csk(0.000000,c3(1.000000,0.239216,0.239216)),csk(1.000000,c3(1.000000,0.239216,0.239216))})
lightning1_11776.LightEmission = -2
lightning1_11776.LightInfluence = 0
lightning1_11776.Acceleration = v3(0.000000,0.000000,0.000000)
lightning1_11776.Drag = 0
lightning1_11776.EmissionDirection = Enum.NormalId.Top
lightning1_11776.SpreadAngle = v2(0.000000,0.000000)
lightning1_11776.ZOffset = 1
lightning1_11776.Texture = "rbxassetid://13780092154"
lightning1_11776.LockedToPart = true
lightning1_11776.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
lightning1_11776.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
lightning1_11776.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightning1_11776.FlipbookFramerate = nr(1,1)
lightning1_11776.FlipbookStartRandom = false
lightning1_11776.Squash = ns({nsk(0.000000,0.125000,0.000000),nsk(1.000000,0.125000,0.000000)})


for _,b in Attachment_11792:GetChildren() do 
if b:IsA("ParticleEmitter") then 
b:SetAttribute("EmitCount",1)
end
end



h=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("RedemptionAssets") then 
h:Disconnect()
if head:FindFirstChild("Letters") then head.Letters:Destroy() end
return
end
pcall(function()
if not head:FindFirstChild("Letters") then
Attachment_11792:Clone().Parent=head
end
end)
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y,root.Position.Z)):Play()



end)





end
repeat CorridorAssets() task.wait() until not scriptfolder:FindFirstChild("RedemptionAssets") 