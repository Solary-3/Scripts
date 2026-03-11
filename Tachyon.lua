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
local tspawn=task.spawn
local sound=Global.Loud or nil
local im2=Global.im2 or nil
local MusicPlayer=Global.MusicPlayer or nil
local rootpart1=Global.rootpart1 or nil
local rootpart=Global.rootpart or nil
local insSet=Global.insSet or nil
local head=Global.head or nil
local torso=Global.torso or nil
local wave1=Global.wave1 or nil
local wave2=Global.wave2 or nil
local wave3=Global.wave3 or nil
local wave4=Global.wave4 or nil
local block=Global.block or nil
local block1=Global.block1 or nil
local blockmoveup=Global.blockmoveup or nil
local sphere=Global.sphere or nil 
local scriptfolder1=scriptfolder.Parent or workspace
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
local Attachment_3=i("Attachment", Floor)
Attachment_3.Name="Attachment"
Attachment_3.Visible=false
Attachment_3.CFrame=cf(0,0,0,1,0,0,0,1,0,0,0,1)



local lightstreaks_4=i("ParticleEmitter", Attachment_3)
lightstreaks_4.Name="lightstreaks"
lightstreaks_4:SetAttribute("_vfxEditorScale", 1.3)
lightstreaks_4.Enabled=true
lightstreaks_4.Rate=36
lightstreaks_4.Lifetime=nr(0.30000001192092896,0.30000001192092896)
lightstreaks_4.Speed=nr(0.009999999776482582,0.009999999776482582)
lightstreaks_4.Rotation=nr(0,360)
lightstreaks_4.RotSpeed=nr(0,0)
lightstreaks_4.Size=ns({nsk(0.000000,40.662773,0.000000),nsk(1.000000,29.209425,0.000000)})
lightstreaks_4.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507003,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
lightstreaks_4.Color=cs({csk(0.000000,c3(0.792157,0.498039,1.000000)),csk(1.000000,c3(0.070588,0.352941,0.474510))})
lightstreaks_4.LightEmission=0.25
lightstreaks_4.LightInfluence=0
lightstreaks_4.Acceleration=v3(0.000000,0.000000,0.000000)
lightstreaks_4.Drag=0
lightstreaks_4.EmissionDirection=Enum.NormalId.Top
lightstreaks_4.SpreadAngle=v2(0.000000,0.000000)
lightstreaks_4.ZOffset=0.0005000000237487257
lightstreaks_4.Texture="rbxassetid://12402892454"
lightstreaks_4.LockedToPart=false
lightstreaks_4.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
lightstreaks_4.FlipbookLayout=Enum.ParticleFlipbookLayout.None
lightstreaks_4.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
lightstreaks_4.FlipbookFramerate=nr(30,30)
lightstreaks_4.FlipbookStartRandom=false
lightstreaks_4.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
lightstreaks_4.Brightness=2



local black_5=i("ParticleEmitter", Attachment_3)
black_5.Name="black"
black_5:SetAttribute("_vfxEditorScale", 1.3)
black_5.Enabled=true
black_5.Rate=36
black_5.Lifetime=nr(0.5,0.5)
black_5.Speed=nr(0.009999999776482582,0.009999999776482582)
black_5.Rotation=nr(0,360)
black_5.RotSpeed=nr(0,0)
black_5.Size=ns({nsk(0.000000,3.564628,0.000000),nsk(1.000000,12.084159,0.000000)})
black_5.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
black_5.Color=cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
black_5.LightEmission=-50
black_5.LightInfluence=0
black_5.Acceleration=v3(0.000000,0.000000,0.000000)
black_5.Drag=0
black_5.EmissionDirection=Enum.NormalId.Top
black_5.SpreadAngle=v2(0.000000,0.000000)
black_5.ZOffset=0.001500000013038516
black_5.Texture="rbxassetid://11192758174"
black_5.LockedToPart=false
black_5.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
black_5.FlipbookLayout=Enum.ParticleFlipbookLayout.None
black_5.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
black_5.FlipbookFramerate=nr(30,30)
black_5.FlipbookStartRandom=false
black_5.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
black_5.Brightness=2



local outer_6=i("ParticleEmitter", Attachment_3)
outer_6.Name="outer"
outer_6:SetAttribute("_vfxEditorScale", 1.3)
outer_6.Enabled=true
outer_6.Rate=36
outer_6.Lifetime=nr(0.30000001192092896,0.30000001192092896)
outer_6.Speed=nr(0.009999999776482582,0.009999999776482582)
outer_6.Rotation=nr(0,360)
outer_6.RotSpeed=nr(0,0)
outer_6.Size=ns({nsk(0.000000,40.662773,0.000000),nsk(1.000000,29.209425,0.000000)})
outer_6.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
outer_6.Color=cs({csk(0.000000,c3(0.792157,0.498039,1.000000)),csk(1.000000,c3(0.070588,0.352941,0.474510))})
outer_6.LightEmission=0.25
outer_6.LightInfluence=0
outer_6.Acceleration=v3(0.000000,0.000000,0.000000)
outer_6.Drag=0
outer_6.EmissionDirection=Enum.NormalId.Top
outer_6.SpreadAngle=v2(0.000000,0.000000)
outer_6.ZOffset=0.0010000000474974513
outer_6.Texture="rbxassetid://71289254736031"
outer_6.LockedToPart=false
outer_6.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
outer_6.FlipbookLayout=Enum.ParticleFlipbookLayout.None
outer_6.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
outer_6.FlipbookFramerate=nr(30,30)
outer_6.FlipbookStartRandom=false
outer_6.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
outer_6.Brightness=2



local innerpurple_7=i("ParticleEmitter", Attachment_3)
innerpurple_7.Name="innerpurple"
innerpurple_7:SetAttribute("_vfxEditorScale", 1.3)
innerpurple_7.Enabled=true
innerpurple_7.Rate=36
innerpurple_7.Lifetime=nr(0.5,0.5)
innerpurple_7.Speed=nr(0.009999999776482582,0.009999999776482582)
innerpurple_7.Rotation=nr(0,360)
innerpurple_7.RotSpeed=nr(0,0)
innerpurple_7.Size=ns({nsk(0.000000,11.185556,0.000000),nsk(1.000000,24.583641,0.000000)})
innerpurple_7.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501401,0.350000,0.000000),nsk(1.000000,1.000000,0.000000)})
innerpurple_7.Color=cs({csk(0.000000,c3(0.603922,0.364706,0.776471)),csk(1.000000,c3(0.603922,0.364706,0.776471))})
innerpurple_7.LightEmission=0.5
innerpurple_7.LightInfluence=0
innerpurple_7.Acceleration=v3(0.000000,0.000000,0.000000)
innerpurple_7.Drag=0
innerpurple_7.EmissionDirection=Enum.NormalId.Top
innerpurple_7.SpreadAngle=v2(0.000000,0.000000)
innerpurple_7.ZOffset=0
innerpurple_7.Texture="rbxassetid://14261953171"
innerpurple_7.LockedToPart=false
innerpurple_7.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
innerpurple_7.FlipbookLayout=Enum.ParticleFlipbookLayout.None
innerpurple_7.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
innerpurple_7.FlipbookFramerate=nr(30,30)
innerpurple_7.FlipbookStartRandom=false
innerpurple_7.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
innerpurple_7.Brightness=1



local innerblue_8=i("ParticleEmitter", Attachment_3)
innerblue_8.Name="innerblue"
innerblue_8:SetAttribute("_vfxEditorScale", 1.3)
innerblue_8.Enabled=true
innerblue_8.Rate=36
innerblue_8.Lifetime=nr(0.5,0.5)
innerblue_8.Speed=nr(0.009999999776482582,0.009999999776482582)
innerblue_8.Rotation=nr(0,360)
innerblue_8.RotSpeed=nr(0,0)
innerblue_8.Size=ns({nsk(0.000000,11.185556,0.000000),nsk(1.000000,18.264061,0.000000)})
innerblue_8.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501401,0.350000,0.000000),nsk(1.000000,1.000000,0.000000)})
innerblue_8.Color=cs({csk(0.000000,c3(0.239216,0.572549,0.776471)),csk(1.000000,c3(0.239216,0.572549,0.776471))})
innerblue_8.LightEmission=0.6000000238418579
innerblue_8.LightInfluence=0
innerblue_8.Acceleration=v3(0.000000,0.000000,0.000000)
innerblue_8.Drag=0
innerblue_8.EmissionDirection=Enum.NormalId.Top
innerblue_8.SpreadAngle=v2(0.000000,0.000000)
innerblue_8.ZOffset=0.00009999999747378752
innerblue_8.Texture="rbxassetid://14261953171"
innerblue_8.LockedToPart=false
innerblue_8.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
innerblue_8.FlipbookLayout=Enum.ParticleFlipbookLayout.None
innerblue_8.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
innerblue_8.FlipbookFramerate=nr(30,30)
innerblue_8.FlipbookStartRandom=false
innerblue_8.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
innerblue_8.Brightness=1



local Glowparticle_9=i("ParticleEmitter", Floor)
Glowparticle_9.Name="Glow particle"
Glowparticle_9:SetAttribute("_vfxEditorScale", 1.3)
Glowparticle_9.Enabled=true
Glowparticle_9.Rate=12
Glowparticle_9.Lifetime=nr(0.699999988079071,0.699999988079071)
Glowparticle_9.Speed=nr(1,1)
Glowparticle_9.Rotation=nr(90,90)
Glowparticle_9.RotSpeed=nr(0,0)
Glowparticle_9.Size=ns({nsk(0.000000,5.000000,0.000000),nsk(1.000000,2.062500,2.062500)})
Glowparticle_9.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501401,0.600000,0.000000),nsk(1.000000,1.000000,0.000000)})
Glowparticle_9.Color=cs({csk(0.000000,c3(0.792157,0.498039,1.000000)),csk(1.000000,c3(0.070588,0.352941,0.474510))})
Glowparticle_9.LightEmission=1
Glowparticle_9.LightInfluence=0
Glowparticle_9.Acceleration=v3(0.000000,0.000000,0.000000)
Glowparticle_9.Drag=0
Glowparticle_9.EmissionDirection=Enum.NormalId.Top
Glowparticle_9.SpreadAngle=v2(25.000000,25.000000)
Glowparticle_9.ZOffset=0.000039999998989515007
Glowparticle_9.Texture="rbxassetid://6673021984"
Glowparticle_9.LockedToPart=false
Glowparticle_9.Orientation=Enum.ParticleOrientation.VelocityParallel
Glowparticle_9.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Glowparticle_9.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Glowparticle_9.FlipbookFramerate=nr(0,0)
Glowparticle_9.FlipbookStartRandom=false
Glowparticle_9.Squash=ns({nsk(0.000000,0.300000,0.000000),nsk(1.000000,7.007113,0.000000)})
Glowparticle_9.Brightness=2



local Attachment2_10=i("Attachment", Floor)
Attachment2_10.Name="Attachment2"
Attachment2_10.Visible=false
Attachment2_10.CFrame=cf(0,0,0,1,0,0,0,1,0,0,0,1)



local lightstreaks_11=i("ParticleEmitter", Attachment2_10)
lightstreaks_11.Name="lightstreaks"
lightstreaks_11:SetAttribute("_vfxEditorScale", 1.3)
lightstreaks_11.Enabled=true
lightstreaks_11.Rate=36
lightstreaks_11.Lifetime=nr(0.30000001192092896,0.30000001192092896)
lightstreaks_11.Speed=nr(0.009999999776482582,0.009999999776482582)
lightstreaks_11.Rotation=nr(0,360)
lightstreaks_11.RotSpeed=nr(0,0)
lightstreaks_11.Size=ns({nsk(0.000000,40.662773,0.000000),nsk(1.000000,29.209425,0.000000)})
lightstreaks_11.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507003,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
lightstreaks_11.Color=cs({csk(0.000000,c3(0.792157,0.498039,1.000000)),csk(1.000000,c3(0.070588,0.352941,0.474510))})
lightstreaks_11.LightEmission=1
lightstreaks_11.LightInfluence=0
lightstreaks_11.Acceleration=v3(0.000000,0.000000,0.000000)
lightstreaks_11.Drag=0
lightstreaks_11.EmissionDirection=Enum.NormalId.Top
lightstreaks_11.SpreadAngle=v2(0.000000,0.000000)
lightstreaks_11.ZOffset=-0.009999999776482582
lightstreaks_11.Texture="rbxassetid://12402892454"
lightstreaks_11.LockedToPart=false
lightstreaks_11.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
lightstreaks_11.FlipbookLayout=Enum.ParticleFlipbookLayout.None
lightstreaks_11.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
lightstreaks_11.FlipbookFramerate=nr(30,30)
lightstreaks_11.FlipbookStartRandom=false
lightstreaks_11.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
lightstreaks_11.Brightness=2



local blackrand_12=i("ParticleEmitter", Attachment2_10)
blackrand_12.Name="blackrand"
blackrand_12:SetAttribute("_vfxEditorScale", 1.3)
blackrand_12.Enabled=true
blackrand_12.Rate=20
blackrand_12.Lifetime=nr(0.5,0.5)
blackrand_12.Speed=nr(0.009999999776482582,0.009999999776482582)
blackrand_12.Rotation=nr(0,360)
blackrand_12.RotSpeed=nr(0,0)
blackrand_12.Size=ns({nsk(0.000000,3.564628,0.000000),nsk(1.000000,12.084159,0.000000)})
blackrand_12.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
blackrand_12.Color=cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
blackrand_12.LightEmission=0.25
blackrand_12.LightInfluence=0
blackrand_12.Acceleration=v3(0.000000,0.000000,0.000000)
blackrand_12.Drag=0
blackrand_12.EmissionDirection=Enum.NormalId.Top
blackrand_12.SpreadAngle=v2(10.000000,10.000000)
blackrand_12.ZOffset=0.009999999776482582
blackrand_12.Texture="rbxassetid://11192758174"
blackrand_12.LockedToPart=false
blackrand_12.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
blackrand_12.FlipbookLayout=Enum.ParticleFlipbookLayout.None
blackrand_12.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
blackrand_12.FlipbookFramerate=nr(30,30)
blackrand_12.FlipbookStartRandom=false
blackrand_12.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
blackrand_12.Brightness=2



local lightstreaksspread_13=i("ParticleEmitter", Attachment2_10)
lightstreaksspread_13.Name="lightstreaksspread"
lightstreaksspread_13:SetAttribute("_vfxEditorScale", 1.3)
lightstreaksspread_13.Enabled=true
lightstreaksspread_13.Rate=36
lightstreaksspread_13.Lifetime=nr(0.30000001192092896,0.30000001192092896)
lightstreaksspread_13.Speed=nr(0.009999999776482582,0.009999999776482582)
lightstreaksspread_13.Rotation=nr(0,360)
lightstreaksspread_13.RotSpeed=nr(0,0)
lightstreaksspread_13.Size=ns({nsk(0.000000,40.662773,0.000000),nsk(1.000000,29.209425,0.000000)})
lightstreaksspread_13.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494398,0.768750,0.000000),nsk(1.000000,1.000000,0.000000)})
lightstreaksspread_13.Color=cs({csk(0.000000,c3(0.792157,0.498039,1.000000)),csk(1.000000,c3(0.070588,0.352941,0.474510))})
lightstreaksspread_13.LightEmission=0.25
lightstreaksspread_13.LightInfluence=0
lightstreaksspread_13.Acceleration=v3(0.000000,0.000000,0.000000)
lightstreaksspread_13.Drag=0
lightstreaksspread_13.EmissionDirection=Enum.NormalId.Top
lightstreaksspread_13.SpreadAngle=v2(45.000000,45.000000)
lightstreaksspread_13.ZOffset=-0.009999999776482582
lightstreaksspread_13.Texture="rbxassetid://12402892454"
lightstreaksspread_13.LockedToPart=false
lightstreaksspread_13.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
lightstreaksspread_13.FlipbookLayout=Enum.ParticleFlipbookLayout.None
lightstreaksspread_13.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
lightstreaksspread_13.FlipbookFramerate=nr(30,30)
lightstreaksspread_13.FlipbookStartRandom=false
lightstreaksspread_13.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
lightstreaksspread_13.Brightness=2



local stardots_14=i("ParticleEmitter", Attachment2_10)
stardots_14.Name="star dots"
stardots_14:SetAttribute("_vfxEditorScale", 1.3)
stardots_14.Enabled=true
stardots_14.Rate=36
stardots_14.Lifetime=nr(0.30000001192092896,0.30000001192092896)
stardots_14.Speed=nr(0.009999999776482582,0.009999999776482582)
stardots_14.Rotation=nr(0,360)
stardots_14.RotSpeed=nr(0,0)
stardots_14.Size=ns({nsk(0.000000,40.662773,0.000000),nsk(1.000000,14.299742,0.000000)})
stardots_14.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498599,0.375000,0.000000),nsk(1.000000,1.000000,0.000000)})
stardots_14.Color=cs({csk(0.000000,c3(0.792157,0.498039,1.000000)),csk(1.000000,c3(0.070588,0.352941,0.474510))})
stardots_14.LightEmission=1
stardots_14.LightInfluence=0
stardots_14.Acceleration=v3(0.000000,0.000000,0.000000)
stardots_14.Drag=0
stardots_14.EmissionDirection=Enum.NormalId.Top
stardots_14.SpreadAngle=v2(45.000000,45.000000)
stardots_14.ZOffset=-0.009999999776482582
stardots_14.Texture="rbxassetid://74293974104549"
stardots_14.LockedToPart=false
stardots_14.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
stardots_14.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stardots_14.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stardots_14.FlipbookFramerate=nr(30,30)
stardots_14.FlipbookStartRandom=false
stardots_14.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
stardots_14.Brightness=2



local hellion_15=i("ParticleEmitter", Attachment2_10)
hellion_15.Name="hellion"
hellion_15:SetAttribute("_vfxEditorScale", 1.3)
hellion_15.Enabled=true
hellion_15.Rate=36
hellion_15.Lifetime=nr(0.30000001192092896,0.30000001192092896)
hellion_15.Speed=nr(75,150)
hellion_15.Rotation=nr(45,45)
hellion_15.RotSpeed=nr(0,0)
hellion_15.Size=ns({nsk(0.000000,5.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
hellion_15.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498599,0.787500,0.000000),nsk(1.000000,1.000000,0.000000)})
hellion_15.Color=cs({csk(0.000000,c3(0.792157,0.498039,1.000000)),csk(1.000000,c3(0.070588,0.352941,0.474510))})
hellion_15.LightEmission=1
hellion_15.LightInfluence=0
hellion_15.Acceleration=v3(0.000000,0.000000,0.000000)
hellion_15.Drag=0
hellion_15.EmissionDirection=Enum.NormalId.Top
hellion_15.SpreadAngle=v2(360.000000,360.000000)
hellion_15.ZOffset=-0.009999999776482582
hellion_15.Texture="rbxassetid://80007163276893"
hellion_15.LockedToPart=false
hellion_15.Orientation=Enum.ParticleOrientation.VelocityParallel
hellion_15.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
hellion_15.FlipbookMode=Enum.ParticleFlipbookMode.Loop
hellion_15.FlipbookFramerate=nr(0,0)
hellion_15.FlipbookStartRandom=false
hellion_15.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
hellion_15.Brightness=2


local MainColor_18=i("ParticleEmitter", Floor)
MainColor_18.Name="MainColor"
MainColor_18.Enabled=true
MainColor_18.Rate=40
MainColor_18.Lifetime=nr(1,1)
MainColor_18.Speed=nr(50,60)
MainColor_18.Rotation=nr(-500,500)
MainColor_18.RotSpeed=nr(-500,500)
MainColor_18.Size=ns({nsk(0.000000,15.000000,0.000000),nsk(0.100000,5.000000,0.000000),nsk(0.800000,15.000000,0.000000),nsk(1.000000,40.000000,0.000000)})
MainColor_18.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.800000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
MainColor_18.Color=cs({csk(0.000000,c3(0.812854,0.500000,0.978813)),csk(1.000000,c3(0.812854,0.500000,0.978813))})
MainColor_18.LightEmission=1
MainColor_18.LightInfluence=0
MainColor_18.Acceleration=v3(0.000000,10.000000,0.000000)
MainColor_18.Drag=5
MainColor_18.EmissionDirection=Enum.NormalId.Front
MainColor_18.SpreadAngle=v2(0.000000,900.000000)
MainColor_18.ZOffset=0
MainColor_18.Texture="rbxassetid://2344870656"
MainColor_18.LockedToPart=false
MainColor_18.Orientation=Enum.ParticleOrientation.FacingCamera
MainColor_18.FlipbookLayout=Enum.ParticleFlipbookLayout.None
MainColor_18.FlipbookMode=Enum.ParticleFlipbookMode.Loop
MainColor_18.FlipbookFramerate=nr(1,1)
MainColor_18.FlipbookStartRandom=false
MainColor_18.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
MainColor_18.Brightness=1



local att=i("Attachment",foldah)
att.Position=v3(0,0,.1)
att.Name="EyeShine"
local e19=Instance.new("ParticleEmitter",att)
e19.Name="EyeShine"
e19.Color=cs({
  csk(0,rgb(255,255,255)),
  csk(1,rgb(255,255,255))
})
e19.Brightness=1
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
e19.Enabled=false 
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




hggg=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
hggg:Disconnect()
att:Destroy()
end
if not head:FindFirstChild("EyeShine") then 
att.Parent=head
end
att.Position=v3(0,0,-.5)
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
local g=clamp(sound.PlaybackLoudness/5.5,0,15)
local tpos=sound.TimePosition








e19.Brightness=.1+g*.15
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