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
local Name="Gaia"

function Gaia()
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


local Floor_295=i("Attachment", Floor)
Floor_295.Name="Floor"
Floor_295:SetAttribute("AuraInstance", true)
Floor_295.Position=v3(0,-1,0)



local BackgroundF_296=i("ParticleEmitter", Floor_295)
BackgroundF_296.Name="BackgroundF"
BackgroundF_296:SetAttribute("_vfxEditorGraphSize", "[{\"envelope\":0,\"direction\":\"InOut\",\"index\":0,\"value\":0,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.10000000149011612,\"value\":5.266380786895752,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.20000000298023225,\"value\":10.229475021362305,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.30000001192092898,\"value\":14.854572296142579,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.4000000059604645,\"value\":19.099214553833009,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.5,\"value\":22.910520553588868,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.6000000238418579,\"value\":26.221357345581056,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.699999988079071,\"value\":28.944860458374025,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.800000011920929,\"value\":30.967927932739259,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":0.8999999761581421,\"value\":32.15282440185547,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":1,\"value\":32.448001861572269,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":1,\"value\":32.448001861572269,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"}]")
BackgroundF_296:SetAttribute("AuraInstance", true)
BackgroundF_296.Enabled=true
BackgroundF_296.Rate=10
BackgroundF_296.Lifetime=nr(1,1)
BackgroundF_296.Speed=nr(0.0010000000474974513,0.0010000000474974513)
BackgroundF_296.Rotation=nr(0,0)
BackgroundF_296.RotSpeed=nr(0,0)
BackgroundF_296.Size=ns({nsk(0.000000,35.000000,0.000000),nsk(1.000000,35.000000,0.000000)})
BackgroundF_296.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
BackgroundF_296.Color=cs({csk(0.000000,c3(0.176471,0.352941,0.525490)),csk(1.000000,c3(0.176471,0.352941,0.525490))})
BackgroundF_296.LightEmission=-2
BackgroundF_296.LightInfluence=0
BackgroundF_296.Acceleration=v3(0.000000,0.000000,0.000000)
BackgroundF_296.Drag=0
BackgroundF_296.EmissionDirection=Enum.NormalId.Top
BackgroundF_296.SpreadAngle=v2(0.004000,0.004000)
BackgroundF_296.ZOffset=-0.0010000000474974513
BackgroundF_296.Texture="rbxassetid://14197920028"
BackgroundF_296.LockedToPart=true
BackgroundF_296.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BackgroundF_296.FlipbookLayout=Enum.ParticleFlipbookLayout.None
BackgroundF_296.FlipbookMode=Enum.ParticleFlipbookMode.Loop
BackgroundF_296.FlipbookFramerate=nr(1,1)
BackgroundF_296.FlipbookStartRandom=false
BackgroundF_296.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
BackgroundF_296.Brightness=0.5



local DebF2_297=i("ParticleEmitter", Floor_295)
DebF2_297.Name="DebF2"
DebF2_297:SetAttribute("AuraInstance", true)
DebF2_297.Enabled=true
DebF2_297.Rate=10
DebF2_297.Lifetime=nr(1,1)
DebF2_297.Speed=nr(0.0010000000474974513,0.0010000000474974513)
DebF2_297.Rotation=nr(-120,120)
DebF2_297.RotSpeed=nr(20,20)
DebF2_297.Size=ns({nsk(0.000000,10.000000,0.000000),nsk(1.000000,30.000000,0.000000)})
DebF2_297.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebF2_297.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
DebF2_297.LightEmission=1
DebF2_297.LightInfluence=0
DebF2_297.Acceleration=v3(0.000000,0.000000,0.000000)
DebF2_297.Drag=0
DebF2_297.EmissionDirection=Enum.NormalId.Top
DebF2_297.SpreadAngle=v2(0.000000,0.000000)
DebF2_297.ZOffset=0.0010000000474974513
DebF2_297.Texture="rbxassetid://95115890168701"
DebF2_297.LockedToPart=true
DebF2_297.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
DebF2_297.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DebF2_297.FlipbookMode=Enum.ParticleFlipbookMode.Loop
DebF2_297.FlipbookFramerate=nr(1,1)
DebF2_297.FlipbookStartRandom=false
DebF2_297.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DebF2_297.Brightness=0.20000000298023224



local DebF1_298=i("ParticleEmitter", Floor_295)
DebF1_298.Name="DebF1"
DebF1_298:SetAttribute("AuraInstance", true)
DebF1_298.Enabled=true
DebF1_298.Rate=10
DebF1_298.Lifetime=nr(1,1)
DebF1_298.Speed=nr(0.0010000000474974513,0.0010000000474974513)
DebF1_298.Rotation=nr(-120,120)
DebF1_298.RotSpeed=nr(20,20)
DebF1_298.Size=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,20.000000,0.000000)})
DebF1_298.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebF1_298.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
DebF1_298.LightEmission=1
DebF1_298.LightInfluence=0
DebF1_298.Acceleration=v3(0.000000,0.000000,0.000000)
DebF1_298.Drag=0
DebF1_298.EmissionDirection=Enum.NormalId.Top
DebF1_298.SpreadAngle=v2(0.000000,0.000000)
DebF1_298.ZOffset=0.0020000000949949026
DebF1_298.Texture="rbxassetid://80980110027572"
DebF1_298.LockedToPart=true
DebF1_298.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
DebF1_298.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DebF1_298.FlipbookMode=Enum.ParticleFlipbookMode.Loop
DebF1_298.FlipbookFramerate=nr(1,1)
DebF1_298.FlipbookStartRandom=false
DebF1_298.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DebF1_298.Brightness=15



local DebF4_299=i("ParticleEmitter", Floor_295)
DebF4_299.Name="DebF4"
DebF4_299:SetAttribute("AuraInstance", true)
DebF4_299.Enabled=true
DebF4_299.Rate=10
DebF4_299.Lifetime=nr(1,1)
DebF4_299.Speed=nr(0.0010000000474974513,0.0010000000474974513)
DebF4_299.Rotation=nr(-120,120)
DebF4_299.RotSpeed=nr(40,40)
DebF4_299.Size=ns({nsk(0.000000,40.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DebF4_299.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DebF4_299.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
DebF4_299.LightEmission=1
DebF4_299.LightInfluence=0
DebF4_299.Acceleration=v3(0.000000,0.000000,0.000000)
DebF4_299.Drag=0
DebF4_299.EmissionDirection=Enum.NormalId.Top
DebF4_299.SpreadAngle=v2(0.000000,0.000000)
DebF4_299.ZOffset=0.003000000026077032
DebF4_299.Texture="rbxassetid://134633127073597"
DebF4_299.LockedToPart=true
DebF4_299.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
DebF4_299.FlipbookLayout=Enum.ParticleFlipbookLayout.None
DebF4_299.FlipbookMode=Enum.ParticleFlipbookMode.Loop
DebF4_299.FlipbookFramerate=nr(1,1)
DebF4_299.FlipbookStartRandom=false
DebF4_299.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DebF4_299.Brightness=1



local Light_300=i("Attachment", Floor_295)
Light_300.Name="Light"
Light_300:SetAttribute("AuraInstance", true)
Light_300.Visible=false






local Attachment_302=i("Attachment", Floor_295)
Attachment_302.Name="Attachment"
Attachment_302:SetAttribute("AuraInstance", true)
Attachment_302.Visible=false



local Pulse_303=i("ParticleEmitter", Attachment_302)
Pulse_303.Name="Pulse"
Pulse_303:SetAttribute("AuraInstance", true)
Pulse_303:SetAttribute("SMOOTHSEQUENCE_Size", "\000\000�A\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000�?\000\000�?\000\000\000\000\000\000\000\000")
Pulse_303:SetAttribute("EmitCount", 10)
Pulse_303.Enabled=true
Pulse_303.Rate=10
Pulse_303.Lifetime=nr(1,1)
Pulse_303.Speed=nr(0,30)
Pulse_303.Rotation=nr(-360,360)
Pulse_303.RotSpeed=nr(180,180)
Pulse_303.Size=ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,35.000000,0.000000)})
Pulse_303.Transparency=ns({nsk(0.000000,0.368750,0.000000),nsk(1.000000,1.000000,0.000000)})
Pulse_303.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Pulse_303.LightEmission=1
Pulse_303.LightInfluence=0
Pulse_303.Acceleration=v3(0.000000,0.000000,0.000000)
Pulse_303.Drag=6
Pulse_303.EmissionDirection=Enum.NormalId.Top
Pulse_303.SpreadAngle=v2(2.000000,2.000000)
Pulse_303.ZOffset=0.0010000000474974513
Pulse_303.Texture="rbxassetid://122460061985642"
Pulse_303.LockedToPart=true
Pulse_303.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Pulse_303.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Pulse_303.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Pulse_303.FlipbookFramerate=nr(1,1)
Pulse_303.FlipbookStartRandom=false
Pulse_303.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Pulse_303.Brightness=2



local rays_304=i("ParticleEmitter", Floor_295)
rays_304.Name="rays"
rays_304:SetAttribute("AuraInstance", true)
rays_304.Enabled=true
rays_304.Rate=0.75
rays_304.Lifetime=nr(6,6)
rays_304.Speed=nr(0.0007233847281895578,0.0007233847281895578)
rays_304.Rotation=nr(-1000,1000)
rays_304.RotSpeed=nr(-7.5,7.5)
rays_304.Size=ns({nsk(0.000000,36.169235,0.000000),nsk(1.000000,36.169235,0.000000)})
rays_304.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.488824,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
rays_304.Color=cs({csk(0.000000,c3(0.619608,0.792157,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
rays_304.LightEmission=1
rays_304.LightInfluence=0
rays_304.Acceleration=v3(0.000000,0.000000,0.000000)
rays_304.Drag=0
rays_304.EmissionDirection=Enum.NormalId.Top
rays_304.SpreadAngle=v2(-1000.000000,1000.000000)
rays_304.ZOffset=0.10000000149011612
rays_304.Texture="rbxassetid://13366339427"
rays_304.LockedToPart=true
rays_304.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
rays_304.FlipbookLayout=Enum.ParticleFlipbookLayout.None
rays_304.FlipbookMode=Enum.ParticleFlipbookMode.Loop
rays_304.FlipbookFramerate=nr(0.5,0.5)
rays_304.FlipbookStartRandom=false
rays_304.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
rays_304.Brightness=0.05000000074505806



local rays_305=i("ParticleEmitter", Floor_295)
rays_305.Name="rays"
rays_305:SetAttribute("AuraInstance", true)
rays_305.Enabled=true
rays_305.Rate=0.75
rays_305.Lifetime=nr(6,6)
rays_305.Speed=nr(0.0007233847281895578,0.0007233847281895578)
rays_305.Rotation=nr(-1000,1000)
rays_305.RotSpeed=nr(-7.5,7.5)
rays_305.Size=ns({nsk(0.000000,36.169235,0.000000),nsk(1.000000,36.169235,0.000000)})
rays_305.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.488824,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
rays_305.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.168627,0.423529,0.505882))})
rays_305.LightEmission=1
rays_305.LightInfluence=0
rays_305.Acceleration=v3(0.000000,0.000000,0.000000)
rays_305.Drag=0
rays_305.EmissionDirection=Enum.NormalId.Top
rays_305.SpreadAngle=v2(-1000.000000,1000.000000)
rays_305.ZOffset=0.10100000351667404
rays_305.Texture="rbxassetid://138992307188220"
rays_305.LockedToPart=true
rays_305.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
rays_305.FlipbookLayout=Enum.ParticleFlipbookLayout.None
rays_305.FlipbookMode=Enum.ParticleFlipbookMode.Loop
rays_305.FlipbookFramerate=nr(0.5,0.5)
rays_305.FlipbookStartRandom=false
rays_305.Squash=ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})
rays_305.Brightness=1



local wind_306=i("Attachment", Floor_295)
wind_306.Name="wind"
wind_306:SetAttribute("AuraInstance", true)
wind_306.Visible=false



local swirlsp2_307=i("ParticleEmitter", wind_306)
swirlsp2_307.Name="swirlsp2"
swirlsp2_307:SetAttribute("AuraInstance", true)
swirlsp2_307.Enabled=true
swirlsp2_307.Rate=4
swirlsp2_307.Lifetime=nr(1,1.399999976158142)
swirlsp2_307.Speed=nr(0.4449094235897064,0.4449094235897064)
swirlsp2_307.Rotation=nr(-360,360)
swirlsp2_307.RotSpeed=nr(-180,-90)
swirlsp2_307.Size=ns({nsk(0.000000,0.000000,10.902992),nsk(0.100000,8.655683,10.902992),nsk(0.200000,13.957093,10.902992),nsk(0.300000,17.916288,10.902992),nsk(0.400000,21.090950,10.902992),nsk(0.500000,23.732939,10.902992),nsk(0.600000,25.982443,10.902992),nsk(0.700000,27.928797,10.902992),nsk(0.800000,29.637465,10.902992),nsk(0.900000,31.172590,10.902992),nsk(1.000000,32.708977,10.902992),nsk(1.000000,30.000000,10.902992)})
swirlsp2_307.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.497500,0.850000,0.037500),nsk(1.000000,1.000000,0.000000)})
swirlsp2_307.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
swirlsp2_307.LightEmission=1
swirlsp2_307.LightInfluence=0
swirlsp2_307.Acceleration=v3(0.000000,0.000000,0.000000)
swirlsp2_307.Drag=0
swirlsp2_307.EmissionDirection=Enum.NormalId.Top
swirlsp2_307.SpreadAngle=v2(10.000000,10.000000)
swirlsp2_307.ZOffset=0.0020000000949949026
swirlsp2_307.Texture="rbxassetid://17113590856"
swirlsp2_307.LockedToPart=true
swirlsp2_307.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirlsp2_307.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
swirlsp2_307.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
swirlsp2_307.FlipbookFramerate=nr(1,1)
swirlsp2_307.FlipbookStartRandom=false
swirlsp2_307.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirlsp2_307.Brightness=1



local swirlsp1_308=i("ParticleEmitter", wind_306)
swirlsp1_308.Name="swirlsp1"
swirlsp1_308:SetAttribute("AuraInstance", true)
swirlsp1_308.Enabled=true
swirlsp1_308.Rate=15
swirlsp1_308.Lifetime=nr(1.2999999523162842,1.2999999523162842)
swirlsp1_308.Speed=nr(0.5,0.5)
swirlsp1_308.Rotation=nr(-360,360)
swirlsp1_308.RotSpeed=nr(-180,-90)
swirlsp1_308.Size=ns({nsk(0.000000,0.000000,12.253047),nsk(0.100000,9.727466,12.253047),nsk(0.200000,15.685319,12.253047),nsk(0.300000,20.134758,12.253047),nsk(0.400000,23.702520,12.253047),nsk(0.500000,26.671652,12.253047),nsk(0.600000,29.199699,12.253047),nsk(0.700000,31.387058,12.253047),nsk(0.800000,33.307301,12.253047),nsk(0.900000,35.032513,12.253047),nsk(1.000000,36.759140,12.253047),nsk(1.000000,36.759140,12.253047)})
swirlsp1_308.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498750,0.525000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirlsp1_308.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
swirlsp1_308.LightEmission=1
swirlsp1_308.LightInfluence=0
swirlsp1_308.Acceleration=v3(0.000000,0.000000,0.000000)
swirlsp1_308.Drag=0
swirlsp1_308.EmissionDirection=Enum.NormalId.Top
swirlsp1_308.SpreadAngle=v2(9.000000,-9.000000)
swirlsp1_308.ZOffset=0.0020000000949949026
swirlsp1_308.Texture="rbxassetid://14864155491"
swirlsp1_308.LockedToPart=true
swirlsp1_308.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirlsp1_308.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
swirlsp1_308.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
swirlsp1_308.FlipbookFramerate=nr(1,1)
swirlsp1_308.FlipbookStartRandom=false
swirlsp1_308.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirlsp1_308.Brightness=4



local ParticleEmitter_309=i("ParticleEmitter", wind_306)
ParticleEmitter_309.Name="ParticleEmitter"
ParticleEmitter_309:SetAttribute("EmitDuration", 0)
ParticleEmitter_309:SetAttribute("AuraInstance", true)
ParticleEmitter_309.Enabled=true
ParticleEmitter_309.Rate=9
ParticleEmitter_309.Lifetime=nr(1,1.600000023841858)
ParticleEmitter_309.Speed=nr(0.4856295883655548,0.4856295883655548)
ParticleEmitter_309.Rotation=nr(-360,360)
ParticleEmitter_309.RotSpeed=nr(-120,-120)
ParticleEmitter_309.Size=ns({nsk(0.000000,0.000000,3.570266),nsk(0.100000,15.110936,3.570266),nsk(0.200000,26.132181,3.570266),nsk(0.300000,35.001137,3.570266),nsk(0.400000,42.469845,3.570266),nsk(0.500000,48.921928,3.570266),nsk(0.600000,54.581707,3.570266),nsk(0.700000,59.590141,3.570266),nsk(0.800000,64.037155,3.570266),nsk(0.900000,67.973961,3.570266),nsk(1.000000,71.405304,3.570266),nsk(1.000000,71.405304,3.570266)})
ParticleEmitter_309.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501250,0.831250,0.050000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_309.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_309.LightEmission=1
ParticleEmitter_309.LightInfluence=0
ParticleEmitter_309.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_309.Drag=0
ParticleEmitter_309.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_309.SpreadAngle=v2(7.000000,7.000000)
ParticleEmitter_309.ZOffset=0
ParticleEmitter_309.Texture="rbxassetid://15081702105"
ParticleEmitter_309.LockedToPart=true
ParticleEmitter_309.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_309.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_309.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_309.FlipbookFramerate=nr(1,1)
ParticleEmitter_309.FlipbookStartRandom=false
ParticleEmitter_309.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_309.Brightness=1






local Ring_310=i("Attachment", Floor)
Ring_310.Name="Ring"
Ring_310:SetAttribute("AuraInstance", true)
Ring_310.Visible=false



local Attachment_311=i("Attachment", Ring_310)
Attachment_311.Name="Attachment"
Attachment_311:SetAttribute("AuraInstance", true)
Attachment_311.Visible=false



local ParticleEmitter_312=i("ParticleEmitter", Attachment_311)
ParticleEmitter_312.Name="ParticleEmitter"
ParticleEmitter_312:SetAttribute("EmitCount", 0)
ParticleEmitter_312:SetAttribute("AuraInstance", true)
ParticleEmitter_312.Enabled=true
ParticleEmitter_312.Rate=1
ParticleEmitter_312.Lifetime=nr(1.5,1.5)
ParticleEmitter_312.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_312.Rotation=nr(-360,360)
ParticleEmitter_312.RotSpeed=nr(0,0)
ParticleEmitter_312.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_312.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_312.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_312.LightEmission=1
ParticleEmitter_312.LightInfluence=0
ParticleEmitter_312.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_312.Drag=0
ParticleEmitter_312.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_312.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_312.ZOffset=12
ParticleEmitter_312.Texture="rbxassetid://91167564374329"
ParticleEmitter_312.LockedToPart=true
ParticleEmitter_312.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_312.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_312.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_312.FlipbookFramerate=nr(0,0)
ParticleEmitter_312.FlipbookStartRandom=true
ParticleEmitter_312.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_312.Brightness=10



local ParticleEmitter_313=i("ParticleEmitter", Attachment_311)
ParticleEmitter_313.Name="ParticleEmitter"
ParticleEmitter_313:SetAttribute("EmitCount", 0)
ParticleEmitter_313:SetAttribute("AuraInstance", true)
ParticleEmitter_313.Enabled=true
ParticleEmitter_313.Rate=2
ParticleEmitter_313.Lifetime=nr(1.5,1.5)
ParticleEmitter_313.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_313.Rotation=nr(-360,360)
ParticleEmitter_313.RotSpeed=nr(-200,200)
ParticleEmitter_313.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_313.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_313.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_313.LightEmission=1
ParticleEmitter_313.LightInfluence=0
ParticleEmitter_313.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_313.Drag=0
ParticleEmitter_313.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_313.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_313.ZOffset=12
ParticleEmitter_313.Texture="rbxassetid://16879806460"
ParticleEmitter_313.LockedToPart=true
ParticleEmitter_313.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_313.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_313.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_313.FlipbookFramerate=nr(0,0)
ParticleEmitter_313.FlipbookStartRandom=true
ParticleEmitter_313.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_313.Brightness=10



local ParticleEmitter_314=i("ParticleEmitter", Attachment_311)
ParticleEmitter_314.Name="ParticleEmitter"
ParticleEmitter_314:SetAttribute("EmitCount", 0)
ParticleEmitter_314:SetAttribute("AuraInstance", true)
ParticleEmitter_314.Enabled=true
ParticleEmitter_314.Rate=2.5
ParticleEmitter_314.Lifetime=nr(1.5,1.5)
ParticleEmitter_314.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_314.Rotation=nr(-360,360)
ParticleEmitter_314.RotSpeed=nr(-100,100)
ParticleEmitter_314.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_314.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_314.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_314.LightEmission=1
ParticleEmitter_314.LightInfluence=0
ParticleEmitter_314.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_314.Drag=0
ParticleEmitter_314.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_314.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_314.ZOffset=12
ParticleEmitter_314.Texture="rbxassetid://15394198783"
ParticleEmitter_314.LockedToPart=true
ParticleEmitter_314.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_314.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_314.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_314.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_314.FlipbookStartRandom=false
ParticleEmitter_314.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_314.Brightness=5



local ParticleEmitter_315=i("ParticleEmitter", Attachment_311)
ParticleEmitter_315.Name="ParticleEmitter"
ParticleEmitter_315:SetAttribute("EmitCount", 0)
ParticleEmitter_315:SetAttribute("AuraInstance", true)
ParticleEmitter_315.Enabled=true
ParticleEmitter_315.Rate=2
ParticleEmitter_315.Lifetime=nr(1.5,1.5)
ParticleEmitter_315.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_315.Rotation=nr(270,270)
ParticleEmitter_315.RotSpeed=nr(-20,20)
ParticleEmitter_315.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_315.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_315.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_315.LightEmission=1
ParticleEmitter_315.LightInfluence=0
ParticleEmitter_315.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_315.Drag=0
ParticleEmitter_315.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_315.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_315.ZOffset=12
ParticleEmitter_315.Texture="rbxassetid://16924875355"
ParticleEmitter_315.LockedToPart=true
ParticleEmitter_315.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_315.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_315.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_315.FlipbookFramerate=nr(50,50)
ParticleEmitter_315.FlipbookStartRandom=false
ParticleEmitter_315.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_315.Brightness=5



local Attachment_316=i("Attachment", Ring_310)
Attachment_316.Name="Attachment"
Attachment_316:SetAttribute("AuraInstance", true)
Attachment_316.Visible=false



local ParticleEmitter_317=i("ParticleEmitter", Attachment_316)
ParticleEmitter_317.Name="ParticleEmitter"
ParticleEmitter_317:SetAttribute("EmitCount", 0)
ParticleEmitter_317:SetAttribute("AuraInstance", true)
ParticleEmitter_317.Enabled=true
ParticleEmitter_317.Rate=1
ParticleEmitter_317.Lifetime=nr(1.5,1.5)
ParticleEmitter_317.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_317.Rotation=nr(-360,360)
ParticleEmitter_317.RotSpeed=nr(0,0)
ParticleEmitter_317.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_317.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_317.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_317.LightEmission=1
ParticleEmitter_317.LightInfluence=0
ParticleEmitter_317.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_317.Drag=0
ParticleEmitter_317.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_317.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_317.ZOffset=12
ParticleEmitter_317.Texture="rbxassetid://91167564374329"
ParticleEmitter_317.LockedToPart=true
ParticleEmitter_317.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_317.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_317.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_317.FlipbookFramerate=nr(0,0)
ParticleEmitter_317.FlipbookStartRandom=true
ParticleEmitter_317.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_317.Brightness=10



local ParticleEmitter_318=i("ParticleEmitter", Attachment_316)
ParticleEmitter_318.Name="ParticleEmitter"
ParticleEmitter_318:SetAttribute("EmitCount", 0)
ParticleEmitter_318:SetAttribute("AuraInstance", true)
ParticleEmitter_318.Enabled=true
ParticleEmitter_318.Rate=2
ParticleEmitter_318.Lifetime=nr(1.5,1.5)
ParticleEmitter_318.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_318.Rotation=nr(-360,360)
ParticleEmitter_318.RotSpeed=nr(-200,200)
ParticleEmitter_318.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_318.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_318.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_318.LightEmission=1
ParticleEmitter_318.LightInfluence=0
ParticleEmitter_318.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_318.Drag=0
ParticleEmitter_318.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_318.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_318.ZOffset=12
ParticleEmitter_318.Texture="rbxassetid://16879806460"
ParticleEmitter_318.LockedToPart=true
ParticleEmitter_318.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_318.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_318.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_318.FlipbookFramerate=nr(0,0)
ParticleEmitter_318.FlipbookStartRandom=true
ParticleEmitter_318.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_318.Brightness=10



local ParticleEmitter_319=i("ParticleEmitter", Attachment_316)
ParticleEmitter_319.Name="ParticleEmitter"
ParticleEmitter_319:SetAttribute("EmitCount", 0)
ParticleEmitter_319:SetAttribute("AuraInstance", true)
ParticleEmitter_319.Enabled=true
ParticleEmitter_319.Rate=2.5
ParticleEmitter_319.Lifetime=nr(1.5,1.5)
ParticleEmitter_319.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_319.Rotation=nr(-360,360)
ParticleEmitter_319.RotSpeed=nr(-100,100)
ParticleEmitter_319.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_319.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_319.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_319.LightEmission=1
ParticleEmitter_319.LightInfluence=0
ParticleEmitter_319.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_319.Drag=0
ParticleEmitter_319.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_319.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_319.ZOffset=12
ParticleEmitter_319.Texture="rbxassetid://15394198783"
ParticleEmitter_319.LockedToPart=true
ParticleEmitter_319.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_319.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_319.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_319.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_319.FlipbookStartRandom=false
ParticleEmitter_319.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_319.Brightness=5



local ParticleEmitter_320=i("ParticleEmitter", Attachment_316)
ParticleEmitter_320.Name="ParticleEmitter"
ParticleEmitter_320:SetAttribute("EmitCount", 0)
ParticleEmitter_320:SetAttribute("AuraInstance", true)
ParticleEmitter_320.Enabled=true
ParticleEmitter_320.Rate=2
ParticleEmitter_320.Lifetime=nr(1.5,1.5)
ParticleEmitter_320.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_320.Rotation=nr(270,270)
ParticleEmitter_320.RotSpeed=nr(-20,20)
ParticleEmitter_320.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_320.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_320.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_320.LightEmission=1
ParticleEmitter_320.LightInfluence=0
ParticleEmitter_320.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_320.Drag=0
ParticleEmitter_320.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_320.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_320.ZOffset=12
ParticleEmitter_320.Texture="rbxassetid://16924875355"
ParticleEmitter_320.LockedToPart=true
ParticleEmitter_320.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_320.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_320.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_320.FlipbookFramerate=nr(50,50)
ParticleEmitter_320.FlipbookStartRandom=false
ParticleEmitter_320.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_320.Brightness=5



local Attachment_321=i("Attachment", Ring_310)
Attachment_321.Name="Attachment"
Attachment_321:SetAttribute("AuraInstance", true)
Attachment_321.Visible=false



local ParticleEmitter_322=i("ParticleEmitter", Attachment_321)
ParticleEmitter_322.Name="ParticleEmitter"
ParticleEmitter_322:SetAttribute("EmitCount", 0)
ParticleEmitter_322:SetAttribute("AuraInstance", true)
ParticleEmitter_322.Enabled=true
ParticleEmitter_322.Rate=1
ParticleEmitter_322.Lifetime=nr(1.5,1.5)
ParticleEmitter_322.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_322.Rotation=nr(-360,360)
ParticleEmitter_322.RotSpeed=nr(0,0)
ParticleEmitter_322.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_322.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_322.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_322.LightEmission=1
ParticleEmitter_322.LightInfluence=0
ParticleEmitter_322.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_322.Drag=0
ParticleEmitter_322.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_322.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_322.ZOffset=12
ParticleEmitter_322.Texture="rbxassetid://91167564374329"
ParticleEmitter_322.LockedToPart=true
ParticleEmitter_322.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_322.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_322.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_322.FlipbookFramerate=nr(0,0)
ParticleEmitter_322.FlipbookStartRandom=true
ParticleEmitter_322.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_322.Brightness=10



local ParticleEmitter_323=i("ParticleEmitter", Attachment_321)
ParticleEmitter_323.Name="ParticleEmitter"
ParticleEmitter_323:SetAttribute("EmitCount", 0)
ParticleEmitter_323:SetAttribute("AuraInstance", true)
ParticleEmitter_323.Enabled=true
ParticleEmitter_323.Rate=2
ParticleEmitter_323.Lifetime=nr(1.5,1.5)
ParticleEmitter_323.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_323.Rotation=nr(-360,360)
ParticleEmitter_323.RotSpeed=nr(-200,200)
ParticleEmitter_323.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_323.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_323.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_323.LightEmission=1
ParticleEmitter_323.LightInfluence=0
ParticleEmitter_323.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_323.Drag=0
ParticleEmitter_323.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_323.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_323.ZOffset=12
ParticleEmitter_323.Texture="rbxassetid://16879806460"
ParticleEmitter_323.LockedToPart=true
ParticleEmitter_323.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_323.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_323.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_323.FlipbookFramerate=nr(0,0)
ParticleEmitter_323.FlipbookStartRandom=true
ParticleEmitter_323.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_323.Brightness=10



local ParticleEmitter_324=i("ParticleEmitter", Attachment_321)
ParticleEmitter_324.Name="ParticleEmitter"
ParticleEmitter_324:SetAttribute("EmitCount", 0)
ParticleEmitter_324:SetAttribute("AuraInstance", true)
ParticleEmitter_324.Enabled=true
ParticleEmitter_324.Rate=2.5
ParticleEmitter_324.Lifetime=nr(1.5,1.5)
ParticleEmitter_324.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_324.Rotation=nr(-360,360)
ParticleEmitter_324.RotSpeed=nr(-100,100)
ParticleEmitter_324.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_324.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_324.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_324.LightEmission=1
ParticleEmitter_324.LightInfluence=0
ParticleEmitter_324.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_324.Drag=0
ParticleEmitter_324.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_324.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_324.ZOffset=12
ParticleEmitter_324.Texture="rbxassetid://15394198783"
ParticleEmitter_324.LockedToPart=true
ParticleEmitter_324.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_324.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_324.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_324.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_324.FlipbookStartRandom=false
ParticleEmitter_324.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_324.Brightness=5



local ParticleEmitter_325=i("ParticleEmitter", Attachment_321)
ParticleEmitter_325.Name="ParticleEmitter"
ParticleEmitter_325:SetAttribute("EmitCount", 0)
ParticleEmitter_325:SetAttribute("AuraInstance", true)
ParticleEmitter_325.Enabled=true
ParticleEmitter_325.Rate=2
ParticleEmitter_325.Lifetime=nr(1.5,1.5)
ParticleEmitter_325.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_325.Rotation=nr(270,270)
ParticleEmitter_325.RotSpeed=nr(-20,20)
ParticleEmitter_325.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_325.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_325.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_325.LightEmission=1
ParticleEmitter_325.LightInfluence=0
ParticleEmitter_325.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_325.Drag=0
ParticleEmitter_325.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_325.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_325.ZOffset=12
ParticleEmitter_325.Texture="rbxassetid://16924875355"
ParticleEmitter_325.LockedToPart=true
ParticleEmitter_325.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_325.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_325.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_325.FlipbookFramerate=nr(50,50)
ParticleEmitter_325.FlipbookStartRandom=false
ParticleEmitter_325.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_325.Brightness=5



local Attachment_326=i("Attachment", Ring_310)
Attachment_326.Name="Attachment"
Attachment_326:SetAttribute("AuraInstance", true)
Attachment_326.Visible=false



local ParticleEmitter_327=i("ParticleEmitter", Attachment_326)
ParticleEmitter_327.Name="ParticleEmitter"
ParticleEmitter_327:SetAttribute("EmitCount", 0)
ParticleEmitter_327:SetAttribute("AuraInstance", true)
ParticleEmitter_327.Enabled=true
ParticleEmitter_327.Rate=1
ParticleEmitter_327.Lifetime=nr(1.5,1.5)
ParticleEmitter_327.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_327.Rotation=nr(-360,360)
ParticleEmitter_327.RotSpeed=nr(0,0)
ParticleEmitter_327.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_327.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_327.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_327.LightEmission=1
ParticleEmitter_327.LightInfluence=0
ParticleEmitter_327.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_327.Drag=0
ParticleEmitter_327.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_327.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_327.ZOffset=12
ParticleEmitter_327.Texture="rbxassetid://91167564374329"
ParticleEmitter_327.LockedToPart=true
ParticleEmitter_327.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_327.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_327.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_327.FlipbookFramerate=nr(0,0)
ParticleEmitter_327.FlipbookStartRandom=true
ParticleEmitter_327.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_327.Brightness=10



local ParticleEmitter_328=i("ParticleEmitter", Attachment_326)
ParticleEmitter_328.Name="ParticleEmitter"
ParticleEmitter_328:SetAttribute("EmitCount", 0)
ParticleEmitter_328:SetAttribute("AuraInstance", true)
ParticleEmitter_328.Enabled=true
ParticleEmitter_328.Rate=2
ParticleEmitter_328.Lifetime=nr(1.5,1.5)
ParticleEmitter_328.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_328.Rotation=nr(-360,360)
ParticleEmitter_328.RotSpeed=nr(-200,200)
ParticleEmitter_328.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_328.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_328.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_328.LightEmission=1
ParticleEmitter_328.LightInfluence=0
ParticleEmitter_328.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_328.Drag=0
ParticleEmitter_328.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_328.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_328.ZOffset=12
ParticleEmitter_328.Texture="rbxassetid://16879806460"
ParticleEmitter_328.LockedToPart=true
ParticleEmitter_328.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_328.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_328.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_328.FlipbookFramerate=nr(0,0)
ParticleEmitter_328.FlipbookStartRandom=true
ParticleEmitter_328.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_328.Brightness=10



local ParticleEmitter_329=i("ParticleEmitter", Attachment_326)
ParticleEmitter_329.Name="ParticleEmitter"
ParticleEmitter_329:SetAttribute("EmitCount", 0)
ParticleEmitter_329:SetAttribute("AuraInstance", true)
ParticleEmitter_329.Enabled=true
ParticleEmitter_329.Rate=2.5
ParticleEmitter_329.Lifetime=nr(1.5,1.5)
ParticleEmitter_329.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_329.Rotation=nr(-360,360)
ParticleEmitter_329.RotSpeed=nr(-100,100)
ParticleEmitter_329.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_329.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_329.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_329.LightEmission=1
ParticleEmitter_329.LightInfluence=0
ParticleEmitter_329.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_329.Drag=0
ParticleEmitter_329.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_329.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_329.ZOffset=12
ParticleEmitter_329.Texture="rbxassetid://15394198783"
ParticleEmitter_329.LockedToPart=true
ParticleEmitter_329.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_329.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_329.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_329.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_329.FlipbookStartRandom=false
ParticleEmitter_329.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_329.Brightness=5



local ParticleEmitter_330=i("ParticleEmitter", Attachment_326)
ParticleEmitter_330.Name="ParticleEmitter"
ParticleEmitter_330:SetAttribute("EmitCount", 0)
ParticleEmitter_330:SetAttribute("AuraInstance", true)
ParticleEmitter_330.Enabled=true
ParticleEmitter_330.Rate=2
ParticleEmitter_330.Lifetime=nr(1.5,1.5)
ParticleEmitter_330.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_330.Rotation=nr(270,270)
ParticleEmitter_330.RotSpeed=nr(-20,20)
ParticleEmitter_330.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_330.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_330.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_330.LightEmission=1
ParticleEmitter_330.LightInfluence=0
ParticleEmitter_330.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_330.Drag=0
ParticleEmitter_330.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_330.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_330.ZOffset=12
ParticleEmitter_330.Texture="rbxassetid://16924875355"
ParticleEmitter_330.LockedToPart=true
ParticleEmitter_330.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_330.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_330.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_330.FlipbookFramerate=nr(50,50)
ParticleEmitter_330.FlipbookStartRandom=false
ParticleEmitter_330.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_330.Brightness=5



local Attachment_331=i("Attachment", Ring_310)
Attachment_331.Name="Attachment"
Attachment_331:SetAttribute("AuraInstance", true)
Attachment_331.Visible=false



local ParticleEmitter_332=i("ParticleEmitter", Attachment_331)
ParticleEmitter_332.Name="ParticleEmitter"
ParticleEmitter_332:SetAttribute("EmitCount", 0)
ParticleEmitter_332:SetAttribute("AuraInstance", true)
ParticleEmitter_332.Enabled=true
ParticleEmitter_332.Rate=1
ParticleEmitter_332.Lifetime=nr(1.5,1.5)
ParticleEmitter_332.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_332.Rotation=nr(-360,360)
ParticleEmitter_332.RotSpeed=nr(0,0)
ParticleEmitter_332.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_332.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_332.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_332.LightEmission=1
ParticleEmitter_332.LightInfluence=0
ParticleEmitter_332.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_332.Drag=0
ParticleEmitter_332.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_332.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_332.ZOffset=12
ParticleEmitter_332.Texture="rbxassetid://91167564374329"
ParticleEmitter_332.LockedToPart=true
ParticleEmitter_332.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_332.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_332.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_332.FlipbookFramerate=nr(0,0)
ParticleEmitter_332.FlipbookStartRandom=true
ParticleEmitter_332.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_332.Brightness=10



local ParticleEmitter_333=i("ParticleEmitter", Attachment_331)
ParticleEmitter_333.Name="ParticleEmitter"
ParticleEmitter_333:SetAttribute("EmitCount", 0)
ParticleEmitter_333:SetAttribute("AuraInstance", true)
ParticleEmitter_333.Enabled=true
ParticleEmitter_333.Rate=2
ParticleEmitter_333.Lifetime=nr(1.5,1.5)
ParticleEmitter_333.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_333.Rotation=nr(-360,360)
ParticleEmitter_333.RotSpeed=nr(-200,200)
ParticleEmitter_333.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_333.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_333.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_333.LightEmission=1
ParticleEmitter_333.LightInfluence=0
ParticleEmitter_333.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_333.Drag=0
ParticleEmitter_333.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_333.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_333.ZOffset=12
ParticleEmitter_333.Texture="rbxassetid://16879806460"
ParticleEmitter_333.LockedToPart=true
ParticleEmitter_333.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_333.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_333.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_333.FlipbookFramerate=nr(0,0)
ParticleEmitter_333.FlipbookStartRandom=true
ParticleEmitter_333.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_333.Brightness=10



local ParticleEmitter_334=i("ParticleEmitter", Attachment_331)
ParticleEmitter_334.Name="ParticleEmitter"
ParticleEmitter_334:SetAttribute("EmitCount", 0)
ParticleEmitter_334:SetAttribute("AuraInstance", true)
ParticleEmitter_334.Enabled=true
ParticleEmitter_334.Rate=2.5
ParticleEmitter_334.Lifetime=nr(1.5,1.5)
ParticleEmitter_334.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_334.Rotation=nr(-360,360)
ParticleEmitter_334.RotSpeed=nr(-100,100)
ParticleEmitter_334.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_334.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_334.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_334.LightEmission=1
ParticleEmitter_334.LightInfluence=0
ParticleEmitter_334.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_334.Drag=0
ParticleEmitter_334.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_334.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_334.ZOffset=12
ParticleEmitter_334.Texture="rbxassetid://15394198783"
ParticleEmitter_334.LockedToPart=true
ParticleEmitter_334.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_334.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_334.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_334.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_334.FlipbookStartRandom=false
ParticleEmitter_334.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_334.Brightness=5



local ParticleEmitter_335=i("ParticleEmitter", Attachment_331)
ParticleEmitter_335.Name="ParticleEmitter"
ParticleEmitter_335:SetAttribute("EmitCount", 0)
ParticleEmitter_335:SetAttribute("AuraInstance", true)
ParticleEmitter_335.Enabled=true
ParticleEmitter_335.Rate=2
ParticleEmitter_335.Lifetime=nr(1.5,1.5)
ParticleEmitter_335.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_335.Rotation=nr(270,270)
ParticleEmitter_335.RotSpeed=nr(-20,20)
ParticleEmitter_335.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_335.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_335.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_335.LightEmission=1
ParticleEmitter_335.LightInfluence=0
ParticleEmitter_335.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_335.Drag=0
ParticleEmitter_335.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_335.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_335.ZOffset=12
ParticleEmitter_335.Texture="rbxassetid://16924875355"
ParticleEmitter_335.LockedToPart=true
ParticleEmitter_335.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_335.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_335.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_335.FlipbookFramerate=nr(50,50)
ParticleEmitter_335.FlipbookStartRandom=false
ParticleEmitter_335.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_335.Brightness=5



local Attachment_336=i("Attachment", Ring_310)
Attachment_336.Name="Attachment"
Attachment_336:SetAttribute("AuraInstance", true)
Attachment_336.Visible=false



local ParticleEmitter_337=i("ParticleEmitter", Attachment_336)
ParticleEmitter_337.Name="ParticleEmitter"
ParticleEmitter_337:SetAttribute("EmitCount", 0)
ParticleEmitter_337:SetAttribute("AuraInstance", true)
ParticleEmitter_337.Enabled=true
ParticleEmitter_337.Rate=1
ParticleEmitter_337.Lifetime=nr(1.5,1.5)
ParticleEmitter_337.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_337.Rotation=nr(-360,360)
ParticleEmitter_337.RotSpeed=nr(0,0)
ParticleEmitter_337.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_337.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_337.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_337.LightEmission=1
ParticleEmitter_337.LightInfluence=0
ParticleEmitter_337.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_337.Drag=0
ParticleEmitter_337.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_337.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_337.ZOffset=12
ParticleEmitter_337.Texture="rbxassetid://91167564374329"
ParticleEmitter_337.LockedToPart=true
ParticleEmitter_337.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_337.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_337.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_337.FlipbookFramerate=nr(0,0)
ParticleEmitter_337.FlipbookStartRandom=true
ParticleEmitter_337.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_337.Brightness=10



local ParticleEmitter_338=i("ParticleEmitter", Attachment_336)
ParticleEmitter_338.Name="ParticleEmitter"
ParticleEmitter_338:SetAttribute("EmitCount", 0)
ParticleEmitter_338:SetAttribute("AuraInstance", true)
ParticleEmitter_338.Enabled=true
ParticleEmitter_338.Rate=2
ParticleEmitter_338.Lifetime=nr(1.5,1.5)
ParticleEmitter_338.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_338.Rotation=nr(-360,360)
ParticleEmitter_338.RotSpeed=nr(-200,200)
ParticleEmitter_338.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_338.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_338.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_338.LightEmission=1
ParticleEmitter_338.LightInfluence=0
ParticleEmitter_338.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_338.Drag=0
ParticleEmitter_338.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_338.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_338.ZOffset=12
ParticleEmitter_338.Texture="rbxassetid://16879806460"
ParticleEmitter_338.LockedToPart=true
ParticleEmitter_338.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_338.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_338.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_338.FlipbookFramerate=nr(0,0)
ParticleEmitter_338.FlipbookStartRandom=true
ParticleEmitter_338.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_338.Brightness=10



local ParticleEmitter_339=i("ParticleEmitter", Attachment_336)
ParticleEmitter_339.Name="ParticleEmitter"
ParticleEmitter_339:SetAttribute("EmitCount", 0)
ParticleEmitter_339:SetAttribute("AuraInstance", true)
ParticleEmitter_339.Enabled=true
ParticleEmitter_339.Rate=2.5
ParticleEmitter_339.Lifetime=nr(1.5,1.5)
ParticleEmitter_339.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_339.Rotation=nr(-360,360)
ParticleEmitter_339.RotSpeed=nr(-100,100)
ParticleEmitter_339.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_339.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_339.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_339.LightEmission=1
ParticleEmitter_339.LightInfluence=0
ParticleEmitter_339.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_339.Drag=0
ParticleEmitter_339.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_339.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_339.ZOffset=12
ParticleEmitter_339.Texture="rbxassetid://15394198783"
ParticleEmitter_339.LockedToPart=true
ParticleEmitter_339.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_339.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_339.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_339.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_339.FlipbookStartRandom=false
ParticleEmitter_339.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_339.Brightness=5



local ParticleEmitter_340=i("ParticleEmitter", Attachment_336)
ParticleEmitter_340.Name="ParticleEmitter"
ParticleEmitter_340:SetAttribute("EmitCount", 0)
ParticleEmitter_340:SetAttribute("AuraInstance", true)
ParticleEmitter_340.Enabled=true
ParticleEmitter_340.Rate=2
ParticleEmitter_340.Lifetime=nr(1.5,1.5)
ParticleEmitter_340.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_340.Rotation=nr(270,270)
ParticleEmitter_340.RotSpeed=nr(-20,20)
ParticleEmitter_340.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_340.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_340.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_340.LightEmission=1
ParticleEmitter_340.LightInfluence=0
ParticleEmitter_340.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_340.Drag=0
ParticleEmitter_340.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_340.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_340.ZOffset=12
ParticleEmitter_340.Texture="rbxassetid://16924875355"
ParticleEmitter_340.LockedToPart=true
ParticleEmitter_340.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_340.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_340.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_340.FlipbookFramerate=nr(50,50)
ParticleEmitter_340.FlipbookStartRandom=false
ParticleEmitter_340.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_340.Brightness=5



local Attachment_341=i("Attachment", Ring_310)
Attachment_341.Name="Attachment"
Attachment_341:SetAttribute("AuraInstance", true)
Attachment_341.Visible=false



local ParticleEmitter_342=i("ParticleEmitter", Attachment_341)
ParticleEmitter_342.Name="ParticleEmitter"
ParticleEmitter_342:SetAttribute("EmitCount", 0)
ParticleEmitter_342:SetAttribute("AuraInstance", true)
ParticleEmitter_342.Enabled=true
ParticleEmitter_342.Rate=1
ParticleEmitter_342.Lifetime=nr(1.5,1.5)
ParticleEmitter_342.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_342.Rotation=nr(-360,360)
ParticleEmitter_342.RotSpeed=nr(0,0)
ParticleEmitter_342.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_342.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_342.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_342.LightEmission=1
ParticleEmitter_342.LightInfluence=0
ParticleEmitter_342.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_342.Drag=0
ParticleEmitter_342.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_342.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_342.ZOffset=12
ParticleEmitter_342.Texture="rbxassetid://91167564374329"
ParticleEmitter_342.LockedToPart=true
ParticleEmitter_342.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_342.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_342.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_342.FlipbookFramerate=nr(0,0)
ParticleEmitter_342.FlipbookStartRandom=true
ParticleEmitter_342.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_342.Brightness=10



local ParticleEmitter_343=i("ParticleEmitter", Attachment_341)
ParticleEmitter_343.Name="ParticleEmitter"
ParticleEmitter_343:SetAttribute("EmitCount", 0)
ParticleEmitter_343:SetAttribute("AuraInstance", true)
ParticleEmitter_343.Enabled=true
ParticleEmitter_343.Rate=2
ParticleEmitter_343.Lifetime=nr(1.5,1.5)
ParticleEmitter_343.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_343.Rotation=nr(-360,360)
ParticleEmitter_343.RotSpeed=nr(-200,200)
ParticleEmitter_343.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_343.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_343.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_343.LightEmission=1
ParticleEmitter_343.LightInfluence=0
ParticleEmitter_343.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_343.Drag=0
ParticleEmitter_343.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_343.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_343.ZOffset=12
ParticleEmitter_343.Texture="rbxassetid://16879806460"
ParticleEmitter_343.LockedToPart=true
ParticleEmitter_343.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_343.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_343.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_343.FlipbookFramerate=nr(0,0)
ParticleEmitter_343.FlipbookStartRandom=true
ParticleEmitter_343.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_343.Brightness=10



local ParticleEmitter_344=i("ParticleEmitter", Attachment_341)
ParticleEmitter_344.Name="ParticleEmitter"
ParticleEmitter_344:SetAttribute("EmitCount", 0)
ParticleEmitter_344:SetAttribute("AuraInstance", true)
ParticleEmitter_344.Enabled=true
ParticleEmitter_344.Rate=2.5
ParticleEmitter_344.Lifetime=nr(1.5,1.5)
ParticleEmitter_344.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_344.Rotation=nr(-360,360)
ParticleEmitter_344.RotSpeed=nr(-100,100)
ParticleEmitter_344.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_344.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_344.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_344.LightEmission=1
ParticleEmitter_344.LightInfluence=0
ParticleEmitter_344.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_344.Drag=0
ParticleEmitter_344.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_344.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_344.ZOffset=12
ParticleEmitter_344.Texture="rbxassetid://15394198783"
ParticleEmitter_344.LockedToPart=true
ParticleEmitter_344.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_344.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_344.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_344.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_344.FlipbookStartRandom=false
ParticleEmitter_344.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_344.Brightness=5



local ParticleEmitter_345=i("ParticleEmitter", Attachment_341)
ParticleEmitter_345.Name="ParticleEmitter"
ParticleEmitter_345:SetAttribute("EmitCount", 0)
ParticleEmitter_345:SetAttribute("AuraInstance", true)
ParticleEmitter_345.Enabled=true
ParticleEmitter_345.Rate=2
ParticleEmitter_345.Lifetime=nr(1.5,1.5)
ParticleEmitter_345.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_345.Rotation=nr(270,270)
ParticleEmitter_345.RotSpeed=nr(-20,20)
ParticleEmitter_345.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_345.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_345.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_345.LightEmission=1
ParticleEmitter_345.LightInfluence=0
ParticleEmitter_345.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_345.Drag=0
ParticleEmitter_345.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_345.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_345.ZOffset=12
ParticleEmitter_345.Texture="rbxassetid://16924875355"
ParticleEmitter_345.LockedToPart=true
ParticleEmitter_345.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_345.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_345.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_345.FlipbookFramerate=nr(50,50)
ParticleEmitter_345.FlipbookStartRandom=false
ParticleEmitter_345.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_345.Brightness=5



local Attachment_346=i("Attachment", Ring_310)
Attachment_346.Name="Attachment"
Attachment_346:SetAttribute("AuraInstance", true)
Attachment_346.Visible=false



local ParticleEmitter_347=i("ParticleEmitter", Attachment_346)
ParticleEmitter_347.Name="ParticleEmitter"
ParticleEmitter_347:SetAttribute("EmitCount", 0)
ParticleEmitter_347:SetAttribute("AuraInstance", true)
ParticleEmitter_347.Enabled=true
ParticleEmitter_347.Rate=1
ParticleEmitter_347.Lifetime=nr(1.5,1.5)
ParticleEmitter_347.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_347.Rotation=nr(-360,360)
ParticleEmitter_347.RotSpeed=nr(0,0)
ParticleEmitter_347.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_347.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_347.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_347.LightEmission=1
ParticleEmitter_347.LightInfluence=0
ParticleEmitter_347.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_347.Drag=0
ParticleEmitter_347.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_347.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_347.ZOffset=12
ParticleEmitter_347.Texture="rbxassetid://91167564374329"
ParticleEmitter_347.LockedToPart=true
ParticleEmitter_347.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_347.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_347.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_347.FlipbookFramerate=nr(0,0)
ParticleEmitter_347.FlipbookStartRandom=true
ParticleEmitter_347.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_347.Brightness=10



local ParticleEmitter_348=i("ParticleEmitter", Attachment_346)
ParticleEmitter_348.Name="ParticleEmitter"
ParticleEmitter_348:SetAttribute("EmitCount", 0)
ParticleEmitter_348:SetAttribute("AuraInstance", true)
ParticleEmitter_348.Enabled=true
ParticleEmitter_348.Rate=2
ParticleEmitter_348.Lifetime=nr(1.5,1.5)
ParticleEmitter_348.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_348.Rotation=nr(-360,360)
ParticleEmitter_348.RotSpeed=nr(-200,200)
ParticleEmitter_348.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_348.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_348.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_348.LightEmission=1
ParticleEmitter_348.LightInfluence=0
ParticleEmitter_348.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_348.Drag=0
ParticleEmitter_348.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_348.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_348.ZOffset=12
ParticleEmitter_348.Texture="rbxassetid://16879806460"
ParticleEmitter_348.LockedToPart=true
ParticleEmitter_348.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_348.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_348.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_348.FlipbookFramerate=nr(0,0)
ParticleEmitter_348.FlipbookStartRandom=true
ParticleEmitter_348.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_348.Brightness=10



local ParticleEmitter_349=i("ParticleEmitter", Attachment_346)
ParticleEmitter_349.Name="ParticleEmitter"
ParticleEmitter_349:SetAttribute("EmitCount", 0)
ParticleEmitter_349:SetAttribute("AuraInstance", true)
ParticleEmitter_349.Enabled=true
ParticleEmitter_349.Rate=2.5
ParticleEmitter_349.Lifetime=nr(1.5,1.5)
ParticleEmitter_349.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_349.Rotation=nr(-360,360)
ParticleEmitter_349.RotSpeed=nr(-100,100)
ParticleEmitter_349.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_349.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_349.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_349.LightEmission=1
ParticleEmitter_349.LightInfluence=0
ParticleEmitter_349.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_349.Drag=0
ParticleEmitter_349.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_349.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_349.ZOffset=12
ParticleEmitter_349.Texture="rbxassetid://15394198783"
ParticleEmitter_349.LockedToPart=true
ParticleEmitter_349.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_349.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_349.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_349.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_349.FlipbookStartRandom=false
ParticleEmitter_349.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_349.Brightness=5



local ParticleEmitter_350=i("ParticleEmitter", Attachment_346)
ParticleEmitter_350.Name="ParticleEmitter"
ParticleEmitter_350:SetAttribute("EmitCount", 0)
ParticleEmitter_350:SetAttribute("AuraInstance", true)
ParticleEmitter_350.Enabled=true
ParticleEmitter_350.Rate=2
ParticleEmitter_350.Lifetime=nr(1.5,1.5)
ParticleEmitter_350.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_350.Rotation=nr(270,270)
ParticleEmitter_350.RotSpeed=nr(-20,20)
ParticleEmitter_350.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_350.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_350.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(0.167820,c3(0.333333,0.666667,1.000000)),csk(0.548443,c3(0.278431,0.560784,0.839216)),csk(1.000000,c3(0.258824,0.521569,0.780392))})
ParticleEmitter_350.LightEmission=1
ParticleEmitter_350.LightInfluence=0
ParticleEmitter_350.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_350.Drag=0
ParticleEmitter_350.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_350.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_350.ZOffset=12
ParticleEmitter_350.Texture="rbxassetid://16924875355"
ParticleEmitter_350.LockedToPart=true
ParticleEmitter_350.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_350.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_350.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_350.FlipbookFramerate=nr(50,50)
ParticleEmitter_350.FlipbookStartRandom=false
ParticleEmitter_350.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_350.Brightness=5


function Beams1()

local Attachment_218=i("Attachment", Floor)
Attachment_218.Name="Attachment"
Attachment_218:SetAttribute("AuraInstance", true)
Attachment_218.Visible=false
Attachment_218.CFrame=cf(0,0,0,1,0,0,0,1,0,0,0,1)



local _1_219=i("Attachment", Attachment_218)
_1_219.Name="1"
_1_219:SetAttribute("AuraInstance", true)
_1_219.Visible=false
_1_219.CFrame=cf(-4.5100440749678156e-38,3.7499015954637255e-38,19.847143173217773,-1,0,0,0,1,0,0,0,-1)



local _2_220=i("Attachment", Attachment_218)
_2_220.Name="2"
_2_220:SetAttribute("AuraInstance", true)
_2_220.Visible=false
_2_220.CFrame=cf(-14.034814834594727,3.7499015954637255e-38,14.033287048339844,-0.7070683240890503,0,0.7071453332901001,0,1,0,-0.7071453332901001,0,-0.7070683240890503)



local _3_221=i("Attachment", Attachment_218)
_3_221.Name="3"
_3_221:SetAttribute("AuraInstance", true)
_3_221.Visible=false
_3_221.CFrame=cf(-19.847143173217773,3.7499015954637255e-38,3.6080394638696455e-38,0,0,1,0,1,-0,-1,0,0)



local _4_222=i("Attachment", Attachment_218)
_4_222.Name="4"
_4_222:SetAttribute("AuraInstance", true)
_4_222.Visible=false
_4_222.CFrame=cf(-14.033504486083984,3.7499015954637255e-38,-14.034594535827637,0.7071342468261719,0,0.707079291343689,0,1,-0,-0.707079291343689,0,0.7071342468261719)



local _5_223=i("Attachment", Attachment_218)
_5_223.Name="5"
_5_223:SetAttribute("AuraInstance", true)
_5_223.Visible=false
_5_223.CFrame=cf(4.0590442917559663e-38,4.218639294896691e-38,-19.847143173217773,1,0,0,0,1,0,0,0,1)



local _6_224=i("Attachment", Attachment_218)
_6_224.Name="6"
_6_224:SetAttribute("AuraInstance", true)
_6_224.Visible=false
_6_224.CFrame=cf(14.034819602966309,4.218639294896691e-38,-14.033281326293945,0.7070680856704712,0,-0.7071455717086792,0,1,0,0.7071455717086792,0,0.7070680856704712)



local _7_225=i("Attachment", Attachment_218)
_7_225.Name="7"
_7_225:SetAttribute("AuraInstance", true)
_7_225.Visible=false
_7_225.CFrame=cf(19.847143173217773,3.7499015954637255e-38,-3.801062161617146e-38,0,0,-1,0,1,0,1,0,0)



local _8_226=i("Attachment", Attachment_218)
_8_226.Name="8"
_8_226:SetAttribute("AuraInstance", true)
_8_226.Visible=false
_8_226.CFrame=cf(14.033504486083984,4.218639294896691e-38,14.034594535827637,-0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,-0.7071342468261719)



local BeamStorage_227=i("Attachment", Attachment_218)
BeamStorage_227.Name="Beam Storage"
BeamStorage_227:SetAttribute("AuraInstance", true)
BeamStorage_227.Visible=false
BeamStorage_227.CFrame=cf(0.00003662109520519152,0.000001144409225162235,0.00003662109520519152,1,0,0,0,1,0,0,0,1)



local Beam_228=i("Beam", BeamStorage_227)
Beam_228.Name="Beam"
Beam_228:SetAttribute("EmitDuration", 0)
Beam_228:SetAttribute("AuraInstance", true)
Beam_228.Enabled=true
Beam_228.Width0=11.543513298034668
Beam_228.Width1=11.543513298034668
Beam_228.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_228.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_228.CurveSize0=8.991328239440918
Beam_228.CurveSize1=0
Beam_228.FaceCamera=false
Beam_228.LightEmission=1
Beam_228.LightInfluence=0
Beam_228.Segments=15
Beam_228.Texture="rbxassetid://107352571472247"
Beam_228.TextureLength=1
Beam_228.TextureSpeed=-3.115000009536743
Beam_228.Brightness=7.5



local Beam_229=i("Beam", BeamStorage_227)
Beam_229.Name="Beam"
Beam_229:SetAttribute("EmitDuration", 0)
Beam_229:SetAttribute("AuraInstance", true)
Beam_229.Enabled=true
Beam_229.Width0=11.543513298034668
Beam_229.Width1=11.543513298034668
Beam_229.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_229.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_229.CurveSize0=8.991328239440918
Beam_229.CurveSize1=0
Beam_229.FaceCamera=false
Beam_229.LightEmission=1
Beam_229.LightInfluence=0
Beam_229.Segments=15
Beam_229.Texture="rbxassetid://107352571472247"
Beam_229.TextureLength=1
Beam_229.TextureSpeed=-3.115000009536743
Beam_229.Brightness=7.5



local Beam_230=i("Beam", BeamStorage_227)
Beam_230.Name="Beam"
Beam_230:SetAttribute("EmitDuration", 0)
Beam_230:SetAttribute("AuraInstance", true)
Beam_230.Enabled=true
Beam_230.Width0=11.543513298034668
Beam_230.Width1=11.543513298034668
Beam_230.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_230.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_230.CurveSize0=8.991328239440918
Beam_230.CurveSize1=0
Beam_230.FaceCamera=false
Beam_230.LightEmission=1
Beam_230.LightInfluence=0
Beam_230.Segments=15
Beam_230.Texture="rbxassetid://107352571472247"
Beam_230.TextureLength=1
Beam_230.TextureSpeed=-3.115000009536743
Beam_230.Brightness=7.5



local Beam_231=i("Beam", BeamStorage_227)
Beam_231.Name="Beam"
Beam_231:SetAttribute("EmitDuration", 0)
Beam_231:SetAttribute("AuraInstance", true)
Beam_231.Enabled=true
Beam_231.Width0=11.543513298034668
Beam_231.Width1=11.543513298034668
Beam_231.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_231.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_231.CurveSize0=8.991328239440918
Beam_231.CurveSize1=0
Beam_231.FaceCamera=false
Beam_231.LightEmission=1
Beam_231.LightInfluence=0
Beam_231.Segments=15
Beam_231.Texture="rbxassetid://107352571472247"
Beam_231.TextureLength=1
Beam_231.TextureSpeed=-3.115000009536743
Beam_231.Brightness=7.5



local Beam_232=i("Beam", BeamStorage_227)
Beam_232.Name="Beam"
Beam_232:SetAttribute("EmitDuration", 0)
Beam_232:SetAttribute("AuraInstance", true)
Beam_232.Enabled=true
Beam_232.Width0=11.543513298034668
Beam_232.Width1=11.543513298034668
Beam_232.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_232.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_232.CurveSize0=8.991328239440918
Beam_232.CurveSize1=0
Beam_232.FaceCamera=false
Beam_232.LightEmission=1
Beam_232.LightInfluence=0
Beam_232.Segments=15
Beam_232.Texture="rbxassetid://107352571472247"
Beam_232.TextureLength=1
Beam_232.TextureSpeed=-3.115000009536743
Beam_232.Brightness=7.5



local Beam_233=i("Beam", BeamStorage_227)
Beam_233.Name="Beam"
Beam_233:SetAttribute("EmitDuration", 0)
Beam_233:SetAttribute("AuraInstance", true)
Beam_233.Enabled=true
Beam_233.Width0=11.543513298034668
Beam_233.Width1=11.543513298034668
Beam_233.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_233.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_233.CurveSize0=8.991328239440918
Beam_233.CurveSize1=0
Beam_233.FaceCamera=false
Beam_233.LightEmission=1
Beam_233.LightInfluence=0
Beam_233.Segments=15
Beam_233.Texture="rbxassetid://107352571472247"
Beam_233.TextureLength=1
Beam_233.TextureSpeed=-3.115000009536743
Beam_233.Brightness=7.5



local Beam_234=i("Beam", BeamStorage_227)
Beam_234.Name="Beam"
Beam_234:SetAttribute("EmitDuration", 0)
Beam_234:SetAttribute("AuraInstance", true)
Beam_234.Enabled=true
Beam_234.Width0=11.543513298034668
Beam_234.Width1=11.543513298034668
Beam_234.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_234.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_234.CurveSize0=8.991328239440918
Beam_234.CurveSize1=0
Beam_234.FaceCamera=false
Beam_234.LightEmission=1
Beam_234.LightInfluence=0
Beam_234.Segments=15
Beam_234.Texture="rbxassetid://107352571472247"
Beam_234.TextureLength=1
Beam_234.TextureSpeed=-3.115000009536743
Beam_234.Brightness=7.5



local Beam_235=i("Beam", BeamStorage_227)
Beam_235.Name="Beam"
Beam_235:SetAttribute("EmitDuration", 0)
Beam_235:SetAttribute("AuraInstance", true)
Beam_235.Enabled=true
Beam_235.Width0=11.543513298034668
Beam_235.Width1=11.543513298034668
Beam_235.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Beam_235.Color=cs({csk(0.000000,c3(0.310000,0.503200,1.000000)),csk(1.000000,c3(0.310000,0.503200,1.000000))})
Beam_235.CurveSize0=8.991328239440918
Beam_235.CurveSize1=0
Beam_235.FaceCamera=false
Beam_235.LightEmission=1
Beam_235.LightInfluence=0
Beam_235.Segments=15
Beam_235.Texture="rbxassetid://107352571472247"
Beam_235.TextureLength=1
Beam_235.TextureSpeed=-3.115000009536743
Beam_235.Brightness=7.5

Beam_228.Attachment0= _3_221
Beam_228.Attachment1= _4_222
Beam_229.Attachment0= _2_220
Beam_229.Attachment1= _3_221
Beam_230.Attachment0= _1_219
Beam_230.Attachment1= _2_220
Beam_231.Attachment0= _8_226
Beam_231.Attachment1= _1_219
Beam_232.Attachment0= _7_225
Beam_232.Attachment1= _8_226
Beam_233.Attachment0= _5_223
Beam_233.Attachment1= _6_224
Beam_234.Attachment0= _6_224
Beam_234.Attachment1= _7_225
Beam_235.Attachment0= _4_222
Beam_235.Attachment1= _5_223






end
Beams1()

function Beams2()

local Attachment_237=i("Attachment", Floor)
Attachment_237.Name="Attachment"
Attachment_237:SetAttribute("AuraInstance", true)
Attachment_237.Visible=false
Attachment_237.CFrame=cf(0,0,0,1,0,0,0,1,0,0,0,1)



local wwarp1_238=i("Beam", Attachment_237)
wwarp1_238.Name="wwarp1"
wwarp1_238:SetAttribute("AuraInstance", true)
wwarp1_238.Enabled=true
wwarp1_238.Width0=29.4774227142334
wwarp1_238.Width1=66.78543853759766
wwarp1_238.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.400000,0.000000,0.000000),nsk(0.600000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
wwarp1_238.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
wwarp1_238.CurveSize0=0
wwarp1_238.CurveSize1=0
wwarp1_238.FaceCamera=true
wwarp1_238.LightEmission=1
wwarp1_238.LightInfluence=0
wwarp1_238.Segments=10
wwarp1_238.Texture="rbxassetid://118901837282977"
wwarp1_238.TextureLength=0.10000000149011612
wwarp1_238.TextureSpeed=0.06400000303983688
wwarp1_238.Brightness=0.30000001192092896



local debristhging_239=i("Beam", Attachment_237)
debristhging_239.Name="debristhging"
debristhging_239:SetAttribute("AuraInstance", true)
debristhging_239.Enabled=true
debristhging_239.Width0=26.08658218383789
debristhging_239.Width1=34.782108306884766
debristhging_239.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.400000,0.000000,0.000000),nsk(0.600000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
debristhging_239.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
debristhging_239.CurveSize0=0
debristhging_239.CurveSize1=0
debristhging_239.FaceCamera=true
debristhging_239.LightEmission=1
debristhging_239.LightInfluence=0
debristhging_239.Segments=10
debristhging_239.Texture="rbxassetid://123371775663649"
debristhging_239.TextureLength=0.20000000298023224
debristhging_239.TextureSpeed=0.01636168733239174
debristhging_239.Brightness=1



local _2_240=i("Attachment", Attachment_237)
_2_240.Name="2"
_2_240:SetAttribute("AuraInstance", true)
_2_240.Visible=false
_2_240.CFrame=cf(0,25.08223533630371,0,1,0,0,0,1,0,0,0,1)



local _1_241=i("Attachment", Attachment_237)
_1_241.Name="1"
_1_241:SetAttribute("AuraInstance", true)
_1_241.Visible=false
_1_241.CFrame=cf(0,0.13460445404052734,0,1,0,0,0,1,0,0,0,1)



local Texture_242=i("Beam", Attachment_237)
Texture_242.Name="Texture"
Texture_242:SetAttribute("AuraInstance", true)
Texture_242.Enabled=true
Texture_242.Width0=38.131996154785156
Texture_242.Width1=55.097984313964844
Texture_242.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.400000,0.000000,0.000000),nsk(0.600000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Texture_242.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Texture_242.CurveSize0=0
Texture_242.CurveSize1=0
Texture_242.FaceCamera=true
Texture_242.LightEmission=1
Texture_242.LightInfluence=0
Texture_242.Segments=10
Texture_242.Texture="rbxassetid://72550815923180"
Texture_242.TextureLength=0.10000000149011612
Texture_242.TextureSpeed=0.06400000303983688
Texture_242.Brightness=0.10000000149011612



local Beam181_243=i("Beam", Attachment_237)
Beam181_243.Name="Beam18.1"
Beam181_243:SetAttribute("AuraInstance", true)
Beam181_243.Enabled=true
Beam181_243.Width0=64.427001953125
Beam181_243.Width1=80.53375244140625
Beam181_243.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.400000,0.000000,0.000000),nsk(0.600000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam181_243.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam181_243.CurveSize0=0
Beam181_243.CurveSize1=0
Beam181_243.FaceCamera=true
Beam181_243.LightEmission=1
Beam181_243.LightInfluence=0
Beam181_243.Segments=10
Beam181_243.Texture="rbxassetid://97362881081212"
Beam181_243.TextureLength=0.10000000149011612
Beam181_243.TextureSpeed=0.06400000303983688
Beam181_243.Brightness=0.05000000074505806


local Main_244=i("Attachment", Attachment_237)
Main_244.Name="Main"
Main_244:SetAttribute("AuraInstance", true)
Main_244.Visible=false
Main_244.CFrame=cf(0.00002193450927734375,0,0,1,0,0,0,1,0,0,0,1)



local MAIN_245=i("Attachment", Main_244)
MAIN_245.Name="MAIN"
MAIN_245:SetAttribute("AuraInstance", true)
MAIN_245.Visible=false
MAIN_245.CFrame=cf(0,0,0,0.7070603966712952,0.7071532607078552,0.000033322368835797533,-0.00003328919774503447,0.00008040667307795957,-1.0000001192092896,-0.7071532607078552,0.7070603370666504,0.0000803929433459416)



local Attachment_246=i("Attachment", MAIN_245)
Attachment_246.Name="Attachment"
Attachment_246:SetAttribute("AuraInstance", true)
Attachment_246.Visible=false
Attachment_246.CFrame=cf(-0.11758804321289062,11.673213958740234,0.0000023506581783294678,1,0,0,0,1,0,0,0,1)



local Start_247=i("Attachment", Attachment_246)
Start_247.Name="Start"
Start_247:SetAttribute("AuraInstance", true)
Start_247.Visible=false
Start_247.CFrame=cf(0.04523658752441406,-4.489742279052734,-0.0000026635825634002686,1,0,0,0,1,0,0,0,1)



local Beam_248=i("Beam", Start_247)
Beam_248.Name="Beam"
Beam_248:SetAttribute("AuraInstance", true)
Beam_248.Enabled=true
Beam_248.Width0=18.304616928100586
Beam_248.Width1=36.60923385620117
Beam_248.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_248.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_248.CurveSize0=0
Beam_248.CurveSize1=0
Beam_248.FaceCamera=false
Beam_248.LightEmission=1
Beam_248.LightInfluence=0
Beam_248.Segments=100
Beam_248.Texture="rbxassetid://85217257636202"
Beam_248.TextureLength=0.30000001192092896
Beam_248.TextureSpeed=0.40904220938682556
Beam_248.Brightness=3



local Beam_249=i("Beam", Start_247)
Beam_249.Name="Beam"
Beam_249:SetAttribute("AuraInstance", true)
Beam_249.Enabled=true
Beam_249.Width0=26.83665657043457
Beam_249.Width1=53.67331314086914
Beam_249.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_249.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_249.CurveSize0=0
Beam_249.CurveSize1=0
Beam_249.FaceCamera=false
Beam_249.LightEmission=0.4000000059604645
Beam_249.LightInfluence=0
Beam_249.Segments=100
Beam_249.Texture="rbxassetid://74567806035972"
Beam_249.TextureLength=0.25
Beam_249.TextureSpeed=0.16361689567565918
Beam_249.Brightness=0.20000000298023224



local Beam_250=i("Beam", Start_247)
Beam_250.Name="Beam"
Beam_250:SetAttribute("AuraInstance", true)
Beam_250.Enabled=true
Beam_250.Width0=27.331592559814453
Beam_250.Width1=54.663185119628906
Beam_250.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_250.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_250.CurveSize0=0
Beam_250.CurveSize1=0
Beam_250.FaceCamera=false
Beam_250.LightEmission=1
Beam_250.LightInfluence=0
Beam_250.Segments=100
Beam_250.Texture="rbxassetid://128544309515392"
Beam_250.TextureLength=0.20000000298023224
Beam_250.TextureSpeed=0.16361689567565918
Beam_250.Brightness=3



local End_251=i("Attachment", Attachment_246)
End_251.Name="End"
End_251:SetAttribute("AuraInstance", true)
End_251.Visible=false
End_251.CFrame=cf(-0.05879020690917969,5.836555480957031,-19.651941299438477,-0.20592904090881348,-0.9785669445991516,0,0.9785669445991516,-0.20592904090881348,0,0,0,1)



local Attachment_252=i("Attachment", MAIN_245)
Attachment_252.Name="Attachment"
Attachment_252:SetAttribute("AuraInstance", true)
Attachment_252.Visible=false
Attachment_252.CFrame=cf(0.11759376525878906,-11.673171997070312,0.000009093433618545532,0.9961918592453003,0,0.08718843013048172,0,1,-0,-0.08718843013048172,0,0.9961918592453003)



local Start_253=i("Attachment", Attachment_252)
Start_253.Name="Start"
Start_253:SetAttribute("AuraInstance", true)
Start_253.Visible=false
Start_253.CFrame=cf(-0.045146942138671875,4.489688873291016,-0.0039435625076293945,0.6530462503433228,-0.6645246148109436,-0.36323225498199463,0.7394474148750305,0.6630868911743164,0.11633267998695374,0.16354861855506897,-0.34456175565719604,0.924407422542572)



local Beam_254=i("Beam", Start_253)
Beam_254.Name="Beam"
Beam_254:SetAttribute("AuraInstance", true)
Beam_254.Enabled=true
Beam_254.Width0=36.60923385620117
Beam_254.Width1=18.304616928100586
Beam_254.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_254.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_254.CurveSize0=2.44061541557312
Beam_254.CurveSize1=0
Beam_254.FaceCamera=false
Beam_254.LightEmission=1
Beam_254.LightInfluence=0
Beam_254.Segments=100
Beam_254.Texture="rbxassetid://85217257636202"
Beam_254.TextureLength=0.30000001192092896
Beam_254.TextureSpeed=0.40904220938682556
Beam_254.Brightness=1



local Beam_255=i("Beam", Start_253)
Beam_255.Name="Beam"
Beam_255:SetAttribute("AuraInstance", true)
Beam_255.Enabled=true
Beam_255.Width0=53.67331314086914
Beam_255.Width1=26.83665657043457
Beam_255.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_255.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_255.CurveSize0=3.5782198905944824
Beam_255.CurveSize1=0
Beam_255.FaceCamera=false
Beam_255.LightEmission=0.4000000059604645
Beam_255.LightInfluence=0
Beam_255.Segments=100
Beam_255.Texture="rbxassetid://74567806035972"
Beam_255.TextureLength=0.25
Beam_255.TextureSpeed=0.16361689567565918
Beam_255.Brightness=0.20000000298023224



local Beam_256=i("Beam", Start_253)
Beam_256.Name="Beam"
Beam_256:SetAttribute("AuraInstance", true)
Beam_256.Enabled=true
Beam_256.Width0=54.663185119628906
Beam_256.Width1=27.331592559814453
Beam_256.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_256.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_256.CurveSize0=3.644212484359741
Beam_256.CurveSize1=0
Beam_256.FaceCamera=false
Beam_256.LightEmission=1
Beam_256.LightInfluence=0
Beam_256.Segments=100
Beam_256.Texture="rbxassetid://128544309515392"
Beam_256.TextureLength=0.30000001192092896
Beam_256.TextureSpeed=0.16361689567565918
Beam_256.Brightness=1



local End_257=i("Attachment", Attachment_252)
End_257.Name="End"
End_257:SetAttribute("AuraInstance", true)
End_257.Visible=false
End_257.CFrame=cf(1.7714004516601562,-5.836676597595215,-19.572021484375,-0.507286548614502,0.769005298614502,0.3889617621898651,-0.8613854646682739,-0.4388575553894043,-0.2557717561721802,-0.02599102258682251,-0.4647955298423767,0.8850364685058594)



local Attachment_258=i("Attachment", MAIN_245)
Attachment_258.Name="Attachment"
Attachment_258:SetAttribute("AuraInstance", true)
Attachment_258.Visible=false
Attachment_258.CFrame=cf(-11.67320442199707,0.11762046813964844,-7.450580596923828e-09,0,-1,0,1,0,-0,0,0,1)



local Start_259=i("Attachment", Attachment_258)
Start_259.Name="Start"
Start_259:SetAttribute("AuraInstance", true)
Start_259.Visible=false
Start_259.CFrame=cf(-0.04530525207519531,-4.489770889282227,0.000021182000637054443,0.9211934804916382,-0.33685263991355896,0.19476357102394104,0.36191707849502563,0.9255833029747009,-0.11095747351646423,-0.14289359748363495,0.17270156741142273,0.9745540022850037)



local Beam_260=i("Beam", Start_259)
Beam_260.Name="Beam"
Beam_260:SetAttribute("AuraInstance", true)
Beam_260.Enabled=true
Beam_260.Width0=18.304616928100586
Beam_260.Width1=36.60923385620117
Beam_260.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_260.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_260.CurveSize0=0
Beam_260.CurveSize1=0
Beam_260.FaceCamera=false
Beam_260.LightEmission=1
Beam_260.LightInfluence=0
Beam_260.Segments=100
Beam_260.Texture="rbxassetid://85217257636202"
Beam_260.TextureLength=0.30000001192092896
Beam_260.TextureSpeed=0.40904220938682556
Beam_260.Brightness=3



local Beam_261=i("Beam", Start_259)
Beam_261.Name="Beam"
Beam_261:SetAttribute("AuraInstance", true)
Beam_261.Enabled=true
Beam_261.Width0=26.83665657043457
Beam_261.Width1=53.67331314086914
Beam_261.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_261.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_261.CurveSize0=0
Beam_261.CurveSize1=0
Beam_261.FaceCamera=false
Beam_261.LightEmission=0.4000000059604645
Beam_261.LightInfluence=0
Beam_261.Segments=100
Beam_261.Texture="rbxassetid://74567806035972"
Beam_261.TextureLength=0.25
Beam_261.TextureSpeed=0.16361689567565918
Beam_261.Brightness=0.20000000298023224



local Beam_262=i("Beam", Start_259)
Beam_262.Name="Beam"
Beam_262:SetAttribute("AuraInstance", true)
Beam_262.Enabled=true
Beam_262.Width0=27.331592559814453
Beam_262.Width1=54.663185119628906
Beam_262.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_262.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_262.CurveSize0=0
Beam_262.CurveSize1=0
Beam_262.FaceCamera=false
Beam_262.LightEmission=1
Beam_262.LightInfluence=0
Beam_262.Segments=100
Beam_262.Texture="rbxassetid://128544309515392"
Beam_262.TextureLength=0.20000000298023224
Beam_262.TextureSpeed=0.16361689567565918
Beam_262.Brightness=3



local End_263=i("Attachment", Attachment_258)
End_263.Name="End"
End_263:SetAttribute("AuraInstance", true)
End_263.Visible=false
End_263.CFrame=cf(0.05866050720214844,5.8365936279296875,-19.652090072631836,-0.4701542854309082,0.3425186574459076,-0.813410222530365,-0.11790769547224045,-0.9377374649047852,-0.32672053575515747,-0.8746730089187622,-0.0577017217874527,0.4812668561935425)



local Attachment_264=i("Attachment", MAIN_245)
Attachment_264.Name="Attachment"
Attachment_264:SetAttribute("AuraInstance", true)
Attachment_264.Visible=false
Attachment_264.CFrame=cf(11.673158645629883,-0.117523193359375,0.000008590519428253174,0.0000476837158203125,-1,0.0000020836312160099624,0.9961906671524048,0.0000476837667520158,0.08720242977142334,-0.08720242977142334,-0.0000020824415969400434,0.9961906671524048)



local Start_265=i("Attachment", Attachment_264)
Start_265.Name="Start"
Start_265:SetAttribute("AuraInstance", true)
Start_265.Visible=false
Start_265.CFrame=cf(0.04514503479003906,4.489688873291016,0.003936052322387695,1,0,0,0,0.9389488101005554,-0.3440568745136261,0,0.3440568745136261,0.9389488101005554)



local Beam_266=i("Beam", Start_265)
Beam_266.Name="Beam"
Beam_266:SetAttribute("AuraInstance", true)
Beam_266.Enabled=true
Beam_266.Width0=36.60923385620117
Beam_266.Width1=18.304616928100586
Beam_266.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_266.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_266.CurveSize0=2.44061541557312
Beam_266.CurveSize1=0
Beam_266.FaceCamera=false
Beam_266.LightEmission=1
Beam_266.LightInfluence=0
Beam_266.Segments=100
Beam_266.Texture="rbxassetid://85217257636202"
Beam_266.TextureLength=0.30000001192092896
Beam_266.TextureSpeed=0.40904220938682556
Beam_266.Brightness=1



local Beam_267=i("Beam", Start_265)
Beam_267.Name="Beam"
Beam_267:SetAttribute("AuraInstance", true)
Beam_267.Enabled=true
Beam_267.Width0=53.67331314086914
Beam_267.Width1=26.83665657043457
Beam_267.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_267.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_267.CurveSize0=3.5782198905944824
Beam_267.CurveSize1=0
Beam_267.FaceCamera=false
Beam_267.LightEmission=0.4000000059604645
Beam_267.LightInfluence=0
Beam_267.Segments=100
Beam_267.Texture="rbxassetid://74567806035972"
Beam_267.TextureLength=0.25
Beam_267.TextureSpeed=0.16361689567565918
Beam_267.Brightness=0.20000000298023224



local Beam_268=i("Beam", Start_265)
Beam_268.Name="Beam"
Beam_268:SetAttribute("AuraInstance", true)
Beam_268.Enabled=true
Beam_268.Width0=54.663185119628906
Beam_268.Width1=27.331592559814453
Beam_268.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_268.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_268.CurveSize0=3.644212484359741
Beam_268.CurveSize1=0
Beam_268.FaceCamera=false
Beam_268.LightEmission=1
Beam_268.LightInfluence=0
Beam_268.Segments=100
Beam_268.Texture="rbxassetid://128544309515392"
Beam_268.TextureLength=0.30000001192092896
Beam_268.TextureSpeed=0.16361689567565918
Beam_268.Brightness=1



local End_269=i("Attachment", Attachment_264)
End_269.Name="End"
End_269:SetAttribute("AuraInstance", true)
End_269.Visible=false
End_269.CFrame=cf(1.6541423797607422,-5.836597442626953,-19.582277297973633,-0.7989119291305542,-0.15618029236793518,-0.5808163285255432,-0.06558704376220703,-0.9373146295547485,0.3422568440437317,-0.5978613495826721,0.3115270733833313,0.7385884523391724)



local MAIN_270=i("Attachment", Main_244)
MAIN_270.Name="MAIN"
MAIN_270:SetAttribute("AuraInstance", true)
MAIN_270.Visible=false
MAIN_270.CFrame=cf(0,0,0,1,0,0,0,0,-1,0,1,0)



local Attachment_271=i("Attachment", MAIN_270)
Attachment_271.Name="Attachment"
Attachment_271:SetAttribute("AuraInstance", true)
Attachment_271.Visible=false
Attachment_271.CFrame=cf(-11.555566787719727,-0.000003814697265625,0,0,-1,0,1,0,-0,0,0,1)



local End_272=i("Attachment", Attachment_271)
End_272.Name="End"
End_272:SetAttribute("AuraInstance", true)
End_272.Visible=false
End_272.CFrame=cf(-0.00009918212890625,8.444381713867188,-26.930299758911133,-0.4701542854309082,0.3425186574459076,-0.813410222530365,-0.11790769547224045,-0.9377374649047852,-0.32672053575515747,-0.8746730089187622,-0.0577017217874527,0.4812668561935425)



local Start_273=i("Attachment", Attachment_271)
Start_273.Name="Start"
Start_273:SetAttribute("AuraInstance", true)
Start_273.Visible=false
Start_273.CFrame=cf(0,-4.444466590881348,0.00003071129322052002,0.9211934804916382,-0.33685263991355896,0.19476357102394104,0.36191707849502563,0.9255833029747009,-0.11095747351646423,-0.14289359748363495,0.17270156741142273,0.9745540022850037)



local Beam_274=i("Beam", Start_273)
Beam_274.Name="Beam"
Beam_274:SetAttribute("AuraInstance", true)
Beam_274.Enabled=true
Beam_274.Width0=27.331592559814453
Beam_274.Width1=54.663185119628906
Beam_274.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_274.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_274.CurveSize0=0
Beam_274.CurveSize1=0
Beam_274.FaceCamera=false
Beam_274.LightEmission=1
Beam_274.LightInfluence=0
Beam_274.Segments=100
Beam_274.Texture="rbxassetid://128544309515392"
Beam_274.TextureLength=0.20000000298023224
Beam_274.TextureSpeed=0.16361689567565918
Beam_274.Brightness=3



local Beam_275=i("Beam", Start_273)
Beam_275.Name="Beam"
Beam_275:SetAttribute("AuraInstance", true)
Beam_275.Enabled=true
Beam_275.Width0=26.83665657043457
Beam_275.Width1=53.67331314086914
Beam_275.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_275.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_275.CurveSize0=0
Beam_275.CurveSize1=0
Beam_275.FaceCamera=false
Beam_275.LightEmission=0.4000000059604645
Beam_275.LightInfluence=0
Beam_275.Segments=100
Beam_275.Texture="rbxassetid://74567806035972"
Beam_275.TextureLength=0.25
Beam_275.TextureSpeed=0.16361689567565918
Beam_275.Brightness=0.20000000298023224



local Beam_276=i("Beam", Start_273)
Beam_276.Name="Beam"
Beam_276:SetAttribute("AuraInstance", true)
Beam_276.Enabled=true
Beam_276.Width0=18.304616928100586
Beam_276.Width1=36.60923385620117
Beam_276.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_276.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_276.CurveSize0=0
Beam_276.CurveSize1=0
Beam_276.FaceCamera=false
Beam_276.LightEmission=1
Beam_276.LightInfluence=0
Beam_276.Segments=100
Beam_276.Texture="rbxassetid://85217257636202"
Beam_276.TextureLength=0.30000001192092896
Beam_276.TextureSpeed=0.40904220938682556
Beam_276.Brightness=3



local Attachment_277=i("Attachment", MAIN_270)
Attachment_277.Name="Attachment"
Attachment_277:SetAttribute("AuraInstance", true)
Attachment_277.Visible=false
Attachment_277.CFrame=cf(-0.00000286102294921875,11.790733337402344,0.000002346932888031006,1,0,0,0,1,0,0,0,1)



local End_278=i("Attachment", Attachment_277)
End_278.Name="End"
End_278:SetAttribute("AuraInstance", true)
End_278.Visible=false
End_278.CFrame=cf(-0.000007152557373046875,8.616355895996094,-26.93006706237793,-0.20592904090881348,-0.9785669445991516,0,0.9785669445991516,-0.20592904090881348,0,0,0,1)



local Start_279=i("Attachment", Attachment_277)
Start_279.Name="Start"
Start_279:SetAttribute("AuraInstance", true)
Start_279.Visible=false
Start_279.CFrame=cf(0,-4.534881591796875,-0.0000026635825634002686,1,0,0,0,1,0,0,0,1)



local Beam_280=i("Beam", Start_279)
Beam_280.Name="Beam"
Beam_280:SetAttribute("AuraInstance", true)
Beam_280.Enabled=true
Beam_280.Width0=27.331592559814453
Beam_280.Width1=54.663185119628906
Beam_280.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_280.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_280.CurveSize0=0
Beam_280.CurveSize1=0
Beam_280.FaceCamera=false
Beam_280.LightEmission=1
Beam_280.LightInfluence=0
Beam_280.Segments=100
Beam_280.Texture="rbxassetid://128544309515392"
Beam_280.TextureLength=0.20000000298023224
Beam_280.TextureSpeed=0.16361689567565918
Beam_280.Brightness=3



local Beam_281=i("Beam", Start_279)
Beam_281.Name="Beam"
Beam_281:SetAttribute("AuraInstance", true)
Beam_281.Enabled=true
Beam_281.Width0=26.83665657043457
Beam_281.Width1=53.67331314086914
Beam_281.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_281.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_281.CurveSize0=0
Beam_281.CurveSize1=0
Beam_281.FaceCamera=false
Beam_281.LightEmission=0.4000000059604645
Beam_281.LightInfluence=0
Beam_281.Segments=100
Beam_281.Texture="rbxassetid://74567806035972"
Beam_281.TextureLength=0.25
Beam_281.TextureSpeed=0.16361689567565918
Beam_281.Brightness=0.20000000298023224



local Beam_282=i("Beam", Start_279)
Beam_282.Name="Beam"
Beam_282:SetAttribute("AuraInstance", true)
Beam_282.Enabled=true
Beam_282.Width0=18.304616928100586
Beam_282.Width1=36.60923385620117
Beam_282.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_282.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_282.CurveSize0=0
Beam_282.CurveSize1=0
Beam_282.FaceCamera=false
Beam_282.LightEmission=1
Beam_282.LightInfluence=0
Beam_282.Segments=100
Beam_282.Texture="rbxassetid://85217257636202"
Beam_282.TextureLength=0.30000001192092896
Beam_282.TextureSpeed=0.40904220938682556
Beam_282.Brightness=3



local Attachment_283=i("Attachment", MAIN_270)
Attachment_283.Name="Attachment"
Attachment_283:SetAttribute("AuraInstance", true)
Attachment_283.Visible=false
Attachment_283.CFrame=cf(-0.0000019073486328125,-10.976438522338867,0.000013832002878189087,-1,0,0,0,-1,0,0,0,1)



local End_284=i("Attachment", Attachment_283)
End_284.Name="End"
End_284:SetAttribute("AuraInstance", true)
End_284.Visible=false
End_284.CFrame=cf(-0.00000476837158203125,8.616351127624512,-26.930078506469727,-0.20592904090881348,-0.9785669445991516,0,0.9785669445991516,-0.20592904090881348,0,0,0,1)



local Start_285=i("Attachment", Attachment_283)
Start_285.Name="Start"
Start_285:SetAttribute("AuraInstance", true)
Start_285.Visible=false
Start_285.CFrame=cf(9.5367431640625e-07,-4.534889221191406,-0.0000055246055126190186,1,0,0,0,1,0,0,0,1)



local Beam_286=i("Beam", Start_285)
Beam_286.Name="Beam"
Beam_286:SetAttribute("AuraInstance", true)
Beam_286.Enabled=true
Beam_286.Width0=27.331592559814453
Beam_286.Width1=54.663185119628906
Beam_286.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_286.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_286.CurveSize0=0
Beam_286.CurveSize1=0
Beam_286.FaceCamera=false
Beam_286.LightEmission=1
Beam_286.LightInfluence=0
Beam_286.Segments=100
Beam_286.Texture="rbxassetid://128544309515392"
Beam_286.TextureLength=0.20000000298023224
Beam_286.TextureSpeed=0.16361689567565918
Beam_286.Brightness=3



local Beam_287=i("Beam", Start_285)
Beam_287.Name="Beam"
Beam_287:SetAttribute("AuraInstance", true)
Beam_287.Enabled=true
Beam_287.Width0=26.83665657043457
Beam_287.Width1=53.67331314086914
Beam_287.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_287.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_287.CurveSize0=0
Beam_287.CurveSize1=0
Beam_287.FaceCamera=false
Beam_287.LightEmission=0.4000000059604645
Beam_287.LightInfluence=0
Beam_287.Segments=100
Beam_287.Texture="rbxassetid://74567806035972"
Beam_287.TextureLength=0.25
Beam_287.TextureSpeed=0.16361689567565918
Beam_287.Brightness=0.20000000298023224



local Beam_288=i("Beam", Start_285)
Beam_288.Name="Beam"
Beam_288:SetAttribute("AuraInstance", true)
Beam_288.Enabled=true
Beam_288.Width0=18.304616928100586
Beam_288.Width1=36.60923385620117
Beam_288.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_288.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_288.CurveSize0=0
Beam_288.CurveSize1=0
Beam_288.FaceCamera=false
Beam_288.LightEmission=1
Beam_288.LightInfluence=0
Beam_288.Segments=100
Beam_288.Texture="rbxassetid://85217257636202"
Beam_288.TextureLength=0.30000001192092896
Beam_288.TextureSpeed=0.40904220938682556
Beam_288.Brightness=3



local Attachment_289=i("Attachment", MAIN_270)
Attachment_289.Name="Attachment"
Attachment_289:SetAttribute("AuraInstance", true)
Attachment_289.Visible=false
Attachment_289.CFrame=cf(11.555562973022461,0.000003814697265625,0.00000858306884765625,-0.0000476837158203125,-1,-0.0000020836312160099624,0.9961906671524048,-0.0000476837667520158,0.08720242977142334,-0.08720242977142334,0.0000020824415969400434,0.9961906671524048)



local End_290=i("Attachment", Attachment_289)
End_290.Name="End"
End_290:SetAttribute("AuraInstance", true)
End_290.Visible=false
End_290.CFrame=cf(2.3469924926757812,-8.444438934326172,-26.82754135131836,-0.7989119291305542,-0.15618029236793518,-0.5808163285255432,-0.06558704376220703,-0.9373146295547485,0.3422568440437317,-0.5978613495826721,0.3115270733833313,0.7385884523391724)



local Start_291=i("Attachment", Attachment_289)
Start_291.Name="Start"
Start_291:SetAttribute("AuraInstance", true)
Start_291.Visible=false
Start_291.CFrame=cf(-0.000003814697265625,4.44444465637207,0.0000016689300537109375,1,0,0,0,0.9389488101005554,-0.3440568745136261,0,0.3440568745136261,0.9389488101005554)



local Beam_292=i("Beam", Start_291)
Beam_292.Name="Beam"
Beam_292:SetAttribute("AuraInstance", true)
Beam_292.Enabled=true
Beam_292.Width0=53.67331314086914
Beam_292.Width1=26.83665657043457
Beam_292.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_292.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_292.CurveSize0=3.5782198905944824
Beam_292.CurveSize1=0
Beam_292.FaceCamera=false
Beam_292.LightEmission=0.4000000059604645
Beam_292.LightInfluence=0
Beam_292.Segments=100
Beam_292.Texture="rbxassetid://74567806035972"
Beam_292.TextureLength=0.25
Beam_292.TextureSpeed=0.16361689567565918
Beam_292.Brightness=0.20000000298023224



local Beam_293=i("Beam", Start_291)
Beam_293.Name="Beam"
Beam_293:SetAttribute("AuraInstance", true)
Beam_293.Enabled=true
Beam_293.Width0=36.60923385620117
Beam_293.Width1=18.304616928100586
Beam_293.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_293.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_293.CurveSize0=2.44061541557312
Beam_293.CurveSize1=0
Beam_293.FaceCamera=false
Beam_293.LightEmission=1
Beam_293.LightInfluence=0
Beam_293.Segments=100
Beam_293.Texture="rbxassetid://85217257636202"
Beam_293.TextureLength=0.30000001192092896
Beam_293.TextureSpeed=0.40904220938682556
Beam_293.Brightness=1



local Beam_294=i("Beam", Start_291)
Beam_294.Name="Beam"
Beam_294:SetAttribute("AuraInstance", true)
Beam_294.Enabled=true
Beam_294.Width0=54.663185119628906
Beam_294.Width1=27.331592559814453
Beam_294.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.170190,0.881250,0.000000),nsk(0.623679,0.862500,0.000000),nsk(0.798626,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_294.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
Beam_294.CurveSize0=3.644212484359741
Beam_294.CurveSize1=0
Beam_294.FaceCamera=false
Beam_294.LightEmission=1
Beam_294.LightInfluence=0
Beam_294.Segments=100
Beam_294.Texture="rbxassetid://128544309515392"
Beam_294.TextureLength=0.30000001192092896
Beam_294.TextureSpeed=0.16361689567565918
Beam_294.Brightness=1










wwarp1_238.Attachment0= _1_241
wwarp1_238.Attachment1= _2_240
debristhging_239.Attachment0= _1_241
debristhging_239.Attachment1= _2_240
Texture_242.Attachment0= _1_241
Texture_242.Attachment1= _2_240
Beam181_243.Attachment0= _1_241
Beam181_243.Attachment1= _2_240
Beam_292.Attachment0= Start_291
Beam_292.Attachment1= End_290
Beam_293.Attachment0= Start_291
Beam_293.Attachment1= End_290
Beam_294.Attachment0= Start_291
Beam_294.Attachment1= End_290
Beam_274.Attachment0= Start_273
Beam_274.Attachment1= End_272
Beam_275.Attachment0= Start_273
Beam_275.Attachment1= End_272
Beam_276.Attachment0= Start_273
Beam_276.Attachment1= End_272
Beam_260.Attachment0= Start_259
Beam_260.Attachment1= End_263
Beam_261.Attachment0= Start_259
Beam_261.Attachment1= End_263
Beam_262.Attachment0= Start_259
Beam_262.Attachment1= End_263
Beam_254.Attachment0= Start_253
Beam_254.Attachment1= End_257
Beam_255.Attachment0= Start_253
Beam_255.Attachment1= End_257
Beam_256.Attachment0= Start_253
Beam_256.Attachment1= End_257
Beam_248.Attachment0= Start_247
Beam_248.Attachment1= End_251
Beam_249.Attachment0= Start_247
Beam_249.Attachment1= End_251
Beam_250.Attachment0= Start_247
Beam_250.Attachment1= End_251
Beam_280.Attachment0= Start_279
Beam_280.Attachment1= End_278
Beam_281.Attachment0= Start_279
Beam_281.Attachment1= End_278
Beam_282.Attachment0= Start_279
Beam_282.Attachment1= End_278
Beam_286.Attachment0= Start_285
Beam_286.Attachment1= End_284
Beam_287.Attachment0= Start_285
Beam_287.Attachment1= End_284
Beam_288.Attachment0= Start_285
Beam_288.Attachment1= End_284
end
Beams2()


local Atmosphere_189=i("Attachment", Floor)
Atmosphere_189.Name="Atmosphere"




local stars_433=i("ParticleEmitter", Atmosphere_189)
stars_433.Name="stars"
stars_433:SetAttribute("AuraInstance", true)
stars_433.Enabled=true
stars_433.Rate=1
stars_433.Lifetime=nr(5.263157844543457,5.263157844543457)
stars_433.Speed=nr(2.8240513801574707,5.648102760314941)
stars_433.Rotation=nr(180,180)
stars_433.RotSpeed=nr(0,0)
stars_433.Size=ns({nsk(0.000000,5.000000,0.000000),nsk(1.000000,1.478599,0.000000)})
stars_433.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.046512,0.000000,0.000000),nsk(0.100423,1.000000,0.000000),nsk(0.151691,0.000000,0.000000),nsk(0.199789,1.000000,0.000000),nsk(0.252643,0.000000,0.000000),nsk(0.299683,1.000000,0.000000),nsk(0.353066,0.000000,0.000000),nsk(0.399577,1.000000,0.000000),nsk(0.450846,0.000000,0.000000),nsk(0.500000,1.000000,0.000000),nsk(0.549154,0.000000,0.000000),nsk(0.600423,1.000000,0.000000),nsk(0.646934,0.000000,0.000000),nsk(0.698731,1.000000,0.000000),nsk(0.751586,0.000000,0.000000),nsk(0.799683,1.000000,0.000000),nsk(0.850423,0.000000,0.000000),nsk(0.899049,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_433.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
stars_433.LightEmission=1
stars_433.LightInfluence=0
stars_433.Acceleration=v3(0.000000,4.236077,0.000000)
stars_433.Drag=1.2000000476837158
stars_433.EmissionDirection=Enum.NormalId.Top
stars_433.SpreadAngle=v2(-10.000000,10.000000)
stars_433.ZOffset=1.00600004196167
stars_433.Texture="rbxassetid://92276634521088"
stars_433.LockedToPart=true
stars_433.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_433.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_433.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_433.FlipbookFramerate=nr(1.899999976158142,1.899999976158142)
stars_433.FlipbookStartRandom=false
stars_433.Squash=ns({nsk(0.000000,0.300000,0.200000),nsk(1.000000,0.300000,0.200000)})
stars_433.Brightness=5



local stars_434=i("ParticleEmitter", Atmosphere_189)
stars_434.Name="stars"
stars_434:SetAttribute("AuraInstance", true)
stars_434.Enabled=true
stars_434.Rate=1
stars_434.Lifetime=nr(5.263157844543457,5.263157844543457)
stars_434.Speed=nr(2.8240513801574707,5.648102760314941)
stars_434.Rotation=nr(180,180)
stars_434.RotSpeed=nr(0,0)
stars_434.Size=ns({nsk(0.000000,5.000000,0.000000),nsk(1.000000,1.478599,0.000000)})
stars_434.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.046512,0.000000,0.000000),nsk(0.100423,1.000000,0.000000),nsk(0.151691,0.000000,0.000000),nsk(0.199789,1.000000,0.000000),nsk(0.252643,0.000000,0.000000),nsk(0.299683,1.000000,0.000000),nsk(0.353066,0.000000,0.000000),nsk(0.399577,1.000000,0.000000),nsk(0.450846,0.000000,0.000000),nsk(0.500000,1.000000,0.000000),nsk(0.549154,0.000000,0.000000),nsk(0.600423,1.000000,0.000000),nsk(0.646934,0.000000,0.000000),nsk(0.698731,1.000000,0.000000),nsk(0.751586,0.000000,0.000000),nsk(0.799683,1.000000,0.000000),nsk(0.850423,0.000000,0.000000),nsk(0.899049,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_434.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
stars_434.LightEmission=1
stars_434.LightInfluence=0
stars_434.Acceleration=v3(0.000000,4.236077,0.000000)
stars_434.Drag=1.2000000476837158
stars_434.EmissionDirection=Enum.NormalId.Top
stars_434.SpreadAngle=v2(-10.000000,10.000000)
stars_434.ZOffset=1.00600004196167
stars_434.Texture="rbxassetid://92276634521088"
stars_434.LockedToPart=true
stars_434.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_434.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_434.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_434.FlipbookFramerate=nr(1.899999976158142,1.899999976158142)
stars_434.FlipbookStartRandom=false
stars_434.Squash=ns({nsk(0.000000,0.300000,0.200000),nsk(1.000000,0.300000,0.200000)})
stars_434.Brightness=5



local _4_435=i("ParticleEmitter", Atmosphere_189)
_4_435.Name="4"
_4_435:SetAttribute("AuraInstance", true)
_4_435.Enabled=true
_4_435.Rate=2
_4_435.Lifetime=nr(4,4)
_4_435.Speed=nr(3,8)
_4_435.Rotation=nr(-1000,1000)
_4_435.RotSpeed=nr(0,0)
_4_435.Size=ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
_4_435.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.375321,0.000000,0.000000),nsk(0.622108,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_4_435.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_4_435.LightEmission=1
_4_435.LightInfluence=0
_4_435.Acceleration=v3(0.000000,0.355048,0.000000)
_4_435.Drag=0.5
_4_435.EmissionDirection=Enum.NormalId.Top
_4_435.SpreadAngle=v2(4.000000,4.000000)
_4_435.ZOffset=1
_4_435.Texture="rbxassetid://119694364692048"
_4_435.LockedToPart=true
_4_435.Orientation=Enum.ParticleOrientation.VelocityParallel
_4_435.FlipbookLayout=Enum.ParticleFlipbookLayout.None
_4_435.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_4_435.FlipbookFramerate=nr(7.5,7.5)
_4_435.FlipbookStartRandom=false
_4_435.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
_4_435.Brightness=40



local deb2_436=i("ParticleEmitter", Atmosphere_189)
deb2_436.Name="deb2"
deb2_436:SetAttribute("AuraInstance", true)
deb2_436.Enabled=true
deb2_436.Rate=2.5
deb2_436.Lifetime=nr(5.263157844543457,5.789473533630371)
deb2_436.Speed=nr(2,5)
deb2_436.Rotation=nr(-1000,1000)
deb2_436.RotSpeed=nr(-9.5,9.5)
deb2_436.Size=ns({nsk(0.000000,0.529510,0.070601),nsk(1.000000,0.529510,0.070601)})
deb2_436.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
deb2_436.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
deb2_436.LightEmission=1
deb2_436.LightInfluence=0
deb2_436.Acceleration=v3(0.000000,0.000000,0.000000)
deb2_436.Drag=0
deb2_436.EmissionDirection=Enum.NormalId.Top
deb2_436.SpreadAngle=v2(-10.000000,10.000000)
deb2_436.ZOffset=2.1040000915527344
deb2_436.Texture="rbxassetid://101510419050856"
deb2_436.LockedToPart=true
deb2_436.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
deb2_436.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
deb2_436.FlipbookMode=Enum.ParticleFlipbookMode.Loop
deb2_436.FlipbookFramerate=nr(6.650000095367432,6.650000095367432)
deb2_436.FlipbookStartRandom=false
deb2_436.Squash=ns({nsk(0.000000,0.000000,0.100000),nsk(1.000000,0.000000,0.100000)})
deb2_436.Brightness=3



local fogcontrast_437=i("ParticleEmitter", Atmosphere_189)
fogcontrast_437.Name="fog contrast"
fogcontrast_437:SetAttribute("AuraInstance", true)
fogcontrast_437.Enabled=true
fogcontrast_437.Rate=1.7999999523162842
fogcontrast_437.Lifetime=nr(3,3)
fogcontrast_437.Speed=nr(0.1979285031557083,0.1979285031557083)
fogcontrast_437.Rotation=nr(0,0)
fogcontrast_437.RotSpeed=nr(0,0)
fogcontrast_437.Size=ns({nsk(0.000000,9.900000,0.000000),nsk(1.000000,9.900000,0.000000)})
fogcontrast_437.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.525000,0.000000),nsk(1.000000,1.000000,0.000000)})
fogcontrast_437.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
fogcontrast_437.LightEmission=1
fogcontrast_437.LightInfluence=0
fogcontrast_437.Acceleration=v3(0.000000,0.000000,0.000000)
fogcontrast_437.Drag=0
fogcontrast_437.EmissionDirection=Enum.NormalId.Top
fogcontrast_437.SpreadAngle=v2(0.000000,0.000000)
fogcontrast_437.ZOffset=-5
fogcontrast_437.Texture="rbxassetid://13934610516"
fogcontrast_437.LockedToPart=true
fogcontrast_437.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
fogcontrast_437.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
fogcontrast_437.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
fogcontrast_437.FlipbookFramerate=nr(0.699999988079071,0.699999988079071)
fogcontrast_437.FlipbookStartRandom=false
fogcontrast_437.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(0.100000,-0.978975,0.000000),nsk(0.200000,-0.899765,0.000000),nsk(0.300000,-0.769381,0.000000),nsk(0.400000,-0.597606,0.000000),nsk(0.500000,-0.391740,0.000000),nsk(0.600000,-0.157143,0.000000),nsk(0.700000,0.102149,0.000000),nsk(0.800000,0.383011,0.000000),nsk(0.900000,0.682964,0.000000),nsk(1.000000,1.000000,0.000000)})
fogcontrast_437.Brightness=1



local poo_438=i("ParticleEmitter", Atmosphere_189)
poo_438.Name="poo"
poo_438:SetAttribute("AuraInstance", true)
poo_438.Enabled=true
poo_438.Rate=5
poo_438.Lifetime=nr(3.5,4.5)
poo_438.Speed=nr(1.375,5.5)
poo_438.Rotation=nr(-360,360)
poo_438.RotSpeed=nr(0,0)
poo_438.Size=ns({nsk(0.000000,8.250000,3.300000),nsk(0.100000,8.163271,3.300000),nsk(0.200000,7.836533,3.300000),nsk(0.300000,7.298696,3.300000),nsk(0.400000,6.590124,3.300000),nsk(0.500000,5.740926,3.300000),nsk(0.600000,4.773213,3.300000),nsk(0.700000,3.703635,3.300000),nsk(0.800000,2.545079,3.300000),nsk(0.900000,1.307772,3.300000),nsk(1.000000,0.000000,3.300000),nsk(1.000000,0.000000,3.300000)})
poo_438.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.199176,0.937500,0.000000),nsk(1.000000,1.000000,0.000000)})
poo_438.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
poo_438.LightEmission=-1
poo_438.LightInfluence=0
poo_438.Acceleration=v3(0.000000,0.000000,0.000000)
poo_438.Drag=0
poo_438.EmissionDirection=Enum.NormalId.Top
poo_438.SpreadAngle=v2(0.000000,0.000000)
poo_438.ZOffset=-4.001999855041504
poo_438.Texture="rbxassetid://127414141318549"
poo_438.LockedToPart=true
poo_438.Orientation=Enum.ParticleOrientation.FacingCamera
poo_438.FlipbookLayout=Enum.ParticleFlipbookLayout.None
poo_438.FlipbookMode=Enum.ParticleFlipbookMode.Loop
poo_438.FlipbookFramerate=nr(1,1)
poo_438.FlipbookStartRandom=false
poo_438.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
poo_438.Brightness=15



local ParticleEmitter_439=i("ParticleEmitter", Atmosphere_189)
ParticleEmitter_439.Name="ParticleEmitter"
ParticleEmitter_439:SetAttribute("AuraInstance", true)
ParticleEmitter_439.Enabled=true
ParticleEmitter_439.Rate=25
ParticleEmitter_439.Lifetime=nr(1.1111111640930176,1.1111111640930176)
ParticleEmitter_439.Speed=nr(0.0011595672694966197,0.0011595672694966197)
ParticleEmitter_439.Rotation=nr(-360,360)
ParticleEmitter_439.RotSpeed=nr(0,0)
ParticleEmitter_439.Size=ns({nsk(0.000000,0.386522,1.288408),nsk(0.100000,0.386522,1.288408),nsk(0.200000,0.386522,1.288408),nsk(0.300000,0.386522,1.288408),nsk(0.400000,0.386522,1.288408),nsk(0.500000,0.386522,1.288408),nsk(0.600000,0.386522,1.288408),nsk(0.700000,0.386522,1.288408),nsk(0.800000,0.386522,1.288408),nsk(0.900000,0.386522,1.288408),nsk(1.000000,0.386522,1.288408),nsk(1.000000,0.386522,1.288408)})
ParticleEmitter_439.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.200906,0.000000,0.000000),nsk(0.797583,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_439.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_439.LightEmission=1
ParticleEmitter_439.LightInfluence=0
ParticleEmitter_439.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_439.Drag=0
ParticleEmitter_439.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_439.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_439.ZOffset=2
ParticleEmitter_439.Texture="rbxassetid://11865207797"
ParticleEmitter_439.LockedToPart=true
ParticleEmitter_439.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_439.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ParticleEmitter_439.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_439.FlipbookFramerate=nr(0.8999999761581421,0.8999999761581421)
ParticleEmitter_439.FlipbookStartRandom=false
ParticleEmitter_439.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_439.Brightness=5



local debris_440=i("ParticleEmitter", Atmosphere_189)
debris_440.Name="debris"
debris_440:SetAttribute("EmitDelay", 0)
debris_440:SetAttribute("AuraInstance", true)
debris_440:SetAttribute("EmitCount", 999)
debris_440.Enabled=true
debris_440.Rate=50
debris_440.Lifetime=nr(1.850000023841858,2.25)
debris_440.Speed=nr(0.75,0.75)
debris_440.Rotation=nr(90,90)
debris_440.RotSpeed=nr(0,0)
debris_440.Size=ns({nsk(0.000000,0.937500,0.225000),nsk(1.000000,0.000000,0.000000)})
debris_440.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500799,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
debris_440.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
debris_440.LightEmission=-0.5
debris_440.LightInfluence=0
debris_440.Acceleration=v3(0.000000,1.500000,0.000000)
debris_440.Drag=-1.5
debris_440.EmissionDirection=Enum.NormalId.Top
debris_440.SpreadAngle=v2(125.000000,-125.000000)
debris_440.ZOffset=1.9989999532699585
debris_440.Texture=""
debris_440.LockedToPart=true
debris_440.Orientation=Enum.ParticleOrientation.FacingCamera
debris_440.FlipbookLayout=Enum.ParticleFlipbookLayout.None
debris_440.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
debris_440.FlipbookFramerate=nr(20,20)
debris_440.FlipbookStartRandom=false
debris_440.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debris_440.Brightness=0



local debris_441=i("ParticleEmitter", Atmosphere_189)
debris_441.Name="debris"
debris_441:SetAttribute("EmitDelay", 0)
debris_441:SetAttribute("AuraInstance", true)
debris_441:SetAttribute("EmitCount", 0)
debris_441.Enabled=true
debris_441.Rate=30
debris_441.Lifetime=nr(1.850000023841858,2.25)
debris_441.Speed=nr(0.75,0.75)
debris_441.Rotation=nr(90,90)
debris_441.RotSpeed=nr(0,0)
debris_441.Size=ns({nsk(0.000000,1.640625,0.225000),nsk(1.000000,0.000000,0.000000)})
debris_441.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500799,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
debris_441.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
debris_441.LightEmission=1
debris_441.LightInfluence=0
debris_441.Acceleration=v3(0.000000,0.750000,0.000000)
debris_441.Drag=-1.5
debris_441.EmissionDirection=Enum.NormalId.Top
debris_441.SpreadAngle=v2(125.000000,-125.000000)
debris_441.ZOffset=2
debris_441.Texture=""
debris_441.LockedToPart=true
debris_441.Orientation=Enum.ParticleOrientation.FacingCamera
debris_441.FlipbookLayout=Enum.ParticleFlipbookLayout.None
debris_441.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
debris_441.FlipbookFramerate=nr(20,20)
debris_441.FlipbookStartRandom=false
debris_441.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debris_441.Brightness=1



local debris_442=i("ParticleEmitter", Atmosphere_189)
debris_442.Name="debris"
debris_442:SetAttribute("EmitDelay", 0)
debris_442:SetAttribute("AuraInstance", true)
debris_442:SetAttribute("EmitCount", 999)
debris_442.Enabled=true
debris_442.Rate=30
debris_442.Lifetime=nr(1.850000023841858,2.25)
debris_442.Speed=nr(0.7425000071525574,1.7820000648498535)
debris_442.Rotation=nr(90,90)
debris_442.RotSpeed=nr(0,0)
debris_442.Size=ns({nsk(0.000000,0.984375,0.225000),nsk(1.000000,0.000000,0.000000)})
debris_442.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500799,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
debris_442.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
debris_442.LightEmission=-0.5
debris_442.LightInfluence=0
debris_442.Acceleration=v3(0.000000,3.750000,0.000000)
debris_442.Drag=-1.5
debris_442.EmissionDirection=Enum.NormalId.Top
debris_442.SpreadAngle=v2(125.000000,-125.000000)
debris_442.ZOffset=2
debris_442.Texture=""
debris_442.LockedToPart=true
debris_442.Orientation=Enum.ParticleOrientation.VelocityParallel
debris_442.FlipbookLayout=Enum.ParticleFlipbookLayout.None
debris_442.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
debris_442.FlipbookFramerate=nr(20,20)
debris_442.FlipbookStartRandom=false
debris_442.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debris_442.Brightness=1



local pages_443=i("ParticleEmitter", Atmosphere_189)
pages_443.Name="pages"
pages_443:SetAttribute("EmitDelay", 0)
pages_443:SetAttribute("AuraInstance", true)
pages_443:SetAttribute("EmitCount", 0)
pages_443.Enabled=true
pages_443.Rate=12
pages_443.Lifetime=nr(1.850000023841858,1.899999976158142)
pages_443.Speed=nr(0.14249999821186066,0.8819999694824219)
pages_443.Rotation=nr(90,90)
pages_443.RotSpeed=nr(-50,50)
pages_443.Size=ns({nsk(0.000000,0.615000,0.075000),nsk(1.000000,0.615000,0.075000)})
pages_443.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498403,0.325000,0.000000),nsk(1.000000,1.000000,0.000000)})
pages_443.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
pages_443.LightEmission=0.4000000059604645
pages_443.LightInfluence=0
pages_443.Acceleration=v3(0.000000,3.300000,0.000000)
pages_443.Drag=-1.5
pages_443.EmissionDirection=Enum.NormalId.Top
pages_443.SpreadAngle=v2(300.000000,-300.000000)
pages_443.ZOffset=2
pages_443.Texture=""
pages_443.LockedToPart=false
pages_443.Orientation=Enum.ParticleOrientation.VelocityParallel
pages_443.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
pages_443.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
pages_443.FlipbookFramerate=nr(20,20)
pages_443.FlipbookStartRandom=false
pages_443.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
pages_443.Brightness=1.9249999523162842



local specs_444=i("ParticleEmitter", Atmosphere_189)
specs_444.Name="specs"
specs_444:SetAttribute("_vfxEditorGraphSize", "[{\"envelope\":0,\"direction\":\"InOut\",\"index\":0,\"value\":0,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"},{\"envelope\":0.11900000274181366,\"direction\":\"Out\",\"index\":0.03739999979734421,\"value\":0.4,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"cubic\"},{\"envelope\":0,\"direction\":\"InOut\",\"index\":1,\"value\":0,\"handle2\":{\"y\":0,\"x\":0.1},\"handle1\":{\"y\":0,\"x\":-0.1},\"easingMode\":\"linear\"}]")
specs_444:SetAttribute("AuraInstance", true)
specs_444.Enabled=true
specs_444.Rate=98
specs_444.Lifetime=nr(2,8)
specs_444.Speed=nr(10.71074390411377,28.56198501586914)
specs_444.Rotation=nr(0,0)
specs_444.RotSpeed=nr(500,500)
specs_444.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.056000,0.282943,0.084176),nsk(0.110000,0.237112,0.070541),nsk(0.164000,0.196518,0.058464),nsk(0.218000,0.160844,0.047851),nsk(0.272000,0.129771,0.038607),nsk(0.326000,0.102982,0.030637),nsk(0.380000,0.080160,0.023848),nsk(0.434000,0.060986,0.018143),nsk(0.488000,0.045143,0.013430),nsk(0.542000,0.032313,0.009613),nsk(0.596000,0.022178,0.006598),nsk(0.650000,0.014421,0.004290),nsk(0.704000,0.008723,0.002595),nsk(0.758000,0.004767,0.001418),nsk(0.812000,0.002235,0.000665),nsk(0.866000,0.000809,0.000241),nsk(0.920000,0.000172,0.000051),nsk(0.974000,0.000006,0.000002),nsk(1.000000,0.000000,0.000000)})
specs_444.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
specs_444.Color=cs({csk(0.000000,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
specs_444.LightEmission=1
specs_444.LightInfluence=0
specs_444.Acceleration=v3(0.000000,0.750000,0.000000)
specs_444.Drag=2
specs_444.EmissionDirection=Enum.NormalId.Top
specs_444.SpreadAngle=v2(35.000000,35.000000)
specs_444.ZOffset=0
specs_444.Texture="rbxassetid://18672733941"
specs_444.LockedToPart=false
specs_444.Orientation=Enum.ParticleOrientation.VelocityParallel
specs_444.FlipbookLayout=Enum.ParticleFlipbookLayout.None
specs_444.FlipbookMode=Enum.ParticleFlipbookMode.Loop
specs_444.FlipbookFramerate=nr(1,1)
specs_444.FlipbookStartRandom=false
specs_444.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
specs_444.Brightness=200


local Bling_187=i("Attachment", Floor)
Bling_187.Name="Bling"




local ParticleEmitter_431=i("ParticleEmitter", Bling_187)
ParticleEmitter_431.Name="ParticleEmitter"
ParticleEmitter_431:SetAttribute("AuraInstance", true)
ParticleEmitter_431.Enabled=true
ParticleEmitter_431.Rate=5
ParticleEmitter_431.Lifetime=nr(3,3)
ParticleEmitter_431.Speed=nr(3.5999999046325684,3.5999999046325684)
ParticleEmitter_431.Rotation=nr(-360,360)
ParticleEmitter_431.RotSpeed=nr(-100,100)
ParticleEmitter_431.Size=ns({nsk(0.000000,3.712499,0.000000),nsk(1.000000,2.193750,0.000000)})
ParticleEmitter_431.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.514799,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_431.Color=cs({csk(0.000000,c3(0.239216,0.482353,0.721569)),csk(0.167820,c3(0.231373,0.458824,0.690196)),csk(0.550173,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_431.LightEmission=0
ParticleEmitter_431.LightInfluence=0
ParticleEmitter_431.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_431.Drag=0
ParticleEmitter_431.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_431.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_431.ZOffset=20
ParticleEmitter_431.Texture="rbxassetid://2545904564"
ParticleEmitter_431.LockedToPart=true
ParticleEmitter_431.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_431.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_431.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_431.FlipbookFramerate=nr(1,1)
ParticleEmitter_431.FlipbookStartRandom=false
ParticleEmitter_431.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_431.Brightness=22



local ParticleEmitter_432=i("ParticleEmitter", Bling_187)
ParticleEmitter_432.Name="ParticleEmitter"
ParticleEmitter_432:SetAttribute("AuraInstance", true)
ParticleEmitter_432.Enabled=true
ParticleEmitter_432.Rate=10
ParticleEmitter_432.Lifetime=nr(0.15000000596046448,0.20000000298023224)
ParticleEmitter_432.Speed=nr(0,0)
ParticleEmitter_432.Rotation=nr(0,0)
ParticleEmitter_432.RotSpeed=nr(0,0)
ParticleEmitter_432.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_432.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_432.Color=cs({csk(0.000000,c3(0.239216,0.482353,0.721569)),csk(0.167820,c3(0.231373,0.458824,0.690196)),csk(0.550173,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_432.LightEmission=0
ParticleEmitter_432.LightInfluence=0
ParticleEmitter_432.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_432.Drag=0
ParticleEmitter_432.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_432.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_432.ZOffset=12
ParticleEmitter_432.Texture="rbxassetid://17211298816"
ParticleEmitter_432.LockedToPart=true
ParticleEmitter_432.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_432.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_432.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_432.FlipbookFramerate=nr(1,1)
ParticleEmitter_432.FlipbookStartRandom=false
ParticleEmitter_432.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_432.Brightness=3


local RingDebris_389=i("Attachment", Floor)
RingDebris_389.Name="RingDebris"
RingDebris_389:SetAttribute("AuraInstance", true)
RingDebris_389.Visible=false
RingDebris_389.CFrame=cf(0.000091552734375,-0.00032722949981689453,0.0001373291015625,1,0,0,0,1,0,0,0,1)





local Attachment_391=i("Attachment", RingDebris_389)
Attachment_391.Name="Attachment"
Attachment_391:SetAttribute("AuraInstance", true)
Attachment_391.Visible=false
Attachment_391.CFrame=cf(0,0,-20,-1,0,0,0,1,0,0,0,-1)



local ParticleEmitter_392=i("ParticleEmitter", Attachment_391)
ParticleEmitter_392.Name="ParticleEmitter"
ParticleEmitter_392:SetAttribute("EmitCount", 0)
ParticleEmitter_392:SetAttribute("AuraInstance", true)
ParticleEmitter_392.Enabled=true
ParticleEmitter_392.Rate=16
ParticleEmitter_392.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_392.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_392.Rotation=nr(90,90)
ParticleEmitter_392.RotSpeed=nr(0,0)
ParticleEmitter_392.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_392.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_392.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_392.LightEmission=1
ParticleEmitter_392.LightInfluence=0
ParticleEmitter_392.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_392.Drag=0
ParticleEmitter_392.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_392.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_392.ZOffset=12
ParticleEmitter_392.Texture="rbxassetid://120931362264586"
ParticleEmitter_392.LockedToPart=true
ParticleEmitter_392.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_392.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_392.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_392.FlipbookFramerate=nr(0,0)
ParticleEmitter_392.FlipbookStartRandom=true
ParticleEmitter_392.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_392.Brightness=1



local ParticleEmitter_393=i("ParticleEmitter", Attachment_391)
ParticleEmitter_393.Name="ParticleEmitter"
ParticleEmitter_393:SetAttribute("EmitCount", 0)
ParticleEmitter_393:SetAttribute("AuraInstance", true)
ParticleEmitter_393.Enabled=true
ParticleEmitter_393.Rate=8
ParticleEmitter_393.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_393.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_393.Rotation=nr(-360,360)
ParticleEmitter_393.RotSpeed=nr(-200,200)
ParticleEmitter_393.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_393.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_393.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_393.LightEmission=1
ParticleEmitter_393.LightInfluence=0
ParticleEmitter_393.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_393.Drag=0
ParticleEmitter_393.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_393.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_393.ZOffset=12
ParticleEmitter_393.Texture="rbxassetid://16879806460"
ParticleEmitter_393.LockedToPart=true
ParticleEmitter_393.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_393.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_393.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_393.FlipbookFramerate=nr(0,0)
ParticleEmitter_393.FlipbookStartRandom=true
ParticleEmitter_393.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_393.Brightness=10



local ParticleEmitter_394=i("ParticleEmitter", Attachment_391)
ParticleEmitter_394.Name="ParticleEmitter"
ParticleEmitter_394:SetAttribute("EmitCount", 0)
ParticleEmitter_394:SetAttribute("AuraInstance", true)
ParticleEmitter_394.Enabled=true
ParticleEmitter_394.Rate=4
ParticleEmitter_394.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_394.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_394.Rotation=nr(-360,360)
ParticleEmitter_394.RotSpeed=nr(0,0)
ParticleEmitter_394.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_394.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_394.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_394.LightEmission=1
ParticleEmitter_394.LightInfluence=0
ParticleEmitter_394.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_394.Drag=0
ParticleEmitter_394.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_394.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_394.ZOffset=12
ParticleEmitter_394.Texture="rbxassetid://91167564374329"
ParticleEmitter_394.LockedToPart=true
ParticleEmitter_394.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_394.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_394.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_394.FlipbookFramerate=nr(0,0)
ParticleEmitter_394.FlipbookStartRandom=true
ParticleEmitter_394.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_394.Brightness=10



local _1_395=i("ParticleEmitter", Attachment_391)
_1_395.Name="1"
_1_395:SetAttribute("EmitCount", 0)
_1_395:SetAttribute("AuraInstance", true)
_1_395.Enabled=true
_1_395.Rate=12
_1_395.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_395.Speed=nr(36.288002014160156,58.46400451660156)
_1_395.Rotation=nr(0,0)
_1_395.RotSpeed=nr(0,0)
_1_395.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_395.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_395.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_395.LightEmission=1
_1_395.LightInfluence=0
_1_395.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_395.Drag=0
_1_395.EmissionDirection=Enum.NormalId.Right
_1_395.SpreadAngle=v2(15.000000,15.000000)
_1_395.ZOffset=12
_1_395.Texture="rbxassetid://120119404032319"
_1_395.LockedToPart=true
_1_395.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_395.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_395.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_395.FlipbookFramerate=nr(0,0)
_1_395.FlipbookStartRandom=false
_1_395.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_395.Brightness=11



local Attachment_396=i("Attachment", RingDebris_389)
Attachment_396.Name="Attachment"
Attachment_396:SetAttribute("AuraInstance", true)
Attachment_396.Visible=false
Attachment_396.CFrame=cf(0,0,23,1,0,0,0,1,0,0,0,1)



local ParticleEmitter_397=i("ParticleEmitter", Attachment_396)
ParticleEmitter_397.Name="ParticleEmitter"
ParticleEmitter_397:SetAttribute("EmitCount", 0)
ParticleEmitter_397:SetAttribute("AuraInstance", true)
ParticleEmitter_397.Enabled=true
ParticleEmitter_397.Rate=16
ParticleEmitter_397.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_397.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_397.Rotation=nr(90,90)
ParticleEmitter_397.RotSpeed=nr(0,0)
ParticleEmitter_397.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_397.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_397.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_397.LightEmission=1
ParticleEmitter_397.LightInfluence=0
ParticleEmitter_397.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_397.Drag=0
ParticleEmitter_397.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_397.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_397.ZOffset=12
ParticleEmitter_397.Texture="rbxassetid://120931362264586"
ParticleEmitter_397.LockedToPart=true
ParticleEmitter_397.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_397.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_397.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_397.FlipbookFramerate=nr(0,0)
ParticleEmitter_397.FlipbookStartRandom=true
ParticleEmitter_397.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_397.Brightness=1



local ParticleEmitter_398=i("ParticleEmitter", Attachment_396)
ParticleEmitter_398.Name="ParticleEmitter"
ParticleEmitter_398:SetAttribute("EmitCount", 0)
ParticleEmitter_398:SetAttribute("AuraInstance", true)
ParticleEmitter_398.Enabled=true
ParticleEmitter_398.Rate=8
ParticleEmitter_398.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_398.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_398.Rotation=nr(-360,360)
ParticleEmitter_398.RotSpeed=nr(-200,200)
ParticleEmitter_398.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_398.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_398.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_398.LightEmission=1
ParticleEmitter_398.LightInfluence=0
ParticleEmitter_398.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_398.Drag=0
ParticleEmitter_398.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_398.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_398.ZOffset=12
ParticleEmitter_398.Texture="rbxassetid://16879806460"
ParticleEmitter_398.LockedToPart=true
ParticleEmitter_398.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_398.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_398.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_398.FlipbookFramerate=nr(0,0)
ParticleEmitter_398.FlipbookStartRandom=true
ParticleEmitter_398.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_398.Brightness=10



local ParticleEmitter_399=i("ParticleEmitter", Attachment_396)
ParticleEmitter_399.Name="ParticleEmitter"
ParticleEmitter_399:SetAttribute("EmitCount", 0)
ParticleEmitter_399:SetAttribute("AuraInstance", true)
ParticleEmitter_399.Enabled=true
ParticleEmitter_399.Rate=4
ParticleEmitter_399.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_399.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_399.Rotation=nr(-360,360)
ParticleEmitter_399.RotSpeed=nr(0,0)
ParticleEmitter_399.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_399.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_399.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_399.LightEmission=1
ParticleEmitter_399.LightInfluence=0
ParticleEmitter_399.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_399.Drag=0
ParticleEmitter_399.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_399.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_399.ZOffset=12
ParticleEmitter_399.Texture="rbxassetid://91167564374329"
ParticleEmitter_399.LockedToPart=true
ParticleEmitter_399.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_399.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_399.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_399.FlipbookFramerate=nr(0,0)
ParticleEmitter_399.FlipbookStartRandom=true
ParticleEmitter_399.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_399.Brightness=10



local _1_400=i("ParticleEmitter", Attachment_396)
_1_400.Name="1"
_1_400:SetAttribute("EmitCount", 0)
_1_400:SetAttribute("AuraInstance", true)
_1_400.Enabled=true
_1_400.Rate=12
_1_400.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_400.Speed=nr(36.288002014160156,58.46400451660156)
_1_400.Rotation=nr(0,0)
_1_400.RotSpeed=nr(0,0)
_1_400.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_400.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_400.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_400.LightEmission=1
_1_400.LightInfluence=0
_1_400.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_400.Drag=0
_1_400.EmissionDirection=Enum.NormalId.Right
_1_400.SpreadAngle=v2(15.000000,15.000000)
_1_400.ZOffset=12
_1_400.Texture="rbxassetid://120119404032319"
_1_400.LockedToPart=true
_1_400.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_400.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_400.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_400.FlipbookFramerate=nr(0,0)
_1_400.FlipbookStartRandom=false
_1_400.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_400.Brightness=11



local Attachment_401=i("Attachment", RingDebris_389)
Attachment_401.Name="Attachment"
Attachment_401:SetAttribute("AuraInstance", true)
Attachment_401.Visible=false
Attachment_401.CFrame=cf(-11,0,10,0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,0.7071342468261719)



local ParticleEmitter_402=i("ParticleEmitter", Attachment_401)
ParticleEmitter_402.Name="ParticleEmitter"
ParticleEmitter_402:SetAttribute("EmitCount", 0)
ParticleEmitter_402:SetAttribute("AuraInstance", true)
ParticleEmitter_402.Enabled=true
ParticleEmitter_402.Rate=16
ParticleEmitter_402.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_402.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_402.Rotation=nr(90,90)
ParticleEmitter_402.RotSpeed=nr(0,0)
ParticleEmitter_402.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_402.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_402.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_402.LightEmission=1
ParticleEmitter_402.LightInfluence=0
ParticleEmitter_402.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_402.Drag=0
ParticleEmitter_402.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_402.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_402.ZOffset=12
ParticleEmitter_402.Texture="rbxassetid://120931362264586"
ParticleEmitter_402.LockedToPart=true
ParticleEmitter_402.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_402.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_402.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_402.FlipbookFramerate=nr(0,0)
ParticleEmitter_402.FlipbookStartRandom=true
ParticleEmitter_402.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_402.Brightness=1



local ParticleEmitter_403=i("ParticleEmitter", Attachment_401)
ParticleEmitter_403.Name="ParticleEmitter"
ParticleEmitter_403:SetAttribute("EmitCount", 0)
ParticleEmitter_403:SetAttribute("AuraInstance", true)
ParticleEmitter_403.Enabled=true
ParticleEmitter_403.Rate=8
ParticleEmitter_403.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_403.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_403.Rotation=nr(-360,360)
ParticleEmitter_403.RotSpeed=nr(-200,200)
ParticleEmitter_403.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_403.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_403.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_403.LightEmission=1
ParticleEmitter_403.LightInfluence=0
ParticleEmitter_403.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_403.Drag=0
ParticleEmitter_403.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_403.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_403.ZOffset=12
ParticleEmitter_403.Texture="rbxassetid://16879806460"
ParticleEmitter_403.LockedToPart=true
ParticleEmitter_403.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_403.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_403.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_403.FlipbookFramerate=nr(0,0)
ParticleEmitter_403.FlipbookStartRandom=true
ParticleEmitter_403.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_403.Brightness=10



local ParticleEmitter_404=i("ParticleEmitter", Attachment_401)
ParticleEmitter_404.Name="ParticleEmitter"
ParticleEmitter_404:SetAttribute("EmitCount", 0)
ParticleEmitter_404:SetAttribute("AuraInstance", true)
ParticleEmitter_404.Enabled=true
ParticleEmitter_404.Rate=4
ParticleEmitter_404.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_404.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_404.Rotation=nr(-360,360)
ParticleEmitter_404.RotSpeed=nr(0,0)
ParticleEmitter_404.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_404.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_404.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_404.LightEmission=1
ParticleEmitter_404.LightInfluence=0
ParticleEmitter_404.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_404.Drag=0
ParticleEmitter_404.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_404.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_404.ZOffset=12
ParticleEmitter_404.Texture="rbxassetid://91167564374329"
ParticleEmitter_404.LockedToPart=true
ParticleEmitter_404.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_404.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_404.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_404.FlipbookFramerate=nr(0,0)
ParticleEmitter_404.FlipbookStartRandom=true
ParticleEmitter_404.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_404.Brightness=10



local _1_405=i("ParticleEmitter", Attachment_401)
_1_405.Name="1"
_1_405:SetAttribute("EmitCount", 0)
_1_405:SetAttribute("AuraInstance", true)
_1_405.Enabled=true
_1_405.Rate=12
_1_405.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_405.Speed=nr(36.288002014160156,58.46400451660156)
_1_405.Rotation=nr(0,0)
_1_405.RotSpeed=nr(0,0)
_1_405.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_405.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_405.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_405.LightEmission=1
_1_405.LightInfluence=0
_1_405.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_405.Drag=0
_1_405.EmissionDirection=Enum.NormalId.Right
_1_405.SpreadAngle=v2(15.000000,15.000000)
_1_405.ZOffset=12
_1_405.Texture="rbxassetid://120119404032319"
_1_405.LockedToPart=true
_1_405.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_405.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_405.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_405.FlipbookFramerate=nr(0,0)
_1_405.FlipbookStartRandom=false
_1_405.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_405.Brightness=11



local Attachment_406=i("Attachment", RingDebris_389)
Attachment_406.Name="Attachment"
Attachment_406:SetAttribute("AuraInstance", true)
Attachment_406.Visible=false
Attachment_406.CFrame=cf(11,0,-10,-0.7071342468261719,0,0.707079291343689,0,1,0,-0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_407=i("ParticleEmitter", Attachment_406)
ParticleEmitter_407.Name="ParticleEmitter"
ParticleEmitter_407:SetAttribute("EmitCount", 0)
ParticleEmitter_407:SetAttribute("AuraInstance", true)
ParticleEmitter_407.Enabled=true
ParticleEmitter_407.Rate=16
ParticleEmitter_407.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_407.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_407.Rotation=nr(90,90)
ParticleEmitter_407.RotSpeed=nr(0,0)
ParticleEmitter_407.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_407.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_407.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_407.LightEmission=1
ParticleEmitter_407.LightInfluence=0
ParticleEmitter_407.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_407.Drag=0
ParticleEmitter_407.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_407.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_407.ZOffset=12
ParticleEmitter_407.Texture="rbxassetid://120931362264586"
ParticleEmitter_407.LockedToPart=true
ParticleEmitter_407.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_407.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_407.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_407.FlipbookFramerate=nr(0,0)
ParticleEmitter_407.FlipbookStartRandom=true
ParticleEmitter_407.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_407.Brightness=1



local ParticleEmitter_408=i("ParticleEmitter", Attachment_406)
ParticleEmitter_408.Name="ParticleEmitter"
ParticleEmitter_408:SetAttribute("EmitCount", 0)
ParticleEmitter_408:SetAttribute("AuraInstance", true)
ParticleEmitter_408.Enabled=true
ParticleEmitter_408.Rate=8
ParticleEmitter_408.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_408.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_408.Rotation=nr(-360,360)
ParticleEmitter_408.RotSpeed=nr(-200,200)
ParticleEmitter_408.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_408.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_408.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_408.LightEmission=1
ParticleEmitter_408.LightInfluence=0
ParticleEmitter_408.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_408.Drag=0
ParticleEmitter_408.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_408.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_408.ZOffset=12
ParticleEmitter_408.Texture="rbxassetid://16879806460"
ParticleEmitter_408.LockedToPart=true
ParticleEmitter_408.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_408.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_408.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_408.FlipbookFramerate=nr(0,0)
ParticleEmitter_408.FlipbookStartRandom=true
ParticleEmitter_408.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_408.Brightness=10



local ParticleEmitter_409=i("ParticleEmitter", Attachment_406)
ParticleEmitter_409.Name="ParticleEmitter"
ParticleEmitter_409:SetAttribute("EmitCount", 0)
ParticleEmitter_409:SetAttribute("AuraInstance", true)
ParticleEmitter_409.Enabled=true
ParticleEmitter_409.Rate=4
ParticleEmitter_409.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_409.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_409.Rotation=nr(-360,360)
ParticleEmitter_409.RotSpeed=nr(0,0)
ParticleEmitter_409.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_409.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_409.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_409.LightEmission=1
ParticleEmitter_409.LightInfluence=0
ParticleEmitter_409.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_409.Drag=0
ParticleEmitter_409.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_409.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_409.ZOffset=12
ParticleEmitter_409.Texture="rbxassetid://91167564374329"
ParticleEmitter_409.LockedToPart=true
ParticleEmitter_409.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_409.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_409.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_409.FlipbookFramerate=nr(0,0)
ParticleEmitter_409.FlipbookStartRandom=true
ParticleEmitter_409.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_409.Brightness=10



local _1_410=i("ParticleEmitter", Attachment_406)
_1_410.Name="1"
_1_410:SetAttribute("EmitCount", 0)
_1_410:SetAttribute("AuraInstance", true)
_1_410.Enabled=true
_1_410.Rate=12
_1_410.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_410.Speed=nr(36.288002014160156,58.46400451660156)
_1_410.Rotation=nr(0,0)
_1_410.RotSpeed=nr(0,0)
_1_410.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_410.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_410.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_410.LightEmission=1
_1_410.LightInfluence=0
_1_410.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_410.Drag=0
_1_410.EmissionDirection=Enum.NormalId.Right
_1_410.SpreadAngle=v2(15.000000,15.000000)
_1_410.ZOffset=12
_1_410.Texture="rbxassetid://120119404032319"
_1_410.LockedToPart=true
_1_410.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_410.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_410.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_410.FlipbookFramerate=nr(0,0)
_1_410.FlipbookStartRandom=false
_1_410.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_410.Brightness=11



local Attachment_411=i("Attachment", RingDebris_389)
Attachment_411.Name="Attachment"
Attachment_411:SetAttribute("AuraInstance", true)
Attachment_411.Visible=false
Attachment_411.CFrame=cf(-11,0,-10,-0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_412=i("ParticleEmitter", Attachment_411)
ParticleEmitter_412.Name="ParticleEmitter"
ParticleEmitter_412:SetAttribute("EmitCount", 0)
ParticleEmitter_412:SetAttribute("AuraInstance", true)
ParticleEmitter_412.Enabled=true
ParticleEmitter_412.Rate=16
ParticleEmitter_412.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_412.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_412.Rotation=nr(90,90)
ParticleEmitter_412.RotSpeed=nr(0,0)
ParticleEmitter_412.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_412.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_412.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_412.LightEmission=1
ParticleEmitter_412.LightInfluence=0
ParticleEmitter_412.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_412.Drag=0
ParticleEmitter_412.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_412.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_412.ZOffset=12
ParticleEmitter_412.Texture="rbxassetid://120931362264586"
ParticleEmitter_412.LockedToPart=true
ParticleEmitter_412.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_412.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_412.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_412.FlipbookFramerate=nr(0,0)
ParticleEmitter_412.FlipbookStartRandom=true
ParticleEmitter_412.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_412.Brightness=1



local ParticleEmitter_413=i("ParticleEmitter", Attachment_411)
ParticleEmitter_413.Name="ParticleEmitter"
ParticleEmitter_413:SetAttribute("EmitCount", 0)
ParticleEmitter_413:SetAttribute("AuraInstance", true)
ParticleEmitter_413.Enabled=true
ParticleEmitter_413.Rate=8
ParticleEmitter_413.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_413.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_413.Rotation=nr(-360,360)
ParticleEmitter_413.RotSpeed=nr(-200,200)
ParticleEmitter_413.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_413.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_413.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_413.LightEmission=1
ParticleEmitter_413.LightInfluence=0
ParticleEmitter_413.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_413.Drag=0
ParticleEmitter_413.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_413.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_413.ZOffset=12
ParticleEmitter_413.Texture="rbxassetid://16879806460"
ParticleEmitter_413.LockedToPart=true
ParticleEmitter_413.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_413.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_413.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_413.FlipbookFramerate=nr(0,0)
ParticleEmitter_413.FlipbookStartRandom=true
ParticleEmitter_413.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_413.Brightness=10



local ParticleEmitter_414=i("ParticleEmitter", Attachment_411)
ParticleEmitter_414.Name="ParticleEmitter"
ParticleEmitter_414:SetAttribute("EmitCount", 0)
ParticleEmitter_414:SetAttribute("AuraInstance", true)
ParticleEmitter_414.Enabled=true
ParticleEmitter_414.Rate=4
ParticleEmitter_414.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_414.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_414.Rotation=nr(-360,360)
ParticleEmitter_414.RotSpeed=nr(0,0)
ParticleEmitter_414.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_414.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_414.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_414.LightEmission=1
ParticleEmitter_414.LightInfluence=0
ParticleEmitter_414.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_414.Drag=0
ParticleEmitter_414.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_414.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_414.ZOffset=12
ParticleEmitter_414.Texture="rbxassetid://91167564374329"
ParticleEmitter_414.LockedToPart=true
ParticleEmitter_414.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_414.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_414.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_414.FlipbookFramerate=nr(0,0)
ParticleEmitter_414.FlipbookStartRandom=true
ParticleEmitter_414.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_414.Brightness=10



local _1_415=i("ParticleEmitter", Attachment_411)
_1_415.Name="1"
_1_415:SetAttribute("EmitCount", 0)
_1_415:SetAttribute("AuraInstance", true)
_1_415.Enabled=true
_1_415.Rate=12
_1_415.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_415.Speed=nr(36.288002014160156,58.46400451660156)
_1_415.Rotation=nr(0,0)
_1_415.RotSpeed=nr(0,0)
_1_415.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_415.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_415.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_415.LightEmission=1
_1_415.LightInfluence=0
_1_415.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_415.Drag=0
_1_415.EmissionDirection=Enum.NormalId.Right
_1_415.SpreadAngle=v2(15.000000,15.000000)
_1_415.ZOffset=12
_1_415.Texture="rbxassetid://120119404032319"
_1_415.LockedToPart=true
_1_415.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_415.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_415.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_415.FlipbookFramerate=nr(0,0)
_1_415.FlipbookStartRandom=false
_1_415.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_415.Brightness=11



local Attachment_416=i("Attachment", RingDebris_389)
Attachment_416.Name="Attachment"
Attachment_416:SetAttribute("AuraInstance", true)
Attachment_416.Visible=false
Attachment_416.CFrame=cf(11,0,10,0.7071342468261719,0,0.707079291343689,0,1,-0,-0.707079291343689,0,0.7071342468261719)



local ParticleEmitter_417=i("ParticleEmitter", Attachment_416)
ParticleEmitter_417.Name="ParticleEmitter"
ParticleEmitter_417:SetAttribute("EmitCount", 0)
ParticleEmitter_417:SetAttribute("AuraInstance", true)
ParticleEmitter_417.Enabled=true
ParticleEmitter_417.Rate=16
ParticleEmitter_417.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_417.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_417.Rotation=nr(90,90)
ParticleEmitter_417.RotSpeed=nr(0,0)
ParticleEmitter_417.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_417.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_417.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_417.LightEmission=1
ParticleEmitter_417.LightInfluence=0
ParticleEmitter_417.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_417.Drag=0
ParticleEmitter_417.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_417.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_417.ZOffset=12
ParticleEmitter_417.Texture="rbxassetid://120931362264586"
ParticleEmitter_417.LockedToPart=true
ParticleEmitter_417.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_417.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_417.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_417.FlipbookFramerate=nr(0,0)
ParticleEmitter_417.FlipbookStartRandom=true
ParticleEmitter_417.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_417.Brightness=1



local ParticleEmitter_418=i("ParticleEmitter", Attachment_416)
ParticleEmitter_418.Name="ParticleEmitter"
ParticleEmitter_418:SetAttribute("EmitCount", 0)
ParticleEmitter_418:SetAttribute("AuraInstance", true)
ParticleEmitter_418.Enabled=true
ParticleEmitter_418.Rate=8
ParticleEmitter_418.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_418.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_418.Rotation=nr(-360,360)
ParticleEmitter_418.RotSpeed=nr(-200,200)
ParticleEmitter_418.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_418.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_418.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_418.LightEmission=1
ParticleEmitter_418.LightInfluence=0
ParticleEmitter_418.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_418.Drag=0
ParticleEmitter_418.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_418.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_418.ZOffset=12
ParticleEmitter_418.Texture="rbxassetid://16879806460"
ParticleEmitter_418.LockedToPart=true
ParticleEmitter_418.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_418.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_418.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_418.FlipbookFramerate=nr(0,0)
ParticleEmitter_418.FlipbookStartRandom=true
ParticleEmitter_418.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_418.Brightness=10



local ParticleEmitter_419=i("ParticleEmitter", Attachment_416)
ParticleEmitter_419.Name="ParticleEmitter"
ParticleEmitter_419:SetAttribute("EmitCount", 0)
ParticleEmitter_419:SetAttribute("AuraInstance", true)
ParticleEmitter_419.Enabled=true
ParticleEmitter_419.Rate=4
ParticleEmitter_419.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_419.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_419.Rotation=nr(-360,360)
ParticleEmitter_419.RotSpeed=nr(0,0)
ParticleEmitter_419.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_419.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_419.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_419.LightEmission=1
ParticleEmitter_419.LightInfluence=0
ParticleEmitter_419.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_419.Drag=0
ParticleEmitter_419.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_419.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_419.ZOffset=12
ParticleEmitter_419.Texture="rbxassetid://91167564374329"
ParticleEmitter_419.LockedToPart=true
ParticleEmitter_419.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_419.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_419.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_419.FlipbookFramerate=nr(0,0)
ParticleEmitter_419.FlipbookStartRandom=true
ParticleEmitter_419.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_419.Brightness=10



local _1_420=i("ParticleEmitter", Attachment_416)
_1_420.Name="1"
_1_420:SetAttribute("EmitCount", 0)
_1_420:SetAttribute("AuraInstance", true)
_1_420.Enabled=true
_1_420.Rate=12
_1_420.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_420.Speed=nr(36.288002014160156,58.46400451660156)
_1_420.Rotation=nr(0,0)
_1_420.RotSpeed=nr(0,0)
_1_420.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_420.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_420.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_420.LightEmission=1
_1_420.LightInfluence=0
_1_420.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_420.Drag=0
_1_420.EmissionDirection=Enum.NormalId.Right
_1_420.SpreadAngle=v2(15.000000,15.000000)
_1_420.ZOffset=12
_1_420.Texture="rbxassetid://120119404032319"
_1_420.LockedToPart=true
_1_420.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_420.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_420.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_420.FlipbookFramerate=nr(0,0)
_1_420.FlipbookStartRandom=false
_1_420.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_420.Brightness=11



local Attachment_421=i("Attachment", RingDebris_389)
Attachment_421.Name="Attachment"
Attachment_421:SetAttribute("AuraInstance", true)
Attachment_421.Visible=false
Attachment_421.CFrame=cf(-24,0,0,0,0,-1,0,1,0,1,0,0)



local ParticleEmitter_422=i("ParticleEmitter", Attachment_421)
ParticleEmitter_422.Name="ParticleEmitter"
ParticleEmitter_422:SetAttribute("EmitCount", 0)
ParticleEmitter_422:SetAttribute("AuraInstance", true)
ParticleEmitter_422.Enabled=true
ParticleEmitter_422.Rate=16
ParticleEmitter_422.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_422.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_422.Rotation=nr(90,90)
ParticleEmitter_422.RotSpeed=nr(0,0)
ParticleEmitter_422.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_422.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_422.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_422.LightEmission=1
ParticleEmitter_422.LightInfluence=0
ParticleEmitter_422.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_422.Drag=0
ParticleEmitter_422.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_422.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_422.ZOffset=12
ParticleEmitter_422.Texture="rbxassetid://120931362264586"
ParticleEmitter_422.LockedToPart=true
ParticleEmitter_422.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_422.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_422.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_422.FlipbookFramerate=nr(0,0)
ParticleEmitter_422.FlipbookStartRandom=true
ParticleEmitter_422.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_422.Brightness=1



local ParticleEmitter_423=i("ParticleEmitter", Attachment_421)
ParticleEmitter_423.Name="ParticleEmitter"
ParticleEmitter_423:SetAttribute("EmitCount", 0)
ParticleEmitter_423:SetAttribute("AuraInstance", true)
ParticleEmitter_423.Enabled=true
ParticleEmitter_423.Rate=8
ParticleEmitter_423.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_423.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_423.Rotation=nr(-360,360)
ParticleEmitter_423.RotSpeed=nr(-200,200)
ParticleEmitter_423.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_423.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_423.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_423.LightEmission=1
ParticleEmitter_423.LightInfluence=0
ParticleEmitter_423.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_423.Drag=0
ParticleEmitter_423.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_423.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_423.ZOffset=12
ParticleEmitter_423.Texture="rbxassetid://16879806460"
ParticleEmitter_423.LockedToPart=true
ParticleEmitter_423.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_423.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_423.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_423.FlipbookFramerate=nr(0,0)
ParticleEmitter_423.FlipbookStartRandom=true
ParticleEmitter_423.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_423.Brightness=10



local ParticleEmitter_424=i("ParticleEmitter", Attachment_421)
ParticleEmitter_424.Name="ParticleEmitter"
ParticleEmitter_424:SetAttribute("EmitCount", 0)
ParticleEmitter_424:SetAttribute("AuraInstance", true)
ParticleEmitter_424.Enabled=true
ParticleEmitter_424.Rate=4
ParticleEmitter_424.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_424.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_424.Rotation=nr(-360,360)
ParticleEmitter_424.RotSpeed=nr(0,0)
ParticleEmitter_424.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_424.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_424.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_424.LightEmission=1
ParticleEmitter_424.LightInfluence=0
ParticleEmitter_424.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_424.Drag=0
ParticleEmitter_424.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_424.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_424.ZOffset=12
ParticleEmitter_424.Texture="rbxassetid://91167564374329"
ParticleEmitter_424.LockedToPart=true
ParticleEmitter_424.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_424.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_424.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_424.FlipbookFramerate=nr(0,0)
ParticleEmitter_424.FlipbookStartRandom=true
ParticleEmitter_424.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_424.Brightness=10



local _1_425=i("ParticleEmitter", Attachment_421)
_1_425.Name="1"
_1_425:SetAttribute("EmitCount", 0)
_1_425:SetAttribute("AuraInstance", true)
_1_425.Enabled=true
_1_425.Rate=12
_1_425.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_425.Speed=nr(36.288002014160156,58.46400451660156)
_1_425.Rotation=nr(0,0)
_1_425.RotSpeed=nr(0,0)
_1_425.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_425.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_425.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_425.LightEmission=1
_1_425.LightInfluence=0
_1_425.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_425.Drag=0
_1_425.EmissionDirection=Enum.NormalId.Right
_1_425.SpreadAngle=v2(15.000000,15.000000)
_1_425.ZOffset=12
_1_425.Texture="rbxassetid://120119404032319"
_1_425.LockedToPart=true
_1_425.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_425.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_425.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_425.FlipbookFramerate=nr(0,0)
_1_425.FlipbookStartRandom=false
_1_425.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_425.Brightness=11



local Attachment_426=i("Attachment", RingDebris_389)
Attachment_426.Name="Attachment"
Attachment_426:SetAttribute("AuraInstance", true)
Attachment_426.Visible=false
Attachment_426.CFrame=cf(24,0,0,0,0,1,0,1,-0,-1,0,0)



local ParticleEmitter_427=i("ParticleEmitter", Attachment_426)
ParticleEmitter_427.Name="ParticleEmitter"
ParticleEmitter_427:SetAttribute("EmitCount", 0)
ParticleEmitter_427:SetAttribute("AuraInstance", true)
ParticleEmitter_427.Enabled=true
ParticleEmitter_427.Rate=16
ParticleEmitter_427.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_427.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_427.Rotation=nr(90,90)
ParticleEmitter_427.RotSpeed=nr(0,0)
ParticleEmitter_427.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_427.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_427.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_427.LightEmission=1
ParticleEmitter_427.LightInfluence=0
ParticleEmitter_427.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_427.Drag=0
ParticleEmitter_427.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_427.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_427.ZOffset=12
ParticleEmitter_427.Texture="rbxassetid://120931362264586"
ParticleEmitter_427.LockedToPart=true
ParticleEmitter_427.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_427.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_427.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_427.FlipbookFramerate=nr(0,0)
ParticleEmitter_427.FlipbookStartRandom=true
ParticleEmitter_427.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_427.Brightness=1



local ParticleEmitter_428=i("ParticleEmitter", Attachment_426)
ParticleEmitter_428.Name="ParticleEmitter"
ParticleEmitter_428:SetAttribute("EmitCount", 0)
ParticleEmitter_428:SetAttribute("AuraInstance", true)
ParticleEmitter_428.Enabled=true
ParticleEmitter_428.Rate=8
ParticleEmitter_428.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_428.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_428.Rotation=nr(-360,360)
ParticleEmitter_428.RotSpeed=nr(-200,200)
ParticleEmitter_428.Size=ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
ParticleEmitter_428.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_428.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_428.LightEmission=1
ParticleEmitter_428.LightInfluence=0
ParticleEmitter_428.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_428.Drag=0
ParticleEmitter_428.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_428.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_428.ZOffset=12
ParticleEmitter_428.Texture="rbxassetid://16879806460"
ParticleEmitter_428.LockedToPart=true
ParticleEmitter_428.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_428.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_428.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_428.FlipbookFramerate=nr(0,0)
ParticleEmitter_428.FlipbookStartRandom=true
ParticleEmitter_428.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_428.Brightness=10



local ParticleEmitter_429=i("ParticleEmitter", Attachment_426)
ParticleEmitter_429.Name="ParticleEmitter"
ParticleEmitter_429:SetAttribute("EmitCount", 0)
ParticleEmitter_429:SetAttribute("AuraInstance", true)
ParticleEmitter_429.Enabled=true
ParticleEmitter_429.Rate=4
ParticleEmitter_429.Lifetime=nr(0.800000011920929,0.800000011920929)
ParticleEmitter_429.Speed=nr(36.288002014160156,58.46400451660156)
ParticleEmitter_429.Rotation=nr(-360,360)
ParticleEmitter_429.RotSpeed=nr(0,0)
ParticleEmitter_429.Size=ns({nsk(0.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_429.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_429.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
ParticleEmitter_429.LightEmission=1
ParticleEmitter_429.LightInfluence=0
ParticleEmitter_429.Acceleration=v3(0.000000,36.769115,-91.922691)
ParticleEmitter_429.Drag=0
ParticleEmitter_429.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_429.SpreadAngle=v2(15.000000,15.000000)
ParticleEmitter_429.ZOffset=12
ParticleEmitter_429.Texture="rbxassetid://91167564374329"
ParticleEmitter_429.LockedToPart=true
ParticleEmitter_429.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_429.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_429.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_429.FlipbookFramerate=nr(0,0)
ParticleEmitter_429.FlipbookStartRandom=true
ParticleEmitter_429.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_429.Brightness=10



local _1_430=i("ParticleEmitter", Attachment_426)
_1_430.Name="1"
_1_430:SetAttribute("EmitCount", 0)
_1_430:SetAttribute("AuraInstance", true)
_1_430.Enabled=true
_1_430.Rate=12
_1_430.Lifetime=nr(0.800000011920929,0.800000011920929)
_1_430.Speed=nr(36.288002014160156,58.46400451660156)
_1_430.Rotation=nr(0,0)
_1_430.RotSpeed=nr(0,0)
_1_430.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
_1_430.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
_1_430.Color=cs({csk(0.000000,c3(0.309804,0.572549,1.000000)),csk(0.257785,c3(0.152941,0.745098,1.000000)),csk(0.365052,c3(0.027451,0.709804,1.000000)),csk(0.558824,c3(0.333333,0.745098,1.000000)),csk(0.742215,c3(0.333333,0.666667,1.000000)),csk(1.000000,c3(0.333333,0.666667,1.000000))})
_1_430.LightEmission=1
_1_430.LightInfluence=0
_1_430.Acceleration=v3(0.000000,36.769115,-91.922691)
_1_430.Drag=0
_1_430.EmissionDirection=Enum.NormalId.Right
_1_430.SpreadAngle=v2(15.000000,15.000000)
_1_430.ZOffset=12
_1_430.Texture="rbxassetid://120119404032319"
_1_430.LockedToPart=true
_1_430.Orientation=Enum.ParticleOrientation.VelocityParallel
_1_430.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
_1_430.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
_1_430.FlipbookFramerate=nr(0,0)
_1_430.FlipbookStartRandom=false
_1_430.Squash=ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})
_1_430.Brightness=11





dd=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
dd:Disconnect()
end



local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+.1,root.Position.Z)):Play()
for _,v in Floor:GetDescendants() do
if v:IsA("PointLight") then 
v.Color=rgb(36,183,255)
v.Brightness=5+sound.PlaybackLoudness/20.5
v.Range=7.5+sound.PlaybackLoudness/30.5
end
end
for _,v in Floor:GetDescendants() do
if v:IsA("ParticleEmitter") then 
--v.Color=rgb(36,183,255)
v.Brightness=1+sound.PlaybackLoudness/15.5
--v.Range=2+sound.PlaybackLoudness/30.5
end
end
for _,v in Floor:GetDescendants() do
if v:IsA("Beam") then 
--v.Color=rgb(36,183,255)
v.Brightness=1+sound.PlaybackLoudness/15.5
--v.Range=2+sound.PlaybackLoudness/30.5
end
end
end)









end


repeat Gaia() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")