local Global=(getgenv and getgenv()) or shared
local Flooring=Global.Flooring
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

function AnarchusAssets()
if scriptfolder:FindFirstChild("AnarchusAssets") then return end 
local foldhh=i("Folder",scriptfolder)
foldhh.Name="AnarchusAssets"
foldhh:SetAttribute("VFX", true)

local Floor=Instance.new("Part", foldhh)
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

local Toppp=Instance.new("Part", foldhh)
Toppp.Name="Toppp"
Toppp.Anchored=true
Toppp.CanCollide=false
Toppp.CanQuery=false
Toppp.CanTouch=false
Toppp.Transparency=1
Toppp.Reflectance=0
Toppp.Color=Color3.new(0,0,0)
Toppp.Rotation=v3(180,0,0)
Toppp.Material=Enum.Material.Plastic
Toppp.Size=Vector3.new(60,1,60)
Toppp.CastShadow=true
Toppp.Massless=true

local FloorAtt=Instance.new("Attachment", Floor)
FloorAtt.Name="Floor"
FloorAtt.Position=Vector3.new(0.000000,0,0.000000)
FloorAtt.Visible=false

local SL=Instance.new("ParticleEmitter", FloorAtt)
SL.Name="Slash1"
SL.Enabled=true
SL.Rate=8
SL.Lifetime=NumberRange.new(1.000000,1.250000)
SL.Speed=NumberRange.new(3.600000,3.600000)
SL.Rotation=NumberRange.new(-360.000000,360.000000)
SL.RotSpeed=NumberRange.new(-400.000000,-400.000000)
SL.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,30.118122,0.000000)})
SL.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.198622,0.937500,0.000000),NumberSequenceKeypoint.new(0.500574,0.631250,0.000000),NumberSequenceKeypoint.new(0.699196,0.743750,0.000000),NumberSequenceKeypoint.new(0.898967,0.875000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
SL.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.286275,0.415686,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.286275,0.415686,1.000000))})
SL.LightEmission=1
SL.LightInfluence=0
SL.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
SL.Drag=0
SL.EmissionDirection=Enum.NormalId.Top
SL.SpreadAngle=Vector2.new(5.000000,-5.000000)
SL.ZOffset=0.009999999776482582
SL.Texture="rbxassetid://14006234837"
SL.LockedToPart=true
SL.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
SL.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
SL.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
SL.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
SL.FlipbookStartRandom=false

local SL1=Instance.new("ParticleEmitter", FloorAtt)
SL1.Name="Slash11"
SL1.Enabled=true
SL1.Rate=8
SL1.Lifetime=NumberRange.new(1.000000,1.250000)
SL1.Speed=NumberRange.new(3.600000,3.600000)
SL1.Rotation=NumberRange.new(-360.000000,360.000000)
SL1.RotSpeed=NumberRange.new(-400.000000,-400.000000)
SL1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,30.118122,0.000000)})
SL1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.198622,0.937500,0.000000),NumberSequenceKeypoint.new(0.501722,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
SL1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
SL1.LightEmission=0
SL1.LightInfluence=0
SL1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
SL1.Drag=0
SL1.EmissionDirection=Enum.NormalId.Top
SL1.SpreadAngle=Vector2.new(5.000000,-5.000000)
SL1.ZOffset=0.009999999776482582
SL1.Texture="rbxassetid://14006234837"
SL1.LockedToPart=true
SL1.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
SL1.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
SL1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
SL1.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
SL1.FlipbookStartRandom=false

local SL2=Instance.new("ParticleEmitter", FloorAtt)
SL2.Name="Slash2"
SL2.Enabled=true
SL2.Rate=8
SL2.Lifetime=NumberRange.new(1.000000,1.250000)
SL2.Speed=NumberRange.new(3.600000,3.600000)
SL2.Rotation=NumberRange.new(-360.000000,360.000000)
SL2.RotSpeed=NumberRange.new(0.000000,0.000000)
SL2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,33.398605,0.000000)})
SL2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.198622,0.937500,0.000000),NumberSequenceKeypoint.new(0.500574,0.631250,0.000000),NumberSequenceKeypoint.new(0.699196,0.743750,0.000000),NumberSequenceKeypoint.new(0.898967,0.875000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
SL2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.286275,0.415686,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.286275,0.415686,1.000000))})
SL2.LightEmission=1
SL2.LightInfluence=0
SL2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
SL2.Drag=0
SL2.EmissionDirection=Enum.NormalId.Top
SL2.SpreadAngle=Vector2.new(5.000000,-5.000000)
SL2.ZOffset=0.009999999776482582
SL2.Texture="rbxassetid://17113590856"
SL2.LockedToPart=true
SL2.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
SL2.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
SL2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
SL2.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
SL2.FlipbookStartRandom=false

local SL3=Instance.new("ParticleEmitter", FloorAtt)
SL3.Name="Slash22"
SL3.Enabled=true
SL3.Rate=8
SL3.Lifetime=NumberRange.new(1.000000,1.250000)
SL3.Speed=NumberRange.new(3.600000,3.600000)
SL3.Rotation=NumberRange.new(-360.000000,360.000000)
SL3.RotSpeed=NumberRange.new(0.000000,0.000000)
SL3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,33.398605,0.000000)})
SL3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.198622,0.937500,0.000000),NumberSequenceKeypoint.new(0.501722,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
SL3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
SL3.LightEmission=0
SL3.LightInfluence=0
SL3.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
SL3.Drag=0
SL3.EmissionDirection=Enum.NormalId.Top
SL3.SpreadAngle=Vector2.new(5.000000,-5.000000)
SL3.ZOffset=0.009999999776482582
SL3.Texture="rbxassetid://17113590856"
SL3.LockedToPart=true
SL3.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
SL3.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
SL3.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
SL3.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
SL3.FlipbookStartRandom=false

local DP=Instance.new("ParticleEmitter", FloorAtt)
DP.Name="DarkParticleEmitter1"
DP.Enabled=true
DP.Rate=5
DP.Lifetime=NumberRange.new(1.750000,1.750000)
DP.Speed=NumberRange.new(0.001200,0.001200)
DP.Rotation=NumberRange.new(-360.000000,360.000000)
DP.RotSpeed=NumberRange.new(0.000000,0.000000)
DP.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,7.821166,0.000000),NumberSequenceKeypoint.new(1.000000,37.083488,0.000000)})
DP.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.202067,0.250000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DP.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
DP.LightEmission=0
DP.LightInfluence=0
DP.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DP.Drag=0
DP.EmissionDirection=Enum.NormalId.Top
DP.SpreadAngle=Vector2.new(0.001000,0.001000)
DP.ZOffset=0
DP.Texture="http://www.roblox.com/asset/?id=13712002536"
DP.LockedToPart=true
DP.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
DP.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
DP.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DP.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
DP.FlipbookStartRandom=false

local DP1=Instance.new("ParticleEmitter", FloorAtt)
DP1.Name="DarkParticleEmitter2"
DP1.Enabled=true
DP1.Rate=5
DP1.Lifetime=NumberRange.new(1.750000,1.750000)
DP1.Speed=NumberRange.new(0.001200,0.001200)
DP1.Rotation=NumberRange.new(-360.000000,360.000000)
DP1.RotSpeed=NumberRange.new(0.000000,0.000000)
DP1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,7.821166,0.000000),NumberSequenceKeypoint.new(1.000000,37.083488,0.000000)})
DP1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.202067,0.250000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DP1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
DP1.LightEmission=0
DP1.LightInfluence=0
DP1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DP1.Drag=0
DP1.EmissionDirection=Enum.NormalId.Top
DP1.SpreadAngle=Vector2.new(0.001000,0.001000)
DP1.ZOffset=0
DP1.Texture="rbxassetid://12906276200"
DP1.LockedToPart=true
DP1.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
DP1.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
DP1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DP1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
DP1.FlipbookStartRandom=false

local DP2=Instance.new("ParticleEmitter", FloorAtt)
DP2.Name="DarkParticleEmitter3"
DP2.Enabled=true
DP2.Rate=6
DP2.Lifetime=NumberRange.new(1.750000,1.750000)
DP2.Speed=NumberRange.new(0.001200,0.001200)
DP2.Rotation=NumberRange.new(-360.000000,360.000000)
DP2.RotSpeed=NumberRange.new(0.000000,0.000000)
DP2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,40.000000,0.000000),NumberSequenceKeypoint.new(1.000000,40.000000,0.000000)})
DP2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DP2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
DP2.LightEmission=-1
DP2.LightInfluence=0
DP2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DP2.Drag=0
DP2.EmissionDirection=Enum.NormalId.Top
DP2.SpreadAngle=Vector2.new(0.001000,0.001000)
DP2.ZOffset=0
DP2.Texture="rbxassetid://11941047152"
DP2.LockedToPart=true
DP2.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
DP2.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
DP2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DP2.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
DP2.FlipbookStartRandom=false

local DP3=Instance.new("ParticleEmitter", FloorAtt)
DP3.Name="DarkParticleEmitter4"
DP3.Enabled=true
DP3.Rate=5
DP3.Lifetime=NumberRange.new(1.750000,1.750000)
DP3.Speed=NumberRange.new(0.001200,0.001200)
DP3.Rotation=NumberRange.new(-360.000000,360.000000)
DP3.RotSpeed=NumberRange.new(0.000000,0.000000)
DP3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,36.000000,0.000000),NumberSequenceKeypoint.new(1.000000,36.000000,0.000000)})
DP3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DP3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
DP3.LightEmission=-1
DP3.LightInfluence=0
DP3.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DP3.Drag=0
DP3.EmissionDirection=Enum.NormalId.Top
DP3.SpreadAngle=Vector2.new(0.001000,0.001000)
DP3.ZOffset=0
DP3.Texture="rbxassetid://11447021694"
DP3.LockedToPart=true
DP3.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
DP3.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
DP3.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DP3.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
DP3.FlipbookStartRandom=false

local BP=Instance.new("ParticleEmitter", FloorAtt)
BP.Name="BrightParticleEmitter2"
BP.Enabled=true
BP.Rate=5
BP.Lifetime=NumberRange.new(1.000000,1.000000)
BP.Speed=NumberRange.new(0.001200,0.001200)
BP.Rotation=NumberRange.new(-360.000000,360.000000)
BP.RotSpeed=NumberRange.new(0.000000,0.000000)
BP.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,31.536964,0.000000)})
BP.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BP.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.286275,0.415686,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.286275,0.415686,1.000000))})
BP.LightEmission=1
BP.LightInfluence=0
BP.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
BP.Drag=0
BP.EmissionDirection=Enum.NormalId.Top
BP.SpreadAngle=Vector2.new(0.001000,0.001000)
BP.ZOffset=0.0020000000949949026
BP.Texture="rbxassetid://11895782540"
BP.LockedToPart=true
BP.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BP.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BP.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BP.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
BP.FlipbookStartRandom=false

local BP1=Instance.new("ParticleEmitter", FloorAtt)
BP1.Name="BrightParticleEmitter3"
BP1.Enabled=true
BP1.Rate=5
BP1.Lifetime=NumberRange.new(1.000000,1.000000)
BP1.Speed=NumberRange.new(0.001200,0.001200)
BP1.Rotation=NumberRange.new(-360.000000,360.000000)
BP1.RotSpeed=NumberRange.new(0.000000,0.000000)
BP1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,31.536964,0.000000)})
BP1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BP1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.286275,0.415686,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.286275,0.415686,1.000000))})
BP1.LightEmission=1
BP1.LightInfluence=0
BP1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
BP1.Drag=0
BP1.EmissionDirection=Enum.NormalId.Top
BP1.SpreadAngle=Vector2.new(0.001000,0.001000)
BP1.ZOffset=0.003000000026077032
BP1.Texture="rbxassetid://12906276200"
BP1.LockedToPart=true
BP1.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BP1.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BP1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BP1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
BP1.FlipbookStartRandom=false

local BP2=Instance.new("ParticleEmitter", FloorAtt)
BP2.Name="BrightParticleEmitter4"
BP2.Enabled=true
BP2.Rate=5
BP2.Lifetime=NumberRange.new(1.000000,1.000000)
BP2.Speed=NumberRange.new(0.001200,0.001200)
BP2.Rotation=NumberRange.new(-360.000000,360.000000)
BP2.RotSpeed=NumberRange.new(0.000000,0.000000)
BP2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,37.801949,0.000000)})
BP2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BP2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.286275,0.415686,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.286275,0.415686,1.000000))})
BP2.LightEmission=1
BP2.LightInfluence=0
BP2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
BP2.Drag=0
BP2.EmissionDirection=Enum.NormalId.Top
BP2.SpreadAngle=Vector2.new(0.001000,0.001000)
BP2.ZOffset=0.004000000189989805
BP2.Texture="rbxassetid://13992197350"
BP2.LockedToPart=true
BP2.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BP2.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BP2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BP2.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
BP2.FlipbookStartRandom=false

local BP3=Instance.new("ParticleEmitter", FloorAtt)
BP3.Name="BrightParticleEmitter6"
BP3.Enabled=true
BP3.Rate=5
BP3.Lifetime=NumberRange.new(1.000000,1.000000)
BP3.Speed=NumberRange.new(0.001200,0.001200)
BP3.Rotation=NumberRange.new(-360.000000,360.000000)
BP3.RotSpeed=NumberRange.new(0.000000,0.000000)
BP3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,43.761410,0.000000)})
BP3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BP3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.286275,0.415686,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.286275,0.415686,1.000000))})
BP3.LightEmission=1
BP3.LightInfluence=0
BP3.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
BP3.Drag=0
BP3.EmissionDirection=Enum.NormalId.Top
BP3.SpreadAngle=Vector2.new(0.001000,0.001000)
BP3.ZOffset=0.006000000052154064
BP3.Texture="http://www.roblox.com/asset/?id=14152113700"
BP3.LockedToPart=true
BP3.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BP3.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BP3.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BP3.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
BP3.FlipbookStartRandom=false

local BP4=Instance.new("ParticleEmitter", FloorAtt)
BP4.Name="BrightParticleEmitter1"
BP4.Enabled=true
BP4.Rate=5
BP4.Lifetime=NumberRange.new(1.000000,1.000000)
BP4.Speed=NumberRange.new(0.001200,0.001200)
BP4.Rotation=NumberRange.new(-360.000000,360.000000)
BP4.RotSpeed=NumberRange.new(0.000000,0.000000)
BP4.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,42.021786,0.000000)})
BP4.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BP4.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.286275,0.415686,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.286275,0.415686,1.000000))})
BP4.LightEmission=1
BP4.LightInfluence=0
BP4.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
BP4.Drag=0
BP4.EmissionDirection=Enum.NormalId.Top
BP4.SpreadAngle=Vector2.new(0.001000,0.001000)
BP4.ZOffset=0.0020000000949949026
BP4.Texture="http://www.roblox.com/asset/?id=13712002536"
BP4.LockedToPart=true
BP4.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BP4.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BP4.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BP4.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
BP4.FlipbookStartRandom=false






local BC=Instance.new("ParticleEmitter", Floor_1_193734)
BC.Name="BlackCloud"
BC.Enabled=true
BC.Rate=4
BC.Lifetime=NumberRange.new(2.000000,2.000000)
BC.Speed=NumberRange.new(2.000000,2.000000)
BC.Rotation=NumberRange.new(0.000000,360.000000)
BC.RotSpeed=NumberRange.new(0.000000,0.000000)
BC.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,50.000000,0.000000),NumberSequenceKeypoint.new(1.000000,50.000000,0.000000)})
BC.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.500000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BC.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
BC.LightEmission=0
BC.LightInfluence=1
BC.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
BC.Drag=0
BC.EmissionDirection=Enum.NormalId.Top
BC.SpreadAngle=Vector2.new(180.000000,180.000000)
BC.ZOffset=0.003000000026077032
BC.Texture="rbxassetid://12656840930"
BC.LockedToPart=false
BC.Orientation=Enum.ParticleOrientation.FacingCamera
BC.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BC.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BC.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
BC.FlipbookStartRandom=false

local BB=Instance.new("ParticleEmitter", Floor_1_193734)
BB.Name="Bubble1"
BB.Enabled=true
BB.Rate=10
BB.Lifetime=NumberRange.new(1.500000,2.000000)
BB.Speed=NumberRange.new(2.500000,2.500000)
BB.Rotation=NumberRange.new(-360.000000,360.000000)
BB.RotSpeed=NumberRange.new(0.000000,0.000000)
BB.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.147000,0.250000,0.000000),NumberSequenceKeypoint.new(0.250000,1.000000,0.000000),NumberSequenceKeypoint.new(0.352000,0.500000,0.000000),NumberSequenceKeypoint.new(1.000000,0.500000,0.000000)})
BB.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BB.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
BB.LightEmission=1
BB.LightInfluence=0
BB.Acceleration=Vector3.new(0.000000,7.000000,0.000000)
BB.Drag=0
BB.EmissionDirection=Enum.NormalId.Top
BB.SpreadAngle=Vector2.new(-100.000000,100.000000)
BB.ZOffset=1
BB.Texture="rbxassetid://14945581435"
BB.LockedToPart=false
BB.Orientation=Enum.ParticleOrientation.FacingCamera
BB.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BB.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BB.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
BB.FlipbookStartRandom=false

local DB=Instance.new("ParticleEmitter", Floor_1_193734)
DB.Name="Debris1"
DB.Enabled=true
DB.Rate=10
DB.Lifetime=NumberRange.new(0.500000,0.750000)
DB.Speed=NumberRange.new(50.000000,70.000000)
DB.Rotation=NumberRange.new(90.000000,90.000000)
DB.RotSpeed=NumberRange.new(0.000000,0.000000)
DB.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
DB.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.500000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DB.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
DB.LightEmission=2
DB.LightInfluence=0
DB.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DB.Drag=5
DB.EmissionDirection=Enum.NormalId.Top
DB.SpreadAngle=Vector2.new(-20.000000,20.000000)
DB.ZOffset=1
DB.Texture="rbxassetid://16424510566"
DB.LockedToPart=false
DB.Orientation=Enum.ParticleOrientation.VelocityParallel
DB.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
DB.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DB.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
DB.FlipbookStartRandom=false

local DB1=Instance.new("ParticleEmitter", Floor_1_193734)
DB1.Name="Debris2"
DB1.Enabled=true
DB1.Rate=10
DB1.Lifetime=NumberRange.new(0.500000,0.750000)
DB1.Speed=NumberRange.new(50.000000,70.000000)
DB1.Rotation=NumberRange.new(90.000000,90.000000)
DB1.RotSpeed=NumberRange.new(0.000000,0.000000)
DB1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.501000,0.500000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
DB1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.256250,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DB1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
DB1.LightEmission=1
DB1.LightInfluence=0
DB1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DB1.Drag=10
DB1.EmissionDirection=Enum.NormalId.Top
DB1.SpreadAngle=Vector2.new(-20.000000,20.000000)
DB1.ZOffset=1
DB1.Texture="https://assetgame.roblox.com/asset/?id=12363833757&assetName=muzzle_flash_6"
DB1.LockedToPart=false
DB1.Orientation=Enum.ParticleOrientation.VelocityParallel
DB1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DB1.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
DB1.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
DB1.FlipbookStartRandom=false

local DB2=Instance.new("ParticleEmitter", Floor_1_193734)
DB2.Name="Debris3"
DB2.Enabled=true
DB2.Rate=50
DB2.Lifetime=NumberRange.new(0.500000,0.600000)
DB2.Speed=NumberRange.new(10.000000,15.000000)
DB2.Rotation=NumberRange.new(-360.000000,360.000000)
DB2.RotSpeed=NumberRange.new(0.000000,0.000000)
DB2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.501000,0.250000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
DB2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.256250,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DB2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
DB2.LightEmission=1
DB2.LightInfluence=0
DB2.Acceleration=Vector3.new(0.000000,100.000000,0.000000)
DB2.Drag=0
DB2.EmissionDirection=Enum.NormalId.Top
DB2.SpreadAngle=Vector2.new(-180.000000,180.000000)
DB2.ZOffset=1
DB2.Texture="rbxassetid://9841260165"
DB2.LockedToPart=false
DB2.Orientation=Enum.ParticleOrientation.FacingCamera
DB2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DB2.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
DB2.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
DB2.FlipbookStartRandom=false

local Flow=Instance.new("ParticleEmitter", Floor_1_193734)
Flow.Name="Flow1"
Flow.Enabled=true
Flow.Rate=15
Flow.Lifetime=NumberRange.new(0.750000,0.750000)
Flow.Speed=NumberRange.new(5.000000,5.000000)
Flow.Rotation=NumberRange.new(0.000000,0.000000)
Flow.RotSpeed=NumberRange.new(0.000000,0.000000)
Flow.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,7.562500,0.000000)})
Flow.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Flow.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
Flow.LightEmission=1
Flow.LightInfluence=0.20000000298023224
Flow.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Flow.Drag=0
Flow.EmissionDirection=Enum.NormalId.Top
Flow.SpreadAngle=Vector2.new(2.500000,-2.500000)
Flow.ZOffset=1
Flow.Texture="rbxassetid://18760706836"
Flow.LockedToPart=true
Flow.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
Flow.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Flow.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Flow.FlipbookFramerate=NumberRange.new(32.000000,32.000000)
Flow.FlipbookStartRandom=false

local Flow1=Instance.new("ParticleEmitter", Floor_1_193734)
Flow1.Name="Flow2"
Flow1.Enabled=true
Flow1.Rate=15
Flow1.Lifetime=NumberRange.new(0.750000,0.750000)
Flow1.Speed=NumberRange.new(5.000000,5.000000)
Flow1.Rotation=NumberRange.new(-180.000000,-180.000000)
Flow1.RotSpeed=NumberRange.new(0.000000,0.000000)
Flow1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,8.875000,0.000000)})
Flow1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Flow1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
Flow1.LightEmission=1
Flow1.LightInfluence=0.20000000298023224
Flow1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Flow1.Drag=0
Flow1.EmissionDirection=Enum.NormalId.Top
Flow1.SpreadAngle=Vector2.new(2.500000,-2.500000)
Flow1.ZOffset=1
Flow1.Texture="rbxassetid://18760706836"
Flow1.LockedToPart=true
Flow1.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
Flow1.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Flow1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Flow1.FlipbookFramerate=NumberRange.new(32.000000,32.000000)
Flow1.FlipbookStartRandom=false

local Rip=Instance.new("ParticleEmitter", Floor_1_193734)
Rip.Name="Ripple"
Rip.Enabled=true
Rip.Rate=85
Rip.Lifetime=NumberRange.new(1.000000,2.000000)
Rip.Speed=NumberRange.new(0.007654,0.007654)
Rip.Rotation=NumberRange.new(-360.000000,360.000000)
Rip.RotSpeed=NumberRange.new(0.000000,0.000000)
Rip.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,0.617681,0.000000),NumberSequenceKeypoint.new(0.200000,1.200428,0.000000),NumberSequenceKeypoint.new(0.300000,1.744187,0.000000),NumberSequenceKeypoint.new(0.400000,2.243986,0.000000),NumberSequenceKeypoint.new(0.500000,2.693610,0.000000),NumberSequenceKeypoint.new(0.600000,3.085130,0.000000),NumberSequenceKeypoint.new(0.700000,3.408221,0.000000),NumberSequenceKeypoint.new(0.800000,3.649295,0.000000),NumberSequenceKeypoint.new(0.900000,3.791461,0.000000),NumberSequenceKeypoint.new(1.000000,3.827250,0.000000),NumberSequenceKeypoint.new(1.000000,3.827250,0.000000)})
Rip.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.068886,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Rip.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.250980,0.364706,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.250980,0.364706,1.000000))})
Rip.LightEmission=1
Rip.LightInfluence=0
Rip.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Rip.Drag=0
Rip.EmissionDirection=Enum.NormalId.Top
Rip.SpreadAngle=Vector2.new(2.000000,2.000000)
Rip.ZOffset=0.10000000149011612
Rip.Texture="rbxassetid://11865187518"
Rip.LockedToPart=true
Rip.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Rip.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Rip.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Rip.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Rip.FlipbookStartRandom=false

local SDB=Instance.new("ParticleEmitter", Floor_1_193734)
SDB.Name="SmallDebris1"
SDB.Enabled=true
SDB.Rate=25
SDB.Lifetime=NumberRange.new(0.750000,1.000000)
SDB.Speed=NumberRange.new(15.000000,20.000000)
SDB.Rotation=NumberRange.new(-360.000000,360.000000)
SDB.RotSpeed=NumberRange.new(-100.000000,100.000000)
SDB.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.100000,0.000000),NumberSequenceKeypoint.new(1.000000,0.100000,0.000000)})
SDB.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.500000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
SDB.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
SDB.LightEmission=1
SDB.LightInfluence=0
SDB.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
SDB.Drag=0
SDB.EmissionDirection=Enum.NormalId.Top
SDB.SpreadAngle=Vector2.new(0.000000,0.000000)
SDB.ZOffset=1
SDB.Texture="rbxassetid://13712003725"
SDB.LockedToPart=false
SDB.Orientation=Enum.ParticleOrientation.FacingCamera
SDB.FlipbookLayout=Enum.ParticleFlipbookLayout.None
SDB.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
SDB.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
SDB.FlipbookStartRandom=false

local SDB1=Instance.new("ParticleEmitter", Floor_1_193734)
SDB1.Name="SmallDebris2"
SDB1.Enabled=true
SDB1.Rate=25
SDB1.Lifetime=NumberRange.new(0.750000,1.000000)
SDB1.Speed=NumberRange.new(15.000000,20.000000)
SDB1.Rotation=NumberRange.new(-360.000000,360.000000)
SDB1.RotSpeed=NumberRange.new(-100.000000,100.000000)
SDB1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.100000,0.000000),NumberSequenceKeypoint.new(1.000000,0.100000,0.000000)})
SDB1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.500000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
SDB1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
SDB1.LightEmission=1
SDB1.LightInfluence=0
SDB1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
SDB1.Drag=0
SDB1.EmissionDirection=Enum.NormalId.Top
SDB1.SpreadAngle=Vector2.new(0.000000,0.000000)
SDB1.ZOffset=1
SDB1.Texture="rbxassetid://5561954395"
SDB1.LockedToPart=false
SDB1.Orientation=Enum.ParticleOrientation.FacingCamera
SDB1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
SDB1.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
SDB1.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
SDB1.FlipbookStartRandom=false

local SDB2=Instance.new("ParticleEmitter", Floor_1_193734)
SDB2.Name="SmallDebrisFlame"
SDB2.Enabled=true
SDB2.Rate=100
SDB2.Lifetime=NumberRange.new(0.100000,1.250000)
SDB2.Speed=NumberRange.new(5.000000,10.000000)
SDB2.Rotation=NumberRange.new(-360.000000,360.000000)
SDB2.RotSpeed=NumberRange.new(0.000000,0.000000)
SDB2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,8.000000,0.000000),NumberSequenceKeypoint.new(1.000000,8.000000,0.000000)})
SDB2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
SDB2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
SDB2.LightEmission=1
SDB2.LightInfluence=0
SDB2.Acceleration=Vector3.new(0.000000,15.000000,0.000000)
SDB2.Drag=0
SDB2.EmissionDirection=Enum.NormalId.Top
SDB2.SpreadAngle=Vector2.new(-70.000000,70.000000)
SDB2.ZOffset=0.8999999761581421
SDB2.Texture="rbxassetid://18760706836"
SDB2.LockedToPart=false
SDB2.Orientation=Enum.ParticleOrientation.FacingCamera
SDB2.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
SDB2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
SDB2.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
SDB2.FlipbookStartRandom=false

local Splash=Instance.new("ParticleEmitter", Floor_1_193734)
Splash.Name="splashy"
Splash.Enabled=true
Splash.Rate=50
Splash.Lifetime=NumberRange.new(1.000000,2.000000)
Splash.Speed=NumberRange.new(25.000000,40.000000)
Splash.Rotation=NumberRange.new(180.000000,180.000000)
Splash.RotSpeed=NumberRange.new(0.000000,0.000000)
Splash.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.500000,0.000000),NumberSequenceKeypoint.new(0.100000,0.354255,0.000000),NumberSequenceKeypoint.new(0.200000,0.261403,0.000000),NumberSequenceKeypoint.new(0.300000,0.193144,0.000000),NumberSequenceKeypoint.new(0.400000,0.140211,0.000000),NumberSequenceKeypoint.new(0.500000,0.098238,0.000000),NumberSequenceKeypoint.new(0.600000,0.064825,0.000000),NumberSequenceKeypoint.new(0.700000,0.038590,0.000000),NumberSequenceKeypoint.new(0.800000,0.018822,0.000000),NumberSequenceKeypoint.new(0.900000,0.005488,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Splash.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.037879,0.000000,0.000000),NumberSequenceKeypoint.new(0.799242,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Splash.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.325490,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.325490,1.000000))})
Splash.LightEmission=1
Splash.LightInfluence=0
Splash.Acceleration=Vector3.new(0.000000,-75.000000,0.000000)
Splash.Drag=5
Splash.EmissionDirection=Enum.NormalId.Top
Splash.SpreadAngle=Vector2.new(45.000000,45.000000)
Splash.ZOffset=1
Splash.Texture="rbxassetid://7216980646"
Splash.LockedToPart=false
Splash.Orientation=Enum.ParticleOrientation.VelocityParallel
Splash.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Splash.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Splash.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Splash.FlipbookStartRandom=false


local DBC=Instance.new("ParticleEmitter", Toppp)
DBC.Name="Debris2"
DBC.Enabled=true
DBC.Rate=20
DBC.Lifetime=NumberRange.new(0.500000,0.750000)
DBC.Speed=NumberRange.new(50.000000,60.000000)
DBC.Rotation=NumberRange.new(90.000000,90.000000)
DBC.RotSpeed=NumberRange.new(0.000000,0.000000)
DBC.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.501000,0.750000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
DBC.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.875000,0.000000),NumberSequenceKeypoint.new(0.500574,0.381250,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DBC.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.435294,0.568627,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.435294,0.568627,1.000000))})
DBC.LightEmission=1
DBC.LightInfluence=0
DBC.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DBC.Drag=0
DBC.EmissionDirection=Enum.NormalId.Top
DBC.SpreadAngle=Vector2.new(-5.000000,5.000000)
DBC.ZOffset=2
DBC.Texture="rbxassetid://15431912045"
DBC.LockedToPart=false
DBC.Orientation=Enum.ParticleOrientation.VelocityParallel
DBC.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DBC.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
DBC.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
DBC.FlipbookStartRandom=false

local DBC1=Instance.new("ParticleEmitter", Toppp)
DBC1.Name="Debris3"
DBC1.Enabled=true
DBC1.Rate=50
DBC1.Lifetime=NumberRange.new(1.000000,1.500000)
DBC1.Speed=NumberRange.new(20.000000,30.000000)
DBC1.Rotation=NumberRange.new(-360.000000,360.000000)
DBC1.RotSpeed=NumberRange.new(0.000000,0.000000)
DBC1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.501000,0.150000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
DBC1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.250000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DBC1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.400000,0.478431,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.400000,0.478431,1.000000))})
DBC1.LightEmission=1
DBC1.LightInfluence=0
DBC1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DBC1.Drag=0
DBC1.EmissionDirection=Enum.NormalId.Top
DBC1.SpreadAngle=Vector2.new(-5.000000,5.000000)
DBC1.ZOffset=2
DBC1.Texture="rbxassetid://9841260165"
DBC1.LockedToPart=false
DBC1.Orientation=Enum.ParticleOrientation.FacingCamera
DBC1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DBC1.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
DBC1.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
DBC1.FlipbookStartRandom=false

local DBC2=Instance.new("ParticleEmitter", Toppp)
DBC2.Name="Debris1"
DBC2.Enabled=true
DBC2.Rate=20
DBC2.Lifetime=NumberRange.new(0.500000,0.750000)
DBC2.Speed=NumberRange.new(50.000000,60.000000)
DBC2.Rotation=NumberRange.new(90.000000,90.000000)
DBC2.RotSpeed=NumberRange.new(0.000000,0.000000)
DBC2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.501000,2.000000,0.500000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
DBC2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.501247,0.743750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DBC2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.545098,0.666667,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.545098,0.666667,1.000000))})
DBC2.LightEmission=1
DBC2.LightInfluence=0
DBC2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DBC2.Drag=0
DBC2.EmissionDirection=Enum.NormalId.Top
DBC2.SpreadAngle=Vector2.new(-5.000000,5.000000)
DBC2.ZOffset=2
DBC2.Texture="rbxassetid://15431912045"
DBC2.LockedToPart=false
DBC2.Orientation=Enum.ParticleOrientation.VelocityParallel
DBC2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DBC2.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
DBC2.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
DBC2.FlipbookStartRandom=false

local DBC3=Instance.new("ParticleEmitter", Toppp)
DBC3.Name="SmallDebris"
DBC3.Enabled=true
DBC3.Rate=50
DBC3.Lifetime=NumberRange.new(0.100000,1.250000)
DBC3.Speed=NumberRange.new(20.000000,30.000000)
DBC3.Rotation=NumberRange.new(-360.000000,360.000000)
DBC3.RotSpeed=NumberRange.new(0.000000,0.000000)
DBC3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,5.000000,0.000000),NumberSequenceKeypoint.new(1.000000,5.000000,0.000000)})
DBC3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.199501,1.000000,0.000000),NumberSequenceKeypoint.new(0.600998,0.737500,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
DBC3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.360784,0.478431,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.360784,0.478431,1.000000))})
DBC3.LightEmission=1
DBC3.LightInfluence=0
DBC3.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
DBC3.Drag=0
DBC3.EmissionDirection=Enum.NormalId.Top
DBC3.SpreadAngle=Vector2.new(-5.000000,5.000000)
DBC3.ZOffset=1
DBC3.Texture="http://www.roblox.com/asset/?id=18539291909"
DBC3.LockedToPart=false
DBC3.Orientation=Enum.ParticleOrientation.FacingCamera
DBC3.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DBC3.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DBC3.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
DBC3.FlipbookStartRandom=false

local Bubble1_1_193748=Instance.new("ParticleEmitter", Floor)
Bubble1_1_193748.Name="Bubble1"
Bubble1_1_193748.Enabled=true
Bubble1_1_193748.Rate=10
Bubble1_1_193748.Lifetime=NumberRange.new(0.500000,0.750000)
Bubble1_1_193748.Speed=NumberRange.new(0.000000,0.000000)
Bubble1_1_193748.Rotation=NumberRange.new(-360.000000,360.000000)
Bubble1_1_193748.RotSpeed=NumberRange.new(0.000000,0.000000)
Bubble1_1_193748.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,3.000000,0.000000),NumberSequenceKeypoint.new(1.000000,3.000000,0.000000)})
Bubble1_1_193748.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Bubble1_1_193748.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.215686,0.321569,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.215686,0.321569,1.000000))})
Bubble1_1_193748.LightEmission=1
Bubble1_1_193748.LightInfluence=0
Bubble1_1_193748.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Bubble1_1_193748.Drag=0
Bubble1_1_193748.EmissionDirection=Enum.NormalId.Top
Bubble1_1_193748.SpreadAngle=Vector2.new(0.000000,0.000000)
Bubble1_1_193748.ZOffset=1
Bubble1_1_193748.Texture="rbxassetid://14261754295"
Bubble1_1_193748.LockedToPart=false
Bubble1_1_193748.Orientation=Enum.ParticleOrientation.FacingCamera
Bubble1_1_193748.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Bubble1_1_193748.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Bubble1_1_193748.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Bubble1_1_193748.FlipbookStartRandom=false

local Bubble2_1_193749=Instance.new("ParticleEmitter", Floor)
Bubble2_1_193749.Name="Bubble2"
Bubble2_1_193749.Enabled=true
Bubble2_1_193749.Rate=10
Bubble2_1_193749.Lifetime=NumberRange.new(0.500000,0.750000)
Bubble2_1_193749.Speed=NumberRange.new(0.000000,0.000000)
Bubble2_1_193749.Rotation=NumberRange.new(-360.000000,360.000000)
Bubble2_1_193749.RotSpeed=NumberRange.new(0.000000,0.000000)
Bubble2_1_193749.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.500000,0.000000),NumberSequenceKeypoint.new(1.000000,1.500000,0.000000)})
Bubble2_1_193749.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Bubble2_1_193749.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.215686,0.321569,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.215686,0.321569,1.000000))})
Bubble2_1_193749.LightEmission=1
Bubble2_1_193749.LightInfluence=0
Bubble2_1_193749.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Bubble2_1_193749.Drag=0
Bubble2_1_193749.EmissionDirection=Enum.NormalId.Top
Bubble2_1_193749.SpreadAngle=Vector2.new(0.000000,0.000000)
Bubble2_1_193749.ZOffset=1
Bubble2_1_193749.Texture="rbxassetid://14261754295"
Bubble2_1_193749.LockedToPart=false
Bubble2_1_193749.Orientation=Enum.ParticleOrientation.FacingCamera
Bubble2_1_193749.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Bubble2_1_193749.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Bubble2_1_193749.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Bubble2_1_193749.FlipbookStartRandom=false

local Debris_1_193750=Instance.new("ParticleEmitter", Floor)
Debris_1_193750.Name="Debris"
Debris_1_193750.Enabled=true
Debris_1_193750.Rate=50
Debris_1_193750.Lifetime=NumberRange.new(0.750000,1.000000)
Debris_1_193750.Speed=NumberRange.new(3.000000,3.000000)
Debris_1_193750.Rotation=NumberRange.new(-360.000000,360.000000)
Debris_1_193750.RotSpeed=NumberRange.new(0.000000,0.000000)
Debris_1_193750.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.499000,0.150000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Debris_1_193750.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.498278,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Debris_1_193750.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Debris_1_193750.LightEmission=0
Debris_1_193750.LightInfluence=0
Debris_1_193750.Acceleration=Vector3.new(0.000000,3.000000,0.000000)
Debris_1_193750.Drag=0
Debris_1_193750.EmissionDirection=Enum.NormalId.Top
Debris_1_193750.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Debris_1_193750.ZOffset=1
Debris_1_193750.Texture="rbxassetid://9841260165"
Debris_1_193750.LockedToPart=false
Debris_1_193750.Orientation=Enum.ParticleOrientation.FacingCamera
Debris_1_193750.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debris_1_193750.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
Debris_1_193750.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Debris_1_193750.FlipbookStartRandom=false

local Debris2_1_193751=Instance.new("ParticleEmitter", Floor)
Debris2_1_193751.Name="Debris2"
Debris2_1_193751.Enabled=true
Debris2_1_193751.Rate=50
Debris2_1_193751.Lifetime=NumberRange.new(0.750000,1.000000)
Debris2_1_193751.Speed=NumberRange.new(3.000000,3.000000)
Debris2_1_193751.Rotation=NumberRange.new(-360.000000,360.000000)
Debris2_1_193751.RotSpeed=NumberRange.new(0.000000,0.000000)
Debris2_1_193751.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.499000,0.300000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Debris2_1_193751.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.498278,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Debris2_1_193751.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.215686,0.321569,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.215686,0.321569,1.000000))})
Debris2_1_193751.LightEmission=1
Debris2_1_193751.LightInfluence=0
Debris2_1_193751.Acceleration=Vector3.new(0.000000,3.000000,0.000000)
Debris2_1_193751.Drag=0
Debris2_1_193751.EmissionDirection=Enum.NormalId.Top
Debris2_1_193751.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Debris2_1_193751.ZOffset=1
Debris2_1_193751.Texture="rbxassetid://9841260165"
Debris2_1_193751.LockedToPart=false
Debris2_1_193751.Orientation=Enum.ParticleOrientation.FacingCamera
Debris2_1_193751.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debris2_1_193751.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
Debris2_1_193751.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Debris2_1_193751.FlipbookStartRandom=false

local Line_1_193752=Instance.new("ParticleEmitter", Floor)
Line_1_193752.Name="Line"
Line_1_193752.Enabled=true
Line_1_193752.Rate=30
Line_1_193752.Lifetime=NumberRange.new(1.000000,1.250000)
Line_1_193752.Speed=NumberRange.new(1.000000,1.000000)
Line_1_193752.Rotation=NumberRange.new(25.000000,25.000000)
Line_1_193752.RotSpeed=NumberRange.new(0.000000,0.000000)
Line_1_193752.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.399541,1.250000,0.000000),NumberSequenceKeypoint.new(0.499426,4.062500,0.000000),NumberSequenceKeypoint.new(0.600459,1.062500,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Line_1_193752.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.498278,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Line_1_193752.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.223529,0.341176,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.223529,0.341176,1.000000))})
Line_1_193752.LightEmission=1
Line_1_193752.LightInfluence=0
Line_1_193752.Acceleration=Vector3.new(0.000000,3.000000,0.000000)
Line_1_193752.Drag=0
Line_1_193752.EmissionDirection=Enum.NormalId.Top
Line_1_193752.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Line_1_193752.ZOffset=1
Line_1_193752.Texture="rbxassetid://6909741538"
Line_1_193752.LockedToPart=false
Line_1_193752.Orientation=Enum.ParticleOrientation.FacingCamera
Line_1_193752.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Line_1_193752.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
Line_1_193752.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Line_1_193752.FlipbookStartRandom=false

local Star1_1_193753=Instance.new("ParticleEmitter", Floor)
Star1_1_193753.Name="Star1"
Star1_1_193753.Enabled=true
Star1_1_193753.Rate=10
Star1_1_193753.Lifetime=NumberRange.new(0.750000,1.000000)
Star1_1_193753.Speed=NumberRange.new(0.001500,0.001500)
Star1_1_193753.Rotation=NumberRange.new(-360.000000,360.000000)
Star1_1_193753.RotSpeed=NumberRange.new(0.000000,0.000000)
Star1_1_193753.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.401837,0.000000,0.000000),NumberSequenceKeypoint.new(0.499000,1.750000,0.000000),NumberSequenceKeypoint.new(0.600459,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Star1_1_193753.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.256250,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star1_1_193753.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Star1_1_193753.LightEmission=0
Star1_1_193753.LightInfluence=0
Star1_1_193753.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star1_1_193753.Drag=0
Star1_1_193753.EmissionDirection=Enum.NormalId.Top
Star1_1_193753.SpreadAngle=Vector2.new(0.000000,0.000000)
Star1_1_193753.ZOffset=1
Star1_1_193753.Texture="rbxassetid://14590086212"
Star1_1_193753.LockedToPart=true
Star1_1_193753.Orientation=Enum.ParticleOrientation.FacingCamera
Star1_1_193753.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star1_1_193753.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
Star1_1_193753.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Star1_1_193753.FlipbookStartRandom=false

local Star2_1_193754=Instance.new("ParticleEmitter", Floor)
Star2_1_193754.Name="Star2"
Star2_1_193754.Enabled=true
Star2_1_193754.Rate=10
Star2_1_193754.Lifetime=NumberRange.new(0.750000,1.000000)
Star2_1_193754.Speed=NumberRange.new(0.001500,0.001500)
Star2_1_193754.Rotation=NumberRange.new(-360.000000,360.000000)
Star2_1_193754.RotSpeed=NumberRange.new(0.000000,0.000000)
Star2_1_193754.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.401837,0.000000,0.000000),NumberSequenceKeypoint.new(0.499000,1.750000,0.000000),NumberSequenceKeypoint.new(0.600459,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Star2_1_193754.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.256250,0.000000),NumberSequenceKeypoint.new(0.499426,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star2_1_193754.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.215686,0.321569,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.215686,0.321569,1.000000))})
Star2_1_193754.LightEmission=1
Star2_1_193754.LightInfluence=0
Star2_1_193754.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star2_1_193754.Drag=0
Star2_1_193754.EmissionDirection=Enum.NormalId.Top
Star2_1_193754.SpreadAngle=Vector2.new(0.000000,0.000000)
Star2_1_193754.ZOffset=1
Star2_1_193754.Texture="rbxassetid://14590086212"
Star2_1_193754.LockedToPart=true
Star2_1_193754.Orientation=Enum.ParticleOrientation.FacingCamera
Star2_1_193754.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star2_1_193754.FlipbookMode=Enum.ParticleFlipbookMode.PingPong
Star2_1_193754.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Star2_1_193754.FlipbookStartRandom=false

local Rains_1_193755=Instance.new("Part", HumanoidRootPart_1_178378)
Rains_1_193755.Name="Rains"
Rains_1_193755.Anchored=false
Rains_1_193755.CanCollide=false
Rains_1_193755.CanQuery=false
Rains_1_193755.CanTouch=false
Rains_1_193755.Transparency=1
Rains_1_193755.Reflectance=0
Rains_1_193755.Color=Color3.new(0.639216,0.635294,0.647059)
Rains_1_193755.Material=Enum.Material.Plastic
Rains_1_193755.Size=Vector3.new(31.521002,2.580000,31.521002)
Rains_1_193755.CastShadow=false
Rains_1_193755.Massless=true


local AttNeck=Instance.new("Attachment", foldhh)
AttNeck.Name="CollarAttachment"
AttNeck.Position=Vector3.new(0.000305,-0.400195,-0.599854)
AttNeck.Visible=false

local AttBand=Instance.new("Attachment", AttNeck)
AttBand.Name="Bands"
AttBand.Position=Vector3.new(0.000000,0.000000,1.21)
AttBand.Visible=false

local B2=Instance.new("Beam", AttNeck)
B2.Name="Beam2"
B2.Enabled=true
B2.Width0=0.20000000298023224
B2.Width1=0.6000000238418579
B2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.000000,0.000000),NumberSequenceKeypoint.new(0.897819,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
B2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
B2.CurveSize0=.75
B2.CurveSize1=-.95
B2.FaceCamera=false
B2.LightEmission=0
B2.LightInfluence=0
B2.Segments=200
B2.Texture="rbxassetid://13712010449"
B2.TextureLength=1
B2.TextureSpeed=2.055117607116699
B2.Attachment0=AttNeck
B2.Attachment1=AttBand

local B21=Instance.new("Beam", AttNeck)
B21.Name="Beam1"
B21.Enabled=true
B21.Width0=0.10000000149011612
B21.Width1=0.5
B21.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.000000,0.000000),NumberSequenceKeypoint.new(0.897819,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
B21.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.086275,0.231373,0.827451)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.086275,0.231373,0.827451))})
B21.CurveSize0=-1
B21.CurveSize1=.75
B21.FaceCamera=false
B21.LightEmission=1
B21.LightInfluence=0
B21.Segments=200
B21.Texture="rbxassetid://13712010449"
B21.TextureLength=2
B21.TextureSpeed=2.055117607116699
B21.Attachment0=AttNeck
B21.Attachment1=AttBand

local B1=Instance.new("Beam", AttNeck)
B1.Name="Beam1"
B1.Enabled=true
B1.Width0=0.10000000149011612
B1.Width1=0.5
B1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.000000,0.000000),NumberSequenceKeypoint.new(0.897819,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
B1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.086275,0.231373,0.827451)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.086275,0.231373,0.827451))})
B1.CurveSize0=0
B1.CurveSize1=-1
B1.FaceCamera=false
B1.LightEmission=1
B1.LightInfluence=0
B1.Segments=200
B1.Texture="rbxassetid://13712010449"
B1.TextureLength=2
B1.TextureSpeed=2.055117607116699
B1.Attachment0=AttNeck
B1.Attachment1=AttBand

local B12=Instance.new("Beam", AttNeck)
B12.Name="Beam2"
B12.Enabled=true
B12.Width0=0.20000000298023224
B12.Width1=0.6000000238418579
B12.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.000000,0.000000),NumberSequenceKeypoint.new(0.897819,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
B12.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
B12.CurveSize0=-1
B12.CurveSize1=.75
B12.FaceCamera=false
B12.LightEmission=0
B12.LightInfluence=0
B12.Segments=200
B12.Texture="rbxassetid://13712010449"
B12.TextureLength=1
B12.TextureSpeed=2.055117607116699
B12.Attachment0=AttNeck
B12.Attachment1=AttBand
--[[
local fishspinmodel=i("Model", foldhh)
local FishSpinBlock=Instance.new("Part", fishspinmodel)
FishSpinBlock.Name="FishSpin2"
FishSpinBlock.Anchored=true 
FishSpinBlock.CanCollide=false
FishSpinBlock.CanQuery=false
FishSpinBlock.CanTouch=false
FishSpinBlock.Transparency=1
FishSpinBlock.Reflectance=0
FishSpinBlock.Color=Color3.new(0.639216,0.635294,0.647059)
FishSpinBlock.Material=Enum.Material.Plastic
FishSpinBlock.Size=Vector3.new(1.000000,1.000000,1.000000)
FishSpinBlock.CastShadow=false
FishSpinBlock.Massless=true



local Fish1Black_1_229377=Instance.new("Part", FishSpinBlock)
Fish1Black_1_229377.Name="Fish1Black"
Fish1Black_1_229377.Anchored=false
Fish1Black_1_229377.CanCollide=false
Fish1Black_1_229377.CanQuery=false
Fish1Black_1_229377.CanTouch=false
Fish1Black_1_229377.Transparency=0.7333336472511292
Fish1Black_1_229377.Reflectance=0
Fish1Black_1_229377.Color=Color3.new(0.000000,0.000000,0.000000)
Fish1Black_1_229377.Material=Enum.Material.Neon
Fish1Black_1_229377.Size=Vector3.new(1.962949,1.198199,0.263250)
Fish1Black_1_229377.CastShadow=false
Fish1Black_1_229377.Massless=true
Fish1Black_1_229377.Material=Enum.Material.Neon



local Aura_1_229378=Instance.new("ParticleEmitter", Fish1Black_1_229377)
Aura_1_229378.Name="Aura"
Aura_1_229378.Enabled=true
Aura_1_229378.Rate=7.5
Aura_1_229378.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229378.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229378.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229378.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229378.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229378.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229378.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229378.LightEmission=1
Aura_1_229378.LightInfluence=0
Aura_1_229378.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229378.Drag=1
Aura_1_229378.EmissionDirection=Enum.NormalId.Top
Aura_1_229378.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229378.ZOffset=-1
Aura_1_229378.Texture="rbxassetid://11941047152"
Aura_1_229378.LockedToPart=true
Aura_1_229378.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229378.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229378.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229378.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229378.FlipbookStartRandom=false

local Aura2_1_229379=Instance.new("ParticleEmitter", Fish1Black_1_229377)
Aura2_1_229379.Name="Aura2"
Aura2_1_229379.Enabled=true
Aura2_1_229379.Rate=12.5
Aura2_1_229379.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229379.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229379.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229379.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229379.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229379.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229379.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229379.LightEmission=0
Aura2_1_229379.LightInfluence=0
Aura2_1_229379.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229379.Drag=1
Aura2_1_229379.EmissionDirection=Enum.NormalId.Top
Aura2_1_229379.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229379.ZOffset=-1.100000023841858
Aura2_1_229379.Texture="rbxassetid://11941047152"
Aura2_1_229379.LockedToPart=true
Aura2_1_229379.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229379.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229379.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229379.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229379.FlipbookStartRandom=false

local Fish4Black_1_229380=Instance.new("Part", FishSpinBlock)
Fish4Black_1_229380.Name="Fish4Black"
Fish4Black_1_229380.Anchored=false
Fish4Black_1_229380.CanCollide=false
Fish4Black_1_229380.CanQuery=false
Fish4Black_1_229380.CanTouch=false
Fish4Black_1_229380.Transparency=0.10000000149011612
Fish4Black_1_229380.Reflectance=0
Fish4Black_1_229380.Color=Color3.new(0.000000,0.000000,0.000000)
Fish4Black_1_229380.Material=Enum.Material.Neon
Fish4Black_1_229380.Size=Vector3.new(1.502864,0.751432,0.250477)
Fish4Black_1_229380.CastShadow=false
Fish4Black_1_229380.Massless=true
Fish4Black_1_229380.Material=Enum.Material.Neon




local Aura_1_229381=Instance.new("ParticleEmitter", Fish4Black_1_229380)
Aura_1_229381.Name="Aura"
Aura_1_229381.Enabled=true
Aura_1_229381.Rate=7.5
Aura_1_229381.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229381.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229381.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229381.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229381.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229381.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229381.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229381.LightEmission=1
Aura_1_229381.LightInfluence=0
Aura_1_229381.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229381.Drag=1
Aura_1_229381.EmissionDirection=Enum.NormalId.Top
Aura_1_229381.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229381.ZOffset=-1
Aura_1_229381.Texture="rbxassetid://11941047152"
Aura_1_229381.LockedToPart=true
Aura_1_229381.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229381.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229381.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229381.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229381.FlipbookStartRandom=false

local Aura2_1_229382=Instance.new("ParticleEmitter", Fish4Black_1_229380)
Aura2_1_229382.Name="Aura2"
Aura2_1_229382.Enabled=true
Aura2_1_229382.Rate=12.5
Aura2_1_229382.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229382.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229382.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229382.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229382.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229382.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229382.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229382.LightEmission=0
Aura2_1_229382.LightInfluence=0
Aura2_1_229382.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229382.Drag=1
Aura2_1_229382.EmissionDirection=Enum.NormalId.Top
Aura2_1_229382.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229382.ZOffset=-1.100000023841858
Aura2_1_229382.Texture="rbxassetid://11941047152"
Aura2_1_229382.LockedToPart=true
Aura2_1_229382.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229382.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229382.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229382.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229382.FlipbookStartRandom=false

local Fish4Black_1_229383=Instance.new("Part", FishSpinBlock)
Fish4Black_1_229383.Name="Fish4Black"
--Fish4Black_1_229383
Fish4Black_1_229383.Anchored=false
Fish4Black_1_229383.CanCollide=false
Fish4Black_1_229383.CanQuery=false
Fish4Black_1_229383.CanTouch=false
Fish4Black_1_229383.Transparency=0.521929144859314
Fish4Black_1_229383.Reflectance=0
Fish4Black_1_229383.Color=Color3.new(0.000000,0.000000,0.000000)
Fish4Black_1_229383.Material=Enum.Material.Neon
Fish4Black_1_229383.Size=Vector3.new(1.620275,0.810137,0.270046)
Fish4Black_1_229383.CastShadow=false
Fish4Black_1_229383.Massless=true
Fish4Black_1_229383.Material=Enum.Material.Neon



local Aura_1_229384=Instance.new("ParticleEmitter", Fish4Black_1_229383)
Aura_1_229384.Name="Aura"
Aura_1_229384.Enabled=true
Aura_1_229384.Rate=7.5
Aura_1_229384.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229384.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229384.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229384.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229384.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229384.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229384.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229384.LightEmission=1
Aura_1_229384.LightInfluence=0
Aura_1_229384.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229384.Drag=1
Aura_1_229384.EmissionDirection=Enum.NormalId.Top
Aura_1_229384.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229384.ZOffset=-1
Aura_1_229384.Texture="rbxassetid://11941047152"
Aura_1_229384.LockedToPart=true
Aura_1_229384.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229384.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229384.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229384.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229384.FlipbookStartRandom=false

local Aura2_1_229385=Instance.new("ParticleEmitter", Fish4Black_1_229383)
Aura2_1_229385.Name="Aura2"
Aura2_1_229385.Enabled=true
Aura2_1_229385.Rate=12.5
Aura2_1_229385.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229385.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229385.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229385.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229385.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229385.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229385.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229385.LightEmission=0
Aura2_1_229385.LightInfluence=0
Aura2_1_229385.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229385.Drag=1
Aura2_1_229385.EmissionDirection=Enum.NormalId.Top
Aura2_1_229385.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229385.ZOffset=-1.100000023841858
Aura2_1_229385.Texture="rbxassetid://11941047152"
Aura2_1_229385.LockedToPart=true
Aura2_1_229385.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229385.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229385.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229385.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229385.FlipbookStartRandom=false

local Fish3Black_1_229386=Instance.new("Part", FishSpinBlock)
Fish3Black_1_229386.Name="Fish3Black"

Fish3Black_1_229386.Anchored=false
Fish3Black_1_229386.CanCollide=false
Fish3Black_1_229386.CanQuery=false
Fish3Black_1_229386.CanTouch=false
Fish3Black_1_229386.Transparency=0.3333336114883423
Fish3Black_1_229386.Reflectance=0
Fish3Black_1_229386.Color=Color3.new(0.274510,0.396078,1.000000)
Fish3Black_1_229386.Material=Enum.Material.Neon
Fish3Black_1_229386.Size=Vector3.new(1.100758,0.795668,0.131149)
Fish3Black_1_229386.CastShadow=false
Fish3Black_1_229386.Massless=true
Fish3Black_1_229386.Material=Enum.Material.Neon




local Aura_1_229387=Instance.new("ParticleEmitter", Fish3Black_1_229386)
Aura_1_229387.Name="Aura"
Aura_1_229387.Enabled=true
Aura_1_229387.Rate=7.5
Aura_1_229387.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229387.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229387.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229387.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229387.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229387.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229387.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229387.LightEmission=2
Aura_1_229387.LightInfluence=0
Aura_1_229387.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229387.Drag=1
Aura_1_229387.EmissionDirection=Enum.NormalId.Top
Aura_1_229387.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229387.ZOffset=-1
Aura_1_229387.Texture="rbxassetid://11941047152"
Aura_1_229387.LockedToPart=true
Aura_1_229387.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229387.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229387.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229387.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229387.FlipbookStartRandom=false

local Aura2_1_229388=Instance.new("ParticleEmitter", Fish3Black_1_229386)
Aura2_1_229388.Name="Aura2"
Aura2_1_229388.Enabled=true
Aura2_1_229388.Rate=12.5
Aura2_1_229388.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229388.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229388.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229388.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229388.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229388.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229388.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229388.LightEmission=0
Aura2_1_229388.LightInfluence=0
Aura2_1_229388.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229388.Drag=1
Aura2_1_229388.EmissionDirection=Enum.NormalId.Top
Aura2_1_229388.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229388.ZOffset=-1.100000023841858
Aura2_1_229388.Texture="rbxassetid://11941047152"
Aura2_1_229388.LockedToPart=true
Aura2_1_229388.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229388.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229388.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229388.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229388.FlipbookStartRandom=false

local Fish3Black_1_229389=Instance.new("Part", FishSpinBlock)
Fish3Black_1_229389.Name="Fish3Black"
--Fish3Black_1_229389.MeshId="rbxassetid://9712172243"
Fish3Black_1_229389.Anchored=false
Fish3Black_1_229389.CanCollide=false
Fish3Black_1_229389.CanQuery=false
Fish3Black_1_229389.CanTouch=false
Fish3Black_1_229389.Transparency=0
Fish3Black_1_229389.Reflectance=0
Fish3Black_1_229389.Color=Color3.new(0.000000,0.000000,0.000000)
Fish3Black_1_229389.Material=Enum.Material.Neon
Fish3Black_1_229389.Size=Vector3.new(1.272751,0.919991,0.151641)
Fish3Black_1_229389.CastShadow=false
Fish3Black_1_229389.Massless=true
Fish3Black_1_229389.Material=Enum.Material.Neon
--Fish3Black_1_229389.TextureID=""
--Fish3Black_1_229389.DoubleSided=false
--Fish3Black_1_229389.CollisionFidelity=Enum.CollisionFidelity.Box
--Fish3Black_1_229389.RenderFidelity=Enum.RenderFidelity.Precise



local Aura_1_229390=Instance.new("ParticleEmitter", Fish3Black_1_229389)
Aura_1_229390.Name="Aura"
Aura_1_229390.Enabled=true
Aura_1_229390.Rate=7.5
Aura_1_229390.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229390.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229390.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229390.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229390.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229390.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229390.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229390.LightEmission=1
Aura_1_229390.LightInfluence=0
Aura_1_229390.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229390.Drag=1
Aura_1_229390.EmissionDirection=Enum.NormalId.Top
Aura_1_229390.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229390.ZOffset=-1
Aura_1_229390.Texture="rbxassetid://11941047152"
Aura_1_229390.LockedToPart=true
Aura_1_229390.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229390.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229390.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229390.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229390.FlipbookStartRandom=false

local Aura2_1_229391=Instance.new("ParticleEmitter", Fish3Black_1_229389)
Aura2_1_229391.Name="Aura2"
Aura2_1_229391.Enabled=true
Aura2_1_229391.Rate=12.5
Aura2_1_229391.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229391.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229391.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229391.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229391.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229391.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229391.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229391.LightEmission=0
Aura2_1_229391.LightInfluence=0
Aura2_1_229391.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229391.Drag=1
Aura2_1_229391.EmissionDirection=Enum.NormalId.Top
Aura2_1_229391.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229391.ZOffset=-1.100000023841858
Aura2_1_229391.Texture="rbxassetid://11941047152"
Aura2_1_229391.LockedToPart=true
Aura2_1_229391.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229391.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229391.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229391.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229391.FlipbookStartRandom=false

local Fish3Black_1_229392=Instance.new("Part", FishSpinBlock)
Fish3Black_1_229392.Name="Fish3Black"
--Fish3Black_1_229392.MeshId="rbxassetid://9712172243"
Fish3Black_1_229392.Anchored=false
Fish3Black_1_229392.CanCollide=false
Fish3Black_1_229392.CanQuery=false
Fish3Black_1_229392.CanTouch=false
Fish3Black_1_229392.Transparency=0.8666666746139526
Fish3Black_1_229392.Reflectance=0
Fish3Black_1_229392.Color=Color3.new(0.000000,0.000000,0.000000)
Fish3Black_1_229392.Material=Enum.Material.Neon
Fish3Black_1_229392.Size=Vector3.new(1.117957,0.808100,0.133198)
Fish3Black_1_229392.CastShadow=false
Fish3Black_1_229392.Massless=true
Fish3Black_1_229392.Material=Enum.Material.Neon
--Fish3Black_1_229392.TextureID=""
--Fish3Black_1_229392.DoubleSided=false
--Fish3Black_1_229392.CollisionFidelity=Enum.CollisionFidelity.Box
--Fish3Black_1_229392.RenderFidelity=Enum.RenderFidelity.Precise



local Aura_1_229393=Instance.new("ParticleEmitter", Fish3Black_1_229392)
Aura_1_229393.Name="Aura"
Aura_1_229393.Enabled=true
Aura_1_229393.Rate=7.5
Aura_1_229393.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229393.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229393.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229393.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229393.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229393.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229393.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229393.LightEmission=1
Aura_1_229393.LightInfluence=0
Aura_1_229393.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229393.Drag=1
Aura_1_229393.EmissionDirection=Enum.NormalId.Top
Aura_1_229393.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229393.ZOffset=-1
Aura_1_229393.Texture="rbxassetid://11941047152"
Aura_1_229393.LockedToPart=true
Aura_1_229393.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229393.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229393.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229393.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229393.FlipbookStartRandom=false

local Aura2_1_229394=Instance.new("ParticleEmitter", Fish3Black_1_229392)
Aura2_1_229394.Name="Aura2"
Aura2_1_229394.Enabled=true
Aura2_1_229394.Rate=12.5
Aura2_1_229394.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229394.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229394.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229394.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229394.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229394.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229394.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229394.LightEmission=0
Aura2_1_229394.LightInfluence=0
Aura2_1_229394.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229394.Drag=1
Aura2_1_229394.EmissionDirection=Enum.NormalId.Top
Aura2_1_229394.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229394.ZOffset=-1.100000023841858
Aura2_1_229394.Texture="rbxassetid://11941047152"
Aura2_1_229394.LockedToPart=true
Aura2_1_229394.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229394.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229394.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229394.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229394.FlipbookStartRandom=false

local Fish3Black_1_229395=Instance.new("Part", FishSpinBlock)
Fish3Black_1_229395.Name="Fish3Black"
--Fish3Black_1_229395.MeshId="rbxassetid://9712172243"
Fish3Black_1_229395.Anchored=false
Fish3Black_1_229395.CanCollide=false
Fish3Black_1_229395.CanQuery=false
Fish3Black_1_229395.CanTouch=false
Fish3Black_1_229395.Transparency=0.23565669357776642
Fish3Black_1_229395.Reflectance=0
Fish3Black_1_229395.Color=Color3.new(0.000000,0.000000,0.000000)
Fish3Black_1_229395.Material=Enum.Material.Neon
Fish3Black_1_229395.Size=Vector3.new(1.341548,0.969720,0.159838)
Fish3Black_1_229395.CastShadow=false
Fish3Black_1_229395.Massless=true
Fish3Black_1_229395.Material=Enum.Material.Neon
--Fish3Black_1_229395.TextureID=""
--Fish3Black_1_229395.DoubleSided=false
--Fish3Black_1_229395.CollisionFidelity=Enum.CollisionFidelity.Box
--Fish3Black_1_229395.RenderFidelity=Enum.RenderFidelity.Precise



local Aura_1_229396=Instance.new("ParticleEmitter", Fish3Black_1_229395)
Aura_1_229396.Name="Aura"
Aura_1_229396.Enabled=true
Aura_1_229396.Rate=7.5
Aura_1_229396.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229396.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229396.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229396.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229396.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229396.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229396.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229396.LightEmission=1
Aura_1_229396.LightInfluence=0
Aura_1_229396.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229396.Drag=1
Aura_1_229396.EmissionDirection=Enum.NormalId.Top
Aura_1_229396.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229396.ZOffset=-1
Aura_1_229396.Texture="rbxassetid://11941047152"
Aura_1_229396.LockedToPart=true
Aura_1_229396.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229396.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229396.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229396.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229396.FlipbookStartRandom=false

local Aura2_1_229397=Instance.new("ParticleEmitter", Fish3Black_1_229395)
Aura2_1_229397.Name="Aura2"
Aura2_1_229397.Enabled=true
Aura2_1_229397.Rate=12.5
Aura2_1_229397.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229397.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229397.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229397.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229397.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229397.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229397.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229397.LightEmission=0
Aura2_1_229397.LightInfluence=0
Aura2_1_229397.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229397.Drag=1
Aura2_1_229397.EmissionDirection=Enum.NormalId.Top
Aura2_1_229397.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229397.ZOffset=-1.100000023841858
Aura2_1_229397.Texture="rbxassetid://11941047152"
Aura2_1_229397.LockedToPart=true
Aura2_1_229397.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229397.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229397.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229397.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229397.FlipbookStartRandom=false

local Fish1Black_1_229398=Instance.new("Part", FishSpinBlock)
Fish1Black_1_229398.Name="Fish1Black"
--Fish1Black_1_229398.MeshId="rbxassetid://10688386368"
Fish1Black_1_229398.Anchored=false
Fish1Black_1_229398.CanCollide=false
Fish1Black_1_229398.CanQuery=false
Fish1Black_1_229398.CanTouch=false
Fish1Black_1_229398.Transparency=0
Fish1Black_1_229398.Reflectance=0
Fish1Black_1_229398.Color=Color3.new(0.000000,0.000000,0.000000)
Fish1Black_1_229398.Material=Enum.Material.Neon
Fish1Black_1_229398.Size=Vector3.new(1.610625,0.983137,0.216000)
Fish1Black_1_229398.CastShadow=false
Fish1Black_1_229398.Massless=true
Fish1Black_1_229398.Material=Enum.Material.Neon
--Fish1Black_1_229398.TextureID=""
--Fish1Black_1_229398.DoubleSided=true
--Fish1Black_1_229398.CollisionFidelity=Enum.CollisionFidelity.Box
--Fish1Black_1_229398.RenderFidelity=Enum.RenderFidelity.Automatic





local Aura_1_229399=Instance.new("ParticleEmitter", Fish1Black_1_229398)
Aura_1_229399.Name="Aura"
Aura_1_229399.Enabled=true
Aura_1_229399.Rate=7.5
Aura_1_229399.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229399.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229399.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229399.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229399.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229399.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229399.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229399.LightEmission=1
Aura_1_229399.LightInfluence=0
Aura_1_229399.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229399.Drag=1
Aura_1_229399.EmissionDirection=Enum.NormalId.Top
Aura_1_229399.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229399.ZOffset=-1
Aura_1_229399.Texture="rbxassetid://11941047152"
Aura_1_229399.LockedToPart=true
Aura_1_229399.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229399.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229399.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229399.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229399.FlipbookStartRandom=false

local Aura2_1_229400=Instance.new("ParticleEmitter", Fish1Black_1_229398)
Aura2_1_229400.Name="Aura2"
Aura2_1_229400.Enabled=true
Aura2_1_229400.Rate=12.5
Aura2_1_229400.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229400.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229400.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229400.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229400.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229400.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229400.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229400.LightEmission=0
Aura2_1_229400.LightInfluence=0
Aura2_1_229400.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229400.Drag=1
Aura2_1_229400.EmissionDirection=Enum.NormalId.Top
Aura2_1_229400.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229400.ZOffset=-1.100000023841858
Aura2_1_229400.Texture="rbxassetid://11941047152"
Aura2_1_229400.LockedToPart=true
Aura2_1_229400.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229400.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229400.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229400.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229400.FlipbookStartRandom=false

local Fish2Black_1_229401=Instance.new("Part", FishSpinBlock)
Fish2Black_1_229401.Name="Fish2Black"
--Fish2Black_1_229401.MeshId="rbxassetid://1725219705"
Fish2Black_1_229401.Anchored=false
Fish2Black_1_229401.CanCollide=false
Fish2Black_1_229401.CanQuery=false
Fish2Black_1_229401.CanTouch=false
Fish2Black_1_229401.Transparency=0.20000000298023224
Fish2Black_1_229401.Reflectance=0
Fish2Black_1_229401.Color=Color3.new(0.000000,0.000000,0.000000)
Fish2Black_1_229401.Material=Enum.Material.Neon
Fish2Black_1_229401.Size=Vector3.new(0.246500,1.773642,4.301915)
Fish2Black_1_229401.CastShadow=false
Fish2Black_1_229401.Massless=true
Fish2Black_1_229401.Material=Enum.Material.Neon
--Fish2Black_1_229401.TextureID=""
--Fish2Black_1_229401.DoubleSided=false
--Fish2Black_1_229401.CollisionFidelity=Enum.CollisionFidelity.Box
--Fish2Black_1_229401.RenderFidelity=Enum.RenderFidelity.Precise







local Aura_1_229402=Instance.new("ParticleEmitter", Fish2Black_1_229401)
Aura_1_229402.Name="Aura"
Aura_1_229402.Enabled=true
Aura_1_229402.Rate=7.5
Aura_1_229402.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229402.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229402.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229402.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229402.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229402.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229402.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229402.LightEmission=1
Aura_1_229402.LightInfluence=0
Aura_1_229402.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229402.Drag=1
Aura_1_229402.EmissionDirection=Enum.NormalId.Top
Aura_1_229402.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229402.ZOffset=-1
Aura_1_229402.Texture="rbxassetid://11941047152"
Aura_1_229402.LockedToPart=true
Aura_1_229402.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229402.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229402.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229402.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229402.FlipbookStartRandom=false

local Aura2_1_229403=Instance.new("ParticleEmitter", Fish2Black_1_229401)
Aura2_1_229403.Name="Aura2"
Aura2_1_229403.Enabled=true
Aura2_1_229403.Rate=12.5
Aura2_1_229403.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229403.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229403.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229403.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229403.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229403.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229403.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229403.LightEmission=0
Aura2_1_229403.LightInfluence=0
Aura2_1_229403.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229403.Drag=1
Aura2_1_229403.EmissionDirection=Enum.NormalId.Top
Aura2_1_229403.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229403.ZOffset=-1.100000023841858
Aura2_1_229403.Texture="rbxassetid://11941047152"
Aura2_1_229403.LockedToPart=true
Aura2_1_229403.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229403.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229403.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229403.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229403.FlipbookStartRandom=false


local Fish2Black_1_229404=Instance.new("Part", FishSpinBlock)
Fish2Black_1_229404.Name="Fish2Black"
--Fish2Black_1_229404
Fish2Black_1_229404.Anchored=false
Fish2Black_1_229404.CanCollide=false
Fish2Black_1_229404.CanQuery=false
Fish2Black_1_229404.CanTouch=false
Fish2Black_1_229404.Transparency=0.10000000149011612
Fish2Black_1_229404.Reflectance=0
Fish2Black_1_229404.Color=Color3.new(0.000000,0.000000,0.000000)
Fish2Black_1_229404.Material=Enum.Material.Neon
Fish2Black_1_229404.Size=Vector3.new(0.217500,1.564978,3.795807)
Fish2Black_1_229404.CastShadow=false
Fish2Black_1_229404.Massless=true
Fish2Black_1_229404.Material=Enum.Material.Neon
--Fish2Black_1_229404.TextureID=""
--Fish2Black_1_229404.DoubleSided=false
--Fish2Black_1_229404.CollisionFidelity=Enum.CollisionFidelity.Box
--Fish2Black_1_229404.RenderFidelity=Enum.RenderFidelity.Precise



local Aura_1_229405=Instance.new("ParticleEmitter", Fish2Black_1_229404)
Aura_1_229405.Name="Aura"
Aura_1_229405.Enabled=true
Aura_1_229405.Rate=7.5
Aura_1_229405.Lifetime=NumberRange.new(1.000000,1.000000)
Aura_1_229405.Speed=NumberRange.new(0.000000,0.000000)
Aura_1_229405.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura_1_229405.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura_1_229405.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229405.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura_1_229405.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.098039,0.262745,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.098039,0.262745,1.000000))})
Aura_1_229405.LightEmission=1
Aura_1_229405.LightInfluence=0
Aura_1_229405.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura_1_229405.Drag=1
Aura_1_229405.EmissionDirection=Enum.NormalId.Top
Aura_1_229405.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura_1_229405.ZOffset=-1
Aura_1_229405.Texture="rbxassetid://11941047152"
Aura_1_229405.LockedToPart=true
Aura_1_229405.Orientation=Enum.ParticleOrientation.FacingCamera
Aura_1_229405.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura_1_229405.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura_1_229405.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura_1_229405.FlipbookStartRandom=false

local Aura2_1_229406=Instance.new("ParticleEmitter", Fish2Black_1_229404)
Aura2_1_229406.Name="Aura2"
Aura2_1_229406.Enabled=true
Aura2_1_229406.Rate=12.5
Aura2_1_229406.Lifetime=NumberRange.new(1.000000,1.000000)
Aura2_1_229406.Speed=NumberRange.new(0.000000,0.000000)
Aura2_1_229406.Rotation=NumberRange.new(-1000.000000,1000.000000)
Aura2_1_229406.RotSpeed=NumberRange.new(-10.000000,10.000000)
Aura2_1_229406.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,2.000000,0.000000),NumberSequenceKeypoint.new(1.000000,2.000000,0.000000)})
Aura2_1_229406.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.099885,0.500000,0.000000),NumberSequenceKeypoint.new(0.298507,0.118750,0.000000),NumberSequenceKeypoint.new(0.500574,0.000000,0.000000),NumberSequenceKeypoint.new(0.699196,0.131250,0.000000),NumberSequenceKeypoint.new(0.900115,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura2_1_229406.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Aura2_1_229406.LightEmission=0
Aura2_1_229406.LightInfluence=0
Aura2_1_229406.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Aura2_1_229406.Drag=1
Aura2_1_229406.EmissionDirection=Enum.NormalId.Top
Aura2_1_229406.SpreadAngle=Vector2.new(-1000.000000,1000.000000)
Aura2_1_229406.ZOffset=-1.100000023841858
Aura2_1_229406.Texture="rbxassetid://11941047152"
Aura2_1_229406.LockedToPart=true
Aura2_1_229406.Orientation=Enum.ParticleOrientation.FacingCamera
Aura2_1_229406.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Aura2_1_229406.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Aura2_1_229406.FlipbookFramerate=NumberRange.new(40.000000,40.000000)
Aura2_1_229406.FlipbookStartRandom=false


local sm1=i("SpecialMesh",Fish2Black_1_229404)
sm1.MeshId="rbxassetid://1725219705"


local sm2=i("SpecialMesh",Fish1Black_1_229377)
sm2.MeshId="rbxassetid://10688386368"


local sm3=i("SpecialMesh",Fish4Black_1_229380)
sm3.MeshId="rbxassetid://711630973"


local sm4=i("SpecialMesh",Fish4Black_1_229383)
sm4.MeshId="rbxassetid://711630973"


local sm5=i("SpecialMesh",Fish3Black_1_229386)
sm5.MeshId="rbxassetid://9712172243"


local sm6=i("SpecialMesh",Fish3Black_1_229389)
sm6.MeshId="rbxassetid://9712172243"


local sm7=i("SpecialMesh",Fish3Black_1_229392)
sm7.MeshId="rbxassetid://9712172243"


local sm8=i("SpecialMesh",Fish3Black_1_229395)
sm8.MeshId="rbxassetid://9712172243"


local sm9=i("SpecialMesh",Fish1Black_1_229398)
sm9.MeshId="rbxassetid://10688386368"


local sm10=i("SpecialMesh",Fish2Black_1_229401)
sm10.MeshId="rbxassetid://1725219705"




local Fish1Black_1_229367=Instance.new("Motor6D", FishSpinBlock)
Fish1Black_1_229367.Name="Fish1Black"

Fish1Black_1_229367.C0=CFrame.new(-14.1527099609375,1.220367431640625,1.6717529296875,-0.007875323295593262,-0.10453569889068604,-0.9944900274276733,0.00001508370041847229,0.9945207834243774,-0.10453906655311584,0.9999690055847168,-0.0008382759988307953,-0.007830619812011719)
Fish1Black_1_229367.Part0=Fish2Black_1_229404
Fish1Black_1_229367.Part1=FishSpinBlock

local Fish2Black_1_229368=Instance.new("Motor6D", FishSpinBlock)
Fish2Black_1_229368.Name="Fish2Black"
Fish2Black_1_229368.Part0=Fish1Black_1_229377
Fish2Black_1_229368.Part1=FishSpinBlock
Fish2Black_1_229368.C0=CFrame.new(-0.7698974609375,2.6660003662109375,-10.24200439453125,-0.07561337947845459,0.05242250859737396,0.9957582950592041,-0.000024516135454177856,0.9986169934272766,-0.052574872970581055,-0.9971373081207275,-0.003999771550297737,-0.0755075216293335)

local Fish1Black_1_229369=Instance.new("Motor6D", FishSpinBlock)
Fish1Black_1_229369.Name="Fish1Black"
Fish1Black_1_229369.Part0=Fish4Black_1_229380
Fish1Black_1_229369.Part1=FishSpinBlock
Fish1Black_1_229369.C0=CFrame.new(15.674285888671875,3.2778167724609375,-0.607421875,-0.14595794677734375,-0.03414095938205719,0.9887015223503113,0.00003764219582080841,0.9994041323661804,0.03451608866453171,-0.9892907738685608,0.005075116641819477,-0.14586973190307617)

local Fish2Black_1_229370=Instance.new("Motor6D", FishSpinBlock)
Fish2Black_1_229370.Name="Fish1Black"
Fish2Black_1_229370.Part0=Fish4Black_1_229383
Fish2Black_1_229370.Part1=FishSpinBlock
Fish2Black_1_229370.C0=CFrame.new(-12.691162109375,4.343536376953125,8.63934326171875,-0.8826644420623779,0.09633824229240417,-0.46002504229545593,0.1085001677274704,0.9940964579582214,6.48200511932373e-07,0.4573093354701996,-0.049912214279174805,-0.8879063129425049)

local Fish3Black_1_229371=Instance.new("Motor6D", FishSpinBlock)
Fish3Black_1_229371.Name="Fish1Black"
Fish3Black_1_229371.Part0=Fish3Black_1_229386
Fish3Black_1_229371.Part1=FishSpinBlock
Fish3Black_1_229371.C0=CFrame.new(12.8057861328125,2.3082427978515625,-5.67584228515625,0.4874489903450012,-0.03432014212012291,-0.8724767565727234,0.0701766163110733,0.9975345730781555,-0.00003209523856639862,0.870326817035675,-0.06121181696653366,0.488655686378479)

local Fish3Black_1_229372=Instance.new("Motor6D", FishSpinBlock)
Fish3Black_1_229372.Name="Fish1Black"
Fish3Black_1_229372.Part0=Fish3Black_1_229389
Fish3Black_1_229372.Part1=FishSpinBlock
Fish3Black_1_229372.C0=CFrame.new(-1.6717529296875,2.8489761352539062,-12.09381103515625,0.9901617169380188,0,0.13992783427238464,0,1,0,-0.13992783427238464,0,0.9901617169380188)

local Fish3Black_1_229373=Instance.new("Motor6D", FishSpinBlock)
Fish3Black_1_229373.Name="Fish1Black"
Fish3Black_1_229373.Part0=Fish3Black_1_229392
Fish3Black_1_229373.Part1=FishSpinBlock
Fish3Black_1_229373.C0=CFrame.new(15.13067626953125,2.7435836791992188,7.05511474609375,-0.34323036670684814,0,-0.9392512440681458,0,1,0,0.9392512440681458,0,-0.34323036670684814)

local Fish3Black_1_229374=Instance.new("Motor6D", FishSpinBlock)
Fish3Black_1_229374.Name="Fish1Black"
Fish3Black_1_229374.Part0=Fish3Black_1_229395
Fish3Black_1_229374.Part1=FishSpinBlock
Fish3Black_1_229374.C0=CFrame.new(-10.62115478515625,3.8955764770507812,-1.57708740234375,0.3172558546066284,0.0717695876955986,0.9456203579902649,0.0717695876955986,0.9924556016921997,-0.09940295666456223,-0.9456203579902649,0.09940295666456223,0.3097114562988281)

local Fish4Black_1_229375=Instance.new("Motor6D", FishSpinBlock)
Fish4Black_1_229375.Name="Fish1Black"
Fish4Black_1_229375.Part0=Fish1Black_1_229398
Fish4Black_1_229375.Part1=FishSpinBlock
Fish4Black_1_229375.C0=CFrame.new(-9.5228271484375,2.9157333374023438,11.86236572265625,-0.7043533325195312,0,0.7098500728607178,0,1,0,-0.7098500728607178,0,-0.7043533325195312)

local Fish4Black_1_229376=Instance.new("Motor6D", FishSpinBlock)
Fish4Black_1_229376.Name="Fish1Black"
Fish4Black_1_229376.Part0=Fish2Black_1_229401
Fish4Black_1_229376.Part1=FishSpinBlock
Fish4Black_1_229376.C0=CFrame.new(5.0980224609375,2.4108200073242188,-13.53436279296875,0.954145610332489,0.006293695420026779,-0.2992766499519348,-0.000020135892555117607,0.9997802972793579,0.02096087858080864,0.2993428111076355,-0.019993703812360764,0.9539361596107483)


sm1.Scale=v3(1,1,1)
sm2.Scale=v3(.025,.025,.025)
sm3.Scale=v3(.025,.025,.025)
sm4.Scale=v3(.025,.025,.025)
sm5.Scale=v3(1,1,1)
sm6.Scale=v3(1,1,1)
sm7.Scale=v3(1,1,1)
sm8.Scale=v3(1,1,1)
sm9.Scale=v3(.025,.025,.025)
sm10.Scale=v3(1,1,1)





for _,anchor in FishSpinBlock:GetDescendants() do 
if anchor:IsA("Part") and anchor.Anchored==false  then
anchor.Anchored=true 

end
end]]

local Long=i("Attachment",AttBand)
Long.Position=v3(9,7,0)
Long.Name="SinyAttachment"


local BAND=Instance.new("Beam", AttNeck)
BAND.Name="Beam2"
BAND.Enabled=true
BAND.Width0=1
BAND.Width1=5
BAND.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.101033,0.000000,0.000000),NumberSequenceKeypoint.new(0.400689,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BAND.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.035294,0.058824,0.282353)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.035294,0.058824,0.282353))})
BAND.CurveSize0=2.5
BAND.CurveSize1=5
BAND.FaceCamera=false
BAND.LightEmission=0
BAND.LightInfluence=0
BAND.Segments=25
BAND.Texture="rbxassetid://13315699616"
BAND.TextureLength=1.5
BAND.FaceCamera=true
BAND.TextureSpeed=2.5
BAND.Attachment0=AttBand
BAND.Attachment1=Long

local Band1=Instance.new("Beam", AttNeck)
Band1.Name="Beam"
Band1.Enabled=true
Band1.Width0=0.5
Band1.Width1=4.5
Band1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.101033,0.000000,0.000000),NumberSequenceKeypoint.new(0.400689,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Band1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.066667,0.231373,0.827451)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.066667,0.231373,0.827451))})
Band1.CurveSize0=2.5
Band1.CurveSize1=5
Band1.FaceCamera=true
Band1.LightEmission=1
Band1.LightInfluence=0
Band1.Segments=25
Band1.Texture="rbxassetid://13315699616"
Band1.TextureLength=1.5
Band1.TextureSpeed=2.5
Band1.Attachment0=AttNeck
Band1.Attachment1=Long



for _,v in AttNeck:GetDescendants() do 
if v:IsA("Beam") then 
v.Enabled=false
end
end
for _=0,1 do
for _,v in Toppp:GetDescendants() do 
if v:IsA("ParticleEmitter") then 
local CloneParti=v:Clone()
CloneParti.Parent=Toppp
end
end
end




local plight=i("PointLight",Floor)


local fuh 
local rotate=1
fuh=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("AnarchusAssets") then 
foldhh:Destroy() 
--PosRoot(0)
local char=head
if char:FindFirstChild("CollarAttachment") then
char.CollarAttachment:Destroy()
end
fuh:Disconnect() 
end 
rotate+=1
--PosRoot(1)

pcall(function()
local char=head
if char and not char:FindFirstChild("CollarAttachment") then
if scriptfolder:FindFirstChild("AnarchusAssets") then
local cjh=AttNeck:Clone()
cjh.Name="CollarAttachment"
cjh.Parent=char
for _,v in cjh:GetDescendants() do
if v:IsA("Beam") and v.Color~=cs({csk(0,c3()),csk(1,c3())}) and v.Color~=cs({csk(0,c3(1,1,1)),csk(1,c3(1,1,1))}) then 
v.Color=cs({
  csk(0,rgb(0,0,100+sound.PlaybackLoudness/10)),
  csk(1,rgb(0,0,100+sound.PlaybackLoudness/5.5))
})
v.Enabled=true
end
end
else
char.SinyAttachment:Destroy()
end
end
end)
pcall(function()
local char=head

for _,v in char:GetDescendants() do
if v:IsA("Beam") then 
v.Enabled=true
end
end
for _,h in char:GetDescendants() do
if h:IsA("Attachment") and h.Name=="SinyAttachment"then 
h.Position=v3(9-2*sin(rotate/20),7+2*cos(rotate/25),5+5*cos(rotate/35))
end
end
end)
local root=rootpart1
BetterTween(Floor,.1,{Position=v3(root.Position.X,root.Position.Y-1,root.Position.Z)}):Play()
BetterTween(Floor,0,{Rotation=v3(0,rotate,0)}):Play()
BetterTween(Toppp,.1,{Position=v3(root.Position.X,root.Position.Y+30,root.Position.Z)}):Play()
for _,g in Toppp:GetDescendants() do 
if g:IsA("ParticleEmitter") then 
g.Rate=1+sound.PlaybackLoudness/15
g.Brightness=5+sound.PlaybackLoudness/40
end
end
for _,v in foldhh:GetDescendants() do
if v:IsA("ParticleEmitter") and v.Color~=cs({csk(0,c3()),csk(1,c3())}) and v.Color~=cs({csk(0,c3(1,1,1)),csk(1,c3(1,1,1))}) then 
v.Color=cs({
  csk(0,rgb(0,0,100+sound.PlaybackLoudness/10)),
  csk(1,rgb(0,0,100+sound.PlaybackLoudness/5.5))
})
end
end



for _,v in foldhh:GetDescendants() do
if v:IsA("PointLight") then 
v.Color=rgb(0,0,100+sound.PlaybackLoudness/2)
v.Brightness=5+sound.PlaybackLoudness/20.5
v.Range=2+sound.PlaybackLoudness/30.5
end
end



end)


end
AnarchusAssets()