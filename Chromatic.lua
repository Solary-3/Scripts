--print(Part)--// The floor that should follow
--print("This is where you put your file for modes that requires some VFX")
--// Base Variables, Already Optimized
local Global=(getgenv and getgenv()) or shared
local Flooring=Global.Flooring
local scriptfolder=Global.Cont
local sound=Global.Loud
local im2=Global.im2
local MusicPlayer=Global.MusicPlayer
local rootpart1=Global.rootpart1
local rootpart=Global.rootpart
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
local clamp=math.clamp
local tinsert=table.insert




function ChromaticAssets()
if scriptfolder:FindFirstChild("ChromaticAssets") then return end
function Tween(obj, speed, whattype, anim)
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
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
end
end
local TweenService=game:GetService("TweenService")
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local RunService=game:GetService("RunService")
local fx=Instance.new("Folder")
fx.Name="ChromaticAssets"
fx:SetAttribute("VFX", true)
fx.Parent=scriptfolder
local BeamsFolder=i("Folder",fx)
BeamsFolder.Name="BeamsFolder"
local DDD=Instance.new("Part")
DDD.Name="ChromaticCenter"
DDD.Anchored=true
DDD.CanCollide=false
DDD.CanQuery=false
DDD.Transparency=1
DDD.Size=v3(1,1,1)
DDD.Parent=fx




local Floor=Instance.new("Part", fx)
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
local Light=i("PointLight",Floor)
local Up=Instance.new("Attachment", Floor)
Up.Name="up1"
Up.Position=Vector3.new(0.000000,0,0.000000)
Up.Visible=false

local MiddleShine=Instance.new("ParticleEmitter", Up)
MiddleShine.Name="midshine"
MiddleShine.Enabled=false
MiddleShine.Rate=20
MiddleShine.Lifetime=NumberRange.new(0.150000,0.150000)
MiddleShine.Speed=NumberRange.new(0.003960,0.003960)
MiddleShine.Rotation=NumberRange.new(90.000000,90.000000)
MiddleShine.RotSpeed=NumberRange.new(0.000000,0.000000)
MiddleShine.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,39.600002,0.000000),NumberSequenceKeypoint.new(1.000000,39.600002,0.000000)})
MiddleShine.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
MiddleShine.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
MiddleShine.LightEmission=1
MiddleShine.LightInfluence=0
MiddleShine.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
MiddleShine.Drag=0
MiddleShine.EmissionDirection=Enum.NormalId.Top
MiddleShine.SpreadAngle=Vector2.new(-0.001000,0.001000)
MiddleShine.ZOffset=0.01899999938905239
MiddleShine.Texture="rbxassetid://130506341047209"
MiddleShine.LockedToPart=true
MiddleShine.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
MiddleShine.FlipbookLayout=Enum.ParticleFlipbookLayout.None
MiddleShine.FlipbookMode=Enum.ParticleFlipbookMode.Loop
MiddleShine.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
MiddleShine.FlipbookStartRandom=false

local Dots=Instance.new("ParticleEmitter", Up)
Dots.Name="dots2"
Dots.Enabled=true
Dots.Rate=16
Dots.Lifetime=NumberRange.new(0.350000,0.350000)
Dots.Speed=NumberRange.new(0.003960,0.003960)
Dots.Rotation=NumberRange.new(-1000.000000,1000.000000)
Dots.RotSpeed=NumberRange.new(370.000000,480.000000)
Dots.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,3.960000),NumberSequenceKeypoint.new(0.100000,5.155280,3.960000),NumberSequenceKeypoint.new(0.200000,10.015199,3.960000),NumberSequenceKeypoint.new(0.300000,14.544775,3.960000),NumberSequenceKeypoint.new(0.400000,18.701113,3.960000),NumberSequenceKeypoint.new(0.500000,22.430717,3.960000),NumberSequenceKeypoint.new(0.600000,25.665651,3.960000),NumberSequenceKeypoint.new(0.700000,28.318333,3.960000),NumberSequenceKeypoint.new(0.800000,30.276039,3.960000),NumberSequenceKeypoint.new(0.900000,31.406551,3.960000),NumberSequenceKeypoint.new(1.000000,31.680000,3.960000),NumberSequenceKeypoint.new(1.000000,31.680000,3.960000)})
Dots.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500529,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Dots.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Dots.LightEmission=1
Dots.LightInfluence=0
Dots.Acceleration=Vector3.new(0.000000,15.840000,0.000000)
Dots.Drag=0
Dots.EmissionDirection=Enum.NormalId.Top
Dots.SpreadAngle=Vector2.new(3.000000,3.000000)
Dots.ZOffset=0.004999999888241291
Dots.Texture="http://www.roblox.com/asset/?id=120938961769825"
Dots.LockedToPart=true
Dots.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Dots.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dots.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dots.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Dots.FlipbookStartRandom=false

local Dot1=Instance.new("ParticleEmitter", Up)
Dot1.Name="dots1"
Dot1.Enabled=true
Dot1.Rate=10
Dot1.Lifetime=NumberRange.new(0.350000,0.350000)
Dot1.Speed=NumberRange.new(0.003960,0.003960)
Dot1.Rotation=NumberRange.new(-1000.000000,1000.000000)
Dot1.RotSpeed=NumberRange.new(240.000000,320.000000)
Dot1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,5.477485,0.000000),NumberSequenceKeypoint.new(0.200000,10.641149,0.000000),NumberSequenceKeypoint.new(0.300000,15.453823,0.000000),NumberSequenceKeypoint.new(0.400000,19.869934,0.000000),NumberSequenceKeypoint.new(0.500000,23.832636,0.000000),NumberSequenceKeypoint.new(0.600000,27.269754,0.000000),NumberSequenceKeypoint.new(0.700000,30.088230,0.000000),NumberSequenceKeypoint.new(0.800000,32.168289,0.000000),NumberSequenceKeypoint.new(0.900000,33.369457,0.000000),NumberSequenceKeypoint.new(1.000000,33.660000,0.000000),NumberSequenceKeypoint.new(1.000000,33.660000,0.000000)})
Dot1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.487500,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Dot1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Dot1.LightEmission=1
Dot1.LightInfluence=0
Dot1.Acceleration=Vector3.new(0.000000,15.840000,0.000000)
Dot1.Drag=0
Dot1.EmissionDirection=Enum.NormalId.Top
Dot1.SpreadAngle=Vector2.new(3.000000,3.000000)
Dot1.ZOffset=0.0010000000474974513
Dot1.Texture="http://www.roblox.com/asset/?id=107088533978725"
Dot1.LockedToPart=true
Dot1.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Dot1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dot1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dot1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Dot1.FlipbookStartRandom=false

local Cres=Instance.new("ParticleEmitter", Up)
Cres.Name="cres2"
Cres.Enabled=true
Cres.Rate=200
Cres.Lifetime=NumberRange.new(0.500000,0.500000)
Cres.Speed=NumberRange.new(0.003960,0.003960)
Cres.Rotation=NumberRange.new(-1000.000000,1000.000000)
Cres.RotSpeed=NumberRange.new(360.000000,460.000000)
Cres.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,0.326652,0.000000),NumberSequenceKeypoint.new(0.200000,1.567607,0.000000),NumberSequenceKeypoint.new(0.300000,3.620263,0.000000),NumberSequenceKeypoint.new(0.400000,6.332437,0.000000),NumberSequenceKeypoint.new(0.500000,9.589259,0.000000),NumberSequenceKeypoint.new(0.600000,13.305884,0.000000),NumberSequenceKeypoint.new(0.700000,17.418196,0.000000),NumberSequenceKeypoint.new(0.800000,21.876442,0.000000),NumberSequenceKeypoint.new(0.900000,26.641071,0.000000),NumberSequenceKeypoint.new(1.000000,31.680000,0.000000),NumberSequenceKeypoint.new(1.000000,31.680000,0.000000)})
Cres.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499471,0.475000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Cres.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Cres.LightEmission=1
Cres.LightInfluence=0
Cres.Acceleration=Vector3.new(0.000000,55.440002,0.000000)
Cres.Drag=0
Cres.EmissionDirection=Enum.NormalId.Top
Cres.SpreadAngle=Vector2.new(-10.000000,10.000000)
Cres.ZOffset=0.004000000189989805
Cres.Texture="http://www.roblox.com/asset/?id=135462576986596"
Cres.LockedToPart=true
Cres.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cres.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
Cres.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cres.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Cres.FlipbookStartRandom=false

local Glow=Instance.new("ParticleEmitter", Up)
Glow.Name="overlayglow"
Glow.Enabled=true
Glow.Rate=2
Glow.Lifetime=NumberRange.new(1.000000,1.000000)
Glow.Speed=NumberRange.new(0.181274,0.181274)
Glow.Rotation=NumberRange.new(0.000000,0.000000)
Glow.RotSpeed=NumberRange.new(0.000000,0.000000)
Glow.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,49.500004,0.000000),NumberSequenceKeypoint.new(1.000000,49.500004,0.000000)})
Glow.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500529,0.250000,0.025000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Glow.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Glow.LightEmission=1
Glow.LightInfluence=0
Glow.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Glow.Drag=0
Glow.EmissionDirection=Enum.NormalId.Top
Glow.SpreadAngle=Vector2.new(-0.001000,0.001000)
Glow.ZOffset=0.10499999672174454
Glow.Texture="rbxassetid://448862775"
Glow.LockedToPart=true
Glow.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Glow.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Glow.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Glow.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Glow.FlipbookStartRandom=false

local MiddleBlack=Instance.new("ParticleEmitter", Up)
MiddleBlack.Name="midblack"
MiddleBlack.Enabled=true
MiddleBlack.Rate=2
MiddleBlack.Lifetime=NumberRange.new(1.000000,1.000000)
MiddleBlack.Speed=NumberRange.new(0.008901,0.008901)
MiddleBlack.Rotation=NumberRange.new(90.000000,90.000000)
MiddleBlack.RotSpeed=NumberRange.new(0.000000,0.000000)
MiddleBlack.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,11.880000,0.000000),NumberSequenceKeypoint.new(1.000000,11.880000,0.000000)})
MiddleBlack.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500505,0.493750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
MiddleBlack.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
MiddleBlack.LightEmission=-1
MiddleBlack.LightInfluence=0
MiddleBlack.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
MiddleBlack.Drag=0
MiddleBlack.EmissionDirection=Enum.NormalId.Top
MiddleBlack.SpreadAngle=Vector2.new(-0.001000,0.001000)
MiddleBlack.ZOffset=0.017999999225139618
MiddleBlack.Texture="rbxassetid://13816054573"
MiddleBlack.LockedToPart=true
MiddleBlack.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
MiddleBlack.FlipbookLayout=Enum.ParticleFlipbookLayout.None
MiddleBlack.FlipbookMode=Enum.ParticleFlipbookMode.Loop
MiddleBlack.FlipbookFramerate=NumberRange.new(1.800000,1.800000)
MiddleBlack.FlipbookStartRandom=false

local MiddleShine=Instance.new("ParticleEmitter", Up)
MiddleShine.Name="midshine"
MiddleShine.Enabled=false
MiddleShine.Rate=20
MiddleShine.Lifetime=NumberRange.new(0.150000,0.150000)
MiddleShine.Speed=NumberRange.new(0.003960,0.003960)
MiddleShine.Rotation=NumberRange.new(90.000000,90.000000)
MiddleShine.RotSpeed=NumberRange.new(0.000000,0.000000)
MiddleShine.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,13.200001,0.000000),NumberSequenceKeypoint.new(1.000000,13.200001,0.000000)})
MiddleShine.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
MiddleShine.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
MiddleShine.LightEmission=1
MiddleShine.LightInfluence=0
MiddleShine.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
MiddleShine.Drag=0
MiddleShine.EmissionDirection=Enum.NormalId.Front
MiddleShine.SpreadAngle=Vector2.new(-0.001000,0.001000)
MiddleShine.ZOffset=0.01899999938905239
MiddleShine.Texture="rbxassetid://130506341047209"
MiddleShine.LockedToPart=true
MiddleShine.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
MiddleShine.FlipbookLayout=Enum.ParticleFlipbookLayout.None
MiddleShine.FlipbookMode=Enum.ParticleFlipbookMode.Loop
MiddleShine.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
MiddleShine.FlipbookStartRandom=false

local Cres1=Instance.new("ParticleEmitter", Up)
Cres1.Name="cres1"
Cres1.Enabled=true
Cres1.Rate=11
Cres1.Lifetime=NumberRange.new(0.500000,0.500000)
Cres1.Speed=NumberRange.new(0.003960,0.003960)
Cres1.Rotation=NumberRange.new(-1000.000000,1000.000000)
Cres1.RotSpeed=NumberRange.new(360.000000,460.000000)
Cres1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,0.326652,0.000000),NumberSequenceKeypoint.new(0.200000,1.567607,0.000000),NumberSequenceKeypoint.new(0.300000,3.620263,0.000000),NumberSequenceKeypoint.new(0.400000,6.332437,0.000000),NumberSequenceKeypoint.new(0.500000,9.589259,0.000000),NumberSequenceKeypoint.new(0.600000,13.305884,0.000000),NumberSequenceKeypoint.new(0.700000,17.418196,0.000000),NumberSequenceKeypoint.new(0.800000,21.876442,0.000000),NumberSequenceKeypoint.new(0.900000,26.641071,0.000000),NumberSequenceKeypoint.new(1.000000,31.680000,0.000000),NumberSequenceKeypoint.new(1.000000,31.680000,0.000000)})
Cres1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.199789,0.256250,0.000000),NumberSequenceKeypoint.new(0.500529,0.018750,0.000000),NumberSequenceKeypoint.new(0.800740,0.231250,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Cres1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Cres1.LightEmission=1
Cres1.LightInfluence=0
Cres1.Acceleration=Vector3.new(0.000000,39.600002,0.000000)
Cres1.Drag=0
Cres1.EmissionDirection=Enum.NormalId.Top
Cres1.SpreadAngle=Vector2.new(3.000000,3.000000)
Cres1.ZOffset=0.003000000026077032
Cres1.Texture="rbxassetid://14823342622"
Cres1.LockedToPart=true
Cres1.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cres1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Cres1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cres1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Cres1.FlipbookStartRandom=false

local Black=Instance.new("ParticleEmitter", Up)
Black.Name="black1"
Black.Enabled=true
Black.Rate=40
Black.Lifetime=NumberRange.new(0.350000,0.350000)
Black.Speed=NumberRange.new(0.003960,0.003960)
Black.Rotation=NumberRange.new(-1000.000000,1000.000000)
Black.RotSpeed=NumberRange.new(0.000000,0.000000)
Black.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,7.963223,0.000000),NumberSequenceKeypoint.new(0.200000,15.481790,0.000000),NumberSequenceKeypoint.new(0.300000,22.503351,0.000000),NumberSequenceKeypoint.new(0.400000,28.963526,0.000000),NumberSequenceKeypoint.new(0.500000,34.781658,0.000000),NumberSequenceKeypoint.new(0.600000,39.854507,0.000000),NumberSequenceKeypoint.new(0.700000,44.047138,0.000000),NumberSequenceKeypoint.new(0.800000,47.181118,0.000000),NumberSequenceKeypoint.new(0.900000,49.033054,0.000000),NumberSequenceKeypoint.new(1.000000,49.500004,0.000000),NumberSequenceKeypoint.new(1.000000,49.500004,0.000000)})
Black.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Black.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Black.LightEmission=0.5
Black.LightInfluence=0
Black.Acceleration=Vector3.new(0.000000,5.280000,0.000000)
Black.Drag=0
Black.EmissionDirection=Enum.NormalId.Top
Black.SpreadAngle=Vector2.new(-0.001000,0.001000)
Black.ZOffset=-0.003000000026077032
Black.Texture="rbxassetid://16310636399"
Black.LockedToPart=true
Black.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Black.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Black.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Black.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Black.FlipbookStartRandom=false

local Black2=Instance.new("ParticleEmitter", Up)
Black2.Name="black2"
Black2.Enabled=true
Black2.Rate=24
Black2.Lifetime=NumberRange.new(0.350000,0.350000)
Black2.Speed=NumberRange.new(0.003960,0.003960)
Black2.Rotation=NumberRange.new(-1000.000000,1000.000000)
Black2.RotSpeed=NumberRange.new(0.000000,0.000000)
Black2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,8.055125,0.000000),NumberSequenceKeypoint.new(0.200000,15.648747,0.000000),NumberSequenceKeypoint.new(0.300000,22.726210,0.000000),NumberSequenceKeypoint.new(0.400000,29.220490,0.000000),NumberSequenceKeypoint.new(0.500000,35.047997,0.000000),NumberSequenceKeypoint.new(0.600000,40.102581,0.000000),NumberSequenceKeypoint.new(0.700000,44.247402,0.000000),NumberSequenceKeypoint.new(0.800000,47.306313,0.000000),NumberSequenceKeypoint.new(0.900000,49.072735,0.000000),NumberSequenceKeypoint.new(1.000000,49.500004,0.000000),NumberSequenceKeypoint.new(1.000000,49.500004,0.000000)})
Black2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Black2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Black2.LightEmission=0.5
Black2.LightInfluence=0
Black2.Acceleration=Vector3.new(0.000000,5.280000,0.000000)
Black2.Drag=0
Black2.EmissionDirection=Enum.NormalId.Top
Black2.SpreadAngle=Vector2.new(-0.001000,0.001000)
Black2.ZOffset=-0.0020000000949949026
Black2.Texture="rbxassetid://14265652323"
Black2.LockedToPart=true
Black2.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Black2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Black2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Black2.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Black2.FlipbookStartRandom=false

local Rgb=Instance.new("ParticleEmitter", Up)
Rgb.Name="rgb"
Rgb.Enabled=true
Rgb.Rate=2
Rgb.Lifetime=NumberRange.new(1.000000,1.000000)
Rgb.Speed=NumberRange.new(0.026400,0.026400)
Rgb.Rotation=NumberRange.new(-1000.000000,1000.000000)
Rgb.RotSpeed=NumberRange.new(0.000000,0.000000)
Rgb.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,35.640003,0.000000),NumberSequenceKeypoint.new(1.000000,35.640003,0.000000)})
Rgb.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.501057,0.912500,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Rgb.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Rgb.LightEmission=1
Rgb.LightInfluence=0
Rgb.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Rgb.Drag=0
Rgb.EmissionDirection=Enum.NormalId.Top
Rgb.SpreadAngle=Vector2.new(0.000000,0.000000)
Rgb.ZOffset=1.5820000171661377
Rgb.Texture="rbxassetid://12188469991"
Rgb.LockedToPart=true
Rgb.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Rgb.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Rgb.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Rgb.FlipbookFramerate=NumberRange.new(24.000000,24.000000)
Rgb.FlipbookStartRandom=true

local LightRay=Instance.new("ParticleEmitter", Up)
LightRay.Name="lightray"
LightRay.Enabled=false
LightRay.Rate=4
LightRay.Lifetime=NumberRange.new(0.500000,0.500000)
LightRay.Speed=NumberRange.new(0.003742,0.003742)
LightRay.Rotation=NumberRange.new(0.000000,0.000000)
LightRay.RotSpeed=NumberRange.new(0.000000,0.000000)
LightRay.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,52.800003,0.000000),NumberSequenceKeypoint.new(1.000000,52.800003,0.000000)})
LightRay.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.375000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
LightRay.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
LightRay.LightEmission=1
LightRay.LightInfluence=0
LightRay.Acceleration=Vector3.new(0.000000,5.280000,0.000000)
LightRay.Drag=0
LightRay.EmissionDirection=Enum.NormalId.Top
LightRay.SpreadAngle=Vector2.new(0.000000,0.000000)
LightRay.ZOffset=-0.007000000216066837
LightRay.Texture="http://www.roblox.com/asset/?id=110916635681283"
LightRay.LockedToPart=true
LightRay.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
LightRay.FlipbookLayout=Enum.ParticleFlipbookLayout.None
LightRay.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
LightRay.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
LightRay.FlipbookStartRandom=false

local Dark3=Instance.new("ParticleEmitter", Up)
Dark3.Name="dark2"
Dark3.Enabled=true
Dark3.Rate=10
Dark3.Lifetime=NumberRange.new(0.350000,0.350000)
Dark3.Speed=NumberRange.new(0.003960,0.003960)
Dark3.Rotation=NumberRange.new(-1000.000000,1000.000000)
Dark3.RotSpeed=NumberRange.new(300.000000,300.000000)
Dark3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,12.888200,0.000000),NumberSequenceKeypoint.new(0.200000,25.037996,0.000000),NumberSequenceKeypoint.new(0.300000,36.361938,0.000000),NumberSequenceKeypoint.new(0.400000,46.752785,0.000000),NumberSequenceKeypoint.new(0.500000,56.076794,0.000000),NumberSequenceKeypoint.new(0.600000,64.164131,0.000000),NumberSequenceKeypoint.new(0.700000,70.795830,0.000000),NumberSequenceKeypoint.new(0.800000,75.690094,0.000000),NumberSequenceKeypoint.new(0.900000,78.516373,0.000000),NumberSequenceKeypoint.new(1.000000,79.200005,0.000000),NumberSequenceKeypoint.new(1.000000,79.200005,0.000000)})
Dark3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500529,0.943750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Dark3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Dark3.LightEmission=1
Dark3.LightInfluence=0
Dark3.Acceleration=Vector3.new(0.000000,15.840000,0.000000)
Dark3.Drag=0
Dark3.EmissionDirection=Enum.NormalId.Top
Dark3.SpreadAngle=Vector2.new(-0.001000,0.001000)
Dark3.ZOffset=0
Dark3.Texture="http://www.roblox.com/asset/?id=88463488892653"
Dark3.LockedToPart=true
Dark3.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Dark3.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Dark3.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dark3.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Dark3.FlipbookStartRandom=false

local Dark4=Instance.new("ParticleEmitter", Up)
Dark4.Name="dark1"
Dark4.Enabled=true
Dark4.Rate=14
Dark4.Lifetime=NumberRange.new(0.250000,0.250000)
Dark4.Speed=NumberRange.new(0.003960,0.003960)
Dark4.Rotation=NumberRange.new(-1000.000000,1000.000000)
Dark4.RotSpeed=NumberRange.new(0.000000,0.000000)
Dark4.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,7.007636,0.000000),NumberSequenceKeypoint.new(0.200000,13.623977,0.000000),NumberSequenceKeypoint.new(0.300000,19.802948,0.000000),NumberSequenceKeypoint.new(0.400000,25.487906,0.000000),NumberSequenceKeypoint.new(0.500000,30.607859,0.000000),NumberSequenceKeypoint.new(0.600000,35.071972,0.000000),NumberSequenceKeypoint.new(0.700000,38.761478,0.000000),NumberSequenceKeypoint.new(0.800000,41.519386,0.000000),NumberSequenceKeypoint.new(0.900000,43.149090,0.000000),NumberSequenceKeypoint.new(1.000000,43.560001,0.000000),NumberSequenceKeypoint.new(1.000000,43.560001,0.000000)})
Dark4.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.712500,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Dark4.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Dark4.LightEmission=1
Dark4.LightInfluence=0
Dark4.Acceleration=Vector3.new(0.000000,15.840000,0.000000)
Dark4.Drag=0
Dark4.EmissionDirection=Enum.NormalId.Top
Dark4.SpreadAngle=Vector2.new(-0.001000,0.001000)
Dark4.ZOffset=-0.0010000000474974513
Dark4.Texture="rbxassetid://135597498346619"
Dark4.LockedToPart=true
Dark4.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Dark4.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dark4.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dark4.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Dark4.FlipbookStartRandom=false





local CubeModel=i("Model", fx)
CubeModel.Name="CubeModel"
CubeModel:SetAttribute("AuraInstance", true)

 CUBE2_18642=i("Part", CubeModel)
CUBE2_18642.Name="CUBE2"
CUBE2_18642:SetAttribute("AuraInstance", true)
CUBE2_18642.Anchored = true
CUBE2_18642.CanCollide = false
CUBE2_18642.CanQuery = false
CUBE2_18642.CanTouch = false
CUBE2_18642.Transparency = .5
CUBE2_18642.Reflectance = 0
CUBE2_18642.Color = c3(1.000000,0.309804,0.784314)
CUBE2_18642.Material = Enum.Material.ForceField
CUBE2_18642.Size = v3(10.354108,10.354108,10.354108)
CUBE2_18642.CastShadow = false
CUBE2_18642.Massless = true

 Mesh_18644=i("SpecialMesh", CUBE2_18642)
Mesh_18644.Name="Mesh"
Mesh_18644:SetAttribute("AuraInstance", true)
Mesh_18644.MeshType = Enum.MeshType.FileMesh
Mesh_18644.MeshId = ""
Mesh_18644.TextureId = "http://www.roblox.com/asset/?id=15414630817"
Mesh_18644.Scale = v3(10.354108,10.354105,10.354108)
Mesh_18644.Offset = v3(0.000000,0.000000,0.000000)
Mesh_18644.VertexColor = v3(0.000000,0.000000,0.000000)

 top_18645=i("Attachment", CubeModel)
top_18645.Name="top"
top_18645:SetAttribute("AuraInstance", true)
top_18645.Position = v3(0.000000,35,0.000000)
top_18645.Visible = false


 black_18648=i("ParticleEmitter", top_18645)
black_18648.Name="black"
black_18648:SetAttribute("EmitDelay", 0)
black_18648:SetAttribute("AuraInstance", true)
black_18648:SetAttribute("EmitDuration", 0)
black_18648:SetAttribute("EmitCount", 1)
black_18648.Enabled = true
black_18648.Rate = 2
black_18648.Lifetime = nr(1,1)
black_18648.Speed = nr(0.002325177425518632,0.002325177425518632)
black_18648.Rotation = nr(0,0)
black_18648.RotSpeed = nr(0,0)
black_18648.Size = ns({nsk(0.000000,13.200001,0.000000),nsk(1.000000,13.200001,0.000000)})
black_18648.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
black_18648.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
black_18648.LightEmission = 0
black_18648.LightInfluence = 0
black_18648.Acceleration = v3(0.000000,0.000000,0.000001)
black_18648.Drag = 0
black_18648.EmissionDirection = Enum.NormalId.Top
black_18648.SpreadAngle = v2(360000.000000,360000.000000)
black_18648.ZOffset = 0.11999999731779099
black_18648.Texture = "rbxassetid://98046010009179"
black_18648.LockedToPart = true
black_18648.Orientation = Enum.ParticleOrientation.FacingCamera
black_18648.FlipbookLayout = Enum.ParticleFlipbookLayout.None
black_18648.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
black_18648.FlipbookFramerate = nr(1,1)
black_18648.FlipbookStartRandom = false
black_18648.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.112500)})

 arrow_18649=i("ParticleEmitter", top_18645)
arrow_18649.Name="arrow"
arrow_18649:SetAttribute("EmitDelay", 0)
arrow_18649:SetAttribute("AuraInstance", true)
arrow_18649:SetAttribute("EmitDuration", 0)
arrow_18649:SetAttribute("EmitCount", 1)
arrow_18649.Enabled = true
arrow_18649.Rate = 8
arrow_18649.Lifetime = nr(0.30000001192092896,0.30000001192092896)
arrow_18649.Speed = nr(0.002325177425518632,0.002325177425518632)
arrow_18649.Rotation = nr(180,180)
arrow_18649.RotSpeed = nr(0,0)
arrow_18649.Size = ns({nsk(0.000000,4.200000,0.000000),nsk(1.000000,4.200000,0.000000)})
arrow_18649.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
arrow_18649.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
arrow_18649.LightEmission = 1
arrow_18649.LightInfluence = 0
arrow_18649.Acceleration = v3(0.000000,0.000000,0.000001)
arrow_18649.Drag = 0
arrow_18649.EmissionDirection = Enum.NormalId.Top
arrow_18649.SpreadAngle = v2(360000.000000,360000.000000)
arrow_18649.ZOffset = 0.9990000128746033
arrow_18649.Texture = "rbxassetid://14164156363"
arrow_18649.LockedToPart = true
arrow_18649.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
arrow_18649.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
arrow_18649.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
arrow_18649.FlipbookFramerate = nr(1,1)
arrow_18649.FlipbookStartRandom = false
arrow_18649.Squash = ns({nsk(0.000000,-0.200000,0.000000),nsk(1.000000,-0.200000,0.000000)})

 dynamicray_18650=i("ParticleEmitter", top_18645)
dynamicray_18650.Name="dynamicray"
dynamicray_18650:SetAttribute("EmitDuration", 0)
dynamicray_18650:SetAttribute("AuraInstance", true)
dynamicray_18650.Enabled = true
dynamicray_18650.Rate = 20
dynamicray_18650.Lifetime = nr(1,1)
dynamicray_18650.Speed = nr(0.024000000208616257,0.024000000208616257)
dynamicray_18650.Rotation = nr(-1000,1000)
dynamicray_18650.RotSpeed = nr(-100,100)
dynamicray_18650.Size = ns({nsk(0.000000,2.400000,0.000000),nsk(0.269928,13.419712,0.000000),nsk(0.781928,16.392323,0.000000),nsk(1.000000,4.992133,0.000000)})
dynamicray_18650.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.843750,0.000000),nsk(1.000000,1.000000,0.000000)})
dynamicray_18650.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dynamicray_18650.LightEmission = 1
dynamicray_18650.LightInfluence = 0
dynamicray_18650.Acceleration = v3(0.000000,0.000000,0.000001)
dynamicray_18650.Drag = 0
dynamicray_18650.EmissionDirection = Enum.NormalId.Top
dynamicray_18650.SpreadAngle = v2(-1000.000000,1000.000000)
dynamicray_18650.ZOffset = 0.0020000000949949026
dynamicray_18650.Texture = "rbxassetid://14816531981"
dynamicray_18650.LockedToPart = true
dynamicray_18650.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dynamicray_18650.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dynamicray_18650.FlipbookMode = Enum.ParticleFlipbookMode.Loop
dynamicray_18650.FlipbookFramerate = nr(1,1)
dynamicray_18650.FlipbookStartRandom = false
dynamicray_18650.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots2_18651=i("ParticleEmitter", top_18645)
dots2_18651.Name="dots2"
dots2_18651:SetAttribute("EmitDelay", 0)
dots2_18651:SetAttribute("AuraInstance", true)
dots2_18651:SetAttribute("EmitDuration", 0)
dots2_18651:SetAttribute("EmitCount", 0)
dots2_18651.Enabled = true
dots2_18651.Rate = 16
dots2_18651.Lifetime = nr(0.3499999940395355,0.44999998807907104)
dots2_18651.Speed = nr(0.023231998085975647,0.023231998085975647)
dots2_18651.Rotation = nr(-1000,1000)
dots2_18651.RotSpeed = nr(-20,20)
dots2_18651.Size = ns({nsk(0.000000,2.999786,0.000000),nsk(1.000000,6.935350,0.000000)})
dots2_18651.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499160,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots2_18651.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots2_18651.LightEmission = 1
dots2_18651.LightInfluence = 0
dots2_18651.Acceleration = v3(0.000000,0.000000,0.000001)
dots2_18651.Drag = 0
dots2_18651.EmissionDirection = Enum.NormalId.Top
dots2_18651.SpreadAngle = v2(-1000.000000,1000.000000)
dots2_18651.ZOffset = 1.0230000019073486
dots2_18651.Texture = "http://www.roblox.com/asset/?id=71378521378854"
dots2_18651.LockedToPart = true
dots2_18651.Orientation = Enum.ParticleOrientation.FacingCamera
dots2_18651.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
dots2_18651.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots2_18651.FlipbookFramerate = nr(1,1)
dots2_18651.FlipbookStartRandom = false
dots2_18651.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 fog_18652=i("ParticleEmitter", top_18645)
fog_18652.Name="fog"
fog_18652:SetAttribute("EmitDelay", 0)
fog_18652:SetAttribute("AuraInstance", true)
fog_18652:SetAttribute("EmitDuration", 0)
fog_18652:SetAttribute("EmitCount", 0)
fog_18652.Enabled = true
fog_18652.Rate = 11
fog_18652.Lifetime = nr(0.4000000059604645,0.550000011920929)
fog_18652.Speed = nr(0.023231998085975647,0.023231998085975647)
fog_18652.Rotation = nr(-1000,1000)
fog_18652.RotSpeed = nr(-20,20)
fog_18652.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.235091,0.000000),nsk(0.200000,1.128202,0.000000),nsk(0.300000,2.605492,0.000000),nsk(0.400000,4.557436,0.000000),nsk(0.500000,6.901361,0.000000),nsk(0.600000,9.576204,0.000000),nsk(0.700000,12.535823,0.000000),nsk(0.800000,15.744408,0.000000),nsk(0.900000,19.173498,0.000000),nsk(1.000000,22.800001,0.000000),nsk(1.000000,22.800001,0.000000)})
fog_18652.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499160,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
fog_18652.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
fog_18652.LightEmission = 1
fog_18652.LightInfluence = 0
fog_18652.Acceleration = v3(0.000000,0.000000,0.000001)
fog_18652.Drag = 0
fog_18652.EmissionDirection = Enum.NormalId.Top
fog_18652.SpreadAngle = v2(-1000.000000,1000.000000)
fog_18652.ZOffset = 1.0240000486373901
fog_18652.Texture = "rbxassetid://11446801985"
fog_18652.LockedToPart = true
fog_18652.Orientation = Enum.ParticleOrientation.FacingCamera
fog_18652.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fog_18652.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog_18652.FlipbookFramerate = nr(1,1)
fog_18652.FlipbookStartRandom = false
fog_18652.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 lightray_18653=i("ParticleEmitter", top_18645)
lightray_18653.Name="lightray"
lightray_18653:SetAttribute("EmitDuration", 0)
lightray_18653:SetAttribute("AuraInstance", true)
lightray_18653.Enabled = true
lightray_18653.Rate = 2
lightray_18653.Lifetime = nr(1,1)
lightray_18653.Speed = nr(0.003401397028937936,0.003401397028937936)
lightray_18653.Rotation = nr(0,0)
lightray_18653.RotSpeed = nr(0,0)
lightray_18653.Size = ns({nsk(0.000000,8.400001,0.000000),nsk(1.000000,8.400001,0.000000)})
lightray_18653.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.418750,0.000000),nsk(1.000000,1.000000,0.000000)})
lightray_18653.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lightray_18653.LightEmission = 1
lightray_18653.LightInfluence = 0
lightray_18653.Acceleration = v3(0.000000,0.000000,0.000001)
lightray_18653.Drag = 0
lightray_18653.EmissionDirection = Enum.NormalId.Top
lightray_18653.SpreadAngle = v2(-1000.000000,1000.000000)
lightray_18653.ZOffset = 1.5549999475479126
lightray_18653.Texture = "http://www.roblox.com/asset/?id=110916635681283"
lightray_18653.LockedToPart = true
lightray_18653.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
lightray_18653.FlipbookLayout = Enum.ParticleFlipbookLayout.None
lightray_18653.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightray_18653.FlipbookFramerate = nr(1,1)
lightray_18653.FlipbookStartRandom = false
lightray_18653.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

 rgb_18654=i("ParticleEmitter", top_18645)
rgb_18654.Name="rgb"
rgb_18654:SetAttribute("EmitDelay", 0)
rgb_18654:SetAttribute("AuraInstance", true)
rgb_18654:SetAttribute("EmitDuration", 0)
rgb_18654:SetAttribute("EmitCount", 2)
rgb_18654.Enabled = true
rgb_18654.Rate = 2
rgb_18654.Lifetime = nr(1,1)
rgb_18654.Speed = nr(0.024000000208616257,0.024000000208616257)
rgb_18654.Rotation = nr(90,90)
rgb_18654.RotSpeed = nr(0,0)
rgb_18654.Size = ns({nsk(0.000000,6.600000,0.000000),nsk(1.000000,6.600000,0.000000)})
rgb_18654.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.762500,0.000000),nsk(1.000000,1.000000,0.000000)})
rgb_18654.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
rgb_18654.LightEmission = 1
rgb_18654.LightInfluence = 0
rgb_18654.Acceleration = v3(0.000000,0.000000,0.000001)
rgb_18654.Drag = 0
rgb_18654.EmissionDirection = Enum.NormalId.Front
rgb_18654.SpreadAngle = v2(0.000000,0.000000)
rgb_18654.ZOffset = 1.5110000371932983
rgb_18654.Texture = "http://www.roblox.com/asset/?id=93770560073153"
rgb_18654.LockedToPart = true
rgb_18654.Orientation = Enum.ParticleOrientation.FacingCamera
rgb_18654.FlipbookLayout = Enum.ParticleFlipbookLayout.None
rgb_18654.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
rgb_18654.FlipbookFramerate = nr(24,24)
rgb_18654.FlipbookStartRandom = true
rgb_18654.Squash = ns({nsk(0.000000,0.100000,0.000000),nsk(1.000000,0.100000,0.000000)})

 trail_18655=i("Attachment", top_18645)
trail_18655.Name="trail"
trail_18655:SetAttribute("AuraInstance", true)
trail_18655.Position = v3(0.000000,0.000000,0.000000)
trail_18655.Visible = false

 Attachment_18656=i("Attachment", trail_18655)
Attachment_18656.Name="Attachment"
Attachment_18656:SetAttribute("AuraInstance", true)
Attachment_18656.Position = v3(11.213965,0.000000,0.000000)
Attachment_18656.Visible = false

 Trail_18657=i("Trail", trail_18655)
Trail_18657.Name="Trail"
Trail_18657:SetAttribute("EmitDuration", 0)
Trail_18657:SetAttribute("AuraInstance", true)
Trail_18657.Enabled = true
Trail_18657.Lifetime = 0.20000000298023224
Trail_18657.FaceCamera = true
Trail_18657.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18657.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18657.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18657.Texture = "rbxassetid://14050984567"
Trail_18657.TextureLength = 1.2000000476837158
Trail_18657.LightEmission = 1
Trail_18657.LightInfluence = 0

 Attachment_18658=i("Attachment", trail_18655)
Attachment_18658.Name="Attachment"
Attachment_18658:SetAttribute("AuraInstance", true)
Attachment_18658.Position = v3(-10.779566,0.000000,0.000000)
Attachment_18658.Visible = false

 Attachment_18659=i("Attachment", CUBE2_18642)
Attachment_18659.Name="Attachment"
Attachment_18659:SetAttribute("AuraInstance", true)
Attachment_18659.Position = v3(0.000000,-4.937055,0.000000)
Attachment_18659.Visible = false

 mid_18660=i("Attachment", CUBE2_18642)
mid_18660.Name="mid"
mid_18660:SetAttribute("AuraInstance", true)
mid_18660.Position = v3(0.000000,0.000000,0.000000)
mid_18660.Visible = false

 devour_18661=i("ParticleEmitter", mid_18660)
devour_18661.Name="devour"
devour_18661:SetAttribute("EmitDuration", 0)
devour_18661:SetAttribute("AuraInstance", true)
devour_18661.Enabled = true
devour_18661.Rate = 50
devour_18661.Lifetime = nr(0.07500000298023224,0.125)
devour_18661.Speed = nr(0.0008311713463626802,0.0008311713463626802)
devour_18661.Rotation = nr(-1000,1000)
devour_18661.RotSpeed = nr(0,0)
devour_18661.Size = ns({nsk(0.000000,10.275001,0.000000),nsk(1.000000,8.099999,0.873381)})
devour_18661.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.241299,0.000000,0.000000),nsk(0.794664,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
devour_18661.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
devour_18661.LightEmission = 0
devour_18661.LightInfluence = 0
devour_18661.Acceleration = v3(0.000000,0.000000,0.000001)
devour_18661.Drag = 0
devour_18661.EmissionDirection = Enum.NormalId.Top
devour_18661.SpreadAngle = v2(-1000.000000,1000.000000)
devour_18661.ZOffset = 2.002000093460083
devour_18661.Texture = "http://www.roblox.com/asset/?id=85608882490131"
devour_18661.LockedToPart = true
devour_18661.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
devour_18661.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
devour_18661.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
devour_18661.FlipbookFramerate = nr(1,1)
devour_18661.FlipbookStartRandom = false
devour_18661.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})



















 CUBE_18549=i("Part", CubeModel)
CUBE_18549.Name="CUBE"
CUBE_18549:SetAttribute("AuraInstance", true)
CUBE_18549.Anchored = true
CUBE_18549.CanCollide = false
CUBE_18549.CanQuery = false
CUBE_18549.CanTouch = false
CUBE_18549.Transparency = .5
CUBE_18549.Reflectance = 0
CUBE_18549.Color = c3(1.000000,0.309804,0.784314)
CUBE_18549.Material = Enum.Material.ForceField
CUBE_18549.Size = v3(11.554108,11.554108,11.554108)
CUBE_18549.CastShadow = false
CUBE_18549.Massless = true

 Mesh_18663=i("SpecialMesh", CUBE_18549)
Mesh_18663.Name="Mesh"
Mesh_18663:SetAttribute("AuraInstance", true)
Mesh_18663.MeshType = Enum.MeshType.FileMesh
Mesh_18663.MeshId = ""
Mesh_18663.TextureId = "http://www.roblox.com/asset/?id=15414630817"
Mesh_18663.Scale = v3(11.554108,11.554104,11.554108)
Mesh_18663.Offset = v3(0.000000,0.000000,0.000000)
Mesh_18663.VertexColor = v3(0.000000,0.000000,0.000000)

 mid_18664=i("Attachment", CUBE_18549)
mid_18664.Name="mid"
mid_18664:SetAttribute("AuraInstance", true)
mid_18664.Position = v3(0.000000,0.000000,0.000000)
mid_18664.Visible = false

 ring_18665=i("Attachment", mid_18664)
ring_18665.Name="ring"
ring_18665:SetAttribute("AuraInstance", true)
ring_18665.Position = v3(0.000110,0.000268,0.000000)
ring_18665.Visible = false

 s_18666=i("Attachment", ring_18665)
s_18666.Name="s"
s_18666:SetAttribute("AuraInstance", true)
s_18666.Position = v3(0.000000,0.000002,0.000000)
s_18666.Visible = false

 Instance_18667=i("Attachment", s_18666)
Instance_18667.Name="!"
Instance_18667:SetAttribute("AuraInstance", true)
Instance_18667.Position = v3(0.000000,0.000000,0.000000)
Instance_18667.Visible = false

 Beam_18668=i("Beam", Instance_18667)
Beam_18668.Name="Beam"
Beam_18668:SetAttribute("EmitDuration", 0)
Beam_18668:SetAttribute("AuraInstance", true)
Beam_18668.Enabled = false
Beam_18668.Width0 = 1.3200000524520874
Beam_18668.Width1 = 1.3200000524520874
Beam_18668.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18668.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18668.CurveSize0 = 6.600000381469727
Beam_18668.CurveSize1 = 0
Beam_18668.FaceCamera = false
Beam_18668.LightEmission = 1
Beam_18668.LightInfluence = 0
Beam_18668.Segments = 100
Beam_18668.Texture = "rbxassetid://16310670422"
Beam_18668.TextureLength = 1.375
Beam_18668.TextureSpeed = 2.287923812866211

 Beam_18669=i("Beam", Instance_18667)
Beam_18669.Name="Beam"
Beam_18669:SetAttribute("EmitDuration", 0)
Beam_18669:SetAttribute("AuraInstance", true)
Beam_18669.Enabled = false
Beam_18669.Width0 = 1.3200000524520874
Beam_18669.Width1 = 1.3200000524520874
Beam_18669.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18669.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18669.CurveSize0 = 6.600000381469727
Beam_18669.CurveSize1 = 0
Beam_18669.FaceCamera = false
Beam_18669.LightEmission = 1
Beam_18669.LightInfluence = 0
Beam_18669.Segments = 100
Beam_18669.Texture = "rbxassetid://16310670422"
Beam_18669.TextureLength = 1.375
Beam_18669.TextureSpeed = 2.287923812866211

 Beam_18670=i("Beam", Instance_18667)
Beam_18670.Name="Beam"
Beam_18670:SetAttribute("EmitDuration", 0)
Beam_18670:SetAttribute("AuraInstance", true)
Beam_18670.Enabled = false
Beam_18670.Width0 = 1.3200000524520874
Beam_18670.Width1 = 1.3200000524520874
Beam_18670.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18670.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18670.CurveSize0 = 6.600000381469727
Beam_18670.CurveSize1 = 0
Beam_18670.FaceCamera = false
Beam_18670.LightEmission = 1
Beam_18670.LightInfluence = 0
Beam_18670.Segments = 100
Beam_18670.Texture = "rbxassetid://16310670422"
Beam_18670.TextureLength = 1.375
Beam_18670.TextureSpeed = 2.287923812866211

 Beam_18671=i("Beam", Instance_18667)
Beam_18671.Name="Beam"
Beam_18671:SetAttribute("EmitDuration", 0)
Beam_18671:SetAttribute("AuraInstance", true)
Beam_18671.Enabled = false
Beam_18671.Width0 = 1.3200000524520874
Beam_18671.Width1 = 1.3200000524520874
Beam_18671.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18671.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18671.CurveSize0 = 6.600000381469727
Beam_18671.CurveSize1 = 0
Beam_18671.FaceCamera = false
Beam_18671.LightEmission = 1
Beam_18671.LightInfluence = 0
Beam_18671.Segments = 100
Beam_18671.Texture = "rbxassetid://16310670422"
Beam_18671.TextureLength = 1.375
Beam_18671.TextureSpeed = 2.287923812866211

 Beam_18672=i("Beam", Instance_18667)
Beam_18672.Name="Beam"
Beam_18672:SetAttribute("EmitDuration", 0)
Beam_18672:SetAttribute("AuraInstance", true)
Beam_18672.Enabled = false
Beam_18672.Width0 = 1.3200000524520874
Beam_18672.Width1 = 1.3200000524520874
Beam_18672.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18672.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18672.CurveSize0 = 6.600000381469727
Beam_18672.CurveSize1 = 0
Beam_18672.FaceCamera = false
Beam_18672.LightEmission = 1
Beam_18672.LightInfluence = 0
Beam_18672.Segments = 100
Beam_18672.Texture = "rbxassetid://16310670422"
Beam_18672.TextureLength = 1.375
Beam_18672.TextureSpeed = 2.287923812866211

 Beam_18673=i("Beam", Instance_18667)
Beam_18673.Name="Beam"
Beam_18673:SetAttribute("EmitDuration", 0)
Beam_18673:SetAttribute("AuraInstance", true)
Beam_18673.Enabled = false
Beam_18673.Width0 = 1.3200000524520874
Beam_18673.Width1 = 1.3200000524520874
Beam_18673.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18673.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18673.CurveSize0 = 6.600000381469727
Beam_18673.CurveSize1 = 0
Beam_18673.FaceCamera = false
Beam_18673.LightEmission = 1
Beam_18673.LightInfluence = 0
Beam_18673.Segments = 100
Beam_18673.Texture = "rbxassetid://16310670422"
Beam_18673.TextureLength = 1.375
Beam_18673.TextureSpeed = 2.287923812866211

 Beam_18674=i("Beam", Instance_18667)
Beam_18674.Name="Beam"
Beam_18674:SetAttribute("EmitDuration", 0)
Beam_18674:SetAttribute("AuraInstance", true)
Beam_18674.Enabled = false
Beam_18674.Width0 = 1.3200000524520874
Beam_18674.Width1 = 1.3200000524520874
Beam_18674.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18674.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18674.CurveSize0 = 6.600000381469727
Beam_18674.CurveSize1 = 0
Beam_18674.FaceCamera = false
Beam_18674.LightEmission = 1
Beam_18674.LightInfluence = 0
Beam_18674.Segments = 100
Beam_18674.Texture = "rbxassetid://16310670422"
Beam_18674.TextureLength = 1.375
Beam_18674.TextureSpeed = 2.287923812866211

 Beam_18675=i("Beam", Instance_18667)
Beam_18675.Name="Beam"
Beam_18675:SetAttribute("EmitDuration", 0)
Beam_18675:SetAttribute("AuraInstance", true)
Beam_18675.Enabled = false
Beam_18675.Width0 = 1.3200000524520874
Beam_18675.Width1 = 1.3200000524520874
Beam_18675.Transparency = ns({nsk(0.000000,0.500000,0.000000),nsk(0.524000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
Beam_18675.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Beam_18675.CurveSize0 = 6.600000381469727
Beam_18675.CurveSize1 = 0
Beam_18675.FaceCamera = false
Beam_18675.LightEmission = 1
Beam_18675.LightInfluence = 0
Beam_18675.Segments = 100
Beam_18675.Texture = "rbxassetid://16310670422"
Beam_18675.TextureLength = 1.375
Beam_18675.TextureSpeed = 2.287923812866211

 _1_18676=i("Attachment", s_18666)
_1_18676.Name="1"
_1_18676:SetAttribute("AuraInstance", true)
_1_18676.Position = v3(0.011792,0.235941,14.942395)
_1_18676.Visible = false

 _2_18677=i("Attachment", s_18666)
_2_18677.Name="2"
_2_18677:SetAttribute("AuraInstance", true)
_2_18677.Position = v3(-10.661060,0.235931,10.670545)
_2_18677.Visible = false

 _3_18678=i("Attachment", s_18666)
_3_18678.Name="3"
_3_18678:SetAttribute("AuraInstance", true)
_3_18678.Position = v3(-15.046876,0.235922,-0.002417)
_3_18678.Visible = false

 _4_18679=i("Attachment", s_18666)
_4_18679.Name="4"
_4_18679:SetAttribute("AuraInstance", true)
_4_18679.Position = v3(-10.658131,0.235952,-10.672047)
_4_18679.Visible = false

 _5_18680=i("Attachment", s_18666)
_5_18680.Name="5"
_5_18680:SetAttribute("AuraInstance", true)
_5_18680.Position = v3(0.012012,0.235849,-14.924598)
_5_18680.Visible = false

 _6_18681=i("Attachment", s_18666)
_6_18681.Name="6"
_6_18681:SetAttribute("AuraInstance", true)
_6_18681.Position = v3(10.667175,0.235858,-10.657288)
_6_18681.Visible = false

 _7_18682=i("Attachment", s_18666)
_7_18682.Name="7"
_7_18682:SetAttribute("AuraInstance", true)
_7_18682.Position = v3(15.019996,0.235892,-0.002197)
_7_18682.Visible = false

 _8_18683=i("Attachment", s_18666)
_8_18683.Name="8"
_8_18683:SetAttribute("AuraInstance", true)
_8_18683.Position = v3(10.670105,0.235904,10.655750)
_8_18683.Visible = false

 overlayglow_18684=i("ParticleEmitter", mid_18664)
overlayglow_18684.Name="overlayglow"
overlayglow_18684:SetAttribute("EmitDelay", 0)
overlayglow_18684:SetAttribute("AuraInstance", true)
overlayglow_18684:SetAttribute("EmitDuration", 0)
overlayglow_18684:SetAttribute("EmitCount", 0)
overlayglow_18684.Enabled = true
overlayglow_18684.Rate = 2.4000000953674316
overlayglow_18684.Lifetime = nr(0.8333333134651184,0.8333333134651184)
overlayglow_18684.Speed = nr(0.032947201281785965,0.032947201281785965)
overlayglow_18684.Rotation = nr(-1000,1000)
overlayglow_18684.RotSpeed = nr(0,0)
overlayglow_18684.Size = ns({nsk(0.000000,39.600002,0.000000),nsk(1.000000,39.600002,0.000000)})
overlayglow_18684.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499160,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
overlayglow_18684.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
overlayglow_18684.LightEmission = 1
overlayglow_18684.LightInfluence = 0
overlayglow_18684.Acceleration = v3(0.000000,0.000000,0.000001)
overlayglow_18684.Drag = 0
overlayglow_18684.EmissionDirection = Enum.NormalId.Top
overlayglow_18684.SpreadAngle = v2(0.000000,0.000000)
overlayglow_18684.ZOffset = 6.005000114440918
overlayglow_18684.Texture = "rbxassetid://448862775"
overlayglow_18684.LockedToPart = true
overlayglow_18684.Orientation = Enum.ParticleOrientation.FacingCamera
overlayglow_18684.FlipbookLayout = Enum.ParticleFlipbookLayout.None
overlayglow_18684.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
overlayglow_18684.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
overlayglow_18684.FlipbookStartRandom = false
overlayglow_18684.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18685=i("ParticleEmitter", mid_18664)
dots_18685.Name="dots"
dots_18685:SetAttribute("EmitDuration", 0)
dots_18685:SetAttribute("AuraInstance", true)
dots_18685.Enabled = true
dots_18685.Rate = 200
dots_18685.Lifetime = nr(0.15000000596046448,0.25)
dots_18685.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18685.Rotation = nr(-1000,1000)
dots_18685.RotSpeed = nr(-60,60)
dots_18685.Size = ns({nsk(0.000000,2.640000,0.000000),nsk(0.100000,4.551174,0.000000),nsk(0.200000,6.355630,0.000000),nsk(0.300000,8.040804,0.000000),nsk(0.400000,9.591247,0.000000),nsk(0.500000,10.987597,0.000000),nsk(0.600000,12.205083,0.000000),nsk(0.700000,13.211314,0.000000),nsk(0.800000,13.963470,0.000000),nsk(0.900000,14.407932,0.000000),nsk(1.000000,14.520001,0.000000),nsk(1.000000,14.520001,0.000000)})
dots_18685.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.840000,0.018800),nsk(1.000000,1.000000,0.000000)})
dots_18685.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18685.LightEmission = 1
dots_18685.LightInfluence = 0
dots_18685.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18685.Drag = 0
dots_18685.EmissionDirection = Enum.NormalId.Top
dots_18685.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18685.ZOffset = -0.03500000014901161
dots_18685.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18685.LockedToPart = true
dots_18685.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18685.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18685.FlipbookMode = Enum.ParticleFlipbookMode.Loop
dots_18685.FlipbookFramerate = nr(12.600000381469727,12.600000381469727)
dots_18685.FlipbookStartRandom = true
dots_18685.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 shinemid_18686=i("ParticleEmitter", mid_18664)
shinemid_18686.Name="shinemid"
shinemid_18686:SetAttribute("EmitDelay", 0)
shinemid_18686:SetAttribute("AuraInstance", true)
shinemid_18686:SetAttribute("EmitDuration", 0)
shinemid_18686:SetAttribute("EmitCount", 0)
shinemid_18686.Enabled = true
shinemid_18686.Rate = 10.800000190734863
shinemid_18686.Lifetime = nr(0.2777777910232544,0.2777777910232544)
shinemid_18686.Speed = nr(0.0047473423182964325,0.0047473423182964325)
shinemid_18686.Rotation = nr(90,90)
shinemid_18686.RotSpeed = nr(0,0)
shinemid_18686.Size = ns({nsk(0.000000,4.118401,0.000000),nsk(1.000000,4.118401,0.000000)})
shinemid_18686.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500505,0.493750,0.000000),nsk(1.000000,1.000000,0.000000)})
shinemid_18686.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
shinemid_18686.LightEmission = 1
shinemid_18686.LightInfluence = 0
shinemid_18686.Acceleration = v3(0.000000,0.000000,0.000001)
shinemid_18686.Drag = 0
shinemid_18686.EmissionDirection = Enum.NormalId.Top
shinemid_18686.SpreadAngle = v2(0.000000,0.000000)
shinemid_18686.ZOffset = 0.05000000074505806
shinemid_18686.Texture = "rbxassetid://13935216671"
shinemid_18686.LockedToPart = true
shinemid_18686.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
shinemid_18686.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shinemid_18686.FlipbookMode = Enum.ParticleFlipbookMode.Loop
shinemid_18686.FlipbookFramerate = nr(1.7999999523162842,1.7999999523162842)
shinemid_18686.FlipbookStartRandom = false
shinemid_18686.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.337500,0.000000)})

 shinemid_18687=i("ParticleEmitter", mid_18664)
shinemid_18687.Name="shinemid"
shinemid_18687:SetAttribute("EmitDelay", 0)
shinemid_18687:SetAttribute("AuraInstance", true)
shinemid_18687:SetAttribute("EmitDuration", 0)
shinemid_18687:SetAttribute("EmitCount", 0)
shinemid_18687.Enabled = true
shinemid_18687.Rate = 10.800000190734863
shinemid_18687.Lifetime = nr(0.2777777910232544,0.2777777910232544)
shinemid_18687.Speed = nr(0.0047473423182964325,0.0047473423182964325)
shinemid_18687.Rotation = nr(90,90)
shinemid_18687.RotSpeed = nr(0,0)
shinemid_18687.Size = ns({nsk(0.000000,4.118401,0.000000),nsk(1.000000,4.118401,0.000000)})
shinemid_18687.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500505,0.493750,0.000000),nsk(1.000000,1.000000,0.000000)})
shinemid_18687.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
shinemid_18687.LightEmission = 1
shinemid_18687.LightInfluence = 0
shinemid_18687.Acceleration = v3(0.000000,0.000000,0.000001)
shinemid_18687.Drag = 0
shinemid_18687.EmissionDirection = Enum.NormalId.Front
shinemid_18687.SpreadAngle = v2(0.000000,0.000000)
shinemid_18687.ZOffset = 0.05000000074505806
shinemid_18687.Texture = "rbxassetid://13935216671"
shinemid_18687.LockedToPart = true
shinemid_18687.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
shinemid_18687.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shinemid_18687.FlipbookMode = Enum.ParticleFlipbookMode.Loop
shinemid_18687.FlipbookFramerate = nr(1.7999999523162842,1.7999999523162842)
shinemid_18687.FlipbookStartRandom = false
shinemid_18687.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.337500,0.000000)})

 dynamicray_18688=i("ParticleEmitter", mid_18664)
dynamicray_18688.Name="dynamicray"
dynamicray_18688:SetAttribute("EmitDelay", 0)
dynamicray_18688:SetAttribute("AuraInstance", true)
dynamicray_18688:SetAttribute("EmitDuration", 0)
dynamicray_18688:SetAttribute("EmitCount", 0)
dynamicray_18688.Enabled = true
dynamicray_18688.Rate = 72
dynamicray_18688.Lifetime = nr(0.4166666567325592,0.8333333134651184)
dynamicray_18688.Speed = nr(0.2668973207473755,0.2668973207473755)
dynamicray_18688.Rotation = nr(-1000,1000)
dynamicray_18688.RotSpeed = nr(-120,120)
dynamicray_18688.Size = ns({nsk(0.000000,32.599430,13.728000),nsk(1.000000,36.716789,13.728000)})
dynamicray_18688.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.912500,0.000000),nsk(1.000000,1.000000,0.000000)})
dynamicray_18688.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dynamicray_18688.LightEmission = 1
dynamicray_18688.LightInfluence = 0
dynamicray_18688.Acceleration = v3(0.000000,0.000000,0.000001)
dynamicray_18688.Drag = 0
dynamicray_18688.EmissionDirection = Enum.NormalId.Top
dynamicray_18688.SpreadAngle = v2(-1000.000000,1000.000000)
dynamicray_18688.ZOffset = -2.005000114440918
dynamicray_18688.Texture = "https://assetgame.roblox.com/asset/?id=12363778394&assetName=flare_4"
dynamicray_18688.LockedToPart = true
dynamicray_18688.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dynamicray_18688.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dynamicray_18688.FlipbookMode = Enum.ParticleFlipbookMode.Loop
dynamicray_18688.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dynamicray_18688.FlipbookStartRandom = false
dynamicray_18688.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.423913,0.000000)})

 glaremid_18689=i("ParticleEmitter", mid_18664)
glaremid_18689.Name="glaremid"
glaremid_18689:SetAttribute("EmitDelay", 0)
glaremid_18689:SetAttribute("AuraInstance", true)
glaremid_18689:SetAttribute("EmitDuration", 0)
glaremid_18689:SetAttribute("EmitCount", 0)
glaremid_18689.Enabled = true
glaremid_18689.Rate = 10.800000190734863
glaremid_18689.Lifetime = nr(0.2777777910232544,0.2777777910232544)
glaremid_18689.Speed = nr(0.0047473423182964325,0.0047473423182964325)
glaremid_18689.Rotation = nr(0,0)
glaremid_18689.RotSpeed = nr(0,0)
glaremid_18689.Size = ns({nsk(0.000000,9.609601,0.000000),nsk(1.000000,9.609601,0.000000)})
glaremid_18689.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.837500,0.000000),nsk(1.000000,1.000000,0.000000)})
glaremid_18689.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glaremid_18689.LightEmission = 1
glaremid_18689.LightInfluence = 0
glaremid_18689.Acceleration = v3(0.000000,0.000000,0.000001)
glaremid_18689.Drag = 0
glaremid_18689.EmissionDirection = Enum.NormalId.Top
glaremid_18689.SpreadAngle = v2(0.000000,0.000000)
glaremid_18689.ZOffset = 0.03999999910593033
glaremid_18689.Texture = "http://www.roblox.com/asset/?id=83812409375086"
glaremid_18689.LockedToPart = true
glaremid_18689.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glaremid_18689.FlipbookLayout = Enum.ParticleFlipbookLayout.None
glaremid_18689.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glaremid_18689.FlipbookFramerate = nr(1.7999999523162842,1.7999999523162842)
glaremid_18689.FlipbookStartRandom = false
glaremid_18689.Squash = ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})

 glaremid_18690=i("ParticleEmitter", mid_18664)
glaremid_18690.Name="glaremid"
glaremid_18690:SetAttribute("EmitDelay", 0)
glaremid_18690:SetAttribute("AuraInstance", true)
glaremid_18690:SetAttribute("EmitDuration", 0)
glaremid_18690:SetAttribute("EmitCount", 0)
glaremid_18690.Enabled = true
glaremid_18690.Rate = 10.800000190734863
glaremid_18690.Lifetime = nr(0.2777777910232544,0.2777777910232544)
glaremid_18690.Speed = nr(0.0047473423182964325,0.0047473423182964325)
glaremid_18690.Rotation = nr(90,90)
glaremid_18690.RotSpeed = nr(0,0)
glaremid_18690.Size = ns({nsk(0.000000,9.609601,0.000000),nsk(1.000000,9.609601,0.000000)})
glaremid_18690.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.837500,0.000000),nsk(1.000000,1.000000,0.000000)})
glaremid_18690.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glaremid_18690.LightEmission = 1
glaremid_18690.LightInfluence = 0
glaremid_18690.Acceleration = v3(0.000000,0.000000,0.000001)
glaremid_18690.Drag = 0
glaremid_18690.EmissionDirection = Enum.NormalId.Front
glaremid_18690.SpreadAngle = v2(0.000000,0.000000)
glaremid_18690.ZOffset = 0.03999999910593033
glaremid_18690.Texture = "http://www.roblox.com/asset/?id=83812409375086"
glaremid_18690.LockedToPart = true
glaremid_18690.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glaremid_18690.FlipbookLayout = Enum.ParticleFlipbookLayout.None
glaremid_18690.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glaremid_18690.FlipbookFramerate = nr(1.7999999523162842,1.7999999523162842)
glaremid_18690.FlipbookStartRandom = false
glaremid_18690.Squash = ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})

 glaremid_18691=i("ParticleEmitter", mid_18664)
glaremid_18691.Name="glaremid"
glaremid_18691:SetAttribute("EmitDelay", 0)
glaremid_18691:SetAttribute("AuraInstance", true)
glaremid_18691:SetAttribute("EmitDuration", 0)
glaremid_18691:SetAttribute("EmitCount", 0)
glaremid_18691.Enabled = true
glaremid_18691.Rate = 10.800000190734863
glaremid_18691.Lifetime = nr(0.2777777910232544,0.2777777910232544)
glaremid_18691.Speed = nr(0.0047473423182964325,0.0047473423182964325)
glaremid_18691.Rotation = nr(90,90)
glaremid_18691.RotSpeed = nr(0,0)
glaremid_18691.Size = ns({nsk(0.000000,9.609601,0.000000),nsk(1.000000,9.609601,0.000000)})
glaremid_18691.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.837500,0.000000),nsk(1.000000,1.000000,0.000000)})
glaremid_18691.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glaremid_18691.LightEmission = 1
glaremid_18691.LightInfluence = 0
glaremid_18691.Acceleration = v3(0.000000,0.000000,0.000001)
glaremid_18691.Drag = 0
glaremid_18691.EmissionDirection = Enum.NormalId.Bottom
glaremid_18691.SpreadAngle = v2(0.000000,0.000000)
glaremid_18691.ZOffset = 0.03999999910593033
glaremid_18691.Texture = "http://www.roblox.com/asset/?id=83812409375086"
glaremid_18691.LockedToPart = true
glaremid_18691.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glaremid_18691.FlipbookLayout = Enum.ParticleFlipbookLayout.None
glaremid_18691.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glaremid_18691.FlipbookFramerate = nr(1.7999999523162842,1.7999999523162842)
glaremid_18691.FlipbookStartRandom = false
glaremid_18691.Squash = ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})

 fog1_18692=i("ParticleEmitter", mid_18664)
fog1_18692.Name="fog1"
fog1_18692:SetAttribute("EmitDuration", 0)
fog1_18692:SetAttribute("AuraInstance", true)
fog1_18692.Enabled = true
fog1_18692.Rate = 48
fog1_18692.Lifetime = nr(0.25,0.25)
fog1_18692.Speed = nr(0.0032947203144431114,0.0032947203144431114)
fog1_18692.Rotation = nr(-1000,1000)
fog1_18692.RotSpeed = nr(-48,48)
fog1_18692.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,3.975241,0.000000),nsk(0.200000,7.728509,0.000000),nsk(0.300000,11.233673,0.000000),nsk(0.400000,14.458593,0.000000),nsk(0.500000,17.363005,0.000000),nsk(0.600000,19.895370,0.000000),nsk(0.700000,21.988333,0.000000),nsk(0.800000,23.552816,0.000000),nsk(0.900000,24.477301,0.000000),nsk(1.000000,24.710400,0.000000),nsk(1.000000,24.710400,0.000000)})
fog1_18692.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.931250,0.000000),nsk(1.000000,1.000000,0.000000)})
fog1_18692.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
fog1_18692.LightEmission = 1
fog1_18692.LightInfluence = 0
fog1_18692.Acceleration = v3(0.000000,0.000000,0.000001)
fog1_18692.Drag = 0
fog1_18692.EmissionDirection = Enum.NormalId.Top
fog1_18692.SpreadAngle = v2(-1000.000000,1000.000000)
fog1_18692.ZOffset = -0.5009999871253967
fog1_18692.Texture = "rbxassetid://289665041"
fog1_18692.LockedToPart = true
fog1_18692.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
fog1_18692.FlipbookLayout = Enum.ParticleFlipbookLayout.None
fog1_18692.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog1_18692.FlipbookFramerate = nr(6,7.199999809265137)
fog1_18692.FlipbookStartRandom = false
fog1_18692.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 fog2_18693=i("ParticleEmitter", mid_18664)
fog2_18693.Name="fog2"
fog2_18693:SetAttribute("EmitDuration", 0)
fog2_18693:SetAttribute("AuraInstance", true)
fog2_18693.Enabled = true
fog2_18693.Rate = 48
fog2_18693.Lifetime = nr(0.25,0.25)
fog2_18693.Speed = nr(0.0032947203144431114,0.0032947203144431114)
fog2_18693.Rotation = nr(-1000,1000)
fog2_18693.RotSpeed = nr(-48,48)
fog2_18693.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,3.975241,0.000000),nsk(0.200000,7.728509,0.000000),nsk(0.300000,11.233673,0.000000),nsk(0.400000,14.458593,0.000000),nsk(0.500000,17.363005,0.000000),nsk(0.600000,19.895370,0.000000),nsk(0.700000,21.988333,0.000000),nsk(0.800000,23.552816,0.000000),nsk(0.900000,24.477301,0.000000),nsk(1.000000,24.710400,0.000000),nsk(1.000000,24.710400,0.000000)})
fog2_18693.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.931250,0.000000),nsk(1.000000,1.000000,0.000000)})
fog2_18693.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
fog2_18693.LightEmission = 1
fog2_18693.LightInfluence = 0
fog2_18693.Acceleration = v3(0.000000,0.000000,0.000001)
fog2_18693.Drag = 0
fog2_18693.EmissionDirection = Enum.NormalId.Top
fog2_18693.SpreadAngle = v2(-1000.000000,1000.000000)
fog2_18693.ZOffset = -0.5019999742507935
fog2_18693.Texture = "rbxassetid://139230833136379"
fog2_18693.LockedToPart = true
fog2_18693.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
fog2_18693.FlipbookLayout = Enum.ParticleFlipbookLayout.None
fog2_18693.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog2_18693.FlipbookFramerate = nr(6,7.199999809265137)
fog2_18693.FlipbookStartRandom = false
fog2_18693.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 fogpixel_18694=i("ParticleEmitter", mid_18664)
fogpixel_18694.Name="fogpixel"
fogpixel_18694:SetAttribute("EmitDuration", 0)
fogpixel_18694:SetAttribute("AuraInstance", true)
fogpixel_18694.Enabled = true
fogpixel_18694.Rate = 48
fogpixel_18694.Lifetime = nr(0.25,0.25)
fogpixel_18694.Speed = nr(0.0032947203144431114,0.0032947203144431114)
fogpixel_18694.Rotation = nr(-1000,1000)
fogpixel_18694.RotSpeed = nr(-48,48)
fogpixel_18694.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,3.533548,0.000000),nsk(0.200000,6.869786,0.000000),nsk(0.300000,9.985487,0.000000),nsk(0.400000,12.852082,0.000000),nsk(0.500000,15.433781,0.000000),nsk(0.600000,17.684776,0.000000),nsk(0.700000,19.545187,0.000000),nsk(0.800000,20.935837,0.000000),nsk(0.900000,21.757597,0.000000),nsk(1.000000,21.964800,0.000000),nsk(1.000000,21.964800,0.000000)})
fogpixel_18694.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.931250,0.000000),nsk(1.000000,1.000000,0.000000)})
fogpixel_18694.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
fogpixel_18694.LightEmission = 1
fogpixel_18694.LightInfluence = 0
fogpixel_18694.Acceleration = v3(0.000000,0.000000,0.000001)
fogpixel_18694.Drag = 0
fogpixel_18694.EmissionDirection = Enum.NormalId.Top
fogpixel_18694.SpreadAngle = v2(-1000.000000,1000.000000)
fogpixel_18694.ZOffset = -0.49900001287460327
fogpixel_18694.Texture = "rbxassetid://16310636399"
fogpixel_18694.LockedToPart = true
fogpixel_18694.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
fogpixel_18694.FlipbookLayout = Enum.ParticleFlipbookLayout.None
fogpixel_18694.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fogpixel_18694.FlipbookFramerate = nr(6,7.199999809265137)
fogpixel_18694.FlipbookStartRandom = false
fogpixel_18694.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 blackfog1_18695=i("ParticleEmitter", mid_18664)
blackfog1_18695.Name="blackfog1"
blackfog1_18695:SetAttribute("EmitDuration", 0)
blackfog1_18695:SetAttribute("AuraInstance", true)
blackfog1_18695.Enabled = true
blackfog1_18695.Rate = 168
blackfog1_18695.Lifetime = nr(0.25,0.25)
blackfog1_18695.Speed = nr(0.0032947203144431114,0.0032947203144431114)
blackfog1_18695.Rotation = nr(-1000,1000)
blackfog1_18695.RotSpeed = nr(-48,48)
blackfog1_18695.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,3.975241,0.000000),nsk(0.200000,7.728509,0.000000),nsk(0.300000,11.233673,0.000000),nsk(0.400000,14.458593,0.000000),nsk(0.500000,17.363005,0.000000),nsk(0.600000,19.895370,0.000000),nsk(0.700000,21.988333,0.000000),nsk(0.800000,23.552816,0.000000),nsk(0.900000,24.477301,0.000000),nsk(1.000000,24.710400,0.000000),nsk(1.000000,24.710400,0.000000)})
blackfog1_18695.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.931250,0.000000),nsk(1.000000,1.000000,0.000000)})
blackfog1_18695.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blackfog1_18695.LightEmission = -1
blackfog1_18695.LightInfluence = 0
blackfog1_18695.Acceleration = v3(0.000000,0.000000,0.000001)
blackfog1_18695.Drag = 0
blackfog1_18695.EmissionDirection = Enum.NormalId.Top
blackfog1_18695.SpreadAngle = v2(-1000.000000,1000.000000)
blackfog1_18695.ZOffset = -5.005000114440918
blackfog1_18695.Texture = "rbxassetid://14265652323"
blackfog1_18695.LockedToPart = true
blackfog1_18695.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
blackfog1_18695.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blackfog1_18695.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blackfog1_18695.FlipbookFramerate = nr(6,7.199999809265137)
blackfog1_18695.FlipbookStartRandom = false
blackfog1_18695.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 blackfog2_18696=i("ParticleEmitter", mid_18664)
blackfog2_18696.Name="blackfog2"
blackfog2_18696:SetAttribute("EmitDuration", 0)
blackfog2_18696:SetAttribute("AuraInstance", true)
blackfog2_18696.Enabled = true
blackfog2_18696.Rate = 144
blackfog2_18696.Lifetime = nr(0.25,0.25)
blackfog2_18696.Speed = nr(0.0032947203144431114,0.0032947203144431114)
blackfog2_18696.Rotation = nr(-1000,1000)
blackfog2_18696.RotSpeed = nr(-48,48)
blackfog2_18696.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,3.975241,0.000000),nsk(0.200000,7.728509,0.000000),nsk(0.300000,11.233673,0.000000),nsk(0.400000,14.458593,0.000000),nsk(0.500000,17.363005,0.000000),nsk(0.600000,19.895370,0.000000),nsk(0.700000,21.988333,0.000000),nsk(0.800000,23.552816,0.000000),nsk(0.900000,24.477301,0.000000),nsk(1.000000,24.710400,0.000000),nsk(1.000000,24.710400,0.000000)})
blackfog2_18696.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.931250,0.000000),nsk(1.000000,1.000000,0.000000)})
blackfog2_18696.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
blackfog2_18696.LightEmission = -1
blackfog2_18696.LightInfluence = 0
blackfog2_18696.Acceleration = v3(0.000000,0.000000,0.000001)
blackfog2_18696.Drag = 0
blackfog2_18696.EmissionDirection = Enum.NormalId.Top
blackfog2_18696.SpreadAngle = v2(-1000.000000,1000.000000)
blackfog2_18696.ZOffset = -5.00600004196167
blackfog2_18696.Texture = "rbxassetid://117962134521217"
blackfog2_18696.LockedToPart = true
blackfog2_18696.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
blackfog2_18696.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blackfog2_18696.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blackfog2_18696.FlipbookFramerate = nr(6,7.199999809265137)
blackfog2_18696.FlipbookStartRandom = false
blackfog2_18696.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 midblack_18697=i("ParticleEmitter", mid_18664)
midblack_18697.Name="midblack"
midblack_18697:SetAttribute("EmitDelay", 0)
midblack_18697:SetAttribute("AuraInstance", true)
midblack_18697:SetAttribute("EmitDuration", 0)
midblack_18697:SetAttribute("EmitCount", 0)
midblack_18697.Enabled = true
midblack_18697.Rate = 10.800000190734863
midblack_18697.Lifetime = nr(0.2777777910232544,0.2777777910232544)
midblack_18697.Speed = nr(0.0047473423182964325,0.0047473423182964325)
midblack_18697.Rotation = nr(90,90)
midblack_18697.RotSpeed = nr(0,0)
midblack_18697.Size = ns({nsk(0.000000,9.240000,0.000000),nsk(1.000000,9.240000,0.000000)})
midblack_18697.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500505,0.493750,0.000000),nsk(1.000000,1.000000,0.000000)})
midblack_18697.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
midblack_18697.LightEmission = -0.5
midblack_18697.LightInfluence = 0
midblack_18697.Acceleration = v3(0.000000,0.000000,0.000001)
midblack_18697.Drag = 0
midblack_18697.EmissionDirection = Enum.NormalId.Top
midblack_18697.SpreadAngle = v2(0.000000,0.000000)
midblack_18697.ZOffset = 0.04989999905228615
midblack_18697.Texture = "rbxassetid://13816054573"
midblack_18697.LockedToPart = true
midblack_18697.Orientation = Enum.ParticleOrientation.FacingCamera
midblack_18697.FlipbookLayout = Enum.ParticleFlipbookLayout.None
midblack_18697.FlipbookMode = Enum.ParticleFlipbookMode.Loop
midblack_18697.FlipbookFramerate = nr(1.7999999523162842,1.7999999523162842)
midblack_18697.FlipbookStartRandom = false
midblack_18697.Squash = ns({nsk(0.000000,0.300000,0.000000),nsk(1.000000,0.300000,0.000000)})

 shinemid_18698=i("ParticleEmitter", mid_18664)
shinemid_18698.Name="shinemid"
shinemid_18698:SetAttribute("EmitDelay", 0)
shinemid_18698:SetAttribute("AuraInstance", true)
shinemid_18698:SetAttribute("EmitDuration", 0)
shinemid_18698:SetAttribute("EmitCount", 0)
shinemid_18698.Enabled = true
shinemid_18698.Rate = 10.800000190734863
shinemid_18698.Lifetime = nr(0.2777777910232544,0.2777777910232544)
shinemid_18698.Speed = nr(0.0047473423182964325,0.0047473423182964325)
shinemid_18698.Rotation = nr(90,90)
shinemid_18698.RotSpeed = nr(0,0)
shinemid_18698.Size = ns({nsk(0.000000,4.118401,0.000000),nsk(1.000000,4.118401,0.000000)})
shinemid_18698.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500505,0.493750,0.000000),nsk(1.000000,1.000000,0.000000)})
shinemid_18698.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
shinemid_18698.LightEmission = 1
shinemid_18698.LightInfluence = 0
shinemid_18698.Acceleration = v3(0.000000,0.000000,0.000001)
shinemid_18698.Drag = 0
shinemid_18698.EmissionDirection = Enum.NormalId.Left
shinemid_18698.SpreadAngle = v2(0.000000,0.000000)
shinemid_18698.ZOffset = 0.05000000074505806
shinemid_18698.Texture = "rbxassetid://13935216671"
shinemid_18698.LockedToPart = true
shinemid_18698.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
shinemid_18698.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shinemid_18698.FlipbookMode = Enum.ParticleFlipbookMode.Loop
shinemid_18698.FlipbookFramerate = nr(1.7999999523162842,1.7999999523162842)
shinemid_18698.FlipbookStartRandom = false
shinemid_18698.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.337500,0.000000)})

 rgb_18699=i("ParticleEmitter", mid_18664)
rgb_18699.Name="rgb"
rgb_18699:SetAttribute("EmitDelay", 0)
rgb_18699:SetAttribute("AuraInstance", true)
rgb_18699:SetAttribute("EmitDuration", 0)
rgb_18699:SetAttribute("EmitCount", 2)
rgb_18699.Enabled = true
rgb_18699.Rate = 2
rgb_18699.Lifetime = nr(1,1)
rgb_18699.Speed = nr(0.026400001719594002,0.026400001719594002)
rgb_18699.Rotation = nr(-1000,1000)
rgb_18699.RotSpeed = nr(0,0)
rgb_18699.Size = ns({nsk(0.000000,13.200001,0.000000),nsk(1.000000,13.200001,0.000000)})
rgb_18699.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.912500,0.000000),nsk(1.000000,1.000000,0.000000)})
rgb_18699.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
rgb_18699.LightEmission = 1
rgb_18699.LightInfluence = 0
rgb_18699.Acceleration = v3(0.000000,0.000000,0.000001)
rgb_18699.Drag = 0
rgb_18699.EmissionDirection = Enum.NormalId.Front
rgb_18699.SpreadAngle = v2(0.000000,0.000000)
rgb_18699.ZOffset = 1.5820000171661377
rgb_18699.Texture = "rbxassetid://12188469991"
rgb_18699.LockedToPart = true
rgb_18699.Orientation = Enum.ParticleOrientation.FacingCamera
rgb_18699.FlipbookLayout = Enum.ParticleFlipbookLayout.None
rgb_18699.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
rgb_18699.FlipbookFramerate = nr(24,24)
rgb_18699.FlipbookStartRandom = true
rgb_18699.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 pixellightning_18700=i("ParticleEmitter", mid_18664)
pixellightning_18700.Name="pixel lightning"
pixellightning_18700:SetAttribute("EmitDelay", 0)
pixellightning_18700:SetAttribute("AuraInstance", true)
pixellightning_18700:SetAttribute("EmitDuration", 0)
pixellightning_18700:SetAttribute("EmitCount", 1)
pixellightning_18700.Enabled = true
pixellightning_18700.Rate = 20
pixellightning_18700.Lifetime = nr(0.05000000074505806,0.10000000149011612)
pixellightning_18700.Speed = nr(0.2639999985694885,0.2639999985694885)
pixellightning_18700.Rotation = nr(-1000,1000)
pixellightning_18700.RotSpeed = nr(0,0)
pixellightning_18700.Size = ns({nsk(0.000000,1.320000,0.000000),nsk(1.000000,1.320000,0.000000)})
pixellightning_18700.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
pixellightning_18700.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
pixellightning_18700.LightEmission = 0.5
pixellightning_18700.LightInfluence = 0
pixellightning_18700.Acceleration = v3(0.000000,0.000000,0.000001)
pixellightning_18700.Drag = 0
pixellightning_18700.EmissionDirection = Enum.NormalId.Top
pixellightning_18700.SpreadAngle = v2(0.000000,0.000000)
pixellightning_18700.ZOffset = 4.09499979019165
pixellightning_18700.Texture = "rbxassetid://13931232259"
pixellightning_18700.LockedToPart = true
pixellightning_18700.Orientation = Enum.ParticleOrientation.FacingCamera
pixellightning_18700.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
pixellightning_18700.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
pixellightning_18700.FlipbookFramerate = nr(32,32)
pixellightning_18700.FlipbookStartRandom = false
pixellightning_18700.Squash = ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})

 squareshine_18701=i("ParticleEmitter", mid_18664)
squareshine_18701.Name="squareshine"
squareshine_18701:SetAttribute("EmitDuration", 0)
squareshine_18701:SetAttribute("AuraInstance", true)
squareshine_18701.Enabled = true
squareshine_18701.Rate = 20
squareshine_18701.Lifetime = nr(0.25,0.25)
squareshine_18701.Speed = nr(1.3200000524520874,1.3200000524520874)
squareshine_18701.Rotation = nr(0,0)
squareshine_18701.RotSpeed = nr(0,0)
squareshine_18701.Size = ns({nsk(0.000000,6.600000,0.000000),nsk(1.000000,6.600000,0.000000)})
squareshine_18701.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.016385,0.837500,0.000000),nsk(1.000000,1.000000,0.000000)})
squareshine_18701.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
squareshine_18701.LightEmission = 1
squareshine_18701.LightInfluence = 0
squareshine_18701.Acceleration = v3(0.000000,0.000000,0.000001)
squareshine_18701.Drag = 0
squareshine_18701.EmissionDirection = Enum.NormalId.Right
squareshine_18701.SpreadAngle = v2(0.000000,0.000000)
squareshine_18701.ZOffset = 0
squareshine_18701.Texture = "http://www.roblox.com/asset/?id=85089367047743"
squareshine_18701.LockedToPart = true
squareshine_18701.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
squareshine_18701.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
squareshine_18701.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
squareshine_18701.FlipbookFramerate = nr(1,1)
squareshine_18701.FlipbookStartRandom = false
squareshine_18701.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 squareshine_18702=i("ParticleEmitter", mid_18664)
squareshine_18702.Name="squareshine"
squareshine_18702:SetAttribute("EmitDuration", 0)
squareshine_18702:SetAttribute("AuraInstance", true)
squareshine_18702.Enabled = true
squareshine_18702.Rate = 20
squareshine_18702.Lifetime = nr(0.25,0.25)
squareshine_18702.Speed = nr(1.3200000524520874,1.3200000524520874)
squareshine_18702.Rotation = nr(0,0)
squareshine_18702.RotSpeed = nr(0,0)
squareshine_18702.Size = ns({nsk(0.000000,6.600000,0.000000),nsk(1.000000,6.600000,0.000000)})
squareshine_18702.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.016385,0.837500,0.000000),nsk(1.000000,1.000000,0.000000)})
squareshine_18702.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
squareshine_18702.LightEmission = 1
squareshine_18702.LightInfluence = 0
squareshine_18702.Acceleration = v3(0.000000,0.000000,0.000001)
squareshine_18702.Drag = 0
squareshine_18702.EmissionDirection = Enum.NormalId.Front
squareshine_18702.SpreadAngle = v2(0.000000,0.000000)
squareshine_18702.ZOffset = 0
squareshine_18702.Texture = "http://www.roblox.com/asset/?id=85089367047743"
squareshine_18702.LockedToPart = true
squareshine_18702.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
squareshine_18702.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
squareshine_18702.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
squareshine_18702.FlipbookFramerate = nr(1,1)
squareshine_18702.FlipbookStartRandom = false
squareshine_18702.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 squareshine_18703=i("ParticleEmitter", mid_18664)
squareshine_18703.Name="squareshine"
squareshine_18703:SetAttribute("EmitDuration", 0)
squareshine_18703:SetAttribute("AuraInstance", true)
squareshine_18703.Enabled = true
squareshine_18703.Rate = 20
squareshine_18703.Lifetime = nr(0.25,0.25)
squareshine_18703.Speed = nr(1.3200000524520874,1.3200000524520874)
squareshine_18703.Rotation = nr(0,0)
squareshine_18703.RotSpeed = nr(0,0)
squareshine_18703.Size = ns({nsk(0.000000,6.600000,0.000000),nsk(1.000000,6.600000,0.000000)})
squareshine_18703.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.016385,0.837500,0.000000),nsk(1.000000,1.000000,0.000000)})
squareshine_18703.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
squareshine_18703.LightEmission = 1
squareshine_18703.LightInfluence = 0
squareshine_18703.Acceleration = v3(0.000000,0.000000,0.000001)
squareshine_18703.Drag = 0
squareshine_18703.EmissionDirection = Enum.NormalId.Top
squareshine_18703.SpreadAngle = v2(0.000000,0.000000)
squareshine_18703.ZOffset = 0
squareshine_18703.Texture = "http://www.roblox.com/asset/?id=85089367047743"
squareshine_18703.LockedToPart = true
squareshine_18703.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
squareshine_18703.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
squareshine_18703.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
squareshine_18703.FlipbookFramerate = nr(1,1)
squareshine_18703.FlipbookStartRandom = false
squareshine_18703.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 lightray_18704=i("ParticleEmitter", mid_18664)
lightray_18704.Name="lightray"
lightray_18704:SetAttribute("EmitDuration", 0)
lightray_18704:SetAttribute("AuraInstance", true)
lightray_18704.Enabled = true
lightray_18704.Rate = 2
lightray_18704.Lifetime = nr(1,1)
lightray_18704.Speed = nr(0.0037415367551147938,0.0037415367551147938)
lightray_18704.Rotation = nr(0,0)
lightray_18704.RotSpeed = nr(0,0)
lightray_18704.Size = ns({nsk(0.000000,19.800001,0.000000),nsk(1.000000,19.800001,0.000000)})
lightray_18704.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.418750,0.000000),nsk(1.000000,1.000000,0.000000)})
lightray_18704.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lightray_18704.LightEmission = 1
lightray_18704.LightInfluence = 0
lightray_18704.Acceleration = v3(0.000000,0.000000,0.000001)
lightray_18704.Drag = 0
lightray_18704.EmissionDirection = Enum.NormalId.Top
lightray_18704.SpreadAngle = v2(-1000.000000,1000.000000)
lightray_18704.ZOffset = 5.354000091552734
lightray_18704.Texture = "http://www.roblox.com/asset/?id=110916635681283"
lightray_18704.LockedToPart = true
lightray_18704.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
lightray_18704.FlipbookLayout = Enum.ParticleFlipbookLayout.None
lightray_18704.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightray_18704.FlipbookFramerate = nr(1,1)
lightray_18704.FlipbookStartRandom = false
lightray_18704.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

 zap_18705=i("ParticleEmitter", CUBE_18549)
zap_18705.Name="zap"
zap_18705:SetAttribute("EmitDuration", 0)
zap_18705:SetAttribute("AuraInstance", true)
zap_18705.Enabled = true
zap_18705.Rate = 20
zap_18705.Lifetime = nr(0.25,0.30000001192092896)
zap_18705.Speed = nr(0.33000001311302185,0.33000001311302185)
zap_18705.Rotation = nr(-1000,1000)
zap_18705.RotSpeed = nr(-24,24)
zap_18705.Size = ns({nsk(0.000000,1.188000,0.660000),nsk(1.000000,1.188000,0.660000)})
zap_18705.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.135835,0.243750,0.000000),nsk(0.499471,0.000000,0.000000),nsk(0.801797,0.243750,0.000000),nsk(1.000000,1.000000,0.000000)})
zap_18705.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
zap_18705.LightEmission = 1
zap_18705.LightInfluence = 0
zap_18705.Acceleration = v3(0.000000,0.000000,0.000001)
zap_18705.Drag = 0
zap_18705.EmissionDirection = Enum.NormalId.Back
zap_18705.SpreadAngle = v2(50.000000,50.000000)
zap_18705.ZOffset = 0
zap_18705.Texture = "rbxassetid://13931232259"
zap_18705.LockedToPart = true
zap_18705.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
zap_18705.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
zap_18705.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
zap_18705.FlipbookFramerate = nr(6,7.199999809265137)
zap_18705.FlipbookStartRandom = false
zap_18705.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 beamedge_18706=i("Attachment", CUBE_18549)
beamedge_18706.Name="beamedge"
beamedge_18706:SetAttribute("AuraInstance", true)
beamedge_18706.Position = v3(0.000000,0.000000,0.000000)
beamedge_18706.Visible = false

 topleftdown_18708=i("Attachment", beamedge_18706)
topleftdown_18708.Name="topleftdown"
topleftdown_18708:SetAttribute("AuraInstance", true)
topleftdown_18708.Position = v3(5.777051,5.777035,-5.777124)
topleftdown_18708.Visible = false

 beam_18709=i("Beam", topleftdown_18708)
beam_18709.Name="beam"
beam_18709:SetAttribute("EmitDuration", 0)
beam_18709:SetAttribute("AuraInstance", true)
beam_18709.Enabled = true
beam_18709.Width0 = 0.20592001080513
beam_18709.Width1 = 0.20592001080513
beam_18709.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18709.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18709.CurveSize0 = 0
beam_18709.CurveSize1 = 0
beam_18709.FaceCamera = true
beam_18709.LightEmission = 1
beam_18709.LightInfluence = 0
beam_18709.Segments = 10
beam_18709.Texture = "rbxassetid://16310670422"
beam_18709.TextureLength = 0.5
beam_18709.TextureSpeed = 1.5108873844146729

 blacksmoke2_18710=i("ParticleEmitter", topleftdown_18708)
blacksmoke2_18710.Name="blacksmoke2"
blacksmoke2_18710:SetAttribute("EmitDelay", 0)
blacksmoke2_18710:SetAttribute("AuraInstance", true)
blacksmoke2_18710:SetAttribute("EmitDuration", 0)
blacksmoke2_18710:SetAttribute("EmitCount", 1)
blacksmoke2_18710.Enabled = false
blacksmoke2_18710.Rate = 14.399999618530273
blacksmoke2_18710.Lifetime = nr(0.25,0.25)
blacksmoke2_18710.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18710.Rotation = nr(-360,360)
blacksmoke2_18710.RotSpeed = nr(0,0)
blacksmoke2_18710.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18710.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18710.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18710.LightEmission = -1
blacksmoke2_18710.LightInfluence = 0
blacksmoke2_18710.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18710.Drag = 0
blacksmoke2_18710.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18710.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18710.ZOffset = 1.0019999742507935
blacksmoke2_18710.Texture = "rbxassetid://13916934000"
blacksmoke2_18710.LockedToPart = true
blacksmoke2_18710.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18710.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18710.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18710.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18710.FlipbookStartRandom = false
blacksmoke2_18710.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 beam2_18711=i("Beam", topleftdown_18708)
beam2_18711.Name="beam2"
beam2_18711:SetAttribute("EmitDuration", 0)
beam2_18711:SetAttribute("AuraInstance", true)
beam2_18711.Enabled = true
beam2_18711.Width0 = 1.0982400178909302
beam2_18711.Width1 = 1.0982400178909302
beam2_18711.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18711.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18711.CurveSize0 = 0
beam2_18711.CurveSize1 = 0
beam2_18711.FaceCamera = true
beam2_18711.LightEmission = 0
beam2_18711.LightInfluence = 0
beam2_18711.Segments = 10
beam2_18711.Texture = "rbxassetid://18837319394"
beam2_18711.TextureLength = 2.25
beam2_18711.TextureSpeed = 1.5108873844146729

 star_18712=i("ParticleEmitter", topleftdown_18708)
star_18712.Name="star"
star_18712:SetAttribute("EmitDelay", 0)
star_18712:SetAttribute("AuraInstance", true)
star_18712:SetAttribute("EmitDuration", 0)
star_18712:SetAttribute("EmitCount", 1)
star_18712.Enabled = true
star_18712.Rate = 24
star_18712.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18712.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18712.Rotation = nr(0,0)
star_18712.RotSpeed = nr(0,0)
star_18712.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18712.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18712.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18712.LightEmission = 0
star_18712.LightInfluence = 0
star_18712.Acceleration = v3(0.000000,0.000000,0.000001)
star_18712.Drag = 0
star_18712.EmissionDirection = Enum.NormalId.Top
star_18712.SpreadAngle = v2(360000.000000,360000.000000)
star_18712.ZOffset = 1.5049999952316284
star_18712.Texture = "rbxassetid://130506341047209"
star_18712.LockedToPart = true
star_18712.Orientation = Enum.ParticleOrientation.FacingCamera
star_18712.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18712.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18712.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18712.FlipbookStartRandom = false
star_18712.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 blacksmoke_18713=i("ParticleEmitter", topleftdown_18708)
blacksmoke_18713.Name="blacksmoke"
blacksmoke_18713:SetAttribute("EmitDelay", 0)
blacksmoke_18713:SetAttribute("AuraInstance", true)
blacksmoke_18713:SetAttribute("EmitDuration", 0)
blacksmoke_18713:SetAttribute("EmitCount", 1)
blacksmoke_18713.Enabled = true
blacksmoke_18713.Rate = 14.399999618530273
blacksmoke_18713.Lifetime = nr(0.25,0.25)
blacksmoke_18713.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18713.Rotation = nr(-1000,1000)
blacksmoke_18713.RotSpeed = nr(0,0)
blacksmoke_18713.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18713.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18713.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18713.LightEmission = -0.5
blacksmoke_18713.LightInfluence = 0
blacksmoke_18713.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18713.Drag = 0
blacksmoke_18713.EmissionDirection = Enum.NormalId.Top
blacksmoke_18713.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18713.ZOffset = 1.0010000467300415
blacksmoke_18713.Texture = "rbxassetid://16310636399"
blacksmoke_18713.LockedToPart = true
blacksmoke_18713.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18713.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18713.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18713.FlipbookFramerate = nr(36,36)
blacksmoke_18713.FlipbookStartRandom = false
blacksmoke_18713.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18714=i("ParticleEmitter", topleftdown_18708)
dots_18714.Name="dots"
dots_18714:SetAttribute("EmitDuration", 0)
dots_18714:SetAttribute("AuraInstance", true)
dots_18714:SetAttribute("EmitCount", 1)
dots_18714.Enabled = true
dots_18714.Rate = 60
dots_18714.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18714.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18714.Rotation = nr(-1000,1000)
dots_18714.RotSpeed = nr(0,0)
dots_18714.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18714.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18714.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18714.LightEmission = 1
dots_18714.LightInfluence = 0
dots_18714.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18714.Drag = 0
dots_18714.EmissionDirection = Enum.NormalId.Top
dots_18714.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18714.ZOffset = 1.0080000162124634
dots_18714.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18714.LockedToPart = true
dots_18714.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18714.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18714.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18714.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18714.FlipbookStartRandom = false
dots_18714.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 lines_18715=i("Beam", topleftdown_18708)
lines_18715.Name="lines"
lines_18715:SetAttribute("EmitDuration", 0)
lines_18715:SetAttribute("AuraInstance", true)
lines_18715.Enabled = true
lines_18715.Width0 = 1.7846400737762451
lines_18715.Width1 = 1.7846400737762451
lines_18715.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18715.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18715.CurveSize0 = 0
lines_18715.CurveSize1 = 0
lines_18715.FaceCamera = true
lines_18715.LightEmission = 1
lines_18715.LightInfluence = 0
lines_18715.Segments = 10
lines_18715.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18715.TextureLength = 0.625
lines_18715.TextureSpeed = 0.3777218461036682

 smokeblack_18716=i("Beam", topleftdown_18708)
smokeblack_18716.Name="smokeblack"
smokeblack_18716:SetAttribute("EmitDuration", 0)
smokeblack_18716:SetAttribute("AuraInstance", true)
smokeblack_18716.Enabled = true
smokeblack_18716.Width0 = 2.0592002868652344
smokeblack_18716.Width1 = 2.0592002868652344
smokeblack_18716.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18716.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18716.CurveSize0 = 0
smokeblack_18716.CurveSize1 = 0
smokeblack_18716.FaceCamera = true
smokeblack_18716.LightEmission = 0.4000000059604645
smokeblack_18716.LightInfluence = 0
smokeblack_18716.Segments = 10
smokeblack_18716.Texture = "rbxassetid://14191603094"
smokeblack_18716.TextureLength = 12
smokeblack_18716.TextureSpeed = 0.7554436922073364

 splatter_18717=i("ParticleEmitter", topleftdown_18708)
splatter_18717.Name="splatter"
splatter_18717:SetAttribute("EmitDuration", 0)
splatter_18717:SetAttribute("AuraInstance", true)
splatter_18717:SetAttribute("EmitCount", 1)
splatter_18717.Enabled = true
splatter_18717.Rate = 70
splatter_18717.Lifetime = nr(0.25,0.3499999940395355)
splatter_18717.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18717.Rotation = nr(-1000,1000)
splatter_18717.RotSpeed = nr(0,0)
splatter_18717.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18717.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18717.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18717.LightEmission = -20
splatter_18717.LightInfluence = 0
splatter_18717.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18717.Drag = 0
splatter_18717.EmissionDirection = Enum.NormalId.Top
splatter_18717.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18717.ZOffset = 1.0069999694824219
splatter_18717.Texture = "rbxassetid://15004620425"
splatter_18717.LockedToPart = true
splatter_18717.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18717.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18717.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18717.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18717.FlipbookStartRandom = false
splatter_18717.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18718=i("Attachment", topleftdown_18708)
edges_18718.Name="edges"
edges_18718:SetAttribute("AuraInstance", true)
edges_18718.Position = v3(0.600000,0.600000,-0.600000)
edges_18718.Visible = false

 beam_18719=i("Beam", edges_18718)
beam_18719.Name="beam"
beam_18719:SetAttribute("EmitDuration", 0)
beam_18719:SetAttribute("AuraInstance", true)
beam_18719.Enabled = true
beam_18719.Width0 = 0.48000001907348633
beam_18719.Width1 = 0
beam_18719.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18719.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18719.CurveSize0 = 0
beam_18719.CurveSize1 = 0
beam_18719.FaceCamera = true
beam_18719.LightEmission = 1
beam_18719.LightInfluence = 0
beam_18719.Segments = 10
beam_18719.Texture = "rbxassetid://14166981368"
beam_18719.TextureLength = 0.5
beam_18719.TextureSpeed = 1.5108873844146729

 beam_18720=i("Beam", edges_18718)
beam_18720.Name="beam"
beam_18720:SetAttribute("EmitDuration", 0)
beam_18720:SetAttribute("AuraInstance", true)
beam_18720.Enabled = true
beam_18720.Width0 = 0.48000001907348633
beam_18720.Width1 = 0
beam_18720.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18720.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18720.CurveSize0 = 0
beam_18720.CurveSize1 = 0
beam_18720.FaceCamera = true
beam_18720.LightEmission = 1
beam_18720.LightInfluence = 0
beam_18720.Segments = 10
beam_18720.Texture = "rbxassetid://14166981368"
beam_18720.TextureLength = 0.5
beam_18720.TextureSpeed = 1.5108873844146729

 beam_18721=i("Beam", edges_18718)
beam_18721.Name="beam"
beam_18721:SetAttribute("EmitDuration", 0)
beam_18721:SetAttribute("AuraInstance", true)
beam_18721.Enabled = true
beam_18721.Width0 = 0.48000001907348633
beam_18721.Width1 = 0
beam_18721.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18721.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18721.CurveSize0 = 0
beam_18721.CurveSize1 = 0
beam_18721.FaceCamera = true
beam_18721.LightEmission = 1
beam_18721.LightInfluence = 0
beam_18721.Segments = 10
beam_18721.Texture = "rbxassetid://14166981368"
beam_18721.TextureLength = 0.5
beam_18721.TextureSpeed = 1.5108873844146729

 star_18722=i("ParticleEmitter", edges_18718)
star_18722.Name="star"
star_18722:SetAttribute("EmitDelay", 0)
star_18722:SetAttribute("AuraInstance", true)
star_18722:SetAttribute("EmitDuration", 0)
star_18722:SetAttribute("EmitCount", 1)
star_18722.Enabled = true
star_18722.Rate = 24
star_18722.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18722.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18722.Rotation = nr(0,0)
star_18722.RotSpeed = nr(0,0)
star_18722.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18722.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18722.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18722.LightEmission = 0
star_18722.LightInfluence = 0
star_18722.Acceleration = v3(0.000000,0.000000,0.000001)
star_18722.Drag = 0
star_18722.EmissionDirection = Enum.NormalId.Top
star_18722.SpreadAngle = v2(360000.000000,360000.000000)
star_18722.ZOffset = 1.5049999952316284
star_18722.Texture = "rbxassetid://130506341047209"
star_18722.LockedToPart = true
star_18722.Orientation = Enum.ParticleOrientation.FacingCamera
star_18722.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18722.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18722.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18722.FlipbookStartRandom = false
star_18722.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18723=i("Attachment", edges_18718)
trail_18723.Name="trail"
trail_18723:SetAttribute("AuraInstance", true)
trail_18723.Position = v3(0.000000,0.000007,0.000037)
trail_18723.Visible = false

 Attachment_18724=i("Attachment", trail_18723)
Attachment_18724.Name="Attachment"
Attachment_18724:SetAttribute("AuraInstance", true)
Attachment_18724.Position = v3(12.513684,0.000000,0.000000)
Attachment_18724.Visible = false

 Trail_18725=i("Trail", trail_18723)
Trail_18725.Name="Trail"
Trail_18725:SetAttribute("EmitDuration", 0)
Trail_18725:SetAttribute("AuraInstance", true)
Trail_18725.Enabled = true
Trail_18725.Lifetime = 0.15000000596046448
Trail_18725.FaceCamera = true
Trail_18725.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18725.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18725.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18725.Texture = "rbxassetid://14050984567"
Trail_18725.TextureLength = 1.2000000476837158
Trail_18725.LightEmission = 1
Trail_18725.LightInfluence = 0

 Attachment_18726=i("Attachment", trail_18723)
Attachment_18726.Name="Attachment"
Attachment_18726:SetAttribute("AuraInstance", true)
Attachment_18726.Position = v3(-12.028894,0.000000,0.000000)
Attachment_18726.Visible = false

 toprightdown_18727=i("Attachment", beamedge_18706)
toprightdown_18727.Name="toprightdown"
toprightdown_18727:SetAttribute("AuraInstance", true)
toprightdown_18727.Position = v3(-5.777051,5.777035,-5.777124)
toprightdown_18727.Visible = false

 blacksmoke_18728=i("ParticleEmitter", toprightdown_18727)
blacksmoke_18728.Name="blacksmoke"
blacksmoke_18728:SetAttribute("EmitDelay", 0)
blacksmoke_18728:SetAttribute("AuraInstance", true)
blacksmoke_18728:SetAttribute("EmitDuration", 0)
blacksmoke_18728:SetAttribute("EmitCount", 1)
blacksmoke_18728.Enabled = true
blacksmoke_18728.Rate = 14.399999618530273
blacksmoke_18728.Lifetime = nr(0.25,0.25)
blacksmoke_18728.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18728.Rotation = nr(-1000,1000)
blacksmoke_18728.RotSpeed = nr(0,0)
blacksmoke_18728.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18728.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18728.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18728.LightEmission = -0.5
blacksmoke_18728.LightInfluence = 0
blacksmoke_18728.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18728.Drag = 0
blacksmoke_18728.EmissionDirection = Enum.NormalId.Top
blacksmoke_18728.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18728.ZOffset = 1.0010000467300415
blacksmoke_18728.Texture = "rbxassetid://16310636399"
blacksmoke_18728.LockedToPart = true
blacksmoke_18728.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18728.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18728.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18728.FlipbookFramerate = nr(36,36)
blacksmoke_18728.FlipbookStartRandom = false
blacksmoke_18728.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 blacksmoke2_18729=i("ParticleEmitter", toprightdown_18727)
blacksmoke2_18729.Name="blacksmoke2"
blacksmoke2_18729:SetAttribute("EmitDelay", 0)
blacksmoke2_18729:SetAttribute("AuraInstance", true)
blacksmoke2_18729:SetAttribute("EmitDuration", 0)
blacksmoke2_18729:SetAttribute("EmitCount", 1)
blacksmoke2_18729.Enabled = false
blacksmoke2_18729.Rate = 14.399999618530273
blacksmoke2_18729.Lifetime = nr(0.25,0.25)
blacksmoke2_18729.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18729.Rotation = nr(-360,360)
blacksmoke2_18729.RotSpeed = nr(0,0)
blacksmoke2_18729.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18729.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18729.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18729.LightEmission = -1
blacksmoke2_18729.LightInfluence = 0
blacksmoke2_18729.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18729.Drag = 0
blacksmoke2_18729.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18729.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18729.ZOffset = 1.0019999742507935
blacksmoke2_18729.Texture = "rbxassetid://13916934000"
blacksmoke2_18729.LockedToPart = true
blacksmoke2_18729.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18729.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18729.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18729.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18729.FlipbookStartRandom = false
blacksmoke2_18729.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18730=i("ParticleEmitter", toprightdown_18727)
dots_18730.Name="dots"
dots_18730:SetAttribute("EmitDuration", 0)
dots_18730:SetAttribute("AuraInstance", true)
dots_18730:SetAttribute("EmitCount", 1)
dots_18730.Enabled = true
dots_18730.Rate = 60
dots_18730.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18730.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18730.Rotation = nr(-1000,1000)
dots_18730.RotSpeed = nr(0,0)
dots_18730.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18730.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18730.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18730.LightEmission = 1
dots_18730.LightInfluence = 0
dots_18730.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18730.Drag = 0
dots_18730.EmissionDirection = Enum.NormalId.Top
dots_18730.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18730.ZOffset = 1.0080000162124634
dots_18730.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18730.LockedToPart = true
dots_18730.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18730.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18730.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18730.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18730.FlipbookStartRandom = false
dots_18730.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 star_18731=i("ParticleEmitter", toprightdown_18727)
star_18731.Name="star"
star_18731:SetAttribute("EmitDelay", 0)
star_18731:SetAttribute("AuraInstance", true)
star_18731:SetAttribute("EmitDuration", 0)
star_18731:SetAttribute("EmitCount", 1)
star_18731.Enabled = true
star_18731.Rate = 24
star_18731.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18731.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18731.Rotation = nr(0,0)
star_18731.RotSpeed = nr(0,0)
star_18731.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18731.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18731.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18731.LightEmission = 0
star_18731.LightInfluence = 0
star_18731.Acceleration = v3(0.000000,0.000000,0.000001)
star_18731.Drag = 0
star_18731.EmissionDirection = Enum.NormalId.Top
star_18731.SpreadAngle = v2(360000.000000,360000.000000)
star_18731.ZOffset = 1.5049999952316284
star_18731.Texture = "rbxassetid://130506341047209"
star_18731.LockedToPart = true
star_18731.Orientation = Enum.ParticleOrientation.FacingCamera
star_18731.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18731.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18731.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18731.FlipbookStartRandom = false
star_18731.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 beam_18732=i("Beam", toprightdown_18727)
beam_18732.Name="beam"
beam_18732:SetAttribute("EmitDuration", 0)
beam_18732:SetAttribute("AuraInstance", true)
beam_18732.Enabled = true
beam_18732.Width0 = 0.20592001080513
beam_18732.Width1 = 0.20592001080513
beam_18732.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18732.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18732.CurveSize0 = 0
beam_18732.CurveSize1 = 0
beam_18732.FaceCamera = true
beam_18732.LightEmission = 1
beam_18732.LightInfluence = 0
beam_18732.Segments = 10
beam_18732.Texture = "rbxassetid://16310670422"
beam_18732.TextureLength = 0.5
beam_18732.TextureSpeed = 1.5108873844146729

 lines_18733=i("Beam", toprightdown_18727)
lines_18733.Name="lines"
lines_18733:SetAttribute("EmitDuration", 0)
lines_18733:SetAttribute("AuraInstance", true)
lines_18733.Enabled = true
lines_18733.Width0 = 1.7846400737762451
lines_18733.Width1 = 1.7846400737762451
lines_18733.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18733.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18733.CurveSize0 = 0
lines_18733.CurveSize1 = 0
lines_18733.FaceCamera = true
lines_18733.LightEmission = 1
lines_18733.LightInfluence = 0
lines_18733.Segments = 10
lines_18733.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18733.TextureLength = 0.625
lines_18733.TextureSpeed = 0.3777218461036682

 beam2_18734=i("Beam", toprightdown_18727)
beam2_18734.Name="beam2"
beam2_18734:SetAttribute("EmitDuration", 0)
beam2_18734:SetAttribute("AuraInstance", true)
beam2_18734.Enabled = true
beam2_18734.Width0 = 1.0982400178909302
beam2_18734.Width1 = 1.0982400178909302
beam2_18734.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18734.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18734.CurveSize0 = 0
beam2_18734.CurveSize1 = 0
beam2_18734.FaceCamera = true
beam2_18734.LightEmission = 0
beam2_18734.LightInfluence = 0
beam2_18734.Segments = 10
beam2_18734.Texture = "rbxassetid://18837319394"
beam2_18734.TextureLength = 2.25
beam2_18734.TextureSpeed = 1.5108873844146729

 smokeblack_18735=i("Beam", toprightdown_18727)
smokeblack_18735.Name="smokeblack"
smokeblack_18735:SetAttribute("EmitDuration", 0)
smokeblack_18735:SetAttribute("AuraInstance", true)
smokeblack_18735.Enabled = true
smokeblack_18735.Width0 = 2.0592002868652344
smokeblack_18735.Width1 = 2.0592002868652344
smokeblack_18735.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18735.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18735.CurveSize0 = 0
smokeblack_18735.CurveSize1 = 0
smokeblack_18735.FaceCamera = true
smokeblack_18735.LightEmission = 0.4000000059604645
smokeblack_18735.LightInfluence = 0
smokeblack_18735.Segments = 10
smokeblack_18735.Texture = "rbxassetid://14191603094"
smokeblack_18735.TextureLength = 12
smokeblack_18735.TextureSpeed = 0.7554436922073364

 splatter_18736=i("ParticleEmitter", toprightdown_18727)
splatter_18736.Name="splatter"
splatter_18736:SetAttribute("EmitDuration", 0)
splatter_18736:SetAttribute("AuraInstance", true)
splatter_18736:SetAttribute("EmitCount", 1)
splatter_18736.Enabled = true
splatter_18736.Rate = 70
splatter_18736.Lifetime = nr(0.25,0.3499999940395355)
splatter_18736.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18736.Rotation = nr(-1000,1000)
splatter_18736.RotSpeed = nr(0,0)
splatter_18736.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18736.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18736.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18736.LightEmission = -20
splatter_18736.LightInfluence = 0
splatter_18736.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18736.Drag = 0
splatter_18736.EmissionDirection = Enum.NormalId.Top
splatter_18736.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18736.ZOffset = 1.0069999694824219
splatter_18736.Texture = "rbxassetid://15004620425"
splatter_18736.LockedToPart = true
splatter_18736.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18736.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18736.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18736.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18736.FlipbookStartRandom = false
splatter_18736.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18737=i("Attachment", toprightdown_18727)
edges_18737.Name="edges"
edges_18737:SetAttribute("AuraInstance", true)
edges_18737.Position = v3(-0.600000,0.600000,-0.600000)
edges_18737.Visible = false

 beam_18738=i("Beam", edges_18737)
beam_18738.Name="beam"
beam_18738:SetAttribute("EmitDuration", 0)
beam_18738:SetAttribute("AuraInstance", true)
beam_18738.Enabled = true
beam_18738.Width0 = 0.48000001907348633
beam_18738.Width1 = 0
beam_18738.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18738.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18738.CurveSize0 = 0
beam_18738.CurveSize1 = 0
beam_18738.FaceCamera = true
beam_18738.LightEmission = 1
beam_18738.LightInfluence = 0
beam_18738.Segments = 10
beam_18738.Texture = "rbxassetid://14166981368"
beam_18738.TextureLength = 0.5
beam_18738.TextureSpeed = 1.5108873844146729

 beam_18739=i("Beam", edges_18737)
beam_18739.Name="beam"
beam_18739:SetAttribute("EmitDuration", 0)
beam_18739:SetAttribute("AuraInstance", true)
beam_18739.Enabled = true
beam_18739.Width0 = 0.48000001907348633
beam_18739.Width1 = 0
beam_18739.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18739.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18739.CurveSize0 = 0
beam_18739.CurveSize1 = 0
beam_18739.FaceCamera = true
beam_18739.LightEmission = 1
beam_18739.LightInfluence = 0
beam_18739.Segments = 10
beam_18739.Texture = "rbxassetid://14166981368"
beam_18739.TextureLength = 0.5
beam_18739.TextureSpeed = 1.5108873844146729

 beam_18740=i("Beam", edges_18737)
beam_18740.Name="beam"
beam_18740:SetAttribute("EmitDuration", 0)
beam_18740:SetAttribute("AuraInstance", true)
beam_18740.Enabled = true
beam_18740.Width0 = 0.48000001907348633
beam_18740.Width1 = 0
beam_18740.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18740.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18740.CurveSize0 = 0
beam_18740.CurveSize1 = 0
beam_18740.FaceCamera = true
beam_18740.LightEmission = 1
beam_18740.LightInfluence = 0
beam_18740.Segments = 10
beam_18740.Texture = "rbxassetid://14166981368"
beam_18740.TextureLength = 0.5
beam_18740.TextureSpeed = 1.5108873844146729

 star_18741=i("ParticleEmitter", edges_18737)
star_18741.Name="star"
star_18741:SetAttribute("EmitDelay", 0)
star_18741:SetAttribute("AuraInstance", true)
star_18741:SetAttribute("EmitDuration", 0)
star_18741:SetAttribute("EmitCount", 1)
star_18741.Enabled = true
star_18741.Rate = 24
star_18741.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18741.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18741.Rotation = nr(0,0)
star_18741.RotSpeed = nr(0,0)
star_18741.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18741.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18741.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18741.LightEmission = 0
star_18741.LightInfluence = 0
star_18741.Acceleration = v3(0.000000,0.000000,0.000001)
star_18741.Drag = 0
star_18741.EmissionDirection = Enum.NormalId.Top
star_18741.SpreadAngle = v2(360000.000000,360000.000000)
star_18741.ZOffset = 1.5049999952316284
star_18741.Texture = "rbxassetid://130506341047209"
star_18741.LockedToPart = true
star_18741.Orientation = Enum.ParticleOrientation.FacingCamera
star_18741.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18741.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18741.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18741.FlipbookStartRandom = false
star_18741.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18742=i("Attachment", edges_18737)
trail_18742.Name="trail"
trail_18742:SetAttribute("AuraInstance", true)
trail_18742.Position = v3(0.000000,0.000007,0.000037)
trail_18742.Visible = false

 Attachment_18743=i("Attachment", trail_18742)
Attachment_18743.Name="Attachment"
Attachment_18743:SetAttribute("AuraInstance", true)
Attachment_18743.Position = v3(12.513612,0.000000,0.000000)
Attachment_18743.Visible = false

 Trail_18744=i("Trail", trail_18742)
Trail_18744.Name="Trail"
Trail_18744:SetAttribute("EmitDuration", 0)
Trail_18744:SetAttribute("AuraInstance", true)
Trail_18744.Enabled = true
Trail_18744.Lifetime = 0.15000000596046448
Trail_18744.FaceCamera = true
Trail_18744.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18744.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18744.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18744.Texture = "rbxassetid://14050984567"
Trail_18744.TextureLength = 1.2000000476837158
Trail_18744.LightEmission = 1
Trail_18744.LightInfluence = 0

 Attachment_18745=i("Attachment", trail_18742)
Attachment_18745.Name="Attachment"
Attachment_18745:SetAttribute("AuraInstance", true)
Attachment_18745.Position = v3(-12.028968,0.000000,0.000000)
Attachment_18745.Visible = false

 toprightup_18746=i("Attachment", beamedge_18706)
toprightup_18746.Name="toprightup"
toprightup_18746:SetAttribute("AuraInstance", true)
toprightup_18746.Position = v3(-5.777051,5.777035,5.777051)
toprightup_18746.Visible = false

 blacksmoke_18747=i("ParticleEmitter", toprightup_18746)
blacksmoke_18747.Name="blacksmoke"
blacksmoke_18747:SetAttribute("EmitDelay", 0)
blacksmoke_18747:SetAttribute("AuraInstance", true)
blacksmoke_18747:SetAttribute("EmitDuration", 0)
blacksmoke_18747:SetAttribute("EmitCount", 1)
blacksmoke_18747.Enabled = true
blacksmoke_18747.Rate = 14.399999618530273
blacksmoke_18747.Lifetime = nr(0.25,0.25)
blacksmoke_18747.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18747.Rotation = nr(-1000,1000)
blacksmoke_18747.RotSpeed = nr(0,0)
blacksmoke_18747.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18747.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18747.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18747.LightEmission = -0.5
blacksmoke_18747.LightInfluence = 0
blacksmoke_18747.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18747.Drag = 0
blacksmoke_18747.EmissionDirection = Enum.NormalId.Top
blacksmoke_18747.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18747.ZOffset = 1.0010000467300415
blacksmoke_18747.Texture = "rbxassetid://16310636399"
blacksmoke_18747.LockedToPart = true
blacksmoke_18747.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18747.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18747.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18747.FlipbookFramerate = nr(36,36)
blacksmoke_18747.FlipbookStartRandom = false
blacksmoke_18747.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 blacksmoke2_18748=i("ParticleEmitter", toprightup_18746)
blacksmoke2_18748.Name="blacksmoke2"
blacksmoke2_18748:SetAttribute("EmitDelay", 0)
blacksmoke2_18748:SetAttribute("AuraInstance", true)
blacksmoke2_18748:SetAttribute("EmitDuration", 0)
blacksmoke2_18748:SetAttribute("EmitCount", 1)
blacksmoke2_18748.Enabled = false
blacksmoke2_18748.Rate = 14.399999618530273
blacksmoke2_18748.Lifetime = nr(0.25,0.25)
blacksmoke2_18748.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18748.Rotation = nr(-360,360)
blacksmoke2_18748.RotSpeed = nr(0,0)
blacksmoke2_18748.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18748.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18748.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18748.LightEmission = -1
blacksmoke2_18748.LightInfluence = 0
blacksmoke2_18748.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18748.Drag = 0
blacksmoke2_18748.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18748.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18748.ZOffset = 1.0019999742507935
blacksmoke2_18748.Texture = "rbxassetid://13916934000"
blacksmoke2_18748.LockedToPart = true
blacksmoke2_18748.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18748.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18748.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18748.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18748.FlipbookStartRandom = false
blacksmoke2_18748.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18749=i("ParticleEmitter", toprightup_18746)
dots_18749.Name="dots"
dots_18749:SetAttribute("EmitDuration", 0)
dots_18749:SetAttribute("AuraInstance", true)
dots_18749:SetAttribute("EmitCount", 1)
dots_18749.Enabled = true
dots_18749.Rate = 60
dots_18749.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18749.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18749.Rotation = nr(-1000,1000)
dots_18749.RotSpeed = nr(0,0)
dots_18749.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18749.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18749.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18749.LightEmission = 1
dots_18749.LightInfluence = 0
dots_18749.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18749.Drag = 0
dots_18749.EmissionDirection = Enum.NormalId.Top
dots_18749.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18749.ZOffset = 1.0080000162124634
dots_18749.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18749.LockedToPart = true
dots_18749.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18749.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18749.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18749.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18749.FlipbookStartRandom = false
dots_18749.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 star_18750=i("ParticleEmitter", toprightup_18746)
star_18750.Name="star"
star_18750:SetAttribute("EmitDelay", 0)
star_18750:SetAttribute("AuraInstance", true)
star_18750:SetAttribute("EmitDuration", 0)
star_18750:SetAttribute("EmitCount", 1)
star_18750.Enabled = true
star_18750.Rate = 24
star_18750.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18750.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18750.Rotation = nr(0,0)
star_18750.RotSpeed = nr(0,0)
star_18750.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18750.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18750.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18750.LightEmission = 0
star_18750.LightInfluence = 0
star_18750.Acceleration = v3(0.000000,0.000000,0.000001)
star_18750.Drag = 0
star_18750.EmissionDirection = Enum.NormalId.Top
star_18750.SpreadAngle = v2(360000.000000,360000.000000)
star_18750.ZOffset = 1.5049999952316284
star_18750.Texture = "rbxassetid://130506341047209"
star_18750.LockedToPart = true
star_18750.Orientation = Enum.ParticleOrientation.FacingCamera
star_18750.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18750.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18750.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18750.FlipbookStartRandom = false
star_18750.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 beam_18751=i("Beam", toprightup_18746)
beam_18751.Name="beam"
beam_18751:SetAttribute("EmitDuration", 0)
beam_18751:SetAttribute("AuraInstance", true)
beam_18751.Enabled = true
beam_18751.Width0 = 0.20592001080513
beam_18751.Width1 = 0.20592001080513
beam_18751.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18751.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18751.CurveSize0 = 0
beam_18751.CurveSize1 = 0
beam_18751.FaceCamera = true
beam_18751.LightEmission = 1
beam_18751.LightInfluence = 0
beam_18751.Segments = 10
beam_18751.Texture = "rbxassetid://16310670422"
beam_18751.TextureLength = 0.5
beam_18751.TextureSpeed = 1.5108873844146729

 lines_18752=i("Beam", toprightup_18746)
lines_18752.Name="lines"
lines_18752:SetAttribute("EmitDuration", 0)
lines_18752:SetAttribute("AuraInstance", true)
lines_18752.Enabled = true
lines_18752.Width0 = 1.7846400737762451
lines_18752.Width1 = 1.7846400737762451
lines_18752.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18752.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18752.CurveSize0 = 0
lines_18752.CurveSize1 = 0
lines_18752.FaceCamera = true
lines_18752.LightEmission = 1
lines_18752.LightInfluence = 0
lines_18752.Segments = 10
lines_18752.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18752.TextureLength = 0.625
lines_18752.TextureSpeed = 0.3777218461036682

 beam2_18753=i("Beam", toprightup_18746)
beam2_18753.Name="beam2"
beam2_18753:SetAttribute("EmitDuration", 0)
beam2_18753:SetAttribute("AuraInstance", true)
beam2_18753.Enabled = true
beam2_18753.Width0 = 1.0982400178909302
beam2_18753.Width1 = 1.0982400178909302
beam2_18753.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18753.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18753.CurveSize0 = 0
beam2_18753.CurveSize1 = 0
beam2_18753.FaceCamera = true
beam2_18753.LightEmission = 0
beam2_18753.LightInfluence = 0
beam2_18753.Segments = 10
beam2_18753.Texture = "rbxassetid://18837319394"
beam2_18753.TextureLength = 2.25
beam2_18753.TextureSpeed = 1.5108873844146729

 smokeblack_18754=i("Beam", toprightup_18746)
smokeblack_18754.Name="smokeblack"
smokeblack_18754:SetAttribute("EmitDuration", 0)
smokeblack_18754:SetAttribute("AuraInstance", true)
smokeblack_18754.Enabled = true
smokeblack_18754.Width0 = 2.0592002868652344
smokeblack_18754.Width1 = 2.0592002868652344
smokeblack_18754.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18754.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18754.CurveSize0 = 0
smokeblack_18754.CurveSize1 = 0
smokeblack_18754.FaceCamera = true
smokeblack_18754.LightEmission = 0.4000000059604645
smokeblack_18754.LightInfluence = 0
smokeblack_18754.Segments = 10
smokeblack_18754.Texture = "rbxassetid://14191603094"
smokeblack_18754.TextureLength = 12
smokeblack_18754.TextureSpeed = 0.7554436922073364

 splatter_18755=i("ParticleEmitter", toprightup_18746)
splatter_18755.Name="splatter"
splatter_18755:SetAttribute("EmitDuration", 0)
splatter_18755:SetAttribute("AuraInstance", true)
splatter_18755:SetAttribute("EmitCount", 1)
splatter_18755.Enabled = true
splatter_18755.Rate = 70
splatter_18755.Lifetime = nr(0.25,0.3499999940395355)
splatter_18755.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18755.Rotation = nr(-1000,1000)
splatter_18755.RotSpeed = nr(0,0)
splatter_18755.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18755.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18755.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18755.LightEmission = -20
splatter_18755.LightInfluence = 0
splatter_18755.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18755.Drag = 0
splatter_18755.EmissionDirection = Enum.NormalId.Top
splatter_18755.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18755.ZOffset = 1.0069999694824219
splatter_18755.Texture = "rbxassetid://15004620425"
splatter_18755.LockedToPart = true
splatter_18755.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18755.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18755.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18755.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18755.FlipbookStartRandom = false
splatter_18755.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18756=i("Attachment", toprightup_18746)
edges_18756.Name="edges"
edges_18756:SetAttribute("AuraInstance", true)
edges_18756.Position = v3(-0.600000,0.600000,0.600000)
edges_18756.Visible = false

 beam_18757=i("Beam", edges_18756)
beam_18757.Name="beam"
beam_18757:SetAttribute("EmitDuration", 0)
beam_18757:SetAttribute("AuraInstance", true)
beam_18757.Enabled = true
beam_18757.Width0 = 0.48000001907348633
beam_18757.Width1 = 0
beam_18757.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18757.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18757.CurveSize0 = 0
beam_18757.CurveSize1 = 0
beam_18757.FaceCamera = true
beam_18757.LightEmission = 1
beam_18757.LightInfluence = 0
beam_18757.Segments = 10
beam_18757.Texture = "rbxassetid://14166981368"
beam_18757.TextureLength = 0.5
beam_18757.TextureSpeed = 1.5108873844146729

 beam_18758=i("Beam", edges_18756)
beam_18758.Name="beam"
beam_18758:SetAttribute("EmitDuration", 0)
beam_18758:SetAttribute("AuraInstance", true)
beam_18758.Enabled = true
beam_18758.Width0 = 0.48000001907348633
beam_18758.Width1 = 0
beam_18758.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18758.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18758.CurveSize0 = 0
beam_18758.CurveSize1 = 0
beam_18758.FaceCamera = true
beam_18758.LightEmission = 1
beam_18758.LightInfluence = 0
beam_18758.Segments = 10
beam_18758.Texture = "rbxassetid://14166981368"
beam_18758.TextureLength = 0.5
beam_18758.TextureSpeed = 1.5108873844146729

 beam_18759=i("Beam", edges_18756)
beam_18759.Name="beam"
beam_18759:SetAttribute("EmitDuration", 0)
beam_18759:SetAttribute("AuraInstance", true)
beam_18759.Enabled = true
beam_18759.Width0 = 0.48000001907348633
beam_18759.Width1 = 0
beam_18759.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18759.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18759.CurveSize0 = 0
beam_18759.CurveSize1 = 0
beam_18759.FaceCamera = true
beam_18759.LightEmission = 1
beam_18759.LightInfluence = 0
beam_18759.Segments = 10
beam_18759.Texture = "rbxassetid://14166981368"
beam_18759.TextureLength = 0.5
beam_18759.TextureSpeed = 1.5108873844146729

 star_18760=i("ParticleEmitter", edges_18756)
star_18760.Name="star"
star_18760:SetAttribute("EmitDelay", 0)
star_18760:SetAttribute("AuraInstance", true)
star_18760:SetAttribute("EmitDuration", 0)
star_18760:SetAttribute("EmitCount", 1)
star_18760.Enabled = true
star_18760.Rate = 24
star_18760.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18760.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18760.Rotation = nr(0,0)
star_18760.RotSpeed = nr(0,0)
star_18760.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18760.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18760.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18760.LightEmission = 0
star_18760.LightInfluence = 0
star_18760.Acceleration = v3(0.000000,0.000000,0.000001)
star_18760.Drag = 0
star_18760.EmissionDirection = Enum.NormalId.Top
star_18760.SpreadAngle = v2(360000.000000,360000.000000)
star_18760.ZOffset = 1.5049999952316284
star_18760.Texture = "rbxassetid://130506341047209"
star_18760.LockedToPart = true
star_18760.Orientation = Enum.ParticleOrientation.FacingCamera
star_18760.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18760.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18760.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18760.FlipbookStartRandom = false
star_18760.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18761=i("Attachment", edges_18756)
trail_18761.Name="trail"
trail_18761:SetAttribute("AuraInstance", true)
trail_18761.Position = v3(0.000000,0.000007,0.000000)
trail_18761.Visible = false

 Attachment_18762=i("Attachment", trail_18761)
Attachment_18762.Name="Attachment"
Attachment_18762:SetAttribute("AuraInstance", true)
Attachment_18762.Position = v3(12.513612,0.000000,0.000000)
Attachment_18762.Visible = false

 Trail_18763=i("Trail", trail_18761)
Trail_18763.Name="Trail"
Trail_18763:SetAttribute("EmitDuration", 0)
Trail_18763:SetAttribute("AuraInstance", true)
Trail_18763.Enabled = true
Trail_18763.Lifetime = 0.15000000596046448
Trail_18763.FaceCamera = true
Trail_18763.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18763.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18763.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18763.Texture = "rbxassetid://14050984567"
Trail_18763.TextureLength = 1.2000000476837158
Trail_18763.LightEmission = 1
Trail_18763.LightInfluence = 0

 Attachment_18764=i("Attachment", trail_18761)
Attachment_18764.Name="Attachment"
Attachment_18764:SetAttribute("AuraInstance", true)
Attachment_18764.Position = v3(-12.028968,0.000000,0.000000)
Attachment_18764.Visible = false

 topleftup_18765=i("Attachment", beamedge_18706)
topleftup_18765.Name="topleftup"
topleftup_18765:SetAttribute("AuraInstance", true)
topleftup_18765.Position = v3(5.777051,5.777035,5.777051)
topleftup_18765.Visible = false

 blacksmoke_18766=i("ParticleEmitter", topleftup_18765)
blacksmoke_18766.Name="blacksmoke"
blacksmoke_18766:SetAttribute("EmitDelay", 0)
blacksmoke_18766:SetAttribute("AuraInstance", true)
blacksmoke_18766:SetAttribute("EmitDuration", 0)
blacksmoke_18766:SetAttribute("EmitCount", 1)
blacksmoke_18766.Enabled = true
blacksmoke_18766.Rate = 14.399999618530273
blacksmoke_18766.Lifetime = nr(0.25,0.25)
blacksmoke_18766.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18766.Rotation = nr(-1000,1000)
blacksmoke_18766.RotSpeed = nr(0,0)
blacksmoke_18766.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18766.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18766.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18766.LightEmission = -0.5
blacksmoke_18766.LightInfluence = 0
blacksmoke_18766.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18766.Drag = 0
blacksmoke_18766.EmissionDirection = Enum.NormalId.Top
blacksmoke_18766.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18766.ZOffset = 1.0010000467300415
blacksmoke_18766.Texture = "rbxassetid://16310636399"
blacksmoke_18766.LockedToPart = true
blacksmoke_18766.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18766.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18766.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18766.FlipbookFramerate = nr(36,36)
blacksmoke_18766.FlipbookStartRandom = false
blacksmoke_18766.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 blacksmoke2_18767=i("ParticleEmitter", topleftup_18765)
blacksmoke2_18767.Name="blacksmoke2"
blacksmoke2_18767:SetAttribute("EmitDelay", 0)
blacksmoke2_18767:SetAttribute("AuraInstance", true)
blacksmoke2_18767:SetAttribute("EmitDuration", 0)
blacksmoke2_18767:SetAttribute("EmitCount", 1)
blacksmoke2_18767.Enabled = false
blacksmoke2_18767.Rate = 14.399999618530273
blacksmoke2_18767.Lifetime = nr(0.25,0.25)
blacksmoke2_18767.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18767.Rotation = nr(-360,360)
blacksmoke2_18767.RotSpeed = nr(0,0)
blacksmoke2_18767.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18767.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18767.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18767.LightEmission = -1
blacksmoke2_18767.LightInfluence = 0
blacksmoke2_18767.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18767.Drag = 0
blacksmoke2_18767.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18767.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18767.ZOffset = 1.0019999742507935
blacksmoke2_18767.Texture = "rbxassetid://13916934000"
blacksmoke2_18767.LockedToPart = true
blacksmoke2_18767.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18767.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18767.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18767.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18767.FlipbookStartRandom = false
blacksmoke2_18767.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18768=i("ParticleEmitter", topleftup_18765)
dots_18768.Name="dots"
dots_18768:SetAttribute("EmitDuration", 0)
dots_18768:SetAttribute("AuraInstance", true)
dots_18768:SetAttribute("EmitCount", 1)
dots_18768.Enabled = true
dots_18768.Rate = 60
dots_18768.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18768.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18768.Rotation = nr(-1000,1000)
dots_18768.RotSpeed = nr(0,0)
dots_18768.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18768.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18768.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18768.LightEmission = 1
dots_18768.LightInfluence = 0
dots_18768.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18768.Drag = 0
dots_18768.EmissionDirection = Enum.NormalId.Top
dots_18768.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18768.ZOffset = 1.0080000162124634
dots_18768.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18768.LockedToPart = true
dots_18768.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18768.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18768.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18768.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18768.FlipbookStartRandom = false
dots_18768.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 star_18769=i("ParticleEmitter", topleftup_18765)
star_18769.Name="star"
star_18769:SetAttribute("EmitDelay", 0)
star_18769:SetAttribute("AuraInstance", true)
star_18769:SetAttribute("EmitDuration", 0)
star_18769:SetAttribute("EmitCount", 1)
star_18769.Enabled = true
star_18769.Rate = 24
star_18769.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18769.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18769.Rotation = nr(0,0)
star_18769.RotSpeed = nr(0,0)
star_18769.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18769.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18769.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18769.LightEmission = 0
star_18769.LightInfluence = 0
star_18769.Acceleration = v3(0.000000,0.000000,0.000001)
star_18769.Drag = 0
star_18769.EmissionDirection = Enum.NormalId.Top
star_18769.SpreadAngle = v2(360000.000000,360000.000000)
star_18769.ZOffset = 1.5049999952316284
star_18769.Texture = "rbxassetid://130506341047209"
star_18769.LockedToPart = true
star_18769.Orientation = Enum.ParticleOrientation.FacingCamera
star_18769.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18769.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18769.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18769.FlipbookStartRandom = false
star_18769.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 beam_18770=i("Beam", topleftup_18765)
beam_18770.Name="beam"
beam_18770:SetAttribute("EmitDuration", 0)
beam_18770:SetAttribute("AuraInstance", true)
beam_18770.Enabled = true
beam_18770.Width0 = 0.20592001080513
beam_18770.Width1 = 0.20592001080513
beam_18770.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18770.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18770.CurveSize0 = 0
beam_18770.CurveSize1 = 0
beam_18770.FaceCamera = true
beam_18770.LightEmission = 1
beam_18770.LightInfluence = 0
beam_18770.Segments = 10
beam_18770.Texture = "rbxassetid://16310670422"
beam_18770.TextureLength = 0.5
beam_18770.TextureSpeed = 1.5108873844146729

 lines_18771=i("Beam", topleftup_18765)
lines_18771.Name="lines"
lines_18771:SetAttribute("EmitDuration", 0)
lines_18771:SetAttribute("AuraInstance", true)
lines_18771.Enabled = true
lines_18771.Width0 = 1.7846400737762451
lines_18771.Width1 = 1.7846400737762451
lines_18771.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18771.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18771.CurveSize0 = 0
lines_18771.CurveSize1 = 0
lines_18771.FaceCamera = true
lines_18771.LightEmission = 1
lines_18771.LightInfluence = 0
lines_18771.Segments = 10
lines_18771.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18771.TextureLength = 0.625
lines_18771.TextureSpeed = 0.3777218461036682

 beam2_18772=i("Beam", topleftup_18765)
beam2_18772.Name="beam2"
beam2_18772:SetAttribute("EmitDuration", 0)
beam2_18772:SetAttribute("AuraInstance", true)
beam2_18772.Enabled = true
beam2_18772.Width0 = 1.0982400178909302
beam2_18772.Width1 = 1.0982400178909302
beam2_18772.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18772.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18772.CurveSize0 = 0
beam2_18772.CurveSize1 = 0
beam2_18772.FaceCamera = true
beam2_18772.LightEmission = 0
beam2_18772.LightInfluence = 0
beam2_18772.Segments = 10
beam2_18772.Texture = "rbxassetid://18837319394"
beam2_18772.TextureLength = 2.25
beam2_18772.TextureSpeed = 1.5108873844146729

 smokeblack_18773=i("Beam", topleftup_18765)
smokeblack_18773.Name="smokeblack"
smokeblack_18773:SetAttribute("EmitDuration", 0)
smokeblack_18773:SetAttribute("AuraInstance", true)
smokeblack_18773.Enabled = true
smokeblack_18773.Width0 = 2.0592002868652344
smokeblack_18773.Width1 = 2.0592002868652344
smokeblack_18773.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18773.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18773.CurveSize0 = 0
smokeblack_18773.CurveSize1 = 0
smokeblack_18773.FaceCamera = true
smokeblack_18773.LightEmission = 0.4000000059604645
smokeblack_18773.LightInfluence = 0
smokeblack_18773.Segments = 10
smokeblack_18773.Texture = "rbxassetid://14191603094"
smokeblack_18773.TextureLength = 12
smokeblack_18773.TextureSpeed = 0.7554436922073364

 splatter_18774=i("ParticleEmitter", topleftup_18765)
splatter_18774.Name="splatter"
splatter_18774:SetAttribute("EmitDuration", 0)
splatter_18774:SetAttribute("AuraInstance", true)
splatter_18774:SetAttribute("EmitCount", 1)
splatter_18774.Enabled = true
splatter_18774.Rate = 70
splatter_18774.Lifetime = nr(0.25,0.3499999940395355)
splatter_18774.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18774.Rotation = nr(-1000,1000)
splatter_18774.RotSpeed = nr(0,0)
splatter_18774.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18774.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18774.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18774.LightEmission = -20
splatter_18774.LightInfluence = 0
splatter_18774.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18774.Drag = 0
splatter_18774.EmissionDirection = Enum.NormalId.Top
splatter_18774.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18774.ZOffset = 1.0069999694824219
splatter_18774.Texture = "rbxassetid://15004620425"
splatter_18774.LockedToPart = true
splatter_18774.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18774.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18774.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18774.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18774.FlipbookStartRandom = false
splatter_18774.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18775=i("Attachment", topleftup_18765)
edges_18775.Name="edges"
edges_18775:SetAttribute("AuraInstance", true)
edges_18775.Position = v3(0.600000,0.600000,0.600000)
edges_18775.Visible = false

 beam_18776=i("Beam", edges_18775)
beam_18776.Name="beam"
beam_18776:SetAttribute("EmitDuration", 0)
beam_18776:SetAttribute("AuraInstance", true)
beam_18776.Enabled = true
beam_18776.Width0 = 0.48000001907348633
beam_18776.Width1 = 0
beam_18776.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18776.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18776.CurveSize0 = 0
beam_18776.CurveSize1 = 0
beam_18776.FaceCamera = true
beam_18776.LightEmission = 1
beam_18776.LightInfluence = 0
beam_18776.Segments = 10
beam_18776.Texture = "rbxassetid://14166981368"
beam_18776.TextureLength = 0.5
beam_18776.TextureSpeed = 1.5108873844146729

 beam_18777=i("Beam", edges_18775)
beam_18777.Name="beam"
beam_18777:SetAttribute("EmitDuration", 0)
beam_18777:SetAttribute("AuraInstance", true)
beam_18777.Enabled = true
beam_18777.Width0 = 0.48000001907348633
beam_18777.Width1 = 0
beam_18777.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18777.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18777.CurveSize0 = 0
beam_18777.CurveSize1 = 0
beam_18777.FaceCamera = true
beam_18777.LightEmission = 1
beam_18777.LightInfluence = 0
beam_18777.Segments = 10
beam_18777.Texture = "rbxassetid://14166981368"
beam_18777.TextureLength = 0.5
beam_18777.TextureSpeed = 1.5108873844146729

 beam_18778=i("Beam", edges_18775)
beam_18778.Name="beam"
beam_18778:SetAttribute("EmitDuration", 0)
beam_18778:SetAttribute("AuraInstance", true)
beam_18778.Enabled = true
beam_18778.Width0 = 0.48000001907348633
beam_18778.Width1 = 0
beam_18778.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18778.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18778.CurveSize0 = 0
beam_18778.CurveSize1 = 0
beam_18778.FaceCamera = true
beam_18778.LightEmission = 1
beam_18778.LightInfluence = 0
beam_18778.Segments = 10
beam_18778.Texture = "rbxassetid://14166981368"
beam_18778.TextureLength = 0.5
beam_18778.TextureSpeed = 1.5108873844146729

 star_18779=i("ParticleEmitter", edges_18775)
star_18779.Name="star"
star_18779:SetAttribute("EmitDelay", 0)
star_18779:SetAttribute("AuraInstance", true)
star_18779:SetAttribute("EmitDuration", 0)
star_18779:SetAttribute("EmitCount", 1)
star_18779.Enabled = true
star_18779.Rate = 24
star_18779.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18779.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18779.Rotation = nr(0,0)
star_18779.RotSpeed = nr(0,0)
star_18779.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18779.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18779.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18779.LightEmission = 0
star_18779.LightInfluence = 0
star_18779.Acceleration = v3(0.000000,0.000000,0.000001)
star_18779.Drag = 0
star_18779.EmissionDirection = Enum.NormalId.Top
star_18779.SpreadAngle = v2(360000.000000,360000.000000)
star_18779.ZOffset = 1.5049999952316284
star_18779.Texture = "rbxassetid://130506341047209"
star_18779.LockedToPart = true
star_18779.Orientation = Enum.ParticleOrientation.FacingCamera
star_18779.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18779.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18779.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18779.FlipbookStartRandom = false
star_18779.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18780=i("Attachment", edges_18775)
trail_18780.Name="trail"
trail_18780:SetAttribute("AuraInstance", true)
trail_18780.Position = v3(0.000000,0.000007,0.000000)
trail_18780.Visible = false

 Attachment_18781=i("Attachment", trail_18780)
Attachment_18781.Name="Attachment"
Attachment_18781:SetAttribute("AuraInstance", true)
Attachment_18781.Position = v3(12.513684,0.000000,0.000000)
Attachment_18781.Visible = false

 Trail_18782=i("Trail", trail_18780)
Trail_18782.Name="Trail"
Trail_18782:SetAttribute("EmitDuration", 0)
Trail_18782:SetAttribute("AuraInstance", true)
Trail_18782.Enabled = true
Trail_18782.Lifetime = 0.15000000596046448
Trail_18782.FaceCamera = true
Trail_18782.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18782.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18782.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18782.Texture = "rbxassetid://14050984567"
Trail_18782.TextureLength = 1.2000000476837158
Trail_18782.LightEmission = 1
Trail_18782.LightInfluence = 0

 Attachment_18783=i("Attachment", trail_18780)
Attachment_18783.Name="Attachment"
Attachment_18783:SetAttribute("AuraInstance", true)
Attachment_18783.Position = v3(-12.028894,0.000000,0.000000)
Attachment_18783.Visible = false

 bottomleftdown_18784=i("Attachment", beamedge_18706)
bottomleftdown_18784.Name="bottomleftdown"
bottomleftdown_18784:SetAttribute("AuraInstance", true)
bottomleftdown_18784.Position = v3(5.777051,-5.777045,-5.777124)
bottomleftdown_18784.Visible = false

 splatter_18785=i("ParticleEmitter", bottomleftdown_18784)
splatter_18785.Name="splatter"
splatter_18785:SetAttribute("EmitDuration", 0)
splatter_18785:SetAttribute("AuraInstance", true)
splatter_18785:SetAttribute("EmitCount", 1)
splatter_18785.Enabled = true
splatter_18785.Rate = 70
splatter_18785.Lifetime = nr(0.25,0.3499999940395355)
splatter_18785.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18785.Rotation = nr(-1000,1000)
splatter_18785.RotSpeed = nr(0,0)
splatter_18785.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18785.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18785.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18785.LightEmission = -20
splatter_18785.LightInfluence = 0
splatter_18785.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18785.Drag = 0
splatter_18785.EmissionDirection = Enum.NormalId.Top
splatter_18785.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18785.ZOffset = 1.0069999694824219
splatter_18785.Texture = "rbxassetid://15004620425"
splatter_18785.LockedToPart = true
splatter_18785.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18785.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18785.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18785.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18785.FlipbookStartRandom = false
splatter_18785.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 star_18786=i("ParticleEmitter", bottomleftdown_18784)
star_18786.Name="star"
star_18786:SetAttribute("EmitDelay", 0)
star_18786:SetAttribute("AuraInstance", true)
star_18786:SetAttribute("EmitDuration", 0)
star_18786:SetAttribute("EmitCount", 1)
star_18786.Enabled = true
star_18786.Rate = 24
star_18786.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18786.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18786.Rotation = nr(0,0)
star_18786.RotSpeed = nr(0,0)
star_18786.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18786.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18786.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18786.LightEmission = 0
star_18786.LightInfluence = 0
star_18786.Acceleration = v3(0.000000,0.000000,0.000001)
star_18786.Drag = 0
star_18786.EmissionDirection = Enum.NormalId.Top
star_18786.SpreadAngle = v2(360000.000000,360000.000000)
star_18786.ZOffset = 1.5049999952316284
star_18786.Texture = "rbxassetid://130506341047209"
star_18786.LockedToPart = true
star_18786.Orientation = Enum.ParticleOrientation.FacingCamera
star_18786.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18786.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18786.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18786.FlipbookStartRandom = false
star_18786.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 blacksmoke_18787=i("ParticleEmitter", bottomleftdown_18784)
blacksmoke_18787.Name="blacksmoke"
blacksmoke_18787:SetAttribute("EmitDelay", 0)
blacksmoke_18787:SetAttribute("AuraInstance", true)
blacksmoke_18787:SetAttribute("EmitDuration", 0)
blacksmoke_18787:SetAttribute("EmitCount", 1)
blacksmoke_18787.Enabled = true
blacksmoke_18787.Rate = 14.399999618530273
blacksmoke_18787.Lifetime = nr(0.25,0.25)
blacksmoke_18787.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18787.Rotation = nr(-1000,1000)
blacksmoke_18787.RotSpeed = nr(0,0)
blacksmoke_18787.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18787.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18787.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18787.LightEmission = -0.5
blacksmoke_18787.LightInfluence = 0
blacksmoke_18787.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18787.Drag = 0
blacksmoke_18787.EmissionDirection = Enum.NormalId.Top
blacksmoke_18787.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18787.ZOffset = 1.0010000467300415
blacksmoke_18787.Texture = "rbxassetid://16310636399"
blacksmoke_18787.LockedToPart = true
blacksmoke_18787.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18787.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18787.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18787.FlipbookFramerate = nr(36,36)
blacksmoke_18787.FlipbookStartRandom = false
blacksmoke_18787.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18788=i("ParticleEmitter", bottomleftdown_18784)
dots_18788.Name="dots"
dots_18788:SetAttribute("EmitDuration", 0)
dots_18788:SetAttribute("AuraInstance", true)
dots_18788:SetAttribute("EmitCount", 1)
dots_18788.Enabled = true
dots_18788.Rate = 60
dots_18788.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18788.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18788.Rotation = nr(-1000,1000)
dots_18788.RotSpeed = nr(0,0)
dots_18788.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18788.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18788.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18788.LightEmission = 1
dots_18788.LightInfluence = 0
dots_18788.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18788.Drag = 0
dots_18788.EmissionDirection = Enum.NormalId.Top
dots_18788.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18788.ZOffset = 1.0080000162124634
dots_18788.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18788.LockedToPart = true
dots_18788.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18788.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18788.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18788.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18788.FlipbookStartRandom = false
dots_18788.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 beam_18789=i("Beam", bottomleftdown_18784)
beam_18789.Name="beam"
beam_18789:SetAttribute("EmitDuration", 0)
beam_18789:SetAttribute("AuraInstance", true)
beam_18789.Enabled = true
beam_18789.Width0 = 0.20592001080513
beam_18789.Width1 = 0.20592001080513
beam_18789.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18789.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18789.CurveSize0 = 0
beam_18789.CurveSize1 = 0
beam_18789.FaceCamera = true
beam_18789.LightEmission = 1
beam_18789.LightInfluence = 0
beam_18789.Segments = 10
beam_18789.Texture = "rbxassetid://16310670422"
beam_18789.TextureLength = 0.5
beam_18789.TextureSpeed = 1.5108873844146729

 lines_18790=i("Beam", bottomleftdown_18784)
lines_18790.Name="lines"
lines_18790:SetAttribute("EmitDuration", 0)
lines_18790:SetAttribute("AuraInstance", true)
lines_18790.Enabled = true
lines_18790.Width0 = 1.7846400737762451
lines_18790.Width1 = 1.7846400737762451
lines_18790.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18790.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18790.CurveSize0 = 0
lines_18790.CurveSize1 = 0
lines_18790.FaceCamera = true
lines_18790.LightEmission = 1
lines_18790.LightInfluence = 0
lines_18790.Segments = 10
lines_18790.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18790.TextureLength = 0.625
lines_18790.TextureSpeed = 0.3777218461036682

 beam2_18791=i("Beam", bottomleftdown_18784)
beam2_18791.Name="beam2"
beam2_18791:SetAttribute("EmitDuration", 0)
beam2_18791:SetAttribute("AuraInstance", true)
beam2_18791.Enabled = true
beam2_18791.Width0 = 1.0982400178909302
beam2_18791.Width1 = 1.0982400178909302
beam2_18791.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18791.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18791.CurveSize0 = 0
beam2_18791.CurveSize1 = 0
beam2_18791.FaceCamera = true
beam2_18791.LightEmission = 0
beam2_18791.LightInfluence = 0
beam2_18791.Segments = 10
beam2_18791.Texture = "rbxassetid://18837319394"
beam2_18791.TextureLength = 2.25
beam2_18791.TextureSpeed = 1.5108873844146729

 smokeblack_18792=i("Beam", bottomleftdown_18784)
smokeblack_18792.Name="smokeblack"
smokeblack_18792:SetAttribute("EmitDuration", 0)
smokeblack_18792:SetAttribute("AuraInstance", true)
smokeblack_18792.Enabled = true
smokeblack_18792.Width0 = 2.0592002868652344
smokeblack_18792.Width1 = 2.0592002868652344
smokeblack_18792.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18792.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18792.CurveSize0 = 0
smokeblack_18792.CurveSize1 = 0
smokeblack_18792.FaceCamera = true
smokeblack_18792.LightEmission = 0.4000000059604645
smokeblack_18792.LightInfluence = 0
smokeblack_18792.Segments = 10
smokeblack_18792.Texture = "rbxassetid://14191603094"
smokeblack_18792.TextureLength = 12
smokeblack_18792.TextureSpeed = 0.7554436922073364

 Attachment_18793=i("Attachment", bottomleftdown_18784)
Attachment_18793.Name="Attachment"
Attachment_18793:SetAttribute("AuraInstance", true)
Attachment_18793.Position = v3(0.000000,-0.000005,0.000037)
Attachment_18793.Visible = false

 beam_18794=i("Beam", Attachment_18793)
beam_18794.Name="beam"
beam_18794:SetAttribute("EmitDuration", 0)
beam_18794:SetAttribute("AuraInstance", true)
beam_18794.Enabled = true
beam_18794.Width0 = 0.20592001080513
beam_18794.Width1 = 0.20592001080513
beam_18794.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18794.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18794.CurveSize0 = 0
beam_18794.CurveSize1 = 0
beam_18794.FaceCamera = true
beam_18794.LightEmission = 1
beam_18794.LightInfluence = 0
beam_18794.Segments = 10
beam_18794.Texture = "rbxassetid://16310670422"
beam_18794.TextureLength = 0.5
beam_18794.TextureSpeed = 1.5108873844146729

 beam2_18795=i("Beam", Attachment_18793)
beam2_18795.Name="beam2"
beam2_18795:SetAttribute("EmitDuration", 0)
beam2_18795:SetAttribute("AuraInstance", true)
beam2_18795.Enabled = true
beam2_18795.Width0 = 1.0982400178909302
beam2_18795.Width1 = 1.0982400178909302
beam2_18795.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18795.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18795.CurveSize0 = 0
beam2_18795.CurveSize1 = 0
beam2_18795.FaceCamera = true
beam2_18795.LightEmission = 0
beam2_18795.LightInfluence = 0
beam2_18795.Segments = 10
beam2_18795.Texture = "rbxassetid://18837319394"
beam2_18795.TextureLength = 2.25
beam2_18795.TextureSpeed = 1.5108873844146729

 lines_18796=i("Beam", Attachment_18793)
lines_18796.Name="lines"
lines_18796:SetAttribute("EmitDuration", 0)
lines_18796:SetAttribute("AuraInstance", true)
lines_18796.Enabled = true
lines_18796.Width0 = 1.7846400737762451
lines_18796.Width1 = 1.7846400737762451
lines_18796.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18796.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18796.CurveSize0 = 0
lines_18796.CurveSize1 = 0
lines_18796.FaceCamera = true
lines_18796.LightEmission = 1
lines_18796.LightInfluence = 0
lines_18796.Segments = 10
lines_18796.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18796.TextureLength = 0.625
lines_18796.TextureSpeed = 0.3777218461036682

 smokeblack_18797=i("Beam", Attachment_18793)
smokeblack_18797.Name="smokeblack"
smokeblack_18797:SetAttribute("EmitDuration", 0)
smokeblack_18797:SetAttribute("AuraInstance", true)
smokeblack_18797.Enabled = true
smokeblack_18797.Width0 = 2.0592002868652344
smokeblack_18797.Width1 = 2.0592002868652344
smokeblack_18797.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18797.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18797.CurveSize0 = 0
smokeblack_18797.CurveSize1 = 0
smokeblack_18797.FaceCamera = true
smokeblack_18797.LightEmission = 0.4000000059604645
smokeblack_18797.LightInfluence = 0
smokeblack_18797.Segments = 10
smokeblack_18797.Texture = "rbxassetid://14191603094"
smokeblack_18797.TextureLength = 12
smokeblack_18797.TextureSpeed = 0.7554436922073364

 blacksmoke2_18798=i("ParticleEmitter", bottomleftdown_18784)
blacksmoke2_18798.Name="blacksmoke2"
blacksmoke2_18798:SetAttribute("EmitDelay", 0)
blacksmoke2_18798:SetAttribute("AuraInstance", true)
blacksmoke2_18798:SetAttribute("EmitDuration", 0)
blacksmoke2_18798:SetAttribute("EmitCount", 1)
blacksmoke2_18798.Enabled = false
blacksmoke2_18798.Rate = 14.399999618530273
blacksmoke2_18798.Lifetime = nr(0.25,0.25)
blacksmoke2_18798.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18798.Rotation = nr(-360,360)
blacksmoke2_18798.RotSpeed = nr(0,0)
blacksmoke2_18798.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18798.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18798.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18798.LightEmission = -1
blacksmoke2_18798.LightInfluence = 0
blacksmoke2_18798.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18798.Drag = 0
blacksmoke2_18798.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18798.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18798.ZOffset = 1.0019999742507935
blacksmoke2_18798.Texture = "rbxassetid://13916934000"
blacksmoke2_18798.LockedToPart = true
blacksmoke2_18798.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18798.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18798.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18798.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18798.FlipbookStartRandom = false
blacksmoke2_18798.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18799=i("Attachment", bottomleftdown_18784)
edges_18799.Name="edges"
edges_18799:SetAttribute("AuraInstance", true)
edges_18799.Position = v3(0.600000,-0.600000,-0.600000)
edges_18799.Visible = false

 beam_18800=i("Beam", edges_18799)
beam_18800.Name="beam"
beam_18800:SetAttribute("EmitDuration", 0)
beam_18800:SetAttribute("AuraInstance", true)
beam_18800.Enabled = true
beam_18800.Width0 = 0.48000001907348633
beam_18800.Width1 = 0
beam_18800.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18800.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18800.CurveSize0 = 0
beam_18800.CurveSize1 = 0
beam_18800.FaceCamera = true
beam_18800.LightEmission = 1
beam_18800.LightInfluence = 0
beam_18800.Segments = 10
beam_18800.Texture = "rbxassetid://14166981368"
beam_18800.TextureLength = 0.5
beam_18800.TextureSpeed = 1.5108873844146729

 beam_18801=i("Beam", edges_18799)
beam_18801.Name="beam"
beam_18801:SetAttribute("EmitDuration", 0)
beam_18801:SetAttribute("AuraInstance", true)
beam_18801.Enabled = true
beam_18801.Width0 = 0.48000001907348633
beam_18801.Width1 = 0
beam_18801.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18801.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18801.CurveSize0 = 0
beam_18801.CurveSize1 = 0
beam_18801.FaceCamera = true
beam_18801.LightEmission = 1
beam_18801.LightInfluence = 0
beam_18801.Segments = 10
beam_18801.Texture = "rbxassetid://14166981368"
beam_18801.TextureLength = 0.5
beam_18801.TextureSpeed = 1.5108873844146729

 beam_18802=i("Beam", edges_18799)
beam_18802.Name="beam"
beam_18802:SetAttribute("EmitDuration", 0)
beam_18802:SetAttribute("AuraInstance", true)
beam_18802.Enabled = true
beam_18802.Width0 = 0.48000001907348633
beam_18802.Width1 = 0
beam_18802.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18802.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18802.CurveSize0 = 0
beam_18802.CurveSize1 = 0
beam_18802.FaceCamera = true
beam_18802.LightEmission = 1
beam_18802.LightInfluence = 0
beam_18802.Segments = 10
beam_18802.Texture = "rbxassetid://14166981368"
beam_18802.TextureLength = 0.5
beam_18802.TextureSpeed = 1.5108873844146729

 star_18803=i("ParticleEmitter", edges_18799)
star_18803.Name="star"
star_18803:SetAttribute("EmitDelay", 0)
star_18803:SetAttribute("AuraInstance", true)
star_18803:SetAttribute("EmitDuration", 0)
star_18803:SetAttribute("EmitCount", 1)
star_18803.Enabled = true
star_18803.Rate = 24
star_18803.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18803.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18803.Rotation = nr(0,0)
star_18803.RotSpeed = nr(0,0)
star_18803.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18803.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18803.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18803.LightEmission = 0
star_18803.LightInfluence = 0
star_18803.Acceleration = v3(0.000000,0.000000,0.000001)
star_18803.Drag = 0
star_18803.EmissionDirection = Enum.NormalId.Top
star_18803.SpreadAngle = v2(360000.000000,360000.000000)
star_18803.ZOffset = 1.5049999952316284
star_18803.Texture = "rbxassetid://130506341047209"
star_18803.LockedToPart = true
star_18803.Orientation = Enum.ParticleOrientation.FacingCamera
star_18803.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18803.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18803.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18803.FlipbookStartRandom = false
star_18803.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18804=i("Attachment", edges_18799)
trail_18804.Name="trail"
trail_18804:SetAttribute("AuraInstance", true)
trail_18804.Position = v3(0.000000,-0.000005,0.000037)
trail_18804.Visible = false

 Attachment_18805=i("Attachment", trail_18804)
Attachment_18805.Name="Attachment"
Attachment_18805:SetAttribute("AuraInstance", true)
Attachment_18805.Position = v3(12.513684,0.000000,0.000000)
Attachment_18805.Visible = false

 Trail_18806=i("Trail", trail_18804)
Trail_18806.Name="Trail"
Trail_18806:SetAttribute("EmitDuration", 0)
Trail_18806:SetAttribute("AuraInstance", true)
Trail_18806.Enabled = true
Trail_18806.Lifetime = 0.15000000596046448
Trail_18806.FaceCamera = true
Trail_18806.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18806.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18806.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18806.Texture = "rbxassetid://14050984567"
Trail_18806.TextureLength = 1.2000000476837158
Trail_18806.LightEmission = 1
Trail_18806.LightInfluence = 0

 Attachment_18807=i("Attachment", trail_18804)
Attachment_18807.Name="Attachment"
Attachment_18807:SetAttribute("AuraInstance", true)
Attachment_18807.Position = v3(-12.028894,0.000000,0.000000)
Attachment_18807.Visible = false

 bottomrightdown_18808=i("Attachment", beamedge_18706)
bottomrightdown_18808.Name="bottomrightdown"
bottomrightdown_18808:SetAttribute("AuraInstance", true)
bottomrightdown_18808.Position = v3(-5.777051,-5.777045,-5.777124)
bottomrightdown_18808.Visible = false

 blacksmoke_18809=i("ParticleEmitter", bottomrightdown_18808)
blacksmoke_18809.Name="blacksmoke"
blacksmoke_18809:SetAttribute("EmitDelay", 0)
blacksmoke_18809:SetAttribute("AuraInstance", true)
blacksmoke_18809:SetAttribute("EmitDuration", 0)
blacksmoke_18809:SetAttribute("EmitCount", 1)
blacksmoke_18809.Enabled = true
blacksmoke_18809.Rate = 14.399999618530273
blacksmoke_18809.Lifetime = nr(0.25,0.25)
blacksmoke_18809.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18809.Rotation = nr(-1000,1000)
blacksmoke_18809.RotSpeed = nr(0,0)
blacksmoke_18809.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18809.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18809.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18809.LightEmission = -0.5
blacksmoke_18809.LightInfluence = 0
blacksmoke_18809.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18809.Drag = 0
blacksmoke_18809.EmissionDirection = Enum.NormalId.Top
blacksmoke_18809.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18809.ZOffset = 1.0010000467300415
blacksmoke_18809.Texture = "rbxassetid://16310636399"
blacksmoke_18809.LockedToPart = true
blacksmoke_18809.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18809.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18809.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18809.FlipbookFramerate = nr(36,36)
blacksmoke_18809.FlipbookStartRandom = false
blacksmoke_18809.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 blacksmoke2_18810=i("ParticleEmitter", bottomrightdown_18808)
blacksmoke2_18810.Name="blacksmoke2"
blacksmoke2_18810:SetAttribute("EmitDelay", 0)
blacksmoke2_18810:SetAttribute("AuraInstance", true)
blacksmoke2_18810:SetAttribute("EmitDuration", 0)
blacksmoke2_18810:SetAttribute("EmitCount", 1)
blacksmoke2_18810.Enabled = false
blacksmoke2_18810.Rate = 14.399999618530273
blacksmoke2_18810.Lifetime = nr(0.25,0.25)
blacksmoke2_18810.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18810.Rotation = nr(-360,360)
blacksmoke2_18810.RotSpeed = nr(0,0)
blacksmoke2_18810.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18810.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18810.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18810.LightEmission = -1
blacksmoke2_18810.LightInfluence = 0
blacksmoke2_18810.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18810.Drag = 0
blacksmoke2_18810.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18810.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18810.ZOffset = 1.0019999742507935
blacksmoke2_18810.Texture = "rbxassetid://13916934000"
blacksmoke2_18810.LockedToPart = true
blacksmoke2_18810.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18810.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18810.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18810.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18810.FlipbookStartRandom = false
blacksmoke2_18810.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18811=i("ParticleEmitter", bottomrightdown_18808)
dots_18811.Name="dots"
dots_18811:SetAttribute("EmitDuration", 0)
dots_18811:SetAttribute("AuraInstance", true)
dots_18811:SetAttribute("EmitCount", 1)
dots_18811.Enabled = true
dots_18811.Rate = 60
dots_18811.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18811.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18811.Rotation = nr(-1000,1000)
dots_18811.RotSpeed = nr(0,0)
dots_18811.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18811.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18811.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18811.LightEmission = 1
dots_18811.LightInfluence = 0
dots_18811.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18811.Drag = 0
dots_18811.EmissionDirection = Enum.NormalId.Top
dots_18811.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18811.ZOffset = 1.0080000162124634
dots_18811.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18811.LockedToPart = true
dots_18811.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18811.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18811.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18811.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18811.FlipbookStartRandom = false
dots_18811.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 star_18812=i("ParticleEmitter", bottomrightdown_18808)
star_18812.Name="star"
star_18812:SetAttribute("EmitDelay", 0)
star_18812:SetAttribute("AuraInstance", true)
star_18812:SetAttribute("EmitDuration", 0)
star_18812:SetAttribute("EmitCount", 1)
star_18812.Enabled = true
star_18812.Rate = 24
star_18812.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18812.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18812.Rotation = nr(0,0)
star_18812.RotSpeed = nr(0,0)
star_18812.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18812.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18812.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18812.LightEmission = 0
star_18812.LightInfluence = 0
star_18812.Acceleration = v3(0.000000,0.000000,0.000001)
star_18812.Drag = 0
star_18812.EmissionDirection = Enum.NormalId.Top
star_18812.SpreadAngle = v2(360000.000000,360000.000000)
star_18812.ZOffset = 1.5049999952316284
star_18812.Texture = "rbxassetid://130506341047209"
star_18812.LockedToPart = true
star_18812.Orientation = Enum.ParticleOrientation.FacingCamera
star_18812.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18812.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18812.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18812.FlipbookStartRandom = false
star_18812.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 beam_18813=i("Beam", bottomrightdown_18808)
beam_18813.Name="beam"
beam_18813:SetAttribute("EmitDuration", 0)
beam_18813:SetAttribute("AuraInstance", true)
beam_18813.Enabled = true
beam_18813.Width0 = 0.20592001080513
beam_18813.Width1 = 0.20592001080513
beam_18813.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18813.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18813.CurveSize0 = 0
beam_18813.CurveSize1 = 0
beam_18813.FaceCamera = true
beam_18813.LightEmission = 1
beam_18813.LightInfluence = 0
beam_18813.Segments = 10
beam_18813.Texture = "rbxassetid://16310670422"
beam_18813.TextureLength = 0.5
beam_18813.TextureSpeed = 1.5108873844146729

 lines_18814=i("Beam", bottomrightdown_18808)
lines_18814.Name="lines"
lines_18814:SetAttribute("EmitDuration", 0)
lines_18814:SetAttribute("AuraInstance", true)
lines_18814.Enabled = true
lines_18814.Width0 = 1.7846400737762451
lines_18814.Width1 = 1.7846400737762451
lines_18814.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18814.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18814.CurveSize0 = 0
lines_18814.CurveSize1 = 0
lines_18814.FaceCamera = true
lines_18814.LightEmission = 1
lines_18814.LightInfluence = 0
lines_18814.Segments = 10
lines_18814.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18814.TextureLength = 0.625
lines_18814.TextureSpeed = 0.3777218461036682

 beam2_18815=i("Beam", bottomrightdown_18808)
beam2_18815.Name="beam2"
beam2_18815:SetAttribute("EmitDuration", 0)
beam2_18815:SetAttribute("AuraInstance", true)
beam2_18815.Enabled = true
beam2_18815.Width0 = 1.0982400178909302
beam2_18815.Width1 = 1.0982400178909302
beam2_18815.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18815.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18815.CurveSize0 = 0
beam2_18815.CurveSize1 = 0
beam2_18815.FaceCamera = true
beam2_18815.LightEmission = 0
beam2_18815.LightInfluence = 0
beam2_18815.Segments = 10
beam2_18815.Texture = "rbxassetid://18837319394"
beam2_18815.TextureLength = 2.25
beam2_18815.TextureSpeed = 1.5108873844146729

 smokeblack_18816=i("Beam", bottomrightdown_18808)
smokeblack_18816.Name="smokeblack"
smokeblack_18816:SetAttribute("EmitDuration", 0)
smokeblack_18816:SetAttribute("AuraInstance", true)
smokeblack_18816.Enabled = true
smokeblack_18816.Width0 = 2.0592002868652344
smokeblack_18816.Width1 = 2.0592002868652344
smokeblack_18816.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18816.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18816.CurveSize0 = 0
smokeblack_18816.CurveSize1 = 0
smokeblack_18816.FaceCamera = true
smokeblack_18816.LightEmission = 0.4000000059604645
smokeblack_18816.LightInfluence = 0
smokeblack_18816.Segments = 10
smokeblack_18816.Texture = "rbxassetid://14191603094"
smokeblack_18816.TextureLength = 12
smokeblack_18816.TextureSpeed = 0.7554436922073364

 Attachment_18817=i("Attachment", bottomrightdown_18808)
Attachment_18817.Name="Attachment"
Attachment_18817:SetAttribute("AuraInstance", true)
Attachment_18817.Position = v3(0.000000,-0.000005,0.000037)
Attachment_18817.Visible = false

 beam_18818=i("Beam", Attachment_18817)
beam_18818.Name="beam"
beam_18818:SetAttribute("EmitDuration", 0)
beam_18818:SetAttribute("AuraInstance", true)
beam_18818.Enabled = true
beam_18818.Width0 = 0.20592001080513
beam_18818.Width1 = 0.20592001080513
beam_18818.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18818.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18818.CurveSize0 = 0
beam_18818.CurveSize1 = 0
beam_18818.FaceCamera = true
beam_18818.LightEmission = 1
beam_18818.LightInfluence = 0
beam_18818.Segments = 10
beam_18818.Texture = "rbxassetid://16310670422"
beam_18818.TextureLength = 0.5
beam_18818.TextureSpeed = 1.5108873844146729

 beam2_18819=i("Beam", Attachment_18817)
beam2_18819.Name="beam2"
beam2_18819:SetAttribute("EmitDuration", 0)
beam2_18819:SetAttribute("AuraInstance", true)
beam2_18819.Enabled = true
beam2_18819.Width0 = 1.0982400178909302
beam2_18819.Width1 = 1.0982400178909302
beam2_18819.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18819.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18819.CurveSize0 = 0
beam2_18819.CurveSize1 = 0
beam2_18819.FaceCamera = true
beam2_18819.LightEmission = 0
beam2_18819.LightInfluence = 0
beam2_18819.Segments = 10
beam2_18819.Texture = "rbxassetid://18837319394"
beam2_18819.TextureLength = 2.25
beam2_18819.TextureSpeed = 1.5108873844146729

 lines_18820=i("Beam", Attachment_18817)
lines_18820.Name="lines"
lines_18820:SetAttribute("EmitDuration", 0)
lines_18820:SetAttribute("AuraInstance", true)
lines_18820.Enabled = true
lines_18820.Width0 = 1.7846400737762451
lines_18820.Width1 = 1.7846400737762451
lines_18820.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18820.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18820.CurveSize0 = 0
lines_18820.CurveSize1 = 0
lines_18820.FaceCamera = true
lines_18820.LightEmission = 1
lines_18820.LightInfluence = 0
lines_18820.Segments = 10
lines_18820.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18820.TextureLength = 0.625
lines_18820.TextureSpeed = 0.3777218461036682

 smokeblack_18821=i("Beam", Attachment_18817)
smokeblack_18821.Name="smokeblack"
smokeblack_18821:SetAttribute("EmitDuration", 0)
smokeblack_18821:SetAttribute("AuraInstance", true)
smokeblack_18821.Enabled = true
smokeblack_18821.Width0 = 2.0592002868652344
smokeblack_18821.Width1 = 2.0592002868652344
smokeblack_18821.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18821.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18821.CurveSize0 = 0
smokeblack_18821.CurveSize1 = 0
smokeblack_18821.FaceCamera = true
smokeblack_18821.LightEmission = 0.4000000059604645
smokeblack_18821.LightInfluence = 0
smokeblack_18821.Segments = 10
smokeblack_18821.Texture = "rbxassetid://14191603094"
smokeblack_18821.TextureLength = 12
smokeblack_18821.TextureSpeed = 0.7554436922073364

 splatter_18822=i("ParticleEmitter", bottomrightdown_18808)
splatter_18822.Name="splatter"
splatter_18822:SetAttribute("EmitDuration", 0)
splatter_18822:SetAttribute("AuraInstance", true)
splatter_18822:SetAttribute("EmitCount", 1)
splatter_18822.Enabled = true
splatter_18822.Rate = 70
splatter_18822.Lifetime = nr(0.25,0.3499999940395355)
splatter_18822.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18822.Rotation = nr(-1000,1000)
splatter_18822.RotSpeed = nr(0,0)
splatter_18822.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18822.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18822.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18822.LightEmission = -20
splatter_18822.LightInfluence = 0
splatter_18822.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18822.Drag = 0
splatter_18822.EmissionDirection = Enum.NormalId.Top
splatter_18822.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18822.ZOffset = 1.0069999694824219
splatter_18822.Texture = "rbxassetid://15004620425"
splatter_18822.LockedToPart = true
splatter_18822.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18822.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18822.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18822.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18822.FlipbookStartRandom = false
splatter_18822.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18823=i("Attachment", bottomrightdown_18808)
edges_18823.Name="edges"
edges_18823:SetAttribute("AuraInstance", true)
edges_18823.Position = v3(-0.600000,-0.600000,-0.600000)
edges_18823.Visible = false

 beam_18824=i("Beam", edges_18823)
beam_18824.Name="beam"
beam_18824:SetAttribute("EmitDuration", 0)
beam_18824:SetAttribute("AuraInstance", true)
beam_18824.Enabled = true
beam_18824.Width0 = 0.48000001907348633
beam_18824.Width1 = 0
beam_18824.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18824.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18824.CurveSize0 = 0
beam_18824.CurveSize1 = 0
beam_18824.FaceCamera = true
beam_18824.LightEmission = 1
beam_18824.LightInfluence = 0
beam_18824.Segments = 10
beam_18824.Texture = "rbxassetid://14166981368"
beam_18824.TextureLength = 0.5
beam_18824.TextureSpeed = 1.5108873844146729

 beam_18825=i("Beam", edges_18823)
beam_18825.Name="beam"
beam_18825:SetAttribute("EmitDuration", 0)
beam_18825:SetAttribute("AuraInstance", true)
beam_18825.Enabled = true
beam_18825.Width0 = 0.48000001907348633
beam_18825.Width1 = 0
beam_18825.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18825.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18825.CurveSize0 = 0
beam_18825.CurveSize1 = 0
beam_18825.FaceCamera = true
beam_18825.LightEmission = 1
beam_18825.LightInfluence = 0
beam_18825.Segments = 10
beam_18825.Texture = "rbxassetid://14166981368"
beam_18825.TextureLength = 0.5
beam_18825.TextureSpeed = 1.5108873844146729

 beam_18826=i("Beam", edges_18823)
beam_18826.Name="beam"
beam_18826:SetAttribute("EmitDuration", 0)
beam_18826:SetAttribute("AuraInstance", true)
beam_18826.Enabled = true
beam_18826.Width0 = 0.48000001907348633
beam_18826.Width1 = 0
beam_18826.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18826.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18826.CurveSize0 = 0
beam_18826.CurveSize1 = 0
beam_18826.FaceCamera = true
beam_18826.LightEmission = 1
beam_18826.LightInfluence = 0
beam_18826.Segments = 10
beam_18826.Texture = "rbxassetid://14166981368"
beam_18826.TextureLength = 0.5
beam_18826.TextureSpeed = 1.5108873844146729

 star_18827=i("ParticleEmitter", edges_18823)
star_18827.Name="star"
star_18827:SetAttribute("EmitDelay", 0)
star_18827:SetAttribute("AuraInstance", true)
star_18827:SetAttribute("EmitDuration", 0)
star_18827:SetAttribute("EmitCount", 1)
star_18827.Enabled = true
star_18827.Rate = 24
star_18827.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18827.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18827.Rotation = nr(0,0)
star_18827.RotSpeed = nr(0,0)
star_18827.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18827.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18827.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18827.LightEmission = 0
star_18827.LightInfluence = 0
star_18827.Acceleration = v3(0.000000,0.000000,0.000001)
star_18827.Drag = 0
star_18827.EmissionDirection = Enum.NormalId.Top
star_18827.SpreadAngle = v2(360000.000000,360000.000000)
star_18827.ZOffset = 1.5049999952316284
star_18827.Texture = "rbxassetid://130506341047209"
star_18827.LockedToPart = true
star_18827.Orientation = Enum.ParticleOrientation.FacingCamera
star_18827.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18827.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18827.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18827.FlipbookStartRandom = false
star_18827.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18828=i("Attachment", edges_18823)
trail_18828.Name="trail"
trail_18828:SetAttribute("AuraInstance", true)
trail_18828.Position = v3(0.000000,-0.000005,0.000037)
trail_18828.Visible = false

 Attachment_18829=i("Attachment", trail_18828)
Attachment_18829.Name="Attachment"
Attachment_18829:SetAttribute("AuraInstance", true)
Attachment_18829.Position = v3(12.513612,0.000000,0.000000)
Attachment_18829.Visible = false

 Trail_18830=i("Trail", trail_18828)
Trail_18830.Name="Trail"
Trail_18830:SetAttribute("EmitDuration", 0)
Trail_18830:SetAttribute("AuraInstance", true)
Trail_18830.Enabled = true
Trail_18830.Lifetime = 0.15000000596046448
Trail_18830.FaceCamera = true
Trail_18830.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18830.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18830.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18830.Texture = "rbxassetid://14050984567"
Trail_18830.TextureLength = 1.2000000476837158
Trail_18830.LightEmission = 1
Trail_18830.LightInfluence = 0

 Attachment_18831=i("Attachment", trail_18828)
Attachment_18831.Name="Attachment"
Attachment_18831:SetAttribute("AuraInstance", true)
Attachment_18831.Position = v3(-12.028968,0.000000,0.000000)
Attachment_18831.Visible = false

 bottomrightup_18832=i("Attachment", beamedge_18706)
bottomrightup_18832.Name="bottomrightup"
bottomrightup_18832:SetAttribute("AuraInstance", true)
bottomrightup_18832.Position = v3(-5.777051,-5.777045,5.777051)
bottomrightup_18832.Visible = false

 blacksmoke_18833=i("ParticleEmitter", bottomrightup_18832)
blacksmoke_18833.Name="blacksmoke"
blacksmoke_18833:SetAttribute("EmitDelay", 0)
blacksmoke_18833:SetAttribute("AuraInstance", true)
blacksmoke_18833:SetAttribute("EmitDuration", 0)
blacksmoke_18833:SetAttribute("EmitCount", 1)
blacksmoke_18833.Enabled = true
blacksmoke_18833.Rate = 14.399999618530273
blacksmoke_18833.Lifetime = nr(0.25,0.25)
blacksmoke_18833.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18833.Rotation = nr(-1000,1000)
blacksmoke_18833.RotSpeed = nr(0,0)
blacksmoke_18833.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18833.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18833.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18833.LightEmission = -0.5
blacksmoke_18833.LightInfluence = 0
blacksmoke_18833.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18833.Drag = 0
blacksmoke_18833.EmissionDirection = Enum.NormalId.Top
blacksmoke_18833.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18833.ZOffset = 1.0010000467300415
blacksmoke_18833.Texture = "rbxassetid://16310636399"
blacksmoke_18833.LockedToPart = true
blacksmoke_18833.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18833.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18833.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18833.FlipbookFramerate = nr(36,36)
blacksmoke_18833.FlipbookStartRandom = false
blacksmoke_18833.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 blacksmoke2_18834=i("ParticleEmitter", bottomrightup_18832)
blacksmoke2_18834.Name="blacksmoke2"
blacksmoke2_18834:SetAttribute("EmitDelay", 0)
blacksmoke2_18834:SetAttribute("AuraInstance", true)
blacksmoke2_18834:SetAttribute("EmitDuration", 0)
blacksmoke2_18834:SetAttribute("EmitCount", 1)
blacksmoke2_18834.Enabled = false
blacksmoke2_18834.Rate = 14.399999618530273
blacksmoke2_18834.Lifetime = nr(0.25,0.25)
blacksmoke2_18834.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18834.Rotation = nr(-360,360)
blacksmoke2_18834.RotSpeed = nr(0,0)
blacksmoke2_18834.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18834.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18834.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18834.LightEmission = -1
blacksmoke2_18834.LightInfluence = 0
blacksmoke2_18834.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18834.Drag = 0
blacksmoke2_18834.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18834.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18834.ZOffset = 1.0019999742507935
blacksmoke2_18834.Texture = "rbxassetid://13916934000"
blacksmoke2_18834.LockedToPart = true
blacksmoke2_18834.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18834.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18834.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18834.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18834.FlipbookStartRandom = false
blacksmoke2_18834.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18835=i("ParticleEmitter", bottomrightup_18832)
dots_18835.Name="dots"
dots_18835:SetAttribute("EmitDuration", 0)
dots_18835:SetAttribute("AuraInstance", true)
dots_18835:SetAttribute("EmitCount", 1)
dots_18835.Enabled = true
dots_18835.Rate = 60
dots_18835.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18835.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18835.Rotation = nr(-1000,1000)
dots_18835.RotSpeed = nr(0,0)
dots_18835.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18835.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18835.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18835.LightEmission = 1
dots_18835.LightInfluence = 0
dots_18835.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18835.Drag = 0
dots_18835.EmissionDirection = Enum.NormalId.Top
dots_18835.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18835.ZOffset = 1.0080000162124634
dots_18835.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18835.LockedToPart = true
dots_18835.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18835.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18835.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18835.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18835.FlipbookStartRandom = false
dots_18835.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 star_18836=i("ParticleEmitter", bottomrightup_18832)
star_18836.Name="star"
star_18836:SetAttribute("EmitDelay", 0)
star_18836:SetAttribute("AuraInstance", true)
star_18836:SetAttribute("EmitDuration", 0)
star_18836:SetAttribute("EmitCount", 1)
star_18836.Enabled = true
star_18836.Rate = 24
star_18836.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18836.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18836.Rotation = nr(0,0)
star_18836.RotSpeed = nr(0,0)
star_18836.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18836.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18836.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18836.LightEmission = 0
star_18836.LightInfluence = 0
star_18836.Acceleration = v3(0.000000,0.000000,0.000001)
star_18836.Drag = 0
star_18836.EmissionDirection = Enum.NormalId.Top
star_18836.SpreadAngle = v2(360000.000000,360000.000000)
star_18836.ZOffset = 1.5049999952316284
star_18836.Texture = "rbxassetid://130506341047209"
star_18836.LockedToPart = true
star_18836.Orientation = Enum.ParticleOrientation.FacingCamera
star_18836.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18836.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18836.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18836.FlipbookStartRandom = false
star_18836.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 beam_18837=i("Beam", bottomrightup_18832)
beam_18837.Name="beam"
beam_18837:SetAttribute("EmitDuration", 0)
beam_18837:SetAttribute("AuraInstance", true)
beam_18837.Enabled = true
beam_18837.Width0 = 0.20592001080513
beam_18837.Width1 = 0.20592001080513
beam_18837.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18837.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18837.CurveSize0 = 0
beam_18837.CurveSize1 = 0
beam_18837.FaceCamera = true
beam_18837.LightEmission = 1
beam_18837.LightInfluence = 0
beam_18837.Segments = 10
beam_18837.Texture = "rbxassetid://16310670422"
beam_18837.TextureLength = 0.5
beam_18837.TextureSpeed = 1.5108873844146729

 lines_18838=i("Beam", bottomrightup_18832)
lines_18838.Name="lines"
lines_18838:SetAttribute("EmitDuration", 0)
lines_18838:SetAttribute("AuraInstance", true)
lines_18838.Enabled = true
lines_18838.Width0 = 1.7846400737762451
lines_18838.Width1 = 1.7846400737762451
lines_18838.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18838.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18838.CurveSize0 = 0
lines_18838.CurveSize1 = 0
lines_18838.FaceCamera = true
lines_18838.LightEmission = 1
lines_18838.LightInfluence = 0
lines_18838.Segments = 10
lines_18838.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18838.TextureLength = 0.625
lines_18838.TextureSpeed = 0.3777218461036682

 beam2_18839=i("Beam", bottomrightup_18832)
beam2_18839.Name="beam2"
beam2_18839:SetAttribute("EmitDuration", 0)
beam2_18839:SetAttribute("AuraInstance", true)
beam2_18839.Enabled = true
beam2_18839.Width0 = 1.0982400178909302
beam2_18839.Width1 = 1.0982400178909302
beam2_18839.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18839.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18839.CurveSize0 = 0
beam2_18839.CurveSize1 = 0
beam2_18839.FaceCamera = true
beam2_18839.LightEmission = 0
beam2_18839.LightInfluence = 0
beam2_18839.Segments = 10
beam2_18839.Texture = "rbxassetid://18837319394"
beam2_18839.TextureLength = 2.25
beam2_18839.TextureSpeed = 1.5108873844146729

 smokeblack_18840=i("Beam", bottomrightup_18832)
smokeblack_18840.Name="smokeblack"
smokeblack_18840:SetAttribute("EmitDuration", 0)
smokeblack_18840:SetAttribute("AuraInstance", true)
smokeblack_18840.Enabled = true
smokeblack_18840.Width0 = 2.0592002868652344
smokeblack_18840.Width1 = 2.0592002868652344
smokeblack_18840.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18840.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18840.CurveSize0 = 0
smokeblack_18840.CurveSize1 = 0
smokeblack_18840.FaceCamera = true
smokeblack_18840.LightEmission = 0.4000000059604645
smokeblack_18840.LightInfluence = 0
smokeblack_18840.Segments = 10
smokeblack_18840.Texture = "rbxassetid://14191603094"
smokeblack_18840.TextureLength = 12
smokeblack_18840.TextureSpeed = 0.7554436922073364

 Attachment_18841=i("Attachment", bottomrightup_18832)
Attachment_18841.Name="Attachment"
Attachment_18841:SetAttribute("AuraInstance", true)
Attachment_18841.Position = v3(0.000000,-0.000005,0.000000)
Attachment_18841.Visible = false

 beam_18842=i("Beam", Attachment_18841)
beam_18842.Name="beam"
beam_18842:SetAttribute("EmitDuration", 0)
beam_18842:SetAttribute("AuraInstance", true)
beam_18842.Enabled = true
beam_18842.Width0 = 0.20592001080513
beam_18842.Width1 = 0.20592001080513
beam_18842.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18842.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18842.CurveSize0 = 0
beam_18842.CurveSize1 = 0
beam_18842.FaceCamera = true
beam_18842.LightEmission = 1
beam_18842.LightInfluence = 0
beam_18842.Segments = 10
beam_18842.Texture = "rbxassetid://16310670422"
beam_18842.TextureLength = 0.5
beam_18842.TextureSpeed = 1.5108873844146729

 beam2_18843=i("Beam", Attachment_18841)
beam2_18843.Name="beam2"
beam2_18843:SetAttribute("EmitDuration", 0)
beam2_18843:SetAttribute("AuraInstance", true)
beam2_18843.Enabled = true
beam2_18843.Width0 = 1.0982400178909302
beam2_18843.Width1 = 1.0982400178909302
beam2_18843.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18843.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18843.CurveSize0 = 0
beam2_18843.CurveSize1 = 0
beam2_18843.FaceCamera = true
beam2_18843.LightEmission = 0
beam2_18843.LightInfluence = 0
beam2_18843.Segments = 10
beam2_18843.Texture = "rbxassetid://18837319394"
beam2_18843.TextureLength = 2.25
beam2_18843.TextureSpeed = 1.5108873844146729

 lines_18844=i("Beam", Attachment_18841)
lines_18844.Name="lines"
lines_18844:SetAttribute("EmitDuration", 0)
lines_18844:SetAttribute("AuraInstance", true)
lines_18844.Enabled = true
lines_18844.Width0 = 1.7846400737762451
lines_18844.Width1 = 1.7846400737762451
lines_18844.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18844.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18844.CurveSize0 = 0
lines_18844.CurveSize1 = 0
lines_18844.FaceCamera = true
lines_18844.LightEmission = 1
lines_18844.LightInfluence = 0
lines_18844.Segments = 10
lines_18844.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18844.TextureLength = 0.625
lines_18844.TextureSpeed = 0.3777218461036682

 smokeblack_18845=i("Beam", Attachment_18841)
smokeblack_18845.Name="smokeblack"
smokeblack_18845:SetAttribute("EmitDuration", 0)
smokeblack_18845:SetAttribute("AuraInstance", true)
smokeblack_18845.Enabled = true
smokeblack_18845.Width0 = 2.0592002868652344
smokeblack_18845.Width1 = 2.0592002868652344
smokeblack_18845.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18845.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18845.CurveSize0 = 0
smokeblack_18845.CurveSize1 = 0
smokeblack_18845.FaceCamera = true
smokeblack_18845.LightEmission = 0.4000000059604645
smokeblack_18845.LightInfluence = 0
smokeblack_18845.Segments = 10
smokeblack_18845.Texture = "rbxassetid://14191603094"
smokeblack_18845.TextureLength = 12
smokeblack_18845.TextureSpeed = 0.7554436922073364

 splatter_18846=i("ParticleEmitter", bottomrightup_18832)
splatter_18846.Name="splatter"
splatter_18846:SetAttribute("EmitDuration", 0)
splatter_18846:SetAttribute("AuraInstance", true)
splatter_18846:SetAttribute("EmitCount", 1)
splatter_18846.Enabled = true
splatter_18846.Rate = 70
splatter_18846.Lifetime = nr(0.25,0.3499999940395355)
splatter_18846.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18846.Rotation = nr(-1000,1000)
splatter_18846.RotSpeed = nr(0,0)
splatter_18846.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18846.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18846.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18846.LightEmission = -20
splatter_18846.LightInfluence = 0
splatter_18846.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18846.Drag = 0
splatter_18846.EmissionDirection = Enum.NormalId.Top
splatter_18846.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18846.ZOffset = 1.0069999694824219
splatter_18846.Texture = "rbxassetid://15004620425"
splatter_18846.LockedToPart = true
splatter_18846.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18846.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18846.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18846.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18846.FlipbookStartRandom = false
splatter_18846.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18847=i("Attachment", bottomrightup_18832)
edges_18847.Name="edges"
edges_18847:SetAttribute("AuraInstance", true)
edges_18847.Position = v3(-0.600000,-0.600000,0.600000)
edges_18847.Visible = false

 beam_18848=i("Beam", edges_18847)
beam_18848.Name="beam"
beam_18848:SetAttribute("EmitDuration", 0)
beam_18848:SetAttribute("AuraInstance", true)
beam_18848.Enabled = true
beam_18848.Width0 = 0.48000001907348633
beam_18848.Width1 = 0
beam_18848.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18848.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18848.CurveSize0 = 0
beam_18848.CurveSize1 = 0
beam_18848.FaceCamera = true
beam_18848.LightEmission = 1
beam_18848.LightInfluence = 0
beam_18848.Segments = 10
beam_18848.Texture = "rbxassetid://14166981368"
beam_18848.TextureLength = 0.5
beam_18848.TextureSpeed = 1.5108873844146729

 beam_18849=i("Beam", edges_18847)
beam_18849.Name="beam"
beam_18849:SetAttribute("EmitDuration", 0)
beam_18849:SetAttribute("AuraInstance", true)
beam_18849.Enabled = true
beam_18849.Width0 = 0.48000001907348633
beam_18849.Width1 = 0
beam_18849.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18849.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18849.CurveSize0 = 0
beam_18849.CurveSize1 = 0
beam_18849.FaceCamera = true
beam_18849.LightEmission = 1
beam_18849.LightInfluence = 0
beam_18849.Segments = 10
beam_18849.Texture = "rbxassetid://14166981368"
beam_18849.TextureLength = 0.5
beam_18849.TextureSpeed = 1.5108873844146729

 beam_18850=i("Beam", edges_18847)
beam_18850.Name="beam"
beam_18850:SetAttribute("EmitDuration", 0)
beam_18850:SetAttribute("AuraInstance", true)
beam_18850.Enabled = true
beam_18850.Width0 = 0.48000001907348633
beam_18850.Width1 = 0
beam_18850.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18850.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18850.CurveSize0 = 0
beam_18850.CurveSize1 = 0
beam_18850.FaceCamera = true
beam_18850.LightEmission = 1
beam_18850.LightInfluence = 0
beam_18850.Segments = 10
beam_18850.Texture = "rbxassetid://14166981368"
beam_18850.TextureLength = 0.5
beam_18850.TextureSpeed = 1.5108873844146729

 star_18851=i("ParticleEmitter", edges_18847)
star_18851.Name="star"
star_18851:SetAttribute("EmitDelay", 0)
star_18851:SetAttribute("AuraInstance", true)
star_18851:SetAttribute("EmitDuration", 0)
star_18851:SetAttribute("EmitCount", 1)
star_18851.Enabled = true
star_18851.Rate = 24
star_18851.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18851.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18851.Rotation = nr(0,0)
star_18851.RotSpeed = nr(0,0)
star_18851.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18851.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18851.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18851.LightEmission = 0
star_18851.LightInfluence = 0
star_18851.Acceleration = v3(0.000000,0.000000,0.000001)
star_18851.Drag = 0
star_18851.EmissionDirection = Enum.NormalId.Top
star_18851.SpreadAngle = v2(360000.000000,360000.000000)
star_18851.ZOffset = 1.5049999952316284
star_18851.Texture = "rbxassetid://130506341047209"
star_18851.LockedToPart = true
star_18851.Orientation = Enum.ParticleOrientation.FacingCamera
star_18851.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18851.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18851.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18851.FlipbookStartRandom = false
star_18851.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18852=i("Attachment", edges_18847)
trail_18852.Name="trail"
trail_18852:SetAttribute("AuraInstance", true)
trail_18852.Position = v3(0.000000,-0.000005,0.000000)
trail_18852.Visible = false

 Attachment_18853=i("Attachment", trail_18852)
Attachment_18853.Name="Attachment"
Attachment_18853:SetAttribute("AuraInstance", true)
Attachment_18853.Position = v3(12.513612,0.000000,0.000000)
Attachment_18853.Visible = false

 Trail_18854=i("Trail", trail_18852)
Trail_18854.Name="Trail"
Trail_18854:SetAttribute("EmitDuration", 0)
Trail_18854:SetAttribute("AuraInstance", true)
Trail_18854.Enabled = true
Trail_18854.Lifetime = 0.15000000596046448
Trail_18854.FaceCamera = true
Trail_18854.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18854.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18854.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18854.Texture = "rbxassetid://14050984567"
Trail_18854.TextureLength = 1.2000000476837158
Trail_18854.LightEmission = 1
Trail_18854.LightInfluence = 0

 Attachment_18855=i("Attachment", trail_18852)
Attachment_18855.Name="Attachment"
Attachment_18855:SetAttribute("AuraInstance", true)
Attachment_18855.Position = v3(-12.028968,0.000000,0.000000)
Attachment_18855.Visible = false

 bottomleftup_18856=i("Attachment", beamedge_18706)
bottomleftup_18856.Name="bottomleftup"
bottomleftup_18856:SetAttribute("AuraInstance", true)
bottomleftup_18856.Position = v3(5.777051,-5.777045,5.777051)
bottomleftup_18856.Visible = false

 blacksmoke_18857=i("ParticleEmitter", bottomleftup_18856)
blacksmoke_18857.Name="blacksmoke"
blacksmoke_18857:SetAttribute("EmitDelay", 0)
blacksmoke_18857:SetAttribute("AuraInstance", true)
blacksmoke_18857:SetAttribute("EmitDuration", 0)
blacksmoke_18857:SetAttribute("EmitCount", 1)
blacksmoke_18857.Enabled = true
blacksmoke_18857.Rate = 14.399999618530273
blacksmoke_18857.Lifetime = nr(0.25,0.25)
blacksmoke_18857.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_18857.Rotation = nr(-1000,1000)
blacksmoke_18857.RotSpeed = nr(0,0)
blacksmoke_18857.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_18857.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_18857.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke_18857.LightEmission = -0.5
blacksmoke_18857.LightInfluence = 0
blacksmoke_18857.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_18857.Drag = 0
blacksmoke_18857.EmissionDirection = Enum.NormalId.Top
blacksmoke_18857.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_18857.ZOffset = 1.0010000467300415
blacksmoke_18857.Texture = "rbxassetid://16310636399"
blacksmoke_18857.LockedToPart = true
blacksmoke_18857.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_18857.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_18857.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_18857.FlipbookFramerate = nr(36,36)
blacksmoke_18857.FlipbookStartRandom = false
blacksmoke_18857.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 blacksmoke2_18858=i("ParticleEmitter", bottomleftup_18856)
blacksmoke2_18858.Name="blacksmoke2"
blacksmoke2_18858:SetAttribute("EmitDelay", 0)
blacksmoke2_18858:SetAttribute("AuraInstance", true)
blacksmoke2_18858:SetAttribute("EmitDuration", 0)
blacksmoke2_18858:SetAttribute("EmitCount", 1)
blacksmoke2_18858.Enabled = false
blacksmoke2_18858.Rate = 14.399999618530273
blacksmoke2_18858.Lifetime = nr(0.25,0.25)
blacksmoke2_18858.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_18858.Rotation = nr(-360,360)
blacksmoke2_18858.RotSpeed = nr(0,0)
blacksmoke2_18858.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_18858.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_18858.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
blacksmoke2_18858.LightEmission = -1
blacksmoke2_18858.LightInfluence = 0
blacksmoke2_18858.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_18858.Drag = 0
blacksmoke2_18858.EmissionDirection = Enum.NormalId.Top
blacksmoke2_18858.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_18858.ZOffset = 1.0019999742507935
blacksmoke2_18858.Texture = "rbxassetid://13916934000"
blacksmoke2_18858.LockedToPart = true
blacksmoke2_18858.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_18858.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_18858.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_18858.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_18858.FlipbookStartRandom = false
blacksmoke2_18858.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots_18859=i("ParticleEmitter", bottomleftup_18856)
dots_18859.Name="dots"
dots_18859:SetAttribute("EmitDuration", 0)
dots_18859:SetAttribute("AuraInstance", true)
dots_18859:SetAttribute("EmitCount", 1)
dots_18859.Enabled = true
dots_18859.Rate = 60
dots_18859.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_18859.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_18859.Rotation = nr(-1000,1000)
dots_18859.RotSpeed = nr(0,0)
dots_18859.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_18859.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_18859.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots_18859.LightEmission = 1
dots_18859.LightInfluence = 0
dots_18859.Acceleration = v3(0.000000,0.000000,0.000001)
dots_18859.Drag = 0
dots_18859.EmissionDirection = Enum.NormalId.Top
dots_18859.SpreadAngle = v2(-1000.000000,1000.000000)
dots_18859.ZOffset = 1.0080000162124634
dots_18859.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_18859.LockedToPart = true
dots_18859.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_18859.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_18859.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_18859.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_18859.FlipbookStartRandom = false
dots_18859.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 star_18860=i("ParticleEmitter", bottomleftup_18856)
star_18860.Name="star"
star_18860:SetAttribute("EmitDelay", 0)
star_18860:SetAttribute("AuraInstance", true)
star_18860:SetAttribute("EmitDuration", 0)
star_18860:SetAttribute("EmitCount", 1)
star_18860.Enabled = true
star_18860.Rate = 24
star_18860.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18860.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18860.Rotation = nr(0,0)
star_18860.RotSpeed = nr(0,0)
star_18860.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_18860.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18860.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18860.LightEmission = 0
star_18860.LightInfluence = 0
star_18860.Acceleration = v3(0.000000,0.000000,0.000001)
star_18860.Drag = 0
star_18860.EmissionDirection = Enum.NormalId.Top
star_18860.SpreadAngle = v2(360000.000000,360000.000000)
star_18860.ZOffset = 1.5049999952316284
star_18860.Texture = "rbxassetid://130506341047209"
star_18860.LockedToPart = true
star_18860.Orientation = Enum.ParticleOrientation.FacingCamera
star_18860.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18860.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18860.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18860.FlipbookStartRandom = false
star_18860.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 beam_18861=i("Beam", bottomleftup_18856)
beam_18861.Name="beam"
beam_18861:SetAttribute("EmitDuration", 0)
beam_18861:SetAttribute("AuraInstance", true)
beam_18861.Enabled = true
beam_18861.Width0 = 0.20592001080513
beam_18861.Width1 = 0.20592001080513
beam_18861.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18861.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18861.CurveSize0 = 0
beam_18861.CurveSize1 = 0
beam_18861.FaceCamera = true
beam_18861.LightEmission = 1
beam_18861.LightInfluence = 0
beam_18861.Segments = 10
beam_18861.Texture = "rbxassetid://16310670422"
beam_18861.TextureLength = 0.5
beam_18861.TextureSpeed = 1.5108873844146729

 lines_18862=i("Beam", bottomleftup_18856)
lines_18862.Name="lines"
lines_18862:SetAttribute("EmitDuration", 0)
lines_18862:SetAttribute("AuraInstance", true)
lines_18862.Enabled = true
lines_18862.Width0 = 1.7846400737762451
lines_18862.Width1 = 1.7846400737762451
lines_18862.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18862.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18862.CurveSize0 = 0
lines_18862.CurveSize1 = 0
lines_18862.FaceCamera = true
lines_18862.LightEmission = 1
lines_18862.LightInfluence = 0
lines_18862.Segments = 10
lines_18862.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18862.TextureLength = 0.625
lines_18862.TextureSpeed = 0.3777218461036682

 beam2_18863=i("Beam", bottomleftup_18856)
beam2_18863.Name="beam2"
beam2_18863:SetAttribute("EmitDuration", 0)
beam2_18863:SetAttribute("AuraInstance", true)
beam2_18863.Enabled = true
beam2_18863.Width0 = 1.0982400178909302
beam2_18863.Width1 = 1.0982400178909302
beam2_18863.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18863.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18863.CurveSize0 = 0
beam2_18863.CurveSize1 = 0
beam2_18863.FaceCamera = true
beam2_18863.LightEmission = 0
beam2_18863.LightInfluence = 0
beam2_18863.Segments = 10
beam2_18863.Texture = "rbxassetid://18837319394"
beam2_18863.TextureLength = 2.25
beam2_18863.TextureSpeed = 1.5108873844146729

 smokeblack_18864=i("Beam", bottomleftup_18856)
smokeblack_18864.Name="smokeblack"
smokeblack_18864:SetAttribute("EmitDuration", 0)
smokeblack_18864:SetAttribute("AuraInstance", true)
smokeblack_18864.Enabled = true
smokeblack_18864.Width0 = 2.0592002868652344
smokeblack_18864.Width1 = 2.0592002868652344
smokeblack_18864.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18864.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18864.CurveSize0 = 0
smokeblack_18864.CurveSize1 = 0
smokeblack_18864.FaceCamera = true
smokeblack_18864.LightEmission = 0.4000000059604645
smokeblack_18864.LightInfluence = 0
smokeblack_18864.Segments = 10
smokeblack_18864.Texture = "rbxassetid://14191603094"
smokeblack_18864.TextureLength = 12
smokeblack_18864.TextureSpeed = 0.7554436922073364

 Attachment_18865=i("Attachment", bottomleftup_18856)
Attachment_18865.Name="Attachment"
Attachment_18865:SetAttribute("AuraInstance", true)
Attachment_18865.Position = v3(0.000000,-0.000005,0.000000)
Attachment_18865.Visible = false

 beam_18866=i("Beam", Attachment_18865)
beam_18866.Name="beam"
beam_18866:SetAttribute("EmitDuration", 0)
beam_18866:SetAttribute("AuraInstance", true)
beam_18866.Enabled = true
beam_18866.Width0 = 0.20592001080513
beam_18866.Width1 = 0.20592001080513
beam_18866.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18866.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18866.CurveSize0 = 0
beam_18866.CurveSize1 = 0
beam_18866.FaceCamera = true
beam_18866.LightEmission = 1
beam_18866.LightInfluence = 0
beam_18866.Segments = 10
beam_18866.Texture = "rbxassetid://16310670422"
beam_18866.TextureLength = 0.5
beam_18866.TextureSpeed = 1.5108873844146729

 beam2_18867=i("Beam", Attachment_18865)
beam2_18867.Name="beam2"
beam2_18867:SetAttribute("EmitDuration", 0)
beam2_18867:SetAttribute("AuraInstance", true)
beam2_18867.Enabled = true
beam2_18867.Width0 = 1.0982400178909302
beam2_18867.Width1 = 1.0982400178909302
beam2_18867.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18867.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam2_18867.CurveSize0 = 0
beam2_18867.CurveSize1 = 0
beam2_18867.FaceCamera = true
beam2_18867.LightEmission = 0
beam2_18867.LightInfluence = 0
beam2_18867.Segments = 10
beam2_18867.Texture = "rbxassetid://18837319394"
beam2_18867.TextureLength = 2.25
beam2_18867.TextureSpeed = 1.5108873844146729

 lines_18868=i("Beam", Attachment_18865)
lines_18868.Name="lines"
lines_18868:SetAttribute("EmitDuration", 0)
lines_18868:SetAttribute("AuraInstance", true)
lines_18868.Enabled = true
lines_18868.Width0 = 1.7846400737762451
lines_18868.Width1 = 1.7846400737762451
lines_18868.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_18868.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lines_18868.CurveSize0 = 0
lines_18868.CurveSize1 = 0
lines_18868.FaceCamera = true
lines_18868.LightEmission = 1
lines_18868.LightInfluence = 0
lines_18868.Segments = 10
lines_18868.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_18868.TextureLength = 0.625
lines_18868.TextureSpeed = 0.3777218461036682

 smokeblack_18869=i("Beam", Attachment_18865)
smokeblack_18869.Name="smokeblack"
smokeblack_18869:SetAttribute("EmitDuration", 0)
smokeblack_18869:SetAttribute("AuraInstance", true)
smokeblack_18869.Enabled = true
smokeblack_18869.Width0 = 2.0592002868652344
smokeblack_18869.Width1 = 2.0592002868652344
smokeblack_18869.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_18869.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_18869.CurveSize0 = 0
smokeblack_18869.CurveSize1 = 0
smokeblack_18869.FaceCamera = true
smokeblack_18869.LightEmission = 0.4000000059604645
smokeblack_18869.LightInfluence = 0
smokeblack_18869.Segments = 10
smokeblack_18869.Texture = "rbxassetid://14191603094"
smokeblack_18869.TextureLength = 12
smokeblack_18869.TextureSpeed = 0.7554436922073364

 splatter_18870=i("ParticleEmitter", bottomleftup_18856)
splatter_18870.Name="splatter"
splatter_18870:SetAttribute("EmitDuration", 0)
splatter_18870:SetAttribute("AuraInstance", true)
splatter_18870:SetAttribute("EmitCount", 1)
splatter_18870.Enabled = true
splatter_18870.Rate = 70
splatter_18870.Lifetime = nr(0.25,0.3499999940395355)
splatter_18870.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_18870.Rotation = nr(-1000,1000)
splatter_18870.RotSpeed = nr(0,0)
splatter_18870.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_18870.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_18870.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
splatter_18870.LightEmission = -20
splatter_18870.LightInfluence = 0
splatter_18870.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_18870.Drag = 0
splatter_18870.EmissionDirection = Enum.NormalId.Top
splatter_18870.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_18870.ZOffset = 1.0069999694824219
splatter_18870.Texture = "rbxassetid://15004620425"
splatter_18870.LockedToPart = true
splatter_18870.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_18870.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_18870.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_18870.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_18870.FlipbookStartRandom = false
splatter_18870.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 edges_18871=i("Attachment", bottomleftup_18856)
edges_18871.Name="edges"
edges_18871:SetAttribute("AuraInstance", true)
edges_18871.Position = v3(0.600000,-0.600000,0.600000)
edges_18871.Visible = false

 beam_18872=i("Beam", edges_18871)
beam_18872.Name="beam"
beam_18872:SetAttribute("EmitDuration", 0)
beam_18872:SetAttribute("AuraInstance", true)
beam_18872.Enabled = true
beam_18872.Width0 = 0.48000001907348633
beam_18872.Width1 = 0
beam_18872.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18872.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18872.CurveSize0 = 0
beam_18872.CurveSize1 = 0
beam_18872.FaceCamera = true
beam_18872.LightEmission = 1
beam_18872.LightInfluence = 0
beam_18872.Segments = 10
beam_18872.Texture = "rbxassetid://14166981368"
beam_18872.TextureLength = 0.5
beam_18872.TextureSpeed = 1.5108873844146729

 beam_18873=i("Beam", edges_18871)
beam_18873.Name="beam"
beam_18873:SetAttribute("EmitDuration", 0)
beam_18873:SetAttribute("AuraInstance", true)
beam_18873.Enabled = true
beam_18873.Width0 = 0.48000001907348633
beam_18873.Width1 = 0
beam_18873.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18873.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18873.CurveSize0 = 0
beam_18873.CurveSize1 = 0
beam_18873.FaceCamera = true
beam_18873.LightEmission = 1
beam_18873.LightInfluence = 0
beam_18873.Segments = 10
beam_18873.Texture = "rbxassetid://14166981368"
beam_18873.TextureLength = 0.5
beam_18873.TextureSpeed = 1.5108873844146729

 beam_18874=i("Beam", edges_18871)
beam_18874.Name="beam"
beam_18874:SetAttribute("EmitDuration", 0)
beam_18874:SetAttribute("AuraInstance", true)
beam_18874.Enabled = true
beam_18874.Width0 = 0.48000001907348633
beam_18874.Width1 = 0
beam_18874.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18874.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18874.CurveSize0 = 0
beam_18874.CurveSize1 = 0
beam_18874.FaceCamera = true
beam_18874.LightEmission = 1
beam_18874.LightInfluence = 0
beam_18874.Segments = 10
beam_18874.Texture = "rbxassetid://14166981368"
beam_18874.TextureLength = 0.5
beam_18874.TextureSpeed = 1.5108873844146729

 star_18875=i("ParticleEmitter", edges_18871)
star_18875.Name="star"
star_18875:SetAttribute("EmitDelay", 0)
star_18875:SetAttribute("AuraInstance", true)
star_18875:SetAttribute("EmitDuration", 0)
star_18875:SetAttribute("EmitCount", 1)
star_18875.Enabled = true
star_18875.Rate = 24
star_18875.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18875.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18875.Rotation = nr(0,0)
star_18875.RotSpeed = nr(0,0)
star_18875.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18875.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18875.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18875.LightEmission = 0
star_18875.LightInfluence = 0
star_18875.Acceleration = v3(0.000000,0.000000,0.000001)
star_18875.Drag = 0
star_18875.EmissionDirection = Enum.NormalId.Top
star_18875.SpreadAngle = v2(360000.000000,360000.000000)
star_18875.ZOffset = 1.5049999952316284
star_18875.Texture = "rbxassetid://130506341047209"
star_18875.LockedToPart = true
star_18875.Orientation = Enum.ParticleOrientation.FacingCamera
star_18875.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18875.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18875.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18875.FlipbookStartRandom = false
star_18875.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

 trail_18876=i("Attachment", edges_18871)
trail_18876.Name="trail"
trail_18876:SetAttribute("AuraInstance", true)
trail_18876.Position = v3(0.000000,-0.000005,0.000000)
trail_18876.Visible = false

 Attachment_18877=i("Attachment", trail_18876)
Attachment_18877.Name="Attachment"
Attachment_18877:SetAttribute("AuraInstance", true)
Attachment_18877.Position = v3(12.513684,0.000000,0.000000)
Attachment_18877.Visible = false

 Trail_18878=i("Trail", trail_18876)
Trail_18878.Name="Trail"
Trail_18878:SetAttribute("EmitDuration", 0)
Trail_18878:SetAttribute("AuraInstance", true)
Trail_18878.Enabled = true
Trail_18878.Lifetime = 0.15000000596046448
Trail_18878.FaceCamera = true
Trail_18878.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18878.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18878.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18878.Texture = "rbxassetid://14050984567"
Trail_18878.TextureLength = 1.2000000476837158
Trail_18878.LightEmission = 1
Trail_18878.LightInfluence = 0

 Attachment_18879=i("Attachment", trail_18876)
Attachment_18879.Name="Attachment"
Attachment_18879:SetAttribute("AuraInstance", true)
Attachment_18879.Position = v3(-12.028894,0.000000,0.000000)
Attachment_18879.Visible = false

 zap_18880=i("ParticleEmitter", CUBE_18549)
zap_18880.Name="zap"
zap_18880:SetAttribute("EmitDuration", 0)
zap_18880:SetAttribute("AuraInstance", true)
zap_18880.Enabled = true
zap_18880.Rate = 20
zap_18880.Lifetime = nr(0.25,0.30000001192092896)
zap_18880.Speed = nr(0.33000001311302185,0.33000001311302185)
zap_18880.Rotation = nr(-1000,1000)
zap_18880.RotSpeed = nr(-24,24)
zap_18880.Size = ns({nsk(0.000000,1.188000,0.660000),nsk(1.000000,1.188000,0.660000)})
zap_18880.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.135835,0.243750,0.000000),nsk(0.499471,0.000000,0.000000),nsk(0.801797,0.243750,0.000000),nsk(1.000000,1.000000,0.000000)})
zap_18880.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
zap_18880.LightEmission = 1
zap_18880.LightInfluence = 0
zap_18880.Acceleration = v3(0.000000,0.000000,0.000001)
zap_18880.Drag = 0
zap_18880.EmissionDirection = Enum.NormalId.Bottom
zap_18880.SpreadAngle = v2(50.000000,50.000000)
zap_18880.ZOffset = 0
zap_18880.Texture = "rbxassetid://13931232259"
zap_18880.LockedToPart = true
zap_18880.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
zap_18880.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
zap_18880.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
zap_18880.FlipbookFramerate = nr(6,7.199999809265137)
zap_18880.FlipbookStartRandom = false
zap_18880.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18881=i("ParticleEmitter", CUBE_18549)
glitch_18881.Name="glitch"
glitch_18881:SetAttribute("EmitDuration", 0)
glitch_18881:SetAttribute("AuraInstance", true)
glitch_18881.Enabled = true
glitch_18881.Rate = 24
glitch_18881.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18881.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18881.Rotation = nr(-1000,1000)
glitch_18881.RotSpeed = nr(0,0)
glitch_18881.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18881.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18881.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18881.LightEmission = 1
glitch_18881.LightInfluence = 0
glitch_18881.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18881.Drag = 0
glitch_18881.EmissionDirection = Enum.NormalId.Back
glitch_18881.SpreadAngle = v2(0.000000,0.000000)
glitch_18881.ZOffset = 0
glitch_18881.Texture = "http://www.roblox.com/asset/?id=15845909658"
glitch_18881.LockedToPart = true
glitch_18881.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18881.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18881.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18881.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18881.FlipbookStartRandom = false
glitch_18881.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18882=i("ParticleEmitter", CUBE_18549)
glitch_18882.Name="glitch"
glitch_18882:SetAttribute("EmitDuration", 0)
glitch_18882:SetAttribute("AuraInstance", true)
glitch_18882.Enabled = true
glitch_18882.Rate = 24
glitch_18882.Lifetime = nr(0.4166666567325592,0.4166666567325592)
glitch_18882.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18882.Rotation = nr(-1000,1000)
glitch_18882.RotSpeed = nr(0,0)
glitch_18882.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18882.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18882.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18882.LightEmission = 1
glitch_18882.LightInfluence = 0
glitch_18882.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18882.Drag = 0
glitch_18882.EmissionDirection = Enum.NormalId.Back
glitch_18882.SpreadAngle = v2(0.000000,0.000000)
glitch_18882.ZOffset = 0
glitch_18882.Texture = "http://www.roblox.com/asset/?id=17544222952"
glitch_18882.LockedToPart = true
glitch_18882.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18882.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitch_18882.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18882.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18882.FlipbookStartRandom = false
glitch_18882.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18883=i("ParticleEmitter", CUBE_18549)
glitch_18883.Name="glitch"
glitch_18883:SetAttribute("EmitDuration", 0)
glitch_18883:SetAttribute("AuraInstance", true)
glitch_18883.Enabled = true
glitch_18883.Rate = 24
glitch_18883.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18883.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18883.Rotation = nr(-1000,1000)
glitch_18883.RotSpeed = nr(0,0)
glitch_18883.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18883.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18883.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18883.LightEmission = 1
glitch_18883.LightInfluence = 0
glitch_18883.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18883.Drag = 0
glitch_18883.EmissionDirection = Enum.NormalId.Back
glitch_18883.SpreadAngle = v2(0.000000,0.000000)
glitch_18883.ZOffset = 0
glitch_18883.Texture = "rbxassetid://87542617578573"
glitch_18883.LockedToPart = true
glitch_18883.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18883.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18883.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18883.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18883.FlipbookStartRandom = false
glitch_18883.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18884=i("ParticleEmitter", CUBE_18549)
glitch_18884.Name="glitch"
glitch_18884:SetAttribute("EmitDuration", 0)
glitch_18884:SetAttribute("AuraInstance", true)
glitch_18884.Enabled = true
glitch_18884.Rate = 24
glitch_18884.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18884.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18884.Rotation = nr(-1000,1000)
glitch_18884.RotSpeed = nr(0,0)
glitch_18884.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18884.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18884.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18884.LightEmission = 1
glitch_18884.LightInfluence = 0
glitch_18884.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18884.Drag = 0
glitch_18884.EmissionDirection = Enum.NormalId.Top
glitch_18884.SpreadAngle = v2(0.000000,0.000000)
glitch_18884.ZOffset = 0
glitch_18884.Texture = "http://www.roblox.com/asset/?id=15845909658"
glitch_18884.LockedToPart = true
glitch_18884.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18884.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18884.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18884.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18884.FlipbookStartRandom = false
glitch_18884.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18885=i("ParticleEmitter", CUBE_18549)
glitch_18885.Name="glitch"
glitch_18885:SetAttribute("EmitDuration", 0)
glitch_18885:SetAttribute("AuraInstance", true)
glitch_18885.Enabled = true
glitch_18885.Rate = 24
glitch_18885.Lifetime = nr(0.4166666567325592,0.4166666567325592)
glitch_18885.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18885.Rotation = nr(-1000,1000)
glitch_18885.RotSpeed = nr(0,0)
glitch_18885.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18885.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18885.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18885.LightEmission = 1
glitch_18885.LightInfluence = 0
glitch_18885.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18885.Drag = 0
glitch_18885.EmissionDirection = Enum.NormalId.Top
glitch_18885.SpreadAngle = v2(0.000000,0.000000)
glitch_18885.ZOffset = 0
glitch_18885.Texture = "http://www.roblox.com/asset/?id=17544222952"
glitch_18885.LockedToPart = true
glitch_18885.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18885.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitch_18885.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18885.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18885.FlipbookStartRandom = false
glitch_18885.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18886=i("ParticleEmitter", CUBE_18549)
glitch_18886.Name="glitch"
glitch_18886:SetAttribute("EmitDuration", 0)
glitch_18886:SetAttribute("AuraInstance", true)
glitch_18886.Enabled = true
glitch_18886.Rate = 24
glitch_18886.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18886.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18886.Rotation = nr(-1000,1000)
glitch_18886.RotSpeed = nr(0,0)
glitch_18886.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18886.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18886.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18886.LightEmission = 1
glitch_18886.LightInfluence = 0
glitch_18886.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18886.Drag = 0
glitch_18886.EmissionDirection = Enum.NormalId.Top
glitch_18886.SpreadAngle = v2(0.000000,0.000000)
glitch_18886.ZOffset = 0
glitch_18886.Texture = "rbxassetid://87542617578573"
glitch_18886.LockedToPart = true
glitch_18886.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18886.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18886.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18886.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18886.FlipbookStartRandom = false
glitch_18886.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 zap_18887=i("ParticleEmitter", CUBE_18549)
zap_18887.Name="zap"
zap_18887:SetAttribute("EmitDuration", 0)
zap_18887:SetAttribute("AuraInstance", true)
zap_18887.Enabled = true
zap_18887.Rate = 20
zap_18887.Lifetime = nr(0.25,0.30000001192092896)
zap_18887.Speed = nr(0.33000001311302185,0.33000001311302185)
zap_18887.Rotation = nr(-1000,1000)
zap_18887.RotSpeed = nr(-24,24)
zap_18887.Size = ns({nsk(0.000000,1.188000,0.660000),nsk(1.000000,1.188000,0.660000)})
zap_18887.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.135835,0.243750,0.000000),nsk(0.499471,0.000000,0.000000),nsk(0.801797,0.243750,0.000000),nsk(1.000000,1.000000,0.000000)})
zap_18887.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
zap_18887.LightEmission = 1
zap_18887.LightInfluence = 0
zap_18887.Acceleration = v3(0.000000,0.000000,0.000001)
zap_18887.Drag = 0
zap_18887.EmissionDirection = Enum.NormalId.Top
zap_18887.SpreadAngle = v2(50.000000,50.000000)
zap_18887.ZOffset = 0
zap_18887.Texture = "rbxassetid://13931232259"
zap_18887.LockedToPart = true
zap_18887.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
zap_18887.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
zap_18887.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
zap_18887.FlipbookFramerate = nr(6,7.199999809265137)
zap_18887.FlipbookStartRandom = false
zap_18887.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18888=i("ParticleEmitter", CUBE_18549)
glitch_18888.Name="glitch"
glitch_18888:SetAttribute("EmitDuration", 0)
glitch_18888:SetAttribute("AuraInstance", true)
glitch_18888.Enabled = true
glitch_18888.Rate = 24
glitch_18888.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18888.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18888.Rotation = nr(-1000,1000)
glitch_18888.RotSpeed = nr(0,0)
glitch_18888.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18888.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18888.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18888.LightEmission = 1
glitch_18888.LightInfluence = 0
glitch_18888.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18888.Drag = 0
glitch_18888.EmissionDirection = Enum.NormalId.Right
glitch_18888.SpreadAngle = v2(0.000000,0.000000)
glitch_18888.ZOffset = 0
glitch_18888.Texture = "http://www.roblox.com/asset/?id=15845909658"
glitch_18888.LockedToPart = true
glitch_18888.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18888.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18888.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18888.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18888.FlipbookStartRandom = false
glitch_18888.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18889=i("ParticleEmitter", CUBE_18549)
glitch_18889.Name="glitch"
glitch_18889:SetAttribute("EmitDuration", 0)
glitch_18889:SetAttribute("AuraInstance", true)
glitch_18889.Enabled = true
glitch_18889.Rate = 24
glitch_18889.Lifetime = nr(0.4166666567325592,0.4166666567325592)
glitch_18889.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18889.Rotation = nr(-1000,1000)
glitch_18889.RotSpeed = nr(0,0)
glitch_18889.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18889.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18889.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18889.LightEmission = 1
glitch_18889.LightInfluence = 0
glitch_18889.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18889.Drag = 0
glitch_18889.EmissionDirection = Enum.NormalId.Right
glitch_18889.SpreadAngle = v2(0.000000,0.000000)
glitch_18889.ZOffset = 0
glitch_18889.Texture = "http://www.roblox.com/asset/?id=17544222952"
glitch_18889.LockedToPart = true
glitch_18889.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18889.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitch_18889.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18889.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18889.FlipbookStartRandom = false
glitch_18889.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18890=i("ParticleEmitter", CUBE_18549)
glitch_18890.Name="glitch"
glitch_18890:SetAttribute("EmitDuration", 0)
glitch_18890:SetAttribute("AuraInstance", true)
glitch_18890.Enabled = true
glitch_18890.Rate = 24
glitch_18890.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18890.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18890.Rotation = nr(-1000,1000)
glitch_18890.RotSpeed = nr(0,0)
glitch_18890.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18890.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18890.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18890.LightEmission = 1
glitch_18890.LightInfluence = 0
glitch_18890.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18890.Drag = 0
glitch_18890.EmissionDirection = Enum.NormalId.Right
glitch_18890.SpreadAngle = v2(0.000000,0.000000)
glitch_18890.ZOffset = 0
glitch_18890.Texture = "rbxassetid://87542617578573"
glitch_18890.LockedToPart = true
glitch_18890.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18890.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18890.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18890.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18890.FlipbookStartRandom = false
glitch_18890.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 zap_18891=i("ParticleEmitter", CUBE_18549)
zap_18891.Name="zap"
zap_18891:SetAttribute("EmitDuration", 0)
zap_18891:SetAttribute("AuraInstance", true)
zap_18891.Enabled = true
zap_18891.Rate = 20
zap_18891.Lifetime = nr(0.25,0.30000001192092896)
zap_18891.Speed = nr(0.33000001311302185,0.33000001311302185)
zap_18891.Rotation = nr(-1000,1000)
zap_18891.RotSpeed = nr(-24,24)
zap_18891.Size = ns({nsk(0.000000,1.188000,0.660000),nsk(1.000000,1.188000,0.660000)})
zap_18891.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.135835,0.243750,0.000000),nsk(0.499471,0.000000,0.000000),nsk(0.801797,0.243750,0.000000),nsk(1.000000,1.000000,0.000000)})
zap_18891.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
zap_18891.LightEmission = 1
zap_18891.LightInfluence = 0
zap_18891.Acceleration = v3(0.000000,0.000000,0.000001)
zap_18891.Drag = 0
zap_18891.EmissionDirection = Enum.NormalId.Right
zap_18891.SpreadAngle = v2(50.000000,50.000000)
zap_18891.ZOffset = 0
zap_18891.Texture = "rbxassetid://13931232259"
zap_18891.LockedToPart = true
zap_18891.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
zap_18891.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
zap_18891.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
zap_18891.FlipbookFramerate = nr(6,7.199999809265137)
zap_18891.FlipbookStartRandom = false
zap_18891.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18892=i("ParticleEmitter", CUBE_18549)
glitch_18892.Name="glitch"
glitch_18892:SetAttribute("EmitDuration", 0)
glitch_18892:SetAttribute("AuraInstance", true)
glitch_18892.Enabled = true
glitch_18892.Rate = 24
glitch_18892.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18892.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18892.Rotation = nr(-1000,1000)
glitch_18892.RotSpeed = nr(0,0)
glitch_18892.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18892.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18892.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18892.LightEmission = 1
glitch_18892.LightInfluence = 0
glitch_18892.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18892.Drag = 0
glitch_18892.EmissionDirection = Enum.NormalId.Left
glitch_18892.SpreadAngle = v2(0.000000,0.000000)
glitch_18892.ZOffset = 0
glitch_18892.Texture = "http://www.roblox.com/asset/?id=15845909658"
glitch_18892.LockedToPart = true
glitch_18892.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18892.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18892.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18892.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18892.FlipbookStartRandom = false
glitch_18892.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18893=i("ParticleEmitter", CUBE_18549)
glitch_18893.Name="glitch"
glitch_18893:SetAttribute("EmitDuration", 0)
glitch_18893:SetAttribute("AuraInstance", true)
glitch_18893.Enabled = true
glitch_18893.Rate = 24
glitch_18893.Lifetime = nr(0.4166666567325592,0.4166666567325592)
glitch_18893.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18893.Rotation = nr(-1000,1000)
glitch_18893.RotSpeed = nr(0,0)
glitch_18893.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18893.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18893.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18893.LightEmission = 1
glitch_18893.LightInfluence = 0
glitch_18893.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18893.Drag = 0
glitch_18893.EmissionDirection = Enum.NormalId.Left
glitch_18893.SpreadAngle = v2(0.000000,0.000000)
glitch_18893.ZOffset = 0
glitch_18893.Texture = "http://www.roblox.com/asset/?id=17544222952"
glitch_18893.LockedToPart = true
glitch_18893.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18893.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitch_18893.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18893.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18893.FlipbookStartRandom = false
glitch_18893.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18894=i("ParticleEmitter", CUBE_18549)
glitch_18894.Name="glitch"
glitch_18894:SetAttribute("EmitDuration", 0)
glitch_18894:SetAttribute("AuraInstance", true)
glitch_18894.Enabled = true
glitch_18894.Rate = 24
glitch_18894.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18894.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18894.Rotation = nr(-1000,1000)
glitch_18894.RotSpeed = nr(0,0)
glitch_18894.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18894.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18894.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18894.LightEmission = 1
glitch_18894.LightInfluence = 0
glitch_18894.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18894.Drag = 0
glitch_18894.EmissionDirection = Enum.NormalId.Left
glitch_18894.SpreadAngle = v2(0.000000,0.000000)
glitch_18894.ZOffset = 0
glitch_18894.Texture = "rbxassetid://87542617578573"
glitch_18894.LockedToPart = true
glitch_18894.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18894.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18894.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18894.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18894.FlipbookStartRandom = false
glitch_18894.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 zap_18895=i("ParticleEmitter", CUBE_18549)
zap_18895.Name="zap"
zap_18895:SetAttribute("EmitDuration", 0)
zap_18895:SetAttribute("AuraInstance", true)
zap_18895.Enabled = true
zap_18895.Rate = 20
zap_18895.Lifetime = nr(0.25,0.30000001192092896)
zap_18895.Speed = nr(0.33000001311302185,0.33000001311302185)
zap_18895.Rotation = nr(-1000,1000)
zap_18895.RotSpeed = nr(-24,24)
zap_18895.Size = ns({nsk(0.000000,1.188000,0.660000),nsk(1.000000,1.188000,0.660000)})
zap_18895.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.135835,0.243750,0.000000),nsk(0.499471,0.000000,0.000000),nsk(0.801797,0.243750,0.000000),nsk(1.000000,1.000000,0.000000)})
zap_18895.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
zap_18895.LightEmission = 1
zap_18895.LightInfluence = 0
zap_18895.Acceleration = v3(0.000000,0.000000,0.000001)
zap_18895.Drag = 0
zap_18895.EmissionDirection = Enum.NormalId.Left
zap_18895.SpreadAngle = v2(50.000000,50.000000)
zap_18895.ZOffset = 0
zap_18895.Texture = "rbxassetid://13931232259"
zap_18895.LockedToPart = true
zap_18895.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
zap_18895.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
zap_18895.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
zap_18895.FlipbookFramerate = nr(6,7.199999809265137)
zap_18895.FlipbookStartRandom = false
zap_18895.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18896=i("ParticleEmitter", CUBE_18549)
glitch_18896.Name="glitch"
glitch_18896:SetAttribute("EmitDuration", 0)
glitch_18896:SetAttribute("AuraInstance", true)
glitch_18896.Enabled = true
glitch_18896.Rate = 24
glitch_18896.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18896.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18896.Rotation = nr(-1000,1000)
glitch_18896.RotSpeed = nr(0,0)
glitch_18896.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18896.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18896.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18896.LightEmission = 1
glitch_18896.LightInfluence = 0
glitch_18896.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18896.Drag = 0
glitch_18896.EmissionDirection = Enum.NormalId.Front
glitch_18896.SpreadAngle = v2(0.000000,0.000000)
glitch_18896.ZOffset = 0
glitch_18896.Texture = "http://www.roblox.com/asset/?id=15845909658"
glitch_18896.LockedToPart = true
glitch_18896.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18896.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18896.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18896.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18896.FlipbookStartRandom = false
glitch_18896.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18897=i("ParticleEmitter", CUBE_18549)
glitch_18897.Name="glitch"
glitch_18897:SetAttribute("EmitDuration", 0)
glitch_18897:SetAttribute("AuraInstance", true)
glitch_18897.Enabled = true
glitch_18897.Rate = 24
glitch_18897.Lifetime = nr(0.4166666567325592,0.4166666567325592)
glitch_18897.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18897.Rotation = nr(-1000,1000)
glitch_18897.RotSpeed = nr(0,0)
glitch_18897.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18897.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18897.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18897.LightEmission = 1
glitch_18897.LightInfluence = 0
glitch_18897.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18897.Drag = 0
glitch_18897.EmissionDirection = Enum.NormalId.Front
glitch_18897.SpreadAngle = v2(0.000000,0.000000)
glitch_18897.ZOffset = 0
glitch_18897.Texture = "http://www.roblox.com/asset/?id=17544222952"
glitch_18897.LockedToPart = true
glitch_18897.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18897.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitch_18897.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18897.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18897.FlipbookStartRandom = false
glitch_18897.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18898=i("ParticleEmitter", CUBE_18549)
glitch_18898.Name="glitch"
glitch_18898:SetAttribute("EmitDuration", 0)
glitch_18898:SetAttribute("AuraInstance", true)
glitch_18898.Enabled = true
glitch_18898.Rate = 24
glitch_18898.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18898.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18898.Rotation = nr(-1000,1000)
glitch_18898.RotSpeed = nr(0,0)
glitch_18898.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18898.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18898.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18898.LightEmission = 1
glitch_18898.LightInfluence = 0
glitch_18898.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18898.Drag = 0
glitch_18898.EmissionDirection = Enum.NormalId.Front
glitch_18898.SpreadAngle = v2(0.000000,0.000000)
glitch_18898.ZOffset = 0
glitch_18898.Texture = "rbxassetid://87542617578573"
glitch_18898.LockedToPart = true
glitch_18898.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18898.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18898.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18898.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18898.FlipbookStartRandom = false
glitch_18898.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 zap_18899=i("ParticleEmitter", CUBE_18549)
zap_18899.Name="zap"
zap_18899:SetAttribute("EmitDuration", 0)
zap_18899:SetAttribute("AuraInstance", true)
zap_18899.Enabled = true
zap_18899.Rate = 20
zap_18899.Lifetime = nr(0.25,0.30000001192092896)
zap_18899.Speed = nr(0.33000001311302185,0.33000001311302185)
zap_18899.Rotation = nr(-1000,1000)
zap_18899.RotSpeed = nr(-24,24)
zap_18899.Size = ns({nsk(0.000000,1.188000,0.660000),nsk(1.000000,1.188000,0.660000)})
zap_18899.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.135835,0.243750,0.000000),nsk(0.499471,0.000000,0.000000),nsk(0.801797,0.243750,0.000000),nsk(1.000000,1.000000,0.000000)})
zap_18899.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
zap_18899.LightEmission = 1
zap_18899.LightInfluence = 0
zap_18899.Acceleration = v3(0.000000,0.000000,0.000001)
zap_18899.Drag = 0
zap_18899.EmissionDirection = Enum.NormalId.Front
zap_18899.SpreadAngle = v2(50.000000,50.000000)
zap_18899.ZOffset = 0
zap_18899.Texture = "rbxassetid://13931232259"
zap_18899.LockedToPart = true
zap_18899.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
zap_18899.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
zap_18899.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
zap_18899.FlipbookFramerate = nr(6,7.199999809265137)
zap_18899.FlipbookStartRandom = false
zap_18899.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18900=i("ParticleEmitter", CUBE_18549)
glitch_18900.Name="glitch"
glitch_18900:SetAttribute("EmitDuration", 0)
glitch_18900:SetAttribute("AuraInstance", true)
glitch_18900.Enabled = true
glitch_18900.Rate = 24
glitch_18900.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18900.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18900.Rotation = nr(-1000,1000)
glitch_18900.RotSpeed = nr(0,0)
glitch_18900.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18900.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18900.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18900.LightEmission = 1
glitch_18900.LightInfluence = 0
glitch_18900.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18900.Drag = 0
glitch_18900.EmissionDirection = Enum.NormalId.Bottom
glitch_18900.SpreadAngle = v2(0.000000,0.000000)
glitch_18900.ZOffset = 0
glitch_18900.Texture = "http://www.roblox.com/asset/?id=15845909658"
glitch_18900.LockedToPart = true
glitch_18900.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18900.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18900.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18900.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18900.FlipbookStartRandom = false
glitch_18900.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18901=i("ParticleEmitter", CUBE_18549)
glitch_18901.Name="glitch"
glitch_18901:SetAttribute("EmitDuration", 0)
glitch_18901:SetAttribute("AuraInstance", true)
glitch_18901.Enabled = true
glitch_18901.Rate = 24
glitch_18901.Lifetime = nr(0.4166666567325592,0.4166666567325592)
glitch_18901.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18901.Rotation = nr(-1000,1000)
glitch_18901.RotSpeed = nr(0,0)
glitch_18901.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18901.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18901.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18901.LightEmission = 1
glitch_18901.LightInfluence = 0
glitch_18901.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18901.Drag = 0
glitch_18901.EmissionDirection = Enum.NormalId.Bottom
glitch_18901.SpreadAngle = v2(0.000000,0.000000)
glitch_18901.ZOffset = 0
glitch_18901.Texture = "http://www.roblox.com/asset/?id=17544222952"
glitch_18901.LockedToPart = true
glitch_18901.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18901.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitch_18901.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18901.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18901.FlipbookStartRandom = false
glitch_18901.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 glitch_18902=i("ParticleEmitter", CUBE_18549)
glitch_18902.Name="glitch"
glitch_18902:SetAttribute("EmitDuration", 0)
glitch_18902:SetAttribute("AuraInstance", true)
glitch_18902.Enabled = true
glitch_18902.Rate = 24
glitch_18902.Lifetime = nr(0.2083333283662796,0.3333333432674408)
glitch_18902.Speed = nr(0.0032947203144431114,0.006589440628886223)
glitch_18902.Rotation = nr(-1000,1000)
glitch_18902.RotSpeed = nr(0,0)
glitch_18902.Size = ns({nsk(0.000000,0.411840,0.000000),nsk(1.000000,0.411840,0.000000)})
glitch_18902.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
glitch_18902.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glitch_18902.LightEmission = 1
glitch_18902.LightInfluence = 0
glitch_18902.Acceleration = v3(0.000000,0.000000,0.000001)
glitch_18902.Drag = 0
glitch_18902.EmissionDirection = Enum.NormalId.Bottom
glitch_18902.SpreadAngle = v2(0.000000,0.000000)
glitch_18902.ZOffset = 0
glitch_18902.Texture = "rbxassetid://87542617578573"
glitch_18902.LockedToPart = true
glitch_18902.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glitch_18902.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitch_18902.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glitch_18902.FlipbookFramerate = nr(6,7.199999809265137)
glitch_18902.FlipbookStartRandom = false
glitch_18902.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 dots2_18903=i("ParticleEmitter", CUBE_18549)
dots2_18903.Name="dots2"
dots2_18903:SetAttribute("EmitDelay", 0)
dots2_18903:SetAttribute("AuraInstance", true)
dots2_18903:SetAttribute("EmitDuration", 0)
dots2_18903:SetAttribute("EmitCount", 0)
dots2_18903.Enabled = true
dots2_18903.Rate = 44
dots2_18903.Lifetime = nr(0.4000000059604645,0.5)
dots2_18903.Speed = nr(0.0255551990121603,0.0255551990121603)
dots2_18903.Rotation = nr(-1000,1000)
dots2_18903.RotSpeed = nr(-20,20)
dots2_18903.Size = ns({nsk(0.000000,3.960000,0.000000),nsk(1.000000,3.960000,0.000000)})
dots2_18903.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499160,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots2_18903.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots2_18903.LightEmission = 1
dots2_18903.LightInfluence = 0
dots2_18903.Acceleration = v3(0.000000,0.000000,0.000001)
dots2_18903.Drag = 0
dots2_18903.EmissionDirection = Enum.NormalId.Top
dots2_18903.SpreadAngle = v2(-1000.000000,1000.000000)
dots2_18903.ZOffset = 1.0230000019073486
dots2_18903.Texture = "http://www.roblox.com/asset/?id=71378521378854"
dots2_18903.LockedToPart = true
dots2_18903.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots2_18903.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
dots2_18903.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots2_18903.FlipbookFramerate = nr(1,1)
dots2_18903.FlipbookStartRandom = false
dots2_18903.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 dots2black_18904=i("ParticleEmitter", CUBE_18549)
dots2black_18904.Name="dots2black"
dots2black_18904:SetAttribute("EmitDelay", 0)
dots2black_18904:SetAttribute("AuraInstance", true)
dots2black_18904:SetAttribute("EmitDuration", 0)
dots2black_18904:SetAttribute("EmitCount", 0)
dots2black_18904.Enabled = true
dots2black_18904.Rate = 34
dots2black_18904.Lifetime = nr(0.4000000059604645,0.5)
dots2black_18904.Speed = nr(0.0255551990121603,0.0255551990121603)
dots2black_18904.Rotation = nr(-1000,1000)
dots2black_18904.RotSpeed = nr(-20,20)
dots2black_18904.Size = ns({nsk(0.000000,3.960000,0.000000),nsk(1.000000,3.960000,0.000000)})
dots2black_18904.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.425000,0.012500),nsk(1.000000,1.000000,0.000000)})
dots2black_18904.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
dots2black_18904.LightEmission = -3.5
dots2black_18904.LightInfluence = 0
dots2black_18904.Acceleration = v3(0.000000,0.000000,0.000001)
dots2black_18904.Drag = 0
dots2black_18904.EmissionDirection = Enum.NormalId.Top
dots2black_18904.SpreadAngle = v2(-1000.000000,1000.000000)
dots2black_18904.ZOffset = 1.0219999551773071
dots2black_18904.Texture = "http://www.roblox.com/asset/?id=71378521378854"
dots2black_18904.LockedToPart = true
dots2black_18904.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots2black_18904.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
dots2black_18904.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots2black_18904.FlipbookFramerate = nr(1,1)
dots2black_18904.FlipbookStartRandom = false
dots2black_18904.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 pulse_18905=i("ParticleEmitter", CUBE_18549)
pulse_18905.Name="pulse"
pulse_18905:SetAttribute("EmitDuration", 0)
pulse_18905:SetAttribute("AuraInstance", true)
pulse_18905.Enabled = false
pulse_18905.Rate = 14
pulse_18905.Lifetime = nr(0.30000001192092896,0.30000001192092896)
pulse_18905.Speed = nr(0.0032947203144431114,0.006589440628886223)
pulse_18905.Rotation = nr(-1000,1000)
pulse_18905.RotSpeed = nr(0,0)
pulse_18905.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.974759,0.000000),nsk(0.200000,2.115955,0.000000),nsk(0.300000,3.558129,0.000000),nsk(0.400000,5.375034,0.000000),nsk(0.500000,7.616027,0.000000),nsk(0.600000,10.319406,0.000000),nsk(0.700000,13.518367,0.000000),nsk(0.800000,17.244059,0.000000),nsk(0.900000,21.527349,0.000000),nsk(1.000000,26.400002,0.000000),nsk(1.000000,26.400002,0.000000)})
pulse_18905.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.164905,0.668750,0.000000),nsk(0.500529,0.487500,0.000000),nsk(0.770085,0.668750,0.000000),nsk(1.000000,1.000000,0.000000)})
pulse_18905.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
pulse_18905.LightEmission = -20
pulse_18905.LightInfluence = 0
pulse_18905.Acceleration = v3(0.000000,0.000000,0.000001)
pulse_18905.Drag = 0
pulse_18905.EmissionDirection = Enum.NormalId.Top
pulse_18905.SpreadAngle = v2(0.000000,0.000000)
pulse_18905.ZOffset = 0
pulse_18905.Texture = "rbxassetid://11446801985"
pulse_18905.LockedToPart = true
pulse_18905.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
pulse_18905.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
pulse_18905.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
pulse_18905.FlipbookFramerate = nr(6,7.199999809265137)
pulse_18905.FlipbookStartRandom = false
pulse_18905.Squash = ns({nsk(0.000000,0.000000,0.200000),nsk(1.000000,0.000000,0.200000)})

 aaa_18906=i("ParticleEmitter", CUBE_18549)
aaa_18906.Name="aaa"
aaa_18906:SetAttribute("EmitDelay", 0)
aaa_18906:SetAttribute("AuraInstance", true)
aaa_18906:SetAttribute("EmitDuration", 0)
aaa_18906:SetAttribute("EmitCount", 0)
aaa_18906.Enabled = true
aaa_18906.Rate = 110
aaa_18906.Lifetime = nr(0.20000000298023224,0.25)
aaa_18906.Speed = nr(0.0255551990121603,0.0255551990121603)
aaa_18906.Rotation = nr(-1000,1000)
aaa_18906.RotSpeed = nr(-20,20)
aaa_18906.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.054442,0.000000),nsk(0.200000,0.261268,0.000000),nsk(0.300000,0.603377,0.000000),nsk(0.400000,1.055406,0.000000),nsk(0.500000,1.598210,0.000000),nsk(0.600000,2.217647,0.000000),nsk(0.700000,2.903033,0.000000),nsk(0.800000,3.646074,0.000000),nsk(0.900000,4.440178,0.000000),nsk(1.000000,5.280000,0.000000),nsk(1.000000,5.280000,0.000000)})
aaa_18906.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499160,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
aaa_18906.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
aaa_18906.LightEmission = 1
aaa_18906.LightInfluence = 0
aaa_18906.Acceleration = v3(0.000000,0.000000,0.000001)
aaa_18906.Drag = 0
aaa_18906.EmissionDirection = Enum.NormalId.Top
aaa_18906.SpreadAngle = v2(-1000.000000,1000.000000)
aaa_18906.ZOffset = 1.0149999856948853
aaa_18906.Texture = "http://www.roblox.com/asset/?id=109170795600115"
aaa_18906.LockedToPart = true
aaa_18906.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
aaa_18906.FlipbookLayout = Enum.ParticleFlipbookLayout.None
aaa_18906.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
aaa_18906.FlipbookFramerate = nr(1,1)
aaa_18906.FlipbookStartRandom = false
aaa_18906.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 EMIT_18907=i("Attachment", CUBE_18549)
EMIT_18907.Name="EMIT"
EMIT_18907:SetAttribute("AuraInstance", true)
EMIT_18907.Position = v3(0.000000,0.000000,0.000000)
EMIT_18907.Visible = false

 MagicHit_18908=i("Sound", EMIT_18907)
MagicHit_18908.Name="Magic Hit"
MagicHit_18908:SetAttribute("Original", 0.10000000149011612)
MagicHit_18908:SetAttribute("AuraInstance", true)
MagicHit_18908.SoundId = "rbxassetid://6875009415"
MagicHit_18908.Volume = 0.10000000149011612
MagicHit_18908.PlaybackSpeed = 1
MagicHit_18908.Looped = false
MagicHit_18908.TimePosition = 0
MagicHit_18908.RollOffMode = Enum.RollOffMode.Inverse
MagicHit_18908.RollOffMaxDistance = 120
MagicHit_18908.RollOffMinDistance = 12
MagicHit_18908.EmitterSize = 12
MagicHit_18908.Playing = false

 LightLaser_18909=i("Sound", EMIT_18907)
LightLaser_18909.Name="Light Laser"
LightLaser_18909:SetAttribute("Original", 0.30000001192092896)
LightLaser_18909:SetAttribute("AuraInstance", true)
LightLaser_18909.SoundId = "rbxassetid://156572165"
LightLaser_18909.Volume = 0.30000001192092896
LightLaser_18909.PlaybackSpeed = 1
LightLaser_18909.Looped = false
LightLaser_18909.TimePosition = 0
LightLaser_18909.RollOffMode = Enum.RollOffMode.Inverse
LightLaser_18909.RollOffMaxDistance = 120
LightLaser_18909.RollOffMinDistance = 12
LightLaser_18909.EmitterSize = 12
LightLaser_18909.Playing = false

 IceSpawnSFX_18910=i("Sound", EMIT_18907)
IceSpawnSFX_18910.Name="Ice Spawn SFX"
IceSpawnSFX_18910:SetAttribute("Original", 0.30000001192092896)
IceSpawnSFX_18910:SetAttribute("AuraInstance", true)
IceSpawnSFX_18910.SoundId = "rbxassetid://632831227"
IceSpawnSFX_18910.Volume = 0.30000001192092896
IceSpawnSFX_18910.PlaybackSpeed = 1
IceSpawnSFX_18910.Looped = false
IceSpawnSFX_18910.TimePosition = 0.2
IceSpawnSFX_18910.RollOffMode = Enum.RollOffMode.Inverse
IceSpawnSFX_18910.RollOffMaxDistance = 120
IceSpawnSFX_18910.RollOffMinDistance = 12
IceSpawnSFX_18910.EmitterSize = 12
IceSpawnSFX_18910.Playing = false

 MagicHit_18911=i("Sound", EMIT_18907)
MagicHit_18911.Name="Magic Hit"
MagicHit_18911:SetAttribute("Original", 0.10000000149011612)
MagicHit_18911:SetAttribute("AuraInstance", true)
MagicHit_18911.SoundId = "rbxassetid://6875009415"
MagicHit_18911.Volume = 0.10000000149011612
MagicHit_18911.PlaybackSpeed = 1
MagicHit_18911.Looped = false
MagicHit_18911.TimePosition = 0
MagicHit_18911.RollOffMode = Enum.RollOffMode.Inverse
MagicHit_18911.RollOffMaxDistance = 120
MagicHit_18911.RollOffMinDistance = 12
MagicHit_18911.EmitterSize = 12
MagicHit_18911.Playing = false

 LightLaser_18912=i("Sound", EMIT_18907)
LightLaser_18912.Name="Light Laser"
LightLaser_18912:SetAttribute("Original", 0.30000001192092896)
LightLaser_18912:SetAttribute("AuraInstance", true)
LightLaser_18912.SoundId = "rbxassetid://156572165"
LightLaser_18912.Volume = 0.30000001192092896
LightLaser_18912.PlaybackSpeed = 1
LightLaser_18912.Looped = false
LightLaser_18912.TimePosition = 0
LightLaser_18912.RollOffMode = Enum.RollOffMode.Inverse
LightLaser_18912.RollOffMaxDistance = 120
LightLaser_18912.RollOffMinDistance = 12
LightLaser_18912.EmitterSize = 12
LightLaser_18912.Playing = false

 IceSpawnSFX_18913=i("Sound", EMIT_18907)
IceSpawnSFX_18913.Name="Ice Spawn SFX"
IceSpawnSFX_18913:SetAttribute("Original", 0.30000001192092896)
IceSpawnSFX_18913:SetAttribute("AuraInstance", true)
IceSpawnSFX_18913.SoundId = "rbxassetid://632831227"
IceSpawnSFX_18913.Volume = 0.30000001192092896
IceSpawnSFX_18913.PlaybackSpeed = 1
IceSpawnSFX_18913.Looped = false
IceSpawnSFX_18913.TimePosition = 0
IceSpawnSFX_18913.RollOffMode = Enum.RollOffMode.Inverse
IceSpawnSFX_18913.RollOffMaxDistance = 120
IceSpawnSFX_18913.RollOffMinDistance = 12
IceSpawnSFX_18913.EmitterSize = 12
IceSpawnSFX_18913.Playing = false

 starstart_18914=i("ParticleEmitter", EMIT_18907)
starstart_18914.Name="starstart"
starstart_18914:SetAttribute("EmitDuration", 0)
starstart_18914:SetAttribute("AuraInstance", true)
starstart_18914:SetAttribute("EmitCount", 5)
starstart_18914.Enabled = false
starstart_18914.Rate = 0
starstart_18914.Lifetime = nr(0.20000000298023224,0.25)
starstart_18914.Speed = nr(0.005261536687612534,0.005261536687612534)
starstart_18914.Rotation = nr(-360,360)
starstart_18914.RotSpeed = nr(225,225)
starstart_18914.Size = ns({nsk(0.000000,47.440811,0.000000),nsk(0.079954,24.447834,0.000000),nsk(0.147954,12.587629,0.000000),nsk(0.263644,4.527816,0.000000),nsk(0.379644,1.563175,0.000000),nsk(0.515644,0.889393,0.000000),nsk(1.000000,0.000000,0.000000)})
starstart_18914.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499471,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
starstart_18914.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
starstart_18914.LightEmission = 1
starstart_18914.LightInfluence = 0
starstart_18914.Acceleration = v3(0.000000,0.000000,0.000001)
starstart_18914.Drag = 0
starstart_18914.EmissionDirection = Enum.NormalId.Top
starstart_18914.SpreadAngle = v2(360.000000,-360.000000)
starstart_18914.ZOffset = 4.292300224304199
starstart_18914.Texture = "rbxassetid://14973884209"
starstart_18914.LockedToPart = true
starstart_18914.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
starstart_18914.FlipbookLayout = Enum.ParticleFlipbookLayout.None
starstart_18914.FlipbookMode = Enum.ParticleFlipbookMode.Loop
starstart_18914.FlipbookFramerate = nr(0.75,0.75)
starstart_18914.FlipbookStartRandom = false
starstart_18914.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.155452,-1.650000,0.000000),nsk(0.854988,1.612500,0.000000),nsk(1.000000,0.000000,0.000000)})

 starstart_18915=i("ParticleEmitter", EMIT_18907)
starstart_18915.Name="starstart"
starstart_18915:SetAttribute("EmitDuration", 0)
starstart_18915:SetAttribute("AuraInstance", true)
starstart_18915:SetAttribute("EmitCount", 2)
starstart_18915.Enabled = false
starstart_18915.Rate = 0
starstart_18915.Lifetime = nr(0.20000000298023224,0.25)
starstart_18915.Speed = nr(0.005261536687612534,0.005261536687612534)
starstart_18915.Rotation = nr(-360,360)
starstart_18915.RotSpeed = nr(225,225)
starstart_18915.Size = ns({nsk(0.000000,47.440811,0.000000),nsk(0.079954,24.447834,0.000000),nsk(0.147954,12.587629,0.000000),nsk(0.263644,4.527816,0.000000),nsk(0.379644,1.563175,0.000000),nsk(0.515644,0.889393,0.000000),nsk(1.000000,0.000000,0.000000)})
starstart_18915.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
starstart_18915.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
starstart_18915.LightEmission = -5
starstart_18915.LightInfluence = 0
starstart_18915.Acceleration = v3(0.000000,0.000000,0.000001)
starstart_18915.Drag = 0
starstart_18915.EmissionDirection = Enum.NormalId.Top
starstart_18915.SpreadAngle = v2(360.000000,-360.000000)
starstart_18915.ZOffset = 4.290999889373779
starstart_18915.Texture = "rbxassetid://17391818367"
starstart_18915.LockedToPart = true
starstart_18915.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
starstart_18915.FlipbookLayout = Enum.ParticleFlipbookLayout.None
starstart_18915.FlipbookMode = Enum.ParticleFlipbookMode.Loop
starstart_18915.FlipbookFramerate = nr(0.75,0.75)
starstart_18915.FlipbookStartRandom = false
starstart_18915.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.155452,-1.650000,0.000000),nsk(0.854988,1.612500,0.000000),nsk(1.000000,0.000000,0.000000)})

 debri1_18916=i("ParticleEmitter", EMIT_18907)
debri1_18916.Name="debri1"
debri1_18916:SetAttribute("EmitDuration", 0)
debri1_18916:SetAttribute("AuraInstance", true)
debri1_18916:SetAttribute("EmitCount", 20)
debri1_18916.Enabled = false
debri1_18916.Rate = 0
debri1_18916.Lifetime = nr(0.75,1)
debri1_18916.Speed = nr(300,420.0000305175781)
debri1_18916.Rotation = nr(-1000,1000)
debri1_18916.RotSpeed = nr(1200,1400)
debri1_18916.Size = ns({nsk(0.000000,0.960000,0.480000),nsk(1.000000,0.000000,0.000000)})
debri1_18916.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debri1_18916.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
debri1_18916.LightEmission = 1
debri1_18916.LightInfluence = 0
debri1_18916.Acceleration = v3(0.000000,-360.000000,0.000000)
debri1_18916.Drag = 30
debri1_18916.EmissionDirection = Enum.NormalId.Top
debri1_18916.SpreadAngle = v2(-1000.000000,1000.000000)
debri1_18916.ZOffset = 0
debri1_18916.Texture = "http://www.roblox.com/asset/?id=110594086595456"
debri1_18916.LockedToPart = false
debri1_18916.Orientation = Enum.ParticleOrientation.FacingCamera
debri1_18916.FlipbookLayout = Enum.ParticleFlipbookLayout.None
debri1_18916.FlipbookMode = Enum.ParticleFlipbookMode.Loop
debri1_18916.FlipbookFramerate = nr(1,1)
debri1_18916.FlipbookStartRandom = false
debri1_18916.Squash = ns({nsk(0.000000,-0.900000,0.262500),nsk(0.083510,-0.337500,0.075000),nsk(0.199789,-0.075000,0.000000),nsk(1.000000,0.000000,0.225000)})

 debri2_18917=i("ParticleEmitter", EMIT_18907)
debri2_18917.Name="debri2"
debri2_18917:SetAttribute("EmitDuration", 0)
debri2_18917:SetAttribute("AuraInstance", true)
debri2_18917:SetAttribute("EmitCount", 25)
debri2_18917.Enabled = false
debri2_18917.Rate = 0
debri2_18917.Lifetime = nr(0.75,1)
debri2_18917.Speed = nr(300,420.0000305175781)
debri2_18917.Rotation = nr(-1000,1000)
debri2_18917.RotSpeed = nr(1200,1400)
debri2_18917.Size = ns({nsk(0.000000,0.960000,0.480000),nsk(1.000000,0.000000,0.000000)})
debri2_18917.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debri2_18917.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
debri2_18917.LightEmission = 0
debri2_18917.LightInfluence = 0
debri2_18917.Acceleration = v3(0.000000,-360.000000,0.000000)
debri2_18917.Drag = 30
debri2_18917.EmissionDirection = Enum.NormalId.Top
debri2_18917.SpreadAngle = v2(-1000.000000,1000.000000)
debri2_18917.ZOffset = -0.0010000000474974513
debri2_18917.Texture = "http://www.roblox.com/asset/?id=110594086595456"
debri2_18917.LockedToPart = false
debri2_18917.Orientation = Enum.ParticleOrientation.FacingCamera
debri2_18917.FlipbookLayout = Enum.ParticleFlipbookLayout.None
debri2_18917.FlipbookMode = Enum.ParticleFlipbookMode.Loop
debri2_18917.FlipbookFramerate = nr(1,1)
debri2_18917.FlipbookStartRandom = false
debri2_18917.Squash = ns({nsk(0.000000,-0.900000,0.262500),nsk(0.083510,-0.337500,0.075000),nsk(0.199789,-0.075000,0.000000),nsk(1.000000,0.000000,0.225000)})

 glow_18918=i("ParticleEmitter", EMIT_18907)
glow_18918.Name="glow"
glow_18918:SetAttribute("EmitDelay", 0)
glow_18918:SetAttribute("AuraInstance", true)
glow_18918:SetAttribute("EmitDuration", 0)
glow_18918:SetAttribute("EmitCount", 1)
glow_18918.Enabled = false
glow_18918.Rate = 0
glow_18918.Lifetime = nr(0.15000000596046448,0.15000000596046448)
glow_18918.Speed = nr(0.005261536687612534,0.005261536687612534)
glow_18918.Rotation = nr(-360,360)
glow_18918.RotSpeed = nr(-15,15)
glow_18918.Size = ns({nsk(0.000000,30.000002,0.000000),nsk(1.000000,30.000002,0.000000)})
glow_18918.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
glow_18918.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
glow_18918.LightEmission = 1
glow_18918.LightInfluence = 0
glow_18918.Acceleration = v3(0.000000,0.000000,0.000001)
glow_18918.Drag = 0
glow_18918.EmissionDirection = Enum.NormalId.Top
glow_18918.SpreadAngle = v2(360.000000,-360.000000)
glow_18918.ZOffset = 4
glow_18918.Texture = "rbxassetid://6673021984"
glow_18918.LockedToPart = true
glow_18918.Orientation = Enum.ParticleOrientation.FacingCamera
glow_18918.FlipbookLayout = Enum.ParticleFlipbookLayout.None
glow_18918.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glow_18918.FlipbookFramerate = nr(0.75,0.75)
glow_18918.FlipbookStartRandom = false
glow_18918.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 debri3_18919=i("ParticleEmitter", EMIT_18907)
debri3_18919.Name="debri3"
debri3_18919:SetAttribute("EmitDuration", 0)
debri3_18919:SetAttribute("AuraInstance", true)
debri3_18919:SetAttribute("EmitCount", 25)
debri3_18919.Enabled = false
debri3_18919.Rate = 0
debri3_18919.Lifetime = nr(0.75,1)
debri3_18919.Speed = nr(300,420.0000305175781)
debri3_18919.Rotation = nr(-1000,1000)
debri3_18919.RotSpeed = nr(-800,800)
debri3_18919.Size = ns({nsk(0.000000,0.600000,0.360000),nsk(1.000000,0.000000,0.000000)})
debri3_18919.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debri3_18919.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
debri3_18919.LightEmission = 1
debri3_18919.LightInfluence = 0
debri3_18919.Acceleration = v3(0.000000,-360.000000,0.000000)
debri3_18919.Drag = 30
debri3_18919.EmissionDirection = Enum.NormalId.Top
debri3_18919.SpreadAngle = v2(-1000.000000,1000.000000)
debri3_18919.ZOffset = 0.0010000000474974513
debri3_18919.Texture = "rbxassetid://13973317169"
debri3_18919.LockedToPart = false
debri3_18919.Orientation = Enum.ParticleOrientation.FacingCamera
debri3_18919.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
debri3_18919.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
debri3_18919.FlipbookFramerate = nr(1,1)
debri3_18919.FlipbookStartRandom = false
debri3_18919.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.225000)})

 squares_18920=i("ParticleEmitter", EMIT_18907)
squares_18920.Name="squares"
squares_18920:SetAttribute("EmitDuration", 0)
squares_18920:SetAttribute("AuraInstance", true)
squares_18920:SetAttribute("EmitCount", 1.5)
squares_18920.Enabled = false
squares_18920.Rate = 0
squares_18920.Lifetime = nr(1.5,3.5)
squares_18920.Speed = nr(0.002400000113993883,0.002400000113993883)
squares_18920.Rotation = nr(-1000,1000)
squares_18920.RotSpeed = nr(-80,80)
squares_18920.Size = ns({nsk(0.000000,0.000000,3.600000),nsk(0.100000,4.839057,3.600000),nsk(0.200000,7.272641,3.600000),nsk(0.300000,8.443536,3.600000),nsk(0.400000,9.030802,3.600000),nsk(0.500000,9.332537,3.600000),nsk(0.600000,9.485639,3.600000),nsk(0.700000,9.558841,3.600000),nsk(0.800000,9.589421,3.600000),nsk(0.900000,9.598838,3.600000),nsk(1.000000,9.600000,3.600000),nsk(1.000000,9.600000,3.600000)})
squares_18920.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.392178,0.000000,0.000000),nsk(0.409619,1.000000,0.000000),nsk(0.424947,0.000000,0.000000),nsk(0.443446,0.993750,0.000000),nsk(0.461416,0.981250,0.000000),nsk(0.475687,0.000000,0.000000),nsk(0.547569,0.000000,0.000000),nsk(0.559197,1.000000,0.000000),nsk(0.591438,1.000000,0.000000),nsk(0.605708,0.000000,0.000000),nsk(0.691332,0.000000,0.000000),nsk(0.705074,1.000000,0.000000),nsk(0.739958,1.000000,0.000000),nsk(0.752114,0.000000,0.000000),nsk(0.841966,0.000000,0.000000),nsk(0.853066,1.000000,0.000000),nsk(0.876850,1.000000,0.000000),nsk(0.891120,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
squares_18920.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
squares_18920.LightEmission = 1
squares_18920.LightInfluence = 0
squares_18920.Acceleration = v3(0.000000,0.000000,0.000000)
squares_18920.Drag = 0
squares_18920.EmissionDirection = Enum.NormalId.Top
squares_18920.SpreadAngle = v2(-1000.000000,1000.000000)
squares_18920.ZOffset = 0.004999999888241291
squares_18920.Texture = "http://www.roblox.com/asset/?id=85089367047743"
squares_18920.LockedToPart = false
squares_18920.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
squares_18920.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
squares_18920.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
squares_18920.FlipbookFramerate = nr(1,1)
squares_18920.FlipbookStartRandom = false
squares_18920.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.225000)})
--[[
 spaceship2attack_18921=i("Attachment", EMIT_18907)
spaceship2attack_18921.Name="spaceship2attack"
spaceship2attack_18921:SetAttribute("AuraInstance", true)
spaceship2attack_18921.Position = v3(0.000000,0.000000,0.000000)
spaceship2attack_18921.Visible = false

 laser2_18922=i("Beam", spaceship2attack_18921)
laser2_18922.Name="laser2"
laser2_18922:SetAttribute("EmitDuration", 0)
laser2_18922:SetAttribute("AuraInstance", true)
laser2_18922.Enabled = false
laser2_18922.Width0 = 10.800000190734863
laser2_18922.Width1 = 10.800000190734863
laser2_18922.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
laser2_18922.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
laser2_18922.CurveSize0 = 0
laser2_18922.CurveSize1 = 0
laser2_18922.FaceCamera = true
laser2_18922.LightEmission = 1
laser2_18922.LightInfluence = 0
laser2_18922.Segments = 10
laser2_18922.Texture = "http://www.roblox.com/asset/?id=84973271776495"
laser2_18922.TextureLength = 1
laser2_18922.TextureSpeed = 1.2590728998184204

 laserdebris_18923=i("Beam", spaceship2attack_18921)
laserdebris_18923.Name="laserdebris"
laserdebris_18923:SetAttribute("EmitDuration", 0)
laserdebris_18923:SetAttribute("AuraInstance", true)
laserdebris_18923.Enabled = false
laserdebris_18923.Width0 = 10.800000190734863
laserdebris_18923.Width1 = 10.800000190734863
laserdebris_18923.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
laserdebris_18923.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
laserdebris_18923.CurveSize0 = 0
laserdebris_18923.CurveSize1 = 0
laserdebris_18923.FaceCamera = true
laserdebris_18923.LightEmission = 1
laserdebris_18923.LightInfluence = 0
laserdebris_18923.Segments = 10
laserdebris_18923.Texture = "http://www.roblox.com/asset/?id=140310183135697"
laserdebris_18923.TextureLength = 0.20000000298023224
laserdebris_18923.TextureSpeed = 0.6295364499092102

 lasermain_18924=i("Beam", spaceship2attack_18921)
lasermain_18924.Name="lasermain"
lasermain_18924:SetAttribute("EmitDuration", 0)
lasermain_18924:SetAttribute("AuraInstance", true)
lasermain_18924.Enabled = false
lasermain_18924.Width0 = 2.4000000953674316
lasermain_18924.Width1 = 2.4000000953674316
lasermain_18924.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
lasermain_18924.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lasermain_18924.CurveSize0 = 0
lasermain_18924.CurveSize1 = 0
lasermain_18924.FaceCamera = true
lasermain_18924.LightEmission = 1
lasermain_18924.LightInfluence = 0
lasermain_18924.Segments = 10
lasermain_18924.Texture = "rbxassetid://14166981368"
lasermain_18924.TextureLength = 1
lasermain_18924.TextureSpeed = 0.6295364499092102
]]
--[[
 spaceship1attack_18925=i("Attachment", EMIT_18907)
spaceship1attack_18925.Name="spaceship1attack"
spaceship1attack_18925:SetAttribute("AuraInstance", true)
spaceship1attack_18925.Position = v3(0.000000,0.000000,0.000000)
spaceship1attack_18925.Visible = false

 laser2_18926=i("Beam", spaceship1attack_18925)
laser2_18926.Name="laser2"
laser2_18926:SetAttribute("EmitDuration", 0)
laser2_18926:SetAttribute("AuraInstance", true)
laser2_18926.Enabled = false
laser2_18926.Width0 = 10.800000190734863
laser2_18926.Width1 = 10.800000190734863
laser2_18926.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
laser2_18926.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
laser2_18926.CurveSize0 = 0
laser2_18926.CurveSize1 = 0
laser2_18926.FaceCamera = true
laser2_18926.LightEmission = 1
laser2_18926.LightInfluence = 0
laser2_18926.Segments = 10
laser2_18926.Texture = "http://www.roblox.com/asset/?id=84973271776495"
laser2_18926.TextureLength = 1
laser2_18926.TextureSpeed = 1.2590728998184204

 laserdebris_18927=i("Beam", spaceship1attack_18925)
laserdebris_18927.Name="laserdebris"
laserdebris_18927:SetAttribute("EmitDuration", 0)
laserdebris_18927:SetAttribute("AuraInstance", true)
laserdebris_18927.Enabled = false
laserdebris_18927.Width0 = 10.800000190734863
laserdebris_18927.Width1 = 10.800000190734863
laserdebris_18927.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
laserdebris_18927.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
laserdebris_18927.CurveSize0 = 0
laserdebris_18927.CurveSize1 = 0
laserdebris_18927.FaceCamera = true
laserdebris_18927.LightEmission = 1
laserdebris_18927.LightInfluence = 0
laserdebris_18927.Segments = 10
laserdebris_18927.Texture = "http://www.roblox.com/asset/?id=140310183135697"
laserdebris_18927.TextureLength = 0.20000000298023224
laserdebris_18927.TextureSpeed = 0.6295364499092102

 lasermain_18928=i("Beam", spaceship1attack_18925)
lasermain_18928.Name="lasermain"
lasermain_18928:SetAttribute("EmitDuration", 0)
lasermain_18928:SetAttribute("AuraInstance", true)
lasermain_18928.Enabled = false
lasermain_18928.Width0 = 2.4000000953674316
lasermain_18928.Width1 = 2.4000000953674316
lasermain_18928.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
lasermain_18928.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
lasermain_18928.CurveSize0 = 0
lasermain_18928.CurveSize1 = 0
lasermain_18928.FaceCamera = true
lasermain_18928.LightEmission = 1
lasermain_18928.LightInfluence = 0
lasermain_18928.Segments = 10
lasermain_18928.Texture = "rbxassetid://14166981368"
lasermain_18928.TextureLength = 1
lasermain_18928.TextureSpeed = 0.6295364499092102
]]
 IceSpawnSFX_18929=i("Sound", EMIT_18907)
IceSpawnSFX_18929.Name="Ice Spawn SFX"
IceSpawnSFX_18929:SetAttribute("Original", 0.30000001192092896)
IceSpawnSFX_18929:SetAttribute("AuraInstance", true)
IceSpawnSFX_18929.SoundId = "rbxassetid://632831227"
IceSpawnSFX_18929.Volume = 0.30000001192092896
IceSpawnSFX_18929.PlaybackSpeed = 1
IceSpawnSFX_18929.Looped = false
IceSpawnSFX_18929.TimePosition = 1.266
IceSpawnSFX_18929.RollOffMode = Enum.RollOffMode.Inverse
IceSpawnSFX_18929.RollOffMaxDistance = 120
IceSpawnSFX_18929.RollOffMinDistance = 12
IceSpawnSFX_18929.EmitterSize = 12
IceSpawnSFX_18929.Playing = true

 IceSpawnSFX_18930=i("Sound", EMIT_18907)
IceSpawnSFX_18930.Name="Ice Spawn SFX"
IceSpawnSFX_18930:SetAttribute("Original", 0.30000001192092896)
IceSpawnSFX_18930:SetAttribute("AuraInstance", true)
IceSpawnSFX_18930.SoundId = "rbxassetid://632831227"
IceSpawnSFX_18930.Volume = 0.30000001192092896
IceSpawnSFX_18930.PlaybackSpeed = 1
IceSpawnSFX_18930.Looped = false
IceSpawnSFX_18930.TimePosition = 1.205
IceSpawnSFX_18930.RollOffMode = Enum.RollOffMode.Inverse
IceSpawnSFX_18930.RollOffMaxDistance = 120
IceSpawnSFX_18930.RollOffMinDistance = 12
IceSpawnSFX_18930.EmitterSize = 12
IceSpawnSFX_18930.Playing = true

 MagicHit_18931=i("Sound", EMIT_18907)
MagicHit_18931.Name="Magic Hit"
MagicHit_18931:SetAttribute("Original", 0.10000000149011612)
MagicHit_18931:SetAttribute("AuraInstance", true)
MagicHit_18931.SoundId = "rbxassetid://6875009415"
MagicHit_18931.Volume = 0.10000000149011612
MagicHit_18931.PlaybackSpeed = 1
MagicHit_18931.Looped = false
MagicHit_18931.TimePosition = 1.227
MagicHit_18931.RollOffMode = Enum.RollOffMode.Inverse
MagicHit_18931.RollOffMaxDistance = 120
MagicHit_18931.RollOffMinDistance = 12
MagicHit_18931.EmitterSize = 12
MagicHit_18931.Playing = true

 IceSpawnSFX_18932=i("Sound", EMIT_18907)
IceSpawnSFX_18932.Name="Ice Spawn SFX"
IceSpawnSFX_18932:SetAttribute("Original", 0.30000001192092896)
IceSpawnSFX_18932:SetAttribute("AuraInstance", true)
IceSpawnSFX_18932.SoundId = "rbxassetid://632831227"
IceSpawnSFX_18932.Volume = 0.30000001192092896
IceSpawnSFX_18932.PlaybackSpeed = 1
IceSpawnSFX_18932.Looped = false
IceSpawnSFX_18932.TimePosition = 1.216
IceSpawnSFX_18932.RollOffMode = Enum.RollOffMode.Inverse
IceSpawnSFX_18932.RollOffMaxDistance = 120
IceSpawnSFX_18932.RollOffMinDistance = 12
IceSpawnSFX_18932.EmitterSize = 12
IceSpawnSFX_18932.Playing = true

 IceSpawnSFX_18933=i("Sound", EMIT_18907)
IceSpawnSFX_18933.Name="Ice Spawn SFX"
IceSpawnSFX_18933:SetAttribute("Original", 0.30000001192092896)
IceSpawnSFX_18933:SetAttribute("AuraInstance", true)
IceSpawnSFX_18933.SoundId = "rbxassetid://632831227"
IceSpawnSFX_18933.Volume = 0.30000001192092896
IceSpawnSFX_18933.PlaybackSpeed = 1
IceSpawnSFX_18933.Looped = false
IceSpawnSFX_18933.TimePosition = 1.416
IceSpawnSFX_18933.RollOffMode = Enum.RollOffMode.Inverse
IceSpawnSFX_18933.RollOffMaxDistance = 120
IceSpawnSFX_18933.RollOffMinDistance = 12
IceSpawnSFX_18933.EmitterSize = 12
IceSpawnSFX_18933.Playing = true

 MagicHit_18934=i("Sound", EMIT_18907)
MagicHit_18934.Name="Magic Hit"
MagicHit_18934:SetAttribute("Original", 0.10000000149011612)
MagicHit_18934:SetAttribute("AuraInstance", true)
MagicHit_18934.SoundId = "rbxassetid://6875009415"
MagicHit_18934.Volume = 0.10000000149011612
MagicHit_18934.PlaybackSpeed = 1
MagicHit_18934.Looped = false
MagicHit_18934.TimePosition = 1.216
MagicHit_18934.RollOffMode = Enum.RollOffMode.Inverse
MagicHit_18934.RollOffMaxDistance = 120
MagicHit_18934.RollOffMinDistance = 12
MagicHit_18934.EmitterSize = 12
MagicHit_18934.Playing = true

local toprightup_20160=i("Attachment", beamedge_18706)
toprightup_20160.Name="toprightup"
toprightup_20160:SetAttribute("AuraInstance", true)
toprightup_20160.Position = v3(-5.777051,5.777035,5.777051)
toprightup_20160.Visible = false

local blacksmoke_20161=i("ParticleEmitter", toprightup_20160)
blacksmoke_20161.Name="blacksmoke"
blacksmoke_20161:SetAttribute("EmitDelay", 0)
blacksmoke_20161:SetAttribute("EmitCount", 1)
blacksmoke_20161:SetAttribute("AuraInstance", true)
blacksmoke_20161:SetAttribute("EmitDuration", 0)
blacksmoke_20161.Enabled = true
blacksmoke_20161.Rate = 14.399999618530273
blacksmoke_20161.Lifetime = nr(0.25,0.25)
blacksmoke_20161.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_20161.Rotation = nr(-1000,1000)
blacksmoke_20161.RotSpeed = nr(0,0)
blacksmoke_20161.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_20161.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_20161.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
blacksmoke_20161.LightEmission = -0.5
blacksmoke_20161.LightInfluence = 0
blacksmoke_20161.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_20161.Drag = 0
blacksmoke_20161.EmissionDirection = Enum.NormalId.Top
blacksmoke_20161.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_20161.ZOffset = 1.0010000467300415
blacksmoke_20161.Texture = "rbxassetid://16310636399"
blacksmoke_20161.LockedToPart = true
blacksmoke_20161.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_20161.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_20161.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_20161.FlipbookFramerate = nr(36,36)
blacksmoke_20161.FlipbookStartRandom = false
blacksmoke_20161.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local blacksmoke2_20162=i("ParticleEmitter", toprightup_20160)
blacksmoke2_20162.Name="blacksmoke2"
blacksmoke2_20162:SetAttribute("EmitDelay", 0)
blacksmoke2_20162:SetAttribute("EmitCount", 1)
blacksmoke2_20162:SetAttribute("AuraInstance", true)
blacksmoke2_20162:SetAttribute("EmitDuration", 0)
blacksmoke2_20162.Enabled = false
blacksmoke2_20162.Rate = 14.399999618530273
blacksmoke2_20162.Lifetime = nr(0.25,0.25)
blacksmoke2_20162.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_20162.Rotation = nr(-360,360)
blacksmoke2_20162.RotSpeed = nr(0,0)
blacksmoke2_20162.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_20162.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_20162.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
blacksmoke2_20162.LightEmission = -1
blacksmoke2_20162.LightInfluence = 0
blacksmoke2_20162.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_20162.Drag = 0
blacksmoke2_20162.EmissionDirection = Enum.NormalId.Top
blacksmoke2_20162.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_20162.ZOffset = 1.0019999742507935
blacksmoke2_20162.Texture = "rbxassetid://13916934000"
blacksmoke2_20162.LockedToPart = true
blacksmoke2_20162.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_20162.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_20162.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_20162.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_20162.FlipbookStartRandom = false
blacksmoke2_20162.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_20163=i("ParticleEmitter", toprightup_20160)
dots_20163.Name="dots"
dots_20163:SetAttribute("EmitDuration", 0)
dots_20163:SetAttribute("EmitCount", 1)
dots_20163:SetAttribute("AuraInstance", true)
dots_20163.Enabled = true
dots_20163.Rate = 60
dots_20163.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_20163.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_20163.Rotation = nr(-1000,1000)
dots_20163.RotSpeed = nr(0,0)
dots_20163.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_20163.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_20163.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
dots_20163.LightEmission = 1
dots_20163.LightInfluence = 0
dots_20163.Acceleration = v3(0.000000,0.000000,0.000001)
dots_20163.Drag = 0
dots_20163.EmissionDirection = Enum.NormalId.Top
dots_20163.SpreadAngle = v2(-1000.000000,1000.000000)
dots_20163.ZOffset = 1.0080000162124634
dots_20163.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_20163.LockedToPart = true
dots_20163.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_20163.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_20163.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_20163.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_20163.FlipbookStartRandom = false
dots_20163.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local star_20164=i("ParticleEmitter", toprightup_20160)
star_20164.Name="star"
star_20164:SetAttribute("EmitDelay", 0)
star_20164:SetAttribute("EmitCount", 1)
star_20164:SetAttribute("AuraInstance", true)
star_20164:SetAttribute("EmitDuration", 0)
star_20164.Enabled = true
star_20164.Rate = 24
star_20164.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_20164.Speed = nr(0.003192003583535552,0.003192003583535552)
star_20164.Rotation = nr(0,0)
star_20164.RotSpeed = nr(0,0)
star_20164.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_20164.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_20164.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
star_20164.LightEmission = 0
star_20164.LightInfluence = 0
star_20164.Acceleration = v3(0.000000,0.000000,0.000001)
star_20164.Drag = 0
star_20164.EmissionDirection = Enum.NormalId.Top
star_20164.SpreadAngle = v2(360000.000000,360000.000000)
star_20164.ZOffset = 1.5049999952316284
star_20164.Texture = "rbxassetid://130506341047209"
star_20164.LockedToPart = true
star_20164.Orientation = Enum.ParticleOrientation.FacingCamera
star_20164.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_20164.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_20164.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_20164.FlipbookStartRandom = false
star_20164.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local beam_20165=i("Beam", toprightup_20160)
beam_20165.Name="beam"
beam_20165:SetAttribute("EmitDuration", 0)
beam_20165:SetAttribute("AuraInstance", true)
beam_20165.Enabled = true
beam_20165.Width0 = 0.20592001080513
beam_20165.Width1 = 0.20592001080513
beam_20165.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20165.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20165.CurveSize0 = 0
beam_20165.CurveSize1 = 0
beam_20165.FaceCamera = true
beam_20165.LightEmission = 1
beam_20165.LightInfluence = 0
beam_20165.Segments = 10
beam_20165.Texture = "rbxassetid://16310670422"
beam_20165.TextureLength = 0.5
beam_20165.TextureSpeed = 0.2559310793876648

local lines_20166=i("Beam", toprightup_20160)
lines_20166.Name="lines"
lines_20166:SetAttribute("EmitDuration", 0)
lines_20166:SetAttribute("AuraInstance", true)
lines_20166.Enabled = true
lines_20166.Width0 = 1.7846400737762451
lines_20166.Width1 = 1.7846400737762451
lines_20166.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_20166.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
lines_20166.CurveSize0 = 0
lines_20166.CurveSize1 = 0
lines_20166.FaceCamera = true
lines_20166.LightEmission = 1
lines_20166.LightInfluence = 0
lines_20166.Segments = 10
lines_20166.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_20166.TextureLength = 0.625
lines_20166.TextureSpeed = 0.0639827698469162

local beam2_20167=i("Beam", toprightup_20160)
beam2_20167.Name="beam2"
beam2_20167:SetAttribute("EmitDuration", 0)
beam2_20167:SetAttribute("AuraInstance", true)
beam2_20167.Enabled = true
beam2_20167.Width0 = 1.0982400178909302
beam2_20167.Width1 = 1.0982400178909302
beam2_20167.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_20167.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam2_20167.CurveSize0 = 0
beam2_20167.CurveSize1 = 0
beam2_20167.FaceCamera = true
beam2_20167.LightEmission = 0
beam2_20167.LightInfluence = 0
beam2_20167.Segments = 10
beam2_20167.Texture = "rbxassetid://18837319394"
beam2_20167.TextureLength = 2.25
beam2_20167.TextureSpeed = 0.2559310793876648

local smokeblack_20168=i("Beam", toprightup_20160)
smokeblack_20168.Name="smokeblack"
smokeblack_20168:SetAttribute("EmitDuration", 0)
smokeblack_20168:SetAttribute("AuraInstance", true)
smokeblack_20168.Enabled = true
smokeblack_20168.Width0 = 2.0592002868652344
smokeblack_20168.Width1 = 2.0592002868652344
smokeblack_20168.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_20168.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_20168.CurveSize0 = 0
smokeblack_20168.CurveSize1 = 0
smokeblack_20168.FaceCamera = true
smokeblack_20168.LightEmission = 0.4000000059604645
smokeblack_20168.LightInfluence = 0
smokeblack_20168.Segments = 10
smokeblack_20168.Texture = "rbxassetid://14191603094"
smokeblack_20168.TextureLength = 12
smokeblack_20168.TextureSpeed = 0.1279655396938324

local splatter_20169=i("ParticleEmitter", toprightup_20160)
splatter_20169.Name="splatter"
splatter_20169:SetAttribute("EmitDuration", 0)
splatter_20169:SetAttribute("EmitCount", 1)
splatter_20169:SetAttribute("AuraInstance", true)
splatter_20169.Enabled = true
splatter_20169.Rate = 70
splatter_20169.Lifetime = nr(0.25,0.3499999940395355)
splatter_20169.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_20169.Rotation = nr(-1000,1000)
splatter_20169.RotSpeed = nr(0,0)
splatter_20169.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_20169.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_20169.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
splatter_20169.LightEmission = -20
splatter_20169.LightInfluence = 0
splatter_20169.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_20169.Drag = 0
splatter_20169.EmissionDirection = Enum.NormalId.Top
splatter_20169.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_20169.ZOffset = 1.0069999694824219
splatter_20169.Texture = "rbxassetid://15004620425"
splatter_20169.LockedToPart = true
splatter_20169.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_20169.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_20169.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_20169.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_20169.FlipbookStartRandom = false
splatter_20169.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local edges_18756=i("Attachment", toprightup_18746)
edges_18756.Name="edges"
edges_18756:SetAttribute("AuraInstance", true)
edges_18756.Position = v3(-0.600000,0.600000,0.600000)
edges_18756.Visible = false

local beam_18757=i("Beam", edges_18756)
beam_18757.Name="beam"
beam_18757:SetAttribute("EmitDuration", 0)
beam_18757:SetAttribute("AuraInstance", true)
beam_18757.Enabled = true
beam_18757.Width0 = 0.48000001907348633
beam_18757.Width1 = 0
beam_18757.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18757.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18757.CurveSize0 = 0
beam_18757.CurveSize1 = 0
beam_18757.FaceCamera = true
beam_18757.LightEmission = 1
beam_18757.LightInfluence = 0
beam_18757.Segments = 10
beam_18757.Texture = "rbxassetid://14166981368"
beam_18757.TextureLength = 0.5
beam_18757.TextureSpeed = 1.5108873844146729

local beam_18758=i("Beam", edges_18756)
beam_18758.Name="beam"
beam_18758:SetAttribute("EmitDuration", 0)
beam_18758:SetAttribute("AuraInstance", true)
beam_18758.Enabled = true
beam_18758.Width0 = 0.48000001907348633
beam_18758.Width1 = 0
beam_18758.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18758.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18758.CurveSize0 = 0
beam_18758.CurveSize1 = 0
beam_18758.FaceCamera = true
beam_18758.LightEmission = 1
beam_18758.LightInfluence = 0
beam_18758.Segments = 10
beam_18758.Texture = "rbxassetid://14166981368"
beam_18758.TextureLength = 0.5
beam_18758.TextureSpeed = 1.5108873844146729

local beam_18759=i("Beam", edges_18756)
beam_18759.Name="beam"
beam_18759:SetAttribute("EmitDuration", 0)
beam_18759:SetAttribute("AuraInstance", true)
beam_18759.Enabled = true
beam_18759.Width0 = 0.48000001907348633
beam_18759.Width1 = 0
beam_18759.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_18759.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
beam_18759.CurveSize0 = 0
beam_18759.CurveSize1 = 0
beam_18759.FaceCamera = true
beam_18759.LightEmission = 1
beam_18759.LightInfluence = 0
beam_18759.Segments = 10
beam_18759.Texture = "rbxassetid://14166981368"
beam_18759.TextureLength = 0.5
beam_18759.TextureSpeed = 1.5108873844146729

local star_18760=i("ParticleEmitter", edges_18756)
star_18760.Name="star"
star_18760:SetAttribute("EmitDelay", 0)
star_18760:SetAttribute("AuraInstance", true)
star_18760:SetAttribute("EmitDuration", 0)
star_18760:SetAttribute("EmitCount", 1)
star_18760.Enabled = true
star_18760.Rate = 24
star_18760.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_18760.Speed = nr(0.003192003583535552,0.003192003583535552)
star_18760.Rotation = nr(0,0)
star_18760.RotSpeed = nr(0,0)
star_18760.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_18760.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_18760.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
star_18760.LightEmission = 0
star_18760.LightInfluence = 0
star_18760.Acceleration = v3(0.000000,0.000000,0.000001)
star_18760.Drag = 0
star_18760.EmissionDirection = Enum.NormalId.Top
star_18760.SpreadAngle = v2(360000.000000,360000.000000)
star_18760.ZOffset = 1.5049999952316284
star_18760.Texture = "rbxassetid://130506341047209"
star_18760.LockedToPart = true
star_18760.Orientation = Enum.ParticleOrientation.FacingCamera
star_18760.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_18760.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_18760.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_18760.FlipbookStartRandom = false
star_18760.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local trail_18761=i("Attachment", edges_18756)
trail_18761.Name="trail"
trail_18761:SetAttribute("AuraInstance", true)
trail_18761.Position = v3(0.000000,0.000007,0.000000)
trail_18761.Visible = false

local Attachment_18762=i("Attachment", trail_18761)
Attachment_18762.Name="Attachment"
Attachment_18762:SetAttribute("AuraInstance", true)
Attachment_18762.Position = v3(12.513612,0.000000,0.000000)
Attachment_18762.Visible = false

local Trail_18763=i("Trail", trail_18761)
Trail_18763.Name="Trail"
Trail_18763:SetAttribute("EmitDuration", 0)
Trail_18763:SetAttribute("AuraInstance", true)
Trail_18763.Enabled = true
Trail_18763.Lifetime = 0.15000000596046448
Trail_18763.FaceCamera = true
Trail_18763.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18763.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_18763.Color = cs({csk(0.000000,c3(1.000000,0.310000,0.786100)),csk(1.000000,c3(1.000000,0.310000,0.786100))})
Trail_18763.Texture = "rbxassetid://14050984567"
Trail_18763.TextureLength = 1.2000000476837158
Trail_18763.LightEmission = 1
Trail_18763.LightInfluence = 0

local Attachment_18764=i("Attachment", trail_18761)
Attachment_18764.Name="Attachment"
Attachment_18764:SetAttribute("AuraInstance", true)
Attachment_18764.Position = v3(-12.028968,0.000000,0.000000)
Attachment_18764.Visible = false

local edges_20170=i("Attachment", toprightup_20160)
edges_20170.Name="edges"
edges_20170:SetAttribute("AuraInstance", true)
edges_20170.Position = v3(-0.600000,0.600000,0.600000)
edges_20170.Visible = false

local beam_20171=i("Beam", edges_20170)
beam_20171.Name="beam"
beam_20171:SetAttribute("EmitDuration", 0)
beam_20171:SetAttribute("AuraInstance", true)
beam_20171.Enabled = true
beam_20171.Width0 = 0.48000001907348633
beam_20171.Width1 = 0
beam_20171.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20171.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20171.CurveSize0 = 0
beam_20171.CurveSize1 = 0
beam_20171.FaceCamera = true
beam_20171.LightEmission = 1
beam_20171.LightInfluence = 0
beam_20171.Segments = 10
beam_20171.Texture = "rbxassetid://14166981368"
beam_20171.TextureLength = 0.5
beam_20171.TextureSpeed = 0.2559310793876648

local beam_20172=i("Beam", edges_20170)
beam_20172.Name="beam"
beam_20172:SetAttribute("EmitDuration", 0)
beam_20172:SetAttribute("AuraInstance", true)
beam_20172.Enabled = true
beam_20172.Width0 = 0.48000001907348633
beam_20172.Width1 = 0
beam_20172.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20172.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20172.CurveSize0 = 0
beam_20172.CurveSize1 = 0
beam_20172.FaceCamera = true
beam_20172.LightEmission = 1
beam_20172.LightInfluence = 0
beam_20172.Segments = 10
beam_20172.Texture = "rbxassetid://14166981368"
beam_20172.TextureLength = 0.5
beam_20172.TextureSpeed = 0.2559310793876648

local beam_20173=i("Beam", edges_20170)
beam_20173.Name="beam"
beam_20173:SetAttribute("EmitDuration", 0)
beam_20173:SetAttribute("AuraInstance", true)
beam_20173.Enabled = true
beam_20173.Width0 = 0.48000001907348633
beam_20173.Width1 = 0
beam_20173.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20173.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20173.CurveSize0 = 0
beam_20173.CurveSize1 = 0
beam_20173.FaceCamera = true
beam_20173.LightEmission = 1
beam_20173.LightInfluence = 0
beam_20173.Segments = 10
beam_20173.Texture = "rbxassetid://14166981368"
beam_20173.TextureLength = 0.5
beam_20173.TextureSpeed = 0.2559310793876648

local star_20174=i("ParticleEmitter", edges_20170)
star_20174.Name="star"
star_20174:SetAttribute("EmitDelay", 0)
star_20174:SetAttribute("EmitCount", 1)
star_20174:SetAttribute("AuraInstance", true)
star_20174:SetAttribute("EmitDuration", 0)
star_20174.Enabled = true
star_20174.Rate = 24
star_20174.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_20174.Speed = nr(0.003192003583535552,0.003192003583535552)
star_20174.Rotation = nr(0,0)
star_20174.RotSpeed = nr(0,0)
star_20174.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_20174.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_20174.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
star_20174.LightEmission = 0
star_20174.LightInfluence = 0
star_20174.Acceleration = v3(0.000000,0.000000,0.000001)
star_20174.Drag = 0
star_20174.EmissionDirection = Enum.NormalId.Top
star_20174.SpreadAngle = v2(360000.000000,360000.000000)
star_20174.ZOffset = 1.5049999952316284
star_20174.Texture = "rbxassetid://130506341047209"
star_20174.LockedToPart = true
star_20174.Orientation = Enum.ParticleOrientation.FacingCamera
star_20174.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_20174.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_20174.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_20174.FlipbookStartRandom = false
star_20174.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local trail_20175=i("Attachment", edges_20170)
trail_20175.Name="trail"
trail_20175:SetAttribute("AuraInstance", true)
trail_20175.Position = v3(0.000000,0.000007,0.000000)
trail_20175.Visible = false

local Attachment_20176=i("Attachment", trail_20175)
Attachment_20176.Name="Attachment"
Attachment_20176:SetAttribute("AuraInstance", true)
Attachment_20176.Position = v3(12.513612,0.000000,0.000000)
Attachment_20176.Visible = false

local Trail_20177=i("Trail", trail_20175)
Trail_20177.Name="Trail"
Trail_20177:SetAttribute("EmitDuration", 0)
Trail_20177:SetAttribute("AuraInstance", true)
Trail_20177.Enabled = true
Trail_20177.Lifetime = 0.15000000596046448
Trail_20177.FaceCamera = true
Trail_20177.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_20177.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_20177.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
Trail_20177.Texture = "rbxassetid://14050984567"
Trail_20177.TextureLength = 1.2000000476837158
Trail_20177.LightEmission = 1
Trail_20177.LightInfluence = 0

local Attachment_20178=i("Attachment", trail_20175)
Attachment_20178.Name="Attachment"
Attachment_20178:SetAttribute("AuraInstance", true)
Attachment_20178.Position = v3(-12.028968,0.000000,0.000000)
Attachment_20178.Visible = false

local edges_20151=i("Attachment", toprightdown_20141)
edges_20151.Name="edges"
edges_20151:SetAttribute("AuraInstance", true)
edges_20151.Position = v3(-0.600000,0.600000,-0.600000)
edges_20151.Visible = false

local beam_20152=i("Beam", edges_20151)
beam_20152.Name="beam"
beam_20152:SetAttribute("EmitDuration", 0)
beam_20152:SetAttribute("AuraInstance", true)
beam_20152.Enabled = true
beam_20152.Width0 = 0.48000001907348633
beam_20152.Width1 = 0
beam_20152.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20152.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20152.CurveSize0 = 0
beam_20152.CurveSize1 = 0
beam_20152.FaceCamera = true
beam_20152.LightEmission = 1
beam_20152.LightInfluence = 0
beam_20152.Segments = 10
beam_20152.Texture = "rbxassetid://14166981368"
beam_20152.TextureLength = 0.5
beam_20152.TextureSpeed = 0.2559310793876648

local beam_20153=i("Beam", edges_20151)
beam_20153.Name="beam"
beam_20153:SetAttribute("EmitDuration", 0)
beam_20153:SetAttribute("AuraInstance", true)
beam_20153.Enabled = true
beam_20153.Width0 = 0.48000001907348633
beam_20153.Width1 = 0
beam_20153.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20153.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20153.CurveSize0 = 0
beam_20153.CurveSize1 = 0
beam_20153.FaceCamera = true
beam_20153.LightEmission = 1
beam_20153.LightInfluence = 0
beam_20153.Segments = 10
beam_20153.Texture = "rbxassetid://14166981368"
beam_20153.TextureLength = 0.5
beam_20153.TextureSpeed = 0.2559310793876648

local beam_20154=i("Beam", edges_20151)
beam_20154.Name="beam"
beam_20154:SetAttribute("EmitDuration", 0)
beam_20154:SetAttribute("AuraInstance", true)
beam_20154.Enabled = true
beam_20154.Width0 = 0.48000001907348633
beam_20154.Width1 = 0
beam_20154.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20154.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20154.CurveSize0 = 0
beam_20154.CurveSize1 = 0
beam_20154.FaceCamera = true
beam_20154.LightEmission = 1
beam_20154.LightInfluence = 0
beam_20154.Segments = 10
beam_20154.Texture = "rbxassetid://14166981368"
beam_20154.TextureLength = 0.5
beam_20154.TextureSpeed = 0.2559310793876648

local star_20155=i("ParticleEmitter", edges_20151)
star_20155.Name="star"
star_20155:SetAttribute("EmitDelay", 0)
star_20155:SetAttribute("EmitCount", 1)
star_20155:SetAttribute("AuraInstance", true)
star_20155:SetAttribute("EmitDuration", 0)
star_20155.Enabled = true
star_20155.Rate = 24
star_20155.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_20155.Speed = nr(0.003192003583535552,0.003192003583535552)
star_20155.Rotation = nr(0,0)
star_20155.RotSpeed = nr(0,0)
star_20155.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_20155.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_20155.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
star_20155.LightEmission = 0
star_20155.LightInfluence = 0
star_20155.Acceleration = v3(0.000000,0.000000,0.000001)
star_20155.Drag = 0
star_20155.EmissionDirection = Enum.NormalId.Top
star_20155.SpreadAngle = v2(360000.000000,360000.000000)
star_20155.ZOffset = 1.5049999952316284
star_20155.Texture = "rbxassetid://130506341047209"
star_20155.LockedToPart = true
star_20155.Orientation = Enum.ParticleOrientation.FacingCamera
star_20155.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_20155.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_20155.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_20155.FlipbookStartRandom = false
star_20155.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local trail_20156=i("Attachment", edges_20151)
trail_20156.Name="trail"
trail_20156:SetAttribute("AuraInstance", true)
trail_20156.Position = v3(0.000000,0.000007,0.000037)
trail_20156.Visible = false

local Attachment_20157=i("Attachment", trail_20156)
Attachment_20157.Name="Attachment"
Attachment_20157:SetAttribute("AuraInstance", true)
Attachment_20157.Position = v3(12.513612,0.000000,0.000000)
Attachment_20157.Visible = false

local Trail_20158=i("Trail", trail_20156)
Trail_20158.Name="Trail"
Trail_20158:SetAttribute("EmitDuration", 0)
Trail_20158:SetAttribute("AuraInstance", true)
Trail_20158.Enabled = true
Trail_20158.Lifetime = 0.15000000596046448
Trail_20158.FaceCamera = true
Trail_20158.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_20158.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_20158.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
Trail_20158.Texture = "rbxassetid://14050984567"
Trail_20158.TextureLength = 1.2000000476837158
Trail_20158.LightEmission = 1
Trail_20158.LightInfluence = 0

local Attachment_20159=i("Attachment", trail_20156)
Attachment_20159.Name="Attachment"
Attachment_20159:SetAttribute("AuraInstance", true)
Attachment_20159.Position = v3(-12.028968,0.000000,0.000000)
Attachment_20159.Visible = false

local bottomrightdown_20222=i("Attachment", beamedge_18706)
bottomrightdown_20222.Name="bottomrightdown"
bottomrightdown_20222:SetAttribute("AuraInstance", true)
bottomrightdown_20222.Position = v3(-5.777051,-5.777045,-5.777124)
bottomrightdown_20222.Visible = false

local blacksmoke_20223=i("ParticleEmitter", bottomrightdown_20222)
blacksmoke_20223.Name="blacksmoke"
blacksmoke_20223:SetAttribute("EmitDelay", 0)
blacksmoke_20223:SetAttribute("EmitCount", 1)
blacksmoke_20223:SetAttribute("AuraInstance", true)
blacksmoke_20223:SetAttribute("EmitDuration", 0)
blacksmoke_20223.Enabled = true
blacksmoke_20223.Rate = 14.399999618530273
blacksmoke_20223.Lifetime = nr(0.25,0.25)
blacksmoke_20223.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_20223.Rotation = nr(-1000,1000)
blacksmoke_20223.RotSpeed = nr(0,0)
blacksmoke_20223.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_20223.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_20223.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
blacksmoke_20223.LightEmission = -0.5
blacksmoke_20223.LightInfluence = 0
blacksmoke_20223.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_20223.Drag = 0
blacksmoke_20223.EmissionDirection = Enum.NormalId.Top
blacksmoke_20223.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_20223.ZOffset = 1.0010000467300415
blacksmoke_20223.Texture = "rbxassetid://16310636399"
blacksmoke_20223.LockedToPart = true
blacksmoke_20223.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_20223.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_20223.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_20223.FlipbookFramerate = nr(36,36)
blacksmoke_20223.FlipbookStartRandom = false
blacksmoke_20223.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local blacksmoke2_20224=i("ParticleEmitter", bottomrightdown_20222)
blacksmoke2_20224.Name="blacksmoke2"
blacksmoke2_20224:SetAttribute("EmitDelay", 0)
blacksmoke2_20224:SetAttribute("EmitCount", 1)
blacksmoke2_20224:SetAttribute("AuraInstance", true)
blacksmoke2_20224:SetAttribute("EmitDuration", 0)
blacksmoke2_20224.Enabled = false
blacksmoke2_20224.Rate = 14.399999618530273
blacksmoke2_20224.Lifetime = nr(0.25,0.25)
blacksmoke2_20224.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_20224.Rotation = nr(-360,360)
blacksmoke2_20224.RotSpeed = nr(0,0)
blacksmoke2_20224.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_20224.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_20224.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
blacksmoke2_20224.LightEmission = -1
blacksmoke2_20224.LightInfluence = 0
blacksmoke2_20224.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_20224.Drag = 0
blacksmoke2_20224.EmissionDirection = Enum.NormalId.Top
blacksmoke2_20224.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_20224.ZOffset = 1.0019999742507935
blacksmoke2_20224.Texture = "rbxassetid://13916934000"
blacksmoke2_20224.LockedToPart = true
blacksmoke2_20224.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_20224.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_20224.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_20224.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_20224.FlipbookStartRandom = false
blacksmoke2_20224.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_20225=i("ParticleEmitter", bottomrightdown_20222)
dots_20225.Name="dots"
dots_20225:SetAttribute("EmitDuration", 0)
dots_20225:SetAttribute("EmitCount", 1)
dots_20225:SetAttribute("AuraInstance", true)
dots_20225.Enabled = true
dots_20225.Rate = 60
dots_20225.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_20225.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_20225.Rotation = nr(-1000,1000)
dots_20225.RotSpeed = nr(0,0)
dots_20225.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_20225.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_20225.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
dots_20225.LightEmission = 1
dots_20225.LightInfluence = 0
dots_20225.Acceleration = v3(0.000000,0.000000,0.000001)
dots_20225.Drag = 0
dots_20225.EmissionDirection = Enum.NormalId.Top
dots_20225.SpreadAngle = v2(-1000.000000,1000.000000)
dots_20225.ZOffset = 1.0080000162124634
dots_20225.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_20225.LockedToPart = true
dots_20225.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_20225.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_20225.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_20225.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_20225.FlipbookStartRandom = false
dots_20225.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local star_20226=i("ParticleEmitter", bottomrightdown_20222)
star_20226.Name="star"
star_20226:SetAttribute("EmitDelay", 0)
star_20226:SetAttribute("EmitCount", 1)
star_20226:SetAttribute("AuraInstance", true)
star_20226:SetAttribute("EmitDuration", 0)
star_20226.Enabled = true
star_20226.Rate = 24
star_20226.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_20226.Speed = nr(0.003192003583535552,0.003192003583535552)
star_20226.Rotation = nr(0,0)
star_20226.RotSpeed = nr(0,0)
star_20226.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_20226.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_20226.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
star_20226.LightEmission = 0
star_20226.LightInfluence = 0
star_20226.Acceleration = v3(0.000000,0.000000,0.000001)
star_20226.Drag = 0
star_20226.EmissionDirection = Enum.NormalId.Top
star_20226.SpreadAngle = v2(360000.000000,360000.000000)
star_20226.ZOffset = 1.5049999952316284
star_20226.Texture = "rbxassetid://130506341047209"
star_20226.LockedToPart = true
star_20226.Orientation = Enum.ParticleOrientation.FacingCamera
star_20226.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_20226.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_20226.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_20226.FlipbookStartRandom = false
star_20226.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local beam_20227=i("Beam", bottomrightdown_20222)
beam_20227.Name="beam"
beam_20227:SetAttribute("EmitDuration", 0)
beam_20227:SetAttribute("AuraInstance", true)
beam_20227.Enabled = true
beam_20227.Width0 = 0.20592001080513
beam_20227.Width1 = 0.20592001080513
beam_20227.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20227.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20227.CurveSize0 = 0
beam_20227.CurveSize1 = 0
beam_20227.FaceCamera = true
beam_20227.LightEmission = 1
beam_20227.LightInfluence = 0
beam_20227.Segments = 10
beam_20227.Texture = "rbxassetid://16310670422"
beam_20227.TextureLength = 0.5
beam_20227.TextureSpeed = 0.2559310793876648

local lines_20228=i("Beam", bottomrightdown_20222)
lines_20228.Name="lines"
lines_20228:SetAttribute("EmitDuration", 0)
lines_20228:SetAttribute("AuraInstance", true)
lines_20228.Enabled = true
lines_20228.Width0 = 1.7846400737762451
lines_20228.Width1 = 1.7846400737762451
lines_20228.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_20228.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
lines_20228.CurveSize0 = 0
lines_20228.CurveSize1 = 0
lines_20228.FaceCamera = true
lines_20228.LightEmission = 1
lines_20228.LightInfluence = 0
lines_20228.Segments = 10
lines_20228.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_20228.TextureLength = 0.625
lines_20228.TextureSpeed = 0.0639827698469162

local beam2_20229=i("Beam", bottomrightdown_20222)
beam2_20229.Name="beam2"
beam2_20229:SetAttribute("EmitDuration", 0)
beam2_20229:SetAttribute("AuraInstance", true)
beam2_20229.Enabled = true
beam2_20229.Width0 = 1.0982400178909302
beam2_20229.Width1 = 1.0982400178909302
beam2_20229.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_20229.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam2_20229.CurveSize0 = 0
beam2_20229.CurveSize1 = 0
beam2_20229.FaceCamera = true
beam2_20229.LightEmission = 0
beam2_20229.LightInfluence = 0
beam2_20229.Segments = 10
beam2_20229.Texture = "rbxassetid://18837319394"
beam2_20229.TextureLength = 2.25
beam2_20229.TextureSpeed = 0.2559310793876648

local smokeblack_20230=i("Beam", bottomrightdown_20222)
smokeblack_20230.Name="smokeblack"
smokeblack_20230:SetAttribute("EmitDuration", 0)
smokeblack_20230:SetAttribute("AuraInstance", true)
smokeblack_20230.Enabled = true
smokeblack_20230.Width0 = 2.0592002868652344
smokeblack_20230.Width1 = 2.0592002868652344
smokeblack_20230.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_20230.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_20230.CurveSize0 = 0
smokeblack_20230.CurveSize1 = 0
smokeblack_20230.FaceCamera = true
smokeblack_20230.LightEmission = 0.4000000059604645
smokeblack_20230.LightInfluence = 0
smokeblack_20230.Segments = 10
smokeblack_20230.Texture = "rbxassetid://14191603094"
smokeblack_20230.TextureLength = 12
smokeblack_20230.TextureSpeed = 0.1279655396938324

local Attachment_20231=i("Attachment", bottomrightdown_20222)
Attachment_20231.Name="Attachment"
Attachment_20231:SetAttribute("AuraInstance", true)
Attachment_20231.Position = v3(0.000000,-0.000005,0.000037)
Attachment_20231.Visible = false

local beam_20232=i("Beam", Attachment_20231)
beam_20232.Name="beam"
beam_20232:SetAttribute("EmitDuration", 0)
beam_20232:SetAttribute("AuraInstance", true)
beam_20232.Enabled = true
beam_20232.Width0 = 0.20592001080513
beam_20232.Width1 = 0.20592001080513
beam_20232.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20232.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20232.CurveSize0 = 0
beam_20232.CurveSize1 = 0
beam_20232.FaceCamera = true
beam_20232.LightEmission = 1
beam_20232.LightInfluence = 0
beam_20232.Segments = 10
beam_20232.Texture = "rbxassetid://16310670422"
beam_20232.TextureLength = 0.5
beam_20232.TextureSpeed = 0.2559310793876648

local beam2_20233=i("Beam", Attachment_20231)
beam2_20233.Name="beam2"
beam2_20233:SetAttribute("EmitDuration", 0)
beam2_20233:SetAttribute("AuraInstance", true)
beam2_20233.Enabled = true
beam2_20233.Width0 = 1.0982400178909302
beam2_20233.Width1 = 1.0982400178909302
beam2_20233.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_20233.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam2_20233.CurveSize0 = 0
beam2_20233.CurveSize1 = 0
beam2_20233.FaceCamera = true
beam2_20233.LightEmission = 0
beam2_20233.LightInfluence = 0
beam2_20233.Segments = 10
beam2_20233.Texture = "rbxassetid://18837319394"
beam2_20233.TextureLength = 2.25
beam2_20233.TextureSpeed = 0.2559310793876648

local lines_20234=i("Beam", Attachment_20231)
lines_20234.Name="lines"
lines_20234:SetAttribute("EmitDuration", 0)
lines_20234:SetAttribute("AuraInstance", true)
lines_20234.Enabled = true
lines_20234.Width0 = 1.7846400737762451
lines_20234.Width1 = 1.7846400737762451
lines_20234.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_20234.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
lines_20234.CurveSize0 = 0
lines_20234.CurveSize1 = 0
lines_20234.FaceCamera = true
lines_20234.LightEmission = 1
lines_20234.LightInfluence = 0
lines_20234.Segments = 10
lines_20234.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_20234.TextureLength = 0.625
lines_20234.TextureSpeed = 0.0639827698469162

local smokeblack_20235=i("Beam", Attachment_20231)
smokeblack_20235.Name="smokeblack"
smokeblack_20235:SetAttribute("EmitDuration", 0)
smokeblack_20235:SetAttribute("AuraInstance", true)
smokeblack_20235.Enabled = true
smokeblack_20235.Width0 = 2.0592002868652344
smokeblack_20235.Width1 = 2.0592002868652344
smokeblack_20235.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_20235.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_20235.CurveSize0 = 0
smokeblack_20235.CurveSize1 = 0
smokeblack_20235.FaceCamera = true
smokeblack_20235.LightEmission = 0.4000000059604645
smokeblack_20235.LightInfluence = 0
smokeblack_20235.Segments = 10
smokeblack_20235.Texture = "rbxassetid://14191603094"
smokeblack_20235.TextureLength = 12
smokeblack_20235.TextureSpeed = 0.1279655396938324

local splatter_20236=i("ParticleEmitter", bottomrightdown_20222)
splatter_20236.Name="splatter"
splatter_20236:SetAttribute("EmitDuration", 0)
splatter_20236:SetAttribute("EmitCount", 1)
splatter_20236:SetAttribute("AuraInstance", true)
splatter_20236.Enabled = true
splatter_20236.Rate = 70
splatter_20236.Lifetime = nr(0.25,0.3499999940395355)
splatter_20236.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_20236.Rotation = nr(-1000,1000)
splatter_20236.RotSpeed = nr(0,0)
splatter_20236.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_20236.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_20236.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
splatter_20236.LightEmission = -20
splatter_20236.LightInfluence = 0
splatter_20236.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_20236.Drag = 0
splatter_20236.EmissionDirection = Enum.NormalId.Top
splatter_20236.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_20236.ZOffset = 1.0069999694824219
splatter_20236.Texture = "rbxassetid://15004620425"
splatter_20236.LockedToPart = true
splatter_20236.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_20236.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_20236.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_20236.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_20236.FlipbookStartRandom = false
splatter_20236.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local edges_20237=i("Attachment", bottomrightdown_20222)
edges_20237.Name="edges"
edges_20237:SetAttribute("AuraInstance", true)
edges_20237.Position = v3(-0.600000,-0.600000,-0.600000)
edges_20237.Visible = false

local beam_20238=i("Beam", edges_20237)
beam_20238.Name="beam"
beam_20238:SetAttribute("EmitDuration", 0)
beam_20238:SetAttribute("AuraInstance", true)
beam_20238.Enabled = true
beam_20238.Width0 = 0.48000001907348633
beam_20238.Width1 = 0
beam_20238.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20238.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20238.CurveSize0 = 0
beam_20238.CurveSize1 = 0
beam_20238.FaceCamera = true
beam_20238.LightEmission = 1
beam_20238.LightInfluence = 0
beam_20238.Segments = 10
beam_20238.Texture = "rbxassetid://14166981368"
beam_20238.TextureLength = 0.5
beam_20238.TextureSpeed = 0.2559310793876648

local beam_20239=i("Beam", edges_20237)
beam_20239.Name="beam"
beam_20239:SetAttribute("EmitDuration", 0)
beam_20239:SetAttribute("AuraInstance", true)
beam_20239.Enabled = true
beam_20239.Width0 = 0.48000001907348633
beam_20239.Width1 = 0
beam_20239.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20239.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20239.CurveSize0 = 0
beam_20239.CurveSize1 = 0
beam_20239.FaceCamera = true
beam_20239.LightEmission = 1
beam_20239.LightInfluence = 0
beam_20239.Segments = 10
beam_20239.Texture = "rbxassetid://14166981368"
beam_20239.TextureLength = 0.5
beam_20239.TextureSpeed = 0.2559310793876648

local beam_20240=i("Beam", edges_20237)
beam_20240.Name="beam"
beam_20240:SetAttribute("EmitDuration", 0)
beam_20240:SetAttribute("AuraInstance", true)
beam_20240.Enabled = true
beam_20240.Width0 = 0.48000001907348633
beam_20240.Width1 = 0
beam_20240.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20240.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20240.CurveSize0 = 0
beam_20240.CurveSize1 = 0
beam_20240.FaceCamera = true
beam_20240.LightEmission = 1
beam_20240.LightInfluence = 0
beam_20240.Segments = 10
beam_20240.Texture = "rbxassetid://14166981368"
beam_20240.TextureLength = 0.5
beam_20240.TextureSpeed = 0.2559310793876648

local star_20241=i("ParticleEmitter", edges_20237)
star_20241.Name="star"
star_20241:SetAttribute("EmitDelay", 0)
star_20241:SetAttribute("EmitCount", 1)
star_20241:SetAttribute("AuraInstance", true)
star_20241:SetAttribute("EmitDuration", 0)
star_20241.Enabled = true
star_20241.Rate = 24
star_20241.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_20241.Speed = nr(0.003192003583535552,0.003192003583535552)
star_20241.Rotation = nr(0,0)
star_20241.RotSpeed = nr(0,0)
star_20241.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_20241.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_20241.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
star_20241.LightEmission = 0
star_20241.LightInfluence = 0
star_20241.Acceleration = v3(0.000000,0.000000,0.000001)
star_20241.Drag = 0
star_20241.EmissionDirection = Enum.NormalId.Top
star_20241.SpreadAngle = v2(360000.000000,360000.000000)
star_20241.ZOffset = 1.5049999952316284
star_20241.Texture = "rbxassetid://130506341047209"
star_20241.LockedToPart = true
star_20241.Orientation = Enum.ParticleOrientation.FacingCamera
star_20241.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_20241.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_20241.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_20241.FlipbookStartRandom = false
star_20241.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local trail_20242=i("Attachment", edges_20237)
trail_20242.Name="trail"
trail_20242:SetAttribute("AuraInstance", true)
trail_20242.Position = v3(0.000000,-0.000005,0.000037)
trail_20242.Visible = false

local Attachment_20243=i("Attachment", trail_20242)
Attachment_20243.Name="Attachment"
Attachment_20243:SetAttribute("AuraInstance", true)
Attachment_20243.Position = v3(12.513612,0.000000,0.000000)
Attachment_20243.Visible = false

local Trail_20244=i("Trail", trail_20242)
Trail_20244.Name="Trail"
Trail_20244:SetAttribute("EmitDuration", 0)
Trail_20244:SetAttribute("AuraInstance", true)
Trail_20244.Enabled = true
Trail_20244.Lifetime = 0.15000000596046448
Trail_20244.FaceCamera = true
Trail_20244.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_20244.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_20244.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
Trail_20244.Texture = "rbxassetid://14050984567"
Trail_20244.TextureLength = 1.2000000476837158
Trail_20244.LightEmission = 1
Trail_20244.LightInfluence = 0

local Attachment_20245=i("Attachment", trail_20242)
Attachment_20245.Name="Attachment"
Attachment_20245:SetAttribute("AuraInstance", true)
Attachment_20245.Position = v3(-12.028968,0.000000,0.000000)
Attachment_20245.Visible = false

local bottomrightup_20246=i("Attachment", beamedge_18706)
bottomrightup_20246.Name="bottomrightup"
bottomrightup_20246:SetAttribute("AuraInstance", true)
bottomrightup_20246.Position = v3(-5.777051,-5.777045,5.777051)
bottomrightup_20246.Visible = false

local blacksmoke_20247=i("ParticleEmitter", bottomrightup_20246)
blacksmoke_20247.Name="blacksmoke"
blacksmoke_20247:SetAttribute("EmitDelay", 0)
blacksmoke_20247:SetAttribute("EmitCount", 1)
blacksmoke_20247:SetAttribute("AuraInstance", true)
blacksmoke_20247:SetAttribute("EmitDuration", 0)
blacksmoke_20247.Enabled = true
blacksmoke_20247.Rate = 14.399999618530273
blacksmoke_20247.Lifetime = nr(0.25,0.25)
blacksmoke_20247.Speed = nr(0.036393746733665466,0.036393746733665466)
blacksmoke_20247.Rotation = nr(-1000,1000)
blacksmoke_20247.RotSpeed = nr(0,0)
blacksmoke_20247.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.220847,0.000000),nsk(0.200000,0.429362,0.000000),nsk(0.300000,0.624093,0.000000),nsk(0.400000,0.803255,0.000000),nsk(0.500000,0.964611,0.000000),nsk(0.600000,1.105299,0.000000),nsk(0.700000,1.221574,0.000000),nsk(0.800000,1.308490,0.000000),nsk(0.900000,1.359850,0.000000),nsk(1.000000,1.372800,0.000000)})
blacksmoke_20247.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.448939,0.606250,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke_20247.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
blacksmoke_20247.LightEmission = -0.5
blacksmoke_20247.LightInfluence = 0
blacksmoke_20247.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke_20247.Drag = 0
blacksmoke_20247.EmissionDirection = Enum.NormalId.Top
blacksmoke_20247.SpreadAngle = v2(360.000000,360.000000)
blacksmoke_20247.ZOffset = 1.0010000467300415
blacksmoke_20247.Texture = "rbxassetid://16310636399"
blacksmoke_20247.LockedToPart = true
blacksmoke_20247.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke_20247.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke_20247.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke_20247.FlipbookFramerate = nr(36,36)
blacksmoke_20247.FlipbookStartRandom = false
blacksmoke_20247.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local blacksmoke2_20248=i("ParticleEmitter", bottomrightup_20246)
blacksmoke2_20248.Name="blacksmoke2"
blacksmoke2_20248:SetAttribute("EmitDelay", 0)
blacksmoke2_20248:SetAttribute("EmitCount", 1)
blacksmoke2_20248:SetAttribute("AuraInstance", true)
blacksmoke2_20248:SetAttribute("EmitDuration", 0)
blacksmoke2_20248.Enabled = false
blacksmoke2_20248.Rate = 14.399999618530273
blacksmoke2_20248.Lifetime = nr(0.25,0.25)
blacksmoke2_20248.Speed = nr(0.003192003583535552,0.003192003583535552)
blacksmoke2_20248.Rotation = nr(-360,360)
blacksmoke2_20248.RotSpeed = nr(0,0)
blacksmoke2_20248.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,1.544400,0.000000)})
blacksmoke2_20248.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmoke2_20248.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
blacksmoke2_20248.LightEmission = -1
blacksmoke2_20248.LightInfluence = 0
blacksmoke2_20248.Acceleration = v3(0.000000,0.000000,0.000001)
blacksmoke2_20248.Drag = 0
blacksmoke2_20248.EmissionDirection = Enum.NormalId.Top
blacksmoke2_20248.SpreadAngle = v2(360000.000000,360000.000000)
blacksmoke2_20248.ZOffset = 1.0019999742507935
blacksmoke2_20248.Texture = "rbxassetid://13916934000"
blacksmoke2_20248.LockedToPart = true
blacksmoke2_20248.Orientation = Enum.ParticleOrientation.FacingCamera
blacksmoke2_20248.FlipbookLayout = Enum.ParticleFlipbookLayout.None
blacksmoke2_20248.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmoke2_20248.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
blacksmoke2_20248.FlipbookStartRandom = false
blacksmoke2_20248.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_20249=i("ParticleEmitter", bottomrightup_20246)
dots_20249.Name="dots"
dots_20249:SetAttribute("EmitDuration", 0)
dots_20249:SetAttribute("EmitCount", 1)
dots_20249:SetAttribute("AuraInstance", true)
dots_20249.Enabled = true
dots_20249.Rate = 60
dots_20249.Lifetime = nr(0.4166666567325592,0.4166666567325592)
dots_20249.Speed = nr(0.0032947203144431114,0.0032947203144431114)
dots_20249.Rotation = nr(-1000,1000)
dots_20249.RotSpeed = nr(0,0)
dots_20249.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.016986,0.000000),nsk(0.200000,0.081516,0.000000),nsk(0.300000,0.188254,0.000000),nsk(0.400000,0.329287,0.000000),nsk(0.500000,0.498641,0.000000),nsk(0.600000,0.691906,0.000000),nsk(0.700000,0.905746,0.000000),nsk(0.800000,1.137575,0.000000),nsk(0.900000,1.385336,0.000000),nsk(1.000000,1.647360,0.000000),nsk(1.000000,1.647360,0.000000)})
dots_20249.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.513742,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_20249.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
dots_20249.LightEmission = 1
dots_20249.LightInfluence = 0
dots_20249.Acceleration = v3(0.000000,0.000000,0.000001)
dots_20249.Drag = 0
dots_20249.EmissionDirection = Enum.NormalId.Top
dots_20249.SpreadAngle = v2(-1000.000000,1000.000000)
dots_20249.ZOffset = 1.0080000162124634
dots_20249.Texture = "http://www.roblox.com/asset/?id=120938961769825"
dots_20249.LockedToPart = true
dots_20249.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_20249.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_20249.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_20249.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
dots_20249.FlipbookStartRandom = false
dots_20249.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local star_20250=i("ParticleEmitter", bottomrightup_20246)
star_20250.Name="star"
star_20250:SetAttribute("EmitDelay", 0)
star_20250:SetAttribute("EmitCount", 1)
star_20250:SetAttribute("AuraInstance", true)
star_20250:SetAttribute("EmitDuration", 0)
star_20250.Enabled = true
star_20250.Rate = 24
star_20250.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_20250.Speed = nr(0.003192003583535552,0.003192003583535552)
star_20250.Rotation = nr(0,0)
star_20250.RotSpeed = nr(0,0)
star_20250.Size = ns({nsk(0.000000,2.745600,0.000000),nsk(1.000000,2.745600,0.000000)})
star_20250.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_20250.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
star_20250.LightEmission = 0
star_20250.LightInfluence = 0
star_20250.Acceleration = v3(0.000000,0.000000,0.000001)
star_20250.Drag = 0
star_20250.EmissionDirection = Enum.NormalId.Top
star_20250.SpreadAngle = v2(360000.000000,360000.000000)
star_20250.ZOffset = 1.5049999952316284
star_20250.Texture = "rbxassetid://130506341047209"
star_20250.LockedToPart = true
star_20250.Orientation = Enum.ParticleOrientation.FacingCamera
star_20250.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_20250.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_20250.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_20250.FlipbookStartRandom = false
star_20250.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local beam_20251=i("Beam", bottomrightup_20246)
beam_20251.Name="beam"
beam_20251:SetAttribute("EmitDuration", 0)
beam_20251:SetAttribute("AuraInstance", true)
beam_20251.Enabled = true
beam_20251.Width0 = 0.20592001080513
beam_20251.Width1 = 0.20592001080513
beam_20251.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20251.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20251.CurveSize0 = 0
beam_20251.CurveSize1 = 0
beam_20251.FaceCamera = true
beam_20251.LightEmission = 1
beam_20251.LightInfluence = 0
beam_20251.Segments = 10
beam_20251.Texture = "rbxassetid://16310670422"
beam_20251.TextureLength = 0.5
beam_20251.TextureSpeed = 0.2559310793876648

local lines_20252=i("Beam", bottomrightup_20246)
lines_20252.Name="lines"
lines_20252:SetAttribute("EmitDuration", 0)
lines_20252:SetAttribute("AuraInstance", true)
lines_20252.Enabled = true
lines_20252.Width0 = 1.7846400737762451
lines_20252.Width1 = 1.7846400737762451
lines_20252.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_20252.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
lines_20252.CurveSize0 = 0
lines_20252.CurveSize1 = 0
lines_20252.FaceCamera = true
lines_20252.LightEmission = 1
lines_20252.LightInfluence = 0
lines_20252.Segments = 10
lines_20252.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_20252.TextureLength = 0.625
lines_20252.TextureSpeed = 0.0639827698469162

local beam2_20253=i("Beam", bottomrightup_20246)
beam2_20253.Name="beam2"
beam2_20253:SetAttribute("EmitDuration", 0)
beam2_20253:SetAttribute("AuraInstance", true)
beam2_20253.Enabled = true
beam2_20253.Width0 = 1.0982400178909302
beam2_20253.Width1 = 1.0982400178909302
beam2_20253.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_20253.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam2_20253.CurveSize0 = 0
beam2_20253.CurveSize1 = 0
beam2_20253.FaceCamera = true
beam2_20253.LightEmission = 0
beam2_20253.LightInfluence = 0
beam2_20253.Segments = 10
beam2_20253.Texture = "rbxassetid://18837319394"
beam2_20253.TextureLength = 2.25
beam2_20253.TextureSpeed = 0.2559310793876648

local smokeblack_20254=i("Beam", bottomrightup_20246)
smokeblack_20254.Name="smokeblack"
smokeblack_20254:SetAttribute("EmitDuration", 0)
smokeblack_20254:SetAttribute("AuraInstance", true)
smokeblack_20254.Enabled = true
smokeblack_20254.Width0 = 2.0592002868652344
smokeblack_20254.Width1 = 2.0592002868652344
smokeblack_20254.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_20254.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_20254.CurveSize0 = 0
smokeblack_20254.CurveSize1 = 0
smokeblack_20254.FaceCamera = true
smokeblack_20254.LightEmission = 0.4000000059604645
smokeblack_20254.LightInfluence = 0
smokeblack_20254.Segments = 10
smokeblack_20254.Texture = "rbxassetid://14191603094"
smokeblack_20254.TextureLength = 12
smokeblack_20254.TextureSpeed = 0.1279655396938324

local Attachment_20255=i("Attachment", bottomrightup_20246)
Attachment_20255.Name="Attachment"
Attachment_20255:SetAttribute("AuraInstance", true)
Attachment_20255.Position = v3(0.000000,-0.000005,0.000000)
Attachment_20255.Visible = false

local beam_20256=i("Beam", Attachment_20255)
beam_20256.Name="beam"
beam_20256:SetAttribute("EmitDuration", 0)
beam_20256:SetAttribute("AuraInstance", true)
beam_20256.Enabled = true
beam_20256.Width0 = 0.20592001080513
beam_20256.Width1 = 0.20592001080513
beam_20256.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20256.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20256.CurveSize0 = 0
beam_20256.CurveSize1 = 0
beam_20256.FaceCamera = true
beam_20256.LightEmission = 1
beam_20256.LightInfluence = 0
beam_20256.Segments = 10
beam_20256.Texture = "rbxassetid://16310670422"
beam_20256.TextureLength = 0.5
beam_20256.TextureSpeed = 0.2559310793876648

local beam2_20257=i("Beam", Attachment_20255)
beam2_20257.Name="beam2"
beam2_20257:SetAttribute("EmitDuration", 0)
beam2_20257:SetAttribute("AuraInstance", true)
beam2_20257.Enabled = true
beam2_20257.Width0 = 1.0982400178909302
beam2_20257.Width1 = 1.0982400178909302
beam2_20257.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_20257.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam2_20257.CurveSize0 = 0
beam2_20257.CurveSize1 = 0
beam2_20257.FaceCamera = true
beam2_20257.LightEmission = 0
beam2_20257.LightInfluence = 0
beam2_20257.Segments = 10
beam2_20257.Texture = "rbxassetid://18837319394"
beam2_20257.TextureLength = 2.25
beam2_20257.TextureSpeed = 0.2559310793876648

local lines_20258=i("Beam", Attachment_20255)
lines_20258.Name="lines"
lines_20258:SetAttribute("EmitDuration", 0)
lines_20258:SetAttribute("AuraInstance", true)
lines_20258.Enabled = true
lines_20258.Width0 = 1.7846400737762451
lines_20258.Width1 = 1.7846400737762451
lines_20258.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lines_20258.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
lines_20258.CurveSize0 = 0
lines_20258.CurveSize1 = 0
lines_20258.FaceCamera = true
lines_20258.LightEmission = 1
lines_20258.LightInfluence = 0
lines_20258.Segments = 10
lines_20258.Texture = "http://www.roblox.com/asset/?id=140310183135697"
lines_20258.TextureLength = 0.625
lines_20258.TextureSpeed = 0.0639827698469162

local smokeblack_20259=i("Beam", Attachment_20255)
smokeblack_20259.Name="smokeblack"
smokeblack_20259:SetAttribute("EmitDuration", 0)
smokeblack_20259:SetAttribute("AuraInstance", true)
smokeblack_20259.Enabled = true
smokeblack_20259.Width0 = 2.0592002868652344
smokeblack_20259.Width1 = 2.0592002868652344
smokeblack_20259.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.099894,0.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(0.900106,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
smokeblack_20259.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smokeblack_20259.CurveSize0 = 0
smokeblack_20259.CurveSize1 = 0
smokeblack_20259.FaceCamera = true
smokeblack_20259.LightEmission = 0.4000000059604645
smokeblack_20259.LightInfluence = 0
smokeblack_20259.Segments = 10
smokeblack_20259.Texture = "rbxassetid://14191603094"
smokeblack_20259.TextureLength = 12
smokeblack_20259.TextureSpeed = 0.1279655396938324

local splatter_20260=i("ParticleEmitter", bottomrightup_20246)
splatter_20260.Name="splatter"
splatter_20260:SetAttribute("EmitDuration", 0)
splatter_20260:SetAttribute("EmitCount", 1)
splatter_20260:SetAttribute("AuraInstance", true)
splatter_20260.Enabled = true
splatter_20260.Rate = 70
splatter_20260.Lifetime = nr(0.25,0.3499999940395355)
splatter_20260.Speed = nr(0.0032947203144431114,0.0032947203144431114)
splatter_20260.Rotation = nr(-1000,1000)
splatter_20260.RotSpeed = nr(0,0)
splatter_20260.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.116794,0.000000),nsk(0.200000,0.227066,0.000000),nsk(0.300000,0.330049,0.000000),nsk(0.400000,0.424798,0.000000),nsk(0.500000,0.510131,0.000000),nsk(0.600000,0.584533,0.000000),nsk(0.700000,0.646025,0.000000),nsk(0.800000,0.691990,0.000000),nsk(0.900000,0.719151,0.000000),nsk(1.000000,0.726000,0.000000),nsk(1.000000,0.726000,0.000000)})
splatter_20260.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.654334,0.156250,0.000000),nsk(1.000000,1.000000,0.000000)})
splatter_20260.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
splatter_20260.LightEmission = -20
splatter_20260.LightInfluence = 0
splatter_20260.Acceleration = v3(0.000000,0.000000,0.000001)
splatter_20260.Drag = 0
splatter_20260.EmissionDirection = Enum.NormalId.Top
splatter_20260.SpreadAngle = v2(-1000.000000,1000.000000)
splatter_20260.ZOffset = 1.0069999694824219
splatter_20260.Texture = "rbxassetid://15004620425"
splatter_20260.LockedToPart = true
splatter_20260.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
splatter_20260.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
splatter_20260.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
splatter_20260.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
splatter_20260.FlipbookStartRandom = false
splatter_20260.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local edges_20261=i("Attachment", bottomrightup_20246)
edges_20261.Name="edges"
edges_20261:SetAttribute("AuraInstance", true)
edges_20261.Position = v3(-0.600000,-0.600000,0.600000)
edges_20261.Visible = false

local beam_20262=i("Beam", edges_20261)
beam_20262.Name="beam"
beam_20262:SetAttribute("EmitDuration", 0)
beam_20262:SetAttribute("AuraInstance", true)
beam_20262.Enabled = true
beam_20262.Width0 = 0.48000001907348633
beam_20262.Width1 = 0
beam_20262.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20262.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20262.CurveSize0 = 0
beam_20262.CurveSize1 = 0
beam_20262.FaceCamera = true
beam_20262.LightEmission = 1
beam_20262.LightInfluence = 0
beam_20262.Segments = 10
beam_20262.Texture = "rbxassetid://14166981368"
beam_20262.TextureLength = 0.5
beam_20262.TextureSpeed = 0.2559310793876648

local beam_20263=i("Beam", edges_20261)
beam_20263.Name="beam"
beam_20263:SetAttribute("EmitDuration", 0)
beam_20263:SetAttribute("AuraInstance", true)
beam_20263.Enabled = true
beam_20263.Width0 = 0.48000001907348633
beam_20263.Width1 = 0
beam_20263.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20263.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20263.CurveSize0 = 0
beam_20263.CurveSize1 = 0
beam_20263.FaceCamera = true
beam_20263.LightEmission = 1
beam_20263.LightInfluence = 0
beam_20263.Segments = 10
beam_20263.Texture = "rbxassetid://14166981368"
beam_20263.TextureLength = 0.5
beam_20263.TextureSpeed = 0.2559310793876648

local beam_20264=i("Beam", edges_20261)
beam_20264.Name="beam"
beam_20264:SetAttribute("EmitDuration", 0)
beam_20264:SetAttribute("AuraInstance", true)
beam_20264.Enabled = true
beam_20264.Width0 = 0.48000001907348633
beam_20264.Width1 = 0
beam_20264.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.226744,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam_20264.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
beam_20264.CurveSize0 = 0
beam_20264.CurveSize1 = 0
beam_20264.FaceCamera = true
beam_20264.LightEmission = 1
beam_20264.LightInfluence = 0
beam_20264.Segments = 10
beam_20264.Texture = "rbxassetid://14166981368"
beam_20264.TextureLength = 0.5
beam_20264.TextureSpeed = 0.2559310793876648

local star_20265=i("ParticleEmitter", edges_20261)
star_20265.Name="star"
star_20265:SetAttribute("EmitDelay", 0)
star_20265:SetAttribute("EmitCount", 1)
star_20265:SetAttribute("AuraInstance", true)
star_20265:SetAttribute("EmitDuration", 0)
star_20265.Enabled = true
star_20265.Rate = 24
star_20265.Lifetime = nr(0.0833333358168602,0.0833333358168602)
star_20265.Speed = nr(0.003192003583535552,0.003192003583535552)
star_20265.Rotation = nr(0,0)
star_20265.RotSpeed = nr(0,0)
star_20265.Size = ns({nsk(0.000000,3.600000,0.000000),nsk(1.000000,3.600000,0.000000)})
star_20265.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.175309,0.000000,0.000000),nsk(0.459510,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_20265.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
star_20265.LightEmission = 0
star_20265.LightInfluence = 0
star_20265.Acceleration = v3(0.000000,0.000000,0.000001)
star_20265.Drag = 0
star_20265.EmissionDirection = Enum.NormalId.Top
star_20265.SpreadAngle = v2(360000.000000,360000.000000)
star_20265.ZOffset = 1.5049999952316284
star_20265.Texture = "rbxassetid://130506341047209"
star_20265.LockedToPart = true
star_20265.Orientation = Enum.ParticleOrientation.FacingCamera
star_20265.FlipbookLayout = Enum.ParticleFlipbookLayout.None
star_20265.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
star_20265.FlipbookFramerate = nr(1.2000000476837158,1.2000000476837158)
star_20265.FlipbookStartRandom = false
star_20265.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.300000,0.000000)})

local trail_20266=i("Attachment", edges_20261)
trail_20266.Name="trail"
trail_20266:SetAttribute("AuraInstance", true)
trail_20266.Position = v3(0.000000,-0.000005,0.000000)
trail_20266.Visible = false

local Attachment_20267=i("Attachment", trail_20266)
Attachment_20267.Name="Attachment"
Attachment_20267:SetAttribute("AuraInstance", true)
Attachment_20267.Position = v3(12.513612,0.000000,0.000000)
Attachment_20267.Visible = false

local Trail_20268=i("Trail", trail_20266)
Trail_20268.Name="Trail"
Trail_20268:SetAttribute("EmitDuration", 0)
Trail_20268:SetAttribute("AuraInstance", true)
Trail_20268.Enabled = true
Trail_20268.Lifetime = 0.15000000596046448
Trail_20268.FaceCamera = true
Trail_20268.WidthScale = ns({nsk(0.000000,0.060000,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_20268.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498734,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Trail_20268.Color = cs({csk(0.000000,c3(0.310000,1.000000,0.544600)),csk(1.000000,c3(0.310000,1.000000,0.544600))})
Trail_20268.Texture = "rbxassetid://14050984567"
Trail_20268.TextureLength = 1.2000000476837158
Trail_20268.LightEmission = 1
Trail_20268.LightInfluence = 0

local Attachment_20269=i("Attachment", trail_20266)
Attachment_20269.Name="Attachment"
Attachment_20269:SetAttribute("AuraInstance", true)
Attachment_20269.Position = v3(-12.028968,0.000000,0.000000)
Attachment_20269.Visible = false


Trail_18657.Attachment0 = Attachment_18658
Trail_18657.Attachment1 = Attachment_18656
Trail_18725.Attachment0 = Attachment_18726
Trail_18725.Attachment1 = Attachment_18724
Trail_18744.Attachment0 = Attachment_18745
Trail_18744.Attachment1 = Attachment_18743
Trail_18763.Attachment0 = Attachment_18764
Trail_18763.Attachment1 = Attachment_18762
Trail_18782.Attachment0 = Attachment_18783
Trail_18782.Attachment1 = Attachment_18781
Trail_18806.Attachment0 = Attachment_18807
Trail_18806.Attachment1 = Attachment_18805
Trail_18830.Attachment0 = Attachment_18831
Trail_18830.Attachment1 = Attachment_18829
Trail_18854.Attachment0 = Attachment_18855
Trail_18854.Attachment1 = Attachment_18853
Trail_18878.Attachment0 = Attachment_18879
Trail_18878.Attachment1 = Attachment_18877

Beam_18668.Attachment0 = _1_18676
Beam_18668.Attachment1 = _2_18677
Beam_18669.Attachment0 = _6_18681
Beam_18669.Attachment1 = _7_18682
Beam_18670.Attachment0 = _5_18680
Beam_18670.Attachment1 = _6_18681
Beam_18671.Attachment0 = _2_18677
Beam_18671.Attachment1 = _3_18678
Beam_18672.Attachment0 = _4_18679
Beam_18672.Attachment1 = _5_18680
Beam_18673.Attachment0 = _3_18678
Beam_18673.Attachment1 = _4_18679
Beam_18674.Attachment0 = _8_18683
Beam_18674.Attachment1 = _1_18676
Beam_18675.Attachment0 = _7_18682
Beam_18675.Attachment1 = _8_18683
beam_18709.Attachment0 = topleftdown_18708
beam_18709.Attachment1 = toprightdown_18727
beam2_18711.Attachment0 = topleftdown_18708
beam2_18711.Attachment1 = toprightdown_18727
lines_18715.Attachment0 = topleftdown_18708
lines_18715.Attachment1 = toprightdown_18727
smokeblack_18716.Attachment0 = topleftdown_18708
smokeblack_18716.Attachment1 = toprightdown_18727
beam_18738.Attachment0 = edges_18737
beam_18738.Attachment1 = bottomrightdown_18808
beam_18739.Attachment0 = edges_18737
beam_18739.Attachment1 = topleftdown_18708
beam_18740.Attachment0 = edges_18737
beam_18740.Attachment1 = toprightup_18746
beam_18794.Attachment0 = Attachment_18793
beam_18794.Attachment1 = topleftdown_18708
beam2_18795.Attachment0 = Attachment_18793
beam2_18795.Attachment1 = topleftdown_18708
lines_18796.Attachment0 = Attachment_18793
lines_18796.Attachment1 = topleftdown_18708
smokeblack_18797.Attachment0 = Attachment_18793
smokeblack_18797.Attachment1 = topleftdown_18708
beam_18789.Attachment0 = bottomleftdown_18784
beam_18789.Attachment1 = bottomrightdown_18808
lines_18790.Attachment0 = bottomleftdown_18784
lines_18790.Attachment1 = bottomrightdown_18808
beam2_18791.Attachment0 = bottomleftdown_18784
beam2_18791.Attachment1 = bottomrightdown_18808
smokeblack_18792.Attachment0 = bottomleftdown_18784
smokeblack_18792.Attachment1 = bottomrightdown_18808
beam_18861.Attachment0 = bottomleftup_18856
beam_18861.Attachment1 = bottomleftdown_18784
lines_18862.Attachment0 = bottomleftup_18856
lines_18862.Attachment1 = bottomleftdown_18784
beam2_18863.Attachment0 = bottomleftup_18856
beam2_18863.Attachment1 = bottomleftdown_18784
smokeblack_18864.Attachment0 = bottomleftup_18856
smokeblack_18864.Attachment1 = bottomleftdown_18784
beam_18842.Attachment0 = Attachment_18841
beam_18842.Attachment1 = toprightup_18746
beam2_18843.Attachment0 = Attachment_18841
beam2_18843.Attachment1 = toprightup_18746
lines_18844.Attachment0 = Attachment_18841
lines_18844.Attachment1 = toprightup_18746
smokeblack_18845.Attachment0 = Attachment_18841
smokeblack_18845.Attachment1 = toprightup_18746
beam_20227.Attachment0 = bottomrightdown_20222
beam_20227.Attachment1 = bottomrightup_20246
lines_20228.Attachment0 = bottomrightdown_20222
lines_20228.Attachment1 = bottomrightup_20246
beam2_20229.Attachment0 = bottomrightdown_20222
beam2_20229.Attachment1 = bottomrightup_20246
smokeblack_20230.Attachment0 = bottomrightdown_20222
smokeblack_20230.Attachment1 = bottomrightup_20246
beam_18872.Attachment0 = edges_18871
beam_18872.Attachment1 = bottomleftdown_18784
beam_18873.Attachment0 = edges_18871
beam_18873.Attachment1 = bottomrightup_18832
beam_18874.Attachment0 = edges_18871
beam_18874.Attachment1 = topleftup_18765

beam_20171.Attachment0 = edges_20170
beam_20171.Attachment1 = topleftup_20179
beam_20172.Attachment0 = edges_20170
beam_20172.Attachment1 = toprightdown_20141
beam_20173.Attachment0 = edges_20170
beam_20173.Attachment1 = bottomrightup_20246

beam_20152.Attachment0 = edges_20151
beam_20152.Attachment1 = bottomrightdown_20222
beam_20153.Attachment0 = edges_20151
beam_20153.Attachment1 = topleftdown_20122
beam_20154.Attachment0 = edges_20151
beam_20154.Attachment1 = toprightup_20160

beam_18824.Attachment0 = edges_18823
beam_18824.Attachment1 = bottomrightup_18832
beam_18825.Attachment0 = edges_18823
beam_18825.Attachment1 = bottomleftdown_18784
beam_18826.Attachment0 = edges_18823
beam_18826.Attachment1 = toprightdown_18727

beam_18794.Attachment0 = Attachment_18793
beam_18794.Attachment1 = topleftdown_18708
beam2_18795.Attachment0 = Attachment_18793
beam2_18795.Attachment1 = topleftdown_18708
lines_18796.Attachment0 = Attachment_18793
lines_18796.Attachment1 = topleftdown_18708
smokeblack_18797.Attachment0 = Attachment_18793
smokeblack_18797.Attachment1 = topleftdown_18708

beam_18789.Attachment0 = bottomleftdown_18784
beam_18789.Attachment1 = bottomrightdown_18808
lines_18790.Attachment0 = bottomleftdown_18784
lines_18790.Attachment1 = bottomrightdown_18808
beam2_18791.Attachment0 = bottomleftdown_18784
beam2_18791.Attachment1 = bottomrightdown_18808
smokeblack_18792.Attachment0 = bottomleftdown_18784
smokeblack_18792.Attachment1 = bottomrightdown_18808

beam_18861.Attachment0 = bottomleftup_18856
beam_18861.Attachment1 = bottomleftdown_18784
lines_18862.Attachment0 = bottomleftup_18856
lines_18862.Attachment1 = bottomleftdown_18784
beam2_18863.Attachment0 = bottomleftup_18856
beam2_18863.Attachment1 = bottomleftdown_18784
smokeblack_18864.Attachment0 = bottomleftup_18856
smokeblack_18864.Attachment1 = bottomleftdown_1878

beam_18842.Attachment0 = Attachment_18841
beam_18842.Attachment1 = toprightup_18746
beam2_18843.Attachment0 = Attachment_18841
beam2_18843.Attachment1 = toprightup_18746
lines_18844.Attachment0 = Attachment_18841
lines_18844.Attachment1 = toprightup_18746
smokeblack_18845.Attachment0 = Attachment_18841
smokeblack_18845.Attachment1 = toprightup_18746

beam_18709.Attachment0 = topleftdown_18708
beam_18709.Attachment1 = toprightdown_18727
beam2_18711.Attachment0 = topleftdown_18708
beam2_18711.Attachment1 = toprightdown_18727
lines_18715.Attachment0 = topleftdown_18708
lines_18715.Attachment1 = toprightdown_18727
smokeblack_18716.Attachment0 = topleftdown_18708
smokeblack_18716.Attachment1 = toprightdown_18727

beam_20227.Attachment0 = bottomrightdown_20222
beam_20227.Attachment1 = bottomrightup_20246
lines_20228.Attachment0 = bottomrightdown_20222
lines_20228.Attachment1 = bottomrightup_20246
beam2_20229.Attachment0 = bottomrightdown_20222
beam2_20229.Attachment1 = bottomrightup_20246
smokeblack_20230.Attachment0 = bottomrightdown_20222
smokeblack_20230.Attachment1 = bottomrightup_20246

--[[beam_20184.Attachment0 = topleftup_20179
beam_20184.Attachment1 = topleftdown_20122
lines_20185.Attachment0 = topleftup_20179
lines_20185.Attachment1 = topleftdown_20122
beam2_20186.Attachment0 = topleftup_20179
beam2_20186.Attachment1 = topleftdown_20122
smokeblack_20187.Attachment0 = topleftup_20179
smokeblack_20187.Attachment1 = topleftdown_20122]]

beam_20251.Attachment0 = bottomrightup_20246
beam_20251.Attachment1 = bottomleftup_20270
lines_20252.Attachment0 = bottomrightup_20246
lines_20252.Attachment1 = bottomleftup_20270
beam2_20253.Attachment0 = bottomrightup_20246
beam2_20253.Attachment1 = bottomleftup_20270
smokeblack_20254.Attachment0 = bottomrightup_20246
smokeblack_20254.Attachment1 = bottomleftup_20270

--[[beam_20123.Attachment0 = topleftdown_20122
beam_20123.Attachment1 = toprightdown_20141
beam2_20125.Attachment0 = topleftdown_20122
beam2_20125.Attachment1 = toprightdown_20141
lines_20129.Attachment0 = topleftdown_20122
lines_20129.Attachment1 = toprightdown_20141
smokeblack_20130.Attachment0 = topleftdown_20122
smokeblack_20130.Attachment1 = toprightdown_20141]]

--[[beam_20146.Attachment0 = toprightdown_20141
beam_20146.Attachment1 = toprightup_20160
lines_20147.Attachment0 = toprightdown_20141
lines_20147.Attachment1 = toprightup_20160
beam2_20148.Attachment0 = toprightdown_20141
beam2_20148.Attachment1 = toprightup_20160
smokeblack_20149.Attachment0 = toprightdown_20141
smokeblack_20149.Attachment1 = toprightup_20160]]

beam_18813.Attachment0 = bottomrightdown_18808
beam_18813.Attachment1 = bottomrightup_18832
lines_18814.Attachment0 = bottomrightdown_18808
lines_18814.Attachment1 = bottomrightup_18832
beam2_18815.Attachment0 = bottomrightdown_18808
beam2_18815.Attachment1 = bottomrightup_18832
smokeblack_18816.Attachment0 = bottomrightdown_18808
smokeblack_18816.Attachment1 = bottomrightup_18832

local weld=Instance.new("Weld")
weld.Part0=DDD
weld.Part1=HumanoidRoot
weld.Parent=DDD
local Amount=77
local Radius=20
local Attach={}
local BeamTable={}
local Table1={}
local initialCFrames={}
local startfreq=0
local endfreq=225
local count=1
local marker=53
for i=1, Amount do
count+=1
local freq=startfreq + (i-1) * (endfreq - startfreq) / (marker - 1) *.1
local a0=Instance.new("Attachment")
a0.Parent=DDD
local a1=Instance.new("Attachment")
a1.Parent=DDD
local angle0=(i / Amount) * math.pi * 2
local angle1=((i + 1) / Amount) * math.pi * 2
a0.Position=Vector3.new(math.cos(angle0) * Radius,0,math.sin(angle0) * Radius)

a1.Position=Vector3.new(math.cos(angle1) * Radius,0,math.sin(angle1) * Radius)
local beam=Instance.new("Beam",BeamsFolder)
beam.Attachment0=a0
beam.Name=freq
beam.Attachment1=a1
beam.FaceCamera=true
beam.Width0=0.15
beam.Width1=0.15
beam.LightEmission=50
beam.LightInfluence=0
beam.CurveSize0=0
beam.TextureLength=.25
beam.Segments=0
beam.Texture="rbxassetid://1263079249"
beam.TextureMode="Stretch"
beam.CurveSize1=0
beam.FaceCamera=false
beam.Transparency=ns({
  nsk(0,0),
  nsk(1,0),
})
Attach[i]={a0, a1}
BeamTable[i]=beam
end





for _, d in EMIT_18907:GetChildren() do 
if d:IsA("ParticleEmitter") and d.Enabled==true then 
d.Enabled=false
end
end

local conn
local gp=1
local spin=0 
local emitthem=0
conn=rus.Heartbeat:Connect(function()

if not scriptfolder:FindFirstChild("ChromaticAssets") then
top_18645:Destroy()
CubeModel:Destroy()
if rootpart1:FindFirstChild("top") then 
rootpart1.top:Destroy()
conn:Disconnect()
end
--PosRoot(0)
return
end
gp+=1
task.spawn(function()

local Torso=rootpart1
spin+=1

for _,a in CubeModel:GetDescendants() do
if a:IsA("Trail") then 
a.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3)
})
end
end
for _,b in CubeModel:GetDescendants() do
if b:IsA("Beam") then 
b.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3)
})
end
end
for _,c in CubeModel:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3)
})
end
end




local root=rootpart1
pcall(function()
top_18645.Parent=root
end)
for _,a in root:GetDescendants() do
if a:IsA("Beam") then 
a.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3)
})
end
end
for _,b in root:GetDescendants() do
if b:IsA("ParticleEmitter") then 
b.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3)
})
end
end
for _,c in root:GetDescendants() do
if c:IsA("Trail") then 
c.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3)
})
end
end
for _,d in CubeModel:GetChildren() do
if d:IsA("BasePart") then 
d.Color=im2.ImageColor3
end
end
for _,e in CubeModel:GetDescendants() do
if e:IsA("SpecialMesh") then 
e.VertexColor=v3(im2.ImageColor3.R,im2.ImageColor3.G,im2.ImageColor3.B)
end
end


for _,v in CubeModel:GetDescendants() do 
if v:IsA("ParticleEmitter") then 
v.TimeScale=.1+sound.PlaybackLoudness/850
end
end

top_18645Position=v3(0,root.Position.Y+30-5*cos(spin/15),0)




BetterTween(CUBE2_18642,.1,{Position=v3(root.Position.X,root.Position.Y+25-5*cos(spin/15),root.Position.Z)}):Play()
BetterTween(CUBE_18549,.1,{Position=v3(root.Position.X,root.Position.Y+25-5*cos(spin/15),root.Position.Z)}):Play()
CUBE2_18642.Rotation=v3(spin*5,spin*5,spin*5)
CUBE_18549.Rotation=v3(-spin*5,-spin*5,-spin*5)
emitthem+=1
if emitthem==70 then 
for _,a in CubeModel:GetDescendants() do 
if a:IsA("Sound") then 
a:Play()
a.Looped=false 
a.Volume=2-sound.PlaybackLoudness/850
a.Ended:Connect(function()
a:Stop()
end)
end
end
for _,b in EMIT_18907: GetDescendants() do 
if b:IsA("ParticleEmitter") then 
b:Emit(b: GetAttribute("EmitCount"))
end
end

emitthem=0
end

local root=rootpart1
local forward=root.CFrame.LookVector
local up=Vector3.new(0, 1, 0)
local front=CFrame.lookAt(root.Position,root.Position + forward,up)
local Offset=CFrame.new(-5-1.5*sin(gp/40),5-1.5*sin(gp/30), 5-1.75*sin(gp/28.5))
local Offset1=CFrame.new(5+1.5*sin(gp/40),5-1.5*sin(gp/30), 5-1.75*sin(gp/28.5))
local tilt=CFrame.Angles(0,0,0)
local rotation=CFrame.Angles(0, rad(gp/2.5+sound.PlaybackLoudness/100), 0)
DDD.Rotation=v3(0,gp*-1/5,0)



Light.Color=im2.ImageColor3
Light.Brightness=5+sound.PlaybackLoudness/150
Light.Range=2+sound.PlaybackLoudness/25

Tween(DDD,.5,"pos",Vector3.new(root.Position.X, root.Position.Y-1, root.Position.Z)):Play()
Tween(Floor,.5,"pos",v3(root.Position.X, root.Position.Y-1, root.Position.Z)):Play()
Floor.Rotation=v3(0,gp,0)
task.spawn(function()
pcall(function()
local spectrum=MusicPlayer:FindFirstChild("Analyzer"):GetSpectrum()
local count=#spectrum
local t=tick()
local spectrumCount=#spectrum
local SafeTreshold=0.00025
for i, v in ipairs(BeamsFolder:GetChildren()) do
if v:IsA("Beam") then
local spectrumIndex=math.floor((tonumber(v.Name) / marker) * spectrumCount+.85) + 1
spectrumIndex=math.clamp(spectrumIndex, 1, spectrumCount)
local magnitude=spectrum[spectrumIndex] or 0
local i_pos=tonumber(v.Name) / marker
local scale=math.min(magnitude / 0.0005 * .5, 25+1.25*sin((tick()*i_pos)+gp/10.5))
local width=math.clamp(magnitude * 50, 0.15, 10.5)
--local Torso=SafePart(incf)
if magnitude>SafeTreshold then
v.Width0=scale
v.Width1=scale
v.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3)
})
else 
v.Width0=0.15
v.Width1=0.15
v.Color=cs({
  csk(0,rgb(255,255,255)),
  csk(1,rgb(255,255,255))
})
end

end 
end

for _,v in Floor:GetDescendants() do
if v:IsA("ParticleEmitter") and v.Name~=Black2.Name and v.Name~=Black.Name and v.Name~=MiddleBlack.Name then 
v.Color=cs({
  csk(0,im2.ImageColor3),
  csk(1,im2.ImageColor3),
})
end
end



end)
end)

end)
end)


end
ChromaticAssets()