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
local Name="Tachyon"



function Tachyon()
if scriptfolder:FindFirstChild(Name.."Assets") then return end
local foldah=i("Folder",scriptfolder)
foldah.Name=Name.."Assets"
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

local Floor_623=i("Attachment", Floor)
Floor_623.Name="Floor"
Floor_623:SetAttribute("AuraInstance", true)
Floor_623.Visible=false
Floor_623.CFrame=cf(0,-1.75,0,1,0,0,0,1,0,0,0,1)



local Ripple_624=i("ParticleEmitter", Floor_623)
Ripple_624.Name="Ripple"
Ripple_624:SetAttribute("AuraInstance", true)
Ripple_624.Enabled=true
Ripple_624.Rate=3
Ripple_624.Lifetime=nr(1.5,1.5)
Ripple_624.Speed=nr(0.0010000000474974513,0.0010000000474974513)
Ripple_624.Rotation=nr(-1000,1000)
Ripple_624.RotSpeed=nr(10,50)
Ripple_624.Size=ns({nsk(0.000000,1.116764,0.000000),nsk(1.000000,40.000000,0.000000)})
Ripple_624.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507436,0.057000,0.000000),nsk(1.000000,1.000000,0.000000)})
Ripple_624.Color=cs({csk(0.000000,c3(0.406546,0.914626,0.481637)),csk(1.000000,c3(0.403922,0.913725,0.857852))})
Ripple_624.LightEmission=1
Ripple_624.LightInfluence=0
Ripple_624.Acceleration=v3(0.000000,0.002000,0.000010)
Ripple_624.Drag=0
Ripple_624.EmissionDirection=Enum.NormalId.Top
Ripple_624.SpreadAngle=v2(0.000000,0.000000)
Ripple_624.ZOffset=0.4000000059604645
Ripple_624.Texture="rbxassetid://112316731634952"
Ripple_624.LockedToPart=true
Ripple_624.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Ripple_624.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Ripple_624.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Ripple_624.FlipbookFramerate=nr(1,1)
Ripple_624.FlipbookStartRandom=false
Ripple_624.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Ripple_624.Brightness=1



local Slash1_625=i("ParticleEmitter", Floor_623)
Slash1_625.Name="Slash 1"
Slash1_625:SetAttribute("AuraInstance", true)
Slash1_625.Enabled=true
Slash1_625.Rate=3
Slash1_625.Lifetime=nr(1.5,1.5)
Slash1_625.Speed=nr(1,1)
Slash1_625.Rotation=nr(-1000,1000)
Slash1_625.RotSpeed=nr(-10,10)
Slash1_625.Size=ns({nsk(0.000000,1.116764,0.000000),nsk(1.000000,35.801319,0.000000)})
Slash1_625.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507436,0.057000,0.000000),nsk(1.000000,1.000000,0.000000)})
Slash1_625.Color=cs({csk(0.000000,c3(0.196078,0.778486,0.917647)),csk(1.000000,c3(0.373297,0.876158,0.732307))})
Slash1_625.LightEmission=1
Slash1_625.LightInfluence=0
Slash1_625.Acceleration=v3(0.000000,0.002000,0.000010)
Slash1_625.Drag=0
Slash1_625.EmissionDirection=Enum.NormalId.Top
Slash1_625.SpreadAngle=v2(0.000000,0.000000)
Slash1_625.ZOffset=0.0010000000474974513
Slash1_625.Texture="rbxassetid://109574326366882"
Slash1_625.LockedToPart=true
Slash1_625.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Slash1_625.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Slash1_625.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Slash1_625.FlipbookFramerate=nr(1,1)
Slash1_625.FlipbookStartRandom=false
Slash1_625.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Slash1_625.Brightness=1



local Circle2_626=i("ParticleEmitter", Floor_623)
Circle2_626.Name="Circle 2"
Circle2_626:SetAttribute("AuraInstance", true)
Circle2_626.Enabled=true
Circle2_626.Rate=3
Circle2_626.Lifetime=nr(1.5,1.5)
Circle2_626.Speed=nr(1,1)
Circle2_626.Rotation=nr(-1000,1000)
Circle2_626.RotSpeed=nr(-10,10)
Circle2_626.Size=ns({nsk(0.000000,1.116764,0.000000),nsk(1.000000,35.268818,0.000000)})
Circle2_626.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507436,0.057000,0.000000),nsk(1.000000,1.000000,0.000000)})
Circle2_626.Color=cs({csk(0.000000,c3(0.372549,0.874510,0.729412)),csk(1.000000,c3(0.372549,0.874510,0.729412))})
Circle2_626.LightEmission=1
Circle2_626.LightInfluence=0
Circle2_626.Acceleration=v3(0.000000,0.002000,0.000010)
Circle2_626.Drag=0
Circle2_626.EmissionDirection=Enum.NormalId.Top
Circle2_626.SpreadAngle=v2(0.000000,0.000000)
Circle2_626.ZOffset=0.0010000000474974513
Circle2_626.Texture="rbxassetid://98842854910901"
Circle2_626.LockedToPart=true
Circle2_626.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Circle2_626.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Circle2_626.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Circle2_626.FlipbookFramerate=nr(1,1)
Circle2_626.FlipbookStartRandom=false
Circle2_626.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Circle2_626.Brightness=1



local Circle2_627=i("ParticleEmitter", Floor_623)
Circle2_627.Name="Circle 2"
Circle2_627:SetAttribute("AuraInstance", true)
Circle2_627.Enabled=true
Circle2_627.Rate=2
Circle2_627.Lifetime=nr(2,2)
Circle2_627.Speed=nr(1.0149261951446533,1.0149261951446533)
Circle2_627.Rotation=nr(-1000,1000)
Circle2_627.RotSpeed=nr(-10,10)
Circle2_627.Size=ns({nsk(0.000000,13.568774,0.000000),nsk(1.000000,32.697472,3.060324)})
Circle2_627.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507436,0.057000,0.000000),nsk(1.000000,1.000000,0.000000)})
Circle2_627.Color=cs({csk(0.000000,c3(0.400000,0.854902,0.909804)),csk(1.000000,c3(0.400000,0.854902,0.909804))})
Circle2_627.LightEmission=0
Circle2_627.LightInfluence=0
Circle2_627.Acceleration=v3(0.000000,0.002000,0.000010)
Circle2_627.Drag=0
Circle2_627.EmissionDirection=Enum.NormalId.Top
Circle2_627.SpreadAngle=v2(0.000000,0.000000)
Circle2_627.ZOffset=0.0010000000474974513
Circle2_627.Texture="rbxassetid://104628883702830"
Circle2_627.LockedToPart=true
Circle2_627.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Circle2_627.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Circle2_627.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Circle2_627.FlipbookFramerate=nr(1,1)
Circle2_627.FlipbookStartRandom=false
Circle2_627.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Circle2_627.Brightness=1



local debris_628=i("ParticleEmitter", Floor_623)
debris_628.Name="debris"
debris_628:SetAttribute("AuraInstance", true)
debris_628.Enabled=true
debris_628.Rate=3
debris_628.Lifetime=nr(1.5,1.5)
debris_628.Speed=nr(1,1)
debris_628.Rotation=nr(-1000,1000)
debris_628.RotSpeed=nr(-10,10)
debris_628.Size=ns({nsk(0.000000,1.116764,0.000000),nsk(1.000000,39.132607,0.000000)})
debris_628.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507436,0.057000,0.000000),nsk(1.000000,1.000000,0.000000)})
debris_628.Color=cs({csk(0.000000,c3(0.373297,0.876158,0.732307)),csk(1.000000,c3(0.373297,0.876158,0.732307))})
debris_628.LightEmission=1
debris_628.LightInfluence=0
debris_628.Acceleration=v3(0.000000,0.002000,0.000010)
debris_628.Drag=0
debris_628.EmissionDirection=Enum.NormalId.Top
debris_628.SpreadAngle=v2(0.000000,0.000000)
debris_628.ZOffset=0.0010000000474974513
debris_628.Texture="rbxassetid://91167564374329"
debris_628.LockedToPart=true
debris_628.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
debris_628.FlipbookLayout=Enum.ParticleFlipbookLayout.None
debris_628.FlipbookMode=Enum.ParticleFlipbookMode.Loop
debris_628.FlipbookFramerate=nr(1,1)
debris_628.FlipbookStartRandom=false
debris_628.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debris_628.Brightness=30



local cFog2_629=i("ParticleEmitter", Floor_623)
cFog2_629.Name="c. Fog2"
cFog2_629:SetAttribute("AuraInstance", true)
cFog2_629.Enabled=true
cFog2_629.Rate=2
cFog2_629.Lifetime=nr(4,4)
cFog2_629.Speed=nr(1,1)
cFog2_629.Rotation=nr(-360,360)
cFog2_629.RotSpeed=nr(30,60)
cFog2_629.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,52.700649,0.000000)})
cFog2_629.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.506000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
cFog2_629.Color=cs({csk(0.000000,c3(0.402090,0.856271,0.913237)),csk(1.000000,c3(0.402090,0.856271,0.913237))})
cFog2_629.LightEmission=-10
cFog2_629.LightInfluence=0
cFog2_629.Acceleration=v3(0.000000,0.002000,0.000010)
cFog2_629.Drag=0
cFog2_629.EmissionDirection=Enum.NormalId.Top
cFog2_629.SpreadAngle=v2(0.000000,0.000000)
cFog2_629.ZOffset=-0.003000000026077032
cFog2_629.Texture="rbxassetid://71289254736031"
cFog2_629.LockedToPart=true
cFog2_629.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
cFog2_629.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cFog2_629.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cFog2_629.FlipbookFramerate=nr(1,1)
cFog2_629.FlipbookStartRandom=false
cFog2_629.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
cFog2_629.Brightness=1



local FAROUTSLASAH_630=i("ParticleEmitter", Floor_623)
FAROUTSLASAH_630.Name="FAROUTSLASAH"
FAROUTSLASAH_630:SetAttribute("AuraInstance", true)
FAROUTSLASAH_630.Enabled=true
FAROUTSLASAH_630.Rate=2
FAROUTSLASAH_630.Lifetime=nr(1.5,1.5)
FAROUTSLASAH_630.Speed=nr(2.3839504718780518,3.178600311279297)
FAROUTSLASAH_630.Rotation=nr(-360,360)
FAROUTSLASAH_630.RotSpeed=nr(50,55)
FAROUTSLASAH_630.Size=ns({nsk(0.000000,17.262806,0.000000),nsk(1.000000,45.248112,3.072333)})
FAROUTSLASAH_630.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.396000,0.500000,0.000000),nsk(0.594000,0.400000,0.000000),nsk(1.000000,1.000000,0.000000)})
FAROUTSLASAH_630.Color=cs({csk(0.000000,c3(0.314168,0.995026,0.660164)),csk(1.000000,c3(0.314168,0.995026,0.660164))})
FAROUTSLASAH_630.LightEmission=-0.10000000149011612
FAROUTSLASAH_630.LightInfluence=0
FAROUTSLASAH_630.Acceleration=v3(0.000000,0.002000,0.000010)
FAROUTSLASAH_630.Drag=0
FAROUTSLASAH_630.EmissionDirection=Enum.NormalId.Top
FAROUTSLASAH_630.SpreadAngle=v2(4.000000,4.000000)
FAROUTSLASAH_630.ZOffset=0.003000000026077032
FAROUTSLASAH_630.Texture="rbxassetid://122341286877383"
FAROUTSLASAH_630.LockedToPart=true
FAROUTSLASAH_630.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
FAROUTSLASAH_630.FlipbookLayout=Enum.ParticleFlipbookLayout.None
FAROUTSLASAH_630.FlipbookMode=Enum.ParticleFlipbookMode.Loop
FAROUTSLASAH_630.FlipbookFramerate=nr(1,1)
FAROUTSLASAH_630.FlipbookStartRandom=false
FAROUTSLASAH_630.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
FAROUTSLASAH_630.Brightness=0.10000000149011612



local Fog2_631=i("ParticleEmitter", Floor_623)
Fog2_631.Name="Fog2"
Fog2_631:SetAttribute("AuraInstance", true)
Fog2_631.Enabled=true
Fog2_631.Rate=2
Fog2_631.Lifetime=nr(3,3)
Fog2_631.Speed=nr(0.699999988079071,0.699999988079071)
Fog2_631.Rotation=nr(-360,360)
Fog2_631.RotSpeed=nr(30,30)
Fog2_631.Size=ns({nsk(0.000000,17.009998,0.000000),nsk(1.000000,47.082020,0.000000)})
Fog2_631.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.506450,0.729333,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog2_631.Color=cs({csk(0.000000,c3(0.313726,0.992157,0.658464)),csk(1.000000,c3(0.313726,0.992157,0.658464))})
Fog2_631.LightEmission=1
Fog2_631.LightInfluence=0
Fog2_631.Acceleration=v3(0.000000,0.002000,0.000010)
Fog2_631.Drag=0
Fog2_631.EmissionDirection=Enum.NormalId.Top
Fog2_631.SpreadAngle=v2(0.000000,0.000000)
Fog2_631.ZOffset=0.009999999776482582
Fog2_631.Texture="rbxassetid://71289254736031"
Fog2_631.LockedToPart=true
Fog2_631.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Fog2_631.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Fog2_631.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Fog2_631.FlipbookFramerate=nr(1,1)
Fog2_631.FlipbookStartRandom=false
Fog2_631.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Fog2_631.Brightness=1



local Fog_632=i("ParticleEmitter", Floor_623)
Fog_632.Name="Fog"
Fog_632:SetAttribute("AuraInstance", true)
Fog_632.Enabled=true
Fog_632.Rate=3
Fog_632.Lifetime=nr(1.2000000476837158,1.2000000476837158)
Fog_632.Speed=nr(1.5,1.5)
Fog_632.Rotation=nr(-360,360)
Fog_632.RotSpeed=nr(50,50)
Fog_632.Size=ns({nsk(0.000000,18.368845,0.000000),nsk(1.000000,39.418125,0.000000)})
Fog_632.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.505436,0.517000,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_632.Color=cs({csk(0.000000,c3(0.196078,0.778486,0.917647)),csk(1.000000,c3(0.314168,0.995026,0.660164))})
Fog_632.LightEmission=-5
Fog_632.LightInfluence=0
Fog_632.Acceleration=v3(0.000000,0.002000,0.000010)
Fog_632.Drag=0
Fog_632.EmissionDirection=Enum.NormalId.Top
Fog_632.SpreadAngle=v2(0.000000,0.000000)
Fog_632.ZOffset=0.5
Fog_632.Texture="rbxassetid://98658056254873"
Fog_632.LockedToPart=true
Fog_632.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Fog_632.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Fog_632.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Fog_632.FlipbookFramerate=nr(1,1)
Fog_632.FlipbookStartRandom=false
Fog_632.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Fog_632.Brightness=1



local inwardslash_633=i("ParticleEmitter", Floor_623)
inwardslash_633.Name="inwardslash"
inwardslash_633:SetAttribute("AuraInstance", true)
inwardslash_633.Enabled=true
inwardslash_633.Rate=1
inwardslash_633.Lifetime=nr(1.5,1.5)
inwardslash_633.Speed=nr(0.21503950655460358,0.6451185345649719)
inwardslash_633.Rotation=nr(-1000,1000)
inwardslash_633.RotSpeed=nr(40,45)
inwardslash_633.Size=ns({nsk(0.000000,46.391712,0.000000),nsk(1.000000,19.563942,0.000000)})
inwardslash_633.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499436,0.763667,0.000000),nsk(1.000000,1.000000,0.000000)})
inwardslash_633.Color=cs({csk(0.000000,c3(0.372549,0.976471,0.804641)),csk(1.000000,c3(0.517647,0.980392,0.564850))})
inwardslash_633.LightEmission=1
inwardslash_633.LightInfluence=0
inwardslash_633.Acceleration=v3(0.000000,0.002000,0.000010)
inwardslash_633.Drag=0
inwardslash_633.EmissionDirection=Enum.NormalId.Top
inwardslash_633.SpreadAngle=v2(2.000000,2.000000)
inwardslash_633.ZOffset=0.003000000026077032
inwardslash_633.Texture="rbxassetid://109574326366882"
inwardslash_633.LockedToPart=true
inwardslash_633.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
inwardslash_633.FlipbookLayout=Enum.ParticleFlipbookLayout.None
inwardslash_633.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
inwardslash_633.FlipbookFramerate=nr(1,1)
inwardslash_633.FlipbookStartRandom=false
inwardslash_633.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
inwardslash_633.Brightness=1



local dark_634=i("ParticleEmitter", Floor_623)
dark_634.Name="dark"
dark_634:SetAttribute("AuraInstance", true)
dark_634.Enabled=true
dark_634.Rate=3
dark_634.Lifetime=nr(1.5,1.5)
dark_634.Speed=nr(0.0010000000474974513,0.0010000000474974513)
dark_634.Rotation=nr(-1000,1000)
dark_634.RotSpeed=nr(-10,10)
dark_634.Size=ns({nsk(0.000000,21.616858,0.000000),nsk(1.000000,44.693707,0.000000)})
dark_634.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
dark_634.Color=cs({csk(0.000000,c3(0.195468,0.778214,0.916915)),csk(0.711667,c3(0.373297,0.876158,0.843028)),csk(1.000000,c3(0.406546,0.914626,0.593508))})
dark_634.LightEmission=-15
dark_634.LightInfluence=0
dark_634.Acceleration=v3(0.000000,0.002000,0.000010)
dark_634.Drag=0
dark_634.EmissionDirection=Enum.NormalId.Top
dark_634.SpreadAngle=v2(0.000000,0.000000)
dark_634.ZOffset=-0.003000000026077032
dark_634.Texture="rbxassetid://120050565860854"
dark_634.LockedToPart=true
dark_634.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
dark_634.FlipbookLayout=Enum.ParticleFlipbookLayout.None
dark_634.FlipbookMode=Enum.ParticleFlipbookMode.Loop
dark_634.FlipbookFramerate=nr(1,1)
dark_634.FlipbookStartRandom=false
dark_634.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
dark_634.Brightness=1



local Grain2_635=i("ParticleEmitter", Floor_623)
Grain2_635.Name="Grain2"
Grain2_635:SetAttribute("AuraInstance", true)
Grain2_635.Enabled=true
Grain2_635.Rate=1.2999999523162842
Grain2_635.Lifetime=nr(3.5,3.5)
Grain2_635.Speed=nr(1.0522465705871582,1.0522465705871582)
Grain2_635.Rotation=nr(-1000,1000)
Grain2_635.RotSpeed=nr(60,65)
Grain2_635.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,28.785866,0.000000)})
Grain2_635.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501386,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Grain2_635.Color=cs({csk(0.000000,c3(0.556863,1.000000,0.829250)),csk(1.000000,c3(0.556863,1.000000,0.829250))})
Grain2_635.LightEmission=1
Grain2_635.LightInfluence=0
Grain2_635.Acceleration=v3(0.000000,0.002000,0.000010)
Grain2_635.Drag=0
Grain2_635.EmissionDirection=Enum.NormalId.Top
Grain2_635.SpreadAngle=v2(3.000000,-3.000000)
Grain2_635.ZOffset=0.004000000189989805
Grain2_635.Texture="rbxassetid://18450756590"
Grain2_635.LockedToPart=true
Grain2_635.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Grain2_635.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Grain2_635.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Grain2_635.FlipbookFramerate=nr(1,1)
Grain2_635.FlipbookStartRandom=false
Grain2_635.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Grain2_635.Brightness=1



local realisticswirl_636=i("ParticleEmitter", Floor_623)
realisticswirl_636.Name="realisticswirl"
realisticswirl_636:SetAttribute("AuraInstance", true)
realisticswirl_636.Enabled=true
realisticswirl_636.Rate=1
realisticswirl_636.Lifetime=nr(2,2)
realisticswirl_636.Speed=nr(0.9422581791877747,1.256344199180603)
realisticswirl_636.Rotation=nr(-360,360)
realisticswirl_636.RotSpeed=nr(70,90)
realisticswirl_636.Size=ns({nsk(0.000000,4.429817,0.000000),nsk(1.000000,31.566391,0.000000)})
realisticswirl_636.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.493696,0.382667,0.000000),nsk(1.000000,1.000000,0.000000)})
realisticswirl_636.Color=cs({csk(0.000000,c3(0.560784,1.000000,0.736643)),csk(1.000000,c3(0.560784,1.000000,0.736643))})
realisticswirl_636.LightEmission=1
realisticswirl_636.LightInfluence=0
realisticswirl_636.Acceleration=v3(0.000000,0.002000,0.000010)
realisticswirl_636.Drag=0
realisticswirl_636.EmissionDirection=Enum.NormalId.Top
realisticswirl_636.SpreadAngle=v2(4.000000,4.000000)
realisticswirl_636.ZOffset=0.003000000026077032
realisticswirl_636.Texture="rbxassetid://89913778292661"
realisticswirl_636.LockedToPart=true
realisticswirl_636.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
realisticswirl_636.FlipbookLayout=Enum.ParticleFlipbookLayout.None
realisticswirl_636.FlipbookMode=Enum.ParticleFlipbookMode.Loop
realisticswirl_636.FlipbookFramerate=nr(1,1)
realisticswirl_636.FlipbookStartRandom=false
realisticswirl_636.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
realisticswirl_636.Brightness=1



local realisticswirl_637=i("ParticleEmitter", Floor_623)
realisticswirl_637.Name="realisticswirl"
realisticswirl_637:SetAttribute("AuraInstance", true)
realisticswirl_637.Enabled=true
realisticswirl_637.Rate=1
realisticswirl_637.Lifetime=nr(2,2)
realisticswirl_637.Speed=nr(1.3333913087844849,1.7778549194335938)
realisticswirl_637.Rotation=nr(-360,360)
realisticswirl_637.RotSpeed=nr(70,90)
realisticswirl_637.Size=ns({nsk(0.000000,6.268642,0.000000),nsk(1.000000,44.669655,0.000000)})
realisticswirl_637.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.493696,0.382667,0.000000),nsk(1.000000,1.000000,0.000000)})
realisticswirl_637.Color=cs({csk(0.000000,c3(0.560784,1.000000,0.736643)),csk(1.000000,c3(0.549020,1.000000,0.870588))})
realisticswirl_637.LightEmission=1
realisticswirl_637.LightInfluence=0
realisticswirl_637.Acceleration=v3(0.000000,0.002000,0.000010)
realisticswirl_637.Drag=0
realisticswirl_637.EmissionDirection=Enum.NormalId.Top
realisticswirl_637.SpreadAngle=v2(4.000000,4.000000)
realisticswirl_637.ZOffset=0.003000000026077032
realisticswirl_637.Texture="rbxassetid://127221524156327"
realisticswirl_637.LockedToPart=true
realisticswirl_637.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
realisticswirl_637.FlipbookLayout=Enum.ParticleFlipbookLayout.None
realisticswirl_637.FlipbookMode=Enum.ParticleFlipbookMode.Loop
realisticswirl_637.FlipbookFramerate=nr(1,1)
realisticswirl_637.FlipbookStartRandom=false
realisticswirl_637.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
realisticswirl_637.Brightness=2



local colorSwirl_638=i("ParticleEmitter", Floor_623)
colorSwirl_638.Name="colorSwirl"
colorSwirl_638:SetAttribute("AuraInstance", true)
colorSwirl_638.Enabled=true
colorSwirl_638.Rate=4
colorSwirl_638.Lifetime=nr(2,2)
colorSwirl_638.Speed=nr(0.9140416979789734,1.2187221050262451)
colorSwirl_638.Rotation=nr(-360,360)
colorSwirl_638.RotSpeed=nr(70,90)
colorSwirl_638.Size=ns({nsk(0.000000,4.297163,0.000000),nsk(1.000000,30.621113,0.000000)})
colorSwirl_638.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.493696,0.382667,0.000000),nsk(1.000000,1.000000,0.000000)})
colorSwirl_638.Color=cs({csk(0.000000,c3(0.560784,1.000000,0.736643)),csk(1.000000,c3(0.549020,1.000000,0.870588))})
colorSwirl_638.LightEmission=1
colorSwirl_638.LightInfluence=0
colorSwirl_638.Acceleration=v3(0.000000,0.002000,0.000010)
colorSwirl_638.Drag=0
colorSwirl_638.EmissionDirection=Enum.NormalId.Top
colorSwirl_638.SpreadAngle=v2(4.000000,4.000000)
colorSwirl_638.ZOffset=0.003000000026077032
colorSwirl_638.Texture="rbxassetid://108747573242294"
colorSwirl_638.LockedToPart=true
colorSwirl_638.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
colorSwirl_638.FlipbookLayout=Enum.ParticleFlipbookLayout.None
colorSwirl_638.FlipbookMode=Enum.ParticleFlipbookMode.Loop
colorSwirl_638.FlipbookFramerate=nr(1,1)
colorSwirl_638.FlipbookStartRandom=false
colorSwirl_638.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
colorSwirl_638.Brightness=1



local realisticswirl_639=i("ParticleEmitter", Floor_623)
realisticswirl_639.Name="realisticswirl"
realisticswirl_639:SetAttribute("AuraInstance", true)
realisticswirl_639.Enabled=true
realisticswirl_639.Rate=2
realisticswirl_639.Lifetime=nr(2,2)
realisticswirl_639.Speed=nr(1.1865274906158447,1.5820366144180298)
realisticswirl_639.Rotation=nr(-360,360)
realisticswirl_639.RotSpeed=nr(70,90)
realisticswirl_639.Size=ns({nsk(0.000000,5.578195,0.000000),nsk(1.000000,39.749603,0.000000)})
realisticswirl_639.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.493696,0.382667,0.000000),nsk(1.000000,1.000000,0.000000)})
realisticswirl_639.Color=cs({csk(0.000000,c3(0.560784,1.000000,0.736643)),csk(1.000000,c3(0.549020,1.000000,0.870588))})
realisticswirl_639.LightEmission=-20
realisticswirl_639.LightInfluence=0
realisticswirl_639.Acceleration=v3(0.000000,0.002000,0.000010)
realisticswirl_639.Drag=0
realisticswirl_639.EmissionDirection=Enum.NormalId.Top
realisticswirl_639.SpreadAngle=v2(4.000000,4.000000)
realisticswirl_639.ZOffset=0.0020000000949949026
realisticswirl_639.Texture="rbxassetid://115941953976615"
realisticswirl_639.LockedToPart=true
realisticswirl_639.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
realisticswirl_639.FlipbookLayout=Enum.ParticleFlipbookLayout.None
realisticswirl_639.FlipbookMode=Enum.ParticleFlipbookMode.Loop
realisticswirl_639.FlipbookFramerate=nr(1,1)
realisticswirl_639.FlipbookStartRandom=false
realisticswirl_639.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
realisticswirl_639.Brightness=0.10000000149011612



local slash1_640=i("ParticleEmitter", Floor_623)
slash1_640.Name="slash1"
slash1_640:SetAttribute("AuraInstance", true)
slash1_640.Enabled=true
slash1_640.Rate=5
slash1_640.Lifetime=nr(2,2)
slash1_640.Speed=nr(1.7413510084152222,2.6120266914367676)
slash1_640.Rotation=nr(-1000,1000)
slash1_640.RotSpeed=nr(10,50)
slash1_640.Size=ns({nsk(0.000000,14.458460,1.606496),nsk(0.100000,16.093290,1.606496),nsk(0.200000,17.392862,1.606496),nsk(0.300000,18.506454,1.606496),nsk(0.400000,19.497086,1.606496),nsk(0.500000,20.398458,1.606496),nsk(0.600000,21.231127,1.606496),nsk(0.700000,22.008772,1.606496),nsk(0.800000,22.741095,1.606496),nsk(0.900000,23.435379,1.606496),nsk(1.000000,24.097433,1.606496),nsk(1.000000,24.097433,1.606496)})
slash1_640.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
slash1_640.Color=cs({csk(0.000000,c3(0.556863,1.000000,0.792157)),csk(1.000000,c3(0.403922,1.000000,0.882353))})
slash1_640.LightEmission=-10
slash1_640.LightInfluence=0
slash1_640.Acceleration=v3(0.000000,0.002000,0.000010)
slash1_640.Drag=0
slash1_640.EmissionDirection=Enum.NormalId.Top
slash1_640.SpreadAngle=v2(4.000000,-4.000000)
slash1_640.ZOffset=0.0011099999537691474
slash1_640.Texture="http://www.roblox.com/asset/?id=112778012978199"
slash1_640.LockedToPart=true
slash1_640.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
slash1_640.FlipbookLayout=Enum.ParticleFlipbookLayout.None
slash1_640.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
slash1_640.FlipbookFramerate=nr(0.800000011920929,0.800000011920929)
slash1_640.FlipbookStartRandom=false
slash1_640.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
slash1_640.Brightness=5



local ParticleEmitter_641=i("ParticleEmitter", Floor_623)
ParticleEmitter_641.Name="ParticleEmitter"
ParticleEmitter_641:SetAttribute("AuraInstance", true)
ParticleEmitter_641.Enabled=true
ParticleEmitter_641.Rate=4
ParticleEmitter_641.Lifetime=nr(2,2)
ParticleEmitter_641.Speed=nr(2.87530779838562,5.75061559677124)
ParticleEmitter_641.Rotation=nr(-1000,1000)
ParticleEmitter_641.RotSpeed=nr(25,25)
ParticleEmitter_641.Size=ns({nsk(0.000000,9.440123,2.360031),nsk(0.100000,13.843156,2.360031),nsk(0.200000,17.343252,2.360031),nsk(0.300000,20.342455,2.360031),nsk(0.400000,23.010492,2.360031),nsk(0.500000,25.438128,2.360031),nsk(0.600000,27.680727,2.360031),nsk(0.700000,29.775133,2.360031),nsk(0.800000,31.747475,2.360031),nsk(0.900000,33.617367,2.360031),nsk(1.000000,35.400459,2.360031),nsk(1.000000,35.400459,2.360031)})
ParticleEmitter_641.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.497253,0.250000,0.000000),nsk(0.796703,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_641.Color=cs({csk(0.000000,c3(0.450980,1.000000,0.785933)),csk(0.223183,c3(0.450980,1.000000,0.785933)),csk(0.356401,c3(0.364706,0.949667,1.000000)),csk(0.456747,c3(0.360784,1.000000,0.976255)),csk(0.785467,c3(0.450980,1.000000,0.785933)),csk(1.000000,c3(0.450980,1.000000,0.785933))})
ParticleEmitter_641.LightEmission=1
ParticleEmitter_641.LightInfluence=0
ParticleEmitter_641.Acceleration=v3(0.000000,0.002000,0.000010)
ParticleEmitter_641.Drag=0
ParticleEmitter_641.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_641.SpreadAngle=v2(6.000000,6.000000)
ParticleEmitter_641.ZOffset=0.004999999888241291
ParticleEmitter_641.Texture="rbxassetid://140369620403796"
ParticleEmitter_641.LockedToPart=true
ParticleEmitter_641.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_641.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_641.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_641.FlipbookFramerate=nr(3.200000047683716,3.200000047683716)
ParticleEmitter_641.FlipbookStartRandom=false
ParticleEmitter_641.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_641.Brightness=10


function Floor1()
local floorSpin_716=i("Attachment", Floor)
floorSpin_716.Name="floorSpin"
floorSpin_716:SetAttribute("AuraInstance", true)
floorSpin_716.Visible=false
floorSpin_716.CFrame=cf(-0.0000152587890625,0,0.00000762939453125,1,0,0,0,1,0,0,0,1)



local Attachment_717=i("Attachment", floorSpin_716)
Attachment_717.Name="Attachment"
Attachment_717:SetAttribute("AuraInstance", true)
Attachment_717.Visible=false
Attachment_717.CFrame=cf(0.000030517578125,-0.1609635353088379,0,1,0,0,0,1,0,0,0,1)



local Attachment_718=i("Attachment", Attachment_717)
Attachment_718.Name="Attachment"
Attachment_718:SetAttribute("AuraInstance", true)
Attachment_718.Visible=false
Attachment_718.CFrame=cf(-0.000030517578125,-0.00002586841583251953,-20.37602996826172,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_719=i("ParticleEmitter", Attachment_718)
smoke_719.Name="smoke"
smoke_719:SetAttribute("AuraInstance", true)
smoke_719.Enabled=true
smoke_719.Rate=12.5
smoke_719.Lifetime=nr(2,2)
smoke_719.Speed=nr(10,10)
smoke_719.Rotation=nr(0,0)
smoke_719.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_719.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_719.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_719.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_719.LightEmission=-0.25
smoke_719.LightInfluence=0.5
smoke_719.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_719.Drag=0.5733733773231506
smoke_719.EmissionDirection=Enum.NormalId.Top
smoke_719.SpreadAngle=v2(15.000000,15.000000)
smoke_719.ZOffset=0
smoke_719.Texture="rbxassetid://101025037569585"
smoke_719.LockedToPart=true
smoke_719.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_719.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_719.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_719.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_719.FlipbookStartRandom=true
smoke_719.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_719.Brightness=0.5



local shine_720=i("ParticleEmitter", Attachment_718)
shine_720.Name="shine"
shine_720:SetAttribute("AuraInstance", true)
shine_720.Enabled=true
shine_720.Rate=3
shine_720.Lifetime=nr(1,3)
shine_720.Speed=nr(8,8)
shine_720.Rotation=nr(90,90)
shine_720.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_720.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_720.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_720.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_720.LightEmission=1
shine_720.LightInfluence=0
shine_720.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_720.Drag=0.5733733773231506
shine_720.EmissionDirection=Enum.NormalId.Top
shine_720.SpreadAngle=v2(15.000000,15.000000)
shine_720.ZOffset=5
shine_720.Texture="rbxassetid://76329684690462"
shine_720.LockedToPart=true
shine_720.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_720.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_720.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_720.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_720.FlipbookStartRandom=true
shine_720.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_720.Brightness=5



local shine_721=i("ParticleEmitter", Attachment_718)
shine_721.Name="shine"
shine_721:SetAttribute("AuraInstance", true)
shine_721.Enabled=true
shine_721.Rate=3
shine_721.Lifetime=nr(1,3)
shine_721.Speed=nr(5,5)
shine_721.Rotation=nr(180,180)
shine_721.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_721.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_721.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_721.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_721.LightEmission=1
shine_721.LightInfluence=0
shine_721.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_721.Drag=1
shine_721.EmissionDirection=Enum.NormalId.Top
shine_721.SpreadAngle=v2(20.000000,20.000000)
shine_721.ZOffset=5
shine_721.Texture="rbxassetid://131246143677315"
shine_721.LockedToPart=true
shine_721.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_721.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_721.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_721.FlipbookFramerate=nr(17,17)
shine_721.FlipbookStartRandom=true
shine_721.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_721.Brightness=5



local shine_722=i("ParticleEmitter", Attachment_718)
shine_722.Name="shine"
shine_722:SetAttribute("AuraInstance", true)
shine_722.Enabled=true
shine_722.Rate=3
shine_722.Lifetime=nr(1,3)
shine_722.Speed=nr(8,8)
shine_722.Rotation=nr(90,90)
shine_722.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_722.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_722.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_722.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_722.LightEmission=1
shine_722.LightInfluence=0
shine_722.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_722.Drag=0.5733733773231506
shine_722.EmissionDirection=Enum.NormalId.Top
shine_722.SpreadAngle=v2(15.000000,15.000000)
shine_722.ZOffset=5
shine_722.Texture="rbxassetid://106014481074878"
shine_722.LockedToPart=true
shine_722.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_722.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_722.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_722.FlipbookFramerate=nr(17,17)
shine_722.FlipbookStartRandom=true
shine_722.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_722.Brightness=25



local Attachment_723=i("Attachment", floorSpin_716)
Attachment_723.Name="Attachment"
Attachment_723:SetAttribute("AuraInstance", true)
Attachment_723.Visible=false
Attachment_723.CFrame=cf(0.000030517578125,-0.1609635353088379,0.00000762939453125,0.8660072684288025,0,0.5000314116477966,0,1,-0,-0.5000314116477966,0,0.8660072684288025)



local Attachment_724=i("Attachment", Attachment_723)
Attachment_724.Name="Attachment"
Attachment_724:SetAttribute("AuraInstance", true)
Attachment_724.Visible=false
Attachment_724.CFrame=cf(0.0000152587890625,-0.000025510787963867188,-20.37604522705078,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_725=i("ParticleEmitter", Attachment_724)
smoke_725.Name="smoke"
smoke_725:SetAttribute("AuraInstance", true)
smoke_725.Enabled=true
smoke_725.Rate=12.5
smoke_725.Lifetime=nr(2,2)
smoke_725.Speed=nr(10,10)
smoke_725.Rotation=nr(0,0)
smoke_725.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_725.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_725.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_725.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_725.LightEmission=-0.25
smoke_725.LightInfluence=0.5
smoke_725.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_725.Drag=0.5733733773231506
smoke_725.EmissionDirection=Enum.NormalId.Top
smoke_725.SpreadAngle=v2(15.000000,15.000000)
smoke_725.ZOffset=0
smoke_725.Texture="rbxassetid://101025037569585"
smoke_725.LockedToPart=true
smoke_725.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_725.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_725.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_725.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_725.FlipbookStartRandom=true
smoke_725.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_725.Brightness=0.5



local shine_726=i("ParticleEmitter", Attachment_724)
shine_726.Name="shine"
shine_726:SetAttribute("AuraInstance", true)
shine_726.Enabled=true
shine_726.Rate=3
shine_726.Lifetime=nr(1,3)
shine_726.Speed=nr(5,5)
shine_726.Rotation=nr(180,180)
shine_726.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_726.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_726.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_726.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_726.LightEmission=1
shine_726.LightInfluence=0
shine_726.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_726.Drag=1
shine_726.EmissionDirection=Enum.NormalId.Top
shine_726.SpreadAngle=v2(20.000000,20.000000)
shine_726.ZOffset=5
shine_726.Texture="rbxassetid://131246143677315"
shine_726.LockedToPart=true
shine_726.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_726.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_726.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_726.FlipbookFramerate=nr(17,17)
shine_726.FlipbookStartRandom=true
shine_726.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_726.Brightness=5



local shine_727=i("ParticleEmitter", Attachment_724)
shine_727.Name="shine"
shine_727:SetAttribute("AuraInstance", true)
shine_727.Enabled=true
shine_727.Rate=3
shine_727.Lifetime=nr(1,3)
shine_727.Speed=nr(8,8)
shine_727.Rotation=nr(90,90)
shine_727.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_727.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_727.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_727.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_727.LightEmission=1
shine_727.LightInfluence=0
shine_727.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_727.Drag=0.5733733773231506
shine_727.EmissionDirection=Enum.NormalId.Top
shine_727.SpreadAngle=v2(15.000000,15.000000)
shine_727.ZOffset=5
shine_727.Texture="rbxassetid://76329684690462"
shine_727.LockedToPart=true
shine_727.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_727.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_727.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_727.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_727.FlipbookStartRandom=true
shine_727.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_727.Brightness=5



local shine_728=i("ParticleEmitter", Attachment_724)
shine_728.Name="shine"
shine_728:SetAttribute("AuraInstance", true)
shine_728.Enabled=true
shine_728.Rate=3
shine_728.Lifetime=nr(1,3)
shine_728.Speed=nr(8,8)
shine_728.Rotation=nr(90,90)
shine_728.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_728.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_728.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_728.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_728.LightEmission=1
shine_728.LightInfluence=0
shine_728.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_728.Drag=0.5733733773231506
shine_728.EmissionDirection=Enum.NormalId.Top
shine_728.SpreadAngle=v2(15.000000,15.000000)
shine_728.ZOffset=5
shine_728.Texture="rbxassetid://106014481074878"
shine_728.LockedToPart=true
shine_728.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_728.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_728.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_728.FlipbookFramerate=nr(17,17)
shine_728.FlipbookStartRandom=true
shine_728.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_728.Brightness=25



local Attachment_729=i("Attachment", floorSpin_716)
Attachment_729.Name="Attachment"
Attachment_729:SetAttribute("AuraInstance", true)
Attachment_729.Visible=false
Attachment_729.CFrame=cf(0.0000457763671875,-0.1609632968902588,0.00000762939453125,0.49995946884155273,0,0.8660488128662109,0,1,-0,-0.8660488128662109,0,0.49995946884155273)



local Attachment_730=i("Attachment", Attachment_729)
Attachment_730.Name="Attachment"
Attachment_730:SetAttribute("AuraInstance", true)
Attachment_730.Visible=false
Attachment_730.CFrame=cf(0,-0.000025898218154907227,-20.376052856445312,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_731=i("ParticleEmitter", Attachment_730)
smoke_731.Name="smoke"
smoke_731:SetAttribute("AuraInstance", true)
smoke_731.Enabled=true
smoke_731.Rate=12.5
smoke_731.Lifetime=nr(2,2)
smoke_731.Speed=nr(10,10)
smoke_731.Rotation=nr(0,0)
smoke_731.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_731.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_731.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_731.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_731.LightEmission=-0.25
smoke_731.LightInfluence=0.5
smoke_731.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_731.Drag=0.5733733773231506
smoke_731.EmissionDirection=Enum.NormalId.Top
smoke_731.SpreadAngle=v2(15.000000,15.000000)
smoke_731.ZOffset=0
smoke_731.Texture="rbxassetid://101025037569585"
smoke_731.LockedToPart=true
smoke_731.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_731.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_731.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_731.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_731.FlipbookStartRandom=true
smoke_731.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_731.Brightness=0.5



local shine_732=i("ParticleEmitter", Attachment_730)
shine_732.Name="shine"
shine_732:SetAttribute("AuraInstance", true)
shine_732.Enabled=true
shine_732.Rate=3
shine_732.Lifetime=nr(1,3)
shine_732.Speed=nr(8,8)
shine_732.Rotation=nr(90,90)
shine_732.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_732.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_732.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_732.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_732.LightEmission=1
shine_732.LightInfluence=0
shine_732.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_732.Drag=0.5733733773231506
shine_732.EmissionDirection=Enum.NormalId.Top
shine_732.SpreadAngle=v2(15.000000,15.000000)
shine_732.ZOffset=5
shine_732.Texture="rbxassetid://76329684690462"
shine_732.LockedToPart=true
shine_732.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_732.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_732.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_732.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_732.FlipbookStartRandom=true
shine_732.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_732.Brightness=5



local shine_733=i("ParticleEmitter", Attachment_730)
shine_733.Name="shine"
shine_733:SetAttribute("AuraInstance", true)
shine_733.Enabled=true
shine_733.Rate=3
shine_733.Lifetime=nr(1,3)
shine_733.Speed=nr(5,5)
shine_733.Rotation=nr(180,180)
shine_733.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_733.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_733.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_733.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_733.LightEmission=1
shine_733.LightInfluence=0
shine_733.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_733.Drag=1
shine_733.EmissionDirection=Enum.NormalId.Top
shine_733.SpreadAngle=v2(20.000000,20.000000)
shine_733.ZOffset=5
shine_733.Texture="rbxassetid://131246143677315"
shine_733.LockedToPart=true
shine_733.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_733.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_733.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_733.FlipbookFramerate=nr(17,17)
shine_733.FlipbookStartRandom=true
shine_733.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_733.Brightness=5



local shine_734=i("ParticleEmitter", Attachment_730)
shine_734.Name="shine"
shine_734:SetAttribute("AuraInstance", true)
shine_734.Enabled=true
shine_734.Rate=3
shine_734.Lifetime=nr(1,3)
shine_734.Speed=nr(8,8)
shine_734.Rotation=nr(90,90)
shine_734.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_734.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_734.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_734.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_734.LightEmission=1
shine_734.LightInfluence=0
shine_734.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_734.Drag=0.5733733773231506
shine_734.EmissionDirection=Enum.NormalId.Top
shine_734.SpreadAngle=v2(15.000000,15.000000)
shine_734.ZOffset=5
shine_734.Texture="rbxassetid://106014481074878"
shine_734.LockedToPart=true
shine_734.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_734.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_734.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_734.FlipbookFramerate=nr(17,17)
shine_734.FlipbookStartRandom=true
shine_734.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_734.Brightness=25



local Attachment_735=i("Attachment", floorSpin_716)
Attachment_735.Name="Attachment"
Attachment_735:SetAttribute("AuraInstance", true)
Attachment_735.Visible=false
Attachment_735.CFrame=cf(0.0000457763671875,-0.1609632968902588,0.000030517578125,0,0,1,0,1,-0,-1,0,0)



local Attachment_736=i("Attachment", Attachment_735)
Attachment_736.Name="Attachment"
Attachment_736:SetAttribute("AuraInstance", true)
Attachment_736.Visible=false
Attachment_736.CFrame=cf(-0.0000152587890625,-0.000025928020477294922,-20.37603759765625,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_737=i("ParticleEmitter", Attachment_736)
smoke_737.Name="smoke"
smoke_737:SetAttribute("AuraInstance", true)
smoke_737.Enabled=true
smoke_737.Rate=12.5
smoke_737.Lifetime=nr(2,2)
smoke_737.Speed=nr(10,10)
smoke_737.Rotation=nr(0,0)
smoke_737.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_737.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_737.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_737.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_737.LightEmission=-0.25
smoke_737.LightInfluence=0.5
smoke_737.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_737.Drag=0.5733733773231506
smoke_737.EmissionDirection=Enum.NormalId.Top
smoke_737.SpreadAngle=v2(15.000000,15.000000)
smoke_737.ZOffset=0
smoke_737.Texture="rbxassetid://101025037569585"
smoke_737.LockedToPart=true
smoke_737.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_737.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_737.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_737.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_737.FlipbookStartRandom=true
smoke_737.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_737.Brightness=0.5



local shine_738=i("ParticleEmitter", Attachment_736)
shine_738.Name="shine"
shine_738:SetAttribute("AuraInstance", true)
shine_738.Enabled=true
shine_738.Rate=3
shine_738.Lifetime=nr(1,3)
shine_738.Speed=nr(8,8)
shine_738.Rotation=nr(90,90)
shine_738.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_738.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_738.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_738.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_738.LightEmission=1
shine_738.LightInfluence=0
shine_738.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_738.Drag=0.5733733773231506
shine_738.EmissionDirection=Enum.NormalId.Top
shine_738.SpreadAngle=v2(15.000000,15.000000)
shine_738.ZOffset=5
shine_738.Texture="rbxassetid://106014481074878"
shine_738.LockedToPart=true
shine_738.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_738.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_738.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_738.FlipbookFramerate=nr(17,17)
shine_738.FlipbookStartRandom=true
shine_738.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_738.Brightness=25



local shine_739=i("ParticleEmitter", Attachment_736)
shine_739.Name="shine"
shine_739:SetAttribute("AuraInstance", true)
shine_739.Enabled=true
shine_739.Rate=3
shine_739.Lifetime=nr(1,3)
shine_739.Speed=nr(8,8)
shine_739.Rotation=nr(90,90)
shine_739.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_739.Size=ns({nsk(0.000000,0.442804,0.000000),nsk(0.028085,5.682657,0.000000),nsk(0.080000,0.664207,0.000000),nsk(0.205106,0.553505,0.000000),nsk(0.274894,0.922509,0.000000),nsk(0.322553,0.405904,0.000000),nsk(0.417872,0.811808,0.000000),nsk(0.455319,0.442804,0.000000),nsk(0.486809,0.922509,0.000000),nsk(0.507234,6.236162,0.000000),nsk(0.530213,1.143911,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.673191,0.922509,0.000000),nsk(0.769362,0.369003,0.000000),nsk(0.822979,0.553505,0.000000),nsk(0.845106,1.697417,0.000000),nsk(0.866383,0.479705,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_739.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_739.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_739.LightEmission=1
shine_739.LightInfluence=0
shine_739.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_739.Drag=0.5733733773231506
shine_739.EmissionDirection=Enum.NormalId.Top
shine_739.SpreadAngle=v2(15.000000,15.000000)
shine_739.ZOffset=5
shine_739.Texture="rbxassetid://94034833049261"
shine_739.LockedToPart=true
shine_739.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_739.FlipbookLayout=Enum.ParticleFlipbookLayout.None
shine_739.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_739.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_739.FlipbookStartRandom=true
shine_739.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_739.Brightness=25



local shine_740=i("ParticleEmitter", Attachment_736)
shine_740.Name="shine"
shine_740:SetAttribute("AuraInstance", true)
shine_740.Enabled=true
shine_740.Rate=3
shine_740.Lifetime=nr(1,3)
shine_740.Speed=nr(5,5)
shine_740.Rotation=nr(180,180)
shine_740.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_740.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_740.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_740.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_740.LightEmission=1
shine_740.LightInfluence=0
shine_740.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_740.Drag=1
shine_740.EmissionDirection=Enum.NormalId.Top
shine_740.SpreadAngle=v2(20.000000,20.000000)
shine_740.ZOffset=5
shine_740.Texture="rbxassetid://131246143677315"
shine_740.LockedToPart=true
shine_740.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_740.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_740.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_740.FlipbookFramerate=nr(17,17)
shine_740.FlipbookStartRandom=true
shine_740.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_740.Brightness=5



local Attachment_741=i("Attachment", floorSpin_716)
Attachment_741.Name="Attachment"
Attachment_741:SetAttribute("AuraInstance", true)
Attachment_741.Visible=false
Attachment_741.CFrame=cf(0.0000457763671875,-0.1609632968902588,0.00000762939453125,-0.49995946884155273,0,0.8660488128662109,0,1,0,-0.8660488128662109,0,-0.49995946884155273)



local Attachment_742=i("Attachment", Attachment_741)
Attachment_742.Name="Attachment"
Attachment_742:SetAttribute("AuraInstance", true)
Attachment_742.Visible=false
Attachment_742.CFrame=cf(0.000011444091796875,-0.00002580881118774414,-20.376083374023438,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_743=i("ParticleEmitter", Attachment_742)
smoke_743.Name="smoke"
smoke_743:SetAttribute("AuraInstance", true)
smoke_743.Enabled=true
smoke_743.Rate=12.5
smoke_743.Lifetime=nr(2,2)
smoke_743.Speed=nr(10,10)
smoke_743.Rotation=nr(0,0)
smoke_743.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_743.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_743.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_743.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_743.LightEmission=-0.25
smoke_743.LightInfluence=0.5
smoke_743.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_743.Drag=0.5733733773231506
smoke_743.EmissionDirection=Enum.NormalId.Top
smoke_743.SpreadAngle=v2(15.000000,15.000000)
smoke_743.ZOffset=0
smoke_743.Texture="rbxassetid://101025037569585"
smoke_743.LockedToPart=true
smoke_743.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_743.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_743.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_743.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_743.FlipbookStartRandom=true
smoke_743.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_743.Brightness=0.5



local shine_744=i("ParticleEmitter", Attachment_742)
shine_744.Name="shine"
shine_744:SetAttribute("AuraInstance", true)
shine_744.Enabled=true
shine_744.Rate=3
shine_744.Lifetime=nr(1,3)
shine_744.Speed=nr(8,8)
shine_744.Rotation=nr(90,90)
shine_744.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_744.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_744.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_744.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_744.LightEmission=1
shine_744.LightInfluence=0
shine_744.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_744.Drag=0.5733733773231506
shine_744.EmissionDirection=Enum.NormalId.Top
shine_744.SpreadAngle=v2(15.000000,15.000000)
shine_744.ZOffset=5
shine_744.Texture="rbxassetid://106014481074878"
shine_744.LockedToPart=true
shine_744.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_744.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_744.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_744.FlipbookFramerate=nr(17,17)
shine_744.FlipbookStartRandom=true
shine_744.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_744.Brightness=25



local shine_745=i("ParticleEmitter", Attachment_742)
shine_745.Name="shine"
shine_745:SetAttribute("AuraInstance", true)
shine_745.Enabled=true
shine_745.Rate=3
shine_745.Lifetime=nr(1,3)
shine_745.Speed=nr(8,8)
shine_745.Rotation=nr(90,90)
shine_745.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_745.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_745.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_745.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_745.LightEmission=1
shine_745.LightInfluence=0
shine_745.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_745.Drag=0.5733733773231506
shine_745.EmissionDirection=Enum.NormalId.Top
shine_745.SpreadAngle=v2(15.000000,15.000000)
shine_745.ZOffset=5
shine_745.Texture="rbxassetid://76329684690462"
shine_745.LockedToPart=true
shine_745.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_745.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_745.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_745.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_745.FlipbookStartRandom=true
shine_745.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_745.Brightness=5



local shine_746=i("ParticleEmitter", Attachment_742)
shine_746.Name="shine"
shine_746:SetAttribute("AuraInstance", true)
shine_746.Enabled=true
shine_746.Rate=3
shine_746.Lifetime=nr(1,3)
shine_746.Speed=nr(5,5)
shine_746.Rotation=nr(180,180)
shine_746.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_746.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_746.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_746.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_746.LightEmission=1
shine_746.LightInfluence=0
shine_746.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_746.Drag=1
shine_746.EmissionDirection=Enum.NormalId.Top
shine_746.SpreadAngle=v2(20.000000,20.000000)
shine_746.ZOffset=5
shine_746.Texture="rbxassetid://131246143677315"
shine_746.LockedToPart=true
shine_746.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_746.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_746.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_746.FlipbookFramerate=nr(17,17)
shine_746.FlipbookStartRandom=true
shine_746.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_746.Brightness=5



local Attachment_747=i("Attachment", floorSpin_716)
Attachment_747.Name="Attachment"
Attachment_747:SetAttribute("AuraInstance", true)
Attachment_747.Visible=false
Attachment_747.CFrame=cf(0.0000457763671875,-0.1609632968902588,0.000030517578125,-0.8660073280334473,0,0.5000313520431519,0,1,0,-0.5000313520431519,0,-0.8660073280334473)



local Attachment_748=i("Attachment", Attachment_747)
Attachment_748.Name="Attachment"
Attachment_748:SetAttribute("AuraInstance", true)
Attachment_748.Visible=false
Attachment_748.CFrame=cf(0,-0.00002562999725341797,-20.376007080078125,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_749=i("ParticleEmitter", Attachment_748)
smoke_749.Name="smoke"
smoke_749:SetAttribute("AuraInstance", true)
smoke_749.Enabled=true
smoke_749.Rate=12.5
smoke_749.Lifetime=nr(2,2)
smoke_749.Speed=nr(10,10)
smoke_749.Rotation=nr(0,0)
smoke_749.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_749.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_749.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_749.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_749.LightEmission=-0.25
smoke_749.LightInfluence=0.5
smoke_749.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_749.Drag=0.5733733773231506
smoke_749.EmissionDirection=Enum.NormalId.Top
smoke_749.SpreadAngle=v2(15.000000,15.000000)
smoke_749.ZOffset=0
smoke_749.Texture="rbxassetid://101025037569585"
smoke_749.LockedToPart=true
smoke_749.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_749.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_749.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_749.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_749.FlipbookStartRandom=true
smoke_749.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_749.Brightness=0.5



local shine_750=i("ParticleEmitter", Attachment_748)
shine_750.Name="shine"
shine_750:SetAttribute("AuraInstance", true)
shine_750.Enabled=true
shine_750.Rate=3
shine_750.Lifetime=nr(1,3)
shine_750.Speed=nr(8,8)
shine_750.Rotation=nr(90,90)
shine_750.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_750.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_750.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_750.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_750.LightEmission=1
shine_750.LightInfluence=0
shine_750.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_750.Drag=0.5733733773231506
shine_750.EmissionDirection=Enum.NormalId.Top
shine_750.SpreadAngle=v2(15.000000,15.000000)
shine_750.ZOffset=5
shine_750.Texture="rbxassetid://106014481074878"
shine_750.LockedToPart=true
shine_750.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_750.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_750.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_750.FlipbookFramerate=nr(17,17)
shine_750.FlipbookStartRandom=true
shine_750.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_750.Brightness=25



local shine_751=i("ParticleEmitter", Attachment_748)
shine_751.Name="shine"
shine_751:SetAttribute("AuraInstance", true)
shine_751.Enabled=true
shine_751.Rate=3
shine_751.Lifetime=nr(1,3)
shine_751.Speed=nr(8,8)
shine_751.Rotation=nr(90,90)
shine_751.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_751.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_751.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_751.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_751.LightEmission=1
shine_751.LightInfluence=0
shine_751.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_751.Drag=0.5733733773231506
shine_751.EmissionDirection=Enum.NormalId.Top
shine_751.SpreadAngle=v2(15.000000,15.000000)
shine_751.ZOffset=5
shine_751.Texture="rbxassetid://76329684690462"
shine_751.LockedToPart=true
shine_751.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_751.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_751.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_751.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_751.FlipbookStartRandom=true
shine_751.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_751.Brightness=5



local shine_752=i("ParticleEmitter", Attachment_748)
shine_752.Name="shine"
shine_752:SetAttribute("AuraInstance", true)
shine_752.Enabled=true
shine_752.Rate=3
shine_752.Lifetime=nr(1,3)
shine_752.Speed=nr(5,5)
shine_752.Rotation=nr(180,180)
shine_752.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_752.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_752.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_752.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_752.LightEmission=1
shine_752.LightInfluence=0
shine_752.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_752.Drag=1
shine_752.EmissionDirection=Enum.NormalId.Top
shine_752.SpreadAngle=v2(20.000000,20.000000)
shine_752.ZOffset=5
shine_752.Texture="rbxassetid://131246143677315"
shine_752.LockedToPart=true
shine_752.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_752.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_752.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_752.FlipbookFramerate=nr(17,17)
shine_752.FlipbookStartRandom=true
shine_752.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_752.Brightness=5



local Attachment_753=i("Attachment", floorSpin_716)
Attachment_753.Name="Attachment"
Attachment_753:SetAttribute("AuraInstance", true)
Attachment_753.Visible=false
Attachment_753.CFrame=cf(0.0000457763671875,-0.1609630584716797,0.000030517578125,-1,0,0,0,1,0,0,0,-1)



local Attachment_754=i("Attachment", Attachment_753)
Attachment_754.Name="Attachment"
Attachment_754:SetAttribute("AuraInstance", true)
Attachment_754.Visible=false
Attachment_754.CFrame=cf(-0.0000152587890625,-0.00002562999725341797,-20.376033782958984,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_755=i("ParticleEmitter", Attachment_754)
smoke_755.Name="smoke"
smoke_755:SetAttribute("AuraInstance", true)
smoke_755.Enabled=true
smoke_755.Rate=12.5
smoke_755.Lifetime=nr(2,2)
smoke_755.Speed=nr(10,10)
smoke_755.Rotation=nr(0,0)
smoke_755.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_755.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_755.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_755.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_755.LightEmission=-0.25
smoke_755.LightInfluence=0.5
smoke_755.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_755.Drag=0.5733733773231506
smoke_755.EmissionDirection=Enum.NormalId.Top
smoke_755.SpreadAngle=v2(15.000000,15.000000)
smoke_755.ZOffset=0
smoke_755.Texture="rbxassetid://101025037569585"
smoke_755.LockedToPart=true
smoke_755.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_755.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_755.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_755.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_755.FlipbookStartRandom=true
smoke_755.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_755.Brightness=0.5



local shine_756=i("ParticleEmitter", Attachment_754)
shine_756.Name="shine"
shine_756:SetAttribute("AuraInstance", true)
shine_756.Enabled=true
shine_756.Rate=3
shine_756.Lifetime=nr(1,3)
shine_756.Speed=nr(8,8)
shine_756.Rotation=nr(90,90)
shine_756.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_756.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_756.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_756.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_756.LightEmission=1
shine_756.LightInfluence=0
shine_756.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_756.Drag=0.5733733773231506
shine_756.EmissionDirection=Enum.NormalId.Top
shine_756.SpreadAngle=v2(15.000000,15.000000)
shine_756.ZOffset=5
shine_756.Texture="rbxassetid://106014481074878"
shine_756.LockedToPart=true
shine_756.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_756.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_756.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_756.FlipbookFramerate=nr(17,17)
shine_756.FlipbookStartRandom=true
shine_756.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_756.Brightness=25



local shine_757=i("ParticleEmitter", Attachment_754)
shine_757.Name="shine"
shine_757:SetAttribute("AuraInstance", true)
shine_757.Enabled=true
shine_757.Rate=3
shine_757.Lifetime=nr(1,3)
shine_757.Speed=nr(8,8)
shine_757.Rotation=nr(90,90)
shine_757.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_757.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_757.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_757.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_757.LightEmission=1
shine_757.LightInfluence=0
shine_757.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_757.Drag=0.5733733773231506
shine_757.EmissionDirection=Enum.NormalId.Top
shine_757.SpreadAngle=v2(15.000000,15.000000)
shine_757.ZOffset=5
shine_757.Texture="rbxassetid://76329684690462"
shine_757.LockedToPart=true
shine_757.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_757.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_757.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_757.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_757.FlipbookStartRandom=true
shine_757.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_757.Brightness=5



local shine_758=i("ParticleEmitter", Attachment_754)
shine_758.Name="shine"
shine_758:SetAttribute("AuraInstance", true)
shine_758.Enabled=true
shine_758.Rate=3
shine_758.Lifetime=nr(1,3)
shine_758.Speed=nr(5,5)
shine_758.Rotation=nr(180,180)
shine_758.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_758.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_758.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_758.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_758.LightEmission=1
shine_758.LightInfluence=0
shine_758.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_758.Drag=1
shine_758.EmissionDirection=Enum.NormalId.Top
shine_758.SpreadAngle=v2(20.000000,20.000000)
shine_758.ZOffset=5
shine_758.Texture="rbxassetid://131246143677315"
shine_758.LockedToPart=true
shine_758.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_758.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_758.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_758.FlipbookFramerate=nr(17,17)
shine_758.FlipbookStartRandom=true
shine_758.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_758.Brightness=5



local Attachment_759=i("Attachment", floorSpin_716)
Attachment_759.Name="Attachment"
Attachment_759:SetAttribute("AuraInstance", true)
Attachment_759.Visible=false
Attachment_759.CFrame=cf(0.0000457763671875,-0.16096282005310059,0.000030517578125,-0.8660073280334473,0,-0.5000313520431519,0,1,0,0.5000313520431519,0,-0.8660073280334473)



local Attachment_760=i("Attachment", Attachment_759)
Attachment_760.Name="Attachment"
Attachment_760:SetAttribute("AuraInstance", true)
Attachment_760.Visible=false
Attachment_760.CFrame=cf(-0.0000152587890625,-0.00002574920654296875,-20.376060485839844,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_761=i("ParticleEmitter", Attachment_760)
smoke_761.Name="smoke"
smoke_761:SetAttribute("AuraInstance", true)
smoke_761.Enabled=true
smoke_761.Rate=12.5
smoke_761.Lifetime=nr(2,2)
smoke_761.Speed=nr(10,10)
smoke_761.Rotation=nr(0,0)
smoke_761.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_761.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_761.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_761.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_761.LightEmission=-0.25
smoke_761.LightInfluence=0.5
smoke_761.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_761.Drag=0.5733733773231506
smoke_761.EmissionDirection=Enum.NormalId.Top
smoke_761.SpreadAngle=v2(15.000000,15.000000)
smoke_761.ZOffset=0
smoke_761.Texture="rbxassetid://101025037569585"
smoke_761.LockedToPart=true
smoke_761.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_761.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_761.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_761.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_761.FlipbookStartRandom=true
smoke_761.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_761.Brightness=0.5



local shine_762=i("ParticleEmitter", Attachment_760)
shine_762.Name="shine"
shine_762:SetAttribute("AuraInstance", true)
shine_762.Enabled=true
shine_762.Rate=3
shine_762.Lifetime=nr(1,3)
shine_762.Speed=nr(8,8)
shine_762.Rotation=nr(90,90)
shine_762.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_762.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_762.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_762.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_762.LightEmission=1
shine_762.LightInfluence=0
shine_762.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_762.Drag=0.5733733773231506
shine_762.EmissionDirection=Enum.NormalId.Top
shine_762.SpreadAngle=v2(15.000000,15.000000)
shine_762.ZOffset=5
shine_762.Texture="rbxassetid://106014481074878"
shine_762.LockedToPart=true
shine_762.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_762.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_762.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_762.FlipbookFramerate=nr(17,17)
shine_762.FlipbookStartRandom=true
shine_762.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_762.Brightness=25



local shine_763=i("ParticleEmitter", Attachment_760)
shine_763.Name="shine"
shine_763:SetAttribute("AuraInstance", true)
shine_763.Enabled=true
shine_763.Rate=3
shine_763.Lifetime=nr(1,3)
shine_763.Speed=nr(8,8)
shine_763.Rotation=nr(90,90)
shine_763.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_763.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_763.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_763.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_763.LightEmission=1
shine_763.LightInfluence=0
shine_763.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_763.Drag=0.5733733773231506
shine_763.EmissionDirection=Enum.NormalId.Top
shine_763.SpreadAngle=v2(15.000000,15.000000)
shine_763.ZOffset=5
shine_763.Texture="rbxassetid://76329684690462"
shine_763.LockedToPart=true
shine_763.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_763.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_763.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_763.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_763.FlipbookStartRandom=true
shine_763.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_763.Brightness=5



local shine_764=i("ParticleEmitter", Attachment_760)
shine_764.Name="shine"
shine_764:SetAttribute("AuraInstance", true)
shine_764.Enabled=true
shine_764.Rate=3
shine_764.Lifetime=nr(1,3)
shine_764.Speed=nr(5,5)
shine_764.Rotation=nr(180,180)
shine_764.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_764.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_764.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_764.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_764.LightEmission=1
shine_764.LightInfluence=0
shine_764.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_764.Drag=1
shine_764.EmissionDirection=Enum.NormalId.Top
shine_764.SpreadAngle=v2(20.000000,20.000000)
shine_764.ZOffset=5
shine_764.Texture="rbxassetid://131246143677315"
shine_764.LockedToPart=true
shine_764.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_764.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_764.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_764.FlipbookFramerate=nr(17,17)
shine_764.FlipbookStartRandom=true
shine_764.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_764.Brightness=5



local Attachment_765=i("Attachment", floorSpin_716)
Attachment_765.Name="Attachment"
Attachment_765:SetAttribute("AuraInstance", true)
Attachment_765.Visible=false
Attachment_765.CFrame=cf(0.0000457763671875,-0.16096282005310059,0.000030517578125,-0.49995946884155273,0,-0.8660488128662109,0,1,0,0.8660488128662109,0,-0.49995946884155273)



local Attachment_766=i("Attachment", Attachment_765)
Attachment_766.Name="Attachment"
Attachment_766:SetAttribute("AuraInstance", true)
Attachment_766.Visible=false
Attachment_766.CFrame=cf(0,-0.000025600194931030273,-20.376052856445312,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_767=i("ParticleEmitter", Attachment_766)
smoke_767.Name="smoke"
smoke_767:SetAttribute("AuraInstance", true)
smoke_767.Enabled=true
smoke_767.Rate=12.5
smoke_767.Lifetime=nr(2,2)
smoke_767.Speed=nr(10,10)
smoke_767.Rotation=nr(0,0)
smoke_767.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_767.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_767.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_767.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_767.LightEmission=-0.25
smoke_767.LightInfluence=0.5
smoke_767.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_767.Drag=0.5733733773231506
smoke_767.EmissionDirection=Enum.NormalId.Top
smoke_767.SpreadAngle=v2(15.000000,15.000000)
smoke_767.ZOffset=0
smoke_767.Texture="rbxassetid://101025037569585"
smoke_767.LockedToPart=true
smoke_767.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_767.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_767.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_767.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_767.FlipbookStartRandom=true
smoke_767.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_767.Brightness=0.5



local shine_768=i("ParticleEmitter", Attachment_766)
shine_768.Name="shine"
shine_768:SetAttribute("AuraInstance", true)
shine_768.Enabled=true
shine_768.Rate=3
shine_768.Lifetime=nr(1,3)
shine_768.Speed=nr(8,8)
shine_768.Rotation=nr(90,90)
shine_768.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_768.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_768.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_768.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_768.LightEmission=1
shine_768.LightInfluence=0
shine_768.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_768.Drag=0.5733733773231506
shine_768.EmissionDirection=Enum.NormalId.Top
shine_768.SpreadAngle=v2(15.000000,15.000000)
shine_768.ZOffset=5
shine_768.Texture="rbxassetid://106014481074878"
shine_768.LockedToPart=true
shine_768.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_768.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_768.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_768.FlipbookFramerate=nr(17,17)
shine_768.FlipbookStartRandom=true
shine_768.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_768.Brightness=25



local shine_769=i("ParticleEmitter", Attachment_766)
shine_769.Name="shine"
shine_769:SetAttribute("AuraInstance", true)
shine_769.Enabled=true
shine_769.Rate=3
shine_769.Lifetime=nr(1,3)
shine_769.Speed=nr(8,8)
shine_769.Rotation=nr(90,90)
shine_769.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_769.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_769.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_769.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_769.LightEmission=1
shine_769.LightInfluence=0
shine_769.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_769.Drag=0.5733733773231506
shine_769.EmissionDirection=Enum.NormalId.Top
shine_769.SpreadAngle=v2(15.000000,15.000000)
shine_769.ZOffset=5
shine_769.Texture="rbxassetid://76329684690462"
shine_769.LockedToPart=true
shine_769.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_769.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_769.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_769.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_769.FlipbookStartRandom=true
shine_769.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_769.Brightness=5



local shine_770=i("ParticleEmitter", Attachment_766)
shine_770.Name="shine"
shine_770:SetAttribute("AuraInstance", true)
shine_770.Enabled=true
shine_770.Rate=3
shine_770.Lifetime=nr(1,3)
shine_770.Speed=nr(5,5)
shine_770.Rotation=nr(180,180)
shine_770.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_770.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_770.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_770.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_770.LightEmission=1
shine_770.LightInfluence=0
shine_770.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_770.Drag=1
shine_770.EmissionDirection=Enum.NormalId.Top
shine_770.SpreadAngle=v2(20.000000,20.000000)
shine_770.ZOffset=5
shine_770.Texture="rbxassetid://131246143677315"
shine_770.LockedToPart=true
shine_770.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_770.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_770.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_770.FlipbookFramerate=nr(17,17)
shine_770.FlipbookStartRandom=true
shine_770.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_770.Brightness=5



local Attachment_771=i("Attachment", floorSpin_716)
Attachment_771.Name="Attachment"
Attachment_771:SetAttribute("AuraInstance", true)
Attachment_771.Visible=false
Attachment_771.CFrame=cf(0.0000457763671875,-0.16096282005310059,0.000030517578125,0,0,-1,0,1,0,1,0,0)



local Attachment_772=i("Attachment", Attachment_771)
Attachment_772.Name="Attachment"
Attachment_772:SetAttribute("AuraInstance", true)
Attachment_772.Visible=false
Attachment_772.CFrame=cf(-0.00002288818359375,-0.00002580881118774414,-20.376068115234375,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_773=i("ParticleEmitter", Attachment_772)
smoke_773.Name="smoke"
smoke_773:SetAttribute("AuraInstance", true)
smoke_773.Enabled=true
smoke_773.Rate=12.5
smoke_773.Lifetime=nr(2,2)
smoke_773.Speed=nr(10,10)
smoke_773.Rotation=nr(0,0)
smoke_773.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_773.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_773.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_773.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_773.LightEmission=-0.25
smoke_773.LightInfluence=0.5
smoke_773.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_773.Drag=0.5733733773231506
smoke_773.EmissionDirection=Enum.NormalId.Top
smoke_773.SpreadAngle=v2(15.000000,15.000000)
smoke_773.ZOffset=0
smoke_773.Texture="rbxassetid://101025037569585"
smoke_773.LockedToPart=true
smoke_773.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_773.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_773.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_773.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_773.FlipbookStartRandom=true
smoke_773.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_773.Brightness=0.5



local shine_774=i("ParticleEmitter", Attachment_772)
shine_774.Name="shine"
shine_774:SetAttribute("AuraInstance", true)
shine_774.Enabled=true
shine_774.Rate=3
shine_774.Lifetime=nr(1,3)
shine_774.Speed=nr(8,8)
shine_774.Rotation=nr(90,90)
shine_774.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_774.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_774.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_774.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_774.LightEmission=1
shine_774.LightInfluence=0
shine_774.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_774.Drag=0.5733733773231506
shine_774.EmissionDirection=Enum.NormalId.Top
shine_774.SpreadAngle=v2(15.000000,15.000000)
shine_774.ZOffset=5
shine_774.Texture="rbxassetid://106014481074878"
shine_774.LockedToPart=true
shine_774.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_774.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_774.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_774.FlipbookFramerate=nr(17,17)
shine_774.FlipbookStartRandom=true
shine_774.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_774.Brightness=25



local shine_775=i("ParticleEmitter", Attachment_772)
shine_775.Name="shine"
shine_775:SetAttribute("AuraInstance", true)
shine_775.Enabled=true
shine_775.Rate=3
shine_775.Lifetime=nr(1,3)
shine_775.Speed=nr(8,8)
shine_775.Rotation=nr(90,90)
shine_775.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_775.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_775.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_775.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_775.LightEmission=1
shine_775.LightInfluence=0
shine_775.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_775.Drag=0.5733733773231506
shine_775.EmissionDirection=Enum.NormalId.Top
shine_775.SpreadAngle=v2(15.000000,15.000000)
shine_775.ZOffset=5
shine_775.Texture="rbxassetid://76329684690462"
shine_775.LockedToPart=true
shine_775.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_775.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_775.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_775.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_775.FlipbookStartRandom=true
shine_775.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_775.Brightness=5



local shine_776=i("ParticleEmitter", Attachment_772)
shine_776.Name="shine"
shine_776:SetAttribute("AuraInstance", true)
shine_776.Enabled=true
shine_776.Rate=3
shine_776.Lifetime=nr(1,3)
shine_776.Speed=nr(5,5)
shine_776.Rotation=nr(180,180)
shine_776.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_776.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_776.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_776.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_776.LightEmission=1
shine_776.LightInfluence=0
shine_776.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_776.Drag=1
shine_776.EmissionDirection=Enum.NormalId.Top
shine_776.SpreadAngle=v2(20.000000,20.000000)
shine_776.ZOffset=5
shine_776.Texture="rbxassetid://131246143677315"
shine_776.LockedToPart=true
shine_776.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_776.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_776.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_776.FlipbookFramerate=nr(17,17)
shine_776.FlipbookStartRandom=true
shine_776.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_776.Brightness=5



local Attachment_777=i("Attachment", floorSpin_716)
Attachment_777.Name="Attachment"
Attachment_777:SetAttribute("AuraInstance", true)
Attachment_777.Visible=false
Attachment_777.CFrame=cf(0.0000457763671875,-0.16096282005310059,0.000030517578125,0.49995946884155273,0,-0.8660488128662109,0,1,0,0.8660488128662109,0,0.49995946884155273)



local Attachment_778=i("Attachment", Attachment_777)
Attachment_778.Name="Attachment"
Attachment_778:SetAttribute("AuraInstance", true)
Attachment_778.Visible=false
Attachment_778.CFrame=cf(-0.0000152587890625,-0.000025212764739990234,-20.375991821289062,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_779=i("ParticleEmitter", Attachment_778)
smoke_779.Name="smoke"
smoke_779:SetAttribute("AuraInstance", true)
smoke_779.Enabled=true
smoke_779.Rate=12.5
smoke_779.Lifetime=nr(2,2)
smoke_779.Speed=nr(10,10)
smoke_779.Rotation=nr(0,0)
smoke_779.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_779.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_779.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_779.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_779.LightEmission=-0.25
smoke_779.LightInfluence=0.5
smoke_779.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_779.Drag=0.5733733773231506
smoke_779.EmissionDirection=Enum.NormalId.Top
smoke_779.SpreadAngle=v2(15.000000,15.000000)
smoke_779.ZOffset=0
smoke_779.Texture="rbxassetid://101025037569585"
smoke_779.LockedToPart=true
smoke_779.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_779.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_779.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_779.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_779.FlipbookStartRandom=true
smoke_779.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_779.Brightness=0.5



local shine_780=i("ParticleEmitter", Attachment_778)
shine_780.Name="shine"
shine_780:SetAttribute("AuraInstance", true)
shine_780.Enabled=true
shine_780.Rate=3
shine_780.Lifetime=nr(1,3)
shine_780.Speed=nr(8,8)
shine_780.Rotation=nr(90,90)
shine_780.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_780.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_780.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_780.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_780.LightEmission=1
shine_780.LightInfluence=0
shine_780.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_780.Drag=0.5733733773231506
shine_780.EmissionDirection=Enum.NormalId.Top
shine_780.SpreadAngle=v2(15.000000,15.000000)
shine_780.ZOffset=5
shine_780.Texture="rbxassetid://106014481074878"
shine_780.LockedToPart=true
shine_780.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_780.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_780.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_780.FlipbookFramerate=nr(17,17)
shine_780.FlipbookStartRandom=true
shine_780.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_780.Brightness=25



local shine_781=i("ParticleEmitter", Attachment_778)
shine_781.Name="shine"
shine_781:SetAttribute("AuraInstance", true)
shine_781.Enabled=true
shine_781.Rate=3
shine_781.Lifetime=nr(1,3)
shine_781.Speed=nr(8,8)
shine_781.Rotation=nr(90,90)
shine_781.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_781.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_781.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_781.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_781.LightEmission=1
shine_781.LightInfluence=0
shine_781.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_781.Drag=0.5733733773231506
shine_781.EmissionDirection=Enum.NormalId.Top
shine_781.SpreadAngle=v2(15.000000,15.000000)
shine_781.ZOffset=5
shine_781.Texture="rbxassetid://76329684690462"
shine_781.LockedToPart=true
shine_781.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_781.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_781.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_781.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_781.FlipbookStartRandom=true
shine_781.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_781.Brightness=5



local shine_782=i("ParticleEmitter", Attachment_778)
shine_782.Name="shine"
shine_782:SetAttribute("AuraInstance", true)
shine_782.Enabled=true
shine_782.Rate=3
shine_782.Lifetime=nr(1,3)
shine_782.Speed=nr(5,5)
shine_782.Rotation=nr(180,180)
shine_782.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_782.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_782.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_782.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_782.LightEmission=1
shine_782.LightInfluence=0
shine_782.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_782.Drag=1
shine_782.EmissionDirection=Enum.NormalId.Top
shine_782.SpreadAngle=v2(20.000000,20.000000)
shine_782.ZOffset=5
shine_782.Texture="rbxassetid://131246143677315"
shine_782.LockedToPart=true
shine_782.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_782.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_782.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_782.FlipbookFramerate=nr(17,17)
shine_782.FlipbookStartRandom=true
shine_782.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_782.Brightness=5



local Attachment_783=i("Attachment", floorSpin_716)
Attachment_783.Name="Attachment"
Attachment_783:SetAttribute("AuraInstance", true)
Attachment_783.Visible=false
Attachment_783.CFrame=cf(0.0000457763671875,-0.16096258163452148,0.000030517578125,0.8660072684288025,0,-0.5000314116477966,0,1,0,0.5000314116477966,0,0.8660072684288025)



local Attachment_784=i("Attachment", Attachment_783)
Attachment_784.Name="Attachment"
Attachment_784:SetAttribute("AuraInstance", true)
Attachment_784.Visible=false
Attachment_784.CFrame=cf(0.0000152587890625,-0.00002562999725341797,-20.37603759765625,-0.49236202239990234,-0.7788954973220825,-0.38846030831336975,-0.8660510778427124,0.4829191267490387,0.12940096855163574,0.08680509030818939,0.40013861656188965,-0.9123343229293823)



local smoke_785=i("ParticleEmitter", Attachment_784)
smoke_785.Name="smoke"
smoke_785:SetAttribute("AuraInstance", true)
smoke_785.Enabled=true
smoke_785.Rate=12.5
smoke_785.Lifetime=nr(2,2)
smoke_785.Speed=nr(10,10)
smoke_785.Rotation=nr(0,0)
smoke_785.RotSpeed=nr(-8.600600242614746,8.600600242614746)
smoke_785.Size=ns({nsk(0.000000,2.836735,1.418367),nsk(0.100000,3.719290,1.418367),nsk(0.200000,4.568573,1.418367),nsk(0.300000,5.427573,1.418367),nsk(0.400000,6.321701,1.418367),nsk(0.500000,7.272447,1.418367),nsk(0.600000,8.303111,1.418367),nsk(0.700000,9.443791,1.418367),nsk(0.800000,10.739160,1.418367),nsk(0.900000,12.265723,1.418367),nsk(1.000000,14.183675,1.418367),nsk(1.000000,14.183675,1.418367)})
smoke_785.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199253,0.193750,0.000000),nsk(0.652553,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke_785.Color=cs({csk(0.000000,c3(0.160784,0.325490,0.312250)),csk(1.000000,c3(0.160784,0.325490,0.312250))})
smoke_785.LightEmission=-0.25
smoke_785.LightInfluence=0.5
smoke_785.Acceleration=v3(-5.000000,5.000000,3.000000)
smoke_785.Drag=0.5733733773231506
smoke_785.EmissionDirection=Enum.NormalId.Top
smoke_785.SpreadAngle=v2(15.000000,15.000000)
smoke_785.ZOffset=0
smoke_785.Texture="rbxassetid://101025037569585"
smoke_785.LockedToPart=true
smoke_785.Orientation=Enum.ParticleOrientation.VelocityParallel
smoke_785.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
smoke_785.FlipbookMode=Enum.ParticleFlipbookMode.Loop
smoke_785.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
smoke_785.FlipbookStartRandom=true
smoke_785.Squash=ns({nsk(0.000000,1.847458,0.000000),nsk(1.000000,-0.600000,0.000000)})
smoke_785.Brightness=0.5



local shine_786=i("ParticleEmitter", Attachment_784)
shine_786.Name="shine"
shine_786:SetAttribute("AuraInstance", true)
shine_786.Enabled=true
shine_786.Rate=3
shine_786.Lifetime=nr(1,3)
shine_786.Speed=nr(8,8)
shine_786.Rotation=nr(90,90)
shine_786.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_786.Size=ns({nsk(0.000000,5.830000,1.780000),nsk(1.000000,5.830258,1.778598)})
shine_786.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_786.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_786.LightEmission=1
shine_786.LightInfluence=0
shine_786.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_786.Drag=0.5733733773231506
shine_786.EmissionDirection=Enum.NormalId.Top
shine_786.SpreadAngle=v2(15.000000,15.000000)
shine_786.ZOffset=5
shine_786.Texture="rbxassetid://106014481074878"
shine_786.LockedToPart=true
shine_786.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_786.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
shine_786.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_786.FlipbookFramerate=nr(17,17)
shine_786.FlipbookStartRandom=true
shine_786.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_786.Brightness=25



local shine_787=i("ParticleEmitter", Attachment_784)
shine_787.Name="shine"
shine_787:SetAttribute("AuraInstance", true)
shine_787.Enabled=true
shine_787.Rate=3
shine_787.Lifetime=nr(1,3)
shine_787.Speed=nr(5,5)
shine_787.Rotation=nr(180,180)
shine_787.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_787.Size=ns({nsk(0.000000,1.439114,1.439114),nsk(1.000000,2.103321,2.103321)})
shine_787.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.233618,0.075000,0.000000),nsk(0.724596,0.312500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_787.Color=cs({csk(0.000000,c3(0.490196,0.959973,1.000000)),csk(0.455017,c3(0.482353,1.000000,0.938285)),csk(0.477509,c3(0.474510,1.000000,0.763256)),csk(0.506920,c3(0.485330,1.000000,0.976898)),csk(0.743945,c3(0.333333,1.000000,0.879401)),csk(1.000000,c3(0.490196,0.959973,1.000000))})
shine_787.LightEmission=1
shine_787.LightInfluence=0
shine_787.Acceleration=v3(-5.000000,5.000000,7.000000)
shine_787.Drag=1
shine_787.EmissionDirection=Enum.NormalId.Top
shine_787.SpreadAngle=v2(20.000000,20.000000)
shine_787.ZOffset=5
shine_787.Texture="rbxassetid://131246143677315"
shine_787.LockedToPart=true
shine_787.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_787.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_787.FlipbookMode=Enum.ParticleFlipbookMode.Loop
shine_787.FlipbookFramerate=nr(17,17)
shine_787.FlipbookStartRandom=true
shine_787.Squash=ns({nsk(0.000000,-0.350000,0.000000),nsk(1.000000,-0.600000,0.211765)})
shine_787.Brightness=5



local shine_788=i("ParticleEmitter", Attachment_784)
shine_788.Name="shine"
shine_788:SetAttribute("AuraInstance", true)
shine_788.Enabled=true
shine_788.Rate=3
shine_788.Lifetime=nr(1,3)
shine_788.Speed=nr(8,8)
shine_788.Rotation=nr(90,90)
shine_788.RotSpeed=nr(-8.600600242614746,8.600600242614746)
shine_788.Size=ns({nsk(0.000000,2.214022,0.000000),nsk(0.031489,8.228783,0.000000),nsk(0.079149,1.955720,0.000000),nsk(0.190638,1.697417,0.000000),nsk(0.280000,1.992620,0.000000),nsk(0.303830,1.586716,0.000000),nsk(0.370213,1.992620,0.000000),nsk(0.417872,1.734318,0.000000),nsk(0.457021,1.107011,0.000000),nsk(0.487660,2.509225,0.000000),nsk(0.512340,8.118081,0.000000),nsk(0.537021,2.398524,0.000000),nsk(0.609362,1.771218,0.000000),nsk(0.629787,0.516605,0.000000),nsk(0.687660,2.214022,0.000000),nsk(0.767660,1.476015,0.000000),nsk(0.822979,1.734318,0.000000),nsk(0.852766,3.321033,0.000000),nsk(0.880851,1.623616,0.000000),nsk(1.000000,0.000000,0.000000)})
shine_788.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499525,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine_788.Color=cs({csk(0.000000,c3(0.490196,1.000000,0.946321)),csk(1.000000,c3(0.490196,1.000000,0.946321))})
shine_788.LightEmission=1
shine_788.LightInfluence=0
shine_788.Acceleration=v3(-5.000000,5.000000,3.000000)
shine_788.Drag=0.5733733773231506
shine_788.EmissionDirection=Enum.NormalId.Top
shine_788.SpreadAngle=v2(15.000000,15.000000)
shine_788.ZOffset=5
shine_788.Texture="rbxassetid://76329684690462"
shine_788.LockedToPart=true
shine_788.Orientation=Enum.ParticleOrientation.VelocityParallel
shine_788.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
shine_788.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
shine_788.FlipbookFramerate=nr(17.201200485229492,17.201200485229492)
shine_788.FlipbookStartRandom=true
shine_788.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
shine_788.Brightness=5
end
Floor1()

local DebrisTriangles1_1511=i("ParticleEmitter", Floor)
DebrisTriangles1_1511.Name="DebrisTriangles1"
DebrisTriangles1_1511:SetAttribute("AuraInstance", true)
DebrisTriangles1_1511.Enabled=true
DebrisTriangles1_1511.Rate=2
DebrisTriangles1_1511.Lifetime=nr(2,2)
DebrisTriangles1_1511.Speed=nr(9.156513214111328,9.156513214111328)
DebrisTriangles1_1511.Rotation=nr(0,0)
DebrisTriangles1_1511.RotSpeed=nr(0,0)
DebrisTriangles1_1511.Size=ns({nsk(0.000000,0.915651,0.000000),nsk(1.000000,0.915652,0.000000)})
DebrisTriangles1_1511.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.110588,0.087500,0.000000),nsk(0.427059,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebrisTriangles1_1511.Color=cs({csk(0.000000,c3(0.403922,0.698039,0.611765)),csk(1.000000,c3(0.403922,0.698039,0.611765))})
DebrisTriangles1_1511.LightEmission=1
DebrisTriangles1_1511.LightInfluence=0
DebrisTriangles1_1511.Acceleration=v3(0.000000,0.000000,0.000000)
DebrisTriangles1_1511.Drag=0
DebrisTriangles1_1511.EmissionDirection=Enum.NormalId.Top
DebrisTriangles1_1511.SpreadAngle=v2(8.000000,8.000000)
DebrisTriangles1_1511.ZOffset=5
DebrisTriangles1_1511.Texture="rbxassetid://16879578139"
DebrisTriangles1_1511.LockedToPart=true
DebrisTriangles1_1511.Orientation=Enum.ParticleOrientation.FacingCamera
DebrisTriangles1_1511.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
DebrisTriangles1_1511.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DebrisTriangles1_1511.FlipbookFramerate=nr(50,50)
DebrisTriangles1_1511.FlipbookStartRandom=false
DebrisTriangles1_1511.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DebrisTriangles1_1511.Brightness=3



local DebrisLines3_1512=i("ParticleEmitter", Floor)
DebrisLines3_1512.Name="DebrisLines3"
DebrisLines3_1512:SetAttribute("AuraInstance", true)
DebrisLines3_1512.Enabled=true
DebrisLines3_1512.Rate=2.5
DebrisLines3_1512.Lifetime=nr(2,2)
DebrisLines3_1512.Speed=nr(14.650421142578125,14.650421142578125)
DebrisLines3_1512.Rotation=nr(-1000,1000)
DebrisLines3_1512.RotSpeed=nr(-4,4)
DebrisLines3_1512.Size=ns({nsk(0.000000,0.915651,0.000000),nsk(1.000000,0.915651,0.000000)})
DebrisLines3_1512.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.110588,0.087500,0.000000),nsk(0.427059,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebrisLines3_1512.Color=cs({csk(0.000000,c3(0.452686,0.689881,0.698380)),csk(1.000000,c3(0.452686,0.689881,0.698380))})
DebrisLines3_1512.LightEmission=1
DebrisLines3_1512.LightInfluence=0
DebrisLines3_1512.Acceleration=v3(0.000000,0.000000,0.000000)
DebrisLines3_1512.Drag=0
DebrisLines3_1512.EmissionDirection=Enum.NormalId.Top
DebrisLines3_1512.SpreadAngle=v2(0.000000,0.000000)
DebrisLines3_1512.ZOffset=5
DebrisLines3_1512.Texture="rbxassetid://16056964777"
DebrisLines3_1512.LockedToPart=true
DebrisLines3_1512.Orientation=Enum.ParticleOrientation.FacingCamera
DebrisLines3_1512.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
DebrisLines3_1512.FlipbookMode=Enum.ParticleFlipbookMode.Loop
DebrisLines3_1512.FlipbookFramerate=nr(25,25)
DebrisLines3_1512.FlipbookStartRandom=false
DebrisLines3_1512.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DebrisLines3_1512.Brightness=50



local DebrisLines2_1513=i("ParticleEmitter", Floor)
DebrisLines2_1513.Name="DebrisLines2"
DebrisLines2_1513:SetAttribute("AuraInstance", true)
DebrisLines2_1513.Enabled=true
DebrisLines2_1513.Rate=6
DebrisLines2_1513.Lifetime=nr(2,2)
DebrisLines2_1513.Speed=nr(9.156513214111328,9.156513214111328)
DebrisLines2_1513.Rotation=nr(90,90)
DebrisLines2_1513.RotSpeed=nr(0,0)
DebrisLines2_1513.Size=ns({nsk(0.000000,3.500000,0.000000),nsk(1.000000,0.000000,0.000000)})
DebrisLines2_1513.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.110588,0.087500,0.000000),nsk(0.427059,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebrisLines2_1513.Color=cs({csk(0.000000,c3(0.505045,0.927397,0.647899)),csk(1.000000,c3(0.533264,0.914093,0.927738))})
DebrisLines2_1513.LightEmission=1
DebrisLines2_1513.LightInfluence=0
DebrisLines2_1513.Acceleration=v3(0.000000,0.000000,0.000000)
DebrisLines2_1513.Drag=0
DebrisLines2_1513.EmissionDirection=Enum.NormalId.Top
DebrisLines2_1513.SpreadAngle=v2(7.000000,7.000000)
DebrisLines2_1513.ZOffset=5
DebrisLines2_1513.Texture="rbxassetid://16879591102"
DebrisLines2_1513.LockedToPart=true
DebrisLines2_1513.Orientation=Enum.ParticleOrientation.VelocityParallel
DebrisLines2_1513.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
DebrisLines2_1513.FlipbookMode=Enum.ParticleFlipbookMode.Loop
DebrisLines2_1513.FlipbookFramerate=nr(35,35)
DebrisLines2_1513.FlipbookStartRandom=false
DebrisLines2_1513.Squash=ns({nsk(0.000000,0.700000,0.000000),nsk(1.000000,0.700000,0.000000)})
DebrisLines2_1513.Brightness=3



local DebrisLines_1514=i("ParticleEmitter", Floor)
DebrisLines_1514.Name="DebrisLines"
DebrisLines_1514:SetAttribute("AuraInstance", true)
DebrisLines_1514.Enabled=true
DebrisLines_1514.Rate=4.5
DebrisLines_1514.Lifetime=nr(2,2)
DebrisLines_1514.Speed=nr(12.819117546081543,12.819117546081543)
DebrisLines_1514.Rotation=nr(90,90)
DebrisLines_1514.RotSpeed=nr(0,0)
DebrisLines_1514.Size=ns({nsk(0.000000,12.819118,0.000000),nsk(1.000000,12.819118,0.000000)})
DebrisLines_1514.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.110588,0.087500,0.000000),nsk(0.427059,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebrisLines_1514.Color=cs({csk(0.000000,c3(0.349020,0.776471,0.690196)),csk(1.000000,c3(0.349020,0.776471,0.470588))})
DebrisLines_1514.LightEmission=1
DebrisLines_1514.LightInfluence=0
DebrisLines_1514.Acceleration=v3(0.000000,0.000000,0.000000)
DebrisLines_1514.Drag=0
DebrisLines_1514.EmissionDirection=Enum.NormalId.Top
DebrisLines_1514.SpreadAngle=v2(0.000000,0.000000)
DebrisLines_1514.ZOffset=5
DebrisLines_1514.Texture="rbxassetid://17635060489"
DebrisLines_1514.LockedToPart=true
DebrisLines_1514.Orientation=Enum.ParticleOrientation.VelocityParallel
DebrisLines_1514.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DebrisLines_1514.FlipbookMode=Enum.ParticleFlipbookMode.Loop
DebrisLines_1514.FlipbookFramerate=nr(25,25)
DebrisLines_1514.FlipbookStartRandom=false
DebrisLines_1514.Squash=ns({nsk(0.000000,-0.400000,0.000000),nsk(1.000000,-0.400000,0.000000)})
DebrisLines_1514.Brightness=10



local DebrisGlass1_1515=i("ParticleEmitter", Floor)
DebrisGlass1_1515.Name="DebrisGlass1"
DebrisGlass1_1515:SetAttribute("AuraInstance", true)
DebrisGlass1_1515.Enabled=true
DebrisGlass1_1515.Rate=3
DebrisGlass1_1515.Lifetime=nr(2,2)
DebrisGlass1_1515.Speed=nr(9.156513214111328,9.156513214111328)
DebrisGlass1_1515.Rotation=nr(90,90)
DebrisGlass1_1515.RotSpeed=nr(0,0)
DebrisGlass1_1515.Size=ns({nsk(0.000000,0.915651,0.000000),nsk(1.000000,0.915651,0.000000)})
DebrisGlass1_1515.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.110588,0.087500,0.000000),nsk(0.427059,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebrisGlass1_1515.Color=cs({csk(0.000000,c3(0.439913,0.698380,0.650295)),csk(1.000000,c3(0.439913,0.698380,0.650295))})
DebrisGlass1_1515.LightEmission=1
DebrisGlass1_1515.LightInfluence=0
DebrisGlass1_1515.Acceleration=v3(0.000000,0.000000,0.000000)
DebrisGlass1_1515.Drag=0
DebrisGlass1_1515.EmissionDirection=Enum.NormalId.Top
DebrisGlass1_1515.SpreadAngle=v2(4.000000,4.000000)
DebrisGlass1_1515.ZOffset=7.539999961853027
DebrisGlass1_1515.Texture="http://www.roblox.com/asset/?id=82262718732755"
DebrisGlass1_1515.LockedToPart=true
DebrisGlass1_1515.Orientation=Enum.ParticleOrientation.VelocityParallel
DebrisGlass1_1515.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
DebrisGlass1_1515.FlipbookMode=Enum.ParticleFlipbookMode.Loop
DebrisGlass1_1515.FlipbookFramerate=nr(25,25)
DebrisGlass1_1515.FlipbookStartRandom=false
DebrisGlass1_1515.Squash=ns({nsk(0.000000,0.300000,0.000000),nsk(1.000000,0.300000,0.000000)})
DebrisGlass1_1515.Brightness=0.5



local cfog1_1516=i("ParticleEmitter", Floor)
cfog1_1516.Name="c.fog 1"
cfog1_1516:SetAttribute("AuraInstance", true)
cfog1_1516.Enabled=true
cfog1_1516.Rate=15
cfog1_1516.Lifetime=nr(3,4)
cfog1_1516.Speed=nr(6,6)
cfog1_1516.Rotation=nr(-1000,1000)
cfog1_1516.RotSpeed=nr(-5,5)
cfog1_1516.Size=ns({nsk(0.000000,15.253332,0.000000),nsk(1.000000,20.000000,0.000000)})
cfog1_1516.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.980000,0.000000),nsk(1.000000,1.000000,0.000000)})
cfog1_1516.Color=cs({csk(0.000000,c3(0.244004,0.627536,0.698380)),csk(1.000000,c3(0.244004,0.627536,0.698380))})
cfog1_1516.LightEmission=-1.5
cfog1_1516.LightInfluence=0
cfog1_1516.Acceleration=v3(0.000000,0.000000,0.000000)
cfog1_1516.Drag=0
cfog1_1516.EmissionDirection=Enum.NormalId.Top
cfog1_1516.SpreadAngle=v2(25.000000,-25.000000)
cfog1_1516.ZOffset=-0.008999999612569809
cfog1_1516.Texture="rbxassetid://14265652323"
cfog1_1516.LockedToPart=false
cfog1_1516.Orientation=Enum.ParticleOrientation.FacingCamera
cfog1_1516.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cfog1_1516.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cfog1_1516.FlipbookFramerate=nr(1,1)
cfog1_1516.FlipbookStartRandom=false
cfog1_1516.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
cfog1_1516.Brightness=1



local cfog2_1517=i("ParticleEmitter", Floor)
cfog2_1517.Name="c.fog 2"
cfog2_1517:SetAttribute("AuraInstance", true)
cfog2_1517.Enabled=true
cfog2_1517.Rate=15
cfog2_1517.Lifetime=nr(4,5)
cfog2_1517.Speed=nr(4.5,4.5)
cfog2_1517.Rotation=nr(-1000,1000)
cfog2_1517.RotSpeed=nr(-5,5)
cfog2_1517.Size=ns({nsk(0.000000,15.253332,0.000000),nsk(1.000000,20.000000,0.000000)})
cfog2_1517.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498000,0.980000,0.000000),nsk(1.000000,1.000000,0.000000)})
cfog2_1517.Color=cs({csk(0.000000,c3(0.244004,0.627536,0.698380)),csk(1.000000,c3(0.244004,0.627536,0.698380))})
cfog2_1517.LightEmission=-5
cfog2_1517.LightInfluence=0
cfog2_1517.Acceleration=v3(0.000000,0.000000,0.000000)
cfog2_1517.Drag=0
cfog2_1517.EmissionDirection=Enum.NormalId.Top
cfog2_1517.SpreadAngle=v2(30.000000,-30.000000)
cfog2_1517.ZOffset=0.3230000138282776
cfog2_1517.Texture="rbxassetid://18450622974"
cfog2_1517.LockedToPart=false
cfog2_1517.Orientation=Enum.ParticleOrientation.FacingCamera
cfog2_1517.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cfog2_1517.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cfog2_1517.FlipbookFramerate=nr(1,1)
cfog2_1517.FlipbookStartRandom=false
cfog2_1517.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
cfog2_1517.Brightness=1



local DebrisGhost1_1518=i("ParticleEmitter", Floor)
DebrisGhost1_1518.Name="DebrisGhost1"
DebrisGhost1_1518:SetAttribute("AuraInstance", true)
DebrisGhost1_1518.Enabled=false
DebrisGhost1_1518.Rate=7
DebrisGhost1_1518.Lifetime=nr(1,1)
DebrisGhost1_1518.Speed=nr(15,15)
DebrisGhost1_1518.Rotation=nr(-90,-90)
DebrisGhost1_1518.RotSpeed=nr(0,0)
DebrisGhost1_1518.Size=ns({nsk(0.000000,2.000000,0.000000),nsk(0.222128,3.062730,0.627306),nsk(1.000000,2.214022,0.000000)})
DebrisGhost1_1518.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.185436,0.160333,0.000000),nsk(0.491436,0.003667,0.000000),nsk(1.000000,1.000000,0.000000)})
DebrisGhost1_1518.Color=cs({csk(0.000000,c3(0.438199,0.698380,0.650741)),csk(1.000000,c3(0.438199,0.698380,0.650741))})
DebrisGhost1_1518.LightEmission=1
DebrisGhost1_1518.LightInfluence=0
DebrisGhost1_1518.Acceleration=v3(0.000000,0.000000,0.000000)
DebrisGhost1_1518.Drag=0
DebrisGhost1_1518.EmissionDirection=Enum.NormalId.Top
DebrisGhost1_1518.SpreadAngle=v2(40.000000,40.000000)
DebrisGhost1_1518.ZOffset=7.539999961853027
DebrisGhost1_1518.Texture="rbxassetid://17006091734"
DebrisGhost1_1518.LockedToPart=true
DebrisGhost1_1518.Orientation=Enum.ParticleOrientation.VelocityParallel
DebrisGhost1_1518.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
DebrisGhost1_1518.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
DebrisGhost1_1518.FlipbookFramerate=nr(25,25)
DebrisGhost1_1518.FlipbookStartRandom=false
DebrisGhost1_1518.Squash=ns({nsk(0.000000,0.300000,0.000000),nsk(1.000000,0.623529,0.211764)})
DebrisGhost1_1518.Brightness=2




local att=i("Attachment",foldah)
att.Position=v3(0,0,.1)
att.Name="EyeShine"
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
e19.ZOffset=1
e19.Texture="rbxassetid://82921243876307"
e19.EmissionDirection="Top"
e19.Enabled=true 
e19.LockedToPart=true 
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
hhi=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
hhi:Disconnect()
att:Destroy()
end
if not head:FindFirstChild("EyeShine") then 
att.Parent=head
end
att.Position=v3(0,0,-.5)
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
local g=clamp(sound.PlaybackLoudness/5.5,0,15)
local tpos=sound.TimePosition







if tpos>=0 and tpos<=28.75 then
li.Color=rgb(255,0,0) 
li.Brightness=g*1.15
li.Range=sound.PlaybackLoudness/20
if sound.PlaybackLoudness>=200 then
e19.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
end
end
e19.Brightness=g
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>28.75 and tpos<=99 then
li.Color=rgb(0,0,255) 
li.Brightness=g*.5
li.Range=sound.PlaybackLoudness/35
if sound.PlaybackLoudness>=350 then
e19.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
end
end
e19.Brightness=g*.75
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>=99 and tpos<=113.15 then 
li.Color=rgb(255,0,0) 
li.Brightness=g*1.15
li.Range=sound.PlaybackLoudness/20
if sound.PlaybackLoudness>=150 then
e19.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
end
end
e19.Brightness=g
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>=113.25 and tpos<=155.5 then 
li.Color=rgb(0,0,255) 
li.Brightness=g*.5
li.Range=sound.PlaybackLoudness/35
if sound.PlaybackLoudness>=450 then
e19.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
end
end
e19.Brightness=g*.75
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>=155.5 and tpos<=198.15 then 
li.Color=rgb(255,0,0) 
li.Brightness=g*1.15
li.Range=sound.PlaybackLoudness/20
if sound.PlaybackLoudness>=300 then
e19.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
end
end
e19.Brightness=g
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>=198.15 and tpos<=272.1 then 
li.Color=rgb(0,0,255) 
li.Brightness=g*.5
li.Range=sound.PlaybackLoudness/35
if sound.PlaybackLoudness>=460 then
e19.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
end
end
e19.Brightness=g*.75
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>=272.1 and tpos<=285.75 then 
li.Color=rgb(255,0,0) 
li.Brightness=g*1.15
li.Range=sound.PlaybackLoudness/20
if sound.PlaybackLoudness>=150 then
e19.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
end
end
e19.Brightness=g
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>=285.75 and tpos<=314.8 then 
li.Color=rgb(0,0,255) 
li.Brightness=g*.5
li.Range=sound.PlaybackLoudness/35
if sound.PlaybackLoudness>=460 then
e19.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(0,0,255)),
  csk(1,rgb(255,0,0)),
})
end
end
e19.Brightness=g*.75
e19.Enabled=true
else
e19.Enabled=false

end
elseif tpos>=314.8 then 
li.Color=rgb(255,0,0) 
li.Brightness=g*.5
li.Range=sound.PlaybackLoudness/35
if sound.PlaybackLoudness>=460 then
e19.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
c.Color=cs({
  csk(0,rgb(255,0,0)),
  csk(1,rgb(0,0,255)),
})
end
end
e19.Brightness=g*.75
e19.Enabled=true
else
e19.Enabled=false

end
end
for _,c in foldah:GetDescendants() do
if c:IsA("ParticleEmitter") then 
--c.LightEmission=1
c.Brightness=.95+g*.75
end
end

end)
end
repeat Tachyon() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")