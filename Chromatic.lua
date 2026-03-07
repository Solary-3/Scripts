--print(Part)--// The floor that should follow
--print("This is where you put your file for modes that requires some VFX")
--// Base Variables, Already Optimized
local Global=(getgenv and getgenv()) or shared
local scriptfolder=Global.Cont or workspace
local sound=Global.Loud or nil
local im2=Global.im2 or nil
local MusicPlayer=Global.MusicPlayer or nil
local rootpart1=Global.rootpart1 or nil
local rootpart=Global.rootpart or nil
local insSet=Global.insSet or nil
local head=Global.head or nil
local torso=Global.torso or nil
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





local conn
local gp=1
local spin=0 
local emitthem=0
task.wait(.5)
conn=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("ChromaticAssets") then
conn:Disconnect()
return
end
gp+=1

local Torso=rootpart1
spin+=1




local root=rootpart1
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


end
ChromaticAssets()