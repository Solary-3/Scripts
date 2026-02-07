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





function VibranceAssets()
if scriptfolder:FindFirstChild("VibranceAssets") then return end
local t={
container=i("Model"),
floor=i("Part"),
partatt=i("Attachment"),
partatt1=i("Attachment"),
partatt2=i("Attachment"),
floor2=i("Part"),
ring=i("Part"),
weld=i("Weld"),
weld1=i("Weld"),
light=i("PointLight"),
light1=i("PointLight"),
}
local container=t.container
local floor=t.floor 
local weld=t.weld
local floor1=t.floor2
local ring=t.ring
local light=t.light
local light1=t.light1
local iset=insSet
local weld1=t.weld1
local partatt=t.partatt
local partatt1=t.partatt1
local partatt2=t.partatt2
container:SetAttribute("VFX",true)
iset(container,"Parent",scriptfolder);iset(container,"Name","VibranceAssets")
iset(floor,"Size",v3(65,0,65));iset(floor,"CastShadow",false);iset(floor,"Anchored",true);iset(floor,"CanCollide",false);iset(floor,"CanQuery",false);iset(floor,"CanTouch",false);iset(floor,"Transparency",1);iset(floor,"Parent",container);iset(floor,"Name","Floor")
iset(floor1,"Size",v3(70,0,70));iset(floor1,"CastShadow",false);iset(floor1,"CanCollide",false);iset(floor1,"CanQuery",false);iset(floor1,"CanTouch",false);iset(floor1,"Transparency",1);iset(floor1,"Parent",container);iset(floor1,"Name","Floor2")
iset(ring,"Size",v3(0,5,0));iset(ring,"Anchored",true);iset(ring,"CastShadow",false);iset(ring,"CanCollide",false);iset(ring,"CanQuery",false);iset(ring,"CanTouch",false);iset(ring,"Transparency",1);iset(ring,"Parent",container);iset(ring,"Name","Rings")
iset(partatt,"Parent",floor)
iset(partatt1,"Parent",ring);iset(partatt1,"CFrame",cf(-20,0,0))
iset(partatt2,"Parent",ring);iset(partatt2,"CFrame",cf(0,0,0))
iset(weld,"Part0",floor1);iset(weld,"Part1",floor);iset(weld,"Parent",floor1)
iset(light,"Parent",floor)
iset(light1,"Parent",floor1)




local LargeShardAttachment=Instance.new("Attachment")
LargeShardAttachment.Name="LargeShard"
LargeShardAttachment.CFrame=CFrame.new(0,0,0)
LargeShardAttachment.Position=Vector3.new(18.895718,0.000000,0.000000)
LargeShardAttachment.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
LargeShardAttachment.Axis=Vector3.new(1.000000,0.000000,0.000000)
LargeShardAttachment.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
LargeShardAttachment.Visible=false

local ShardAttchment=Instance.new("Attachment", LargeShardAttachment)
ShardAttchment.Name="Shards"
ShardAttchment.CFrame=CFrame.new(0,-0.000007530015864176676,0.000004011829787486931,1,0,0,0,1,0,0,0,1)
ShardAttchment.Position=Vector3.new(0.000000,-0.000008,0.000004)
ShardAttchment.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
ShardAttchment.Axis=Vector3.new(1.000000,0.000000,0.000000)
ShardAttchment.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
ShardAttchment.Visible=false

local Att1=Instance.new("Attachment", ShardAttchment)
Att1.Name="Attachment4"
Att1.CFrame=CFrame.new(0.12183091789484024,1.6772040128707886,1.8712449073791504,1,0,0,0,1,0,0,0,1)
Att1.Position=Vector3.new(0.121831,1.677204,1.871245)
Att1.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att1.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att1.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att1.Visible=false


local Star1=Instance.new("ParticleEmitter", Att1)
Star1.Name="star"
Star1.Enabled=true
Star1.Rate=10
Star1.Lifetime=NumberRange.new(1.000000,1.000000)
Star1.Speed=NumberRange.new(0.021034,0.021034)
Star1.Rotation=NumberRange.new(0.000000,0.000000)
Star1.RotSpeed=NumberRange.new(0.000000,0.000000)
Star1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.631006,0.000000),NumberSequenceKeypoint.new(1.000000,0.631006,0.000000)})
Star1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499377,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(1.000000,1.000000,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(1.000000,1.000000,1.000000))})
Star1.LightEmission=1
Star1.LightInfluence=0
Star1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star1.Drag=0
Star1.EmissionDirection=Enum.NormalId.Top
Star1.SpreadAngle=Vector2.new(-2,2)
Star1.ZOffset=0.5
Star1.Texture="rbxassetid://14221498728"
Star1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star1.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star1.FlipbookStartRandom=false

local Att2=Instance.new("Attachment", ShardAttchment)
Att2.Name="Attachment3"
Att2.CFrame=CFrame.new(0.12170259654521942,1.6771715879440308,-1.8707317113876343,1,0,0,0,1,0,0,0,1)
Att2.Position=Vector3.new(0.121703,1.677172,-1.870732)
Att2.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att2.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att2.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att2.Visible=false

local Beam1=Instance.new("Beam", Att1)
Beam1.Name="Beam"
Beam1.Enabled=true
Beam1.Width0=0.4206707775592804
Beam1.Width1=0.4206707775592804
Beam1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam1.CurveSize0=0
Beam1.CurveSize1=0
Beam1.FaceCamera=true
Beam1.LightEmission=0
Beam1.LightInfluence=0
Beam1.Segments=10
Beam1.Texture="rbxassetid://1263079249"
Beam1.TextureLength=0.10000000149011612
Beam1.TextureSpeed=1


local Beam5=Instance.new("Beam", Att2)
Beam5.Name="Beam"
Beam5.Enabled=true
Beam5.Width0=0.4206707775592804
Beam5.Width1=0.4206707775592804
Beam5.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam5.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam5.CurveSize0=0
Beam5.CurveSize1=0
Beam5.FaceCamera=true
Beam5.LightEmission=0
Beam5.LightInfluence=0
Beam5.Segments=10
Beam5.Texture="rbxassetid://1263079249"
Beam5.TextureLength=0.10000000149011612
Beam5.TextureSpeed=1


local Star2=Instance.new("ParticleEmitter", Att2)
Star2.Name="star"
Star2.Enabled=true
Star2.Rate=10
Star2.Lifetime=NumberRange.new(1.000000,1.000000)
Star2.Speed=NumberRange.new(0.021034,0.021034)
Star2.Rotation=NumberRange.new(0.000000,0.000000)
Star2.RotSpeed=NumberRange.new(0.000000,0.000000)
Star2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.631006,0.000000),NumberSequenceKeypoint.new(1.000000,0.631006,0.000000)})
Star2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499377,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(1.000000,1.000000,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(1.000000,1.000000,1.000000))})
Star2.LightEmission=1
Star2.LightInfluence=0
Star2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star2.Drag=0
Star2.EmissionDirection=Enum.NormalId.Top
Star2.SpreadAngle=Vector2.new(-2,2)
Star2.ZOffset=0.5
Star2.Texture="rbxassetid://14221498728"
Star2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star2.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star2.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star2.FlipbookStartRandom=false

local Att3=Instance.new("Attachment", ShardAttchment)
Att3.Name="Attachment2"
Att3.CFrame=CFrame.new(0.12170259654521942,-1.677237868309021,1.8713746070861816,1,0,0,0,1,0,0,0,1)
Att3.Position=Vector3.new(0.121703,-1.677238,1.871375)
Att3.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att3.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att3.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att3.Visible=false

local Beam2=Instance.new("Beam", Att1)
Beam2.Name="BeamD"
Beam2.Enabled=true
Beam2.Width0=0.4206707775592804
Beam2.Width1=0.4206707775592804
Beam2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam2.CurveSize0=0
Beam2.CurveSize1=0
Beam2.FaceCamera=true
Beam2.LightEmission=0
Beam2.LightInfluence=0
Beam2.Segments=10
Beam2.Texture="rbxassetid://1263079249"
Beam2.TextureLength=0.10000000149011612
Beam2.TextureSpeed=1

local Star4=Instance.new("ParticleEmitter", Att3)
Star4.Name="star"
Star4.Enabled=true
Star4.Rate=10
Star4.Lifetime=NumberRange.new(1.000000,1.000000)
Star4.Speed=NumberRange.new(0.021034,0.021034)
Star4.Rotation=NumberRange.new(0.000000,0.000000)
Star4.RotSpeed=NumberRange.new(0.000000,0.000000)
Star4.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.631006,0.000000),NumberSequenceKeypoint.new(1.000000,0.631006,0.000000)})
Star4.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499377,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star4.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(1.000000,1.000000,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(1.000000,1.000000,1.000000))})
Star4.LightEmission=1
Star4.LightInfluence=0
Star4.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star4.Drag=0
Star4.EmissionDirection=Enum.NormalId.Top
Star4.SpreadAngle=Vector2.new(-2,2)
Star4.ZOffset=0.5
Star4.Texture="rbxassetid://14221498728"
Star4.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star4.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star4.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star4.FlipbookStartRandom=false

local Att4=Instance.new("Attachment", ShardAttchment)
Att4.Name="Attachment1"
Att4.CFrame=CFrame.new(0.12183091789484024,-1.6772937774658203,-1.8707317113876343,1,0,0,0,1,0,0,0,1)
Att4.Position=Vector3.new(0.121831,-1.677294,-1.870732)
Att4.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att4.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att4.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att4.Visible=false

local Beam6=Instance.new("Beam", Att2)
Beam6.Name="BeamD"
Beam6.Enabled=true
Beam6.Width0=0.4206707775592804
Beam6.Width1=0.4206707775592804
Beam6.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam6.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam6.CurveSize0=0
Beam6.CurveSize1=0
Beam6.FaceCamera=true
Beam6.LightEmission=0
Beam6.LightInfluence=0
Beam6.Segments=10
Beam6.Texture="rbxassetid://1263079249"
Beam6.TextureLength=0.10000000149011612
Beam6.TextureSpeed=1

local Beam9=Instance.new("Beam", Att3)
Beam9.Name="Beam"
Beam9.Enabled=true
Beam9.Width0=0.4206707775592804
Beam9.Width1=0.4206707775592804
Beam9.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam9.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam9.CurveSize0=0
Beam9.CurveSize1=0
Beam9.FaceCamera=true
Beam9.LightEmission=0
Beam9.LightInfluence=0
Beam9.Segments=10
Beam9.Texture="rbxassetid://1263079249"
Beam9.TextureLength=0.10000000149011612
Beam9.TextureSpeed=1


local Beam12=Instance.new("Beam", Att4)
Beam12.Name="Beam"
Beam12.Enabled=true
Beam12.Width0=0.4206707775592804
Beam12.Width1=0.4206707775592804
Beam12.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam12.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam12.CurveSize0=0
Beam12.CurveSize1=0
Beam12.FaceCamera=true
Beam12.LightEmission=0
Beam12.LightInfluence=0
Beam12.Segments=10
Beam12.Texture="rbxassetid://1263079249"
Beam12.TextureLength=0.10000000149011612
Beam12.TextureSpeed=1




local Star5=Instance.new("ParticleEmitter", Att4)
Star5.Name="star"
Star5.Enabled=true
Star5.Rate=10
Star5.Lifetime=NumberRange.new(1.000000,1.000000)
Star5.Speed=NumberRange.new(0.021034,0.021034)
Star5.Rotation=NumberRange.new(0.000000,0.000000)
Star5.RotSpeed=NumberRange.new(0.000000,0.000000)
Star5.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.631006,0.000000),NumberSequenceKeypoint.new(1.000000,0.631006,0.000000)})
Star5.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499377,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star5.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(1.000000,1.000000,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(1.000000,1.000000,1.000000))})
Star5.LightEmission=1
Star5.LightInfluence=0
Star5.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star5.Drag=0
Star5.EmissionDirection=Enum.NormalId.Top
Star5.SpreadAngle=Vector2.new(-2,2)
Star5.ZOffset=0.5
Star5.Texture="rbxassetid://14221498728"
Star5.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star5.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star5.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star5.FlipbookStartRandom=false

local Att5=Instance.new("Attachment", ShardAttchment)
Att5.Name="Attachment5"
Att5.CFrame=CFrame.new(9.294093132019043,0.000003604464609452407,0,1,0,0,0,1,0,0,0,1)
Att5.Position=Vector3.new(9.294093,0.000004,0.000000)
Att5.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att5.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att5.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att5.Visible=false

local Beam13=Instance.new("Beam", Att4)
Beam13.Name="Beam"
Beam13.Enabled=true
Beam13.Width0=0.4206707775592804
Beam13.Width1=0.4206707775592804
Beam13.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam13.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam13.CurveSize0=0
Beam13.CurveSize1=0
Beam13.FaceCamera=true
Beam13.LightEmission=0
Beam13.LightInfluence=0
Beam13.Segments=10
Beam13.Texture="rbxassetid://1263079249"
Beam13.TextureLength=0.10000000149011612
Beam13.TextureSpeed=1


local Beam3=Instance.new("Beam", Att1)
Beam3.Name="Beam"
Beam3.Enabled=true
Beam3.Width0=0.4206707775592804
Beam3.Width1=0.4206707775592804
Beam3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam3.CurveSize0=0
Beam3.CurveSize1=0
Beam3.FaceCamera=true
Beam3.LightEmission=0
Beam3.LightInfluence=0
Beam3.Segments=10
Beam3.Texture="rbxassetid://1263079249"
Beam3.TextureLength=0.10000000149011612
Beam3.TextureSpeed=1

local Beam10=Instance.new("Beam", Att3)
Beam10.Name="Beam"
Beam10.Enabled=true
Beam10.Width0=0.4206707775592804
Beam10.Width1=0.4206707775592804
Beam10.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam10.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam10.CurveSize0=0
Beam10.CurveSize1=0
Beam10.FaceCamera=true
Beam10.LightEmission=0
Beam10.LightInfluence=0
Beam10.Segments=10
Beam10.Texture="rbxassetid://1263079249"
Beam10.TextureLength=0.10000000149011612
Beam10.TextureSpeed=1

local Beam7=Instance.new("Beam", Att2)
Beam7.Name="Beam"
Beam7.Enabled=true
Beam7.Width0=0.4206707775592804
Beam7.Width1=0.4206707775592804
Beam7.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam7.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam7.CurveSize0=0
Beam7.CurveSize1=0
Beam7.FaceCamera=true
Beam7.LightEmission=0
Beam7.LightInfluence=0
Beam7.Segments=10
Beam7.Texture="rbxassetid://1263079249"
Beam7.TextureLength=0.10000000149011612
Beam7.TextureSpeed=1



local Beam14=Instance.new("Beam", Att5)
Beam14.Name="Beam"
Beam14.Enabled=true
Beam14.Width0=0.4206707775592804
Beam14.Width1=0.4206707775592804
Beam14.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam14.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.227451,0.219608,0.313726)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.227451,0.219608,0.313726))})
Beam14.CurveSize0=0
Beam14.CurveSize1=0
Beam14.FaceCamera=true
Beam14.LightEmission=0
Beam14.LightInfluence=0
Beam14.Segments=10
Beam14.Texture="rbxassetid://1263079249"
Beam14.TextureLength=0.10000000149011612
Beam14.TextureSpeed=1


local Star5=Instance.new("ParticleEmitter", Att5)
Star5.Name="star"
Star5.Enabled=true
Star5.Rate=10
Star5.Lifetime=NumberRange.new(1.000000,1.000000)
Star5.Speed=NumberRange.new(0.021034,0.021034)
Star5.Rotation=NumberRange.new(0.000000,0.000000)
Star5.RotSpeed=NumberRange.new(0.000000,0.000000)
Star5.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.631006,0.000000),NumberSequenceKeypoint.new(1.000000,0.631006,0.000000)})
Star5.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499377,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star5.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(1.000000,1.000000,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(1.000000,1.000000,1.000000))})
Star5.LightEmission=1
Star5.LightInfluence=0
Star5.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star5.Drag=0
Star5.EmissionDirection=Enum.NormalId.Top
Star5.SpreadAngle=Vector2.new(-2,2)
Star5.ZOffset=0.5
Star5.Texture="rbxassetid://14221498728"
Star5.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star5.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star5.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star5.FlipbookStartRandom=false

local Att6=Instance.new("Attachment", ShardAttchment)
Att6.Name="Attachment6"
Att6.CFrame=CFrame.new(-8.960115432739258,-0.000007208929218904814,0.00012976073776371777,1,0,0,0,1,0,0,0,1)
Att6.Position=Vector3.new(-8.960115,-0.000007,0.000130)
Att6.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att6.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att6.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att6.Visible=false


local Beam14=Instance.new("Beam", Att4)
Beam14.Name="Beam"
Beam14.Enabled=true
Beam14.Width0=0.4206707775592804
Beam14.Width1=0.4206707775592804
Beam14.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam14.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam14.CurveSize0=0
Beam14.CurveSize1=0
Beam14.FaceCamera=true
Beam14.LightEmission=0
Beam14.LightInfluence=0
Beam14.Segments=10
Beam14.Texture="rbxassetid://1263079249"
Beam14.TextureLength=0.10000000149011612
Beam14.TextureSpeed=1


local Beam11=Instance.new("Beam", Att3)
Beam11.Name="Beam"
Beam11.Enabled=true
Beam11.Width0=0.4206707775592804
Beam11.Width1=0.4206707775592804
Beam11.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam11.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam11.CurveSize0=0
Beam11.CurveSize1=0
Beam11.FaceCamera=true
Beam11.LightEmission=0
Beam11.LightInfluence=0
Beam11.Segments=10
Beam11.Texture="rbxassetid://1263079249"
Beam11.TextureLength=0.10000000149011612
Beam11.TextureSpeed=1


local Beam8=Instance.new("Beam", Att2)
Beam8.Name="Beam"
Beam8.Enabled=true
Beam8.Width0=0.4206707775592804
Beam8.Width1=0.4206707775592804
Beam8.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam8.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam8.CurveSize0=0
Beam8.CurveSize1=0
Beam8.FaceCamera=true
Beam8.LightEmission=0
Beam8.LightInfluence=0
Beam8.Segments=10
Beam8.Texture="rbxassetid://1263079249"
Beam8.TextureLength=0.10000000149011612
Beam8.TextureSpeed=1

local Beam4=Instance.new("Beam", Att1)
Beam4.Name="Beam"
Beam4.Enabled=true
Beam4.Width0=0.4206707775592804
Beam4.Width1=0.4206707775592804
Beam4.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam4.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Beam4.CurveSize0=0
Beam4.CurveSize1=0
Beam4.FaceCamera=true
Beam4.LightEmission=0
Beam4.LightInfluence=0
Beam4.Segments=10
Beam4.Texture="rbxassetid://1263079249"
Beam4.TextureLength=0.10000000149011612
Beam4.TextureSpeed=1


local Beam15=Instance.new("Beam", Att6)
Beam15.Name="Beam"
Beam15.Enabled=true
Beam15.Width0=0.4206707775592804
Beam15.Width1=0.4206707775592804
Beam15.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Beam15.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.227451,0.219608,0.313726)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.227451,0.219608,0.313726))})
Beam15.CurveSize0=0
Beam15.CurveSize1=0
Beam15.FaceCamera=true
Beam15.LightEmission=0
Beam15.LightInfluence=0
Beam15.Segments=10
Beam15.Texture="rbxassetid://1263079249"
Beam15.TextureLength=0.10000000149011612
Beam15.TextureSpeed=1

local Star7=Instance.new("ParticleEmitter", Att6)
Star7.Name="star"
Star7.Enabled=true
Star7.Rate=10
Star7.Lifetime=NumberRange.new(1.000000,1.000000)
Star7.Speed=NumberRange.new(0.021034,0.021034)
Star7.Rotation=NumberRange.new(0.000000,0.000000)
Star7.RotSpeed=NumberRange.new(0.000000,0.000000)
Star7.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.631006,0.000000),NumberSequenceKeypoint.new(1.000000,0.631006,0.000000)})
Star7.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.499377,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star7.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(1.000000,1.000000,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(1.000000,1.000000,1.000000))})
Star7.LightEmission=1
Star7.LightInfluence=0
Star7.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star7.Drag=0
Star7.EmissionDirection=Enum.NormalId.Top
Star7.SpreadAngle=Vector2.new(-2,2)
Star7.ZOffset=0.5
Star7.Texture="rbxassetid://14221498728"
Star7.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star7.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star7.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star7.FlipbookStartRandom=false

local Star8=Instance.new("ParticleEmitter", Att6)
Star8.Name="Star2"
Star8.Enabled=true
Star8.Rate=10
Star8.Lifetime=NumberRange.new(0.500000,1.000000)
Star8.Speed=NumberRange.new(0.002103,0.002103)
Star8.Rotation=NumberRange.new(0.000000,0.000000)
Star8.RotSpeed=NumberRange.new(0.000000,0.000000)
Star8.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.682683,0.000000),NumberSequenceKeypoint.new(1.000000,1.682683,0.000000)})
Star8.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.494833,0.737500,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Star8.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(1.000000,1.000000,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(1.000000,1.000000,1.000000))})
Star8.LightEmission=1
Star8.LightInfluence=0
Star8.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star8.Drag=0
Star8.EmissionDirection=Enum.NormalId.Back
Star8.SpreadAngle=Vector2.new(0, 0)
Star8.ZOffset=0.4000000059604645
Star8.Texture="rbxassetid://3052949762"
Star8.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star8.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star8.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star8.FlipbookStartRandom=false

local Att7=Instance.new("Attachment", ShardAttchment)
Att7.Name="AttachmentCenter1"
Att7.CFrame=CFrame.new(0.12176676094532013,-0.0035622925497591496,-1.8706034421920776,1,0,0,0,1,0,0,0,1)
Att7.Position=Vector3.new(0.121767,-0.003562,-1.870603)
Att7.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att7.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att7.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att7.Visible=false

local recolor1=Instance.new("Beam", Att7)
recolor1.Name="recolor"
recolor1.Enabled=true
recolor1.Width0=3.7860372066497803
recolor1.Width1=0.2103353887796402
recolor1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor1.CurveSize0=0
recolor1.CurveSize1=0
recolor1.FaceCamera=false
recolor1.LightEmission=1
recolor1.LightInfluence=0
recolor1.Segments=10
recolor1.Texture="rbxassetid://225666521"
recolor1.TextureLength=0.10000000149011612
recolor1.TextureSpeed=0.5

local recolor2=Instance.new("Beam", Att7)
recolor2.Name="recolor"
recolor2.Enabled=true
recolor2.Width0=3.7860372066497803
recolor2.Width1=0.2103353887796402
recolor2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor2.CurveSize0=0
recolor2.CurveSize1=0
recolor2.FaceCamera=false
recolor2.LightEmission=1
recolor2.LightInfluence=0
recolor2.Segments=10
recolor2.Texture="rbxassetid://225666521"
recolor2.TextureLength=0.10000000149011612
recolor2.TextureSpeed=0.5

local Att8=Instance.new("Attachment", ShardAttchment)
Att8.Name="AttachmentCenter2"
Att8.CFrame=CFrame.new(0.12170259654521942,-0.046705033630132675,1.8715014457702637,1,0,0,0,1,0,0,0,1)
Att8.Position=Vector3.new(0.121703,-0.046705,1.871501)
Att8.Orientation=Vector3.new(-0.000000,0.000000,0.000000)
Att8.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att8.SecondaryAxis=Vector3.new(0.000000,1.000000,0.000000)
Att8.Visible=false

local recolor3=Instance.new("Beam", Att8)
recolor3.Name="recolor"
recolor3.Enabled=true
recolor3.Width0=3.7860372066497803
recolor3.Width1=0.2103353887796402
recolor3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor3.CurveSize0=0
recolor3.CurveSize1=0
recolor3.FaceCamera=false
recolor3.LightEmission=1
recolor3.LightInfluence=0
recolor3.Segments=10
recolor3.Texture="rbxassetid://225666521"
recolor3.TextureLength=0.10000000149011612
recolor3.TextureSpeed=0.5


local recolor4=Instance.new("Beam", Att8)
recolor4.Name="recolor"
recolor4.Enabled=true
recolor4.Width0=3.7860372066497803
recolor4.Width1=0.2103353887796402
recolor4.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor4.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor4.CurveSize0=0
recolor4.CurveSize1=0
recolor4.FaceCamera=false
recolor4.LightEmission=1
recolor4.LightInfluence=0
recolor4.Segments=10
recolor4.Texture="rbxassetid://225666521"
recolor4.TextureLength=0.10000000149011612
recolor4.TextureSpeed=0.5

local Att9=Instance.new("Attachment", ShardAttchment)
Att9.Name="AttachmentCenter3"
Att9.CFrame=CFrame.new(0.12176676094532013,1.677174687385559,-0.04480493813753128,1,0,-0,0,0,1,0,-1,0)
Att9.Position=Vector3.new(0.121767,1.677175,-0.044805)
Att9.Orientation=Vector3.new(-90.000000,-0.000000,0.000000)
Att9.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att9.SecondaryAxis=Vector3.new(0.000000,0.000000,-1.000000)
Att9.Visible=false

local recolor5=Instance.new("Beam", Att9)
recolor5.Name="recolor"
recolor5.Enabled=true
recolor5.Width0=3.7860372066497803
recolor5.Width1=0.2103353887796402
recolor5.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor5.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor5.CurveSize0=0
recolor5.CurveSize1=0
recolor5.FaceCamera=false
recolor5.LightEmission=1
recolor5.LightInfluence=0
recolor5.Segments=10
recolor5.Texture="rbxassetid://225666521"
recolor5.TextureLength=0.10000000149011612
recolor5.TextureSpeed=0.5

local recolor6=Instance.new("Beam", Att9)
recolor6.Name="recolor"
recolor6.Enabled=true
recolor6.Width0=3.7860372066497803
recolor6.Width1=0.2103353887796402
recolor6.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor6.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor6.CurveSize0=0
recolor6.CurveSize1=0
recolor6.FaceCamera=false
recolor6.LightEmission=1
recolor6.LightInfluence=0
recolor6.Segments=10
recolor6.Texture="rbxassetid://225666521"
recolor6.TextureLength=0.10000000149011612
recolor6.TextureSpeed=0.5

local Att10=Instance.new("Attachment", ShardAttchment)
Att10.Name="AttachmentCenter4"
Att10.CFrame=CFrame.new(0.12195994704961777,-1.6772900819778442,0.0017964653670787811,1,0,-0,0,0,1,0,-1,0)
Att10.Position=Vector3.new(0.121960,-1.677290,0.001796)
Att10.Orientation=Vector3.new(-90.000000,-0.000000,0.000000)
Att10.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att10.SecondaryAxis=Vector3.new(0.000000,0.000000,-1.000000)
Att10.Visible=false

local recolor7=Instance.new("Beam", Att10)
recolor7.Name="recolor"
recolor7.Enabled=true
recolor7.Width0=3.7860372066497803
recolor7.Width1=0.2103353887796402
recolor7.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor7.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor7.CurveSize0=0
recolor7.CurveSize1=0
recolor7.FaceCamera=false
recolor7.LightEmission=1
recolor7.LightInfluence=0
recolor7.Segments=10
recolor7.Texture="rbxassetid://225666521"
recolor7.TextureLength=0.10000000149011612
recolor7.TextureSpeed=0.5

local recolor8=Instance.new("Beam", Att10)
recolor8.Name="recolor"
recolor8.Enabled=true
recolor8.Width0=3.7860372066497803
recolor8.Width1=0.2103353887796402
recolor8.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,0.600000,0.000000)})
recolor8.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
recolor8.CurveSize0=0
recolor8.CurveSize1=0
recolor8.FaceCamera=false
recolor8.LightEmission=1
recolor8.LightInfluence=0
recolor8.Segments=10
recolor8.Texture="rbxassetid://225666521"
recolor8.TextureLength=0.10000000149011612
recolor8.TextureSpeed=0.5

local Att11=Instance.new("Attachment", ShardAttchment)
Att11.Name="Attachment55"
Att11.CFrame=CFrame.new(9.294093132019043,0.000003604464609452407,0,1,0,-0,0,0,1,0,-1,0)
Att11.Position=Vector3.new(9.294093,0.000004,0.000000)
Att11.Orientation=Vector3.new(-90.000000,-0.000000,0.000000)
Att11.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att11.SecondaryAxis=Vector3.new(0.000000,0.000000,-1.000000)
Att11.Visible=false

local Att12=Instance.new("Attachment", ShardAttchment)
Att12.Name="Attachment66"
Att12.CFrame=CFrame.new(-8.960115432739258,-0.000007208929218904814,0.00012976073776371777,1,0,-0,0,0,1,0,-1,0)
Att12.Position=Vector3.new(-8.960115,-0.000007,0.000130)
Att12.Orientation=Vector3.new(-90.000000,-0.000000,0.000000)
Att12.Axis=Vector3.new(1.000000,0.000000,0.000000)
Att12.SecondaryAxis=Vector3.new(0.000000,0.000000,-1.000000)
Att12.Visible=false


Beam1.Attachment0=Att1
Beam1.Attachment1=Att2
Beam5.Attachment0=Att2
Beam5.Attachment1=nil
Beam2.Attachment0=Att1
Beam2.Attachment1=Att3
Beam9.Attachment0=Att3
Beam9.Attachment1=Att4
Beam6.Attachment0=Att2
Beam6.Attachment1=Att4
Beam12.Attachment0=Att4
Beam12.Attachment1=nil
Beam13.Attachment0=Att4
Beam13.Attachment1=Att5
Beam3.Attachment0=Att1
Beam3.Attachment1=Att5
Beam10.Attachment0=Att3
Beam10.Attachment1=Att5
Beam7.Attachment0=Att2
Beam7.Attachment1=Att5
Beam14.Attachment0=Att5
Beam14.Attachment1=nil
Beam14.Attachment0=Att4
Beam14.Attachment1=Att6
Beam11.Attachment0=Att3
Beam11.Attachment1=Att6
Beam4.Attachment0=Att1
Beam4.Attachment1=Att6
Beam8.Attachment0=Att2
Beam8.Attachment1=Att6
Beam15.Attachment0=Att6
Beam15.Attachment1=nil
recolor1.Attachment0=Att7
recolor1.Attachment1=Att5
recolor2.Attachment0=Att7
recolor2.Attachment1=Att6
recolor3.Attachment0=Att8
recolor3.Attachment1=Att6
recolor4.Attachment0=Att8
recolor4.Attachment1=Att5
recolor5.Attachment0=Att9
recolor5.Attachment1=Att12
recolor6.Attachment0=Att9
recolor6.Attachment1=Att11
recolor8.Attachment0=Att10
recolor8.Attachment1=Att12
recolor7.Attachment0=Att10
recolor7.Attachment1=Att11





local Fire=Instance.new("ParticleEmitter", partatt2)
Fire.Name="Absorb"
Fire.Enabled=true
Fire.Rate=10
Fire.Lifetime=NumberRange.new(1.000000,1.000000)
Fire.Speed=NumberRange.new(0.016681,0.016681)
Fire.Rotation=NumberRange.new(-1000.000000,1000.000000)
Fire.RotSpeed=NumberRange.new(-10.000000,10.000000)
Fire.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,12.831853,16.681408),NumberSequenceKeypoint.new(0.081130,12.819447,16.681406),NumberSequenceKeypoint.new(0.119397,12.800754,16.681408),NumberSequenceKeypoint.new(0.157799,12.772274,16.681408),NumberSequenceKeypoint.new(0.193894,12.735637,16.681408),NumberSequenceKeypoint.new(0.227872,12.691515,16.681408),NumberSequenceKeypoint.new(0.261867,12.637185,16.681410),NumberSequenceKeypoint.new(0.293914,12.575977,16.681404),NumberSequenceKeypoint.new(0.346419,12.453639,16.681404),NumberSequenceKeypoint.new(0.399490,12.302505,16.681408),NumberSequenceKeypoint.new(0.447796,12.144793,16.681404),NumberSequenceKeypoint.new(0.559027,11.757864,16.681408),NumberSequenceKeypoint.new(0.616093,11.579791,16.681406),NumberSequenceKeypoint.new(0.674718,11.427763,16.681408),NumberSequenceKeypoint.new(0.703578,11.365547,16.681408),NumberSequenceKeypoint.new(0.733995,11.308838,16.681406),NumberSequenceKeypoint.new(0.793715,11.222273,16.681408),NumberSequenceKeypoint.new(0.857888,11.161718,16.681408),NumberSequenceKeypoint.new(0.924108,11.128932,16.681408),NumberSequenceKeypoint.new(1.000000,11.120938,16.681408)})
Fire.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Fire.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.529412,0.529412,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.529412,0.529412,1.000000))})
Fire.LightEmission=1
Fire.LightInfluence=0
Fire.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Fire.Drag=0
Fire.EmissionDirection=Enum.NormalId.Top
Fire.SpreadAngle=v2(-1000, 1000)
Fire.ZOffset=0
Fire.Texture="rbxassetid://12602224662"
Fire.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Fire.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Fire.FlipbookFramerate=NumberRange.new(20.000000,20.000000)
Fire.FlipbookStartRandom=false

local Symbol=Instance.new("ParticleEmitter", partatt2)
Symbol.Name="Symbol"
Symbol.Enabled=true
Symbol.Rate=20
Symbol.Lifetime=NumberRange.new(0.500000,0.500000)
Symbol.Speed=NumberRange.new(0.000769,0.000769)
Symbol.Rotation=NumberRange.new(0.000000,0.000000)
Symbol.RotSpeed=NumberRange.new(0.000000,0.000000)
Symbol.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,9.685978,0.000000),NumberSequenceKeypoint.new(1.000000,9.685978,0.000000)})
Symbol.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Symbol.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
Symbol.LightEmission=0.5
Symbol.LightInfluence=0
Symbol.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Symbol.Drag=0
Symbol.EmissionDirection=Enum.NormalId.Back
Symbol.SpreadAngle=v2(0, 0)
Symbol.ZOffset=-3
Symbol.Texture="https://assetgame.roblox.com/asset/?id=12389945119&assetName=39ab5bcc-4b0f-46e8-8186-95c23204cfe4"
Symbol.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Symbol.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Symbol.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Symbol.FlipbookStartRandom=false

local Fire1=Instance.new("ParticleEmitter", partatt2)
Fire1.Name="Fire"
Fire1.Enabled=true
Fire1.Rate=7
Fire1.Lifetime=NumberRange.new(1.000000,1.500000)
Fire1.Speed=NumberRange.new(0.001196,0.001196)
Fire1.Rotation=NumberRange.new(0.000000,360.000000)
Fire1.RotSpeed=NumberRange.new(-40.000000,40.000000)
Fire1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,9.568106,0.000000),NumberSequenceKeypoint.new(1.000000,11.960133,0.000000)})
Fire1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Fire1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
Fire1.LightEmission=1
Fire1.LightInfluence=0
Fire1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Fire1.Drag=0
Fire1.EmissionDirection=Enum.NormalId.Top
Fire1.SpreadAngle=v2(180, 180)
Fire1.ZOffset=-0.0010000000474974513
Fire1.Texture="http://www.roblox.com/asset/?id=12807576476"
Fire1.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Fire1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Fire1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Fire1.FlipbookStartRandom=false

local Inner=Instance.new("ParticleEmitter", partatt2)
Inner.Name="Inner"
Inner.Enabled=true
Inner.Rate=10
Inner.Lifetime=NumberRange.new(1.000000,1.500000)
Inner.Speed=NumberRange.new(0.001196,0.001196)
Inner.Rotation=NumberRange.new(0.000000,360.000000)
Inner.RotSpeed=NumberRange.new(-60.000000,60.000000)
Inner.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,5.980066,0.000000),NumberSequenceKeypoint.new(1.000000,8.372092,0.000000)})
Inner.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Inner.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Inner.LightEmission=0
Inner.LightInfluence=1
Inner.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Inner.Drag=0
Inner.EmissionDirection=Enum.NormalId.Top
Inner.SpreadAngle=v2(0.5, 0.5)
Inner.ZOffset=0
Inner.Texture="http://www.roblox.com/asset/?id=12878479033"
Inner.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Inner.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Inner.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Inner.FlipbookStartRandom=false


local Middle=Instance.new("ParticleEmitter", partatt2)
Middle.Name="Middle"
Middle.Enabled=true
Middle.Rate=12
Middle.Lifetime=NumberRange.new(1.500000,1.500000)
Middle.Speed=NumberRange.new(0.000000,0.000000)
Middle.Rotation=NumberRange.new(0.000000,360.000000)
Middle.RotSpeed=NumberRange.new(0.000000,0.000000)
Middle.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.300000,2.392026,0.000000),NumberSequenceKeypoint.new(0.400000,5.980066,0.000000),NumberSequenceKeypoint.new(0.500000,11.960133,0.000000),NumberSequenceKeypoint.new(0.600000,3.588040,0.000000),NumberSequenceKeypoint.new(0.800000,1.076412,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Middle.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Middle.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Middle.LightEmission=0
Middle.LightInfluence=0
Middle.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Middle.Drag=0
Middle.EmissionDirection=Enum.NormalId.Top
Middle.SpreadAngle=v2(0, 0)
Middle.ZOffset=0.0020000000949949026
Middle.Texture="rbxassetid://6909741538"
Middle.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Middle.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Middle.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Middle.FlipbookStartRandom=false

local Outer=Instance.new("ParticleEmitter", partatt2)
Outer.Name="Outter"
Outer.Enabled=true
Outer.Rate=10
Outer.Lifetime=NumberRange.new(1.000000,1.500000)
Outer.Speed=NumberRange.new(0.001196,0.001196)
Outer.Rotation=NumberRange.new(0.000000,360.000000)
Outer.RotSpeed=NumberRange.new(-60.000000,60.000000)
Outer.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,5.980066,0.000000),NumberSequenceKeypoint.new(1.000000,11.960133,0.000000)})
Outer.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Outer.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
Outer.LightEmission=0
Outer.LightInfluence=1
Outer.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Outer.Drag=0
Outer.EmissionDirection=Enum.NormalId.Top
Outer.SpreadAngle=v2(180, 180)
Outer.ZOffset=0
Outer.Texture="http://www.roblox.com/asset/?id=12878479033"
Outer.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Outer.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Outer.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Outer.FlipbookStartRandom=false

local Light=Instance.new("PointLight", partatt2)
Light.Name="PointLight"

local Red=Instance.new("ParticleEmitter", partatt2)
Red.Name="Red2"
Red.Enabled=true
Red.Rate=10
Red.Lifetime=NumberRange.new(1.000000,1.500000)
Red.Speed=NumberRange.new(0.001196,0.001196)
Red.Rotation=NumberRange.new(0.000000,360.000000)
Red.RotSpeed=NumberRange.new(-60.000000,60.000000)
Red.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,10.764119,0.000000),NumberSequenceKeypoint.new(1.000000,11.960133,0.000000)})
Red.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Red.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
Red.LightEmission=1
Red.LightInfluence=0
Red.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Red.Drag=0
Red.EmissionDirection=Enum.NormalId.Top
Red.SpreadAngle=v2(0.5, 0.5)
Red.ZOffset=-0.0010000000474974513
Red.Texture="rbxassetid://11402221943"
Red.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Red.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Red.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Red.FlipbookStartRandom=false

local Rings=Instance.new("ParticleEmitter", partatt2)
Rings.Name="Rings"
Rings.Enabled=true
Rings.Rate=50
Rings.Lifetime=NumberRange.new(1.500000,3.000000)
Rings.Speed=NumberRange.new(0.001668,0.001668)
Rings.Rotation=NumberRange.new(-360.000000,360.000000)
Rings.RotSpeed=NumberRange.new(180.000000,180.000000)
Rings.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,4.170352,1.668141),NumberSequenceKeypoint.new(1.000000,16.681408,1.668141)})
Rings.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Rings.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.529412,0.529412,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.529412,0.529412,1.000000))})
Rings.LightEmission=1
Rings.LightInfluence=0
Rings.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Rings.Drag=0
Rings.EmissionDirection=Enum.NormalId.Top
Rings.SpreadAngle=v2(1000, 1000)
Rings.ZOffset=2
Rings.Texture="rbxassetid://14006234837"
Rings.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Rings.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Rings.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Rings.FlipbookStartRandom=true

local Star1=Instance.new("ParticleEmitter", partatt2)
Star1.Name="Star1"
Star1.Enabled=true
Star1.Rate=8
Star1.Lifetime=NumberRange.new(1.000000,1.500000)
Star1.Speed=NumberRange.new(0.000000,0.000000)
Star1.Rotation=NumberRange.new(45.000000,45.000000)
Star1.RotSpeed=NumberRange.new(0.000000,0.000000)
Star1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.500000,2.990033,0.000000),NumberSequenceKeypoint.new(0.700000,11.960133,0.000000),NumberSequenceKeypoint.new(0.900000,7.176079,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Star1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Star1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
Star1.LightEmission=1
Star1.LightInfluence=0
Star1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star1.Drag=0
Star1.EmissionDirection=Enum.NormalId.Top
Star1.SpreadAngle=v2(0, 0)
Star1.ZOffset=0.0010000000474974513
Star1.Texture="rbxassetid://6909741538"
Star1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star1.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star1.FlipbookStartRandom=false

local Star2=Instance.new("ParticleEmitter", partatt2)
Star2.Name="Star2"
Star2.Enabled=true
Star2.Rate=8
Star2.Lifetime=NumberRange.new(1.000000,1.500000)
Star2.Speed=NumberRange.new(0.000000,0.000000)
Star2.Rotation=NumberRange.new(-45.000000,-45.000000)
Star2.RotSpeed=NumberRange.new(0.000000,0.000000)
Star2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.500000,2.990033,0.000000),NumberSequenceKeypoint.new(0.700000,11.960133,0.000000),NumberSequenceKeypoint.new(0.900000,7.176079,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Star2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Star2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.505882,0.490196,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.505882,0.490196,1.000000))})
Star2.LightEmission=1
Star2.LightInfluence=0
Star2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Star2.Drag=0
Star2.EmissionDirection=Enum.NormalId.Top
Star2.SpreadAngle=v2(0, 0)
Star2.ZOffset=0.0010000000474974513
Star2.Texture="rbxassetid://6909741538"
Star2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star2.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Star2.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Star2.FlipbookStartRandom=false

local Twirl=Instance.new("ParticleEmitter", partatt2)
Twirl.Name="Twirl1"
Twirl.Enabled=true
Twirl.Rate=15
Twirl.Lifetime=NumberRange.new(1.000000,1.500000)
Twirl.Speed=NumberRange.new(0.001196,0.001196)
Twirl.Rotation=NumberRange.new(0.000000,360.000000)
Twirl.RotSpeed=NumberRange.new(300.000000,600.000000)
Twirl.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.500000,4.784053,0.000000),NumberSequenceKeypoint.new(1.000000,7.176079,0.000000)})
Twirl.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Twirl.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.560784,0.619608,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.560784,0.619608,1.000000))})
Twirl.LightEmission=1
Twirl.LightInfluence=0
Twirl.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Twirl.Drag=0
Twirl.EmissionDirection=Enum.NormalId.Top
Twirl.SpreadAngle=v2(0.5, 0.5)
Twirl.ZOffset=0.0010000000474974513
Twirl.Texture="https://assetgame.roblox.com/asset/?id=12713358087&assetName=crescent"
Twirl.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Twirl.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Twirl.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Twirl.FlipbookStartRandom=false

local Vortex1=Instance.new("ParticleEmitter", partatt2)
Vortex1.Name="Vortex"
Vortex1.Enabled=true
Vortex1.Rate=10
Vortex1.Lifetime=NumberRange.new(1.000000,1.500000)
Vortex1.Speed=NumberRange.new(0.001196,0.001196)
Vortex1.Rotation=NumberRange.new(0.000000,360.000000)
Vortex1.RotSpeed=NumberRange.new(-150.000000,150.000000)
Vortex1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,4.784053,0.000000),NumberSequenceKeypoint.new(1.000000,17.940199,0.000000)})
Vortex1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Vortex1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.560784,0.619608,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.560784,0.619608,1.000000))})
Vortex1.LightEmission=1
Vortex1.LightInfluence=0
Vortex1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Vortex1.Drag=0
Vortex1.EmissionDirection=Enum.NormalId.Top
Vortex1.SpreadAngle=v2(180, 180)
Vortex1.ZOffset=0.0010000000474974513
Vortex1.Texture="rbxassetid://12403112662"
Vortex1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Vortex1.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Vortex1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Vortex1.FlipbookStartRandom=false

local Vortex2=Instance.new("ParticleEmitter", partatt2)
Vortex2.Name="Vortex2"
Vortex2.Enabled=true
Vortex2.Rate=15
Vortex2.Lifetime=NumberRange.new(1.000000,1.500000)
Vortex2.Speed=NumberRange.new(0.001196,0.001196)
Vortex2.Rotation=NumberRange.new(0.000000,360.000000)
Vortex2.RotSpeed=NumberRange.new(-300.000000,300.000000)
Vortex2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,7.176079,0.000000)})
Vortex2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Vortex2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.560784,0.619608,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.560784,0.619608,1.000000))})
Vortex2.LightEmission=1
Vortex2.LightInfluence=0
Vortex2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Vortex2.Drag=0
Vortex2.EmissionDirection=Enum.NormalId.Top
Vortex2.SpreadAngle=v2(180, 180)
Vortex2.ZOffset=0.0010000000474974513
Vortex2.Texture="rbxassetid://2058077944"
Vortex2.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Vortex2.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Vortex2.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Vortex2.FlipbookStartRandom=false

local Vortex3=Instance.new("ParticleEmitter", partatt2)
Vortex3.Name="Vortex3"
Vortex3.Enabled=true
Vortex3.Rate=15
Vortex3.Lifetime=NumberRange.new(1.000000,1.500000)
Vortex3.Speed=NumberRange.new(0.001196,0.001196)
Vortex3.Rotation=NumberRange.new(0.000000,360.000000)
Vortex3.RotSpeed=NumberRange.new(-300.000000,300.000000)
Vortex3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.500000,4.784053,0.000000),NumberSequenceKeypoint.new(1.000000,7.176079,0.000000)})
Vortex3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Vortex3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.560784,0.619608,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.560784,0.619608,1.000000))})
Vortex3.LightEmission=1
Vortex3.LightInfluence=0
Vortex3.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Vortex3.Drag=0
Vortex3.EmissionDirection=Enum.NormalId.Top
Vortex3.SpreadAngle=v2(180, 1800)
Vortex3.ZOffset=0.0010000000474974513
Vortex3.Texture="rbxassetid://12403112662"
Vortex3.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Vortex3.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Vortex3.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Vortex3.FlipbookStartRandom=false

local VortexDark=Instance.new("ParticleEmitter", partatt2)
VortexDark.Name="VortexDark"
VortexDark.Enabled=true
VortexDark.Rate=10
VortexDark.Lifetime=NumberRange.new(1.000000,1.500000)
VortexDark.Speed=NumberRange.new(0.001196,0.001196)
VortexDark.Rotation=NumberRange.new(0.000000,360.000000)
VortexDark.RotSpeed=NumberRange.new(-150.000000,150.000000)
VortexDark.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,4.784053,0.000000),NumberSequenceKeypoint.new(1.000000,17.940199,0.000000)})
VortexDark.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.500000,0.600000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
VortexDark.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.000000,0.000000,0.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.000000,0.000000,0.000000))})
VortexDark.LightEmission=0
VortexDark.LightInfluence=0
VortexDark.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
VortexDark.Drag=0
VortexDark.EmissionDirection=Enum.NormalId.Top
VortexDark.SpreadAngle=v2(180, 180)
VortexDark.ZOffset=0.0010000000474974513
VortexDark.Texture="rbxassetid://12403112662"
VortexDark.FlipbookLayout=Enum.ParticleFlipbookLayout.None
VortexDark.FlipbookMode=Enum.ParticleFlipbookMode.Loop
VortexDark.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
VortexDark.FlipbookStartRandom=false


local sigil=Instance.new("ParticleEmitter", partatt)
sigil.Name="sigil"
sigil.Enabled=true
sigil.Rate=12
sigil.Lifetime=NumberRange.new(3.000000,3.000000)
sigil.Speed=NumberRange.new(1.000000,1.000000)
sigil.Rotation=NumberRange.new(0.000000,0.000000)
sigil.RotSpeed=NumberRange.new(0.000000,0.000000)
sigil.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,25.102564,0.000000),NumberSequenceKeypoint.new(0.087241,25.133604,0.000000),NumberSequenceKeypoint.new(0.160825,25.322834,0.000000),NumberSequenceKeypoint.new(0.195444,25.481321,0.000000),NumberSequenceKeypoint.new(0.229980,25.690395,0.000000),NumberSequenceKeypoint.new(0.264257,25.953228,0.000000),NumberSequenceKeypoint.new(0.296426,26.254229,0.000000),NumberSequenceKeypoint.new(0.347622,26.848759,0.000000),NumberSequenceKeypoint.new(0.398980,27.587593,0.000000),NumberSequenceKeypoint.new(0.445599,28.363142,0.000000),NumberSequenceKeypoint.new(0.552222,30.260849,0.000000),NumberSequenceKeypoint.new(0.608601,31.154171,0.000000),NumberSequenceKeypoint.new(0.637892,31.556349,0.000000),NumberSequenceKeypoint.new(0.667110,31.910774,0.000000),NumberSequenceKeypoint.new(0.696249,32.217560,0.000000),NumberSequenceKeypoint.new(0.727105,32.493256,0.000000),NumberSequenceKeypoint.new(0.786398,32.892117,0.000000),NumberSequenceKeypoint.new(0.850530,33.154308,0.000000),NumberSequenceKeypoint.new(0.912013,33.268143,0.000000),NumberSequenceKeypoint.new(1.000000,33.282051,0.000000)})
sigil.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.040169,0.584699,0.000000),NumberSequenceKeypoint.new(0.097780,0.284153,0.000000),NumberSequenceKeypoint.new(0.204545,0.278689,0.000000),NumberSequenceKeypoint.new(0.331924,0.475410,0.000000),NumberSequenceKeypoint.new(0.401691,0.650273,0.000000),NumberSequenceKeypoint.new(0.490486,0.792350,0.000000),NumberSequenceKeypoint.new(0.772199,0.978142,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
sigil.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.541176,0.541176,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.541176,0.541176,1.000000))})
sigil.LightEmission=0
sigil.LightInfluence=0
sigil.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
sigil.Drag=-0.10000000149011612
sigil.EmissionDirection=Enum.NormalId.Top
sigil.SpreadAngle=v2(0, 0)
sigil.ZOffset=0.0010000000474974513
sigil.Texture="https://assetgame.roblox.com/asset/?id=12389946814&assetName=07%281%29"
sigil.FlipbookLayout=Enum.ParticleFlipbookLayout.None
sigil.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
sigil.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
sigil.FlipbookStartRandom=false


local Aura1=Instance.new("ParticleEmitter", partatt)
Aura1.Name="Aura"
Aura1.Enabled=true
Aura1.Rate=5
Aura1.Lifetime=NumberRange.new(2.200000,2.200000)
Aura1.Speed=NumberRange.new(0.010000,0.010000)
Aura1.Rotation=NumberRange.new(0.000000,360.000000)
Aura1.RotSpeed=NumberRange.new(0.000000,0.000000)
Aura1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.461416,6.125000,0.000000),NumberSequenceKeypoint.new(0.610465,3.000000,0.000000),NumberSequenceKeypoint.new(0.702431,2.437500,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Aura1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.216173,0.885246,0.000000),NumberSequenceKeypoint.new(0.540169,0.868852,0.000000),NumberSequenceKeypoint.new(0.846626,0.716667,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Aura1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.745098,0.737255,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.745098,0.737255,1.000000))})
Aura1.LightEmission=1
Aura1.LightInfluence=0
Aura1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Aura1.Drag=0
Aura1.EmissionDirection=Enum.NormalId.Top
Aura1.SpreadAngle=v2(10, 10)
Aura1.ZOffset=2.0999999046325684
Aura1.Texture="rbxassetid://15501870094"
Aura1.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Aura1.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Aura1.FlipbookFramerate=NumberRange.new(1.000000,1.000000)
Aura1.FlipbookStartRandom=false

local Emitter1=Instance.new("ParticleEmitter", partatt)
Emitter1.Name="ParticleEmitter"
Emitter1.Enabled=true
Emitter1.Rate=20
Emitter1.Lifetime=NumberRange.new(0.500000,0.500000)
Emitter1.Speed=NumberRange.new(0.010000,0.010000)
Emitter1.Rotation=NumberRange.new(0.000000,360.000000)
Emitter1.RotSpeed=NumberRange.new(0.000000,0.000000)
Emitter1.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,35.000000,0.000000),NumberSequenceKeypoint.new(1.000000,35.000000,0.000000)})
Emitter1.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.036998,0.448087,0.000000),NumberSequenceKeypoint.new(0.119450,0.202186,0.000000),NumberSequenceKeypoint.new(0.266385,0.245902,0.000000),NumberSequenceKeypoint.new(0.495243,0.142077,0.000000),NumberSequenceKeypoint.new(0.752643,0.218579,0.000000),NumberSequenceKeypoint.new(0.882135,0.196721,0.000000),NumberSequenceKeypoint.new(0.967230,0.409836,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Emitter1.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.745098,0.737255,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.745098,0.737255,1.000000))})
Emitter1.LightEmission=0
Emitter1.LightInfluence=0
Emitter1.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Emitter1.Drag=0
Emitter1.EmissionDirection=Enum.NormalId.Bottom
Emitter1.SpreadAngle=v2(0, 0)
Emitter1.ZOffset=0.009999999776482582
Emitter1.Texture="rbxassetid://13189668031"
Emitter1.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Emitter1.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Emitter1.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Emitter1.FlipbookStartRandom=false

local Evil=Instance.new("ParticleEmitter", partatt)
Evil.Name="evil2"
Evil.Enabled=true
Evil.Rate=50
Evil.Lifetime=NumberRange.new(1.000000,1.000000)
Evil.Speed=NumberRange.new(0.112000,0.112000)
Evil.Rotation=NumberRange.new(0.000000,360.000000)
Evil.RotSpeed=NumberRange.new(0.000000,0.000000)
Evil.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,30.000000,0.000000),NumberSequenceKeypoint.new(1.000000,30.000000,0.000000)})
Evil.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.110465,0.568306,0.000000),NumberSequenceKeypoint.new(0.259514,0.344262,0.000000),NumberSequenceKeypoint.new(0.494715,0.229508,0.000000),NumberSequenceKeypoint.new(0.764799,0.426230,0.000000),NumberSequenceKeypoint.new(0.871564,0.710383,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Evil.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.745098,0.737255,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.745098,0.737255,1.000000))})
Evil.LightEmission=1
Evil.LightInfluence=0
Evil.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Evil.Drag=0
Evil.EmissionDirection=Enum.NormalId.Top
Evil.SpreadAngle=v2(0, 0)
Evil.ZOffset=5
Evil.Texture="rbxassetid://15011464541"
Evil.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Evil.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Evil.FlipbookFramerate=NumberRange.new(60.000000,60.000000)
Evil.FlipbookStartRandom=false

local Emitter2=Instance.new("ParticleEmitter", partatt)
Emitter2.Name="ParticleEmitter"
Emitter2.Enabled=true
Emitter2.Rate=25
Emitter2.Lifetime=NumberRange.new(1.000000,1.500000)
Emitter2.Speed=NumberRange.new(0.015000,0.015000)
Emitter2.Rotation=NumberRange.new(0.000000,360.000000)
Emitter2.RotSpeed=NumberRange.new(0.000000,0.000000)
Emitter2.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,15.000000,0.000000),NumberSequenceKeypoint.new(0.285412,15.000000,0.000000),NumberSequenceKeypoint.new(0.466702,14.437500,0.000000),NumberSequenceKeypoint.new(0.730973,11.812500,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Emitter2.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.088795,0.431694,0.000000),NumberSequenceKeypoint.new(0.202960,0.180328,0.000000),NumberSequenceKeypoint.new(0.439218,0.300546,0.000000),NumberSequenceKeypoint.new(0.665962,0.573771,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Emitter2.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.745098,0.737255,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.745098,0.737255,1.000000))})
Emitter2.LightEmission=0.5
Emitter2.LightInfluence=0
Emitter2.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Emitter2.Drag=0
Emitter2.EmissionDirection=Enum.NormalId.Top
Emitter2.SpreadAngle=v2(0, 0)
Emitter2.ZOffset=-0.009999999776482582
Emitter2.Texture="rbxassetid://11355816590"
Emitter2.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Emitter2.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Emitter2.FlipbookFramerate=NumberRange.new(25.000000,25.000000)
Emitter2.FlipbookStartRandom=false

local Emitter3=Instance.new("ParticleEmitter", partatt)
Emitter3.Name="ParticleEmitter"
Emitter3.Enabled=true
Emitter3.Rate=10
Emitter3.Lifetime=NumberRange.new(1.000000,1.000000)
Emitter3.Speed=NumberRange.new(0.468750,0.468750)
Emitter3.Rotation=NumberRange.new(50.000000,50.000000)
Emitter3.RotSpeed=NumberRange.new(-250.000000,-250.000000)
Emitter3.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(0.375264,2.695313,0.000000),NumberSequenceKeypoint.new(0.581395,6.210938,0.000000),NumberSequenceKeypoint.new(0.807611,10.546875,0.000000),NumberSequenceKeypoint.new(0.939218,14.296875,0.000000),NumberSequenceKeypoint.new(1.000000,18.750000,0.000000)})
Emitter3.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,0.000000,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Emitter3.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.745098,0.737255,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.745098,0.737255,1.000000))})
Emitter3.LightEmission=0.5
Emitter3.LightInfluence=0
Emitter3.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Emitter3.Drag=0
Emitter3.EmissionDirection=Enum.NormalId.Top
Emitter3.SpreadAngle=v2(5, 5)
Emitter3.ZOffset=1.100000023841858
Emitter3.Texture="rbxassetid://8047533775"
Emitter3.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Emitter3.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Emitter3.FlipbookFramerate=NumberRange.new(60.000000,60.000000)
Emitter3.FlipbookStartRandom=false

local Emitter4=Instance.new("ParticleEmitter", partatt)
Emitter4.Name="ParticleEmitter"
Emitter4.Enabled=true
Emitter4.Rate=20
Emitter4.Lifetime=NumberRange.new(0.500000,0.500000)
Emitter4.Speed=NumberRange.new(0.112000,0.112000)
Emitter4.Rotation=NumberRange.new(0.000000,360.000000)
Emitter4.RotSpeed=NumberRange.new(100.000000,150.000000)
Emitter4.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,35.000000,0.000000),NumberSequenceKeypoint.new(0.371564,31.281250,0.000000),NumberSequenceKeypoint.new(0.673890,23.406250,0.000000),NumberSequenceKeypoint.new(0.820825,14.437498,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Emitter4.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.110465,0.568306,0.000000),NumberSequenceKeypoint.new(0.259514,0.344262,0.000000),NumberSequenceKeypoint.new(0.494715,0.229508,0.000000),NumberSequenceKeypoint.new(0.764799,0.426230,0.000000),NumberSequenceKeypoint.new(0.871564,0.710383,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Emitter4.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.745098,0.737255,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.745098,0.737255,1.000000))})
Emitter4.LightEmission=1
Emitter4.LightInfluence=0
Emitter4.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Emitter4.Drag=0
Emitter4.EmissionDirection=Enum.NormalId.Bottom
Emitter4.SpreadAngle=v2(0, 0)
Emitter4.ZOffset=10
Emitter4.Texture="rbxassetid://9533204395"
Emitter4.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Emitter4.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Emitter4.FlipbookFramerate=NumberRange.new(60.000000,60.000000)
Emitter4.FlipbookStartRandom=false

local Emitter5=Instance.new("ParticleEmitter", partatt)
Emitter5.Name="ParticleEmitter"
Emitter5.Enabled=true
Emitter5.Rate=50
Emitter5.Lifetime=NumberRange.new(1.000000,1.000000)
Emitter5.Speed=NumberRange.new(0.468750,0.468750)
Emitter5.Rotation=NumberRange.new(50.000000,50.000000)
Emitter5.RotSpeed=NumberRange.new(250.000000,250.000000)
Emitter5.Size=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,16.289062,0.000000),NumberSequenceKeypoint.new(0.436047,6.679688,0.000000),NumberSequenceKeypoint.new(0.602008,2.929688,0.000000),NumberSequenceKeypoint.new(0.766913,1.054687,0.000000),NumberSequenceKeypoint.new(0.849366,0.585938,0.000000),NumberSequenceKeypoint.new(1.000000,0.000000,0.000000)})
Emitter5.Transparency=NumberSequence.new({NumberSequenceKeypoint.new(0.000000,1.000000,0.000000),NumberSequenceKeypoint.new(0.081924,0.349727,0.000000),NumberSequenceKeypoint.new(0.211416,0.109290,0.000000),NumberSequenceKeypoint.new(0.553911,0.366120,0.000000),NumberSequenceKeypoint.new(1.000000,1.000000,0.000000)})
Emitter5.Color=ColorSequence.new({ColorSequenceKeypoint.new(0.000000,Color3.new(0.745098,0.737255,1.000000)),ColorSequenceKeypoint.new(1.000000,Color3.new(0.745098,0.737255,1.000000))})
Emitter5.LightEmission=0
Emitter5.LightInfluence=0
Emitter5.Acceleration=Vector3.new(0.000000,0.000000,0.000000)
Emitter5.Drag=0
Emitter5.EmissionDirection=Enum.NormalId.Top
Emitter5.SpreadAngle=v2(5, 5)
Emitter5.ZOffset=1.2000000476837158
Emitter5.Texture="rbxassetid://8047533775"
Emitter5.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Emitter5.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Emitter5.FlipbookFramerate=NumberRange.new(60.000000,60.000000)
Emitter5.FlipbookStartRandom=false


local count=1
local amount=15
local Radius=20
for i=1,amount do 
local rclone=LargeShardAttachment:Clone()
count+=1 
rclone.Parent=partatt1
local angle=4.8*count*5
rclone.CFrame=rclone.CFrame*angles(rad(0), rad(angle),rad(0))*cf(-20,0,0)
end 

for _,v in partatt:GetDescendants() do 
if v:IsA("ParticleEmitter") then 
v.Orientation="VelocityPerpendicular"
end
end
for _,v in partatt1:GetDescendants() do 
if v:IsA("ParticleEmitter") and v.Name=="star" then 
v.ZOffset=10
v.Orientation="FacingCamera"
end
end
for _,v in container:GetDescendants() do 
if v:IsA("ParticleEmitter") then 
v.LockedToPart=true
end
end
for _,v in ring:GetDescendants() do 
if v:IsA("ParticleEmitter") and v.Name~="Star1" and v.Name~="Star2" and v.Name~="Middle" and v.Name~="Symbol" then 
v.Orientation="VelocityPerpendicular"
end
end

local b 
local upd=1
b=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("VibranceAssets")then
b:Disconnect()
end
upd+=1
local model=scriptfolder:FindFirstChild("VibranceAssets")
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
pcall(function()
if model then
local Torso=rootpart1
local floor=model:FindFirstChild("Floor")
local floor1=model:FindFirstChild("Floor2")
local ring=model:FindFirstChild("Rings")
local root=rootpart1
TweenFunction(floor,.1,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
TweenFunction(floor1,.1,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
local forward=root.CFrame.LookVector
local up=Vector3.new(0, 1, 0)
local front=CFrame.lookAt(root.Position,root.Position + forward,up)
local Offset=CFrame.new(0+3.5*sin(upd/40), 18.5-2.5*sin(upd/30), 7-2.75*sin(upd/28.5))
local tilt=CFrame.Angles(rad(25-5.5*sin(upd/40.5)), 0, rad(5+7.5*sin(upd/45.25)))
local rotation=CFrame.Angles(0, rad(upd/2.5+sound.PlaybackLoudness/100), 0)
ring.CFrame=ring.CFrame:Lerp(front*Offset*tilt*rotation,.1)
floor.Rotation=v3(0,upd+sound.PlaybackLoudness/500,0)
floor1.Rotation=v3(0,upd+sound.PlaybackLoudness/500,0)
for _,v in container:GetDescendants() do 
if v:IsA("PointLight") then 
v.Brightness=5+sound.PlaybackLoudness/50
v.Range=2+sound.PlaybackLoudness/25
v.Color=rgb(0+sound.PlaybackLoudness/5,118+sound.PlaybackLoudness/10,253)
end
end
for _,v in container:GetDescendants() do 
if v:IsA("ParticleEmitter") then 
v.Color=cs({
  csk(0,rgb(0+sound.PlaybackLoudness/5,118+sound.PlaybackLoudness/10,253)),
  csk(1,rgb(0+sound.PlaybackLoudness/5,118+sound.PlaybackLoudness/10,253))
})
v.LightInfluence=0+sound.PlaybackLoudness/50
v.LightEmission=50+sound.PlaybackLoudness/25
end
end
for _,v in container:GetDescendants() do 
if v:IsA("Beam") then 
v.Color=cs({
  csk(0,rgb(0+sound.PlaybackLoudness/5,118+sound.PlaybackLoudness/10,253)),
  csk(1,rgb(0+sound.PlaybackLoudness/5,118+sound.PlaybackLoudness/10,253))
})
v.LightInfluence=0+sound.PlaybackLoudness/20
v.LightEmission=50+sound.PlaybackLoudness/25
end
end
end
end)
end)


end 
VibranceAssets()