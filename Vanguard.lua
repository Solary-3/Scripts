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
local scriptfolder1=scriptfolder.Parent


function VanguardAssets()
if scriptfolder:FindFirstChild("VanguardAssets") then return end

local Folder=i("Folder",scriptfolder)
Folder.Name="VanguardAssets"
Folder:SetAttribute("VFX",true)
local Floor=Instance.new("Part", Folder)
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
local iset=insSet
local ring=i("Part")
iset(ring,"Size",v3(0,5,0));iset(ring,"Anchored",true);iset(ring,"CastShadow",false);iset(ring,"CanCollide",false);iset(ring,"CanQuery",false);iset(ring,"CanTouch",false);iset(ring,"Transparency",1);iset(ring,"Parent",Folder);iset(ring,"Name","Ring1")
local ring1=i("Part")
iset(ring1,"Size",v3(0,5,0));iset(ring1,"Anchored",true);iset(ring1,"CastShadow",false);iset(ring1,"CanCollide",false);iset(ring1,"CanQuery",false);iset(ring1,"CanTouch",false);iset(ring1,"Transparency",1);iset(ring1,"Parent",Folder);iset(ring1,"Name","Ring2")

local li0=i("PointLight",Floor)
li0.Name="VLight"
local li1=i("PointLight",ring)
li1.Name="VLight"
local li2=i("PointLight",ring1)
li2.Name="VLight"


function LoadVFX()
local Core=i("Attachment", Floor)
Core.Name="Core"
Core:SetAttribute("AuraInstance", true)
Core.Position=v3(0.000000,0,0.000000)
Core.Visible=false

local Winds_18613=i("ParticleEmitter", Core)
Winds_18613.Name="Winds"
Winds_18613:SetAttribute("AuraInstance", true)
Winds_18613.Enabled=true
Winds_18613.Rate=200
Winds_18613.Lifetime=nr(0.029999999329447746,0.029999999329447746)
Winds_18613.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Winds_18613.Rotation=nr(0,360)
Winds_18613.RotSpeed=nr(0,0)
Winds_18613.Size=ns({nsk(0.000000,15.073213,0.000000),nsk(0.217172,24.053415,0.000000),nsk(0.445172,28.175045,0.000000),nsk(0.583172,30.394386,0.000000),nsk(1.000000,31.704849,0.000000)})
Winds_18613.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.100000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
Winds_18613.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
Winds_18613.LightEmission=0
Winds_18613.LightInfluence=0
Winds_18613.Acceleration=v3(0.000000,0.000000,0.000000)
Winds_18613.Drag=0
Winds_18613.EmissionDirection=Enum.NormalId.Top
Winds_18613.SpreadAngle=v2(15.000000,15.000000)
Winds_18613.ZOffset=0
Winds_18613.Texture="rbxassetid://12403112662"
Winds_18613.LockedToPart=true
Winds_18613.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Winds_18613.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Winds_18613.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Winds_18613.FlipbookFramerate=nr(1,1)
Winds_18613.FlipbookStartRandom=false
Winds_18613.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Winds2_18614=i("ParticleEmitter", Core)
Winds2_18614.Name="Winds2"
Winds2_18614:SetAttribute("AuraInstance", true)
Winds2_18614.Enabled=true
Winds2_18614.Rate=200
Winds2_18614.Lifetime=nr(0.029999999329447746,0.029999999329447746)
Winds2_18614.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Winds2_18614.Rotation=nr(0,360)
Winds2_18614.RotSpeed=nr(0,0)
Winds2_18614.Size=ns({nsk(0.000000,15.074373,0.000000),nsk(0.217172,24.055267,0.000000),nsk(0.445172,28.177216,0.000000),nsk(0.583172,30.396725,0.000000),nsk(1.000000,31.707291,0.000000)})
Winds2_18614.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.100000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
Winds2_18614.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
Winds2_18614.LightEmission=1
Winds2_18614.LightInfluence=0
Winds2_18614.Acceleration=v3(0.000000,0.000000,0.000000)
Winds2_18614.Drag=0
Winds2_18614.EmissionDirection=Enum.NormalId.Top
Winds2_18614.SpreadAngle=v2(15.000000,15.000000)
Winds2_18614.ZOffset=0
Winds2_18614.Texture="rbxassetid://1084996536"
Winds2_18614.LockedToPart=true
Winds2_18614.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Winds2_18614.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Winds2_18614.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Winds2_18614.FlipbookFramerate=nr(1,1)
Winds2_18614.FlipbookStartRandom=false
Winds2_18614.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local shockwave_18615=i("Attachment", Core)
shockwave_18615.Name="shockwave"
shockwave_18615:SetAttribute("AuraInstance", true)
shockwave_18615.Position=v3(0.000000,0.000000,0.000000)
shockwave_18615.Visible=false

local Shockwave_18616=i("ParticleEmitter", shockwave_18615)
Shockwave_18616.Name="Shockwave"
Shockwave_18616:SetAttribute("EmitCount", 1)
Shockwave_18616:SetAttribute("AuraInstance", true)
Shockwave_18616.Enabled=false
Shockwave_18616.Rate=0
Shockwave_18616.Lifetime=nr(0.6000000238418579,0.8999999761581421)
Shockwave_18616.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Shockwave_18616.Rotation=nr(0,0)
Shockwave_18616.RotSpeed=nr(-350,-150)
Shockwave_18616.Size=ns({nsk(0.000000,15.953760,0.000000),nsk(0.300042,27.228960,0.000000),nsk(0.656042,34.875359,0.000000),nsk(1.000000,38.880001,0.000000)})
Shockwave_18616.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.103947,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18616.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
Shockwave_18616.LightEmission=-9
Shockwave_18616.LightInfluence=0
Shockwave_18616.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18616.Drag=0
Shockwave_18616.EmissionDirection=Enum.NormalId.Top
Shockwave_18616.SpreadAngle=v2(0.000000,0.000000)
Shockwave_18616.ZOffset=-0.0020000000949949026
Shockwave_18616.Texture="rbxassetid://6707322206"
Shockwave_18616.LockedToPart=false
Shockwave_18616.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Shockwave_18616.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Shockwave_18616.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Shockwave_18616.FlipbookFramerate=nr(1,1)
Shockwave_18616.FlipbookStartRandom=false
Shockwave_18616.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Shockwave_18617=i("ParticleEmitter", shockwave_18615)
Shockwave_18617.Name="Shockwave"
Shockwave_18617:SetAttribute("EmitCount", 1)
Shockwave_18617:SetAttribute("AuraInstance", true)
Shockwave_18617.Enabled=false
Shockwave_18617.Rate=0
Shockwave_18617.Lifetime=nr(0.6000000238418579,0.8999999761581421)
Shockwave_18617.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Shockwave_18617.Rotation=nr(0,0)
Shockwave_18617.RotSpeed=nr(-350,-150)
Shockwave_18617.Size=ns({nsk(0.000000,13.931089,0.000000),nsk(0.083172,22.055342,0.000000),nsk(0.234510,26.559931,0.000000),nsk(0.446510,31.004128,0.000000),nsk(0.696510,34.044895,0.000000),nsk(1.000000,35.085773,0.000000)})
Shockwave_18617.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.099751,0.643750,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18617.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
Shockwave_18617.LightEmission=1
Shockwave_18617.LightInfluence=0
Shockwave_18617.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18617.Drag=0
Shockwave_18617.EmissionDirection=Enum.NormalId.Top
Shockwave_18617.SpreadAngle=v2(0.000000,0.000000)
Shockwave_18617.ZOffset=0.0020000000949949026
Shockwave_18617.Texture="rbxassetid://10527344199"
Shockwave_18617.LockedToPart=false
Shockwave_18617.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Shockwave_18617.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Shockwave_18617.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Shockwave_18617.FlipbookFramerate=nr(1,1)
Shockwave_18617.FlipbookStartRandom=false
Shockwave_18617.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Shockwave_18618=i("ParticleEmitter", shockwave_18615)
Shockwave_18618.Name="Shockwave"
Shockwave_18618:SetAttribute("EmitCount", 1)
Shockwave_18618:SetAttribute("AuraInstance", true)
Shockwave_18618.Enabled=false
Shockwave_18618.Rate=0
Shockwave_18618.Lifetime=nr(0.6000000238418579,0.8999999761581421)
Shockwave_18618.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Shockwave_18618.Rotation=nr(-900,900)
Shockwave_18618.RotSpeed=nr(0,0)
Shockwave_18618.Size=ns({nsk(0.000000,16.717308,0.000000),nsk(0.083172,26.466408,0.000000),nsk(0.234510,31.871918,0.000000),nsk(0.446510,37.204956,0.000000),nsk(0.696510,40.853874,0.000000),nsk(1.000000,42.102924,0.000000)})
Shockwave_18618.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.100000,0.731250,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18618.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
Shockwave_18618.LightEmission=-3
Shockwave_18618.LightInfluence=0
Shockwave_18618.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18618.Drag=0
Shockwave_18618.EmissionDirection=Enum.NormalId.Top
Shockwave_18618.SpreadAngle=v2(0.000000,0.000000)
Shockwave_18618.ZOffset=0.0020000000949949026
Shockwave_18618.Texture="rbxassetid://12318427672"
Shockwave_18618.LockedToPart=false
Shockwave_18618.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Shockwave_18618.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Shockwave_18618.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Shockwave_18618.FlipbookFramerate=nr(1,1)
Shockwave_18618.FlipbookStartRandom=false
Shockwave_18618.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Shockwave_18619=i("ParticleEmitter", shockwave_18615)
Shockwave_18619.Name="Shockwave"
Shockwave_18619:SetAttribute("EmitCount", 1)
Shockwave_18619:SetAttribute("AuraInstance", true)
Shockwave_18619.Enabled=false
Shockwave_18619.Rate=0
Shockwave_18619.Lifetime=nr(0.6000000238418579,0.8999999761581421)
Shockwave_18619.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Shockwave_18619.Rotation=nr(-900,900)
Shockwave_18619.RotSpeed=nr(0,0)
Shockwave_18619.Size=ns({nsk(0.000000,12.036462,0.000000),nsk(0.083172,19.055813,0.000000),nsk(0.234510,22.947781,0.000000),nsk(0.446510,26.787569,0.000000),nsk(0.696510,29.414791,0.000000),nsk(1.000000,30.314108,0.000000)})
Shockwave_18619.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.086842,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18619.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
Shockwave_18619.LightEmission=1
Shockwave_18619.LightInfluence=0
Shockwave_18619.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18619.Drag=0
Shockwave_18619.EmissionDirection=Enum.NormalId.Top
Shockwave_18619.SpreadAngle=v2(0.000000,0.000000)
Shockwave_18619.ZOffset=0.0020000000949949026
Shockwave_18619.Texture="https://assetgame.roblox.com/asset/?id=11037301979&assetName=Circle8"
Shockwave_18619.LockedToPart=false
Shockwave_18619.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Shockwave_18619.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Shockwave_18619.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Shockwave_18619.FlipbookFramerate=nr(1,1)
Shockwave_18619.FlipbookStartRandom=false
Shockwave_18619.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Shockwave_18620=i("ParticleEmitter", shockwave_18615)
Shockwave_18620.Name="Shockwave"
Shockwave_18620:SetAttribute("EmitCount", 1)
Shockwave_18620:SetAttribute("AuraInstance", true)
Shockwave_18620.Enabled=false
Shockwave_18620.Rate=0
Shockwave_18620.Lifetime=nr(0.6000000238418579,0.8999999761581421)
Shockwave_18620.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Shockwave_18620.Rotation=nr(-900,900)
Shockwave_18620.RotSpeed=nr(0,0)
Shockwave_18620.Size=ns({nsk(0.000000,16.717308,0.000000),nsk(0.083172,26.466408,0.000000),nsk(0.234510,31.871918,0.000000),nsk(0.446510,37.204956,0.000000),nsk(0.696510,40.853874,0.000000),nsk(1.000000,42.102924,0.000000)})
Shockwave_18620.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.100000,0.731250,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18620.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
Shockwave_18620.LightEmission=1
Shockwave_18620.LightInfluence=0
Shockwave_18620.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18620.Drag=0
Shockwave_18620.EmissionDirection=Enum.NormalId.Top
Shockwave_18620.SpreadAngle=v2(0.000000,0.000000)
Shockwave_18620.ZOffset=0.0020000000949949026
Shockwave_18620.Texture="https://assetgame.roblox.com/asset/?id=11037291778&assetName=Circle26"
Shockwave_18620.LockedToPart=false
Shockwave_18620.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Shockwave_18620.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Shockwave_18620.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Shockwave_18620.FlipbookFramerate=nr(1,1)
Shockwave_18620.FlipbookStartRandom=false
Shockwave_18620.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local bright_18621=i("ParticleEmitter", shockwave_18615)
bright_18621.Name="bright"
bright_18621:SetAttribute("EmitCount", 1)
bright_18621:SetAttribute("AuraInstance", true)
bright_18621.Enabled=false
bright_18621.Rate=0
bright_18621.Lifetime=nr(0.20000000298023224,0.20000000298023224)
bright_18621.Speed=nr(0.0009000000427477062,0.0009000000427477062)
bright_18621.Rotation=nr(-900,900)
bright_18621.RotSpeed=nr(0,0)
bright_18621.Size=ns({nsk(0.000000,48.896999,0.000000),nsk(0.120000,63.207001,0.000000),nsk(0.322042,71.306999,0.000000),nsk(0.684042,80.217010,0.000000),nsk(1.000000,81.000000,0.000000)})
bright_18621.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.113158,1.000000,0.000000),nsk(0.221053,0.893750,0.000000),nsk(1.000000,1.000000,0.000000)})
bright_18621.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
bright_18621.LightEmission=1
bright_18621.LightInfluence=0
bright_18621.Acceleration=v3(0.000000,0.000000,0.000000)
bright_18621.Drag=0
bright_18621.EmissionDirection=Enum.NormalId.Top
bright_18621.SpreadAngle=v2(0.000000,0.000000)
bright_18621.ZOffset=9
bright_18621.Texture="rbxassetid://75202463"
bright_18621.LockedToPart=true
bright_18621.Orientation=Enum.ParticleOrientation.FacingCamera
bright_18621.FlipbookLayout=Enum.ParticleFlipbookLayout.None
bright_18621.FlipbookMode=Enum.ParticleFlipbookMode.Loop
bright_18621.FlipbookFramerate=nr(1,1)
bright_18621.FlipbookStartRandom=false
bright_18621.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dark_18622=i("ParticleEmitter", shockwave_18615)
dark_18622.Name="dark"
dark_18622:SetAttribute("EmitCount", 1)
dark_18622:SetAttribute("AuraInstance", true)
dark_18622.Enabled=false
dark_18622.Rate=0
dark_18622.Lifetime=nr(2,2)
dark_18622.Speed=nr(0.0009000000427477062,0.0009000000427477062)
dark_18622.Rotation=nr(-900,900)
dark_18622.RotSpeed=nr(0,0)
dark_18622.Size=ns({nsk(0.000000,3.089710,0.000000),nsk(0.122718,17.213966,0.000000),nsk(0.362718,35.542774,0.000000),nsk(0.692718,49.903492,0.000000),nsk(1.000000,56.687042,0.000000)})
dark_18622.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.092676,0.684783,0.000000),nsk(1.000000,1.000000,0.000000)})
dark_18622.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
dark_18622.LightEmission=-9
dark_18622.LightInfluence=0
dark_18622.Acceleration=v3(0.000000,0.000000,0.000000)
dark_18622.Drag=0
dark_18622.EmissionDirection=Enum.NormalId.Top
dark_18622.SpreadAngle=v2(0.000000,0.000000)
dark_18622.ZOffset=-3
dark_18622.Texture="https://assetgame.roblox.com/asset/?id=11037515093&assetName=Magic3"
dark_18622.LockedToPart=false
dark_18622.Orientation=Enum.ParticleOrientation.FacingCamera
dark_18622.FlipbookLayout=Enum.ParticleFlipbookLayout.None
dark_18622.FlipbookMode=Enum.ParticleFlipbookMode.Loop
dark_18622.FlipbookFramerate=nr(1,1)
dark_18622.FlipbookStartRandom=false
dark_18622.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dark_18623=i("ParticleEmitter", shockwave_18615)
dark_18623.Name="dark"
dark_18623:SetAttribute("EmitCount", 1)
dark_18623:SetAttribute("AuraInstance", true)
dark_18623.Enabled=false
dark_18623.Rate=0
dark_18623.Lifetime=nr(2,2)
dark_18623.Speed=nr(0.0009000000427477062,0.0009000000427477062)
dark_18623.Rotation=nr(-900,900)
dark_18623.RotSpeed=nr(0,0)
dark_18623.Size=ns({nsk(0.000000,3.433011,0.000000),nsk(0.122718,19.126629,0.000000),nsk(0.362718,39.491974,0.000000),nsk(0.692718,55.448326,0.000000),nsk(1.000000,62.985600,0.000000)})
dark_18623.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.092676,0.684783,0.000000),nsk(1.000000,1.000000,0.000000)})
dark_18623.Color=cs({csk(0.000000,c3(1.000000,0.192157,0.192157)),csk(1.000000,c3(1.000000,0.192157,0.192157))})
dark_18623.LightEmission=-9
dark_18623.LightInfluence=0
dark_18623.Acceleration=v3(0.000000,0.000000,0.000000)
dark_18623.Drag=0
dark_18623.EmissionDirection=Enum.NormalId.Top
dark_18623.SpreadAngle=v2(0.000000,0.000000)
dark_18623.ZOffset=0
dark_18623.Texture="https://assetgame.roblox.com/asset/?id=11037515093&assetName=Magic3"
dark_18623.LockedToPart=false
dark_18623.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
dark_18623.FlipbookLayout=Enum.ParticleFlipbookLayout.None
dark_18623.FlipbookMode=Enum.ParticleFlipbookMode.Loop
dark_18623.FlipbookFramerate=nr(1,1)
dark_18623.FlipbookStartRandom=false
dark_18623.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})








local Floor_18582=i("Attachment", Floor)
Floor_18582.Name="Floor"
Floor_18582:SetAttribute("AuraInstance", true)
Floor_18582.Position=v3(0.000000,0,0.000000)
Floor_18582.Visible=false

local BRust_18583=i("ParticleEmitter", Floor_18582)
BRust_18583.Name="BRust"
BRust_18583:SetAttribute("VFX",true)
BRust_18583:SetAttribute("AuraInstance", true)
BRust_18583.Enabled=true
BRust_18583.Rate=21.600000381469727
BRust_18583.Lifetime=nr(0.30000001192092896,0.30000001192092896)
BRust_18583.Speed=nr(0.0011561978608369827,0.0011561978608369827)
BRust_18583.Rotation=nr(-360,360)
BRust_18583.RotSpeed=nr(0,0)
BRust_18583.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.162478,8.820900,0.000000),nsk(0.384478,16.740900,0.000000),nsk(0.688478,24.462898,0.000000),nsk(1.000000,29.699999,0.000000)})
BRust_18583.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.486547,0.701087,0.000000),nsk(1.000000,1.000000,0.000000)})
BRust_18583.Color=cs({csk(0.000000,c3(1.000000,0.180392,0.192157)),csk(1.000000,c3(0.549020,0.027451,0.035294))})
BRust_18583.LightEmission=1
BRust_18583.LightInfluence=0
BRust_18583.Acceleration=v3(0.000000,0.000000,0.000000)
BRust_18583.Drag=1
BRust_18583.EmissionDirection=Enum.NormalId.Top
BRust_18583.SpreadAngle=v2(0.006000,0.006000)
BRust_18583.ZOffset=0.0001250000059371814
BRust_18583.Texture="rbxassetid://12906276200"
BRust_18583.LockedToPart=true
BRust_18583.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BRust_18583.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BRust_18583.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BRust_18583.FlipbookFramerate=nr(5,5)
BRust_18583.FlipbookStartRandom=false
BRust_18583.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Brust_18584=i("ParticleEmitter", Floor_18582)
Brust_18584.Name="Brust"
Brust_18584:SetAttribute("AuraInstance", true)
Brust_18584:SetAttribute("VFX",true)
Brust_18584:SetAttribute("_vfxEditorScale", 1)
Brust_18584.Enabled=true
Brust_18584.Rate=1.3996798992156982
Brust_18584.Lifetime=nr(2,2)
Brust_18584.Speed=nr(0.0011561978608369827,0.0011561978608369827)
Brust_18584.Rotation=nr(-360,360)
Brust_18584.RotSpeed=nr(0,0)
Brust_18584.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.158478,11.360701,0.000000),nsk(0.356478,19.433701,0.000000),nsk(0.512478,24.347700,0.000000),nsk(0.762478,30.548700,0.000000),nsk(1.000000,35.099998,0.000000)})
Brust_18584.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.486547,0.701087,0.000000),nsk(1.000000,1.000000,0.000000)})
Brust_18584.Color=cs({csk(0.000000,c3(0.819608,0.250980,0.258823)),csk(1.000000,c3(0.301961,0.050980,0.054902))})
Brust_18584.LightEmission=1
Brust_18584.LightInfluence=0
Brust_18584.Acceleration=v3(0.000000,0.000000,0.000000)
Brust_18584.Drag=1
Brust_18584.EmissionDirection=Enum.NormalId.Top
Brust_18584.SpreadAngle=v2(0.006000,0.006000)
Brust_18584.ZOffset=0.0001250000059371814
Brust_18584.Texture="rbxassetid://11749129449"
Brust_18584.LockedToPart=true
Brust_18584.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Brust_18584.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Brust_18584.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Brust_18584.FlipbookFramerate=nr(40,40)
Brust_18584.FlipbookStartRandom=false
Brust_18584.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_18585=i("ParticleEmitter", Floor_18582)
ParticleEmitter_18585.Name="ParticleEmitter"
ParticleEmitter_18585:SetAttribute("AuraInstance", true)
ParticleEmitter_18585.Enabled=true
ParticleEmitter_18585.Rate=10
ParticleEmitter_18585.Lifetime=nr(1.600000023841858,1.600000023841858)
ParticleEmitter_18585.Speed=nr(0.0009000000427477062,0.0009000000427477062)
ParticleEmitter_18585.Rotation=nr(-360,360)
ParticleEmitter_18585.RotSpeed=nr(0,0)
ParticleEmitter_18585.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.084478,9.042901,0.000000),nsk(0.202478,15.363900,0.000000),nsk(0.400478,23.490900,0.000000),nsk(0.742478,33.165901,0.000000),nsk(1.000000,38.700001,0.000000)})
ParticleEmitter_18585.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502534,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_18585.Color=cs({csk(0.000000,c3(0.121569,0.000000,0.000000)),csk(1.000000,c3(0.121569,0.000000,0.000000))})
ParticleEmitter_18585.LightEmission=0
ParticleEmitter_18585.LightInfluence=0
ParticleEmitter_18585.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_18585.Drag=1
ParticleEmitter_18585.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_18585.SpreadAngle=v2(0.006000,0.006000)
ParticleEmitter_18585.ZOffset=0
ParticleEmitter_18585.Texture="rbxassetid://13582043821"
ParticleEmitter_18585.LockedToPart=true
ParticleEmitter_18585.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_18585.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_18585.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_18585.FlipbookFramerate=nr(20,20)
ParticleEmitter_18585.FlipbookStartRandom=false
ParticleEmitter_18585.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blackbig_18586=i("ParticleEmitter", Floor_18582)
Blackbig_18586.Name="Blackbig"
Blackbig_18586:SetAttribute("EmitDelay", 0)
Blackbig_18586:SetAttribute("AuraInstance", true)
Blackbig_18586.Enabled=true
Blackbig_18586.Rate=7
Blackbig_18586.Lifetime=nr(2,2)
Blackbig_18586.Speed=nr(0.0011561978608369827,0.0011561978608369827)
Blackbig_18586.Rotation=nr(-360,360)
Blackbig_18586.RotSpeed=nr(0,0)
Blackbig_18586.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.072384,15.012180,0.000000),nsk(0.236384,30.576172,0.000000),nsk(0.534384,38.782642,0.000000),nsk(0.780384,41.470966,0.000000),nsk(1.000000,42.447254,0.000000)})
Blackbig_18586.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.073991,0.586957,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackbig_18586.Color=cs({csk(0.000000,c3(0.121569,0.000000,0.000000)),csk(1.000000,c3(0.121569,0.000000,0.000000))})
Blackbig_18586.LightEmission=0
Blackbig_18586.LightInfluence=0
Blackbig_18586.Acceleration=v3(0.000000,0.000000,0.000000)
Blackbig_18586.Drag=1
Blackbig_18586.EmissionDirection=Enum.NormalId.Top
Blackbig_18586.SpreadAngle=v2(0.006000,0.006000)
Blackbig_18586.ZOffset=-0.0024999999441206455
Blackbig_18586.Texture="rbxassetid://15333819074"
Blackbig_18586.LockedToPart=true
Blackbig_18586.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackbig_18586.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Blackbig_18586.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackbig_18586.FlipbookFramerate=nr(20,20)
Blackbig_18586.FlipbookStartRandom=false
Blackbig_18586.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local BRust_18587=i("ParticleEmitter", Floor_18582)
BRust_18587.Name="BRust"
BRust_18587:SetAttribute("AuraInstance", true)
BRust_18587.Enabled=true
BRust_18587.Rate=21.600000381469727
BRust_18587.Lifetime=nr(0.30000001192092896,0.30000001192092896)
BRust_18587.Speed=nr(0.0011561978608369827,0.0011561978608369827)
BRust_18587.Rotation=nr(-360,360)
BRust_18587.RotSpeed=nr(0,0)
BRust_18587.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.184478,7.183801,0.000000),nsk(0.382478,12.175800,0.000000),nsk(0.736478,19.663799,0.000000),nsk(1.000000,23.400002,0.000000)})
BRust_18587.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.486547,0.701087,0.000000),nsk(1.000000,1.000000,0.000000)})
BRust_18587.Color=cs({csk(0.000000,c3(1.000000,0.180392,0.192157)),csk(1.000000,c3(0.549020,0.027451,0.035294))})
BRust_18587.LightEmission=1
BRust_18587.LightInfluence=0
BRust_18587.Acceleration=v3(0.000000,0.000000,0.000000)
BRust_18587.Drag=0
BRust_18587.EmissionDirection=Enum.NormalId.Top
BRust_18587.SpreadAngle=v2(0.006000,0.006000)
BRust_18587.ZOffset=0.0001250000059371814
BRust_18587.Texture="rbxassetid://11895782540"
BRust_18587.LockedToPart=true
BRust_18587.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
BRust_18587.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
BRust_18587.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
BRust_18587.FlipbookFramerate=nr(1,1)
BRust_18587.FlipbookStartRandom=false
BRust_18587.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Line_18588=i("ParticleEmitter", Floor_18582)
Line_18588.Name="Line"
Line_18588:SetAttribute("EmitDelay", 0)
Line_18588:SetAttribute("AuraInstance", true)
Line_18588.Enabled=true
Line_18588.Rate=30
Line_18588.Lifetime=nr(0.6000000238418579,0.6000000238418579)
Line_18588.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Line_18588.Rotation=nr(-360,360)
Line_18588.RotSpeed=nr(-50,25)
Line_18588.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.114478,7.038901,0.000000),nsk(0.288478,13.374901,0.000000),nsk(0.488478,19.512901,0.000000),nsk(0.788478,25.947903,0.000000),nsk(1.000000,29.699999,0.000000)})
Line_18588.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(0.478912,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Line_18588.Color=cs({csk(0.000000,c3(1.000000,0.278431,0.278431)),csk(1.000000,c3(0.262745,0.000000,0.000000))})
Line_18588.LightEmission=1
Line_18588.LightInfluence=0
Line_18588.Acceleration=v3(0.000000,0.000000,0.000000)
Line_18588.Drag=1
Line_18588.EmissionDirection=Enum.NormalId.Top
Line_18588.SpreadAngle=v2(0.006000,0.006000)
Line_18588.ZOffset=0.000375000003259629
Line_18588.Texture="rbxassetid://17223867020"
Line_18588.LockedToPart=true
Line_18588.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Line_18588.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Line_18588.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Line_18588.FlipbookFramerate=nr(5,5)
Line_18588.FlipbookStartRandom=false
Line_18588.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Line2_18589=i("ParticleEmitter", Floor_18582)
Line2_18589.Name="Line2"
Line2_18589:SetAttribute("EmitDelay", 0)
Line2_18589:SetAttribute("AuraInstance", true)
Line2_18589.Enabled=true
Line2_18589.Rate=3
Line2_18589.Lifetime=nr(1.600000023841858,1.600000023841858)
Line2_18589.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Line2_18589.Rotation=nr(-360,360)
Line2_18589.RotSpeed=nr(-30,15)
Line2_18589.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.096478,5.499001,0.000000),nsk(0.216478,9.549001,0.000000),nsk(0.464478,17.108999,0.000000),nsk(0.766478,23.679003,0.000000),nsk(1.000000,27.000000,0.000000)})
Line2_18589.Transparency=ns({nsk(0.000000,0.268750,0.000000),nsk(0.500680,0.225000,0.000000),nsk(1.000000,1.000000,0.000000)})
Line2_18589.Color=cs({csk(0.000000,c3(1.000000,0.278431,0.278431)),csk(1.000000,c3(0.262745,0.000000,0.000000))})
Line2_18589.LightEmission=1
Line2_18589.LightInfluence=0
Line2_18589.Acceleration=v3(0.000000,0.000000,0.000000)
Line2_18589.Drag=1
Line2_18589.EmissionDirection=Enum.NormalId.Top
Line2_18589.SpreadAngle=v2(0.006000,0.006000)
Line2_18589.ZOffset=0.000750000006519258
Line2_18589.Texture="rbxassetid://14525931482"
Line2_18589.LockedToPart=true
Line2_18589.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Line2_18589.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Line2_18589.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Line2_18589.FlipbookFramerate=nr(5,5)
Line2_18589.FlipbookStartRandom=false
Line2_18589.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Line2dar_18590=i("ParticleEmitter", Floor_18582)
Line2dar_18590.Name="Line2dar"
Line2dar_18590:SetAttribute("EmitDelay", 0)
Line2dar_18590:SetAttribute("AuraInstance", true)
Line2dar_18590.Enabled=true
Line2dar_18590.Rate=19
Line2dar_18590.Lifetime=nr(2,2)
Line2dar_18590.Speed=nr(0.0009000000427477062,0.0009000000427477062)
Line2dar_18590.Rotation=nr(-360,360)
Line2dar_18590.RotSpeed=nr(-30,15)
Line2dar_18590.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.174478,11.411400,0.000000),nsk(0.394478,19.505400,0.000000),nsk(0.710478,29.195400,0.000000),nsk(1.000000,34.200001,0.000000)})
Line2dar_18590.Transparency=ns({nsk(0.000000,0.812500,0.000000),nsk(0.365337,0.850000,0.000000),nsk(0.658354,0.918750,0.000000),nsk(0.846633,0.962500,0.000000),nsk(1.000000,1.000000,0.000000)})
Line2dar_18590.Color=cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
Line2dar_18590.LightEmission=0
Line2dar_18590.LightInfluence=0
Line2dar_18590.Acceleration=v3(0.000000,0.000000,0.000000)
Line2dar_18590.Drag=1
Line2dar_18590.EmissionDirection=Enum.NormalId.Top
Line2dar_18590.SpreadAngle=v2(0.006000,0.006000)
Line2dar_18590.ZOffset=0.0010000000474974513
Line2dar_18590.Texture="rbxassetid://14525931482"
Line2dar_18590.LockedToPart=true
Line2dar_18590.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Line2dar_18590.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Line2dar_18590.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Line2dar_18590.FlipbookFramerate=nr(5,5)
Line2dar_18590.FlipbookStartRandom=false
Line2dar_18590.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local circle_18591=i("ParticleEmitter", Floor_18582)
circle_18591.Name="circle"
circle_18591:SetAttribute("EmitCount", 15)
circle_18591:SetAttribute("AuraInstance", true)
circle_18591.Enabled=true
circle_18591.Rate=9
circle_18591.Lifetime=nr(2,2)
circle_18591.Speed=nr(0.0018000000854954123,0.0018000000854954123)
circle_18591.Rotation=nr(-360,360)
circle_18591.RotSpeed=nr(20,20)
circle_18591.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.138478,9.279000,0.000000),nsk(0.296478,15.309000,0.000000),nsk(0.558478,20.979000,0.000000),nsk(0.816478,25.209002,0.000000),nsk(1.000000,27.000000,0.000000)})
circle_18591.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.102392,0.850000,0.000000),nsk(1.000000,1.000000,0.000000)})
circle_18591.Color=cs({csk(0.000000,c3(1.000000,0.325490,0.325490)),csk(1.000000,c3(1.000000,0.325490,0.325490))})
circle_18591.LightEmission=1
circle_18591.LightInfluence=0
circle_18591.Acceleration=v3(0.000000,0.000000,0.000000)
circle_18591.Drag=0
circle_18591.EmissionDirection=Enum.NormalId.Top
circle_18591.SpreadAngle=v2(0.006000,0.006000)
circle_18591.ZOffset=0.011374999769032001
circle_18591.Texture="rbxassetid://118195003770928"
circle_18591.LockedToPart=true
circle_18591.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
circle_18591.FlipbookLayout=Enum.ParticleFlipbookLayout.None
circle_18591.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
circle_18591.FlipbookFramerate=nr(1,1)
circle_18591.FlipbookStartRandom=true
circle_18591.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Cresent3_18592=i("ParticleEmitter", Floor_18582)
Cresent3_18592.Name="Cresent_3"
Cresent3_18592:SetAttribute("AuraInstance", true)
Cresent3_18592.Enabled=true
Cresent3_18592.Rate=30
Cresent3_18592.Lifetime=nr(0.6000000238418579,0.6000000238418579)
Cresent3_18592.Speed=nr(0.0012600000482052565,0.0012600000482052565)
Cresent3_18592.Rotation=nr(-360,360)
Cresent3_18592.RotSpeed=nr(-40,40)
Cresent3_18592.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.114478,5.652901,0.000000),nsk(0.294478,13.176900,0.000000),nsk(0.542478,21.096899,0.000000),nsk(0.768478,26.442900,0.000000),nsk(1.000000,29.699999,0.000000)})
Cresent3_18592.Transparency=ns({nsk(0.000000,0.812500,0.000000),nsk(0.365337,0.850000,0.000000),nsk(0.658354,0.918750,0.000000),nsk(0.846633,0.962500,0.000000),nsk(1.000000,1.000000,0.000000)})
Cresent3_18592.Color=cs({csk(0.000000,c3(0.078431,0.007843,0.007843)),csk(1.000000,c3(0.078431,0.007843,0.007843))})
Cresent3_18592.LightEmission=-2
Cresent3_18592.LightInfluence=0.20000000298023224
Cresent3_18592.Acceleration=v3(0.000000,0.000000,0.000000)
Cresent3_18592.Drag=0
Cresent3_18592.EmissionDirection=Enum.NormalId.Top
Cresent3_18592.SpreadAngle=v2(6.000000,6.000000)
Cresent3_18592.ZOffset=0.0010000000474974513
Cresent3_18592.Texture="rbxassetid://17723930633"
Cresent3_18592.LockedToPart=true
Cresent3_18592.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cresent3_18592.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Cresent3_18592.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Cresent3_18592.FlipbookFramerate=nr(0.0010000000474974513,0.0010000000474974513)
Cresent3_18592.FlipbookStartRandom=true
Cresent3_18592.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Crescents_18593=i("ParticleEmitter", Floor_18582)
Crescents_18593.Name="Crescents"
Crescents_18593:SetAttribute("EmitCount", "8")
Crescents_18593:SetAttribute("AuraInstance", true)
Crescents_18593.Enabled=true
Crescents_18593.Rate=30
Crescents_18593.Lifetime=nr(0.6000000238418579,0.6000000238418579)
Crescents_18593.Speed=nr(0.009000000543892384,0.009000000543892384)
Crescents_18593.Rotation=nr(-360,360)
Crescents_18593.RotSpeed=nr(120,120)
Crescents_18593.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.138478,7.335901,0.000000),nsk(0.356478,14.661900,0.000000),nsk(0.522478,19.512901,0.000000),nsk(0.810478,26.739901,0.000000),nsk(1.000000,29.699999,0.000000)})
Crescents_18593.Transparency=ns({nsk(0.000000,0.812500,0.000000),nsk(0.365337,0.850000,0.000000),nsk(0.658354,0.918750,0.000000),nsk(0.846633,0.962500,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescents_18593.Color=cs({csk(0.000000,c3(0.078431,0.007843,0.007843)),csk(1.000000,c3(0.078431,0.007843,0.007843))})
Crescents_18593.LightEmission=-2
Crescents_18593.LightInfluence=0
Crescents_18593.Acceleration=v3(0.000000,0.000000,0.000000)
Crescents_18593.Drag=3.5
Crescents_18593.EmissionDirection=Enum.NormalId.Top
Crescents_18593.SpreadAngle=v2(6.000000,6.000000)
Crescents_18593.ZOffset=0.0010000000474974513
Crescents_18593.Texture="rbxassetid://15314650876"
Crescents_18593.LockedToPart=true
Crescents_18593.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Crescents_18593.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Crescents_18593.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Crescents_18593.FlipbookFramerate=nr(1,1)
Crescents_18593.FlipbookStartRandom=false
Crescents_18593.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Black_18594=i("ParticleEmitter", Floor_18582)
Black_18594.Name="Black"
Black_18594:SetAttribute("AuraInstance", true)
Black_18594.Enabled=true
Black_18594.Rate=10
Black_18594.Lifetime=nr(0.6000000238418579,0.6000000238418579)
Black_18594.Speed=nr(0.0011561978608369827,0.0011561978608369827)
Black_18594.Rotation=nr(-360,360)
Black_18594.RotSpeed=nr(0,0)
Black_18594.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.112478,7.354201,0.000000),nsk(0.276478,13.984200,0.000000),nsk(0.472478,19.798203,0.000000),nsk(0.712478,25.510201,0.000000),nsk(1.000000,30.599998,0.000000)})
Black_18594.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.493274,0.766304,0.000000),nsk(1.000000,1.000000,0.000000)})
Black_18594.Color=cs({csk(0.000000,c3(0.121569,0.000000,0.000000)),csk(1.000000,c3(0.121569,0.000000,0.000000))})
Black_18594.LightEmission=0
Black_18594.LightInfluence=0
Black_18594.Acceleration=v3(0.000000,0.000000,0.000000)
Black_18594.Drag=0
Black_18594.EmissionDirection=Enum.NormalId.Top
Black_18594.SpreadAngle=v2(0.006000,0.006000)
Black_18594.ZOffset=-0.0002500000118743628
Black_18594.Texture="rbxassetid://18230541777"
Black_18594.LockedToPart=true
Black_18594.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Black_18594.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Black_18594.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Black_18594.FlipbookFramerate=nr(1,1)
Black_18594.FlipbookStartRandom=false
Black_18594.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blackbig_18595=i("ParticleEmitter", Floor_18582)
Blackbig_18595.Name="Blackbig"
Blackbig_18595:SetAttribute("EmitDelay", 0)
Blackbig_18595:SetAttribute("AuraInstance", true)
Blackbig_18595.Enabled=true
Blackbig_18595.Rate=7
Blackbig_18595.Lifetime=nr(2,2)
Blackbig_18595.Speed=nr(0.0011561978608369827,0.0011561978608369827)
Blackbig_18595.Rotation=nr(-360,360)
Blackbig_18595.RotSpeed=nr(0,0)
Blackbig_18595.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.072384,15.012180,0.000000),nsk(0.236384,30.576172,0.000000),nsk(0.534384,38.782642,0.000000),nsk(0.780384,41.470966,0.000000),nsk(1.000000,42.447254,0.000000)})
Blackbig_18595.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.073991,0.586957,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackbig_18595.Color=cs({csk(0.000000,c3(0.121569,0.000000,0.000000)),csk(1.000000,c3(0.121569,0.000000,0.000000))})
Blackbig_18595.LightEmission=0
Blackbig_18595.LightInfluence=0
Blackbig_18595.Acceleration=v3(0.000000,0.000000,0.000000)
Blackbig_18595.Drag=1
Blackbig_18595.EmissionDirection=Enum.NormalId.Top
Blackbig_18595.SpreadAngle=v2(0.006000,0.006000)
Blackbig_18595.ZOffset=-0.0024999999441206455
Blackbig_18595.Texture="rbxassetid://13580367777"
Blackbig_18595.LockedToPart=true
Blackbig_18595.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackbig_18595.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Blackbig_18595.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackbig_18595.FlipbookFramerate=nr(20,20)
Blackbig_18595.FlipbookStartRandom=false
Blackbig_18595.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local center_18596=i("ParticleEmitter", Floor_18582)
center_18596.Name="center"
center_18596:SetAttribute("VFX",true)
center_18596:SetAttribute("AuraInstance", true)
center_18596.Enabled=true
center_18596.Rate=22.464000701904297
center_18596.Lifetime=nr(0.30000001192092896,0.30000001192092896)
center_18596.Speed=nr(0.0011561978608369827,0.0011561978608369827)
center_18596.Rotation=nr(-360,360)
center_18596.RotSpeed=nr(0,0)
center_18596.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,9.603148,0.000000)})
center_18596.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.492526,0.586957,0.000000),nsk(1.000000,1.000000,0.000000)})
center_18596.Color=cs({csk(0.000000,c3(1.000000,0.215686,0.215686)),csk(1.000000,c3(1.000000,0.215686,0.215686))})
center_18596.LightEmission=1
center_18596.LightInfluence=0
center_18596.Acceleration=v3(0.000000,0.000000,0.000000)
center_18596.Drag=1
center_18596.EmissionDirection=Enum.NormalId.Top
center_18596.SpreadAngle=v2(0.006000,0.006000)
center_18596.ZOffset=0.0011249999515712261
center_18596.Texture="rbxassetid://17391818367"
center_18596.LockedToPart=true
center_18596.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
center_18596.FlipbookLayout=Enum.ParticleFlipbookLayout.None
center_18596.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
center_18596.FlipbookFramerate=nr(5,5)
center_18596.FlipbookStartRandom=false
center_18596.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.600000,0.487500)})

local Attachment_18597=i("Attachment", Floor_18582)
Attachment_18597.Name="Attachment"
Attachment_18597:SetAttribute("AuraInstance", true)
Attachment_18597.Position=v3(-15.839994,0.000000,0.000005)
Attachment_18597.Visible=false

local Attachment_18598=i("Attachment", Attachment_18597)
Attachment_18598.Name="Attachment"
Attachment_18598:SetAttribute("AuraInstance", true)
Attachment_18598.Position=v3(0.000000,0.000000,31.680000)
Attachment_18598.Visible=false

local Beam2_18599=i("Beam", Attachment_18597)
Beam2_18599.Name="Beam2"
Beam2_18599:SetAttribute("AuraInstance", true)
Beam2_18599.Enabled=true
Beam2_18599.Width0=5.399999618530273
Beam2_18599.Width1=6.299999713897705
Beam2_18599.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.107239,0.579235,0.000000),nsk(0.235925,0.333333,0.000000),nsk(0.513405,0.163934,0.000000),nsk(0.790885,0.338798,0.000000),nsk(0.884719,0.584699,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam2_18599.Color=cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Beam2_18599.CurveSize0=-20.15999984741211
Beam2_18599.CurveSize1=20.15999984741211
Beam2_18599.FaceCamera=false
Beam2_18599.LightEmission=1
Beam2_18599.LightInfluence=0
Beam2_18599.Segments=100
Beam2_18599.Texture="rbxassetid://446111271"
Beam2_18599.TextureLength=2
Beam2_18599.TextureSpeed=1.600000023841858

local Beam1_18600=i("Beam", Attachment_18597)
Beam1_18600.Name="Beam1"
Beam1_18600:SetAttribute("AuraInstance", true)
Beam1_18600.Enabled=true
Beam1_18600.Width0=5.399999618530273
Beam1_18600.Width1=6.299999713897705
Beam1_18600.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.107239,0.579235,0.000000),nsk(0.235925,0.333333,0.000000),nsk(0.513405,0.163934,0.000000),nsk(0.790885,0.338798,0.000000),nsk(0.884719,0.584699,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam1_18600.Color=cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Beam1_18600.CurveSize0=-20.15999984741211
Beam1_18600.CurveSize1=20.15999984741211
Beam1_18600.FaceCamera=false
Beam1_18600.LightEmission=0
Beam1_18600.LightInfluence=0
Beam1_18600.Segments=100
Beam1_18600.Texture="rbxassetid://14191603094"
Beam1_18600.TextureLength=0.8999999761581421
Beam1_18600.TextureSpeed=0.6000000238418579

local Beam2_18601=i("Beam", Attachment_18597)
Beam2_18601.Name="Beam2"
Beam2_18601:SetAttribute("AuraInstance", true)
Beam2_18601.Enabled=true
Beam2_18601.Width0=5.399999618530273
Beam2_18601.Width1=6.299999713897705
Beam2_18601.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.107239,0.579235,0.000000),nsk(0.235925,0.333333,0.000000),nsk(0.513405,0.163934,0.000000),nsk(0.790885,0.338798,0.000000),nsk(0.884719,0.584699,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam2_18601.Color=cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Beam2_18601.CurveSize0=-20.15999984741211
Beam2_18601.CurveSize1=20.15999984741211
Beam2_18601.FaceCamera=false
Beam2_18601.LightEmission=1
Beam2_18601.LightInfluence=0
Beam2_18601.Segments=100
Beam2_18601.Texture="rbxassetid://13463793973"
Beam2_18601.TextureLength=1
Beam2_18601.TextureSpeed=1

local Beam2_18602=i("Beam", Attachment_18597)
Beam2_18602.Name="Beam2"
Beam2_18602:SetAttribute("AuraInstance", true)
Beam2_18602.Enabled=true
Beam2_18602.Width0=6.299999713897705
Beam2_18602.Width1=6.299999713897705
Beam2_18602.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.088191,0.739130,0.000000),nsk(0.234679,0.451087,0.000000),nsk(0.501495,0.369565,0.000000),nsk(0.795964,0.429348,0.000000),nsk(0.913303,0.668478,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam2_18602.Color=cs({csk(0.000000,c3(1.000000,0.243137,0.243137)),csk(1.000000,c3(1.000000,0.243137,0.243137))})
Beam2_18602.CurveSize0=-20.15999984741211
Beam2_18602.CurveSize1=20.15999984741211
Beam2_18602.FaceCamera=false
Beam2_18602.LightEmission=1
Beam2_18602.LightInfluence=0
Beam2_18602.Segments=100
Beam2_18602.Texture="rbxassetid://14029063178"
Beam2_18602.TextureLength=2
Beam2_18602.TextureSpeed=2

local Attachment_18603=i("Attachment", Floor_18582)
Attachment_18603.Name="Attachment"
Attachment_18603:SetAttribute("AuraInstance", true)
Attachment_18603.Position=v3(15.840003,0.000000,-0.000014)
Attachment_18603.Visible=false

local Attachment_18604=i("Attachment", Attachment_18603)
Attachment_18604.Name="Attachment"
Attachment_18604:SetAttribute("AuraInstance", true)
Attachment_18604.Position=v3(0.000000,0.000000,31.680000)
Attachment_18604.Visible=false

local Beam2_18605=i("Beam", Attachment_18603)
Beam2_18605.Name="Beam2"
Beam2_18605:SetAttribute("AuraInstance", true)
Beam2_18605.Enabled=true
Beam2_18605.Width0=5.399999618530273
Beam2_18605.Width1=6.299999713897705
Beam2_18605.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.107239,0.579235,0.000000),nsk(0.235925,0.333333,0.000000),nsk(0.513405,0.163934,0.000000),nsk(0.790885,0.338798,0.000000),nsk(0.884719,0.584699,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam2_18605.Color=cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Beam2_18605.CurveSize0=-20.15999984741211
Beam2_18605.CurveSize1=20.15999984741211
Beam2_18605.FaceCamera=false
Beam2_18605.LightEmission=1
Beam2_18605.LightInfluence=0
Beam2_18605.Segments=100
Beam2_18605.Texture="rbxassetid://446111271"
Beam2_18605.TextureLength=2
Beam2_18605.TextureSpeed=1.600000023841858

local Beam1_18606=i("Beam", Attachment_18603)
Beam1_18606.Name="Beam1"
Beam1_18606:SetAttribute("AuraInstance", true)
Beam1_18606.Enabled=true
Beam1_18606.Width0=5.399999618530273
Beam1_18606.Width1=6.299999713897705
Beam1_18606.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.107239,0.579235,0.000000),nsk(0.235925,0.333333,0.000000),nsk(0.513405,0.163934,0.000000),nsk(0.790885,0.338798,0.000000),nsk(0.884719,0.584699,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam1_18606.Color=cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Beam1_18606.CurveSize0=-20.15999984741211
Beam1_18606.CurveSize1=20.15999984741211
Beam1_18606.FaceCamera=false
Beam1_18606.LightEmission=0
Beam1_18606.LightInfluence=0
Beam1_18606.Segments=100
Beam1_18606.Texture="rbxassetid://14191603094"
Beam1_18606.TextureLength=0.8999999761581421
Beam1_18606.TextureSpeed=0.6000000238418579

local Beam2_18607=i("Beam", Attachment_18603)
Beam2_18607.Name="Beam2"
Beam2_18607:SetAttribute("AuraInstance", true)
Beam2_18607.Enabled=true
Beam2_18607.Width0=5.399999618530273
Beam2_18607.Width1=6.299999713897705
Beam2_18607.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.107239,0.579235,0.000000),nsk(0.235925,0.333333,0.000000),nsk(0.513405,0.163934,0.000000),nsk(0.790885,0.338798,0.000000),nsk(0.884719,0.584699,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam2_18607.Color=cs({csk(0.000000,c3(1.000000,0.113725,0.113725)),csk(1.000000,c3(1.000000,0.113725,0.113725))})
Beam2_18607.CurveSize0=-20.15999984741211
Beam2_18607.CurveSize1=20.15999984741211
Beam2_18607.FaceCamera=false
Beam2_18607.LightEmission=1
Beam2_18607.LightInfluence=0
Beam2_18607.Segments=100
Beam2_18607.Texture="rbxassetid://13463793973"
Beam2_18607.TextureLength=1
Beam2_18607.TextureSpeed=1

local Beam2_18608=i("Beam", Attachment_18603)
Beam2_18608.Name="Beam2"
Beam2_18608:SetAttribute("AuraInstance", true)
Beam2_18608.Enabled=true
Beam2_18608.Width0=6.299999713897705
Beam2_18608.Width1=6.299999713897705
Beam2_18608.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.088191,0.739130,0.000000),nsk(0.234679,0.451087,0.000000),nsk(0.501495,0.369565,0.000000),nsk(0.795964,0.429348,0.000000),nsk(0.913303,0.668478,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam2_18608.Color=cs({csk(0.000000,c3(1.000000,0.243137,0.243137)),csk(1.000000,c3(1.000000,0.243137,0.243137))})
Beam2_18608.CurveSize0=-20.15999984741211
Beam2_18608.CurveSize1=20.15999984741211
Beam2_18608.FaceCamera=false
Beam2_18608.LightEmission=1
Beam2_18608.LightInfluence=0
Beam2_18608.Segments=100
Beam2_18608.Texture="rbxassetid://14029063178"
Beam2_18608.TextureLength=2
Beam2_18608.TextureSpeed=2

local circle_18609=i("ParticleEmitter", Floor_18582)
circle_18609.Name="circle"
circle_18609:SetAttribute("EmitCount", 15)
circle_18609:SetAttribute("AuraInstance", true)
circle_18609.Enabled=true
circle_18609.Rate=1
circle_18609.Lifetime=nr(2,2)
circle_18609.Speed=nr(0.0018000000854954123,0.0018000000854954123)
circle_18609.Rotation=nr(0,0)
circle_18609.RotSpeed=nr(180,180)
circle_18609.Size=ns({nsk(0.000000,14.400000,0.000000),nsk(1.000000,14.400000,0.000000)})
circle_18609.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494021,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
circle_18609.Color=cs({csk(0.000000,c3(1.000000,0.207843,0.207843)),csk(1.000000,c3(1.000000,0.207843,0.207843))})
circle_18609.LightEmission=1
circle_18609.LightInfluence=0
circle_18609.Acceleration=v3(0.000000,0.000000,0.000000)
circle_18609.Drag=0
circle_18609.EmissionDirection=Enum.NormalId.Top
circle_18609.SpreadAngle=v2(0.006000,0.006000)
circle_18609.ZOffset=0.011374999769032001
circle_18609.Texture="rbxassetid://97601800196735"
circle_18609.LockedToPart=true
circle_18609.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
circle_18609.FlipbookLayout=Enum.ParticleFlipbookLayout.None
circle_18609.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
circle_18609.FlipbookFramerate=nr(1,1)
circle_18609.FlipbookStartRandom=true
circle_18609.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local circle_18610=i("ParticleEmitter", Floor_18582)
circle_18610.Name="circle"
circle_18610:SetAttribute("EmitCount", 15)
circle_18610:SetAttribute("AuraInstance", true)
circle_18610.Enabled=true
circle_18610.Rate=1
circle_18610.Lifetime=nr(2,2)
circle_18610.Speed=nr(0.0018000000854954123,0.0018000000854954123)
circle_18610.Rotation=nr(0,0)
circle_18610.RotSpeed=nr(180,180)
circle_18610.Size=ns({nsk(0.000000,9.000000,0.000000),nsk(1.000000,9.000000,0.000000)})
circle_18610.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494021,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
circle_18610.Color=cs({csk(0.000000,c3(1.000000,0.207843,0.207843)),csk(1.000000,c3(1.000000,0.207843,0.207843))})
circle_18610.LightEmission=1
circle_18610.LightInfluence=0
circle_18610.Acceleration=v3(0.000000,0.000000,0.000000)
circle_18610.Drag=0
circle_18610.EmissionDirection=Enum.NormalId.Top
circle_18610.SpreadAngle=v2(0.006000,0.006000)
circle_18610.ZOffset=0.011374999769032001
circle_18610.Texture="rbxassetid://13280240056"
circle_18610.LockedToPart=true
circle_18610.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
circle_18610.FlipbookLayout=Enum.ParticleFlipbookLayout.None
circle_18610.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
circle_18610.FlipbookFramerate=nr(1,1)
circle_18610.FlipbookStartRandom=true
circle_18610.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local circle_18611=i("ParticleEmitter", Floor_18582)
circle_18611.Name="circle"
circle_18611:SetAttribute("EmitCount", 15)
circle_18611:SetAttribute("AuraInstance", true)
circle_18611.Enabled=true
circle_18611.Rate=1
circle_18611.Lifetime=nr(2,2)
circle_18611.Speed=nr(0.0018000000854954123,0.0018000000854954123)
circle_18611.Rotation=nr(0,0)
circle_18611.RotSpeed=nr(180,180)
circle_18611.Size=ns({nsk(0.000000,14.400000,0.000000),nsk(1.000000,14.400000,0.000000)})
circle_18611.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494021,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
circle_18611.Color=cs({csk(0.000000,c3(1.000000,0.207843,0.207843)),csk(1.000000,c3(1.000000,0.207843,0.207843))})
circle_18611.LightEmission=1
circle_18611.LightInfluence=0
circle_18611.Acceleration=v3(0.000000,0.000000,0.000000)
circle_18611.Drag=0
circle_18611.EmissionDirection=Enum.NormalId.Top
circle_18611.SpreadAngle=v2(0.006000,0.006000)
circle_18611.ZOffset=0.011374999769032001
circle_18611.Texture="rbxassetid://92606481798283"
circle_18611.LockedToPart=true
circle_18611.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
circle_18611.FlipbookLayout=Enum.ParticleFlipbookLayout.None
circle_18611.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
circle_18611.FlipbookFramerate=nr(1,1)
circle_18611.FlipbookStartRandom=true
circle_18611.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})






local Spin1_18628=i("Attachment", ring)
Spin1_18628.Name="Spin1"
Spin1_18628:SetAttribute("AuraInstance", true)
Spin1_18628.Position=v3(0,0,0)
Spin1_18628.Visible=false

local Trail_18629=i("Trail", Spin1_18628)
Trail_18629.Name="Trail"
Trail_18629:SetAttribute("AuraInstance", true)
Trail_18629.Enabled=true
Trail_18629.Lifetime=1
Trail_18629.FaceCamera=true
Trail_18629.WidthScale=ns({nsk(0.000000,0.938250,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18629.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.500000,0.000000)})
Trail_18629.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
Trail_18629.Texture="https://assetgame.roblox.com/asset/?id=12713360851&assetName=TrailElectric24"
Trail_18629.TextureLength=1.0800000429153442
Trail_18629.LightEmission=0.6000000238418579
Trail_18629.LightInfluence=0

local Attachment1_18630=i("Attachment", Spin1_18628)
Attachment1_18630.Name="Attachment1"
Attachment1_18630:SetAttribute("AuraInstance", true)
Attachment1_18630.Position=v3(0.000000,1.080000,0.000000)
Attachment1_18630.Visible=false

local Attachment0_18631=i("Attachment", Spin1_18628)
Attachment0_18631.Name="Attachment0"
Attachment0_18631:SetAttribute("AuraInstance", true)
Attachment0_18631.Position=v3(0.000000,-1.080000,0.000000)
Attachment0_18631.Visible=false

local Blackring_18632=i("ParticleEmitter", Spin1_18628)
Blackring_18632.Name="Black ring"
Blackring_18632:SetAttribute("AuraInstance", true)
Blackring_18632.Enabled=true
Blackring_18632.Rate=50
Blackring_18632.Lifetime=nr(0.800000011920929,0.800000011920929)
Blackring_18632.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Blackring_18632.Rotation=nr(-360,360)
Blackring_18632.RotSpeed=nr(0,0)
Blackring_18632.Size=ns({nsk(0.000000,11.664001,0.000000),nsk(1.000000,0.000000,0.000000)})
Blackring_18632.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.839312,0.266304,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackring_18632.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Blackring_18632.LightEmission=-2
Blackring_18632.LightInfluence=0
Blackring_18632.Acceleration=v3(0.000000,0.000000,0.000000)
Blackring_18632.Drag=0
Blackring_18632.EmissionDirection=Enum.NormalId.Top
Blackring_18632.SpreadAngle=v2(6.000000,6.000000)
Blackring_18632.ZOffset=7
Blackring_18632.Texture="rbxassetid://122460061985642"
Blackring_18632.LockedToPart=true
Blackring_18632.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackring_18632.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blackring_18632.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackring_18632.FlipbookFramerate=nr(24,24)
Blackring_18632.FlipbookStartRandom=false
Blackring_18632.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Star_18633=i("ParticleEmitter", Spin1_18628)
Star_18633.Name="Star"
Star_18633:SetAttribute("AuraInstance", true)
Star_18633.Enabled=true
Star_18633.Rate=7
Star_18633.Lifetime=nr(1,1)
Star_18633.Speed=nr(0,0)
Star_18633.Rotation=nr(0,0)
Star_18633.RotSpeed=nr(0,0)
Star_18633.Size=ns({nsk(0.000000,8.640000,0.000000),nsk(0.100000,7.515756,0.000000),nsk(0.200000,6.439473,0.000000),nsk(0.300000,5.423488,0.000000),nsk(0.400000,4.477119,0.000000),nsk(0.500000,3.603080,0.000000),nsk(0.600000,2.796101,0.000000),nsk(0.700000,2.044976,0.000000),nsk(0.800000,1.336395,0.000000),nsk(0.900000,0.658043,0.000000),nsk(1.000000,0.000000,0.000000)})
Star_18633.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507483,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Star_18633.Color=cs({csk(0.000000,c3(0.600000,0.129412,0.137255)),csk(1.000000,c3(0.301961,0.054902,0.062745))})
Star_18633.LightEmission=1
Star_18633.LightInfluence=0
Star_18633.Acceleration=v3(0.000000,0.000000,0.000000)
Star_18633.Drag=1
Star_18633.EmissionDirection=Enum.NormalId.Top
Star_18633.SpreadAngle=v2(5.000000,5.000000)
Star_18633.ZOffset=0
Star_18633.Texture="rbxassetid://14590086212"
Star_18633.LockedToPart=true
Star_18633.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
Star_18633.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star_18633.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Star_18633.FlipbookFramerate=nr(5,5)
Star_18633.FlipbookStartRandom=false
Star_18633.Squash=ns({nsk(0.000000,0.250000,0.000000),nsk(1.000000,0.250000,0.000000)})

local stars_18634=i("ParticleEmitter", Spin1_18628)
stars_18634.Name="stars"
stars_18634:SetAttribute("AuraInstance", true)
stars_18634.Enabled=true
stars_18634.Rate=30
stars_18634.Lifetime=nr(1,1)
stars_18634.Speed=nr(0.02159999869763851,0.02159999869763851)
stars_18634.Rotation=nr(90,90)
stars_18634.RotSpeed=nr(0,0)
stars_18634.Size=ns({nsk(0.000000,7.560000,0.000000),nsk(1.000000,7.560000,0.000000)})
stars_18634.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502494,0.843750,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18634.Color=cs({csk(0.000000,c3(0.470588,0.047059,0.047059)),csk(1.000000,c3(0.470588,0.047059,0.047059))})
stars_18634.LightEmission=-9
stars_18634.LightInfluence=0
stars_18634.Acceleration=v3(0.000000,0.000000,0.000000)
stars_18634.Drag=0.8999999761581421
stars_18634.EmissionDirection=Enum.NormalId.Top
stars_18634.SpreadAngle=v2(180.000000,0.000000)
stars_18634.ZOffset=-2
stars_18634.Texture="rbxassetid://8037777212"
stars_18634.LockedToPart=true
stars_18634.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_18634.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_18634.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_18634.FlipbookFramerate=nr(5,5)
stars_18634.FlipbookStartRandom=false
stars_18634.Squash=ns({nsk(0.000000,-0.600000,0.000000),nsk(1.000000,-0.600000,0.000000)})

local Cresent_18635=i("ParticleEmitter", Spin1_18628)
Cresent_18635.Name="Cresent"
Cresent_18635:SetAttribute("AuraInstance", true)
Cresent_18635.Enabled=true
Cresent_18635.Rate=19
Cresent_18635.Lifetime=nr(0.800000011920929,0.800000011920929)
Cresent_18635.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Cresent_18635.Rotation=nr(-360,360)
Cresent_18635.RotSpeed=nr(0,0)
Cresent_18635.Size=ns({nsk(0.000000,12.960000,0.000000),nsk(1.000000,0.000000,0.000000)})
Cresent_18635.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.855007,0.836957,0.000000),nsk(1.000000,1.000000,0.000000)})
Cresent_18635.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Cresent_18635.LightEmission=-9
Cresent_18635.LightInfluence=0.4000000059604645
Cresent_18635.Acceleration=v3(0.000000,0.000000,0.000000)
Cresent_18635.Drag=0
Cresent_18635.EmissionDirection=Enum.NormalId.Top
Cresent_18635.SpreadAngle=v2(6.000000,6.000000)
Cresent_18635.ZOffset=8
Cresent_18635.Texture="rbxassetid://13992197350"
Cresent_18635.LockedToPart=true
Cresent_18635.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cresent_18635.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Cresent_18635.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cresent_18635.FlipbookFramerate=nr(24,24)
Cresent_18635.FlipbookStartRandom=false
Cresent_18635.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local stars_18636=i("ParticleEmitter", Spin1_18628)
stars_18636.Name="stars"
stars_18636:SetAttribute("AuraInstance", true)
stars_18636.Enabled=true
stars_18636.Rate=1
stars_18636.Lifetime=nr(2,2)
stars_18636.Speed=nr(0.02159999869763851,0.02159999869763851)
stars_18636.Rotation=nr(0,0)
stars_18636.RotSpeed=nr(0,0)
stars_18636.Size=ns({nsk(0.000000,9.720000,0.000000),nsk(1.000000,9.720000,0.000000)})
stars_18636.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.509383,0.819672,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18636.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
stars_18636.LightEmission=1
stars_18636.LightInfluence=0
stars_18636.Acceleration=v3(0.000000,0.000000,0.000000)
stars_18636.Drag=0.8999999761581421
stars_18636.EmissionDirection=Enum.NormalId.Top
stars_18636.SpreadAngle=v2(180.000000,0.000000)
stars_18636.ZOffset=6
stars_18636.Texture="rbxassetid://82921243876307"
stars_18636.LockedToPart=true
stars_18636.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_18636.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_18636.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_18636.FlipbookFramerate=nr(5,5)
stars_18636.FlipbookStartRandom=false
stars_18636.Squash=ns({nsk(0.000000,-2.000000,0.000000),nsk(1.000000,-2.000000,0.000000)})

local dfogd_18637=i("ParticleEmitter", Spin1_18628)
dfogd_18637.Name="dfogd"
dfogd_18637:SetAttribute("AuraInstance", true)
dfogd_18637.Enabled=true
dfogd_18637.Rate=36
dfogd_18637.Lifetime=nr(0.20000000298023224,0.20000000298023224)
dfogd_18637.Speed=nr(0.02159999869763851,0.02159999869763851)
dfogd_18637.Rotation=nr(-90,90)
dfogd_18637.RotSpeed=nr(0,0)
dfogd_18637.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,17.280001,0.000000)})
dfogd_18637.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(0.850523,0.907609,0.000000),nsk(1.000000,1.000000,0.000000)})
dfogd_18637.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
dfogd_18637.LightEmission=-3
dfogd_18637.LightInfluence=0
dfogd_18637.Acceleration=v3(0.000000,0.000000,0.000000)
dfogd_18637.Drag=0.8999999761581421
dfogd_18637.EmissionDirection=Enum.NormalId.Top
dfogd_18637.SpreadAngle=v2(180.000000,0.000000)
dfogd_18637.ZOffset=-6
dfogd_18637.Texture="https://assetgame.roblox.com/asset/?id=11037515093&assetName=Magic3"
dfogd_18637.LockedToPart=true
dfogd_18637.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
dfogd_18637.FlipbookLayout=Enum.ParticleFlipbookLayout.None
dfogd_18637.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dfogd_18637.FlipbookFramerate=nr(5,5)
dfogd_18637.FlipbookStartRandom=false
dfogd_18637.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local plosoirion_18638=i("Attachment", Spin1_18628)
plosoirion_18638.Name="plosoirion"
plosoirion_18638:SetAttribute("AuraInstance", true)
plosoirion_18638.Position=v3(0.000000,0.000000,0.000000)
plosoirion_18638.Visible=false

local Crescents_18639=i("ParticleEmitter", plosoirion_18638)
Crescents_18639.Name="Crescents"
Crescents_18639:SetAttribute("AuraInstance", true)
Crescents_18639:SetAttribute("VFX",true)
Crescents_18639:SetAttribute("EmitCount", "8")
Crescents_18639.Enabled=false
Crescents_18639.Rate=10
Crescents_18639.Lifetime=nr(0.4000000059604645,0.8999999761581421)
Crescents_18639.Speed=nr(0.010799999348819256,0.010799999348819256)
Crescents_18639.Rotation=nr(-360,360)
Crescents_18639.RotSpeed=nr(0.0020000000949949026,0.0020000000949949026)
Crescents_18639.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.056000,1.904161,0.000000),nsk(0.112000,3.698618,0.000000),nsk(0.168000,5.383370,0.000000),nsk(0.224000,6.958416,0.000000),nsk(0.280000,8.423759,0.000000),nsk(0.336000,9.779397,0.000000),nsk(0.392000,11.025329,0.000000),nsk(0.448000,12.161557,0.000000),nsk(0.504000,13.188081,0.000000),nsk(0.560000,14.104899,0.000000),nsk(0.616000,14.912012,0.000000),nsk(0.672000,15.609421,0.000000),nsk(0.728000,16.197124,0.000000),nsk(0.784000,16.675123,0.000000),nsk(0.840000,17.043419,0.000000),nsk(0.896000,17.302010,0.000000),nsk(0.952000,17.450893,0.000000),nsk(1.000000,17.491194,0.000000)})
Crescents_18639.Transparency=ns({nsk(0.000000,0.712500,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescents_18639.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Crescents_18639.LightEmission=-2
Crescents_18639.LightInfluence=0
Crescents_18639.Acceleration=v3(0.000000,0.000000,0.000000)
Crescents_18639.Drag=3.5
Crescents_18639.EmissionDirection=Enum.NormalId.Top
Crescents_18639.SpreadAngle=v2(360.000000,360.000000)
Crescents_18639.ZOffset=6
Crescents_18639.Texture="rbxassetid://15314650876"
Crescents_18639.LockedToPart=true
Crescents_18639.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Crescents_18639.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Crescents_18639.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Crescents_18639.FlipbookFramerate=nr(1,1)
Crescents_18639.FlipbookStartRandom=false
Crescents_18639.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Shockwave_18640=i("ParticleEmitter", plosoirion_18638)
Shockwave_18640.Name="Shockwave"
Shockwave_18640:SetAttribute("EmitCount", "1")
Shockwave_18640:SetAttribute("AuraInstance", true)
Shockwave_18640.Enabled=false
Shockwave_18640.Rate=1
Shockwave_18640.Lifetime=nr(0.4000000059604645,1)
Shockwave_18640.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18640.Rotation=nr(-360,360)
Shockwave_18640.RotSpeed=nr(0,0)
Shockwave_18640.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18640.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18640.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18640.LightEmission=-1
Shockwave_18640.LightInfluence=0
Shockwave_18640.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18640.Drag=0
Shockwave_18640.EmissionDirection=Enum.NormalId.Top
Shockwave_18640.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18640.ZOffset=10
Shockwave_18640.Texture="rbxassetid://14366190868"
Shockwave_18640.LockedToPart=true
Shockwave_18640.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18640.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Shockwave_18640.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Shockwave_18640.FlipbookFramerate=nr(1,1)
Shockwave_18640.FlipbookStartRandom=false
Shockwave_18640.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Shockwave_18641=i("ParticleEmitter", plosoirion_18638)
Shockwave_18641.Name="Shockwave"
Shockwave_18641:SetAttribute("EmitCount", "1")
Shockwave_18641:SetAttribute("AuraInstance", true)
Shockwave_18641.Enabled=false
Shockwave_18641.Rate=1
Shockwave_18641.Lifetime=nr(0.4000000059604645,1)
Shockwave_18641.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18641.Rotation=nr(-360,360)
Shockwave_18641.RotSpeed=nr(0,0)
Shockwave_18641.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18641.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18641.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18641.LightEmission=-1
Shockwave_18641.LightInfluence=0
Shockwave_18641.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18641.Drag=0
Shockwave_18641.EmissionDirection=Enum.NormalId.Top
Shockwave_18641.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18641.ZOffset=10
Shockwave_18641.Texture="rbxassetid://15314587909"
Shockwave_18641.LockedToPart=true
Shockwave_18641.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18641.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Shockwave_18641.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Shockwave_18641.FlipbookFramerate=nr(1,1)
Shockwave_18641.FlipbookStartRandom=false
Shockwave_18641.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Shockwave_18642=i("ParticleEmitter", plosoirion_18638)
Shockwave_18642.Name="Shockwave"
Shockwave_18642:SetAttribute("EmitCount", "1")
Shockwave_18642:SetAttribute("AuraInstance", true)
Shockwave_18642.Enabled=false
Shockwave_18642.Rate=1
Shockwave_18642.Lifetime=nr(0.4000000059604645,1)
Shockwave_18642.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18642.Rotation=nr(-360,360)
Shockwave_18642.RotSpeed=nr(0,0)
Shockwave_18642.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18642.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18642.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18642.LightEmission=0
Shockwave_18642.LightInfluence=0
Shockwave_18642.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18642.Drag=0
Shockwave_18642.EmissionDirection=Enum.NormalId.Top
Shockwave_18642.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18642.ZOffset=10
Shockwave_18642.Texture="rbxassetid://14393243408"
Shockwave_18642.LockedToPart=true
Shockwave_18642.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18642.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Shockwave_18642.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Shockwave_18642.FlipbookFramerate=nr(1,1)
Shockwave_18642.FlipbookStartRandom=false
Shockwave_18642.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Shockwave_18643=i("ParticleEmitter", plosoirion_18638)
Shockwave_18643.Name="Shockwave"
Shockwave_18643:SetAttribute("EmitCount", "1")
Shockwave_18643:SetAttribute("AuraInstance", true)
Shockwave_18643.Enabled=false
Shockwave_18643.Rate=1
Shockwave_18643.Lifetime=nr(0.4000000059604645,1)
Shockwave_18643.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18643.Rotation=nr(-360,360)
Shockwave_18643.RotSpeed=nr(0,0)
Shockwave_18643.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18643.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18643.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18643.LightEmission=-2
Shockwave_18643.LightInfluence=0
Shockwave_18643.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18643.Drag=0
Shockwave_18643.EmissionDirection=Enum.NormalId.Top
Shockwave_18643.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18643.ZOffset=10
Shockwave_18643.Texture="rbxassetid://17323225068"
Shockwave_18643.LockedToPart=true
Shockwave_18643.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18643.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Shockwave_18643.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Shockwave_18643.FlipbookFramerate=nr(1,1)
Shockwave_18643.FlipbookStartRandom=false
Shockwave_18643.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Stretched_18644=i("ParticleEmitter", plosoirion_18638)
Stretched_18644.Name="Stretched"
Stretched_18644:SetAttribute("EmitCount", 60)
Stretched_18644:SetAttribute("AuraInstance", true)
Stretched_18644.Enabled=false
Stretched_18644.Rate=9
Stretched_18644.Lifetime=nr(1,2)
Stretched_18644.Speed=nr(43.19999694824219,54.000003814697266)
Stretched_18644.Rotation=nr(90,90)
Stretched_18644.RotSpeed=nr(0,0)
Stretched_18644.Size=ns({nsk(0.000000,1.012500,0.985743),nsk(1.000000,0.000000,0.000000)})
Stretched_18644.Transparency=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
Stretched_18644.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Stretched_18644.LightEmission=-9
Stretched_18644.LightInfluence=0
Stretched_18644.Acceleration=v3(0.000000,-28.080000,0.000000)
Stretched_18644.Drag=4
Stretched_18644.EmissionDirection=Enum.NormalId.Top
Stretched_18644.SpreadAngle=v2(360.000000,360.000000)
Stretched_18644.ZOffset=0.10000000149011612
Stretched_18644.Texture="rbxassetid://6909741538"
Stretched_18644.LockedToPart=true
Stretched_18644.Orientation=Enum.ParticleOrientation.VelocityParallel
Stretched_18644.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Stretched_18644.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Stretched_18644.FlipbookFramerate=nr(1,1)
Stretched_18644.FlipbookStartRandom=false
Stretched_18644.Squash=ns({nsk(0.000000,1.524590,0.000000),nsk(1.000000,2.600000,0.000000)})

local Crescents_18645=i("ParticleEmitter", plosoirion_18638)
Crescents_18645.Name="Crescents"
Crescents_18645:SetAttribute("AuraInstance", true)
Crescents_18645:SetAttribute("VFX",true)
Crescents_18645:SetAttribute("EmitCount", "8")
Crescents_18645.Enabled=false
Crescents_18645.Rate=10
Crescents_18645.Lifetime=nr(0.4000000059604645,0.8999999761581421)
Crescents_18645.Speed=nr(0.010799999348819256,0.010799999348819256)
Crescents_18645.Rotation=nr(-360,360)
Crescents_18645.RotSpeed=nr(0.0020000000949949026,0.0020000000949949026)
Crescents_18645.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.056000,1.904161,0.000000),nsk(0.112000,3.698618,0.000000),nsk(0.168000,5.383370,0.000000),nsk(0.224000,6.958416,0.000000),nsk(0.280000,8.423759,0.000000),nsk(0.336000,9.779397,0.000000),nsk(0.392000,11.025329,0.000000),nsk(0.448000,12.161557,0.000000),nsk(0.504000,13.188081,0.000000),nsk(0.560000,14.104899,0.000000),nsk(0.616000,14.912012,0.000000),nsk(0.672000,15.609421,0.000000),nsk(0.728000,16.197124,0.000000),nsk(0.784000,16.675123,0.000000),nsk(0.840000,17.043419,0.000000),nsk(0.896000,17.302010,0.000000),nsk(0.952000,17.450893,0.000000),nsk(1.000000,17.491194,0.000000)})
Crescents_18645.Transparency=ns({nsk(0.000000,0.712500,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescents_18645.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Crescents_18645.LightEmission=-3
Crescents_18645.LightInfluence=0
Crescents_18645.Acceleration=v3(0.000000,0.000000,0.000000)
Crescents_18645.Drag=3.5
Crescents_18645.EmissionDirection=Enum.NormalId.Top
Crescents_18645.SpreadAngle=v2(360.000000,360.000000)
Crescents_18645.ZOffset=6
Crescents_18645.Texture="rbxassetid://73986130554150"
Crescents_18645.LockedToPart=true
Crescents_18645.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Crescents_18645.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Crescents_18645.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Crescents_18645.FlipbookFramerate=nr(1,1)
Crescents_18645.FlipbookStartRandom=false
Crescents_18645.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blood2_18646=i("ParticleEmitter", plosoirion_18638)
Blood2_18646.Name="Blood2"
Blood2_18646:SetAttribute("EmitCount", 85)
Blood2_18646:SetAttribute("AuraInstance", true)
Blood2_18646.Enabled=false
Blood2_18646.Rate=1
Blood2_18646.Lifetime=nr(0.8500000238418579,0.8500000238418579)
Blood2_18646.Speed=nr(21.599998474121094,32.39999771118164)
Blood2_18646.Rotation=nr(90,90)
Blood2_18646.RotSpeed=nr(0,0)
Blood2_18646.Size=ns({nsk(0.000000,0.135000,0.067500),nsk(1.000000,0.000000,0.000000)})
Blood2_18646.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Blood2_18646.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Blood2_18646.LightEmission=-9
Blood2_18646.LightInfluence=0
Blood2_18646.Acceleration=v3(0.000000,-27.000002,0.000000)
Blood2_18646.Drag=0
Blood2_18646.EmissionDirection=Enum.NormalId.Top
Blood2_18646.SpreadAngle=v2(360.000000,-360.000000)
Blood2_18646.ZOffset=2
Blood2_18646.Texture="rbxassetid://1084982817"
Blood2_18646.LockedToPart=false
Blood2_18646.Orientation=Enum.ParticleOrientation.VelocityParallel
Blood2_18646.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blood2_18646.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blood2_18646.FlipbookFramerate=nr(1,1)
Blood2_18646.FlipbookStartRandom=false
Blood2_18646.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Debris_18647=i("ParticleEmitter", plosoirion_18638)
Debris_18647.Name="Debris"
Debris_18647:SetAttribute("EmitCount", 50)
Debris_18647:SetAttribute("AuraInstance", true)
Debris_18647.Enabled=false
Debris_18647.Rate=1
Debris_18647.Lifetime=nr(1,2)
Debris_18647.Speed=nr(32.39999771118164,43.19999694824219)
Debris_18647.Rotation=nr(-360,360)
Debris_18647.RotSpeed=nr(0,0)
Debris_18647.Size=ns({nsk(0.000000,0.270000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_18647.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Debris_18647.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Debris_18647.LightEmission=-9
Debris_18647.LightInfluence=0
Debris_18647.Acceleration=v3(0.000000,-16.199999,0.000000)
Debris_18647.Drag=6
Debris_18647.EmissionDirection=Enum.NormalId.Top
Debris_18647.SpreadAngle=v2(360.000000,-360.000000)
Debris_18647.ZOffset=2
Debris_18647.Texture="rbxassetid://5561954395"
Debris_18647.LockedToPart=false
Debris_18647.Orientation=Enum.ParticleOrientation.FacingCamera
Debris_18647.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debris_18647.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Debris_18647.FlipbookFramerate=nr(1,1)
Debris_18647.FlipbookStartRandom=false
Debris_18647.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Debris_18648=i("ParticleEmitter", plosoirion_18638)
Debris_18648.Name="Debris"
Debris_18648:SetAttribute("EmitCount", 50)
Debris_18648:SetAttribute("AuraInstance", true)
Debris_18648.Enabled=false
Debris_18648.Rate=1
Debris_18648.Lifetime=nr(1,2)
Debris_18648.Speed=nr(32.39999771118164,43.19999694824219)
Debris_18648.Rotation=nr(-360,360)
Debris_18648.RotSpeed=nr(0,0)
Debris_18648.Size=ns({nsk(0.000000,0.270000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_18648.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Debris_18648.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Debris_18648.LightEmission=-9
Debris_18648.LightInfluence=0
Debris_18648.Acceleration=v3(0.000000,-16.199999,0.000000)
Debris_18648.Drag=6
Debris_18648.EmissionDirection=Enum.NormalId.Top
Debris_18648.SpreadAngle=v2(360.000000,-360.000000)
Debris_18648.ZOffset=2
Debris_18648.Texture="rbxassetid://5561954395"
Debris_18648.LockedToPart=false
Debris_18648.Orientation=Enum.ParticleOrientation.FacingCamera
Debris_18648.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debris_18648.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Debris_18648.FlipbookFramerate=nr(1,1)
Debris_18648.FlipbookStartRandom=false
Debris_18648.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Pulse_18649=i("ParticleEmitter", plosoirion_18638)
Pulse_18649.Name="Pulse"
Pulse_18649:SetAttribute("EmitCount", 1)
Pulse_18649:SetAttribute("AuraInstance", true)
Pulse_18649.Enabled=false
Pulse_18649.Rate=1
Pulse_18649.Lifetime=nr(0.4000000059604645,0.4000000059604645)
Pulse_18649.Speed=nr(0.0013874374562874436,0.0013874374562874436)
Pulse_18649.Rotation=nr(-1000,1000)
Pulse_18649.RotSpeed=nr(0,0)
Pulse_18649.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,2.984332,0.000000),nsk(0.200000,5.637245,0.000000),nsk(0.300000,7.984483,0.000000),nsk(0.400000,10.056222,0.000000),nsk(0.500000,11.884081,0.000000),nsk(0.600000,13.498939,0.000000),nsk(0.700000,14.929554,0.000000),nsk(0.800000,16.201857,0.000000),nsk(0.900000,17.338717,0.000000),nsk(1.000000,18.360001,0.000000)})
Pulse_18649.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498000,0.994000,0.000000),nsk(1.000000,1.000000,0.000000)})
Pulse_18649.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Pulse_18649.LightEmission=1
Pulse_18649.LightInfluence=0
Pulse_18649.Acceleration=v3(0.000000,0.000000,0.000000)
Pulse_18649.Drag=1
Pulse_18649.EmissionDirection=Enum.NormalId.Top
Pulse_18649.SpreadAngle=v2(5.000000,5.000000)
Pulse_18649.ZOffset=0
Pulse_18649.Texture="http://www.roblox.com/asset/?id=7185003058"
Pulse_18649.LockedToPart=true
Pulse_18649.Orientation=Enum.ParticleOrientation.FacingCamera
Pulse_18649.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Pulse_18649.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Pulse_18649.FlipbookFramerate=nr(5,5)
Pulse_18649.FlipbookStartRandom=false
Pulse_18649.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local explosionin_18650=i("ParticleEmitter", plosoirion_18638)
explosionin_18650.Name="explosionin"
explosionin_18650:SetAttribute("EmitCount", 2)
explosionin_18650:SetAttribute("AuraInstance", true)
explosionin_18650.Enabled=false
explosionin_18650.Rate=1
explosionin_18650.Lifetime=nr(0.8500000238418579,0.8500000238418579)
explosionin_18650.Speed=nr(0,0)
explosionin_18650.Rotation=nr(-360,360)
explosionin_18650.RotSpeed=nr(0,0)
explosionin_18650.Size=ns({nsk(0.000000,8.640000,5.400000),nsk(1.000000,0.000000,0.000000)})
explosionin_18650.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.193850,0.203390,0.000000),nsk(1.000000,1.000000,0.000000)})
explosionin_18650.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
explosionin_18650.LightEmission=1
explosionin_18650.LightInfluence=0
explosionin_18650.Acceleration=v3(0.000000,0.000000,0.000000)
explosionin_18650.Drag=0
explosionin_18650.EmissionDirection=Enum.NormalId.Top
explosionin_18650.SpreadAngle=v2(0.000000,0.000000)
explosionin_18650.ZOffset=12
explosionin_18650.Texture="https://assetgame.roblox.com/asset/?id=12363778394&assetName=flare_4"
explosionin_18650.LockedToPart=true
explosionin_18650.Orientation=Enum.ParticleOrientation.FacingCamera
explosionin_18650.FlipbookLayout=Enum.ParticleFlipbookLayout.None
explosionin_18650.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
explosionin_18650.FlipbookFramerate=nr(1,1)
explosionin_18650.FlipbookStartRandom=false
explosionin_18650.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blood_18651=i("ParticleEmitter", plosoirion_18638)
Blood_18651.Name="Blood"
Blood_18651:SetAttribute("EmitCount", 45)
Blood_18651:SetAttribute("AuraInstance", true)
Blood_18651.Enabled=false
Blood_18651.Rate=1
Blood_18651.Lifetime=nr(0.8500000238418579,0.8500000238418579)
Blood_18651.Speed=nr(14.039999961853027,28.079999923706055)
Blood_18651.Rotation=nr(90,90)
Blood_18651.RotSpeed=nr(0,0)
Blood_18651.Size=ns({nsk(0.000000,1.215000,0.674999),nsk(1.000000,0.000000,0.000000)})
Blood_18651.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Blood_18651.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Blood_18651.LightEmission=-9
Blood_18651.LightInfluence=0
Blood_18651.Acceleration=v3(0.000000,-27.000002,0.000000)
Blood_18651.Drag=0
Blood_18651.EmissionDirection=Enum.NormalId.Top
Blood_18651.SpreadAngle=v2(360.000000,-360.000000)
Blood_18651.ZOffset=2
Blood_18651.Texture="https://assetgame.roblox.com/asset/?id=12363818754&assetName=lines_1"
Blood_18651.LockedToPart=false
Blood_18651.Orientation=Enum.ParticleOrientation.VelocityParallel
Blood_18651.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blood_18651.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blood_18651.FlipbookFramerate=nr(1,1)
Blood_18651.FlipbookStartRandom=false
Blood_18651.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fog_18652=i("ParticleEmitter", Spin1_18628)
Fog_18652.Name="Fog"
Fog_18652:SetAttribute("EmitDelay", 0)
Fog_18652:SetAttribute("AuraInstance", true)
Fog_18652.Enabled=true
Fog_18652.Rate=40
Fog_18652.Lifetime=nr(0.8999999761581421,0.8999999761581421)
Fog_18652.Speed=nr(15.120000839233398,20.520002365112305)
Fog_18652.Rotation=nr(-1000,1000)
Fog_18652.RotSpeed=nr(0,0)
Fog_18652.Size=ns({nsk(0.000000,0.778378,0.389189),nsk(1.000000,0.000000,0.000000)})
Fog_18652.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.470509,0.923497,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_18652.Color=cs({csk(0.000000,c3(1.000000,0.352941,0.352941)),csk(1.000000,c3(1.000000,0.352941,0.352941))})
Fog_18652.LightEmission=1
Fog_18652.LightInfluence=0
Fog_18652.Acceleration=v3(0.000000,0.000000,0.000000)
Fog_18652.Drag=1
Fog_18652.EmissionDirection=Enum.NormalId.Right
Fog_18652.SpreadAngle=v2(0.000000,180.000000)
Fog_18652.ZOffset=0.23000000417232513
Fog_18652.Texture="rbxassetid://14050038331"
Fog_18652.LockedToPart=true
Fog_18652.Orientation=Enum.ParticleOrientation.FacingCamera
Fog_18652.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Fog_18652.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Fog_18652.FlipbookFramerate=nr(20,20)
Fog_18652.FlipbookStartRandom=false
Fog_18652.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local BEAM_18653=i("Attachment", Spin1_18628)
BEAM_18653.Name="BEAM"
BEAM_18653:SetAttribute("AuraInstance", true)
BEAM_18653.Position=v3(-0.000000,-1.036800,0.000000)
BEAM_18653.Visible=false

local Attachment_18654=i("Attachment", BEAM_18653)
Attachment_18654.Name="Attachment"
Attachment_18654:SetAttribute("AuraInstance", true)
Attachment_18654.Position=v3(0.000000,8.704801,0.000000)
Attachment_18654.Visible=false

local Blu_18655=i("Beam", BEAM_18653)
Blu_18655.Name="Blu"
Blu_18655:SetAttribute("EmitDelay", 0)
Blu_18655:SetAttribute("AuraInstance", true)
Blu_18655:SetAttribute("EmitDuration", 2)
Blu_18655.Enabled=true
Blu_18655.Width0=3.240000009536743
Blu_18655.Width1=1.0800000429153442
Blu_18655.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.153214,0.945355,0.000000),nsk(0.423767,0.000000,0.000000),nsk(0.833333,0.650273,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18655.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18655.CurveSize0=0
Blu_18655.CurveSize1=0
Blu_18655.FaceCamera=true
Blu_18655.LightEmission=0.6000000238418579
Blu_18655.LightInfluence=0
Blu_18655.Segments=90
Blu_18655.Texture="rbxassetid://12781855685"
Blu_18655.TextureLength=0.75
Blu_18655.TextureSpeed=-1

local Blu_18656=i("Beam", BEAM_18653)
Blu_18656.Name="Blu"
Blu_18656:SetAttribute("EmitDelay", 0)
Blu_18656:SetAttribute("AuraInstance", true)
Blu_18656:SetAttribute("EmitDuration", 2)
Blu_18656.Enabled=true
Blu_18656.Width0=3.240000009536743
Blu_18656.Width1=1.0800000429153442
Blu_18656.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.833333,0.377049,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18656.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18656.CurveSize0=0
Blu_18656.CurveSize1=0
Blu_18656.FaceCamera=true
Blu_18656.LightEmission=0.4000000059604645
Blu_18656.LightInfluence=0
Blu_18656.Segments=90
Blu_18656.Texture="rbxassetid://17581319932"
Blu_18656.TextureLength=1.125
Blu_18656.TextureSpeed=-1

local CenterBeam_18657=i("Beam", BEAM_18653)
CenterBeam_18657.Name="CenterBeam"
CenterBeam_18657:SetAttribute("EmitDelay", 0)
CenterBeam_18657:SetAttribute("AuraInstance", true)
CenterBeam_18657:SetAttribute("EmitDuration", 2)
CenterBeam_18657.Enabled=true
CenterBeam_18657.Width0=5.399999618530273
CenterBeam_18657.Width1=1.0800000429153442
CenterBeam_18657.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
CenterBeam_18657.Color=cs({csk(0.000000,c3(1.000000,0.125490,0.125490)),csk(1.000000,c3(1.000000,0.125490,0.125490))})
CenterBeam_18657.CurveSize0=0
CenterBeam_18657.CurveSize1=0
CenterBeam_18657.FaceCamera=true
CenterBeam_18657.LightEmission=0.6000000238418579
CenterBeam_18657.LightInfluence=0
CenterBeam_18657.Segments=90
CenterBeam_18657.Texture="rbxassetid://12781848822"
CenterBeam_18657.TextureLength=1
CenterBeam_18657.TextureSpeed=-1

local BlackSwirls_18658=i("Beam", BEAM_18653)
BlackSwirls_18658.Name="BlackSwirls"
BlackSwirls_18658:SetAttribute("EmitDelay", 0)
BlackSwirls_18658:SetAttribute("AuraInstance", true)
BlackSwirls_18658:SetAttribute("EmitDuration", 2)
BlackSwirls_18658.Enabled=true
BlackSwirls_18658.Width0=3.240000009536743
BlackSwirls_18658.Width1=1.0800000429153442
BlackSwirls_18658.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.166667,0.808743,0.000000),nsk(0.502385,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BlackSwirls_18658.Color=cs({csk(0.000000,c3(1.000000,0.250980,0.250980)),csk(1.000000,c3(1.000000,0.250980,0.250980))})
BlackSwirls_18658.CurveSize0=0
BlackSwirls_18658.CurveSize1=0
BlackSwirls_18658.FaceCamera=true
BlackSwirls_18658.LightEmission=0
BlackSwirls_18658.LightInfluence=0
BlackSwirls_18658.Segments=90
BlackSwirls_18658.Texture="rbxassetid://12781806168"
BlackSwirls_18658.TextureLength=1
BlackSwirls_18658.TextureSpeed=-1

local BEAM_18659=i("Attachment", Spin1_18628)
BEAM_18659.Name="BEAM"
BEAM_18659:SetAttribute("AuraInstance", true)
BEAM_18659.Position=v3(0.000000,1.036800,0.000000)
BEAM_18659.Visible=false

local Attachment_18660=i("Attachment", BEAM_18659)
Attachment_18660.Name="Attachment"
Attachment_18660:SetAttribute("AuraInstance", true)
Attachment_18660.Position=v3(0.000000,8.704801,0.000000)
Attachment_18660.Visible=false

local Blu_18661=i("Beam", BEAM_18659)
Blu_18661.Name="Blu"
Blu_18661:SetAttribute("EmitDelay", 0)
Blu_18661:SetAttribute("AuraInstance", true)
Blu_18661:SetAttribute("EmitDuration", 2)
Blu_18661.Enabled=true
Blu_18661.Width0=3.240000009536743
Blu_18661.Width1=1.0800000429153442
Blu_18661.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.153214,0.945355,0.000000),nsk(0.423767,0.000000,0.000000),nsk(0.833333,0.650273,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18661.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18661.CurveSize0=0
Blu_18661.CurveSize1=0
Blu_18661.FaceCamera=true
Blu_18661.LightEmission=0.6000000238418579
Blu_18661.LightInfluence=0
Blu_18661.Segments=90
Blu_18661.Texture="rbxassetid://12781855685"
Blu_18661.TextureLength=0.75
Blu_18661.TextureSpeed=-1

local Blu_18662=i("Beam", BEAM_18659)
Blu_18662.Name="Blu"
Blu_18662:SetAttribute("EmitDelay", 0)
Blu_18662:SetAttribute("AuraInstance", true)
Blu_18662:SetAttribute("EmitDuration", 2)
Blu_18662.Enabled=true
Blu_18662.Width0=3.240000009536743
Blu_18662.Width1=1.0800000429153442
Blu_18662.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.833333,0.377049,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18662.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18662.CurveSize0=0
Blu_18662.CurveSize1=0
Blu_18662.FaceCamera=true
Blu_18662.LightEmission=0.4000000059604645
Blu_18662.LightInfluence=0
Blu_18662.Segments=90
Blu_18662.Texture="rbxassetid://17581319932"
Blu_18662.TextureLength=1.125
Blu_18662.TextureSpeed=-1

local CenterBeam_18663=i("Beam", BEAM_18659)
CenterBeam_18663.Name="CenterBeam"
CenterBeam_18663:SetAttribute("EmitDelay", 0)
CenterBeam_18663:SetAttribute("AuraInstance", true)
CenterBeam_18663:SetAttribute("EmitDuration", 2)
CenterBeam_18663.Enabled=true
CenterBeam_18663.Width0=5.399999618530273
CenterBeam_18663.Width1=1.0800000429153442
CenterBeam_18663.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
CenterBeam_18663.Color=cs({csk(0.000000,c3(1.000000,0.125490,0.125490)),csk(1.000000,c3(1.000000,0.125490,0.125490))})
CenterBeam_18663.CurveSize0=0
CenterBeam_18663.CurveSize1=0
CenterBeam_18663.FaceCamera=true
CenterBeam_18663.LightEmission=0.6000000238418579
CenterBeam_18663.LightInfluence=0
CenterBeam_18663.Segments=90
CenterBeam_18663.Texture="rbxassetid://12781848822"
CenterBeam_18663.TextureLength=1
CenterBeam_18663.TextureSpeed=-1

local BlackSwirls_18664=i("Beam", BEAM_18659)
BlackSwirls_18664.Name="BlackSwirls"
BlackSwirls_18664:SetAttribute("EmitDelay", 0)
BlackSwirls_18664:SetAttribute("AuraInstance", true)
BlackSwirls_18664:SetAttribute("EmitDuration", 2)
BlackSwirls_18664.Enabled=true
BlackSwirls_18664.Width0=3.240000009536743
BlackSwirls_18664.Width1=1.0800000429153442
BlackSwirls_18664.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.166667,0.808743,0.000000),nsk(0.502385,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BlackSwirls_18664.Color=cs({csk(0.000000,c3(1.000000,0.250980,0.250980)),csk(1.000000,c3(1.000000,0.250980,0.250980))})
BlackSwirls_18664.CurveSize0=0
BlackSwirls_18664.CurveSize1=0
BlackSwirls_18664.FaceCamera=true
BlackSwirls_18664.LightEmission=0
BlackSwirls_18664.LightInfluence=0
BlackSwirls_18664.Segments=90
BlackSwirls_18664.Texture="rbxassetid://12781806168"
BlackSwirls_18664.TextureLength=1
BlackSwirls_18664.TextureSpeed=-1

local Blackring_18665=i("ParticleEmitter", Spin1_18628)
Blackring_18665.Name="Black ring"
Blackring_18665:SetAttribute("AuraInstance", true)
Blackring_18665.Enabled=true
Blackring_18665.Rate=10
Blackring_18665.Lifetime=nr(1.600000023841858,1.600000023841858)
Blackring_18665.Speed=nr(0.0013874374562874436,0.0013874374562874436)
Blackring_18665.Rotation=nr(-200,400)
Blackring_18665.RotSpeed=nr(-360,180)
Blackring_18665.Size=ns({nsk(0.000000,15.552000,0.000000),nsk(0.066478,14.157505,0.000000),nsk(0.210478,11.617346,0.000000),nsk(0.326478,9.491905,0.000000),nsk(0.434478,7.470145,0.000000),nsk(0.566478,5.033665,0.000000),nsk(0.656478,3.582144,0.000000),nsk(0.780478,2.026944,0.000000),nsk(0.860478,1.093824,0.000000),nsk(1.000000,0.000000,0.000000)})
Blackring_18665.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.896739,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackring_18665.Color=cs({csk(0.000000,c3(0.098039,0.000000,0.015686)),csk(1.000000,c3(0.098039,0.000000,0.015686))})
Blackring_18665.LightEmission=-3
Blackring_18665.LightInfluence=0
Blackring_18665.Acceleration=v3(0.000000,0.000000,0.000000)
Blackring_18665.Drag=1
Blackring_18665.EmissionDirection=Enum.NormalId.Top
Blackring_18665.SpreadAngle=v2(5.000000,5.000000)
Blackring_18665.ZOffset=-0.0020000000949949026
Blackring_18665.Texture="rbxassetid://10859315454"
Blackring_18665.LockedToPart=true
Blackring_18665.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackring_18665.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blackring_18665.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackring_18665.FlipbookFramerate=nr(5,5)
Blackring_18665.FlipbookStartRandom=false
Blackring_18665.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local stars_18666=i("ParticleEmitter", Spin1_18628)
stars_18666.Name="stars"
stars_18666:SetAttribute("AuraInstance", true)
stars_18666.Enabled=true
stars_18666.Rate=2
stars_18666.Lifetime=nr(1,1)
stars_18666.Speed=nr(0.02159999869763851,0.02159999869763851)
stars_18666.Rotation=nr(90,90)
stars_18666.RotSpeed=nr(0,0)
stars_18666.Size=ns({nsk(0.000000,19.440001,0.000000),nsk(1.000000,21.599998,0.000000)})
stars_18666.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.487294,0.940217,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18666.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
stars_18666.LightEmission=1
stars_18666.LightInfluence=0
stars_18666.Acceleration=v3(0.000000,0.000000,0.000000)
stars_18666.Drag=0.8999999761581421
stars_18666.EmissionDirection=Enum.NormalId.Top
stars_18666.SpreadAngle=v2(180.000000,0.000000)
stars_18666.ZOffset=12
stars_18666.Texture="rbxassetid://12159555294"
stars_18666.LockedToPart=true
stars_18666.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_18666.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_18666.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_18666.FlipbookFramerate=nr(5,5)
stars_18666.FlipbookStartRandom=false
stars_18666.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Cresent_18667=i("ParticleEmitter", Spin1_18628)
Cresent_18667.Name="Cresent"
Cresent_18667:SetAttribute("AuraInstance", true)
Cresent_18667.Enabled=true
Cresent_18667.Rate=19
Cresent_18667.Lifetime=nr(0.800000011920929,0.800000011920929)
Cresent_18667.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Cresent_18667.Rotation=nr(-360,360)
Cresent_18667.RotSpeed=nr(0,0)
Cresent_18667.Size=ns({nsk(0.000000,12.960000,0.000000),nsk(1.000000,0.000000,0.000000)})
Cresent_18667.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.844544,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Cresent_18667.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Cresent_18667.LightEmission=1
Cresent_18667.LightInfluence=0.4000000059604645
Cresent_18667.Acceleration=v3(0.000000,0.000000,0.000000)
Cresent_18667.Drag=0
Cresent_18667.EmissionDirection=Enum.NormalId.Top
Cresent_18667.SpreadAngle=v2(6.000000,6.000000)
Cresent_18667.ZOffset=8.199999809265137
Cresent_18667.Texture="rbxassetid://111209754502342"
Cresent_18667.LockedToPart=true
Cresent_18667.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cresent_18667.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Cresent_18667.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cresent_18667.FlipbookFramerate=nr(24,24)
Cresent_18667.FlipbookStartRandom=false
Cresent_18667.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blackring_18668=i("ParticleEmitter", Spin1_18628)
Blackring_18668.Name="Black ring"
Blackring_18668:SetAttribute("AuraInstance", true)
Blackring_18668.Enabled=true
Blackring_18668.Rate=10
Blackring_18668.Lifetime=nr(1.600000023841858,1.600000023841858)
Blackring_18668.Speed=nr(0.0013874374562874436,0.0013874374562874436)
Blackring_18668.Rotation=nr(-200,400)
Blackring_18668.RotSpeed=nr(-360,180)
Blackring_18668.Size=ns({nsk(0.000000,15.552000,0.000000),nsk(0.066478,14.157505,0.000000),nsk(0.210478,11.617346,0.000000),nsk(0.326478,9.491905,0.000000),nsk(0.434478,7.470145,0.000000),nsk(0.566478,5.033665,0.000000),nsk(0.656478,3.582144,0.000000),nsk(0.780478,2.026944,0.000000),nsk(0.860478,1.093824,0.000000),nsk(1.000000,0.000000,0.000000)})
Blackring_18668.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.896739,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackring_18668.Color=cs({csk(0.000000,c3(0.098039,0.000000,0.015686)),csk(1.000000,c3(0.098039,0.000000,0.015686))})
Blackring_18668.LightEmission=-3
Blackring_18668.LightInfluence=0
Blackring_18668.Acceleration=v3(0.000000,0.000000,0.000000)
Blackring_18668.Drag=1
Blackring_18668.EmissionDirection=Enum.NormalId.Top
Blackring_18668.SpreadAngle=v2(5.000000,5.000000)
Blackring_18668.ZOffset=-0.0020000000949949026
Blackring_18668.Texture="http://www.roblox.com/asset/?id=12878479106"
Blackring_18668.LockedToPart=true
Blackring_18668.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackring_18668.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blackring_18668.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackring_18668.FlipbookFramerate=nr(5,5)
Blackring_18668.FlipbookStartRandom=false
Blackring_18668.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Cresent_18669=i("ParticleEmitter", Spin1_18628)
Cresent_18669.Name="Cresent"
Cresent_18669:SetAttribute("AuraInstance", true)
Cresent_18669.Enabled=true
Cresent_18669.Rate=19
Cresent_18669.Lifetime=nr(1.600000023841858,1.600000023841858)
Cresent_18669.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Cresent_18669.Rotation=nr(-360,360)
Cresent_18669.RotSpeed=nr(-90,90)
Cresent_18669.Size=ns({nsk(0.000000,10.799999,0.000000),nsk(0.066478,9.831600,0.000000),nsk(0.210478,8.067600,0.000000),nsk(0.326478,6.591600,0.000000),nsk(0.434478,5.187601,0.000000),nsk(0.566478,3.495600,0.000000),nsk(0.656478,2.487601,0.000000),nsk(0.780478,1.407600,0.000000),nsk(0.860478,0.759600,0.000000),nsk(1.000000,0.000000,0.000000)})
Cresent_18669.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.369208,0.858696,0.000000),nsk(0.899103,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Cresent_18669.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Cresent_18669.LightEmission=1
Cresent_18669.LightInfluence=0
Cresent_18669.Acceleration=v3(0.000000,0.000000,0.000000)
Cresent_18669.Drag=0
Cresent_18669.EmissionDirection=Enum.NormalId.Top
Cresent_18669.SpreadAngle=v2(6.000000,6.000000)
Cresent_18669.ZOffset=8.199999809265137
Cresent_18669.Texture="rbxassetid://98161445784635"
Cresent_18669.LockedToPart=true
Cresent_18669.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cresent_18669.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Cresent_18669.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cresent_18669.FlipbookFramerate=nr(24,24)
Cresent_18669.FlipbookStartRandom=false
Cresent_18669.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local InnerGlare_18670=i("ParticleEmitter", Spin1_18628)
InnerGlare_18670.Name="InnerGlare"
InnerGlare_18670:SetAttribute("AuraInstance", true)
InnerGlare_18670.Enabled=true
InnerGlare_18670.Rate=12
InnerGlare_18670.Lifetime=nr(1.0099999904632568,1.0099999904632568)
InnerGlare_18670.Speed=nr(0,0)
InnerGlare_18670.Rotation=nr(0,360)
InnerGlare_18670.RotSpeed=nr(0,0)
InnerGlare_18670.Size=ns({nsk(0.000000,7.776000,0.000000),nsk(1.000000,7.776000,0.000000)})
InnerGlare_18670.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.201000,0.965000,0.000000),nsk(0.799000,0.990000,0.000000),nsk(1.000000,1.000000,0.000000)})
InnerGlare_18670.Color=cs({csk(0.000000,c3(1.000000,0.325490,0.325490)),csk(1.000000,c3(1.000000,0.325490,0.325490))})
InnerGlare_18670.LightEmission=1
InnerGlare_18670.LightInfluence=0
InnerGlare_18670.Acceleration=v3(0.000000,0.000000,0.000000)
InnerGlare_18670.Drag=0
InnerGlare_18670.EmissionDirection=Enum.NormalId.Top
InnerGlare_18670.SpreadAngle=v2(0.000000,0.000000)
InnerGlare_18670.ZOffset=-2
InnerGlare_18670.Texture="rbxassetid://15501999565"
InnerGlare_18670.LockedToPart=true
InnerGlare_18670.Orientation=Enum.ParticleOrientation.FacingCamera
InnerGlare_18670.FlipbookLayout=Enum.ParticleFlipbookLayout.None
InnerGlare_18670.FlipbookMode=Enum.ParticleFlipbookMode.Loop
InnerGlare_18670.FlipbookFramerate=nr(1,1)
InnerGlare_18670.FlipbookStartRandom=false
InnerGlare_18670.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local VerticalLine_18671=i("ParticleEmitter", Spin1_18628)
VerticalLine_18671.Name="Vertical Line"
VerticalLine_18671:SetAttribute("AuraInstance", true)
VerticalLine_18671.Enabled=true
VerticalLine_18671.Rate=8
VerticalLine_18671.Lifetime=nr(1,1)
VerticalLine_18671.Speed=nr(0,0)
VerticalLine_18671.Rotation=nr(0,0)
VerticalLine_18671.RotSpeed=nr(0,0)
VerticalLine_18671.Size=ns({nsk(0.000000,2.293236,0.000000),nsk(1.000000,9.165312,0.000000)})
VerticalLine_18671.Transparency=ns({nsk(0.000000,0.737500,0.000000),nsk(1.000000,1.000000,0.000000)})
VerticalLine_18671.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.223529)),csk(1.000000,c3(1.000000,0.223529,0.223529))})
VerticalLine_18671.LightEmission=1
VerticalLine_18671.LightInfluence=0
VerticalLine_18671.Acceleration=v3(0.000000,0.000000,0.000000)
VerticalLine_18671.Drag=0
VerticalLine_18671.EmissionDirection=Enum.NormalId.Top
VerticalLine_18671.SpreadAngle=v2(0.000000,0.000000)
VerticalLine_18671.ZOffset=-2
VerticalLine_18671.Texture="rbxassetid://14032952906"
VerticalLine_18671.LockedToPart=true
VerticalLine_18671.Orientation=Enum.ParticleOrientation.FacingCamera
VerticalLine_18671.FlipbookLayout=Enum.ParticleFlipbookLayout.None
VerticalLine_18671.FlipbookMode=Enum.ParticleFlipbookMode.Loop
VerticalLine_18671.FlipbookFramerate=nr(1,1)
VerticalLine_18671.FlipbookStartRandom=false
VerticalLine_18671.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})

local RingLines_18672=i("ParticleEmitter", Spin1_18628)
RingLines_18672.Name="RingLines"
RingLines_18672:SetAttribute("AuraInstance", true)
RingLines_18672.Enabled=true
RingLines_18672.Rate=8
RingLines_18672.Lifetime=nr(1.0099999904632568,1.0099999904632568)
RingLines_18672.Speed=nr(0,0)
RingLines_18672.Rotation=nr(0,0)
RingLines_18672.RotSpeed=nr(0,0)
RingLines_18672.Size=ns({nsk(0.000000,21.599998,0.000000),nsk(1.000000,21.599998,0.000000)})
RingLines_18672.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.201000,0.970000,0.000000),nsk(0.799000,0.990000,0.000000),nsk(1.000000,1.000000,0.000000)})
RingLines_18672.Color=cs({csk(0.000000,c3(1.000000,0.325490,0.325490)),csk(1.000000,c3(1.000000,0.325490,0.325490))})
RingLines_18672.LightEmission=1
RingLines_18672.LightInfluence=0
RingLines_18672.Acceleration=v3(0.000000,0.000000,0.000000)
RingLines_18672.Drag=0
RingLines_18672.EmissionDirection=Enum.NormalId.Top
RingLines_18672.SpreadAngle=v2(0.000000,0.000000)
RingLines_18672.ZOffset=-2
RingLines_18672.Texture="http://www.roblox.com/asset/?id=108523870700360"
RingLines_18672.LockedToPart=true
RingLines_18672.Orientation=Enum.ParticleOrientation.FacingCamera
RingLines_18672.FlipbookLayout=Enum.ParticleFlipbookLayout.None
RingLines_18672.FlipbookMode=Enum.ParticleFlipbookMode.Loop
RingLines_18672.FlipbookFramerate=nr(1,1)
RingLines_18672.FlipbookStartRandom=false
RingLines_18672.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local OuterGlare_18673=i("ParticleEmitter", Spin1_18628)
OuterGlare_18673.Name="OuterGlare"
OuterGlare_18673:SetAttribute("AuraInstance", true)
OuterGlare_18673.Enabled=true
OuterGlare_18673.Rate=6
OuterGlare_18673.Lifetime=nr(1.0099999904632568,1.0099999904632568)
OuterGlare_18673.Speed=nr(0,0)
OuterGlare_18673.Rotation=nr(0,360)
OuterGlare_18673.RotSpeed=nr(0,0)
OuterGlare_18673.Size=ns({nsk(0.000000,11.826000,0.000000),nsk(1.000000,12.960000,0.000000)})
OuterGlare_18673.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.201000,0.965000,0.000000),nsk(0.799000,0.990000,0.000000),nsk(1.000000,1.000000,0.000000)})
OuterGlare_18673.Color=cs({csk(0.000000,c3(1.000000,0.325490,0.325490)),csk(1.000000,c3(1.000000,0.325490,0.325490))})
OuterGlare_18673.LightEmission=1
OuterGlare_18673.LightInfluence=0
OuterGlare_18673.Acceleration=v3(0.000000,0.000000,0.000000)
OuterGlare_18673.Drag=0
OuterGlare_18673.EmissionDirection=Enum.NormalId.Top
OuterGlare_18673.SpreadAngle=v2(0.000000,0.000000)
OuterGlare_18673.ZOffset=-2
OuterGlare_18673.Texture="rbxassetid://15501999565"
OuterGlare_18673.LockedToPart=true
OuterGlare_18673.Orientation=Enum.ParticleOrientation.FacingCamera
OuterGlare_18673.FlipbookLayout=Enum.ParticleFlipbookLayout.None
OuterGlare_18673.FlipbookMode=Enum.ParticleFlipbookMode.Loop
OuterGlare_18673.FlipbookFramerate=nr(1,1)
OuterGlare_18673.FlipbookStartRandom=false
OuterGlare_18673.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Attachment_18674=i("Attachment", Spin1_18628)
Attachment_18674.Name="Attachment"
Attachment_18674:SetAttribute("AuraInstance", true)
Attachment_18674.Position=v3(0.000007,0.000000,0.000000)
Attachment_18674.Visible=false

local PointLight_18675=i("PointLight", Spin1_18628)
PointLight_18675.Name="PointLight"
PointLight_18675:SetAttribute("AuraInstance", true)
Trail_18629.Attachment0=Attachment0_18631
Trail_18629.Attachment1=Attachment1_18630




local Spin2_18676=i("Attachment", ring1)
Spin2_18676.Name="Spin2"
Spin2_18676:SetAttribute("AuraInstance", true)
Spin2_18676.Position=v3(0,0,0)
Spin2_18676.Visible=false

local dfogd_18677=i("ParticleEmitter", Spin2_18676)
dfogd_18677.Name="dfogd"
dfogd_18677:SetAttribute("AuraInstance", true)
dfogd_18677.Enabled=true
dfogd_18677.Rate=36
dfogd_18677.Lifetime=nr(0.20000000298023224,0.20000000298023224)
dfogd_18677.Speed=nr(0.02159999869763851,0.02159999869763851)
dfogd_18677.Rotation=nr(-90,90)
dfogd_18677.RotSpeed=nr(0,0)
dfogd_18677.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,17.280001,0.000000)})
dfogd_18677.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(0.850523,0.907609,0.000000),nsk(1.000000,1.000000,0.000000)})
dfogd_18677.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
dfogd_18677.LightEmission=-3
dfogd_18677.LightInfluence=0
dfogd_18677.Acceleration=v3(0.000000,0.000000,0.000000)
dfogd_18677.Drag=0.8999999761581421
dfogd_18677.EmissionDirection=Enum.NormalId.Top
dfogd_18677.SpreadAngle=v2(180.000000,0.000000)
dfogd_18677.ZOffset=-6
dfogd_18677.Texture="https://assetgame.roblox.com/asset/?id=11037515093&assetName=Magic3"
dfogd_18677.LockedToPart=true
dfogd_18677.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
dfogd_18677.FlipbookLayout=Enum.ParticleFlipbookLayout.None
dfogd_18677.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dfogd_18677.FlipbookFramerate=nr(5,5)
dfogd_18677.FlipbookStartRandom=false
dfogd_18677.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Attachment0_18678=i("Attachment", Spin2_18676)
Attachment0_18678.Name="Attachment0"
Attachment0_18678:SetAttribute("AuraInstance", true)
Attachment0_18678.Position=v3(0.000000,-1.080000,0.000000)
Attachment0_18678.Visible=false

local Attachment1_18679=i("Attachment", Spin2_18676)
Attachment1_18679.Name="Attachment1"
Attachment1_18679:SetAttribute("AuraInstance", true)
Attachment1_18679.Position=v3(0.000000,1.080000,0.000000)
Attachment1_18679.Visible=false

local BEAM_18680=i("Attachment", Spin2_18676)
BEAM_18680.Name="BEAM"
BEAM_18680:SetAttribute("AuraInstance", true)
BEAM_18680.Position=v3(-0.000000,-1.036800,0.000000)
BEAM_18680.Visible=false

local Attachment_18681=i("Attachment", BEAM_18680)
Attachment_18681.Name="Attachment"
Attachment_18681:SetAttribute("AuraInstance", true)
Attachment_18681.Position=v3(0.000000,8.704801,0.000000)
Attachment_18681.Visible=false

local Blu_18682=i("Beam", BEAM_18680)
Blu_18682.Name="Blu"
Blu_18682:SetAttribute("EmitDelay", 0)
Blu_18682:SetAttribute("AuraInstance", true)
Blu_18682:SetAttribute("EmitDuration", 2)
Blu_18682.Enabled=true
Blu_18682.Width0=3.240000009536743
Blu_18682.Width1=1.0800000429153442
Blu_18682.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.153214,0.945355,0.000000),nsk(0.423767,0.000000,0.000000),nsk(0.833333,0.650273,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18682.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18682.CurveSize0=0
Blu_18682.CurveSize1=0
Blu_18682.FaceCamera=true
Blu_18682.LightEmission=0.6000000238418579
Blu_18682.LightInfluence=0
Blu_18682.Segments=90
Blu_18682.Texture="rbxassetid://12781855685"
Blu_18682.TextureLength=0.75
Blu_18682.TextureSpeed=-1

local Blu_18683=i("Beam", BEAM_18680)
Blu_18683.Name="Blu"
Blu_18683:SetAttribute("EmitDelay", 0)
Blu_18683:SetAttribute("AuraInstance", true)
Blu_18683:SetAttribute("EmitDuration", 2)
Blu_18683.Enabled=true
Blu_18683.Width0=3.240000009536743
Blu_18683.Width1=1.0800000429153442
Blu_18683.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.833333,0.377049,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18683.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18683.CurveSize0=0
Blu_18683.CurveSize1=0
Blu_18683.FaceCamera=true
Blu_18683.LightEmission=0.4000000059604645
Blu_18683.LightInfluence=0
Blu_18683.Segments=90
Blu_18683.Texture="rbxassetid://17581319932"
Blu_18683.TextureLength=1.125
Blu_18683.TextureSpeed=-1

local CenterBeam_18684=i("Beam", BEAM_18680)
CenterBeam_18684.Name="CenterBeam"
CenterBeam_18684:SetAttribute("EmitDelay", 0)
CenterBeam_18684:SetAttribute("AuraInstance", true)
CenterBeam_18684:SetAttribute("EmitDuration", 2)
CenterBeam_18684.Enabled=true
CenterBeam_18684.Width0=5.399999618530273
CenterBeam_18684.Width1=1.0800000429153442
CenterBeam_18684.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
CenterBeam_18684.Color=cs({csk(0.000000,c3(1.000000,0.125490,0.125490)),csk(1.000000,c3(1.000000,0.125490,0.125490))})
CenterBeam_18684.CurveSize0=0
CenterBeam_18684.CurveSize1=0
CenterBeam_18684.FaceCamera=true
CenterBeam_18684.LightEmission=0.6000000238418579
CenterBeam_18684.LightInfluence=0
CenterBeam_18684.Segments=90
CenterBeam_18684.Texture="rbxassetid://12781848822"
CenterBeam_18684.TextureLength=1
CenterBeam_18684.TextureSpeed=-1

local BlackSwirls_18685=i("Beam", BEAM_18680)
BlackSwirls_18685.Name="BlackSwirls"
BlackSwirls_18685:SetAttribute("EmitDelay", 0)
BlackSwirls_18685:SetAttribute("AuraInstance", true)
BlackSwirls_18685:SetAttribute("EmitDuration", 2)
BlackSwirls_18685.Enabled=true
BlackSwirls_18685.Width0=3.240000009536743
BlackSwirls_18685.Width1=1.0800000429153442
BlackSwirls_18685.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.166667,0.808743,0.000000),nsk(0.502385,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BlackSwirls_18685.Color=cs({csk(0.000000,c3(1.000000,0.250980,0.250980)),csk(1.000000,c3(1.000000,0.250980,0.250980))})
BlackSwirls_18685.CurveSize0=0
BlackSwirls_18685.CurveSize1=0
BlackSwirls_18685.FaceCamera=true
BlackSwirls_18685.LightEmission=0
BlackSwirls_18685.LightInfluence=0
BlackSwirls_18685.Segments=90
BlackSwirls_18685.Texture="rbxassetid://12781806168"
BlackSwirls_18685.TextureLength=1
BlackSwirls_18685.TextureSpeed=-1

local BEAM_18686=i("Attachment", Spin2_18676)
BEAM_18686.Name="BEAM"
BEAM_18686:SetAttribute("AuraInstance", true)
BEAM_18686.Position=v3(0.000000,1.036800,0.000000)
BEAM_18686.Visible=false

local Attachment_18687=i("Attachment", BEAM_18686)
Attachment_18687.Name="Attachment"
Attachment_18687:SetAttribute("AuraInstance", true)
Attachment_18687.Position=v3(0.000000,8.704801,0.000000)
Attachment_18687.Visible=false

local Blu_18688=i("Beam", BEAM_18686)
Blu_18688.Name="Blu"
Blu_18688:SetAttribute("EmitDelay", 0)
Blu_18688:SetAttribute("AuraInstance", true)
Blu_18688:SetAttribute("EmitDuration", 2)
Blu_18688.Enabled=true
Blu_18688.Width0=3.240000009536743
Blu_18688.Width1=1.0800000429153442
Blu_18688.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.153214,0.945355,0.000000),nsk(0.423767,0.000000,0.000000),nsk(0.833333,0.650273,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18688.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18688.CurveSize0=0
Blu_18688.CurveSize1=0
Blu_18688.FaceCamera=true
Blu_18688.LightEmission=0.6000000238418579
Blu_18688.LightInfluence=0
Blu_18688.Segments=90
Blu_18688.Texture="rbxassetid://12781855685"
Blu_18688.TextureLength=0.75
Blu_18688.TextureSpeed=-1

local Blu_18689=i("Beam", BEAM_18686)
Blu_18689.Name="Blu"
Blu_18689:SetAttribute("EmitDelay", 0)
Blu_18689:SetAttribute("AuraInstance", true)
Blu_18689:SetAttribute("EmitDuration", 2)
Blu_18689.Enabled=true
Blu_18689.Width0=3.240000009536743
Blu_18689.Width1=1.0800000429153442
Blu_18689.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.833333,0.377049,0.000000),nsk(1.000000,1.000000,0.000000)})
Blu_18689.Color=cs({csk(0.000000,c3(1.000000,0.152941,0.152941)),csk(1.000000,c3(1.000000,0.152941,0.152941))})
Blu_18689.CurveSize0=0
Blu_18689.CurveSize1=0
Blu_18689.FaceCamera=true
Blu_18689.LightEmission=0.4000000059604645
Blu_18689.LightInfluence=0
Blu_18689.Segments=90
Blu_18689.Texture="rbxassetid://17581319932"
Blu_18689.TextureLength=1.125
Blu_18689.TextureSpeed=-1

local CenterBeam_18690=i("Beam", BEAM_18686)
CenterBeam_18690.Name="CenterBeam"
CenterBeam_18690:SetAttribute("EmitDelay", 0)
CenterBeam_18690:SetAttribute("AuraInstance", true)
CenterBeam_18690:SetAttribute("EmitDuration", 2)
CenterBeam_18690.Enabled=true
CenterBeam_18690.Width0=5.399999618530273
CenterBeam_18690.Width1=1.0800000429153442
CenterBeam_18690.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
CenterBeam_18690.Color=cs({csk(0.000000,c3(1.000000,0.125490,0.125490)),csk(1.000000,c3(1.000000,0.125490,0.125490))})
CenterBeam_18690.CurveSize0=0
CenterBeam_18690.CurveSize1=0
CenterBeam_18690.FaceCamera=true
CenterBeam_18690.LightEmission=0.6000000238418579
CenterBeam_18690.LightInfluence=0
CenterBeam_18690.Segments=90
CenterBeam_18690.Texture="rbxassetid://12781848822"
CenterBeam_18690.TextureLength=1
CenterBeam_18690.TextureSpeed=-1

local BlackSwirls_18691=i("Beam", BEAM_18686)
BlackSwirls_18691.Name="BlackSwirls"
BlackSwirls_18691:SetAttribute("EmitDelay", 0)
BlackSwirls_18691:SetAttribute("AuraInstance", true)
BlackSwirls_18691:SetAttribute("EmitDuration", 2)
BlackSwirls_18691.Enabled=true
BlackSwirls_18691.Width0=3.240000009536743
BlackSwirls_18691.Width1=1.0800000429153442
BlackSwirls_18691.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.166667,0.808743,0.000000),nsk(0.502385,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BlackSwirls_18691.Color=cs({csk(0.000000,c3(1.000000,0.250980,0.250980)),csk(1.000000,c3(1.000000,0.250980,0.250980))})
BlackSwirls_18691.CurveSize0=0
BlackSwirls_18691.CurveSize1=0
BlackSwirls_18691.FaceCamera=true
BlackSwirls_18691.LightEmission=0
BlackSwirls_18691.LightInfluence=0
BlackSwirls_18691.Segments=90
BlackSwirls_18691.Texture="rbxassetid://12781806168"
BlackSwirls_18691.TextureLength=1
BlackSwirls_18691.TextureSpeed=-1

local Blackring_18692=i("ParticleEmitter", Spin2_18676)
Blackring_18692.Name="Black ring"
Blackring_18692:SetAttribute("AuraInstance", true)
Blackring_18692.Enabled=true
Blackring_18692.Rate=10
Blackring_18692.Lifetime=nr(1.600000023841858,1.600000023841858)
Blackring_18692.Speed=nr(0.0013874374562874436,0.0013874374562874436)
Blackring_18692.Rotation=nr(-200,400)
Blackring_18692.RotSpeed=nr(-360,180)
Blackring_18692.Size=ns({nsk(0.000000,15.552000,0.000000),nsk(0.066478,14.157505,0.000000),nsk(0.210478,11.617346,0.000000),nsk(0.326478,9.491905,0.000000),nsk(0.434478,7.470145,0.000000),nsk(0.566478,5.033665,0.000000),nsk(0.656478,3.582144,0.000000),nsk(0.780478,2.026944,0.000000),nsk(0.860478,1.093824,0.000000),nsk(1.000000,0.000000,0.000000)})
Blackring_18692.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.896739,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackring_18692.Color=cs({csk(0.000000,c3(0.098039,0.000000,0.015686)),csk(1.000000,c3(0.098039,0.000000,0.015686))})
Blackring_18692.LightEmission=-3
Blackring_18692.LightInfluence=0
Blackring_18692.Acceleration=v3(0.000000,0.000000,0.000000)
Blackring_18692.Drag=1
Blackring_18692.EmissionDirection=Enum.NormalId.Top
Blackring_18692.SpreadAngle=v2(5.000000,5.000000)
Blackring_18692.ZOffset=-0.0020000000949949026
Blackring_18692.Texture="http://www.roblox.com/asset/?id=12878479106"
Blackring_18692.LockedToPart=true
Blackring_18692.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackring_18692.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blackring_18692.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackring_18692.FlipbookFramerate=nr(5,5)
Blackring_18692.FlipbookStartRandom=false
Blackring_18692.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blackring_18693=i("ParticleEmitter", Spin2_18676)
Blackring_18693.Name="Black ring"
Blackring_18693:SetAttribute("AuraInstance", true)
Blackring_18693.Enabled=true
Blackring_18693.Rate=10
Blackring_18693.Lifetime=nr(1.600000023841858,1.600000023841858)
Blackring_18693.Speed=nr(0.0013874374562874436,0.0013874374562874436)
Blackring_18693.Rotation=nr(-200,400)
Blackring_18693.RotSpeed=nr(-360,180)
Blackring_18693.Size=ns({nsk(0.000000,15.552000,0.000000),nsk(0.066478,14.157505,0.000000),nsk(0.210478,11.617346,0.000000),nsk(0.326478,9.491905,0.000000),nsk(0.434478,7.470145,0.000000),nsk(0.566478,5.033665,0.000000),nsk(0.656478,3.582144,0.000000),nsk(0.780478,2.026944,0.000000),nsk(0.860478,1.093824,0.000000),nsk(1.000000,0.000000,0.000000)})
Blackring_18693.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.896739,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackring_18693.Color=cs({csk(0.000000,c3(0.098039,0.000000,0.015686)),csk(1.000000,c3(0.098039,0.000000,0.015686))})
Blackring_18693.LightEmission=-3
Blackring_18693.LightInfluence=0
Blackring_18693.Acceleration=v3(0.000000,0.000000,0.000000)
Blackring_18693.Drag=1
Blackring_18693.EmissionDirection=Enum.NormalId.Top
Blackring_18693.SpreadAngle=v2(5.000000,5.000000)
Blackring_18693.ZOffset=-0.0020000000949949026
Blackring_18693.Texture="rbxassetid://10859315454"
Blackring_18693.LockedToPart=true
Blackring_18693.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackring_18693.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blackring_18693.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackring_18693.FlipbookFramerate=nr(5,5)
Blackring_18693.FlipbookStartRandom=false
Blackring_18693.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Cresent_18694=i("ParticleEmitter", Spin2_18676)
Cresent_18694.Name="Cresent"
Cresent_18694:SetAttribute("AuraInstance", true)
Cresent_18694.Enabled=true
Cresent_18694.Rate=19
Cresent_18694.Lifetime=nr(0.800000011920929,0.800000011920929)
Cresent_18694.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Cresent_18694.Rotation=nr(-360,360)
Cresent_18694.RotSpeed=nr(0,0)
Cresent_18694.Size=ns({nsk(0.000000,12.960000,0.000000),nsk(1.000000,0.000000,0.000000)})
Cresent_18694.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.855007,0.836957,0.000000),nsk(1.000000,1.000000,0.000000)})
Cresent_18694.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Cresent_18694.LightEmission=-9
Cresent_18694.LightInfluence=0.4000000059604645
Cresent_18694.Acceleration=v3(0.000000,0.000000,0.000000)
Cresent_18694.Drag=0
Cresent_18694.EmissionDirection=Enum.NormalId.Top
Cresent_18694.SpreadAngle=v2(6.000000,6.000000)
Cresent_18694.ZOffset=8
Cresent_18694.Texture="rbxassetid://13992197350"
Cresent_18694.LockedToPart=true
Cresent_18694.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cresent_18694.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Cresent_18694.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cresent_18694.FlipbookFramerate=nr(24,24)
Cresent_18694.FlipbookStartRandom=false
Cresent_18694.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Cresent_18695=i("ParticleEmitter", Spin2_18676)
Cresent_18695.Name="Cresent"
Cresent_18695:SetAttribute("AuraInstance", true)
Cresent_18695.Enabled=true
Cresent_18695.Rate=19
Cresent_18695.Lifetime=nr(1.600000023841858,1.600000023841858)
Cresent_18695.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Cresent_18695.Rotation=nr(-360,360)
Cresent_18695.RotSpeed=nr(-90,90)
Cresent_18695.Size=ns({nsk(0.000000,10.799999,0.000000),nsk(0.066478,9.831600,0.000000),nsk(0.210478,8.067600,0.000000),nsk(0.326478,6.591600,0.000000),nsk(0.434478,5.187601,0.000000),nsk(0.566478,3.495600,0.000000),nsk(0.656478,2.487601,0.000000),nsk(0.780478,1.407600,0.000000),nsk(0.860478,0.759600,0.000000),nsk(1.000000,0.000000,0.000000)})
Cresent_18695.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.369208,0.858696,0.000000),nsk(0.899103,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Cresent_18695.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Cresent_18695.LightEmission=1
Cresent_18695.LightInfluence=0
Cresent_18695.Acceleration=v3(0.000000,0.000000,0.000000)
Cresent_18695.Drag=0
Cresent_18695.EmissionDirection=Enum.NormalId.Top
Cresent_18695.SpreadAngle=v2(6.000000,6.000000)
Cresent_18695.ZOffset=8.199999809265137
Cresent_18695.Texture="rbxassetid://98161445784635"
Cresent_18695.LockedToPart=true
Cresent_18695.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cresent_18695.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Cresent_18695.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cresent_18695.FlipbookFramerate=nr(24,24)
Cresent_18695.FlipbookStartRandom=false
Cresent_18695.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Cresent_18696=i("ParticleEmitter", Spin2_18676)
Cresent_18696.Name="Cresent"
Cresent_18696:SetAttribute("AuraInstance", true)
Cresent_18696.Enabled=true
Cresent_18696.Rate=19
Cresent_18696.Lifetime=nr(0.800000011920929,0.800000011920929)
Cresent_18696.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Cresent_18696.Rotation=nr(-360,360)
Cresent_18696.RotSpeed=nr(0,0)
Cresent_18696.Size=ns({nsk(0.000000,12.960000,0.000000),nsk(1.000000,0.000000,0.000000)})
Cresent_18696.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.844544,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Cresent_18696.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Cresent_18696.LightEmission=1
Cresent_18696.LightInfluence=0.4000000059604645
Cresent_18696.Acceleration=v3(0.000000,0.000000,0.000000)
Cresent_18696.Drag=0
Cresent_18696.EmissionDirection=Enum.NormalId.Top
Cresent_18696.SpreadAngle=v2(6.000000,6.000000)
Cresent_18696.ZOffset=8.199999809265137
Cresent_18696.Texture="rbxassetid://111209754502342"
Cresent_18696.LockedToPart=true
Cresent_18696.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Cresent_18696.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Cresent_18696.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Cresent_18696.FlipbookFramerate=nr(24,24)
Cresent_18696.FlipbookStartRandom=false
Cresent_18696.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fog_18697=i("ParticleEmitter", Spin2_18676)
Fog_18697.Name="Fog"
Fog_18697:SetAttribute("EmitDelay", 0)
Fog_18697:SetAttribute("AuraInstance", true)
Fog_18697.Enabled=true
Fog_18697.Rate=40
Fog_18697.Lifetime=nr(0.8999999761581421,0.8999999761581421)
Fog_18697.Speed=nr(15.120000839233398,20.520002365112305)
Fog_18697.Rotation=nr(-1000,1000)
Fog_18697.RotSpeed=nr(0,0)
Fog_18697.Size=ns({nsk(0.000000,0.778378,0.389189),nsk(1.000000,0.000000,0.000000)})
Fog_18697.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.470509,0.923497,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_18697.Color=cs({csk(0.000000,c3(1.000000,0.352941,0.352941)),csk(1.000000,c3(1.000000,0.352941,0.352941))})
Fog_18697.LightEmission=1
Fog_18697.LightInfluence=0
Fog_18697.Acceleration=v3(0.000000,0.000000,0.000000)
Fog_18697.Drag=1
Fog_18697.EmissionDirection=Enum.NormalId.Right
Fog_18697.SpreadAngle=v2(0.000000,180.000000)
Fog_18697.ZOffset=0.23000000417232513
Fog_18697.Texture="rbxassetid://14050038331"
Fog_18697.LockedToPart=true
Fog_18697.Orientation=Enum.ParticleOrientation.FacingCamera
Fog_18697.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Fog_18697.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Fog_18697.FlipbookFramerate=nr(20,20)
Fog_18697.FlipbookStartRandom=false
Fog_18697.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local InnerGlare_18698=i("ParticleEmitter", Spin2_18676)
InnerGlare_18698.Name="InnerGlare"
InnerGlare_18698:SetAttribute("AuraInstance", true)
InnerGlare_18698.Enabled=true
InnerGlare_18698.Rate=12
InnerGlare_18698.Lifetime=nr(1.0099999904632568,1.0099999904632568)
InnerGlare_18698.Speed=nr(0,0)
InnerGlare_18698.Rotation=nr(0,360)
InnerGlare_18698.RotSpeed=nr(0,0)
InnerGlare_18698.Size=ns({nsk(0.000000,7.776000,0.000000),nsk(1.000000,7.776000,0.000000)})
InnerGlare_18698.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.201000,0.965000,0.000000),nsk(0.799000,0.990000,0.000000),nsk(1.000000,1.000000,0.000000)})
InnerGlare_18698.Color=cs({csk(0.000000,c3(1.000000,0.325490,0.325490)),csk(1.000000,c3(1.000000,0.325490,0.325490))})
InnerGlare_18698.LightEmission=1
InnerGlare_18698.LightInfluence=0
InnerGlare_18698.Acceleration=v3(0.000000,0.000000,0.000000)
InnerGlare_18698.Drag=0
InnerGlare_18698.EmissionDirection=Enum.NormalId.Top
InnerGlare_18698.SpreadAngle=v2(0.000000,0.000000)
InnerGlare_18698.ZOffset=-2
InnerGlare_18698.Texture="rbxassetid://15501999565"
InnerGlare_18698.LockedToPart=true
InnerGlare_18698.Orientation=Enum.ParticleOrientation.FacingCamera
InnerGlare_18698.FlipbookLayout=Enum.ParticleFlipbookLayout.None
InnerGlare_18698.FlipbookMode=Enum.ParticleFlipbookMode.Loop
InnerGlare_18698.FlipbookFramerate=nr(1,1)
InnerGlare_18698.FlipbookStartRandom=false
InnerGlare_18698.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local stars_18699=i("ParticleEmitter", Spin2_18676)
stars_18699.Name="stars"
stars_18699:SetAttribute("AuraInstance", true)
stars_18699.Enabled=true
stars_18699.Rate=2
stars_18699.Lifetime=nr(1,1)
stars_18699.Speed=nr(0.02159999869763851,0.02159999869763851)
stars_18699.Rotation=nr(90,90)
stars_18699.RotSpeed=nr(0,0)
stars_18699.Size=ns({nsk(0.000000,19.440001,0.000000),nsk(1.000000,21.599998,0.000000)})
stars_18699.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.487294,0.940217,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18699.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
stars_18699.LightEmission=1
stars_18699.LightInfluence=0
stars_18699.Acceleration=v3(0.000000,0.000000,0.000000)
stars_18699.Drag=0.8999999761581421
stars_18699.EmissionDirection=Enum.NormalId.Top
stars_18699.SpreadAngle=v2(180.000000,0.000000)
stars_18699.ZOffset=12
stars_18699.Texture="rbxassetid://12159555294"
stars_18699.LockedToPart=true
stars_18699.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_18699.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_18699.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_18699.FlipbookFramerate=nr(5,5)
stars_18699.FlipbookStartRandom=false
stars_18699.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local OuterGlare_18700=i("ParticleEmitter", Spin2_18676)
OuterGlare_18700.Name="OuterGlare"
OuterGlare_18700:SetAttribute("AuraInstance", true)
OuterGlare_18700.Enabled=true
OuterGlare_18700.Rate=6
OuterGlare_18700.Lifetime=nr(1.0099999904632568,1.0099999904632568)
OuterGlare_18700.Speed=nr(0,0)
OuterGlare_18700.Rotation=nr(0,360)
OuterGlare_18700.RotSpeed=nr(0,0)
OuterGlare_18700.Size=ns({nsk(0.000000,11.826000,0.000000),nsk(1.000000,12.960000,0.000000)})
OuterGlare_18700.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.201000,0.965000,0.000000),nsk(0.799000,0.990000,0.000000),nsk(1.000000,1.000000,0.000000)})
OuterGlare_18700.Color=cs({csk(0.000000,c3(1.000000,0.325490,0.325490)),csk(1.000000,c3(1.000000,0.325490,0.325490))})
OuterGlare_18700.LightEmission=1
OuterGlare_18700.LightInfluence=0
OuterGlare_18700.Acceleration=v3(0.000000,0.000000,0.000000)
OuterGlare_18700.Drag=0
OuterGlare_18700.EmissionDirection=Enum.NormalId.Top
OuterGlare_18700.SpreadAngle=v2(0.000000,0.000000)
OuterGlare_18700.ZOffset=-2
OuterGlare_18700.Texture="rbxassetid://15501999565"
OuterGlare_18700.LockedToPart=true
OuterGlare_18700.Orientation=Enum.ParticleOrientation.FacingCamera
OuterGlare_18700.FlipbookLayout=Enum.ParticleFlipbookLayout.None
OuterGlare_18700.FlipbookMode=Enum.ParticleFlipbookMode.Loop
OuterGlare_18700.FlipbookFramerate=nr(1,1)
OuterGlare_18700.FlipbookStartRandom=false
OuterGlare_18700.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local PointLight_18701=i("PointLight", Spin2_18676)
PointLight_18701.Name="PointLight"
PointLight_18701:SetAttribute("AuraInstance", true)

local RingLines_18702=i("ParticleEmitter", Spin2_18676)
RingLines_18702.Name="RingLines"
RingLines_18702:SetAttribute("AuraInstance", true)
RingLines_18702.Enabled=true
RingLines_18702.Rate=8
RingLines_18702.Lifetime=nr(1.0099999904632568,1.0099999904632568)
RingLines_18702.Speed=nr(0,0)
RingLines_18702.Rotation=nr(0,0)
RingLines_18702.RotSpeed=nr(0,0)
RingLines_18702.Size=ns({nsk(0.000000,21.599998,0.000000),nsk(1.000000,21.599998,0.000000)})
RingLines_18702.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.201000,0.970000,0.000000),nsk(0.799000,0.990000,0.000000),nsk(1.000000,1.000000,0.000000)})
RingLines_18702.Color=cs({csk(0.000000,c3(1.000000,0.325490,0.325490)),csk(1.000000,c3(1.000000,0.325490,0.325490))})
RingLines_18702.LightEmission=1
RingLines_18702.LightInfluence=0
RingLines_18702.Acceleration=v3(0.000000,0.000000,0.000000)
RingLines_18702.Drag=0
RingLines_18702.EmissionDirection=Enum.NormalId.Top
RingLines_18702.SpreadAngle=v2(0.000000,0.000000)
RingLines_18702.ZOffset=-2
RingLines_18702.Texture="http://www.roblox.com/asset/?id=108523870700360"
RingLines_18702.LockedToPart=true
RingLines_18702.Orientation=Enum.ParticleOrientation.FacingCamera
RingLines_18702.FlipbookLayout=Enum.ParticleFlipbookLayout.None
RingLines_18702.FlipbookMode=Enum.ParticleFlipbookMode.Loop
RingLines_18702.FlipbookFramerate=nr(1,1)
RingLines_18702.FlipbookStartRandom=false
RingLines_18702.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Star_18703=i("ParticleEmitter", Spin2_18676)
Star_18703.Name="Star"
Star_18703:SetAttribute("AuraInstance", true)
Star_18703.Enabled=true
Star_18703.Rate=7
Star_18703.Lifetime=nr(1,1)
Star_18703.Speed=nr(0,0)
Star_18703.Rotation=nr(0,0)
Star_18703.RotSpeed=nr(0,0)
Star_18703.Size=ns({nsk(0.000000,8.640000,0.000000),nsk(0.100000,7.515756,0.000000),nsk(0.200000,6.439473,0.000000),nsk(0.300000,5.423488,0.000000),nsk(0.400000,4.477119,0.000000),nsk(0.500000,3.603080,0.000000),nsk(0.600000,2.796101,0.000000),nsk(0.700000,2.044976,0.000000),nsk(0.800000,1.336395,0.000000),nsk(0.900000,0.658043,0.000000),nsk(1.000000,0.000000,0.000000)})
Star_18703.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.507483,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Star_18703.Color=cs({csk(0.000000,c3(0.600000,0.129412,0.137255)),csk(1.000000,c3(0.301961,0.054902,0.062745))})
Star_18703.LightEmission=1
Star_18703.LightInfluence=0
Star_18703.Acceleration=v3(0.000000,0.000000,0.000000)
Star_18703.Drag=1
Star_18703.EmissionDirection=Enum.NormalId.Top
Star_18703.SpreadAngle=v2(5.000000,5.000000)
Star_18703.ZOffset=0
Star_18703.Texture="rbxassetid://14590086212"
Star_18703.LockedToPart=true
Star_18703.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
Star_18703.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Star_18703.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Star_18703.FlipbookFramerate=nr(5,5)
Star_18703.FlipbookStartRandom=false
Star_18703.Squash=ns({nsk(0.000000,0.250000,0.000000),nsk(1.000000,0.250000,0.000000)})

local Trail_18704=i("Trail", Spin2_18676)
Trail_18704.Name="Trail"
Trail_18704:SetAttribute("AuraInstance", true)
Trail_18704.Enabled=true
Trail_18704.Lifetime=1
Trail_18704.FaceCamera=true
Trail_18704.WidthScale=ns({nsk(0.000000,0.938250,0.000000),nsk(1.000000,0.000000,0.000000)})
Trail_18704.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.500000,0.000000)})
Trail_18704.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.180392,0.180392))})
Trail_18704.Texture="https://assetgame.roblox.com/asset/?id=12713360851&assetName=TrailElectric24"
Trail_18704.TextureLength=1.0800000429153442
Trail_18704.LightEmission=0.6000000238418579
Trail_18704.LightInfluence=0

local VerticalLine_18705=i("ParticleEmitter", Spin2_18676)
VerticalLine_18705.Name="Vertical Line"
VerticalLine_18705:SetAttribute("AuraInstance", true)
VerticalLine_18705.Enabled=true
VerticalLine_18705.Rate=8
VerticalLine_18705.Lifetime=nr(1,1)
VerticalLine_18705.Speed=nr(0,0)
VerticalLine_18705.Rotation=nr(0,0)
VerticalLine_18705.RotSpeed=nr(0,0)
VerticalLine_18705.Size=ns({nsk(0.000000,2.293236,0.000000),nsk(1.000000,9.165312,0.000000)})
VerticalLine_18705.Transparency=ns({nsk(0.000000,0.737500,0.000000),nsk(1.000000,1.000000,0.000000)})
VerticalLine_18705.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.223529)),csk(1.000000,c3(1.000000,0.223529,0.223529))})
VerticalLine_18705.LightEmission=1
VerticalLine_18705.LightInfluence=0
VerticalLine_18705.Acceleration=v3(0.000000,0.000000,0.000000)
VerticalLine_18705.Drag=0
VerticalLine_18705.EmissionDirection=Enum.NormalId.Top
VerticalLine_18705.SpreadAngle=v2(0.000000,0.000000)
VerticalLine_18705.ZOffset=-2
VerticalLine_18705.Texture="rbxassetid://14032952906"
VerticalLine_18705.LockedToPart=true
VerticalLine_18705.Orientation=Enum.ParticleOrientation.FacingCamera
VerticalLine_18705.FlipbookLayout=Enum.ParticleFlipbookLayout.None
VerticalLine_18705.FlipbookMode=Enum.ParticleFlipbookMode.Loop
VerticalLine_18705.FlipbookFramerate=nr(1,1)
VerticalLine_18705.FlipbookStartRandom=false
VerticalLine_18705.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})

local plosoirion_18706=i("Attachment", Spin2_18676)
plosoirion_18706.Name="plosoirion"
plosoirion_18706:SetAttribute("AuraInstance", true)
plosoirion_18706.Position=v3(0.000000,0.000000,0.000000)
plosoirion_18706.Visible=false

local BGM_18707=i("Sound", plosoirion_18706)
BGM_18707.Name="BGM"
BGM_18707:SetAttribute("Original", 2)
BGM_18707:SetAttribute("AuraInstance", true)
BGM_18707.SoundId="rbxassetid://9126102254"
BGM_18707.Volume=2
BGM_18707.PlaybackSpeed=3
BGM_18707.Looped=false
BGM_18707.TimePosition=0
BGM_18707.RollOffMode=Enum.RollOffMode.Inverse
BGM_18707.RollOffMaxDistance=10800
BGM_18707.RollOffMinDistance=10.799999237060547
BGM_18707.EmitterSize=10.799999237060547
BGM_18707.Playing=false

local Crescents_18708=i("ParticleEmitter", plosoirion_18706)
Crescents_18708.Name="Crescents"
Crescents_18708:SetAttribute("AuraInstance", true)
Crescents_18708:SetAttribute("VFX",true)
Crescents_18708:SetAttribute("EmitCount", "8")
Crescents_18708.Enabled=false
Crescents_18708.Rate=10
Crescents_18708.Lifetime=nr(0.4000000059604645,0.8999999761581421)
Crescents_18708.Speed=nr(0.010799999348819256,0.010799999348819256)
Crescents_18708.Rotation=nr(-360,360)
Crescents_18708.RotSpeed=nr(0.0020000000949949026,0.0020000000949949026)
Crescents_18708.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.056000,1.904161,0.000000),nsk(0.112000,3.698618,0.000000),nsk(0.168000,5.383370,0.000000),nsk(0.224000,6.958416,0.000000),nsk(0.280000,8.423759,0.000000),nsk(0.336000,9.779397,0.000000),nsk(0.392000,11.025329,0.000000),nsk(0.448000,12.161557,0.000000),nsk(0.504000,13.188081,0.000000),nsk(0.560000,14.104899,0.000000),nsk(0.616000,14.912012,0.000000),nsk(0.672000,15.609421,0.000000),nsk(0.728000,16.197124,0.000000),nsk(0.784000,16.675123,0.000000),nsk(0.840000,17.043419,0.000000),nsk(0.896000,17.302010,0.000000),nsk(0.952000,17.450893,0.000000),nsk(1.000000,17.491194,0.000000)})
Crescents_18708.Transparency=ns({nsk(0.000000,0.712500,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescents_18708.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Crescents_18708.LightEmission=-2
Crescents_18708.LightInfluence=0
Crescents_18708.Acceleration=v3(0.000000,0.000000,0.000000)
Crescents_18708.Drag=3.5
Crescents_18708.EmissionDirection=Enum.NormalId.Top
Crescents_18708.SpreadAngle=v2(360.000000,360.000000)
Crescents_18708.ZOffset=6
Crescents_18708.Texture="rbxassetid://15314650876"
Crescents_18708.LockedToPart=true
Crescents_18708.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Crescents_18708.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Crescents_18708.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Crescents_18708.FlipbookFramerate=nr(1,1)
Crescents_18708.FlipbookStartRandom=false
Crescents_18708.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Shockwave_18709=i("ParticleEmitter", plosoirion_18706)
Shockwave_18709.Name="Shockwave"
Shockwave_18709:SetAttribute("EmitCount", "1")
Shockwave_18709:SetAttribute("AuraInstance", true)
Shockwave_18709.Enabled=false
Shockwave_18709.Rate=1
Shockwave_18709.Lifetime=nr(0.4000000059604645,1)
Shockwave_18709.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18709.Rotation=nr(-360,360)
Shockwave_18709.RotSpeed=nr(0,0)
Shockwave_18709.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18709.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18709.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18709.LightEmission=-1
Shockwave_18709.LightInfluence=0
Shockwave_18709.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18709.Drag=0
Shockwave_18709.EmissionDirection=Enum.NormalId.Top
Shockwave_18709.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18709.ZOffset=10
Shockwave_18709.Texture="rbxassetid://14366190868"
Shockwave_18709.LockedToPart=true
Shockwave_18709.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18709.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Shockwave_18709.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Shockwave_18709.FlipbookFramerate=nr(1,1)
Shockwave_18709.FlipbookStartRandom=false
Shockwave_18709.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Shockwave_18710=i("ParticleEmitter", plosoirion_18706)
Shockwave_18710.Name="Shockwave"
Shockwave_18710:SetAttribute("EmitCount", "1")
Shockwave_18710:SetAttribute("AuraInstance", true)
Shockwave_18710.Enabled=false
Shockwave_18710.Rate=1
Shockwave_18710.Lifetime=nr(0.4000000059604645,1)
Shockwave_18710.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18710.Rotation=nr(-360,360)
Shockwave_18710.RotSpeed=nr(0,0)
Shockwave_18710.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18710.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18710.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18710.LightEmission=-1
Shockwave_18710.LightInfluence=0
Shockwave_18710.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18710.Drag=0
Shockwave_18710.EmissionDirection=Enum.NormalId.Top
Shockwave_18710.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18710.ZOffset=10
Shockwave_18710.Texture="rbxassetid://15314587909"
Shockwave_18710.LockedToPart=true
Shockwave_18710.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18710.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Shockwave_18710.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Shockwave_18710.FlipbookFramerate=nr(1,1)
Shockwave_18710.FlipbookStartRandom=false
Shockwave_18710.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Shockwave_18711=i("ParticleEmitter", plosoirion_18706)
Shockwave_18711.Name="Shockwave"
Shockwave_18711:SetAttribute("EmitCount", "1")
Shockwave_18711:SetAttribute("AuraInstance", true)
Shockwave_18711.Enabled=false
Shockwave_18711.Rate=1
Shockwave_18711.Lifetime=nr(0.4000000059604645,1)
Shockwave_18711.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18711.Rotation=nr(-360,360)
Shockwave_18711.RotSpeed=nr(0,0)
Shockwave_18711.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18711.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18711.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18711.LightEmission=0
Shockwave_18711.LightInfluence=0
Shockwave_18711.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18711.Drag=0
Shockwave_18711.EmissionDirection=Enum.NormalId.Top
Shockwave_18711.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18711.ZOffset=10
Shockwave_18711.Texture="rbxassetid://14393243408"
Shockwave_18711.LockedToPart=true
Shockwave_18711.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18711.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Shockwave_18711.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Shockwave_18711.FlipbookFramerate=nr(1,1)
Shockwave_18711.FlipbookStartRandom=false
Shockwave_18711.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Shockwave_18712=i("ParticleEmitter", plosoirion_18706)
Shockwave_18712.Name="Shockwave"
Shockwave_18712:SetAttribute("EmitCount", "1")
Shockwave_18712:SetAttribute("AuraInstance", true)
Shockwave_18712.Enabled=false
Shockwave_18712.Rate=1
Shockwave_18712.Lifetime=nr(0.4000000059604645,1)
Shockwave_18712.Speed=nr(0.010799999348819256,0.010799999348819256)
Shockwave_18712.Rotation=nr(-360,360)
Shockwave_18712.RotSpeed=nr(0,0)
Shockwave_18712.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.106478,2.746848,0.000000),nsk(0.284478,6.370541,0.000000),nsk(0.548478,10.217918,0.000000),nsk(0.776478,12.186343,0.000000),nsk(1.000000,13.421082,0.000000)})
Shockwave_18712.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.135328,0.000000,0.000000),nsk(0.367521,0.581250,0.000000),nsk(0.621083,0.862500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shockwave_18712.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Shockwave_18712.LightEmission=-2
Shockwave_18712.LightInfluence=0
Shockwave_18712.Acceleration=v3(0.000000,0.000000,0.000000)
Shockwave_18712.Drag=0
Shockwave_18712.EmissionDirection=Enum.NormalId.Top
Shockwave_18712.SpreadAngle=v2(0.002000,0.002000)
Shockwave_18712.ZOffset=10
Shockwave_18712.Texture="rbxassetid://17323225068"
Shockwave_18712.LockedToPart=true
Shockwave_18712.Orientation=Enum.ParticleOrientation.FacingCamera
Shockwave_18712.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Shockwave_18712.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Shockwave_18712.FlipbookFramerate=nr(1,1)
Shockwave_18712.FlipbookStartRandom=false
Shockwave_18712.Squash=ns({nsk(0.000000,0.150000,0.000000),nsk(1.000000,0.150000,0.000000)})

local Stretched_18713=i("ParticleEmitter", plosoirion_18706)
Stretched_18713.Name="Stretched"
Stretched_18713:SetAttribute("EmitCount", 60)
Stretched_18713:SetAttribute("AuraInstance", true)
Stretched_18713.Enabled=false
Stretched_18713.Rate=9
Stretched_18713.Lifetime=nr(1,2)
Stretched_18713.Speed=nr(43.19999694824219,54.000003814697266)
Stretched_18713.Rotation=nr(90,90)
Stretched_18713.RotSpeed=nr(0,0)
Stretched_18713.Size=ns({nsk(0.000000,1.012500,0.985743),nsk(1.000000,0.000000,0.000000)})
Stretched_18713.Transparency=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
Stretched_18713.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Stretched_18713.LightEmission=-9
Stretched_18713.LightInfluence=0
Stretched_18713.Acceleration=v3(0.000000,-28.080000,0.000000)
Stretched_18713.Drag=4
Stretched_18713.EmissionDirection=Enum.NormalId.Top
Stretched_18713.SpreadAngle=v2(360.000000,360.000000)
Stretched_18713.ZOffset=0.10000000149011612
Stretched_18713.Texture="rbxassetid://6909741538"
Stretched_18713.LockedToPart=true
Stretched_18713.Orientation=Enum.ParticleOrientation.VelocityParallel
Stretched_18713.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Stretched_18713.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Stretched_18713.FlipbookFramerate=nr(1,1)
Stretched_18713.FlipbookStartRandom=false
Stretched_18713.Squash=ns({nsk(0.000000,1.524590,0.000000),nsk(1.000000,2.600000,0.000000)})

local Crescents_18714=i("ParticleEmitter", plosoirion_18706)
Crescents_18714.Name="Crescents"
Crescents_18714:SetAttribute("AuraInstance", true)
Crescents_18714:SetAttribute("VFX",true)
Crescents_18714:SetAttribute("EmitCount", "8")
Crescents_18714.Enabled=false
Crescents_18714.Rate=10
Crescents_18714.Lifetime=nr(0.4000000059604645,0.8999999761581421)
Crescents_18714.Speed=nr(0.010799999348819256,0.010799999348819256)
Crescents_18714.Rotation=nr(-360,360)
Crescents_18714.RotSpeed=nr(0.0020000000949949026,0.0020000000949949026)
Crescents_18714.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.056000,1.904161,0.000000),nsk(0.112000,3.698618,0.000000),nsk(0.168000,5.383370,0.000000),nsk(0.224000,6.958416,0.000000),nsk(0.280000,8.423759,0.000000),nsk(0.336000,9.779397,0.000000),nsk(0.392000,11.025329,0.000000),nsk(0.448000,12.161557,0.000000),nsk(0.504000,13.188081,0.000000),nsk(0.560000,14.104899,0.000000),nsk(0.616000,14.912012,0.000000),nsk(0.672000,15.609421,0.000000),nsk(0.728000,16.197124,0.000000),nsk(0.784000,16.675123,0.000000),nsk(0.840000,17.043419,0.000000),nsk(0.896000,17.302010,0.000000),nsk(0.952000,17.450893,0.000000),nsk(1.000000,17.491194,0.000000)})
Crescents_18714.Transparency=ns({nsk(0.000000,0.712500,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescents_18714.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Crescents_18714.LightEmission=-3
Crescents_18714.LightInfluence=0
Crescents_18714.Acceleration=v3(0.000000,0.000000,0.000000)
Crescents_18714.Drag=3.5
Crescents_18714.EmissionDirection=Enum.NormalId.Top
Crescents_18714.SpreadAngle=v2(360.000000,360.000000)
Crescents_18714.ZOffset=6
Crescents_18714.Texture="rbxassetid://73986130554150"
Crescents_18714.LockedToPart=true
Crescents_18714.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Crescents_18714.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Crescents_18714.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Crescents_18714.FlipbookFramerate=nr(1,1)
Crescents_18714.FlipbookStartRandom=false
Crescents_18714.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blood2_18715=i("ParticleEmitter", plosoirion_18706)
Blood2_18715.Name="Blood2"
Blood2_18715:SetAttribute("EmitCount", 85)
Blood2_18715:SetAttribute("AuraInstance", true)
Blood2_18715.Enabled=false
Blood2_18715.Rate=1
Blood2_18715.Lifetime=nr(0.8500000238418579,0.8500000238418579)
Blood2_18715.Speed=nr(21.599998474121094,32.39999771118164)
Blood2_18715.Rotation=nr(90,90)
Blood2_18715.RotSpeed=nr(0,0)
Blood2_18715.Size=ns({nsk(0.000000,0.135000,0.067500),nsk(1.000000,0.000000,0.000000)})
Blood2_18715.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Blood2_18715.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Blood2_18715.LightEmission=-9
Blood2_18715.LightInfluence=0
Blood2_18715.Acceleration=v3(0.000000,-27.000002,0.000000)
Blood2_18715.Drag=0
Blood2_18715.EmissionDirection=Enum.NormalId.Top
Blood2_18715.SpreadAngle=v2(360.000000,-360.000000)
Blood2_18715.ZOffset=2
Blood2_18715.Texture="rbxassetid://1084982817"
Blood2_18715.LockedToPart=false
Blood2_18715.Orientation=Enum.ParticleOrientation.VelocityParallel
Blood2_18715.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blood2_18715.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blood2_18715.FlipbookFramerate=nr(1,1)
Blood2_18715.FlipbookStartRandom=false
Blood2_18715.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Debris_18716=i("ParticleEmitter", plosoirion_18706)
Debris_18716.Name="Debris"
Debris_18716:SetAttribute("EmitCount", 50)
Debris_18716:SetAttribute("AuraInstance", true)
Debris_18716.Enabled=false
Debris_18716.Rate=1
Debris_18716.Lifetime=nr(1,2)
Debris_18716.Speed=nr(32.39999771118164,43.19999694824219)
Debris_18716.Rotation=nr(-360,360)
Debris_18716.RotSpeed=nr(0,0)
Debris_18716.Size=ns({nsk(0.000000,0.270000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_18716.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Debris_18716.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Debris_18716.LightEmission=-9
Debris_18716.LightInfluence=0
Debris_18716.Acceleration=v3(0.000000,-16.199999,0.000000)
Debris_18716.Drag=6
Debris_18716.EmissionDirection=Enum.NormalId.Top
Debris_18716.SpreadAngle=v2(360.000000,-360.000000)
Debris_18716.ZOffset=2
Debris_18716.Texture="rbxassetid://5561954395"
Debris_18716.LockedToPart=false
Debris_18716.Orientation=Enum.ParticleOrientation.FacingCamera
Debris_18716.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debris_18716.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Debris_18716.FlipbookFramerate=nr(1,1)
Debris_18716.FlipbookStartRandom=false
Debris_18716.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Debris_18717=i("ParticleEmitter", plosoirion_18706)
Debris_18717.Name="Debris"
Debris_18717:SetAttribute("EmitCount", 50)
Debris_18717:SetAttribute("AuraInstance", true)
Debris_18717.Enabled=false
Debris_18717.Rate=1
Debris_18717.Lifetime=nr(1,2)
Debris_18717.Speed=nr(32.39999771118164,43.19999694824219)
Debris_18717.Rotation=nr(-360,360)
Debris_18717.RotSpeed=nr(0,0)
Debris_18717.Size=ns({nsk(0.000000,0.270000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_18717.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Debris_18717.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Debris_18717.LightEmission=-9
Debris_18717.LightInfluence=0
Debris_18717.Acceleration=v3(0.000000,-16.199999,0.000000)
Debris_18717.Drag=6
Debris_18717.EmissionDirection=Enum.NormalId.Top
Debris_18717.SpreadAngle=v2(360.000000,-360.000000)
Debris_18717.ZOffset=2
Debris_18717.Texture="rbxassetid://5561954395"
Debris_18717.LockedToPart=false
Debris_18717.Orientation=Enum.ParticleOrientation.FacingCamera
Debris_18717.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Debris_18717.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Debris_18717.FlipbookFramerate=nr(1,1)
Debris_18717.FlipbookStartRandom=false
Debris_18717.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Pulse_18718=i("ParticleEmitter", plosoirion_18706)
Pulse_18718.Name="Pulse"
Pulse_18718:SetAttribute("EmitCount", 1)
Pulse_18718:SetAttribute("AuraInstance", true)
Pulse_18718.Enabled=false
Pulse_18718.Rate=1
Pulse_18718.Lifetime=nr(0.4000000059604645,0.4000000059604645)
Pulse_18718.Speed=nr(0.0013874374562874436,0.0013874374562874436)
Pulse_18718.Rotation=nr(-1000,1000)
Pulse_18718.RotSpeed=nr(0,0)
Pulse_18718.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,2.984332,0.000000),nsk(0.200000,5.637245,0.000000),nsk(0.300000,7.984483,0.000000),nsk(0.400000,10.056222,0.000000),nsk(0.500000,11.884081,0.000000),nsk(0.600000,13.498939,0.000000),nsk(0.700000,14.929554,0.000000),nsk(0.800000,16.201857,0.000000),nsk(0.900000,17.338717,0.000000),nsk(1.000000,18.360001,0.000000)})
Pulse_18718.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498000,0.994000,0.000000),nsk(1.000000,1.000000,0.000000)})
Pulse_18718.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Pulse_18718.LightEmission=1
Pulse_18718.LightInfluence=0
Pulse_18718.Acceleration=v3(0.000000,0.000000,0.000000)
Pulse_18718.Drag=1
Pulse_18718.EmissionDirection=Enum.NormalId.Top
Pulse_18718.SpreadAngle=v2(5.000000,5.000000)
Pulse_18718.ZOffset=0
Pulse_18718.Texture="http://www.roblox.com/asset/?id=7185003058"
Pulse_18718.LockedToPart=true
Pulse_18718.Orientation=Enum.ParticleOrientation.FacingCamera
Pulse_18718.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Pulse_18718.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Pulse_18718.FlipbookFramerate=nr(5,5)
Pulse_18718.FlipbookStartRandom=false
Pulse_18718.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local explosionin_18719=i("ParticleEmitter", plosoirion_18706)
explosionin_18719.Name="explosionin"
explosionin_18719:SetAttribute("EmitCount", 2)
explosionin_18719:SetAttribute("AuraInstance", true)
explosionin_18719.Enabled=false
explosionin_18719.Rate=1
explosionin_18719.Lifetime=nr(0.8500000238418579,0.8500000238418579)
explosionin_18719.Speed=nr(0,0)
explosionin_18719.Rotation=nr(-360,360)
explosionin_18719.RotSpeed=nr(0,0)
explosionin_18719.Size=ns({nsk(0.000000,8.640000,5.400000),nsk(1.000000,0.000000,0.000000)})
explosionin_18719.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.193850,0.203390,0.000000),nsk(1.000000,1.000000,0.000000)})
explosionin_18719.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
explosionin_18719.LightEmission=1
explosionin_18719.LightInfluence=0
explosionin_18719.Acceleration=v3(0.000000,0.000000,0.000000)
explosionin_18719.Drag=0
explosionin_18719.EmissionDirection=Enum.NormalId.Top
explosionin_18719.SpreadAngle=v2(0.000000,0.000000)
explosionin_18719.ZOffset=12
explosionin_18719.Texture="https://assetgame.roblox.com/asset/?id=12363778394&assetName=flare_4"
explosionin_18719.LockedToPart=true
explosionin_18719.Orientation=Enum.ParticleOrientation.FacingCamera
explosionin_18719.FlipbookLayout=Enum.ParticleFlipbookLayout.None
explosionin_18719.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
explosionin_18719.FlipbookFramerate=nr(1,1)
explosionin_18719.FlipbookStartRandom=false
explosionin_18719.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Blood_18720=i("ParticleEmitter", plosoirion_18706)
Blood_18720.Name="Blood"
Blood_18720:SetAttribute("EmitCount", 45)
Blood_18720:SetAttribute("AuraInstance", true)
Blood_18720.Enabled=false
Blood_18720.Rate=1
Blood_18720.Lifetime=nr(0.8500000238418579,0.8500000238418579)
Blood_18720.Speed=nr(14.039999961853027,28.079999923706055)
Blood_18720.Rotation=nr(90,90)
Blood_18720.RotSpeed=nr(0,0)
Blood_18720.Size=ns({nsk(0.000000,1.215000,0.674999),nsk(1.000000,0.000000,0.000000)})
Blood_18720.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499320,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Blood_18720.Color=cs({csk(0.000000,c3(1.000000,0.223529,0.235294)),csk(1.000000,c3(1.000000,0.223529,0.235294))})
Blood_18720.LightEmission=-9
Blood_18720.LightInfluence=0
Blood_18720.Acceleration=v3(0.000000,-27.000002,0.000000)
Blood_18720.Drag=0
Blood_18720.EmissionDirection=Enum.NormalId.Top
Blood_18720.SpreadAngle=v2(360.000000,-360.000000)
Blood_18720.ZOffset=2
Blood_18720.Texture="https://assetgame.roblox.com/asset/?id=12363818754&assetName=lines_1"
Blood_18720.LockedToPart=false
Blood_18720.Orientation=Enum.ParticleOrientation.VelocityParallel
Blood_18720.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blood_18720.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blood_18720.FlipbookFramerate=nr(1,1)
Blood_18720.FlipbookStartRandom=false
Blood_18720.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local stars_18721=i("ParticleEmitter", Spin2_18676)
stars_18721.Name="stars"
stars_18721:SetAttribute("AuraInstance", true)
stars_18721.Enabled=true
stars_18721.Rate=30
stars_18721.Lifetime=nr(1,1)
stars_18721.Speed=nr(0.02159999869763851,0.02159999869763851)
stars_18721.Rotation=nr(90,90)
stars_18721.RotSpeed=nr(0,0)
stars_18721.Size=ns({nsk(0.000000,7.560000,0.000000),nsk(1.000000,7.560000,0.000000)})
stars_18721.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502494,0.843750,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18721.Color=cs({csk(0.000000,c3(0.470588,0.047059,0.047059)),csk(1.000000,c3(0.470588,0.047059,0.047059))})
stars_18721.LightEmission=-9
stars_18721.LightInfluence=0
stars_18721.Acceleration=v3(0.000000,0.000000,0.000000)
stars_18721.Drag=0.8999999761581421
stars_18721.EmissionDirection=Enum.NormalId.Top
stars_18721.SpreadAngle=v2(180.000000,0.000000)
stars_18721.ZOffset=-2
stars_18721.Texture="rbxassetid://8037777212"
stars_18721.LockedToPart=true
stars_18721.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_18721.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_18721.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_18721.FlipbookFramerate=nr(5,5)
stars_18721.FlipbookStartRandom=false
stars_18721.Squash=ns({nsk(0.000000,-0.600000,0.000000),nsk(1.000000,-0.600000,0.000000)})

local stars_18722=i("ParticleEmitter", Spin2_18676)
stars_18722.Name="stars"
stars_18722:SetAttribute("AuraInstance", true)
stars_18722.Enabled=true
stars_18722.Rate=1
stars_18722.Lifetime=nr(2,2)
stars_18722.Speed=nr(0.02159999869763851,0.02159999869763851)
stars_18722.Rotation=nr(0,0)
stars_18722.RotSpeed=nr(0,0)
stars_18722.Size=ns({nsk(0.000000,9.720000,0.000000),nsk(1.000000,9.720000,0.000000)})
stars_18722.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.509383,0.819672,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18722.Color=cs({csk(0.000000,c3(1.000000,0.235294,0.235294)),csk(1.000000,c3(1.000000,0.235294,0.235294))})
stars_18722.LightEmission=1
stars_18722.LightInfluence=0
stars_18722.Acceleration=v3(0.000000,0.000000,0.000000)
stars_18722.Drag=0.8999999761581421
stars_18722.EmissionDirection=Enum.NormalId.Top
stars_18722.SpreadAngle=v2(180.000000,0.000000)
stars_18722.ZOffset=6
stars_18722.Texture="rbxassetid://82921243876307"
stars_18722.LockedToPart=true
stars_18722.Orientation=Enum.ParticleOrientation.FacingCameraWorldUp
stars_18722.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stars_18722.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stars_18722.FlipbookFramerate=nr(5,5)
stars_18722.FlipbookStartRandom=false
stars_18722.Squash=ns({nsk(0.000000,-2.000000,0.000000),nsk(1.000000,-2.000000,0.000000)})

local Blackring_18723=i("ParticleEmitter", Spin2_18676)
Blackring_18723.Name="Black ring"
Blackring_18723:SetAttribute("AuraInstance", true)
Blackring_18723.Enabled=true
Blackring_18723.Rate=50
Blackring_18723.Lifetime=nr(0.800000011920929,0.800000011920929)
Blackring_18723.Speed=nr(0.0015120001044124365,0.0015120001044124365)
Blackring_18723.Rotation=nr(-360,360)
Blackring_18723.RotSpeed=nr(0,0)
Blackring_18723.Size=ns({nsk(0.000000,11.664001,0.000000),nsk(1.000000,0.000000,0.000000)})
Blackring_18723.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.839312,0.266304,0.000000),nsk(1.000000,1.000000,0.000000)})
Blackring_18723.Color=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))})
Blackring_18723.LightEmission=-2
Blackring_18723.LightInfluence=0
Blackring_18723.Acceleration=v3(0.000000,0.000000,0.000000)
Blackring_18723.Drag=0
Blackring_18723.EmissionDirection=Enum.NormalId.Top
Blackring_18723.SpreadAngle=v2(6.000000,6.000000)
Blackring_18723.ZOffset=7
Blackring_18723.Texture="rbxassetid://122460061985642"
Blackring_18723.LockedToPart=true
Blackring_18723.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Blackring_18723.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Blackring_18723.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Blackring_18723.FlipbookFramerate=nr(24,24)
Blackring_18723.FlipbookStartRandom=false
Blackring_18723.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local PointLight_18724=i("PointLight", Spin2_18676)
PointLight_18724.Name="PointLight"
PointLight_18724:SetAttribute("AuraInstance", true)

local Partath_18625=i("Part", HumanoidRootPart_18502)
Partath_18625.Name="Partath"
Partath_18625:SetAttribute("AuraInstance", true)



local beamd_18297=i("Attachment", torso)
beamd_18297.Name="beamd"
beamd_18297:SetAttribute("AuraInstance", true)
beamd_18297.Position=v3(0.000000,0.000000,0.000000)
beamd_18297.Visible=false


local beam1_18299=i("Beam", beamd_18297)
beam1_18299.Name="beam1"
beam1_18299:SetAttribute("AuraInstance", true)
beam1_18299.Enabled=true
beam1_18299.Width0=1.7999999523162842
beam1_18299.Width1=1.7999999523162842
beam1_18299.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.298128,1.000000,0.000000),nsk(0.596257,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam1_18299.Color=cs({csk(0.000000,c3(1.000000,0.137255,0.152941)),csk(1.000000,c3(1.000000,0.137255,0.152941))})
beam1_18299.CurveSize0=9
beam1_18299.CurveSize1=0
beam1_18299.FaceCamera=true
beam1_18299.LightEmission=0
beam1_18299.LightInfluence=0
beam1_18299.Segments=20
beam1_18299.Texture="https://assetgame.roblox.com/asset/?id=12713360567&assetName=trail2"
beam1_18299.TextureLength=13.5
beam1_18299.TextureSpeed=1

local beam22=i("Beam", beamd_18297)
beam22.Name="beam21"
beam22:SetAttribute("AuraInstance", true)
beam22.Enabled=true
beam22.Width0=1.7999999523162842
beam22.Width1=1.7999999523162842
beam22.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.298128,1.000000,0.000000),nsk(0.596257,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam22.Color=cs({csk(0.000000,c3(1.000000,0.137255,0.152941)),csk(1.000000,c3(1.000000,0.137255,0.152941))})
beam22.CurveSize0=9
beam22.CurveSize1=0
beam22.FaceCamera=true
beam22.LightEmission=1
beam22.LightInfluence=0
beam22.Segments=20
beam22.Texture="https://assetgame.roblox.com/asset/?id=12713360567&assetName=trail2"
beam22.TextureLength=13.5
beam22.TextureSpeed=1

local beam21=i("Beam", beamd_18297)
beam21.Name="2"
beam21:SetAttribute("AuraInstance", true)
beam21.Enabled=true
beam21.Width0=1.7999999523162842
beam21.Width1=1.7999999523162842
beam21.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.298128,1.000000,0.000000),nsk(0.596257,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam21.Color=cs({csk(0.000000,c3(1.000000,0.137255,0.152941)),csk(1.000000,c3(1.000000,0.137255,0.152941))})
beam21.CurveSize0=9
beam21.CurveSize1=0
beam21.FaceCamera=true
beam21.LightEmission=0
beam21.LightInfluence=0
beam21.Segments=20
beam21.Texture="https://assetgame.roblox.com/asset/?id=12713360567&assetName=trail2"
beam21.TextureLength=13.5
beam21.TextureSpeed=1

local Attachment_18302=i("Attachment", beamd_18297)
Attachment_18302.Name="Attachment"
Attachment_18302:SetAttribute("AuraInstance", true)
Attachment_18302.Position=v3(0.000000,0.000000,0.000007)
Attachment_18302.Visible=false

local beam1_18303=i("Beam", beamd_18297)
beam1_18303.Name="beam1"
beam1_18303:SetAttribute("AuraInstance", true)
beam1_18303.Enabled=true
beam1_18303.Width0=1.7999999523162842
beam1_18303.Width1=1.7999999523162842
beam1_18303.Transparency=ns({nsk(0.000000,0.022220,0.000000),nsk(1.000000,0.022220,0.000000)})
beam1_18303.Color=cs({csk(0.000000,c3(1.000000,0.137255,0.152941)),csk(1.000000,c3(1.000000,0.137255,0.152941))})
beam1_18303.CurveSize0=9
beam1_18303.CurveSize1=0
beam1_18303.FaceCamera=true
beam1_18303.LightEmission=1
beam1_18303.LightInfluence=0
beam1_18303.Segments=20
beam1_18303.Texture="rbxassetid://15021681998"
beam1_18303.TextureLength=13.5
beam1_18303.TextureSpeed=1

local beam2_18304=i("Beam", beamd_18297)
beam2_18304.Name="beam2"
beam2_18304:SetAttribute("AuraInstance", true)
beam2_18304.Enabled=true
beam2_18304.Width0=1.7999999523162842
beam2_18304.Width1=1.7999999523162842
beam2_18304.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.298128,1.000000,0.000000),nsk(0.596257,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18304.Color=cs({csk(0.000000,c3(1.000000,0.137255,0.152941)),csk(1.000000,c3(1.000000,0.137255,0.152941))})
beam2_18304.CurveSize0=9
beam2_18304.CurveSize1=0
beam2_18304.FaceCamera=true
beam2_18304.LightEmission=1
beam2_18304.LightInfluence=0
beam2_18304.Segments=20
beam2_18304.Texture="https://assetgame.roblox.com/asset/?id=12713360567&assetName=trail2"
beam2_18304.TextureLength=13.5
beam2_18304.TextureSpeed=1

local beam2_18305=i("Beam", beamd_18297)
beam2_18305.Name="beam21"
beam2_18305:SetAttribute("AuraInstance", true)
beam2_18305.Enabled=true
beam2_18305.Width0=1.7999999523162842
beam2_18305.Width1=1.7999999523162842
beam2_18305.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.298128,1.000000,0.000000),nsk(0.594170,0.619565,0.000000),nsk(1.000000,1.000000,0.000000)})
beam2_18305.Color=cs({csk(0.000000,c3(1.000000,0.137255,0.152941)),csk(1.000000,c3(1.000000,0.137255,0.152941))})
beam2_18305.CurveSize0=9
beam2_18305.CurveSize1=0
beam2_18305.FaceCamera=true
beam2_18305.LightEmission=0
beam2_18305.LightInfluence=0
beam2_18305.Segments=20
beam2_18305.Texture="rbxassetid://15021681998"
beam2_18305.TextureLength=13.5
beam2_18305.TextureSpeed=1


local Attachment_18260=i("Attachment", Folder)
Attachment_18260.Name="Attachment"
Attachment_18260:SetAttribute("AuraInstance", true)
Attachment_18260.Position = v3(-0.064627,0.140584,0.000179)
Attachment_18260.Visible = false

local stars_18261=i("ParticleEmitter", Attachment_18260)
stars_18261.Name="stars"
stars_18261:SetAttribute("AuraInstance", true)
stars_18261.Enabled = true
stars_18261.Rate = 30
stars_18261.Lifetime = nr(1,1)
stars_18261.Speed = nr(0.018000001087784767,0.018000001087784767)
stars_18261.Rotation = nr(90,90)
stars_18261.RotSpeed = nr(0,0)
stars_18261.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,1.459459,0.000000),nsk(1.000000,0.000000,0.000000)})
stars_18261.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.509383,0.819672,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18261.Color = cs({csk(0.000000,c3(1.000000,0.258824,0.270588)),csk(1.000000,c3(1.000000,0.258824,0.270588))})
stars_18261.LightEmission = 1
stars_18261.LightInfluence = 0
stars_18261.Acceleration = v3(0.000000,0.000000,0.000000)
stars_18261.Drag = 0.8999999761581421
stars_18261.EmissionDirection = Enum.NormalId.Top
stars_18261.SpreadAngle = v2(180.000000,0.000000)
stars_18261.ZOffset = 3
stars_18261.Texture = "rbxassetid://8037777212"
stars_18261.LockedToPart = true
stars_18261.Orientation = Enum.ParticleOrientation.FacingCamera
stars_18261.FlipbookLayout = Enum.ParticleFlipbookLayout.None
stars_18261.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
stars_18261.FlipbookFramerate = nr(5,5)
stars_18261.FlipbookStartRandom = false
stars_18261.Squash = ns({nsk(0.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})

local stars_18262=i("ParticleEmitter", Attachment_18260)
stars_18262.Name="stars"
stars_18262:SetAttribute("AuraInstance", true)
stars_18262.Enabled = true
stars_18262.Rate = 30
stars_18262.Lifetime = nr(1,1)
stars_18262.Speed = nr(0.018000001087784767,0.018000001087784767)
stars_18262.Rotation = nr(90,90)
stars_18262.RotSpeed = nr(0,0)
stars_18262.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.496259,0.810811,0.000000),nsk(1.000000,0.000000,0.000000)})
stars_18262.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.509383,0.819672,0.000000),nsk(1.000000,1.000000,0.000000)})
stars_18262.Color = cs({csk(0.000000,c3(1.000000,0.258824,0.270588)),csk(1.000000,c3(1.000000,0.258824,0.270588))})
stars_18262.LightEmission = 1
stars_18262.LightInfluence = 0
stars_18262.Acceleration = v3(0.000000,0.000000,0.000000)
stars_18262.Drag = 0.8999999761581421
stars_18262.EmissionDirection = Enum.NormalId.Top
stars_18262.SpreadAngle = v2(180.000000,0.000000)
stars_18262.ZOffset = 3
stars_18262.Texture = "rbxassetid://8037777212"
stars_18262.LockedToPart = true
stars_18262.Orientation = Enum.ParticleOrientation.FacingCamera
stars_18262.FlipbookLayout = Enum.ParticleFlipbookLayout.None
stars_18262.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
stars_18262.FlipbookFramerate = nr(5,5)
stars_18262.FlipbookStartRandom = false
stars_18262.Squash = ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})

local mainshine_18263=i("ParticleEmitter", Attachment_18260)
mainshine_18263.Name="mainshine"
mainshine_18263:SetAttribute("AuraInstance", true)
mainshine_18263.Enabled = true
mainshine_18263.Rate = 2
mainshine_18263.Lifetime = nr(1,1)
mainshine_18263.Speed = nr(0.0009000000427477062,0.0009000000427477062)
mainshine_18263.Rotation = nr(0,0)
mainshine_18263.RotSpeed = nr(0,0)
mainshine_18263.Size = ns({nsk(0.000000,9.000000,0.000000),nsk(1.000000,9.000000,0.000000)})
mainshine_18263.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501495,0.570652,0.000000),nsk(1.000000,1.000000,0.000000)})
mainshine_18263.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
mainshine_18263.LightEmission = 1
mainshine_18263.LightInfluence = 0
mainshine_18263.Acceleration = v3(0.000000,0.000000,0.000000)
mainshine_18263.Drag = 0
mainshine_18263.EmissionDirection = Enum.NormalId.Top
mainshine_18263.SpreadAngle = v2(0.000000,0.000000)
mainshine_18263.ZOffset = 3
mainshine_18263.Texture = "rbxassetid://82921243876307"
mainshine_18263.LockedToPart = true
mainshine_18263.Orientation = Enum.ParticleOrientation.FacingCamera
mainshine_18263.FlipbookLayout = Enum.ParticleFlipbookLayout.None
mainshine_18263.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
mainshine_18263.FlipbookFramerate = nr(1,1)
mainshine_18263.FlipbookStartRandom = false
mainshine_18263.Squash = ns({nsk(0.000000,-1.000000,0.000000),nsk(1.000000,-1.000000,0.000000)})

local shine2_18264=i("ParticleEmitter", Attachment_18260)
shine2_18264.Name="shine2"
shine2_18264:SetAttribute("AuraInstance", true)
shine2_18264.Enabled = true
shine2_18264.Rate = 2
shine2_18264.Lifetime = nr(1,1)
shine2_18264.Speed = nr(0.0009000000427477062,0.0009000000427477062)
shine2_18264.Rotation = nr(0,0)
shine2_18264.RotSpeed = nr(0,0)
shine2_18264.Size = ns({nsk(0.000000,5.400000,0.000000),nsk(1.000000,5.400000,0.000000)})
shine2_18264.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine2_18264.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
shine2_18264.LightEmission = 1
shine2_18264.LightInfluence = 0
shine2_18264.Acceleration = v3(0.000000,0.000000,0.000000)
shine2_18264.Drag = 0
shine2_18264.EmissionDirection = Enum.NormalId.Top
shine2_18264.SpreadAngle = v2(0.000000,0.000000)
shine2_18264.ZOffset = 3
shine2_18264.Texture = "rbxassetid://124535207786292"
shine2_18264.LockedToPart = true
shine2_18264.Orientation = Enum.ParticleOrientation.FacingCamera
shine2_18264.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shine2_18264.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
shine2_18264.FlipbookFramerate = nr(1,1)
shine2_18264.FlipbookStartRandom = false
shine2_18264.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local shine3_18265=i("ParticleEmitter", Attachment_18260)
shine3_18265.Name="shine3"
shine3_18265:SetAttribute("AuraInstance", true)
shine3_18265.Enabled = true
shine3_18265.Rate = 2
shine3_18265.Lifetime = nr(1,1)
shine3_18265.Speed = nr(0.0009000000427477062,0.0009000000427477062)
shine3_18265.Rotation = nr(0,0)
shine3_18265.RotSpeed = nr(0,0)
shine3_18265.Size = ns({nsk(0.000000,10.799999,0.000000),nsk(1.000000,10.799999,0.000000)})
shine3_18265.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine3_18265.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
shine3_18265.LightEmission = 1
shine3_18265.LightInfluence = 0
shine3_18265.Acceleration = v3(0.000000,0.000000,0.000000)
shine3_18265.Drag = 0
shine3_18265.EmissionDirection = Enum.NormalId.Top
shine3_18265.SpreadAngle = v2(0.000000,0.000000)
shine3_18265.ZOffset = 3
shine3_18265.Texture = "rbxassetid://15501860320"
shine3_18265.LockedToPart = true
shine3_18265.Orientation = Enum.ParticleOrientation.FacingCamera
shine3_18265.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shine3_18265.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
shine3_18265.FlipbookFramerate = nr(1,1)
shine3_18265.FlipbookStartRandom = false
shine3_18265.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local shine4_18266=i("ParticleEmitter", Attachment_18260)
shine4_18266.Name="shine4"
shine4_18266:SetAttribute("AuraInstance", true)
shine4_18266.Enabled = true
shine4_18266.Rate = 2
shine4_18266.Lifetime = nr(1,1)
shine4_18266.Speed = nr(0.0009000000427477062,0.0009000000427477062)
shine4_18266.Rotation = nr(0,0)
shine4_18266.RotSpeed = nr(0,0)
shine4_18266.Size = ns({nsk(0.000000,4.500000,0.000000),nsk(1.000000,4.500000,0.000000)})
shine4_18266.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine4_18266.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
shine4_18266.LightEmission = 1
shine4_18266.LightInfluence = 0
shine4_18266.Acceleration = v3(0.000000,0.000000,0.000000)
shine4_18266.Drag = 0
shine4_18266.EmissionDirection = Enum.NormalId.Top
shine4_18266.SpreadAngle = v2(0.000000,0.000000)
shine4_18266.ZOffset = 3
shine4_18266.Texture = "http://www.roblox.com/asset/?id=108523870700360"
shine4_18266.LockedToPart = true
shine4_18266.Orientation = Enum.ParticleOrientation.FacingCamera
shine4_18266.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shine4_18266.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
shine4_18266.FlipbookFramerate = nr(1,1)
shine4_18266.FlipbookStartRandom = false
shine4_18266.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local shine5_18267=i("ParticleEmitter", Attachment_18260)
shine5_18267.Name="shine5"
shine5_18267:SetAttribute("AuraInstance", true)
shine5_18267.Enabled = true
shine5_18267.Rate = 2
shine5_18267.Lifetime = nr(1,1)
shine5_18267.Speed = nr(0.0009000000427477062,0.0009000000427477062)
shine5_18267.Rotation = nr(0,0)
shine5_18267.RotSpeed = nr(0,0)
shine5_18267.Size = ns({nsk(0.000000,4.500000,0.000000),nsk(1.000000,4.500000,0.000000)})
shine5_18267.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine5_18267.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
shine5_18267.LightEmission = 1
shine5_18267.LightInfluence = 0
shine5_18267.Acceleration = v3(0.000000,0.000000,0.000000)
shine5_18267.Drag = 0
shine5_18267.EmissionDirection = Enum.NormalId.Top
shine5_18267.SpreadAngle = v2(0.000000,0.000000)
shine5_18267.ZOffset = 3
shine5_18267.Texture = "rbxassetid://8114033129"
shine5_18267.LockedToPart = true
shine5_18267.Orientation = Enum.ParticleOrientation.FacingCamera
shine5_18267.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shine5_18267.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
shine5_18267.FlipbookFramerate = nr(1,1)
shine5_18267.FlipbookStartRandom = false
shine5_18267.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local shine7_18268=i("ParticleEmitter", Attachment_18260)
shine7_18268.Name="shine7"
shine7_18268:SetAttribute("AuraInstance", true)
shine7_18268.Enabled = true
shine7_18268.Rate = 2
shine7_18268.Lifetime = nr(1,1)
shine7_18268.Speed = nr(0.0009000000427477062,0.0009000000427477062)
shine7_18268.Rotation = nr(0,0)
shine7_18268.RotSpeed = nr(0,0)
shine7_18268.Size = ns({nsk(0.000000,4.500000,0.000000),nsk(1.000000,4.500000,0.000000)})
shine7_18268.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.500000,0.000000),nsk(1.000000,1.000000,0.000000)})
shine7_18268.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
shine7_18268.LightEmission = 1
shine7_18268.LightInfluence = 0
shine7_18268.Acceleration = v3(0.000000,0.000000,0.000000)
shine7_18268.Drag = 0
shine7_18268.EmissionDirection = Enum.NormalId.Top
shine7_18268.SpreadAngle = v2(0.000000,0.000000)
shine7_18268.ZOffset = 3
shine7_18268.Texture = "rbxassetid://100545368205823"
shine7_18268.LockedToPart = true
shine7_18268.Orientation = Enum.ParticleOrientation.FacingCamera
shine7_18268.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shine7_18268.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
shine7_18268.FlipbookFramerate = nr(1,1)
shine7_18268.FlipbookStartRandom = false
shine7_18268.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local shine8_18269=i("ParticleEmitter", Attachment_18260)
shine8_18269.Name="shine8"
shine8_18269:SetAttribute("AuraInstance", true)
shine8_18269.Enabled = true
shine8_18269.Rate = 2
shine8_18269.Lifetime = nr(1,1)
shine8_18269.Speed = nr(0.0009000000427477062,0.0009000000427477062)
shine8_18269.Rotation = nr(0,0)
shine8_18269.RotSpeed = nr(0,0)
shine8_18269.Size = ns({nsk(0.000000,7.200000,0.000000),nsk(1.000000,7.200000,0.000000)})
shine8_18269.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501238,0.887500,0.000000),nsk(1.000000,1.000000,0.000000)})
shine8_18269.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
shine8_18269.LightEmission = 1
shine8_18269.LightInfluence = 0
shine8_18269.Acceleration = v3(0.000000,0.000000,0.000000)
shine8_18269.Drag = 0
shine8_18269.EmissionDirection = Enum.NormalId.Top
shine8_18269.SpreadAngle = v2(0.000000,0.000000)
shine8_18269.ZOffset = 3
shine8_18269.Texture = "rbxassetid://15600777303"
shine8_18269.LockedToPart = true
shine8_18269.Orientation = Enum.ParticleOrientation.FacingCamera
shine8_18269.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shine8_18269.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
shine8_18269.FlipbookFramerate = nr(1,1)
shine8_18269.FlipbookStartRandom = false
shine8_18269.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local flare_18270=i("ParticleEmitter", Attachment_18260)
flare_18270.Name="flare"
flare_18270:SetAttribute("AuraInstance", true)
flare_18270.Enabled = true
flare_18270.Rate = 4
flare_18270.Lifetime = nr(1,1.5)
flare_18270.Speed = nr(0.0009000000427477062,0.0009000000427477062)
flare_18270.Rotation = nr(-360,360)
flare_18270.RotSpeed = nr(0,0)
flare_18270.Size = ns({nsk(0.000000,9.000000,0.000000),nsk(1.000000,9.000000,0.000000)})
flare_18270.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.496287,0.906250,0.000000),nsk(1.000000,1.000000,0.000000)})
flare_18270.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
flare_18270.LightEmission = 1
flare_18270.LightInfluence = 0
flare_18270.Acceleration = v3(0.000000,0.000000,0.000000)
flare_18270.Drag = 0
flare_18270.EmissionDirection = Enum.NormalId.Top
flare_18270.SpreadAngle = v2(0.000000,0.000000)
flare_18270.ZOffset = 3
flare_18270.Texture = "rbxassetid://12105193694"
flare_18270.LockedToPart = true
flare_18270.Orientation = Enum.ParticleOrientation.FacingCamera
flare_18270.FlipbookLayout = Enum.ParticleFlipbookLayout.None
flare_18270.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
flare_18270.FlipbookFramerate = nr(1,1)
flare_18270.FlipbookStartRandom = false
flare_18270.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local drc_18271=i("ParticleEmitter", Attachment_18260)
drc_18271.Name="drc"
drc_18271:SetAttribute("AuraInstance", true)
drc_18271.Enabled = true
drc_18271.Rate = 2
drc_18271.Lifetime = nr(2,2)
drc_18271.Speed = nr(0.0009000000427477062,0.0009000000427477062)
drc_18271.Rotation = nr(0,0)
drc_18271.RotSpeed = nr(0,0)
drc_18271.Size = ns({nsk(0.000000,1.800000,0.000000),nsk(1.000000,1.800000,0.000000)})
drc_18271.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.494768,0.032609,0.000000),nsk(1.000000,1.000000,0.000000)})
drc_18271.Color = cs({csk(0.000000,c3(1.000000,0.294118,0.294118)),csk(1.000000,c3(1.000000,0.294118,0.294118))})
drc_18271.LightEmission = 1
drc_18271.LightInfluence = 0
drc_18271.Acceleration = v3(0.000000,0.000000,0.000000)
drc_18271.Drag = 0
drc_18271.EmissionDirection = Enum.NormalId.Top
drc_18271.SpreadAngle = v2(0.000000,0.000000)
drc_18271.ZOffset = 2
drc_18271.Texture = "rbxassetid://12159555294"
drc_18271.LockedToPart = true
drc_18271.Orientation = Enum.ParticleOrientation.FacingCamera
drc_18271.FlipbookLayout = Enum.ParticleFlipbookLayout.None
drc_18271.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
drc_18271.FlipbookFramerate = nr(1,1)
drc_18271.FlipbookStartRandom = false
drc_18271.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

Trail_18704.Attachment0=Attachment0_18678
Trail_18704.Attachment1=Attachment1_18679
beam1_18299.Attachment0=beamd_18297
beam1_18299.Attachment1=Spin2_18676
beam22.Attachment0=Attachment_18302
beam22.Attachment1=Attachment_18674
beam21.Attachment0=Attachment_18302
beam21.Attachment1=Attachment_18674
beam1_18303.Attachment0=beamd_18297
beam1_18303.Attachment1=Spin2_18676
beam2_18304.Attachment0=beamd_18297
beam2_18304.Attachment1=Spin2_18676
beam2_18305.Attachment0=Attachment_18302
beam2_18305.Attachment1=Attachment_18674

wait(.2)
Attachment_18260.Parent=head


print("Asset Loaded")
local pop=false
function Explode(arg1)
for _, v in arg1:GetChildren() do
if v:IsA("ParticleEmitter") then
v:Emit(v:GetAttribute("EmitCount") or 1)
end
end
end
local sp=0
con0=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("VanguardAssets") then 
--Folder:Destroy()
con0:Disconnect()
Attachment_18260:Destroy()
--PosRoot(0)
beamd_18297:Destroy()
end
sp+=1
--PosRoot(1,true)
local root=rootpart1
sine=os.clock()
local g=mrandom(1,250)
if g==50 and not pop then 
pop=true
Explode(shockwave_18615)
Explode(plosoirion_18638)
Explode(plosoirion_18706)
twait(.2)
pop=false
end
local forward=root.CFrame.LookVector
local up=v3(0, 1, 0)
local front=CFrame.lookAt(root.Position,root.Position + forward,up)
local Offset=cf(15*cos((sine+.1)*.5),10-2*cos(sine*.1),-15*sin((sine+.85)*.5))
local Offset1=cf(-15*cos((sine+.1)*.5),5+2.5*cos(sine*.1),15*sin((sine+.85)*.5))
local tilt=angles(rad(10.5*cos(sine*.5)),0,0)
local tilt1=angles(rad(-10.5*cos(sine*.5)),0,0)
BetterTween(Floor,.1,{Position=v3(root.Position.X,root.Position.Y,root.Position.Z)}):Play()
ring.CFrame=ring.CFrame:Lerp(front*Offset1*tilt,.15)
ring1.CFrame=ring1.CFrame:Lerp(front*Offset*tilt,.15)
for _,h in scriptfolder1:GetDescendants() do 
if h:IsA("PointLight") and h.Name=="VLight" then
h.Brightness=5+sound.PlaybackLoudness/50
h.Range=3+sound.PlaybackLoudness/60
h.Color=rgb(254,255,184)
end
end



end)
end


LoadVFX()
task.wait(.2)
for _,a in scriptfolder1:GetDescendants() do 
if a:IsA("Beam") and a.Color~=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))}) then
a.Color=cs({
  csk(0,c3(1,1,1)),
  csk(1,c3(1,1,1)),
})
end 
end
--
for _,b in scriptfolder1:GetDescendants() do 
if b:IsA("Beam") and b.Color==cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))}) then
b.Color=cs({
  csk(0,c3(1,1,0)),
  csk(1,c3(1,1,0)),
})
end 
end
--
for _,c in scriptfolder1:GetDescendants() do 
if c:IsA("ParticleEmitter") and c.Color~=cs({csk(0.000000,c3(0.121569,0.000000,0.000000)),csk(1.000000,c3(0.121569,0.000000,0.000000))}) and c.Color~=cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))}) and c.Color~=cs({csk(0.000000,c3(0.078431,0.007843,0.007843)),csk(1.000000,c3(0.078431,0.007843,0.007843))}) and c.Color~=cs({ csk(0,c3()),csk(1,c3()) }) then 
c.Color=cs({
  csk(0,c3(0,1,0)),
  csk(1,c3(0,1,0))
})
end
end
--
for _,d in scriptfolder1:GetDescendants() do 
if d:IsA("ParticleEmitter") and d.Color==cs({csk(0.000000,c3(0.121569,0.000000,0.000000)),csk(1.000000,c3(0.121569,0.000000,0.000000))}) and d.Color==cs({csk(0.000000,c3(1.000000,0.286275,0.286275)),csk(1.000000,c3(1.000000,0.286275,0.286275))}) and d.Color==cs({csk(0.000000,c3(0.078431,0.007843,0.007843)),csk(1.000000,c3(0.078431,0.007843,0.007843))}) and d.Color==cs({ csk(0,c3()),csk(1,c3()) }) then 
d.Color=cs({
  csk(0,c3(0,0,0)),
  csk(1,c3(0,0,0))
})
end
end
--

for _,e in scriptfolder1:GetDescendants() do
if e:IsA("ParticleEmitter") and e.Color~=cs({ csk(0,c3(0,1,0)) ,csk(1,c3(0,1,0)) }) and e.Color~=cs({ csk(0,c3(0,0,0)) ,csk(1,c3(0,0,0)) }) then 
e.Color=cs({
  csk(0,c3(0,1,1)),
  csk(1,c3(0,1,1))
})
end
end
--
for _,f in scriptfolder1:GetDescendants() do 
if f:IsA("ParticleEmitter") and f.Color==cs({csk(0,c3(0,1,1)),csk(1,c3(0,1,1))}) then 
f.Color=cs({
  csk(0,rgb(254,255,184)),
  csk(1,rgb(254,255,184)),
})
end
end
for _,g in scriptfolder1:GetDescendants() do 
if g:IsA("ParticleEmitter") and g.Color==cs({csk(0,c3(0,1,0)),csk(1,c3(0,1,0))}) then 
g.Color=cs({
  csk(0,rgb(255,255,255)),
  csk(1,rgb(255,255,255)),
})
end
end
--
for _,h in scriptfolder1:GetDescendants() do 
if h:IsA("Trail") then 
h.Color=cs({
  csk(0,rgb(255,255,255)),
  csk(1,rgb(255,255,255)),
})
end
end


end
VanguardAssets()