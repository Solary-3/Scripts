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



function Pyroplex() 
if scriptfolder:FindFirstChild("PyroplexAssets") then return end

 foldah=i("Folder",scriptfolder)
foldah.Name="PyroplexAssets"
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





local ThirdColor_3=i("ParticleEmitter", Floor)
ThirdColor_3.Name="ThirdColor"
ThirdColor_3:SetAttribute("Color", "Primary")
ThirdColor_3:SetAttribute("EmitDuration", 0)
ThirdColor_3:SetAttribute("EmitDelay", 0)
ThirdColor_3.Enabled=true
ThirdColor_3.Rate=40
ThirdColor_3.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_3.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_3.Rotation=nr(0,360)
ThirdColor_3.RotSpeed=nr(-60,60)
ThirdColor_3.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,73.898285,0.000000)})
ThirdColor_3.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.159601,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_3.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_3.LightEmission=0
ThirdColor_3.LightInfluence=0
ThirdColor_3.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_3.Drag=0
ThirdColor_3.EmissionDirection=Enum.NormalId.Top
ThirdColor_3.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_3.ZOffset=0
ThirdColor_3.Texture="rbxassetid://16503738541"
ThirdColor_3.LockedToPart=false
ThirdColor_3.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_3.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ThirdColor_3.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_3.FlipbookFramerate=nr(1,1)
ThirdColor_3.FlipbookStartRandom=false
ThirdColor_3.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_3.Brightness=0.02500000037252903



local ThirdColor_4=i("ParticleEmitter", Floor)
ThirdColor_4.Name="ThirdColor"
ThirdColor_4:SetAttribute("Color", "Primary")
ThirdColor_4:SetAttribute("EmitDuration", 0)
ThirdColor_4:SetAttribute("EmitDelay", 0)
ThirdColor_4.Enabled=true
ThirdColor_4.Rate=40
ThirdColor_4.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_4.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_4.Rotation=nr(0,360)
ThirdColor_4.RotSpeed=nr(-60,60)
ThirdColor_4.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,60.963112,0.000000)})
ThirdColor_4.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.159601,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_4.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_4.LightEmission=0
ThirdColor_4.LightInfluence=0
ThirdColor_4.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_4.Drag=0
ThirdColor_4.EmissionDirection=Enum.NormalId.Top
ThirdColor_4.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_4.ZOffset=0
ThirdColor_4.Texture="rbxassetid://129596865128056"
ThirdColor_4.LockedToPart=false
ThirdColor_4.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_4.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_4.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_4.FlipbookFramerate=nr(1,1)
ThirdColor_4.FlipbookStartRandom=false
ThirdColor_4.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_4.Brightness=0.02500000037252903



local ThirdColor_5=i("ParticleEmitter", Floor)
ThirdColor_5.Name="ThirdColor"
ThirdColor_5:SetAttribute("Color", "Primary")
ThirdColor_5:SetAttribute("EmitDuration", 0)
ThirdColor_5:SetAttribute("EmitDelay", 0)
ThirdColor_5.Enabled=true
ThirdColor_5.Rate=40
ThirdColor_5.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_5.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_5.Rotation=nr(0,360)
ThirdColor_5.RotSpeed=nr(-60,60)
ThirdColor_5.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,50.009041,0.000000)})
ThirdColor_5.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.155860,0.737500,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_5.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_5.LightEmission=1
ThirdColor_5.LightInfluence=0
ThirdColor_5.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_5.Drag=0
ThirdColor_5.EmissionDirection=Enum.NormalId.Top
ThirdColor_5.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_5.ZOffset=0.009999999776482582
ThirdColor_5.Texture="rbxassetid://129596865128056"
ThirdColor_5.LockedToPart=false
ThirdColor_5.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_5.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_5.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_5.FlipbookFramerate=nr(1,1)
ThirdColor_5.FlipbookStartRandom=false
ThirdColor_5.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_5.Brightness=5



local ThirdColor_6=i("ParticleEmitter", Floor)
ThirdColor_6.Name="ThirdColor"
ThirdColor_6:SetAttribute("Color", "Primary")
ThirdColor_6:SetAttribute("EmitDuration", 0)
ThirdColor_6:SetAttribute("EmitDelay", 0)
ThirdColor_6.Enabled=true
ThirdColor_6.Rate=4
ThirdColor_6.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_6.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_6.Rotation=nr(0,360)
ThirdColor_6.RotSpeed=nr(-60,60)
ThirdColor_6.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,21.698322,0.000000)})
ThirdColor_6.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_6.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_6.LightEmission=1
ThirdColor_6.LightInfluence=0
ThirdColor_6.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_6.Drag=0
ThirdColor_6.EmissionDirection=Enum.NormalId.Top
ThirdColor_6.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_6.ZOffset=0.010999999940395355
ThirdColor_6.Texture="rbxassetid://17511047347"
ThirdColor_6.LockedToPart=false
ThirdColor_6.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_6.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_6.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_6.FlipbookFramerate=nr(1,1)
ThirdColor_6.FlipbookStartRandom=false
ThirdColor_6.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_6.Brightness=15



local ThirdColor_7=i("ParticleEmitter", Floor)
ThirdColor_7.Name="ThirdColor"
ThirdColor_7:SetAttribute("Color", "Primary")
ThirdColor_7:SetAttribute("EmitDuration", 0)
ThirdColor_7:SetAttribute("EmitDelay", 0)
ThirdColor_7.Enabled=true
ThirdColor_7.Rate=5.599999904632568
ThirdColor_7.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_7.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_7.Rotation=nr(0,360)
ThirdColor_7.RotSpeed=nr(-60,60)
ThirdColor_7.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,21.698322,0.000000)})
ThirdColor_7.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_7.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_7.LightEmission=1
ThirdColor_7.LightInfluence=0
ThirdColor_7.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_7.Drag=0
ThirdColor_7.EmissionDirection=Enum.NormalId.Top
ThirdColor_7.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_7.ZOffset=0.010999999940395355
ThirdColor_7.Texture="rbxassetid://111209754502342"
ThirdColor_7.LockedToPart=false
ThirdColor_7.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_7.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_7.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_7.FlipbookFramerate=nr(1,1)
ThirdColor_7.FlipbookStartRandom=false
ThirdColor_7.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_7.Brightness=15



local ThirdColor_8=i("ParticleEmitter", Floor)
ThirdColor_8.Name="ThirdColor"
ThirdColor_8:SetAttribute("Color", "Primary")
ThirdColor_8:SetAttribute("EmitDuration", 0)
ThirdColor_8:SetAttribute("EmitDelay", 0)
ThirdColor_8.Enabled=true
ThirdColor_8.Rate=4.800000190734863
ThirdColor_8.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_8.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_8.Rotation=nr(0,360)
ThirdColor_8.RotSpeed=nr(-60,60)
ThirdColor_8.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,21.698322,0.000000)})
ThirdColor_8.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_8.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_8.LightEmission=1
ThirdColor_8.LightInfluence=0
ThirdColor_8.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_8.Drag=0
ThirdColor_8.EmissionDirection=Enum.NormalId.Top
ThirdColor_8.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_8.ZOffset=0.010999999940395355
ThirdColor_8.Texture="rbxassetid://13795304468"
ThirdColor_8.LockedToPart=false
ThirdColor_8.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_8.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_8.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_8.FlipbookFramerate=nr(1,1)
ThirdColor_8.FlipbookStartRandom=false
ThirdColor_8.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_8.Brightness=15



local ThirdColor_9=i("ParticleEmitter", Floor)
ThirdColor_9.Name="ThirdColor"
ThirdColor_9:SetAttribute("Color", "Primary")
ThirdColor_9:SetAttribute("EmitDuration", 0)
ThirdColor_9:SetAttribute("EmitDelay", 0)
ThirdColor_9.Enabled=true
ThirdColor_9.Rate=6.400000095367432
ThirdColor_9.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_9.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_9.Rotation=nr(0,360)
ThirdColor_9.RotSpeed=nr(-60,60)
ThirdColor_9.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,21.698322,0.000000)})
ThirdColor_9.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_9.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_9.LightEmission=1
ThirdColor_9.LightInfluence=0
ThirdColor_9.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_9.Drag=0
ThirdColor_9.EmissionDirection=Enum.NormalId.Top
ThirdColor_9.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_9.ZOffset=0.010999999940395355
ThirdColor_9.Texture="rbxassetid://110017652984281"
ThirdColor_9.LockedToPart=false
ThirdColor_9.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_9.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_9.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_9.FlipbookFramerate=nr(1,1)
ThirdColor_9.FlipbookStartRandom=false
ThirdColor_9.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_9.Brightness=15



local ThirdColor_10=i("ParticleEmitter", Floor)
ThirdColor_10.Name="ThirdColor"
ThirdColor_10:SetAttribute("Color", "Primary")
ThirdColor_10:SetAttribute("EmitDuration", 0)
ThirdColor_10:SetAttribute("EmitDelay", 0)
ThirdColor_10.Enabled=true
ThirdColor_10.Rate=8
ThirdColor_10.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_10.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_10.Rotation=nr(0,360)
ThirdColor_10.RotSpeed=nr(-60,60)
ThirdColor_10.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,21.698322,0.000000)})
ThirdColor_10.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_10.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_10.LightEmission=1
ThirdColor_10.LightInfluence=0
ThirdColor_10.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_10.Drag=0
ThirdColor_10.EmissionDirection=Enum.NormalId.Top
ThirdColor_10.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_10.ZOffset=0.010999999940395355
ThirdColor_10.Texture="rbxassetid://16511173887"
ThirdColor_10.LockedToPart=false
ThirdColor_10.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_10.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ThirdColor_10.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_10.FlipbookFramerate=nr(1,1)
ThirdColor_10.FlipbookStartRandom=false
ThirdColor_10.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_10.Brightness=15



local ThirdColor_11=i("ParticleEmitter", Floor)
ThirdColor_11.Name="ThirdColor"
ThirdColor_11:SetAttribute("Color", "Primary")
ThirdColor_11:SetAttribute("EmitDuration", 0)
ThirdColor_11:SetAttribute("EmitDelay", 0)
ThirdColor_11.Enabled=true
ThirdColor_11.Rate=7.199999809265137
ThirdColor_11.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_11.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_11.Rotation=nr(0,360)
ThirdColor_11.RotSpeed=nr(-60,60)
ThirdColor_11.Size=ns({nsk(0.000000,8.447882,0.000000),nsk(1.000000,24.769629,0.000000)})
ThirdColor_11.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_11.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_11.LightEmission=1
ThirdColor_11.LightInfluence=0
ThirdColor_11.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_11.Drag=0
ThirdColor_11.EmissionDirection=Enum.NormalId.Top
ThirdColor_11.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_11.ZOffset=0.012000000104308128
ThirdColor_11.Texture="rbxassetid://15333819074"
ThirdColor_11.LockedToPart=false
ThirdColor_11.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_11.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_11.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_11.FlipbookFramerate=nr(1,1)
ThirdColor_11.FlipbookStartRandom=false
ThirdColor_11.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_11.Brightness=15



local ThirdColor_12=i("ParticleEmitter", Floor)
ThirdColor_12.Name="ThirdColor"
ThirdColor_12:SetAttribute("Color", "Primary")
ThirdColor_12:SetAttribute("EmitDuration", 0)
ThirdColor_12:SetAttribute("EmitDelay", 0)
ThirdColor_12.Enabled=true
ThirdColor_12.Rate=7.199999809265137
ThirdColor_12.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_12.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_12.Rotation=nr(0,360)
ThirdColor_12.RotSpeed=nr(-60,60)
ThirdColor_12.Size=ns({nsk(0.000000,8.447882,0.000000),nsk(1.000000,24.769629,0.000000)})
ThirdColor_12.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_12.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_12.LightEmission=1
ThirdColor_12.LightInfluence=0
ThirdColor_12.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_12.Drag=0
ThirdColor_12.EmissionDirection=Enum.NormalId.Top
ThirdColor_12.SpreadAngle=v2(0.010000,0.010000)
ThirdColor_12.ZOffset=0.012000000104308128
ThirdColor_12.Texture="rbxassetid://13189666095"
ThirdColor_12.LockedToPart=false
ThirdColor_12.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_12.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_12.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_12.FlipbookFramerate=nr(1,1)
ThirdColor_12.FlipbookStartRandom=false
ThirdColor_12.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_12.Brightness=15



local ThirdColor_13=i("ParticleEmitter", Floor)
ThirdColor_13.Name="ThirdColor"
ThirdColor_13:SetAttribute("Color", "Primary")
ThirdColor_13:SetAttribute("EmitDuration", 0)
ThirdColor_13:SetAttribute("EmitDelay", 0)
ThirdColor_13.Enabled=true
ThirdColor_13.Rate=28
ThirdColor_13.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_13.Speed=nr(15,50)
ThirdColor_13.Rotation=nr(0,360)
ThirdColor_13.RotSpeed=nr(-60,60)
ThirdColor_13.Size=ns({nsk(0.000000,12.203172,0.000000),nsk(1.000000,29.333334,0.000000)})
ThirdColor_13.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_13.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_13.LightEmission=1
ThirdColor_13.LightInfluence=0
ThirdColor_13.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_13.Drag=0
ThirdColor_13.EmissionDirection=Enum.NormalId.Top
ThirdColor_13.SpreadAngle=v2(15.000000,15.000000)
ThirdColor_13.ZOffset=0.010999999940395355
ThirdColor_13.Texture="rbxassetid://129596865128056"
ThirdColor_13.LockedToPart=false
ThirdColor_13.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_13.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_13.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_13.FlipbookFramerate=nr(1,1)
ThirdColor_13.FlipbookStartRandom=false
ThirdColor_13.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_13.Brightness=15



local ThirdColor_14=i("ParticleEmitter", Floor)
ThirdColor_14.Name="ThirdColor"
ThirdColor_14:SetAttribute("Color", "Primary")
ThirdColor_14:SetAttribute("EmitDuration", 0)
ThirdColor_14:SetAttribute("EmitDelay", 0)
ThirdColor_14.Enabled=true
ThirdColor_14.Rate=20
ThirdColor_14.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_14.Speed=nr(15,55)
ThirdColor_14.Rotation=nr(0,360)
ThirdColor_14.RotSpeed=nr(-60,60)
ThirdColor_14.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,21.698322,0.000000)})
ThirdColor_14.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_14.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_14.LightEmission=1
ThirdColor_14.LightInfluence=0
ThirdColor_14.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_14.Drag=0
ThirdColor_14.EmissionDirection=Enum.NormalId.Top
ThirdColor_14.SpreadAngle=v2(15.000000,15.000000)
ThirdColor_14.ZOffset=0.010999999940395355
ThirdColor_14.Texture="rbxassetid://16511173887"
ThirdColor_14.LockedToPart=false
ThirdColor_14.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_14.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ThirdColor_14.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_14.FlipbookFramerate=nr(1,1)
ThirdColor_14.FlipbookStartRandom=false
ThirdColor_14.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_14.Brightness=15



local ThirdColor_15=i("ParticleEmitter", Floor)
ThirdColor_15.Name="ThirdColor"
ThirdColor_15:SetAttribute("Color", "Primary")
ThirdColor_15:SetAttribute("EmitDuration", 0)
ThirdColor_15:SetAttribute("EmitDelay", 0)
ThirdColor_15.Enabled=true
ThirdColor_15.Rate=44
ThirdColor_15.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_15.Speed=nr(27,77)
ThirdColor_15.Rotation=nr(0,360)
ThirdColor_15.RotSpeed=nr(-60,60)
ThirdColor_15.Size=ns({nsk(0.000000,25.704098,0.000000),nsk(1.000000,46.775249,0.000000)})
ThirdColor_15.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_15.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_15.LightEmission=0
ThirdColor_15.LightInfluence=0
ThirdColor_15.Acceleration=v3(0.000000,0.010000,0.000000)
ThirdColor_15.Drag=0
ThirdColor_15.EmissionDirection=Enum.NormalId.Top
ThirdColor_15.SpreadAngle=v2(15.000000,15.000000)
ThirdColor_15.ZOffset=0
ThirdColor_15.Texture="rbxassetid://129596865128056"
ThirdColor_15.LockedToPart=false
ThirdColor_15.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_15.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ThirdColor_15.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_15.FlipbookFramerate=nr(1,1)
ThirdColor_15.FlipbookStartRandom=false
ThirdColor_15.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_15.Brightness=0.05000000074505806



local ThirdColor_16=i("ParticleEmitter", Floor)
ThirdColor_16.Name="ThirdColor"
ThirdColor_16:SetAttribute("Color", "Primary")
ThirdColor_16:SetAttribute("EmitDuration", 0)
ThirdColor_16:SetAttribute("EmitDelay", 0)
ThirdColor_16.Enabled=true
ThirdColor_16.Rate=44
ThirdColor_16.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_16.Speed=nr(25,25)
ThirdColor_16.Rotation=nr(0,360)
ThirdColor_16.RotSpeed=nr(-60,60)
ThirdColor_16.Size=ns({nsk(0.000000,25.704098,0.000000),nsk(1.000000,46.775249,0.000000)})
ThirdColor_16.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_16.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_16.LightEmission=0
ThirdColor_16.LightInfluence=0
ThirdColor_16.Acceleration=v3(0.000000,690.000000,0.000000)
ThirdColor_16.Drag=0
ThirdColor_16.EmissionDirection=Enum.NormalId.Top
ThirdColor_16.SpreadAngle=v2(15.000000,15.000000)
ThirdColor_16.ZOffset=-0.5
ThirdColor_16.Texture="rbxassetid://132537238667080"
ThirdColor_16.LockedToPart=false
ThirdColor_16.Orientation=Enum.ParticleOrientation.FacingCamera
ThirdColor_16.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ThirdColor_16.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_16.FlipbookFramerate=nr(1,1)
ThirdColor_16.FlipbookStartRandom=false
ThirdColor_16.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_16.Brightness=0.05000000074505806



local ThirdColor_17=i("ParticleEmitter", Floor)
ThirdColor_17.Name="ThirdColor"
ThirdColor_17:SetAttribute("Color", "Primary")
ThirdColor_17:SetAttribute("EmitDuration", 0)
ThirdColor_17:SetAttribute("EmitDelay", 0)
ThirdColor_17.Enabled=true
ThirdColor_17.Rate=80
ThirdColor_17.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_17.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_17.Rotation=nr(0,360)
ThirdColor_17.RotSpeed=nr(-60,60)
ThirdColor_17.Size=ns({nsk(0.000000,38.012688,0.000000),nsk(1.000000,50.161407,0.000000)})
ThirdColor_17.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_17.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_17.LightEmission=0
ThirdColor_17.LightInfluence=0
ThirdColor_17.Acceleration=v3(0.000000,0.000000,0.000000)
ThirdColor_17.Drag=0
ThirdColor_17.EmissionDirection=Enum.NormalId.Top
ThirdColor_17.SpreadAngle=v2(360.000000,360.000000)
ThirdColor_17.ZOffset=-1
ThirdColor_17.Texture="rbxassetid://132537238667080"
ThirdColor_17.LockedToPart=false
ThirdColor_17.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_17.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ThirdColor_17.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_17.FlipbookFramerate=nr(1,1)
ThirdColor_17.FlipbookStartRandom=false
ThirdColor_17.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_17.Brightness=0.05000000074505806



local ThirdColor_18=i("ParticleEmitter", Floor)
ThirdColor_18.Name="ThirdColor"
ThirdColor_18:SetAttribute("Color", "Primary")
ThirdColor_18:SetAttribute("EmitDuration", 0)
ThirdColor_18:SetAttribute("EmitDelay", 0)
ThirdColor_18.Enabled=true
ThirdColor_18.Rate=80
ThirdColor_18.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_18.Speed=nr(5,5)
ThirdColor_18.Rotation=nr(0,360)
ThirdColor_18.RotSpeed=nr(-60,60)
ThirdColor_18.Size=ns({nsk(0.000000,4.490427,0.000000),nsk(1.000000,25.614267,0.000000)})
ThirdColor_18.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_18.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_18.LightEmission=1
ThirdColor_18.LightInfluence=0
ThirdColor_18.Acceleration=v3(0.000000,690.000000,0.000000)
ThirdColor_18.Drag=0
ThirdColor_18.EmissionDirection=Enum.NormalId.Top
ThirdColor_18.SpreadAngle=v2(15.000000,15.000000)
ThirdColor_18.ZOffset=0.010999999940395355
ThirdColor_18.Texture="rbxassetid://132537238667080"
ThirdColor_18.LockedToPart=false
ThirdColor_18.Orientation=Enum.ParticleOrientation.FacingCamera
ThirdColor_18.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ThirdColor_18.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_18.FlipbookFramerate=nr(1,1)
ThirdColor_18.FlipbookStartRandom=false
ThirdColor_18.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_18.Brightness=1



local ThirdColor_19=i("ParticleEmitter", Floor)
ThirdColor_19.Name="ThirdColor"
ThirdColor_19:SetAttribute("Color", "Primary")
ThirdColor_19:SetAttribute("EmitDuration", 0)
ThirdColor_19:SetAttribute("EmitDelay", 0)
ThirdColor_19.Enabled=true
ThirdColor_19.Rate=80
ThirdColor_19.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_19.Speed=nr(0.0010000000474974513,0.0010000000474974513)
ThirdColor_19.Rotation=nr(0,360)
ThirdColor_19.RotSpeed=nr(-60,60)
ThirdColor_19.Size=ns({nsk(0.000000,17.819778,0.000000),nsk(1.000000,34.312790,0.000000)})
ThirdColor_19.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_19.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_19.LightEmission=1
ThirdColor_19.LightInfluence=0
ThirdColor_19.Acceleration=v3(0.000000,0.000000,0.000000)
ThirdColor_19.Drag=0
ThirdColor_19.EmissionDirection=Enum.NormalId.Top
ThirdColor_19.SpreadAngle=v2(360.000000,360.000000)
ThirdColor_19.ZOffset=0
ThirdColor_19.Texture="rbxassetid://132537238667080"
ThirdColor_19.LockedToPart=false
ThirdColor_19.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ThirdColor_19.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
ThirdColor_19.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_19.FlipbookFramerate=nr(1,1)
ThirdColor_19.FlipbookStartRandom=false
ThirdColor_19.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_19.Brightness=1



local ThirdColor_20=i("ParticleEmitter", Floor)
ThirdColor_20.Name="ThirdColor"
ThirdColor_20:SetAttribute("Color", "Primary")
ThirdColor_20:SetAttribute("EmitDuration", 0)
ThirdColor_20:SetAttribute("EmitDelay", 0)
ThirdColor_20.Enabled=true
ThirdColor_20.Rate=80
ThirdColor_20.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_20.Speed=nr(5,25)
ThirdColor_20.Rotation=nr(0,360)
ThirdColor_20.RotSpeed=nr(-720,720)
ThirdColor_20.Size=ns({nsk(0.000000,5.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_20.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_20.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_20.LightEmission=1
ThirdColor_20.LightInfluence=0
ThirdColor_20.Acceleration=v3(0.000000,1337.000000,0.000000)
ThirdColor_20.Drag=0
ThirdColor_20.EmissionDirection=Enum.NormalId.Top
ThirdColor_20.SpreadAngle=v2(15.000000,15.000000)
ThirdColor_20.ZOffset=0.010999999940395355
ThirdColor_20.Texture="rbxassetid://15394196527"
ThirdColor_20.LockedToPart=false
ThirdColor_20.Orientation=Enum.ParticleOrientation.FacingCamera
ThirdColor_20.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ThirdColor_20.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_20.FlipbookFramerate=nr(1,1)
ThirdColor_20.FlipbookStartRandom=false
ThirdColor_20.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_20.Brightness=69



local ThirdColor_21=i("ParticleEmitter", Floor)
ThirdColor_21.Name="ThirdColor"
ThirdColor_21:SetAttribute("Color", "Primary")
ThirdColor_21:SetAttribute("EmitDuration", 0)
ThirdColor_21:SetAttribute("EmitDelay", 0)
ThirdColor_21.Enabled=true
ThirdColor_21.Rate=80
ThirdColor_21.Lifetime=nr(0.20000000298023224,0.20000000298023224)
ThirdColor_21.Speed=nr(5,25)
ThirdColor_21.Rotation=nr(0,360)
ThirdColor_21.RotSpeed=nr(-720,720)
ThirdColor_21.Size=ns({nsk(0.000000,5.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_21.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.158354,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ThirdColor_21.Color=cs({csk(0.000000,c3(1.000000,0.544600,0.010000)),csk(1.000000,c3(1.000000,0.544600,0.010000))})
ThirdColor_21.LightEmission=1
ThirdColor_21.LightInfluence=0
ThirdColor_21.Acceleration=v3(0.000000,1337.000000,0.000000)
ThirdColor_21.Drag=0
ThirdColor_21.EmissionDirection=Enum.NormalId.Top
ThirdColor_21.SpreadAngle=v2(15.000000,15.000000)
ThirdColor_21.ZOffset=0.010999999940395355
ThirdColor_21.Texture="rbxassetid://17334135713"
ThirdColor_21.LockedToPart=false
ThirdColor_21.Orientation=Enum.ParticleOrientation.FacingCamera
ThirdColor_21.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ThirdColor_21.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ThirdColor_21.FlipbookFramerate=nr(1,1)
ThirdColor_21.FlipbookStartRandom=false
ThirdColor_21.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ThirdColor_21.Brightness=69





local MainColor_24=i("ParticleEmitter", Floor)
MainColor_24.Name="MainColor"
MainColor_24.Enabled=true
MainColor_24.Rate=40
MainColor_24.Lifetime=nr(1,1)
MainColor_24.Speed=nr(50,60)
MainColor_24.Rotation=nr(-500,500)
MainColor_24.RotSpeed=nr(-500,500)
MainColor_24.Size=ns({nsk(0.000000,15.000000,0.000000),nsk(0.100000,5.000000,0.000000),nsk(0.800000,15.000000,0.000000),nsk(1.000000,40.000000,0.000000)})
MainColor_24.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.800000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
MainColor_24.Color=cs({csk(0.000000,c3(1.000000,0.300000,0.000000)),csk(1.000000,c3(1.000000,0.300000,0.000000))})
MainColor_24.LightEmission=1
MainColor_24.LightInfluence=0
MainColor_24.Acceleration=v3(0.000000,10.000000,0.000000)
MainColor_24.Drag=5
MainColor_24.EmissionDirection=Enum.NormalId.Front
MainColor_24.SpreadAngle=v2(0.000000,900.000000)
MainColor_24.ZOffset=0
MainColor_24.Texture="rbxassetid://2344870656"
MainColor_24.LockedToPart=false
MainColor_24.Orientation=Enum.ParticleOrientation.FacingCamera
MainColor_24.FlipbookLayout=Enum.ParticleFlipbookLayout.None
MainColor_24.FlipbookMode=Enum.ParticleFlipbookMode.Loop
MainColor_24.FlipbookFramerate=nr(1,1)
MainColor_24.FlipbookStartRandom=false
MainColor_24.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
MainColor_24.Brightness=1



dd=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("PyroplexAssets") then
dd:Disconnect()
return
end
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
sine=os.clock()
pcall(function() 
for _,h in scriptfolder.Parent:GetDescendants() do 
if h:IsA("PointLight") then
h.Brightness=5+sound.PlaybackLoudness/50
h.Range=3+sound.PlaybackLoudness/60
h.Color=rgb(193+sound.PlaybackLoudness/75,83+sound.PlaybackLoudness/25,0)
end
end

for _,h in scriptfolder.Parent:GetDescendants() do 
if h:IsA("ParticleEmitter") and v.Name=="MainColor" then
h.Brightness=1.5+sound.PlaybackLoudness/50
h.LightEmission=-50
end
end
for _,h in scriptfolder.Parent:GetDescendants() do 
if h:IsA("ParticleEmitter") and v.Name~="MainColor" then
h.Brightness=1.5+sound.PlaybackLoudness/50
--h.LightEmission=-1
end
end
end)

end)







end
repeat Pyroplex() task.wait() until not scriptfolder:FindFirstChild("PyroplexAssets")