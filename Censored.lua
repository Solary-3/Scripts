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
local insSet=Global.insSet
local head=Global.head
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



function CensoredAssets()

if scriptfolder:FindFirstChild("CensoredAssets") then return end
local Folder=i("Folder",scriptfolder)
Folder.Name="CensoredAssets"
Folder:SetAttribute("VFX",true)
local Floor1=Instance.new("Part", Folder)
Floor1.Name="Floor"
Floor1.Anchored=true
Floor1.CanCollide=false
Floor1.CanQuery=false
Floor1.CanTouch=false
Floor1.Transparency=1
Floor1.Reflectance=0
Floor1.Color=Color3.new(0,0,0)
Floor1.Material=Enum.Material.Plastic
Floor1.Size=Vector3.new(60,1,60)
--Floor.CFrame=CFrame.new(211.32192993164062,88.14154815673828,-367.06134033203125,0.6427632570266724,0,0.7660648822784424,0,1,0,-0.7660648822784424,0,0.6427632570266724)
--Floor.Orientation=Vector3.new(0.000000,50.001999,0.000000)
--Floor.Position=Vector3.new(211.321930,88.141548,-367.061340)



local Floor=Instance.new("Attachment", Floor1)
Floor.Name="Floor Aura"
Floor.Position=Vector3.new(0.000000,-1,0.000000)
Floor.Visible=false

local Black=Instance.new("ParticleEmitter", Floor)
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
Black.SpreadAngle=Vector2.new(15,15)
Black.ZOffset=-0.003000000026077032
Black.Texture="rbxassetid://16310636399"
Black.LockedToPart=true
Black.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Black.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Black.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Black.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Black.FlipbookStartRandom=false

local Black2=Instance.new("ParticleEmitter", Floor)
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
Black2.SpreadAngle=Vector2.new(-360,360)
Black2.ZOffset=-0.0020000000949949026
Black2.Texture="rbxassetid://14265652323"
Black2.LockedToPart=true
Black2.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Black2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Black2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Black2.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Black2.FlipbookStartRandom=false


local Sigil=Instance.new("ParticleEmitter", Floor)
Sigil.Name="staticsigil"
Sigil.Enabled=false
Sigil.Rate=4
Sigil.Lifetime=NumberRange.new(1.000000,1.000000)
Sigil.Speed=NumberRange.new(0.010000,0.010000)
Sigil.Rotation=NumberRange.new(45.000000,45.000000)
Sigil.RotSpeed=NumberRange.new(0.000000,0.000000)
Sigil.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,25.000000,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000)})
Sigil.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500736,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Sigil.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Sigil.LightEmission=1
Sigil.LightInfluence=0
Sigil.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Sigil.Drag=0
Sigil.EmissionDirection=Enum.NormalId.Top
Sigil.SpreadAngle=Vector2.new(0.010000,0.010000)
Sigil.ZOffset=0.800000011920929
Sigil.Texture="rbxassetid://102367309102388"
Sigil.LockedToPart=true
Sigil.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Sigil.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Sigil.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Sigil.FlipbookFramerate=NumberRange.new(15.000000,15.000000)
Sigil.FlipbookStartRandom=false

local MovingSigil=Instance.new("ParticleEmitter", Floor)
MovingSigil.Name="movingsigil"
MovingSigil.Enabled=false
MovingSigil.Rate=9
MovingSigil.Lifetime=NumberRange.new(3.000000,3.000000)
MovingSigil.Speed=NumberRange.new(0.700000,0.700000)
MovingSigil.Rotation=NumberRange.new(45.000000,45.000000)
MovingSigil.RotSpeed=NumberRange.new(0.000000,0.000000)
MovingSigil.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,25.000000,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000)})
MovingSigil.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.017722,0.918750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
MovingSigil.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
MovingSigil.LightEmission=1
MovingSigil.LightInfluence=0
MovingSigil.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
MovingSigil.Drag=0
MovingSigil.EmissionDirection=Enum.NormalId.Top
MovingSigil.SpreadAngle=Vector2.new(0.010000,0.010000)
MovingSigil.ZOffset=0.800000011920929
MovingSigil.Texture="rbxassetid://102367309102388"
MovingSigil.LockedToPart=true
MovingSigil.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
MovingSigil.FlipbookLayout=Enum.ParticleFlipbookLayout.None
MovingSigil.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
MovingSigil.FlipbookFramerate=NumberRange.new(15.000000,15.000000)
MovingSigil.FlipbookStartRandom=false

local Galaxy=Instance.new("ParticleEmitter", Floor)
Galaxy.Name="galax"
Galaxy.Enabled=true
Galaxy.Rate=10
Galaxy.Lifetime=NumberRange.new(1.000000,1.000000)
Galaxy.Speed=NumberRange.new(0.010000,0.010000)
Galaxy.Rotation=NumberRange.new(-360.000000,360.000000)
Galaxy.RotSpeed=NumberRange.new(0.000000,0.000000)
Galaxy.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.100000,4.836610,0.000000),NumberSequenceKeypoint.new(0.200000,8.462378,0.000000),NumberSequenceKeypoint.new(0.300000,11.852441,0.000000),NumberSequenceKeypoint.new(0.400000,14.976175,0.000000),NumberSequenceKeypoint.new(0.500000,17.795099,0.000000),NumberSequenceKeypoint.new(0.600000,20.259752,0.000000),NumberSequenceKeypoint.new(0.700000,22.305025,0.000000),NumberSequenceKeypoint.new(0.800000,23.843704,0.000000),NumberSequenceKeypoint.new(0.900000,24.763327,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000)})
Galaxy.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.504792,0.180328,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Galaxy.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Galaxy.LightEmission=1
Galaxy.LightInfluence=0
Galaxy.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Galaxy.Drag=0
Galaxy.EmissionDirection=Enum.NormalId.Top
Galaxy.SpreadAngle=Vector2.new(0.010000,0.010000)
Galaxy.ZOffset=2
Galaxy.Texture="rbxassetid://125890866475618"
Galaxy.LockedToPart=true
Galaxy.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Galaxy.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Galaxy.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Galaxy.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Galaxy.FlipbookStartRandom=false

local bg=Instance.new("ParticleEmitter", Floor)
bg.Name="bg"
bg.Enabled=true
bg.Rate=4
bg.Lifetime=NumberRange.new(1.600000,1.600000)
bg.Speed=NumberRange.new(0.010000,0.010000)
bg.Rotation=NumberRange.new(-360.000000,360.000000)
bg.RotSpeed=NumberRange.new(0.000000,0.000000)
bg.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.100000,5.316186,0.000000),NumberSequenceKeypoint.new(0.200000,9.395174,0.000000),NumberSequenceKeypoint.new(0.300000,13.208996,0.000000),NumberSequenceKeypoint.new(0.400000,16.723198,0.000000),NumberSequenceKeypoint.new(0.500000,19.894485,0.000000),NumberSequenceKeypoint.new(0.600000,22.667221,0.000000),NumberSequenceKeypoint.new(0.700000,24.968153,0.000000),NumberSequenceKeypoint.new(0.800000,26.699167,0.000000),NumberSequenceKeypoint.new(0.900000,27.733742,0.000000),NumberSequenceKeypoint.new(1.000000,28.000000,0.000000),NumberSequenceKeypoint.new(1.000000,28.000000,0.000000)})
bg.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.501266,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
bg.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
bg.LightEmission=-5
bg.LightInfluence=0
bg.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
bg.Drag=0
bg.EmissionDirection=Enum.NormalId.Top
bg.SpreadAngle=Vector2.new(0.010000,0.010000)
bg.ZOffset=0
bg.Texture="rbxassetid://12160798454"
bg.LockedToPart=true
bg.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
bg.FlipbookLayout=Enum.ParticleFlipbookLayout.None
bg.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
bg.FlipbookFramerate=NumberRange.new(20.000000,20.000000)
bg.FlipbookStartRandom=false

local Star=Instance.new("ParticleEmitter", Floor)
Star.Name="star"
Star.Enabled=true
Star.Rate=4
Star.Lifetime=NumberRange.new(2.500000,2.500000)
Star.Speed=NumberRange.new(0.010000,0.010000)
Star.Rotation=NumberRange.new(0.000000,0.000000)
Star.RotSpeed=NumberRange.new(0.000000,0.000000)
Star.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,0.003108,0.000000),NumberSequenceKeypoint.new(0.200000,0.028331,0.000000),NumberSequenceKeypoint.new(0.300000,0.110457,0.000000),NumberSequenceKeypoint.new(0.400000,0.307638,0.000000),NumberSequenceKeypoint.new(0.500000,0.721428,0.000000),NumberSequenceKeypoint.new(0.600000,1.539779,0.000000),NumberSequenceKeypoint.new(0.700000,3.136667,0.000000),NumberSequenceKeypoint.new(0.800000,6.314013,0.000000),NumberSequenceKeypoint.new(0.900000,12.792335,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000)})
Star.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.502778,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Star.LightEmission=4
Star.LightInfluence=0
Star.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Star.Drag=0
Star.EmissionDirection=Enum.NormalId.Top
Star.SpreadAngle=Vector2.new(0.010000,0.010000)
Star.ZOffset=0.10000000149011612
Star.Texture="rbxassetid://17391818367"
Star.LockedToPart=true
Star.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Star.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star.FlipbookStartRandom=false

local Light=Instance.new("PointLight", Floor)
Light.Name="PointLight"

local BG=Instance.new("ParticleEmitter", Floor)
BG.Name="bg2"
BG.Enabled=true
BG.Rate=15
BG.Lifetime=NumberRange.new(1.000000,1.000000)
BG.Speed=NumberRange.new(0.010000,0.010000)
BG.Rotation=NumberRange.new(-360.000000,360.000000)
BG.RotSpeed=NumberRange.new(0.000000,0.000000)
BG.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,13.721601,0.000000),NumberSequenceKeypoint.new(1.000000,45.000000,0.000000)})
BG.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.504167,0.775000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
BG.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
BG.LightEmission=-1
BG.LightInfluence=0
BG.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
BG.Drag=0
BG.EmissionDirection=Enum.NormalId.Top
BG.SpreadAngle=Vector2.new(0.010000,0.010000)
BG.ZOffset=0.009999999776482582
BG.Texture="rbxassetid://15011478368"
BG.LockedToPart=true
BG.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BG.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BG.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BG.FlipbookFramerate=NumberRange.new(20.000000,20.000000)
BG.FlipbookStartRandom=false

local Rings=Instance.new("ParticleEmitter", Floor)
Rings.Name="rings"
Rings.Enabled=true
Rings.Rate=15
Rings.Lifetime=NumberRange.new(1.000000,1.000000)
Rings.Speed=NumberRange.new(0.010000,0.010000)
Rings.Rotation=NumberRange.new(-360.000000,360.000000)
Rings.RotSpeed=NumberRange.new(0.000000,0.000000)
Rings.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,15.000000,0.000000),NumberSequenceKeypoint.new(1.000000,15.000000,0.000000)})
Rings.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.537500,0.706250,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Rings.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Rings.LightEmission=1
Rings.LightInfluence=0
Rings.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Rings.Drag=0
Rings.EmissionDirection=Enum.NormalId.Top
Rings.SpreadAngle=Vector2.new(0.010000,0.010000)
Rings.ZOffset=2
Rings.Texture="http://www.roblox.com/asset/?id=116262361010032"
Rings.LockedToPart=true
Rings.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Rings.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Rings.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Rings.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Rings.FlipbookStartRandom=false

local Grain=Instance.new("ParticleEmitter", Floor)
Grain.Name="grain"
Grain.Enabled=true
Grain.Rate=10
Grain.Lifetime=NumberRange.new(1.000000,1.000000)
Grain.Speed=NumberRange.new(0.010000,0.010000)
Grain.Rotation=NumberRange.new(-360.000000,360.000000)
Grain.RotSpeed=NumberRange.new(0.000000,0.000000)
Grain.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.100000,1.258059,0.000000),NumberSequenceKeypoint.new(0.200000,2.219050,0.000000),NumberSequenceKeypoint.new(0.300000,3.791839,0.000000),NumberSequenceKeypoint.new(0.400000,5.857745,0.000000),NumberSequenceKeypoint.new(0.500000,8.329341,0.000000),NumberSequenceKeypoint.new(0.600000,11.142751,0.000000),NumberSequenceKeypoint.new(0.700000,14.249990,0.000000),NumberSequenceKeypoint.new(0.800000,17.613960,0.000000),NumberSequenceKeypoint.new(0.900000,21.205240,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000)})
Grain.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.504792,0.180328,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Grain.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Grain.LightEmission=1
Grain.LightInfluence=0
Grain.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Grain.Drag=0
Grain.EmissionDirection=Enum.NormalId.Top
Grain.SpreadAngle=Vector2.new(0.010000,0.010000)
Grain.ZOffset=2
Grain.Texture="http://www.roblox.com/asset/?id=103091426421829"
Grain.LockedToPart=true
Grain.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Grain.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Grain.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Grain.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Grain.FlipbookStartRandom=false

local Grain1=Instance.new("ParticleEmitter", Floor)
Grain1.Name="grainGK"
Grain1.Enabled=true
Grain1.Rate=7
Grain1.Lifetime=NumberRange.new(1.000000,1.000000)
Grain1.Speed=NumberRange.new(0.010000,0.010000)
Grain1.Rotation=NumberRange.new(-360.000000,360.000000)
Grain1.RotSpeed=NumberRange.new(0.000000,0.000000)
Grain1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.100000,1.258059,0.000000),NumberSequenceKeypoint.new(0.200000,2.219050,0.000000),NumberSequenceKeypoint.new(0.300000,3.791839,0.000000),NumberSequenceKeypoint.new(0.400000,5.857745,0.000000),NumberSequenceKeypoint.new(0.500000,8.329341,0.000000),NumberSequenceKeypoint.new(0.600000,11.142751,0.000000),NumberSequenceKeypoint.new(0.700000,14.249990,0.000000),NumberSequenceKeypoint.new(0.800000,17.613960,0.000000),NumberSequenceKeypoint.new(0.900000,21.205240,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000),NumberSequenceKeypoint.new(1.000000,25.000000,0.000000)})
Grain1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Grain1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Grain1.LightEmission=1
Grain1.LightInfluence=0
Grain1.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Grain1.Drag=0
Grain1.EmissionDirection=Enum.NormalId.Top
Grain1.SpreadAngle=Vector2.new(0.010000,0.010000)
Grain1.ZOffset=2
Grain1.Texture="rbxassetid://72369952359901"
Grain1.LockedToPart=true
Grain1.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Grain1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Grain1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Grain1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Grain1.FlipbookStartRandom=false

local Swirl=Instance.new("ParticleEmitter", Floor)
Swirl.Name="swirlGK"
Swirl.Enabled=true
Swirl.Rate=15
Swirl.Lifetime=NumberRange.new(1.000000,1.000000)
Swirl.Speed=NumberRange.new(0.010000,0.010000)
Swirl.Rotation=NumberRange.new(-360.000000,360.000000)
Swirl.RotSpeed=NumberRange.new(-120.000000,-120.000000)
Swirl.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.100000,3.676751,0.000000),NumberSequenceKeypoint.new(0.200000,7.151445,0.000000),NumberSequenceKeypoint.new(0.300000,10.400256,0.000000),NumberSequenceKeypoint.new(0.400000,13.393834,0.000000),NumberSequenceKeypoint.new(0.500000,16.095303,0.000000),NumberSequenceKeypoint.new(0.600000,18.457262,0.000000),NumberSequenceKeypoint.new(0.700000,20.417315,0.000000),NumberSequenceKeypoint.new(0.800000,21.891884,0.000000),NumberSequenceKeypoint.new(0.900000,22.773188,0.000000),NumberSequenceKeypoint.new(1.000000,23.000000,0.000000),NumberSequenceKeypoint.new(1.000000,23.000000,0.000000)})
Swirl.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.504792,0.180328,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Swirl.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Swirl.LightEmission=1
Swirl.LightInfluence=0
Swirl.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
Swirl.Drag=0
Swirl.EmissionDirection=Enum.NormalId.Top
Swirl.SpreadAngle=Vector2.new(0.010000,0.010000)
Swirl.ZOffset=2
Swirl.Texture="rbxassetid://120353893817089"
Swirl.LockedToPart=true
Swirl.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Swirl.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Swirl.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Swirl.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Swirl.FlipbookStartRandom=false

local Wind=Instance.new("ParticleEmitter", Floor)
Wind.Name="wind"
Wind.Enabled=true
Wind.Rate=25
Wind.Lifetime=NumberRange.new(1.000000,1.000000)
Wind.Speed=NumberRange.new(1.000000,1.000000)
Wind.Rotation=NumberRange.new(-360.000000,360.000000)
Wind.RotSpeed=NumberRange.new(-200.000000,-100.000000)
Wind.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,5.000000),NumberSequenceKeypoint.new(0.100000,3.357034,5.000000),NumberSequenceKeypoint.new(0.200000,6.529580,5.000000),NumberSequenceKeypoint.new(0.300000,9.495886,5.000000),NumberSequenceKeypoint.new(0.400000,12.229154,5.000000),NumberSequenceKeypoint.new(0.500000,14.695711,5.000000),NumberSequenceKeypoint.new(0.600000,16.852283,5.000000),NumberSequenceKeypoint.new(0.700000,18.641897,5.000000),NumberSequenceKeypoint.new(0.800000,19.988241,5.000000),NumberSequenceKeypoint.new(0.900000,20.792910,5.000000),NumberSequenceKeypoint.new(1.000000,21.000000,5.000000),NumberSequenceKeypoint.new(1.000000,21.000000,5.000000)})
Wind.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.493610,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Wind.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
Wind.LightEmission=1
Wind.LightInfluence=0
Wind.Acceleration=Vector3.new(0.000000,3.000000,0.000000)
Wind.Drag=0
Wind.EmissionDirection=Enum.NormalId.Top
Wind.SpreadAngle=Vector2.new(15,15)
Wind.ZOffset=2
Wind.Texture="rbxassetid://13580336752"
Wind.LockedToPart=true
Wind.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Wind.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Wind.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Wind.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Wind.FlipbookStartRandom=false

local FloorShine=Instance.new("ParticleEmitter", Floor)
FloorShine.Name="floorshine"
FloorShine.Enabled=true
FloorShine.Rate=7.5
FloorShine.Lifetime=NumberRange.new(1.500000,1.500000)
FloorShine.Speed=NumberRange.new(0.007200,0.007200)
FloorShine.Rotation=NumberRange.new(-360.000000,360.000000)
FloorShine.RotSpeed=NumberRange.new(0.000000,0.000000)
FloorShine.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.100000,1.043010,0.000000),NumberSequenceKeypoint.new(0.200000,1.203175,0.000000),NumberSequenceKeypoint.new(0.300000,1.465307,0.000000),NumberSequenceKeypoint.new(0.400000,1.809624,0.000000),NumberSequenceKeypoint.new(0.500000,2.221557,0.000000),NumberSequenceKeypoint.new(0.600000,2.690459,0.000000),NumberSequenceKeypoint.new(0.700000,3.208332,0.000000),NumberSequenceKeypoint.new(0.800000,3.768993,0.000000),NumberSequenceKeypoint.new(0.900000,4.367540,0.000000),NumberSequenceKeypoint.new(1.000000,5.000000,0.000000),NumberSequenceKeypoint.new(1.000000,5.000000,0.000000)})
FloorShine.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.856962,0.512500,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
FloorShine.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.365664,0.489958,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.365664,0.489958,1.000000))})
FloorShine.LightEmission=1
FloorShine.LightInfluence=0
FloorShine.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
FloorShine.Drag=0
FloorShine.EmissionDirection=Enum.NormalId.Top
FloorShine.SpreadAngle=Vector2.new(0.010000,0.010000)
FloorShine.ZOffset=2.1514999866485596
FloorShine.Texture="https://assetgame.roblox.com/asset/?id=11037552911&assetName=Flare24"
FloorShine.LockedToPart=true
FloorShine.Orientation=Enum.ParticleOrientation.FacingCamera
FloorShine.FlipbookLayout=Enum.ParticleFlipbookLayout.None
FloorShine.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
FloorShine.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
FloorShine.FlipbookStartRandom=false




local PixelLightning=Instance.new("ParticleEmitter", Floor1)
PixelLightning.Name="pixel lightning"
PixelLightning.Enabled=true
PixelLightning.Rate=30
PixelLightning.Lifetime=NumberRange.new(0.100000,0.150000)
PixelLightning.Speed=NumberRange.new(0.240000,0.240000)
PixelLightning.Rotation=NumberRange.new(-1000.000000,1000.000000)
PixelLightning.RotSpeed=NumberRange.new(0.000000,0.000000)
PixelLightning.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.800000,1.200000),NumberSequenceKeypoint.new(1.000000,1.800000,1.200000)})
PixelLightning.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
PixelLightning.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
PixelLightning.LightEmission=0.5
PixelLightning.LightInfluence=0
PixelLightning.Acceleration=Vector3.new(0.000000,0.000000,0.000001)
PixelLightning.Drag=0
PixelLightning.EmissionDirection=Enum.NormalId.Top
PixelLightning.SpreadAngle=Vector2.new(0.000000,0.000000)
PixelLightning.ZOffset=4.09499979019165
PixelLightning.Texture="rbxassetid://13931232259"
PixelLightning.LockedToPart=true
PixelLightning.Orientation=Enum.ParticleOrientation.FacingCamera
PixelLightning.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
PixelLightning.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
PixelLightning.FlipbookFramerate=NumberRange.new(32.000000,32.000000)
PixelLightning.FlipbookStartRandom=false

local Fog=Instance.new("ParticleEmitter", Floor1)
Fog.Name="fog1"
Fog.Enabled=true
Fog.Rate=100
Fog.Lifetime=NumberRange.new(0.300000,0.300000)
Fog.Speed=NumberRange.new(84.000000,84.000000)
Fog.Rotation=NumberRange.new(-1000.000000,1000.000000)
Fog.RotSpeed=NumberRange.new(-20.000000,20.000000)
Fog.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,14.856001,3.880902),NumberSequenceKeypoint.new(1.000000,18.000000,3.618248)})
Fog.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500529,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Fog.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Fog.LightEmission=1
Fog.LightInfluence=0
Fog.Acceleration=Vector3.new(0.000000,14.400001,0.000000)
Fog.Drag=1.399999976158142
Fog.EmissionDirection=Enum.NormalId.Top
Fog.SpreadAngle=Vector2.new(-20.000000,20.000000)
Fog.ZOffset=2.005000114440918
Fog.Texture="rbxassetid://139230833136379"
Fog.LockedToPart=true
Fog.Orientation=Enum.ParticleOrientation.VelocityParallel
Fog.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Fog.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Fog.FlipbookFramerate=NumberRange.new(2.000000,4.000000)
Fog.FlipbookStartRandom=true

local Fog2=Instance.new("ParticleEmitter", Floor1)
Fog2.Name="fog2"
Fog2.Enabled=true
Fog2.Rate=60
Fog2.Lifetime=NumberRange.new(0.400000,0.400000)
Fog2.Speed=NumberRange.new(12.000000,12.000000)
Fog2.Rotation=NumberRange.new(-1000.000000,1000.000000)
Fog2.RotSpeed=NumberRange.new(-50.000000,50.000000)
Fog2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,14.856001,3.880902),NumberSequenceKeypoint.new(1.000000,18.000000,3.618248)})
Fog2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500529,0.900000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Fog2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Fog2.LightEmission=0
Fog2.LightInfluence=0
Fog2.Acceleration=Vector3.new(0.000000,264.000000,0.000000)
Fog2.Drag=0
Fog2.EmissionDirection=Enum.NormalId.Top
Fog2.SpreadAngle=Vector2.new(-10.000000,10.000000)
Fog2.ZOffset=2.00600004196167
Fog2.Texture="http://www.roblox.com/asset/?id=109170795600115"
Fog2.LockedToPart=true
Fog2.Orientation=Enum.ParticleOrientation.VelocityParallel
Fog2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Fog2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Fog2.FlipbookFramerate=NumberRange.new(2.000000,4.000000)
Fog2.FlipbookStartRandom=true

local Dots=Instance.new("ParticleEmitter", Floor1)
Dots.Name="dots"
Dots.Enabled=true
Dots.Rate=94
Dots.Lifetime=NumberRange.new(0.325000,0.325000)
Dots.Speed=NumberRange.new(36.000000,48.000000)
Dots.Rotation=NumberRange.new(-1000.000000,1000.000000)
Dots.RotSpeed=NumberRange.new(-30.000000,30.000000)
Dots.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,14.856001,3.880902),NumberSequenceKeypoint.new(1.000000,18.000000,6.023616)})
Dots.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500529,0.818750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Dots.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Dots.LightEmission=1
Dots.LightInfluence=0
Dots.Acceleration=Vector3.new(0.000000,336.000000,0.000000)
Dots.Drag=0
Dots.EmissionDirection=Enum.NormalId.Top
Dots.SpreadAngle=Vector2.new(-100.000000,100.000000)
Dots.ZOffset=2.1115000247955322
Dots.Texture="http://www.roblox.com/asset/?id=132477151216456"
Dots.LockedToPart=true
Dots.Orientation=Enum.ParticleOrientation.FacingCamera
Dots.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dots.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dots.FlipbookFramerate=NumberRange.new(2.000000,4.000000)
Dots.FlipbookStartRandom=true

local Debris=Instance.new("ParticleEmitter", Floor1)
Debris.Name="debri1"
Debris.Enabled=true
Debris.Rate=70
Debris.Lifetime=NumberRange.new(0.400000,0.400000)
Debris.Speed=NumberRange.new(48.000000,72.000000)
Debris.Rotation=NumberRange.new(-1000.000000,1000.000000)
Debris.RotSpeed=NumberRange.new(1200.000000,1400.000000)
Debris.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.050420,0.000000),NumberSequenceKeypoint.new(0.044400,0.840000,0.150000),NumberSequenceKeypoint.new(0.714000,0.600000,0.049080),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Debris.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.200748,0.037500,0.000000),NumberSequenceKeypoint.new(0.776808,0.143750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Debris.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Debris.LightEmission=1
Debris.LightInfluence=0
Debris.Acceleration=Vector3.new(0.000000,192.000000,0.000000)
Debris.Drag=0
Debris.EmissionDirection=Enum.NormalId.Top
Debris.SpreadAngle=Vector2.new(-50.000000,50.000000)
Debris.ZOffset=0.004999999888241291
Debris.Texture="http://www.roblox.com/asset/?id=110594086595456"
Debris.LockedToPart=true
Debris.Orientation=Enum.ParticleOrientation.VelocityParallel
Debris.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debris.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Debris.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Debris.FlipbookStartRandom=false

local E=Instance.new("ParticleEmitter", Floor1)
E.Name="E"
E.Enabled=true
E.Rate=30
E.Lifetime=NumberRange.new(0.250000,0.400000)
E.Speed=NumberRange.new(7.200000,7.200000)
E.Rotation=NumberRange.new(0.000000,0.000000)
E.RotSpeed=NumberRange.new(0.000000,0.000000)
E.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.051059,1.215000,0.128107),NumberSequenceKeypoint.new(0.123288,0.000000,0.000000),NumberSequenceKeypoint.new(0.205479,0.945000,0.472500),NumberSequenceKeypoint.new(0.280199,0.000000,0.000000),NumberSequenceKeypoint.new(0.352428,0.742500,0.472500),NumberSequenceKeypoint.new(0.435865,0.000000,0.000000),NumberSequenceKeypoint.new(0.523039,0.742500,0.742500),NumberSequenceKeypoint.new(0.591532,0.000000,0.000000),NumberSequenceKeypoint.new(0.709838,1.080000,1.080000),NumberSequenceKeypoint.new(0.790785,0.000000,0.000000),NumberSequenceKeypoint.new(0.858032,1.485000,0.607500),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
E.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
E.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
E.LightEmission=1
E.LightInfluence=0
E.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
E.Drag=2
E.EmissionDirection=Enum.NormalId.Top
E.SpreadAngle=Vector2.new(0.000000,0.000000)
E.ZOffset=0
E.Texture="rbxassetid://15431912045"
E.LockedToPart=false
E.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
E.FlipbookLayout=Enum.ParticleFlipbookLayout.None
E.FlipbookMode=Enum.ParticleFlipbookMode.Loop
E.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
E.FlipbookStartRandom=false

local Debri3=Instance.new("ParticleEmitter", Floor1)
Debri3.Name="debri2"
Debri3.Enabled=true
Debri3.Rate=60
Debri3.Lifetime=NumberRange.new(0.400000,0.400000)
Debri3.Speed=NumberRange.new(48.000000,72.000000)
Debri3.Rotation=NumberRange.new(-1000.000000,1000.000000)
Debri3.RotSpeed=NumberRange.new(-720.000000,720.000000)
Debri3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.050420,0.000000),NumberSequenceKeypoint.new(0.043900,0.720000,0.150000),NumberSequenceKeypoint.new(0.709000,0.480000,0.049560),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Debri3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.200748,0.037500,0.000000),NumberSequenceKeypoint.new(0.776808,0.143750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Debri3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Debri3.LightEmission=1
Debri3.LightInfluence=0
Debri3.Acceleration=Vector3.new(0.000000,192.000000,0.000000)
Debri3.Drag=0
Debri3.EmissionDirection=Enum.NormalId.Top
Debri3.SpreadAngle=Vector2.new(-50.000000,50.000000)
Debri3.ZOffset=0.006000000052154064
Debri3.Texture="rbxassetid://14973884209"
Debri3.LockedToPart=true
Debri3.Orientation=Enum.ParticleOrientation.VelocityParallel
Debri3.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debri3.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Debri3.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Debri3.FlipbookStartRandom=false

local Debri4=Instance.new("ParticleEmitter", Floor1)
Debri4.Name="debriblack"
Debri4.Enabled=true
Debri4.Rate=70
Debri4.Lifetime=NumberRange.new(0.450000,0.450000)
Debri4.Speed=NumberRange.new(36.000000,60.000004)
Debri4.Rotation=NumberRange.new(0.000000,0.000000)
Debri4.RotSpeed=NumberRange.new(0.000000,0.000000)
Debri4.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.099894,0.900000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Debri4.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.200748,0.037500,0.000000),NumberSequenceKeypoint.new(0.776808,0.143750,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Debri4.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.310000,1.000000,0.772300)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.310000,1.000000,0.772300))})
Debri4.LightEmission=-50
Debri4.LightInfluence=0
Debri4.Acceleration=Vector3.new(0.000000,192.000000,0.000000)
Debri4.Drag=0
Debri4.EmissionDirection=Enum.NormalId.Top
Debri4.SpreadAngle=Vector2.new(-50.000000,50.000000)
Debri4.ZOffset=0.006000000052154064
Debri4.Texture="rbxassetid://13819794054"
Debri4.LockedToPart=true
Debri4.Orientation=Enum.ParticleOrientation.VelocityParallel
Debri4.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Debri4.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Debri4.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Debri4.FlipbookStartRandom=false

local FogBlack=Instance.new("ParticleEmitter", Floor1)
FogBlack.Name="fogblack2"
FogBlack.Enabled=true
FogBlack.Rate=300
FogBlack.Lifetime=NumberRange.new(0.350000,0.350000)
FogBlack.Speed=NumberRange.new(72.000000,72.000000)
FogBlack.Rotation=NumberRange.new(-1000.000000,1000.000000)
FogBlack.RotSpeed=NumberRange.new(-30.000000,30.000000)
FogBlack.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,14.649830,0.000000),NumberSequenceKeypoint.new(1.000000,19.564117,0.000000)})
FogBlack.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499471,0.825000,0.018750),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
FogBlack.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
FogBlack.LightEmission=-3
FogBlack.LightInfluence=0
FogBlack.Acceleration=Vector3.new(0.000000,144.000000,0.000000)
FogBlack.Drag=0.6000000238418579
FogBlack.EmissionDirection=Enum.NormalId.Top
FogBlack.SpreadAngle=Vector2.new(-50.000000,50.000000)
FogBlack.ZOffset=-15.001999855041504
FogBlack.Texture="rbxassetid://13365068138"
FogBlack.LockedToPart=true
FogBlack.Orientation=Enum.ParticleOrientation.FacingCamera
FogBlack.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
FogBlack.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
FogBlack.FlipbookFramerate=NumberRange.new(2.000000,4.000000)
FogBlack.FlipbookStartRandom=true

local FogBlack2=Instance.new("ParticleEmitter", Floor1)
FogBlack2.Name="fogblack"
FogBlack2.Enabled=true
FogBlack2.Rate=160
FogBlack2.Lifetime=NumberRange.new(0.350000,0.350000)
FogBlack2.Speed=NumberRange.new(48.000000,48.000000)
FogBlack2.Rotation=NumberRange.new(-1000.000000,1000.000000)
FogBlack2.RotSpeed=NumberRange.new(-30.000000,30.000000)
FogBlack2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,8.021751,3.880902),NumberSequenceKeypoint.new(0.339928,16.695385,3.693510),NumberSequenceKeypoint.new(1.000000,18.177370,3.618248)})
FogBlack2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499471,0.825000,0.018750),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
FogBlack2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
FogBlack2.LightEmission=-3
FogBlack2.LightInfluence=0
FogBlack2.Acceleration=Vector3.new(0.000000,384.000000,0.000000)
FogBlack2.Drag=0.6000000238418579
FogBlack2.EmissionDirection=Enum.NormalId.Top
FogBlack2.SpreadAngle=Vector2.new(-180.000000,180.000000)
FogBlack2.ZOffset=-15.00100040435791
FogBlack2.Texture="rbxassetid://12683695494"
FogBlack2.LockedToPart=true
FogBlack2.Orientation=Enum.ParticleOrientation.FacingCamera
FogBlack2.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
FogBlack2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
FogBlack2.FlipbookFramerate=NumberRange.new(2.000000,4.000000)
FogBlack2.FlipbookStartRandom=true












Floor1.CastShadow=true
Floor1.Massless=true
local part=i("Part",Folder)
part.Size=v3(2,.5,0)
part.CastShadow=false 
part.Name="Censored"
part.CanCollide=false
part.Transparency=0
part.Color=c3()
local att=i("Attachment",part)
att.Position=v3(0,0,.1)
local e19=Instance.new("ParticleEmitter",att)
e19.Name="EyeShine"
e19.Color=cs({
  csk(0,rgb(255,255,255)),
  csk(1,rgb(255,255,255))
})
e19.Brightness=25
e19.LightInfluence=0
e19.LightEmission=0
--0 -0.5 0 1 -0.5 0 
e19.Orientation="FacingCamera"
e19.Squash=ns({
  nsk(0,-1.5),
  nsk(1,-1.5)
})
e19.Size=ns({
  nsk(0,0),
  nsk(.1,5),
  nsk(1,0),
})
e19.Transparency=ns({
  nsk(0,1),
  nsk(.5,.35),
  nsk(1,1),
})
e19.ZOffset=0
e19.Texture="rbxassetid://82921243876307"
e19.EmissionDirection="Top"
e19.Enabled=true 
e19.Lifetime=nr(.3,.3)
e19.Rate=350
e19.Rotation=nr(0,0)
e19.Rotation=nr(0,0)
e19.RotSpeed=nr(0,0)
e19.Speed=nr(0,0)
e19.SpreadAngle=v2(0,0)
e19.VelocitySpread=0 
e19.FlipbookFramerate=nr(1,1)
e19.FlipbookLayout="None"
e19.FlipbookMode="OneShot"
local li=i("PointLight",att)
local sgui=i("SurfaceGui",part)
sgui.Name="CensoreSgui"
sgui.CanvasSize=v2(800,200)
sgui.Face="Back"
sgui.PixelsPerStud=250
sgui.AlwaysOnTop=true
local tlabel=i("TextLabel",sgui)
tlabel.Size=u2scale(1,1)
tlabel.TextScaled=true
tlabel.Text="Censored"
tlabel.TextColor3=rgb(0,200,0)
tlabel.BackgroundColor3=c3()
tlabel.FontFace=Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic)
local weld=i("Weld",Folder)
weld.Name="CensoreWeld"
weld.Part0=part 
weld.Part1=head
weld.C0=cf(0,-0.1,-0.625)
local th={
  "C#NS#ORED!!",
  "C#NS#R#D",
  "CENS#ROD",
  "########??",
  "CENSORED!!!",
  "CE###RED",
  "#E###RED",
}
local cv
local cb=1
cv=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("CensoredAssets") then 
cv:Disconnect()
end
cb+=1

--local Head=SafePart(HTarget)
pcall(function()
weld.Part1=head
weld.C0=cf(0,-0.1,0.625)
sgui.Face="Front"
end)
Floor1.Rotation=v3(0,cb*1.5+sound.PlaybackLoudness/450 ,0)
local root=rootpart1
TweenFunction(Floor1,.075,"pos",v3(root.Position.X, root.Position.Y, root.Position.Z)):Play()
tlabel.Text=th[mrandom(1,#th)]
if sound.PlaybackLoudness>mrandom(300,375) then 
e19.ZOffset=1
e19.LightEmission=1+1*cos(cb/10)
e19.LightInfluence=1
e19.Transparency=ns({
  nsk(0,1),
  nsk(.5,.35),
  nsk(1,1),
})
e19:Emit(2)
local g=mrandom(1,5)
if g==3 then 
sgui.AlwaysOnTop=true
else
sgui.AlwaysOnTop=false
end
else 
local h=mrandom(1,10)
if h==3 then 
sgui.AlwaysOnTop=false
else
sgui.AlwaysOnTop=true
end
--sgui.AlwaysOnTop=true
e19.Enabled=false
end
sgui.Brightness=1000+sound.PlaybackLoudness/5
if sound.PlaybackLoudness>mrandom(200,300) then
for _,g in Folder:GetDescendants() do 
if g:IsA("ParticleEmitter") and g.Name~=FogBlack.Name and g.Name~=FogBlack2.Name and g.Name~=Debri4.Name then 
g.Color=cs({
  csk(0,rgb(0,mrandom(100,200),0)),
  csk(1,rgb(0,mrandom(100,200),0)),
})
g.Brightness=5+sound.PlaybackLoudness/50 
end 
end
for _,g in Folder:GetDescendants() do 
if g:IsA("PointLight") then 
g.Color=rgb(0,mrandom(100,200),0)
g.Range=5+sound.PlaybackLoudness/50 
g.Brightness=7.5+sound.PlaybackLoudness/35
end 
end
tlabel.TextColor3=rgb(0,200,0)
sgui.SizingMode="PixelsPerStud"
sgui.PixelsPerStud=250
else 
sgui.SizingMode="FixedSize"
sgui.PixelsPerStud=500
tlabel.TextColor3=rgb(0,10,0)
for _,g in Folder:GetDescendants() do 
if g:IsA("ParticleEmitter") then 
g.Color=cs({
  csk(0,rgb(0,0,0)),
  csk(1,rgb(0,0,0)),
})
g.Brightness=1+sound.PlaybackLoudness/100 
for _,g in Folder:GetDescendants() do 
if g:IsA("PointLight") then 
g.Color=rgb(0,mrandom(20,100),0)
g.Range=2+sound.PlaybackLoudness/250 
g.Brightness=3.5+sound.PlaybackLoudness/100
end 
end
end 
end
end
end)


end
CensoredAssets()