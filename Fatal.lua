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
local Name="Fatal"



function Fatal()
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

local flor_3022=i("Attachment", Floor)
flor_3022.Name="flor"
flor_3022:SetAttribute("AuraInstance", true)
flor_3022.Position = v3(0.499985,-2,0.000000)
flor_3022.Visible = false

local darkwiggles_3023=i("ParticleEmitter", flor_3022)
darkwiggles_3023.Name="dark wiggles"
darkwiggles_3023:SetAttribute("AuraInstance", true)
darkwiggles_3023.Enabled = true
darkwiggles_3023.Rate = 20.66714859008789
darkwiggles_3023.Lifetime = nr(0.7225637435913086,0.7225637435913086)
darkwiggles_3023.Speed = nr(0.0005933651700615883,0.0005933651700615883)
darkwiggles_3023.Rotation = nr(0,360)
darkwiggles_3023.RotSpeed = nr(0,0)
darkwiggles_3023.Size = ns({nsk(0.000000,1.004869,0.000000),nsk(0.100000,1.575313,0.000000),nsk(0.200000,3.724378,0.000000),nsk(0.300000,7.261906,0.000000),nsk(0.400000,11.922413,0.000000),nsk(0.500000,17.507856,0.000000),nsk(0.600000,23.872818,0.000000),nsk(0.700000,30.907789,0.000000),nsk(0.800000,38.527992,0.000000),nsk(0.900000,46.666153,0.000000),nsk(1.000000,55.267792,0.000000),nsk(1.000000,55.267792,0.000000)})
darkwiggles_3023.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.011099,1.000000,0.000000),nsk(0.081924,0.284153,0.000000),nsk(0.201374,0.000000,0.000000),nsk(0.658562,0.333333,0.000000),nsk(0.795455,0.595628,0.000000),nsk(0.847780,0.830601,0.000000),nsk(0.885835,0.928962,0.000000),nsk(1.000000,1.000000,0.000000)})
darkwiggles_3023.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
darkwiggles_3023.LightEmission = -100
darkwiggles_3023.LightInfluence = 0
darkwiggles_3023.Acceleration = v3(0.000000,0.000000,0.000000)
darkwiggles_3023.Drag = 0
darkwiggles_3023.EmissionDirection = Enum.NormalId.Top
darkwiggles_3023.SpreadAngle = v2(0.000000,0.000000)
darkwiggles_3023.ZOffset = 0.0010000000474974513
darkwiggles_3023.Texture = "rbxassetid://18525853260"
darkwiggles_3023.LockedToPart = true
darkwiggles_3023.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
darkwiggles_3023.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
darkwiggles_3023.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
darkwiggles_3023.FlipbookFramerate = nr(4.151882648468018,4.151882648468018)
darkwiggles_3023.FlipbookStartRandom = false
darkwiggles_3023.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local darkwiggles_3024=i("ParticleEmitter", flor_3022)
darkwiggles_3024.Name="dark wiggles"
darkwiggles_3024:SetAttribute("AuraInstance", true)
darkwiggles_3024.Enabled = true
darkwiggles_3024.Rate = 59.04899978637695
darkwiggles_3024.Lifetime = nr(0.7225637435913086,0.7225637435913086)
darkwiggles_3024.Speed = nr(0.0005815572803840041,0.0005815572803840041)
darkwiggles_3024.Rotation = nr(0,360)
darkwiggles_3024.RotSpeed = nr(0,0)
darkwiggles_3024.Size = ns({nsk(0.000000,0.984872,0.000000),nsk(0.100000,1.543965,0.000000),nsk(0.200000,3.650262,0.000000),nsk(0.300000,7.117394,0.000000),nsk(0.400000,11.685160,0.000000),nsk(0.500000,17.159451,0.000000),nsk(0.600000,23.397751,0.000000),nsk(0.700000,30.292719,0.000000),nsk(0.800000,37.761280,0.000000),nsk(0.900000,45.737499,0.000000),nsk(1.000000,54.167965,0.000000),nsk(1.000000,54.167965,0.000000)})
darkwiggles_3024.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.011099,1.000000,0.000000),nsk(0.081924,0.284153,0.000000),nsk(0.201374,0.000000,0.000000),nsk(0.658562,0.333333,0.000000),nsk(0.795455,0.595628,0.000000),nsk(0.847780,0.830601,0.000000),nsk(0.885835,0.928962,0.000000),nsk(1.000000,1.000000,0.000000)})
darkwiggles_3024.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
darkwiggles_3024.LightEmission = 1
darkwiggles_3024.LightInfluence = 0
darkwiggles_3024.Acceleration = v3(0.000000,0.000000,0.000000)
darkwiggles_3024.Drag = 0
darkwiggles_3024.EmissionDirection = Enum.NormalId.Top
darkwiggles_3024.SpreadAngle = v2(0.000000,0.000000)
darkwiggles_3024.ZOffset = 0
darkwiggles_3024.Texture = "rbxassetid://18525853260"
darkwiggles_3024.LockedToPart = true
darkwiggles_3024.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
darkwiggles_3024.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
darkwiggles_3024.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
darkwiggles_3024.FlipbookFramerate = nr(4.151882648468018,4.151882648468018)
darkwiggles_3024.FlipbookStartRandom = false
darkwiggles_3024.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_3025=i("ParticleEmitter", flor_3022)
ParticleEmitter_3025.Name="ParticleEmitter"
ParticleEmitter_3025:SetAttribute("AuraInstance", true)
ParticleEmitter_3025.Enabled = true
ParticleEmitter_3025.Rate = 183.05191040039062
ParticleEmitter_3025.Lifetime = nr(0.2540263235569,0.42337721586227417)
ParticleEmitter_3025.Speed = nr(0.021996507421135902,0.021996507421135902)
ParticleEmitter_3025.Rotation = nr(-360,360)
ParticleEmitter_3025.RotSpeed = nr(885.7350463867188,885.7350463867188)
ParticleEmitter_3025.Size = ns({nsk(0.000000,32.966419,0.000000),nsk(0.100000,32.619858,0.000000),nsk(0.200000,31.314236,0.000000),nsk(0.300000,29.165083,0.000000),nsk(0.400000,26.333672,0.000000),nsk(0.500000,22.940338,0.000000),nsk(0.600000,19.073425,0.000000),nsk(0.700000,14.799463,0.000000),nsk(0.800000,10.169956,0.000000),nsk(0.900000,5.225767,0.000000),nsk(1.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_3025.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.552308,0.614907,0.000000),nsk(0.747692,0.819876,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_3025.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
ParticleEmitter_3025.LightEmission = 0.6000000238418579
ParticleEmitter_3025.LightInfluence = 0
ParticleEmitter_3025.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3025.Drag = 0
ParticleEmitter_3025.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3025.SpreadAngle = v2(0.001000,0.000100)
ParticleEmitter_3025.ZOffset = 0.05649999901652336
ParticleEmitter_3025.Texture = "rbxassetid://18631421152"
ParticleEmitter_3025.LockedToPart = true
ParticleEmitter_3025.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_3025.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ParticleEmitter_3025.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_3025.FlipbookFramerate = nr(110.71688079833984,110.71688079833984)
ParticleEmitter_3025.FlipbookStartRandom = false
ParticleEmitter_3025.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_3026=i("ParticleEmitter", flor_3022)
ParticleEmitter_3026.Name="ParticleEmitter"
ParticleEmitter_3026:SetAttribute("AuraInstance", true)
ParticleEmitter_3026.Enabled = true
ParticleEmitter_3026.Rate = 2.9524502754211426
ParticleEmitter_3026.Lifetime = nr(1.6935088634490967,1.6935088634490967)
ParticleEmitter_3026.Speed = nr(0.0017981680575758219,0.0017981680575758219)
ParticleEmitter_3026.Rotation = nr(-100,25)
ParticleEmitter_3026.RotSpeed = nr(590.489990234375,1180.97998046875)
ParticleEmitter_3026.Size = ns({nsk(0.000000,30.452137,0.000000),nsk(0.100000,30.132008,0.000000),nsk(0.200000,28.925962,0.000000),nsk(0.300000,26.940718,0.000000),nsk(0.400000,24.325256,0.000000),nsk(0.500000,21.190725,0.000000),nsk(0.600000,17.618736,0.000000),nsk(0.700000,13.670741,0.000000),nsk(0.800000,9.394317,0.000000),nsk(0.900000,4.827208,0.000000),nsk(1.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_3026.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_3026.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
ParticleEmitter_3026.LightEmission = -5000000000
ParticleEmitter_3026.LightInfluence = 0
ParticleEmitter_3026.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3026.Drag = 0
ParticleEmitter_3026.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3026.SpreadAngle = v2(0.000000,0.000000)
ParticleEmitter_3026.ZOffset = 0.9990000128746033
ParticleEmitter_3026.Texture = "rbxassetid://8187305477"
ParticleEmitter_3026.LockedToPart = true
ParticleEmitter_3026.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_3026.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ParticleEmitter_3026.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_3026.FlipbookFramerate = nr(0.5904899835586548,0.5904899835586548)
ParticleEmitter_3026.FlipbookStartRandom = false
ParticleEmitter_3026.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_3027=i("ParticleEmitter", flor_3022)
ParticleEmitter_3027.Name="ParticleEmitter"
ParticleEmitter_3027:SetAttribute("AuraInstance", true)
ParticleEmitter_3027.Enabled = true
ParticleEmitter_3027.Rate = 2.9524502754211426
ParticleEmitter_3027.Lifetime = nr(1.6935088634490967,1.6935088634490967)
ParticleEmitter_3027.Speed = nr(0.0017981680575758219,0.0017981680575758219)
ParticleEmitter_3027.Rotation = nr(-100,25)
ParticleEmitter_3027.RotSpeed = nr(590.489990234375,1180.97998046875)
ParticleEmitter_3027.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,2.892953,0.000000),nsk(0.200000,5.785906,0.000000),nsk(0.300000,8.678860,0.000000),nsk(0.400000,11.571812,0.000000),nsk(0.500000,14.464767,0.000000),nsk(0.600000,17.357719,0.000000),nsk(0.700000,20.250675,0.000000),nsk(0.800000,23.143623,0.000000),nsk(0.900000,26.036587,0.000000),nsk(1.000000,28.929535,0.000000),nsk(1.000000,28.929535,0.000000)})
ParticleEmitter_3027.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_3027.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
ParticleEmitter_3027.LightEmission = -5000000000
ParticleEmitter_3027.LightInfluence = 0
ParticleEmitter_3027.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3027.Drag = 0
ParticleEmitter_3027.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3027.SpreadAngle = v2(0.000000,0.000000)
ParticleEmitter_3027.ZOffset = 1
ParticleEmitter_3027.Texture = "rbxassetid://18477117185"
ParticleEmitter_3027.LockedToPart = true
ParticleEmitter_3027.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_3027.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ParticleEmitter_3027.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_3027.FlipbookFramerate = nr(0.5904899835586548,0.5904899835586548)
ParticleEmitter_3027.FlipbookStartRandom = false
ParticleEmitter_3027.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_3028=i("ParticleEmitter", flor_3022)
ParticleEmitter_3028.Name="ParticleEmitter"
ParticleEmitter_3028:SetAttribute("AuraInstance", true)
ParticleEmitter_3028.Enabled = true
ParticleEmitter_3028.Rate = 29.524499893188477
ParticleEmitter_3028.Lifetime = nr(0.2540263235569,0.42337721586227417)
ParticleEmitter_3028.Speed = nr(0.02743048593401909,0.02743048593401909)
ParticleEmitter_3028.Rotation = nr(-360,360)
ParticleEmitter_3028.RotSpeed = nr(885.7350463867188,885.7350463867188)
ParticleEmitter_3028.Size = ns({nsk(0.000000,41.110386,0.000000),nsk(0.100000,40.678211,0.000000),nsk(0.200000,39.050049,0.000000),nsk(0.300000,36.369968,0.000000),nsk(0.400000,32.839096,0.000000),nsk(0.500000,28.607481,0.000000),nsk(0.600000,23.785292,0.000000),nsk(0.700000,18.455498,0.000000),nsk(0.800000,12.682328,0.000000),nsk(0.900000,6.516731,0.000000),nsk(1.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_3028.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.409091,0.000000,0.000000),nsk(0.619979,0.000000,0.000000),nsk(0.767442,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_3028.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
ParticleEmitter_3028.LightEmission = 1
ParticleEmitter_3028.LightInfluence = 0
ParticleEmitter_3028.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3028.Drag = 0
ParticleEmitter_3028.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3028.SpreadAngle = v2(0.001000,0.000100)
ParticleEmitter_3028.ZOffset = 0.05700000002980232
ParticleEmitter_3028.Texture = "rbxassetid://17492073193"
ParticleEmitter_3028.LockedToPart = true
ParticleEmitter_3028.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_3028.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ParticleEmitter_3028.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_3028.FlipbookFramerate = nr(110.71688079833984,110.71688079833984)
ParticleEmitter_3028.FlipbookStartRandom = false
ParticleEmitter_3028.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Part_3029=i("Attachment", Floor)

local fog1_3030=i("ParticleEmitter", Part_3029)
fog1_3030.Name="fog1"
fog1_3030:SetAttribute("AuraInstance", true)
fog1_3030.Enabled = true
fog1_3030.Rate = 61.98728561401367
fog1_3030.Lifetime = nr(0.4839702546596527,0.4839702546596527)
fog1_3030.Speed = nr(14.913047790527344,14.913047790527344)
fog1_3030.Rotation = nr(-360,360)
fog1_3030.RotSpeed = nr(0,0)
fog1_3030.Size = ns({nsk(0.000000,23.676914,0.000000),nsk(1.000000,23.676914,0.000000)})
fog1_3030.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.797546,0.000000),nsk(1.000000,1.000000,0.000000)})
fog1_3030.Color = cs({csk(0.000000,c3(1.000000,0.576471,0.964706)),csk(1.000000,c3(1.000000,0.576471,0.964706))})
fog1_3030.LightEmission = 0
fog1_3030.LightInfluence = 1
fog1_3030.Acceleration = v3(0.000000,0.000000,0.000000)
fog1_3030.Drag = 0
fog1_3030.EmissionDirection = Enum.NormalId.Top
fog1_3030.SpreadAngle = v2(0.000000,0.000000)
fog1_3030.ZOffset = -4.999000072479248
fog1_3030.Texture = "rbxassetid://11381556016"
fog1_3030.LockedToPart = true
fog1_3030.Orientation = Enum.ParticleOrientation.FacingCamera
fog1_3030.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fog1_3030.FlipbookMode = Enum.ParticleFlipbookMode.Loop
fog1_3030.FlipbookFramerate = nr(198.35928344726562,198.35928344726562)
fog1_3030.FlipbookStartRandom = false
fog1_3030.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fogwiggle1_3031=i("ParticleEmitter", Part_3029)
fogwiggle1_3031.Name="fog wiggle 1"
fogwiggle1_3031:SetAttribute("AuraInstance", true)
fogwiggle1_3031.Enabled = true
fogwiggle1_3031.Rate = 14.171759605407715
fogwiggle1_3031.Lifetime = nr(1.4752941131591797,1.4752941131591797)
fogwiggle1_3031.Speed = nr(1.9131875038146973,1.9131875038146973)
fogwiggle1_3031.Rotation = nr(-360,360)
fogwiggle1_3031.RotSpeed = nr(0,0)
fogwiggle1_3031.Size = ns({nsk(0.000000,7.892304,0.000000),nsk(1.000000,7.892304,0.000000)})
fogwiggle1_3031.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.200000,0.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(0.800000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
fogwiggle1_3031.Color = cs({csk(0.000000,c3(1.000000,0.576471,0.964706)),csk(1.000000,c3(1.000000,0.576471,0.964706))})
fogwiggle1_3031.LightEmission = -1
fogwiggle1_3031.LightInfluence = 0
fogwiggle1_3031.Acceleration = v3(0.000000,0.000000,0.000000)
fogwiggle1_3031.Drag = 0
fogwiggle1_3031.EmissionDirection = Enum.NormalId.Top
fogwiggle1_3031.SpreadAngle = v2(0.000000,0.000000)
fogwiggle1_3031.ZOffset = -4.995999813079834
fogwiggle1_3031.Texture = "rbxassetid://11446801985"
fogwiggle1_3031.LockedToPart = true
fogwiggle1_3031.Orientation = Enum.ParticleOrientation.FacingCamera
fogwiggle1_3031.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fogwiggle1_3031.FlipbookMode = Enum.ParticleFlipbookMode.Loop
fogwiggle1_3031.FlipbookFramerate = nr(65.07176208496094,65.07176208496094)
fogwiggle1_3031.FlipbookStartRandom = false
fogwiggle1_3031.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fogwiggle2_3032=i("ParticleEmitter", Part_3029)
fogwiggle2_3032.Name="fog wiggle 2"
fogwiggle2_3032:SetAttribute("AuraInstance", true)
fogwiggle2_3032.Enabled = true
fogwiggle2_3032.Rate = 14.171759605407715
fogwiggle2_3032.Lifetime = nr(1.4752941131591797,1.4752941131591797)
fogwiggle2_3032.Speed = nr(1.9131875038146973,1.9131875038146973)
fogwiggle2_3032.Rotation = nr(-360,360)
fogwiggle2_3032.RotSpeed = nr(0,0)
fogwiggle2_3032.Size = ns({nsk(0.000000,7.892304,0.000000),nsk(1.000000,7.892304,0.000000)})
fogwiggle2_3032.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.200000,0.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(0.800000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
fogwiggle2_3032.Color = cs({csk(0.000000,c3(1.000000,0.576471,0.964706)),csk(1.000000,c3(1.000000,0.576471,0.964706))})
fogwiggle2_3032.LightEmission = 1
fogwiggle2_3032.LightInfluence = 0
fogwiggle2_3032.Acceleration = v3(0.000000,0.000000,0.000000)
fogwiggle2_3032.Drag = 0
fogwiggle2_3032.EmissionDirection = Enum.NormalId.Top
fogwiggle2_3032.SpreadAngle = v2(0.000000,0.000000)
fogwiggle2_3032.ZOffset = -4.997000217437744
fogwiggle2_3032.Texture = "rbxassetid://11446801985"
fogwiggle2_3032.LockedToPart = true
fogwiggle2_3032.Orientation = Enum.ParticleOrientation.FacingCamera
fogwiggle2_3032.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fogwiggle2_3032.FlipbookMode = Enum.ParticleFlipbookMode.Loop
fogwiggle2_3032.FlipbookFramerate = nr(65.07176208496094,65.07176208496094)
fogwiggle2_3032.FlipbookStartRandom = false
fogwiggle2_3032.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fogwiggle3_3033=i("ParticleEmitter", Part_3029)
fogwiggle3_3033.Name="fog wiggle 3"
fogwiggle3_3033:SetAttribute("AuraInstance", true)
fogwiggle3_3033.Enabled = true
fogwiggle3_3033.Rate = 14.171759605407715
fogwiggle3_3033.Lifetime = nr(1.4752941131591797,1.4752941131591797)
fogwiggle3_3033.Speed = nr(1.9131875038146973,1.9131875038146973)
fogwiggle3_3033.Rotation = nr(-360,360)
fogwiggle3_3033.RotSpeed = nr(0,0)
fogwiggle3_3033.Size = ns({nsk(0.000000,7.892304,0.000000),nsk(1.000000,7.892304,0.000000)})
fogwiggle3_3033.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.200000,0.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(0.800000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
fogwiggle3_3033.Color = cs({csk(0.000000,c3(1.000000,0.576471,0.964706)),csk(1.000000,c3(1.000000,0.576471,0.964706))})
fogwiggle3_3033.LightEmission = -2
fogwiggle3_3033.LightInfluence = 0
fogwiggle3_3033.Acceleration = v3(0.000000,0.000000,0.000000)
fogwiggle3_3033.Drag = 0
fogwiggle3_3033.EmissionDirection = Enum.NormalId.Top
fogwiggle3_3033.SpreadAngle = v2(0.000000,0.000000)
fogwiggle3_3033.ZOffset = -4.998000144958496
fogwiggle3_3033.Texture = "rbxassetid://11941047152"
fogwiggle3_3033.LockedToPart = true
fogwiggle3_3033.Orientation = Enum.ParticleOrientation.FacingCamera
fogwiggle3_3033.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fogwiggle3_3033.FlipbookMode = Enum.ParticleFlipbookMode.Loop
fogwiggle3_3033.FlipbookFramerate = nr(65.07176208496094,65.07176208496094)
fogwiggle3_3033.FlipbookStartRandom = false
fogwiggle3_3033.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fogback_3034=i("ParticleEmitter", Part_3029)
fogback_3034.Name="fog back"
fogback_3034:SetAttribute("AuraInstance", true)
fogback_3034.Enabled = true
fogback_3034.Rate = 18.895679473876953
fogback_3034.Lifetime = nr(0.7376470565795898,0.7376470565795898)
fogback_3034.Speed = nr(14.913047790527344,14.913047790527344)
fogback_3034.Rotation = nr(-360,360)
fogback_3034.RotSpeed = nr(0,0)
fogback_3034.Size = ns({nsk(0.000000,26.833839,0.000000),nsk(1.000000,26.833839,0.000000)})
fogback_3034.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.797546,0.000000),nsk(1.000000,1.000000,0.000000)})
fogback_3034.Color = cs({csk(0.000000,c3(1.000000,0.576471,0.964706)),csk(1.000000,c3(1.000000,0.576471,0.964706))})
fogback_3034.LightEmission = 0
fogback_3034.LightInfluence = 0
fogback_3034.Acceleration = v3(0.000000,0.000000,0.000000)
fogback_3034.Drag = 0
fogback_3034.EmissionDirection = Enum.NormalId.Top
fogback_3034.SpreadAngle = v2(0.000000,0.000000)
fogback_3034.ZOffset = -5
fogback_3034.Texture = "rbxassetid://11941047152"
fogback_3034.LockedToPart = true
fogback_3034.Orientation = Enum.ParticleOrientation.FacingCamera
fogback_3034.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fogback_3034.FlipbookMode = Enum.ParticleFlipbookMode.Loop
fogback_3034.FlipbookFramerate = nr(130.14352416992188,130.14352416992188)
fogback_3034.FlipbookStartRandom = false
fogback_3034.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local glitchrootpart_3035=i("Attachment", Floor)

local glitchstuff_3036=i("ParticleEmitter", glitchrootpart_3035)
glitchstuff_3036.Name="glitchstuff"
glitchstuff_3036:SetAttribute("AuraInstance", true)
glitchstuff_3036.Enabled = true
glitchstuff_3036.Rate = 295.2449951171875
glitchstuff_3036.Lifetime = nr(0.11290058493614197,0.11290058493614197)
glitchstuff_3036.Speed = nr(175.06861877441406,175.06861877441406)
glitchstuff_3036.Rotation = nr(180,180)
glitchstuff_3036.RotSpeed = nr(0,0)
glitchstuff_3036.Size = ns({nsk(0.000000,4.439945,0.000000),nsk(0.498943,7.769911,2.774966),nsk(1.000000,4.439945,0.000000)})
glitchstuff_3036.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchstuff_3036.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
glitchstuff_3036.LightEmission = -5
glitchstuff_3036.LightInfluence = 0
glitchstuff_3036.Acceleration = v3(0.000000,227.427780,0.000000)
glitchstuff_3036.Drag = 0
glitchstuff_3036.EmissionDirection = Enum.NormalId.Top
glitchstuff_3036.SpreadAngle = v2(360.000000,360.000000)
glitchstuff_3036.ZOffset = 5
glitchstuff_3036.Texture = "rbxassetid://12237413962"
glitchstuff_3036.LockedToPart = true
glitchstuff_3036.Orientation = Enum.ParticleOrientation.FacingCamera
glitchstuff_3036.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchstuff_3036.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchstuff_3036.FlipbookFramerate = nr(44286.75,44286.75)
glitchstuff_3036.FlipbookStartRandom = false
glitchstuff_3036.Squash = ns({nsk(0.000000,0.000000,1.000000),nsk(0.100000,0.000000,1.000000),nsk(0.200000,0.000000,1.000000),nsk(0.300000,0.000000,1.000000),nsk(0.400000,0.000000,1.000000),nsk(0.500000,0.000000,1.000000),nsk(0.600000,0.000000,1.000000),nsk(0.700000,0.000000,1.000000),nsk(0.800000,0.000000,1.000000),nsk(0.900000,0.000000,1.000000),nsk(1.000000,0.000000,1.000000),nsk(1.000000,0.000000,1.000000)})

local glitchstuff_3037=i("ParticleEmitter", glitchrootpart_3035)
glitchstuff_3037.Name="glitchstuff"
glitchstuff_3037:SetAttribute("AuraInstance", true)
glitchstuff_3037.Enabled = true
glitchstuff_3037.Rate = 295.2449951171875
glitchstuff_3037.Lifetime = nr(0.11290058493614197,0.11290058493614197)
glitchstuff_3037.Speed = nr(175.06861877441406,175.06861877441406)
glitchstuff_3037.Rotation = nr(180,180)
glitchstuff_3037.RotSpeed = nr(0,0)
glitchstuff_3037.Size = ns({nsk(0.000000,2.584699,0.000000),nsk(0.498943,4.523223,1.615437),nsk(1.000000,2.584699,0.000000)})
glitchstuff_3037.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchstuff_3037.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
glitchstuff_3037.LightEmission = -15
glitchstuff_3037.LightInfluence = 0
glitchstuff_3037.Acceleration = v3(0.000000,227.427780,0.000000)
glitchstuff_3037.Drag = 0
glitchstuff_3037.EmissionDirection = Enum.NormalId.Top
glitchstuff_3037.SpreadAngle = v2(360.000000,360.000000)
glitchstuff_3037.ZOffset = 5
glitchstuff_3037.Texture = "rbxassetid://12237413962"
glitchstuff_3037.LockedToPart = true
glitchstuff_3037.Orientation = Enum.ParticleOrientation.FacingCamera
glitchstuff_3037.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchstuff_3037.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchstuff_3037.FlipbookFramerate = nr(44286.75,44286.75)
glitchstuff_3037.FlipbookStartRandom = false
glitchstuff_3037.Squash = ns({nsk(0.000000,0.000000,2.000000),nsk(0.100000,0.000000,2.000000),nsk(0.200000,0.000000,2.000000),nsk(0.300000,0.000000,2.000000),nsk(0.400000,0.000000,2.000000),nsk(0.500000,0.000000,2.000000),nsk(0.600000,0.000000,2.000000),nsk(0.700000,0.000000,2.000000),nsk(0.800000,0.000000,2.000000),nsk(0.900000,0.000000,2.000000),nsk(1.000000,0.000000,2.000000),nsk(1.000000,0.000000,2.000000)})

local glitchyness_3038=i("ParticleEmitter", glitchrootpart_3035)
glitchyness_3038.Name="glitchyness"
glitchyness_3038:SetAttribute("AuraInstance", true)
glitchyness_3038.Enabled = true
glitchyness_3038.Rate = 14.2898588180542
glitchyness_3038.Lifetime = nr(0.5598376393318176,1.3995940685272217)
glitchyness_3038.Speed = nr(14.626102447509766,14.626102447509766)
glitchyness_3038.Rotation = nr(0,0)
glitchyness_3038.RotSpeed = nr(0,0)
glitchyness_3038.Size = ns({nsk(0.000000,1.862234,0.931117),nsk(0.741000,1.862234,0.931117),nsk(0.865000,5.586702,0.931117),nsk(1.000000,0.000000,0.000000)})
glitchyness_3038.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
glitchyness_3038.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
glitchyness_3038.LightEmission = -100
glitchyness_3038.LightInfluence = 0
glitchyness_3038.Acceleration = v3(0.000000,0.000000,0.000000)
glitchyness_3038.Drag = 5.715943336486816
glitchyness_3038.EmissionDirection = Enum.NormalId.Top
glitchyness_3038.SpreadAngle = v2(360.000000,360.000000)
glitchyness_3038.ZOffset = 5
glitchyness_3038.Texture = "rbxassetid://8733226116"
glitchyness_3038.LockedToPart = true
glitchyness_3038.Orientation = Enum.ParticleOrientation.FacingCamera
glitchyness_3038.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitchyness_3038.FlipbookMode = Enum.ParticleFlipbookMode.Random
glitchyness_3038.FlipbookFramerate = nr(71.44929504394531,71.44929504394531)
glitchyness_3038.FlipbookStartRandom = true
glitchyness_3038.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.605438,0.000000,0.000000),nsk(0.716843,2.287500,0.000000),nsk(1.000000,-3.000000,0.000000)})

local questionable_3039=i("ParticleEmitter", glitchrootpart_3035)
questionable_3039.Name="questionable"
questionable_3039:SetAttribute("EmitDelay", 0.14112573173691909)
questionable_3039:SetAttribute("AuraInstance", true)
questionable_3039:SetAttribute("EmitDuration", 0)
questionable_3039:SetAttribute("EmitCount", 15)
questionable_3039.Enabled = true
questionable_3039.Rate = 236.1959991455078
questionable_3039.Lifetime = nr(0.3387017846107483,0.3387017846107483)
questionable_3039.Speed = nr(15.379077911376953,15.379077911376953)
questionable_3039.Rotation = nr(0,0)
questionable_3039.RotSpeed = nr(590.489990234375,590.489990234375)
questionable_3039.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498414,0.630071,0.630071),nsk(0.689746,0.000000,0.000000),nsk(0.733615,1.260142,0.000000),nsk(0.777484,0.000000,0.000000),nsk(0.836152,1.260142,0.000000),nsk(0.881078,0.000000,0.000000),nsk(1.000000,2.016228,0.000000)})
questionable_3039.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.457717,0.000000,0.000000),nsk(0.514271,1.000000,0.000000),nsk(0.589323,0.000000,0.000000),nsk(0.643763,1.000000,0.000000),nsk(0.739429,0.000000,0.000000),nsk(0.844609,1.000000,0.000000),nsk(0.877378,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
questionable_3039.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
questionable_3039.LightEmission = -15
questionable_3039.LightInfluence = 0
questionable_3039.Acceleration = v3(0.000000,-121.082565,0.000000)
questionable_3039.Drag = 0
questionable_3039.EmissionDirection = Enum.NormalId.Top
questionable_3039.SpreadAngle = v2(180.000000,180.000000)
questionable_3039.ZOffset = 3
questionable_3039.Texture = "rbxassetid://110387358669595"
questionable_3039.LockedToPart = true
questionable_3039.Orientation = Enum.ParticleOrientation.VelocityParallel
questionable_3039.FlipbookLayout = Enum.ParticleFlipbookLayout.None
questionable_3039.FlipbookMode = Enum.ParticleFlipbookMode.Loop
questionable_3039.FlipbookFramerate = nr(177147,177147)
questionable_3039.FlipbookStartRandom = false
questionable_3039.Squash = ns({nsk(0.000000,3.000000,0.000000),nsk(0.482558,0.049180,0.000000),nsk(0.550211,1.196722,0.000000),nsk(0.603066,-0.180328,0.000000),nsk(0.708774,1.786885,0.000000),nsk(0.761628,-0.049180,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_3040=i("ParticleEmitter", glitchrootpart_3035)
ParticleEmitter_3040.Name="ParticleEmitter"
ParticleEmitter_3040:SetAttribute("AuraInstance", true)
ParticleEmitter_3040.Enabled = true
ParticleEmitter_3040.Rate = 221.4337615966797
ParticleEmitter_3040.Lifetime = nr(0.11290058493614197,0.11290058493614197)
ParticleEmitter_3040.Speed = nr(0,0)
ParticleEmitter_3040.Rotation = nr(180,180)
ParticleEmitter_3040.RotSpeed = nr(0,0)
ParticleEmitter_3040.Size = ns({nsk(0.000000,1.215415,0.000000),nsk(0.498943,2.126976,0.759634),nsk(1.000000,1.215415,0.000000)})
ParticleEmitter_3040.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_3040.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
ParticleEmitter_3040.LightEmission = -15
ParticleEmitter_3040.LightInfluence = 0
ParticleEmitter_3040.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3040.Drag = 0
ParticleEmitter_3040.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3040.SpreadAngle = v2(360.000000,360.000000)
ParticleEmitter_3040.ZOffset = 2
ParticleEmitter_3040.Texture = "rbxassetid://12237413962"
ParticleEmitter_3040.LockedToPart = true
ParticleEmitter_3040.Orientation = Enum.ParticleOrientation.FacingCamera
ParticleEmitter_3040.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_3040.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ParticleEmitter_3040.FlipbookFramerate = nr(44286.75,44286.75)
ParticleEmitter_3040.FlipbookStartRandom = false
ParticleEmitter_3040.Squash = ns({nsk(0.000000,0.000000,3.000000),nsk(0.100000,0.000000,3.000000),nsk(0.200000,0.000000,3.000000),nsk(0.300000,0.000000,3.000000),nsk(0.400000,0.000000,3.000000),nsk(0.500000,0.000000,3.000000),nsk(0.600000,0.000000,3.000000),nsk(0.700000,0.000000,3.000000),nsk(0.800000,0.000000,3.000000),nsk(0.900000,0.000000,3.000000),nsk(1.000000,0.000000,3.000000),nsk(1.000000,0.000000,3.000000)})

local ParticleEmitter_3041=i("ParticleEmitter", glitchrootpart_3035)
ParticleEmitter_3041.Name="ParticleEmitter"
ParticleEmitter_3041:SetAttribute("AuraInstance", true)
ParticleEmitter_3041.Enabled = true
ParticleEmitter_3041.Rate = 88.57350158691406
ParticleEmitter_3041.Lifetime = nr(0.22580116987228394,0.22580116987228394)
ParticleEmitter_3041.Speed = nr(0,0)
ParticleEmitter_3041.Rotation = nr(180,180)
ParticleEmitter_3041.RotSpeed = nr(0,0)
ParticleEmitter_3041.Size = ns({nsk(0.000000,0.754677,0.000000),nsk(0.500000,2.264031,0.471673),nsk(1.000000,0.754677,0.000000)})
ParticleEmitter_3041.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_3041.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
ParticleEmitter_3041.LightEmission = -5
ParticleEmitter_3041.LightInfluence = 0
ParticleEmitter_3041.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3041.Drag = 0
ParticleEmitter_3041.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3041.SpreadAngle = v2(0.000000,0.000000)
ParticleEmitter_3041.ZOffset = 0
ParticleEmitter_3041.Texture = "rbxassetid://12237413962"
ParticleEmitter_3041.LockedToPart = true
ParticleEmitter_3041.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
ParticleEmitter_3041.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_3041.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ParticleEmitter_3041.FlipbookFramerate = nr(88573.5,88573.5)
ParticleEmitter_3041.FlipbookStartRandom = false
ParticleEmitter_3041.Squash = ns({nsk(0.000000,10.000000,0.000000),nsk(1.000000,10.000000,0.000000)})

local ParticleEmitter_3042=i("ParticleEmitter", glitchrootpart_3035)
ParticleEmitter_3042.Name="ParticleEmitter"
ParticleEmitter_3042:SetAttribute("AuraInstance", true)
ParticleEmitter_3042.Enabled = true
ParticleEmitter_3042.Rate = 295.2449951171875
ParticleEmitter_3042.Lifetime = nr(0.00169350893702358,0.00169350893702358)
ParticleEmitter_3042.Speed = nr(954.9197998046875,954.9197998046875)
ParticleEmitter_3042.Rotation = nr(-15,15)
ParticleEmitter_3042.RotSpeed = nr(0,0)
ParticleEmitter_3042.Size = ns({nsk(0.000000,1.078110,0.000000),nsk(1.000000,1.078110,0.000000)})
ParticleEmitter_3042.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_3042.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
ParticleEmitter_3042.LightEmission = 0
ParticleEmitter_3042.LightInfluence = 0
ParticleEmitter_3042.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3042.Drag = 0
ParticleEmitter_3042.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3042.SpreadAngle = v2(360.000000,36.000000)
ParticleEmitter_3042.ZOffset = 5
ParticleEmitter_3042.Texture = "rbxassetid://12237413962"
ParticleEmitter_3042.LockedToPart = false
ParticleEmitter_3042.Orientation = Enum.ParticleOrientation.FacingCamera
ParticleEmitter_3042.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ParticleEmitter_3042.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ParticleEmitter_3042.FlipbookFramerate = nr(0.5904899835586548,0.5904899835586548)
ParticleEmitter_3042.FlipbookStartRandom = false
ParticleEmitter_3042.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local questionable_3043=i("ParticleEmitter", glitchrootpart_3035)
questionable_3043.Name="questionable"
questionable_3043:SetAttribute("EmitDelay", 0.14112573173691909)
questionable_3043:SetAttribute("AuraInstance", true)
questionable_3043:SetAttribute("EmitDuration", 0)
questionable_3043:SetAttribute("EmitCount", 15)
questionable_3043.Enabled = true
questionable_3043.Rate = 29.524499893188477
questionable_3043.Lifetime = nr(0.3387017846107483,0.3387017846107483)
questionable_3043.Speed = nr(19.861589431762695,19.861589431762695)
questionable_3043.Rotation = nr(0,0)
questionable_3043.RotSpeed = nr(590.489990234375,590.489990234375)
questionable_3043.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.498414,0.813717,0.813717),nsk(0.689746,0.000000,0.000000),nsk(0.733615,1.627433,0.000000),nsk(0.777484,0.000000,0.000000),nsk(0.836152,1.627433,0.000000),nsk(0.881078,0.000000,0.000000),nsk(1.000000,2.603893,0.000000)})
questionable_3043.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.457717,0.000000,0.000000),nsk(0.514271,1.000000,0.000000),nsk(0.589323,0.000000,0.000000),nsk(0.643763,1.000000,0.000000),nsk(0.739429,0.000000,0.000000),nsk(0.844609,1.000000,0.000000),nsk(0.877378,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
questionable_3043.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
questionable_3043.LightEmission = -15
questionable_3043.LightInfluence = 0
questionable_3043.Acceleration = v3(0.000000,-156.374237,0.000000)
questionable_3043.Drag = 0
questionable_3043.EmissionDirection = Enum.NormalId.Top
questionable_3043.SpreadAngle = v2(180.000000,180.000000)
questionable_3043.ZOffset = 3
questionable_3043.Texture = "rbxassetid://9563798159"
questionable_3043.LockedToPart = true
questionable_3043.Orientation = Enum.ParticleOrientation.VelocityParallel
questionable_3043.FlipbookLayout = Enum.ParticleFlipbookLayout.None
questionable_3043.FlipbookMode = Enum.ParticleFlipbookMode.Loop
questionable_3043.FlipbookFramerate = nr(177147,177147)
questionable_3043.FlipbookStartRandom = false
questionable_3043.Squash = ns({nsk(0.000000,3.000000,0.000000),nsk(0.482558,0.049180,0.000000),nsk(0.550211,1.196722,0.000000),nsk(0.603066,-0.180328,0.000000),nsk(0.708774,1.786885,0.000000),nsk(0.761628,-0.049180,0.000000),nsk(1.000000,0.000000,0.000000)})

local glitchy_3044=i("ParticleEmitter", glitchrootpart_3035)
glitchy_3044.Name="glitchy"
glitchy_3044:SetAttribute("AuraInstance", true)
glitchy_3044.Enabled = true
glitchy_3044.Rate = 147.62249755859375
glitchy_3044.Lifetime = nr(1.1290059089660645,1.1290059089660645)
glitchy_3044.Speed = nr(29.429790496826172,29.429790496826172)
glitchy_3044.Rotation = nr(90,90)
glitchy_3044.RotSpeed = nr(0,0)
glitchy_3044.Size = ns({nsk(0.000000,2.104339,0.000000),nsk(0.534355,1.439811,0.000000),nsk(1.000000,0.000000,0.000000)})
glitchy_3044.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchy_3044.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
glitchy_3044.LightEmission = -2
glitchy_3044.LightInfluence = 0
glitchy_3044.Acceleration = v3(0.000000,0.000000,0.000000)
glitchy_3044.Drag = 0.4428674876689911
glitchy_3044.EmissionDirection = Enum.NormalId.Top
glitchy_3044.SpreadAngle = v2(360.000000,360.000000)
glitchy_3044.ZOffset = 1.065000057220459
glitchy_3044.Texture = "rbxassetid://12237413962"
glitchy_3044.LockedToPart = false
glitchy_3044.Orientation = Enum.ParticleOrientation.VelocityParallel
glitchy_3044.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchy_3044.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchy_3044.FlipbookFramerate = nr(138.39608764648438,138.39608764648438)
glitchy_3044.FlipbookStartRandom = false
glitchy_3044.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local glitchy_3045=i("ParticleEmitter", glitchrootpart_3035)
glitchy_3045.Name="glitchy"
glitchy_3045:SetAttribute("AuraInstance", true)
glitchy_3045.Enabled = true
glitchy_3045.Rate = 147.62249755859375
glitchy_3045.Lifetime = nr(1.1290059089660645,1.1290059089660645)
glitchy_3045.Speed = nr(29.429790496826172,29.429790496826172)
glitchy_3045.Rotation = nr(90,90)
glitchy_3045.RotSpeed = nr(0,0)
glitchy_3045.Size = ns({nsk(0.000000,2.104339,0.000000),nsk(0.534355,1.439811,0.000000),nsk(1.000000,0.000000,0.000000)})
glitchy_3045.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchy_3045.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
glitchy_3045.LightEmission = -2
glitchy_3045.LightInfluence = 0
glitchy_3045.Acceleration = v3(0.000000,0.000000,0.000000)
glitchy_3045.Drag = 0.4428674876689911
glitchy_3045.EmissionDirection = Enum.NormalId.Top
glitchy_3045.SpreadAngle = v2(360.000000,360.000000)
glitchy_3045.ZOffset = 1.065000057220459
glitchy_3045.Texture = "rbxassetid://12237413962"
glitchy_3045.LockedToPart = false
glitchy_3045.Orientation = Enum.ParticleOrientation.VelocityParallel
glitchy_3045.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchy_3045.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchy_3045.FlipbookFramerate = nr(138.39608764648438,138.39608764648438)
glitchy_3045.FlipbookStartRandom = false
glitchy_3045.Squash = ns({nsk(0.000000,3.000000,0.000000),nsk(0.436575,2.180328,0.000000),nsk(0.603066,0.114754,0.000000),nsk(1.000000,0.000000,0.000000)})

local glitchyness_3046=i("ParticleEmitter", glitchrootpart_3035)
glitchyness_3046.Name="glitchyness"
glitchyness_3046:SetAttribute("AuraInstance", true)
glitchyness_3046.Enabled = true
glitchyness_3046.Rate = 14.2898588180542
glitchyness_3046.Lifetime = nr(0.5598376393318176,1.3995940685272217)
glitchyness_3046.Speed = nr(14.626102447509766,14.626102447509766)
glitchyness_3046.Rotation = nr(0,0)
glitchyness_3046.RotSpeed = nr(0,0)
glitchyness_3046.Size = ns({nsk(0.000000,1.862234,0.931117),nsk(0.741000,1.862234,0.931117),nsk(0.865000,5.586702,0.931117),nsk(1.000000,0.000000,0.000000)})
glitchyness_3046.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
glitchyness_3046.Color = cs({csk(0.000000,c3(0.556863,1.000000,0.592157)),csk(1.000000,c3(0.556863,1.000000,0.592157))})
glitchyness_3046.LightEmission = -100
glitchyness_3046.LightInfluence = 0
glitchyness_3046.Acceleration = v3(0.000000,0.000000,0.000000)
glitchyness_3046.Drag = 5.715943336486816
glitchyness_3046.EmissionDirection = Enum.NormalId.Top
glitchyness_3046.SpreadAngle = v2(360.000000,360.000000)
glitchyness_3046.ZOffset = 5
glitchyness_3046.Texture = "rbxassetid://8733226116"
glitchyness_3046.LockedToPart = true
glitchyness_3046.Orientation = Enum.ParticleOrientation.FacingCamera
glitchyness_3046.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitchyness_3046.FlipbookMode = Enum.ParticleFlipbookMode.Random
glitchyness_3046.FlipbookFramerate = nr(71.44929504394531,71.44929504394531)
glitchyness_3046.FlipbookStartRandom = true
glitchyness_3046.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.605438,0.000000,0.000000),nsk(0.716843,2.287500,0.000000),nsk(1.000000,-3.000000,0.000000)})






local torsoatt=i("Attachment",foldah)
torsoatt.Name="ScaryParticles"


local ParticleEmitter_3048=i("ParticleEmitter", torsoatt)
ParticleEmitter_3048.Name="ParticleEmitter"
ParticleEmitter_3048:SetAttribute("AuraInstance", true)
ParticleEmitter_3048.Enabled = true
ParticleEmitter_3048.Rate = 11.80980110168457
ParticleEmitter_3048.Lifetime = nr(0.08467544615268707,0.08467544615268707)
ParticleEmitter_3048.Speed = nr(0.0003486784698907286,0.0003486784698907286)
ParticleEmitter_3048.Rotation = nr(0,0)
ParticleEmitter_3048.RotSpeed = nr(0,0)
ParticleEmitter_3048.Size = ns({nsk(0.000000,32.476952,0.000000),nsk(1.000000,32.476952,0.000000)})
ParticleEmitter_3048.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_3048.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
ParticleEmitter_3048.LightEmission = 1
ParticleEmitter_3048.LightInfluence = 0
ParticleEmitter_3048.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3048.Drag = 0
ParticleEmitter_3048.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3048.SpreadAngle = v2(360.000000,360.000000)
ParticleEmitter_3048.ZOffset = -5.5
ParticleEmitter_3048.Texture = "rbxassetid://14590086212"
ParticleEmitter_3048.LockedToPart = false
ParticleEmitter_3048.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_3048.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ParticleEmitter_3048.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ParticleEmitter_3048.FlipbookFramerate = nr(0.5904899835586548,0.5904899835586548)
ParticleEmitter_3048.FlipbookStartRandom = false
ParticleEmitter_3048.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local ParticleEmitter_3049=i("ParticleEmitter", torsoatt)
ParticleEmitter_3049.Name="ParticleEmitter"
ParticleEmitter_3049:SetAttribute("AuraInstance", true)
ParticleEmitter_3049.Enabled = true
ParticleEmitter_3049.Rate = 11.80980110168457
ParticleEmitter_3049.Lifetime = nr(0.08467544615268707,0.08467544615268707)
ParticleEmitter_3049.Speed = nr(0.0003486784698907286,0.0003486784698907286)
ParticleEmitter_3049.Rotation = nr(0,0)
ParticleEmitter_3049.RotSpeed = nr(0,0)
ParticleEmitter_3049.Size = ns({nsk(0.000000,32.476952,0.000000),nsk(1.000000,32.476952,0.000000)})
ParticleEmitter_3049.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_3049.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
ParticleEmitter_3049.LightEmission = 0
ParticleEmitter_3049.LightInfluence = 0
ParticleEmitter_3049.Acceleration = v3(0.000000,0.000000,0.000000)
ParticleEmitter_3049.Drag = 0
ParticleEmitter_3049.EmissionDirection = Enum.NormalId.Top
ParticleEmitter_3049.SpreadAngle = v2(360.000000,360.000000)
ParticleEmitter_3049.ZOffset = -5.5
ParticleEmitter_3049.Texture = "rbxassetid://14590086212"
ParticleEmitter_3049.LockedToPart = false
ParticleEmitter_3049.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_3049.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ParticleEmitter_3049.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ParticleEmitter_3049.FlipbookFramerate = nr(0.5904899835586548,0.5904899835586548)
ParticleEmitter_3049.FlipbookStartRandom = false
ParticleEmitter_3049.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local beizer_3050=i("ParticleEmitter", torsoatt)
beizer_3050.Name="beizer"
beizer_3050:SetAttribute("AuraInstance", true)
beizer_3050.Enabled = true
beizer_3050.Rate = 295.2449951171875
beizer_3050.Lifetime = nr(0.21168860793113708,0.21168860793113708)
beizer_3050.Speed = nr(0.005396965425461531,0.005396965425461531)
beizer_3050.Rotation = nr(-360,360)
beizer_3050.RotSpeed = nr(0,0)
beizer_3050.Size = ns({nsk(0.000000,18.279610,4.569902),nsk(1.000000,18.279610,4.569902)})
beizer_3050.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.241299,0.000000,0.000000),nsk(0.794664,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
beizer_3050.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
beizer_3050.LightEmission = -15
beizer_3050.LightInfluence = 0
beizer_3050.Acceleration = v3(0.000000,0.000000,0.000000)
beizer_3050.Drag = 0
beizer_3050.EmissionDirection = Enum.NormalId.Top
beizer_3050.SpreadAngle = v2(360.000000,-360.000000)
beizer_3050.ZOffset = -6
beizer_3050.Texture = "rbxassetid://14707966237"
beizer_3050.LockedToPart = true
beizer_3050.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
beizer_3050.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
beizer_3050.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
beizer_3050.FlipbookFramerate = nr(2.361959934234619,2.361959934234619)
beizer_3050.FlipbookStartRandom = false
beizer_3050.Squash = ns({nsk(0.000000,0.500000,0.500000),nsk(1.000000,0.500000,0.500000)})

local darkwiggles_3051=i("ParticleEmitter", torsoatt)
darkwiggles_3051.Name="dark wiggles"
darkwiggles_3051:SetAttribute("AuraInstance", true)
darkwiggles_3051.Enabled = true
darkwiggles_3051.Rate = 20.66714859008789
darkwiggles_3051.Lifetime = nr(0.7225637435913086,0.7225637435913086)
darkwiggles_3051.Speed = nr(0.2147006392478943,0.2147006392478943)
darkwiggles_3051.Rotation = nr(0,360)
darkwiggles_3051.RotSpeed = nr(0,0)
darkwiggles_3051.Size = ns({nsk(0.000000,0.000000,8.079941),nsk(0.100000,2.634892,8.079941),nsk(0.200000,4.901773,8.079941),nsk(0.300000,7.006477,8.079941),nsk(0.400000,9.050180,8.079941),nsk(0.500000,11.100977,8.079941),nsk(0.600000,13.218062,8.079941),nsk(0.700000,15.466125,8.079941),nsk(0.800000,17.931978,8.079941),nsk(0.900000,20.757603,8.079941),nsk(1.000000,24.239826,8.079941),nsk(1.000000,24.239826,8.079941)})
darkwiggles_3051.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.011099,1.000000,0.000000),nsk(0.081924,0.284153,0.000000),nsk(0.201374,0.000000,0.000000),nsk(0.658562,0.333333,0.000000),nsk(0.795455,0.595628,0.000000),nsk(0.847780,0.830601,0.000000),nsk(0.885835,0.928962,0.000000),nsk(1.000000,1.000000,0.000000)})
darkwiggles_3051.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
darkwiggles_3051.LightEmission = -50
darkwiggles_3051.LightInfluence = 0
darkwiggles_3051.Acceleration = v3(0.000000,0.000000,0.000000)
darkwiggles_3051.Drag = 0
darkwiggles_3051.EmissionDirection = Enum.NormalId.Top
darkwiggles_3051.SpreadAngle = v2(360.000000,360.000000)
darkwiggles_3051.ZOffset = -1
darkwiggles_3051.Texture = "rbxassetid://18525853260"
darkwiggles_3051.LockedToPart = true
darkwiggles_3051.Orientation = Enum.ParticleOrientation.FacingCamera
darkwiggles_3051.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
darkwiggles_3051.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
darkwiggles_3051.FlipbookFramerate = nr(4.151882648468018,4.151882648468018)
darkwiggles_3051.FlipbookStartRandom = false
darkwiggles_3051.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_3052=i("ParticleEmitter", torsoatt)
dots_3052.Name="dots"
dots_3052:SetAttribute("AuraInstance", true)
dots_3052.Enabled = true
dots_3052.Rate = 118.0979995727539
dots_3052.Lifetime = nr(0.2776053845882416,0.2776053845882416)
dots_3052.Speed = nr(0.21252691745758057,0.21252691745758057)
dots_3052.Rotation = nr(0,360)
dots_3052.RotSpeed = nr(0,0)
dots_3052.Size = ns({nsk(0.000000,3.472614,3.472614),nsk(0.100000,8.664066,3.472614),nsk(0.200000,13.635435,3.472614),nsk(0.300000,18.643873,3.472614),nsk(0.400000,23.840569,3.472614),nsk(0.500000,29.352568,3.472614),nsk(0.600000,35.317181,3.472614),nsk(0.700000,41.912071,3.472614),nsk(0.800000,49.402893,3.472614),nsk(0.900000,58.251350,3.472614),nsk(1.000000,69.452278,3.472614),nsk(1.000000,69.452278,3.472614)})
dots_3052.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_3052.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
dots_3052.LightEmission = -2
dots_3052.LightInfluence = 0
dots_3052.Acceleration = v3(0.000000,0.000000,0.000000)
dots_3052.Drag = 0
dots_3052.EmissionDirection = Enum.NormalId.Top
dots_3052.SpreadAngle = v2(360.000000,360.000000)
dots_3052.ZOffset = -3
dots_3052.Texture = "http://www.roblox.com/asset/?id=18539291909"
dots_3052.LockedToPart = true
dots_3052.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_3052.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_3052.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_3052.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
dots_3052.FlipbookStartRandom = false
dots_3052.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_3053=i("ParticleEmitter", torsoatt)
dots_3053.Name="dots"
dots_3053:SetAttribute("AuraInstance", true)
dots_3053.Enabled = true
dots_3053.Rate = 118.0979995727539
dots_3053.Lifetime = nr(0.2776053845882416,0.2776053845882416)
dots_3053.Speed = nr(0.22778518497943878,0.22778518497943878)
dots_3053.Rotation = nr(0,360)
dots_3053.RotSpeed = nr(0,0)
dots_3053.Size = ns({nsk(0.000000,3.721929,3.721929),nsk(0.100000,9.286098,3.721929),nsk(0.200000,14.614383,3.721929),nsk(0.300000,19.982397,3.721929),nsk(0.400000,25.552195,3.721929),nsk(0.500000,31.459925,3.721929),nsk(0.600000,37.852757,3.721929),nsk(0.700000,44.921124,3.721929),nsk(0.800000,52.949753,3.721929),nsk(0.900000,62.433475,3.721929),nsk(1.000000,74.438560,3.721929),nsk(1.000000,74.438560,3.721929)})
dots_3053.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_3053.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
dots_3053.LightEmission = -15
dots_3053.LightInfluence = 0
dots_3053.Acceleration = v3(0.000000,0.000000,0.000000)
dots_3053.Drag = 0
dots_3053.EmissionDirection = Enum.NormalId.Top
dots_3053.SpreadAngle = v2(360.000000,360.000000)
dots_3053.ZOffset = -3
dots_3053.Texture = "http://www.roblox.com/asset/?id=18539291909"
dots_3053.LockedToPart = true
dots_3053.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_3053.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_3053.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_3053.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
dots_3053.FlipbookStartRandom = false
dots_3053.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_3054=i("ParticleEmitter", torsoatt)
dots_3054.Name="dots"
dots_3054:SetAttribute("AuraInstance", true)
dots_3054.Enabled = true
dots_3054.Rate = 118.0979995727539
dots_3054.Lifetime = nr(0.2776053845882416,0.2776053845882416)
dots_3054.Speed = nr(0.08782104402780533,0.08782104402780533)
dots_3054.Rotation = nr(0,360)
dots_3054.RotSpeed = nr(0,0)
dots_3054.Size = ns({nsk(0.000000,1.434965,1.434965),nsk(0.100000,3.580193,1.434965),nsk(0.200000,5.634478,1.434965),nsk(0.300000,7.704079,1.434965),nsk(0.400000,9.851476,1.434965),nsk(0.500000,12.129161,1.434965),nsk(0.600000,14.593874,1.434965),nsk(0.700000,17.319036,1.434965),nsk(0.800000,20.414421,1.434965),nsk(0.900000,24.070807,1.434965),nsk(1.000000,28.699289,1.434965),nsk(1.000000,28.699289,1.434965)})
dots_3054.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_3054.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
dots_3054.LightEmission = -15
dots_3054.LightInfluence = 0
dots_3054.Acceleration = v3(0.000000,0.000000,0.000000)
dots_3054.Drag = 0
dots_3054.EmissionDirection = Enum.NormalId.Top
dots_3054.SpreadAngle = v2(360.000000,360.000000)
dots_3054.ZOffset = -3
dots_3054.Texture = "http://www.roblox.com/asset/?id=18539291909"
dots_3054.LockedToPart = true
dots_3054.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_3054.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_3054.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_3054.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
dots_3054.FlipbookStartRandom = false
dots_3054.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_3055=i("ParticleEmitter", torsoatt)
dots_3055.Name="dots"
dots_3055:SetAttribute("AuraInstance", true)
dots_3055.Enabled = true
dots_3055.Rate = 118.0979995727539
dots_3055.Lifetime = nr(0.2776053845882416,0.2776053845882416)
dots_3055.Speed = nr(0.19692854583263397,0.19692854583263397)
dots_3055.Rotation = nr(0,360)
dots_3055.RotSpeed = nr(0,0)
dots_3055.Size = ns({nsk(0.000000,3.217742,3.217742),nsk(0.100000,8.028172,3.217742),nsk(0.200000,12.634664,3.217742),nsk(0.300000,17.275509,3.217742),nsk(0.400000,22.090799,3.217742),nsk(0.500000,27.198250,3.217742),nsk(0.600000,32.725082,3.217742),nsk(0.700000,38.835949,3.217742),nsk(0.800000,45.776993,3.217742),nsk(0.900000,53.976025,3.217742),nsk(1.000000,64.354858,3.217742),nsk(1.000000,64.354858,3.217742)})
dots_3055.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_3055.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
dots_3055.LightEmission = 0
dots_3055.LightInfluence = 0
dots_3055.Acceleration = v3(0.000000,0.000000,0.000000)
dots_3055.Drag = 0
dots_3055.EmissionDirection = Enum.NormalId.Top
dots_3055.SpreadAngle = v2(360.000000,360.000000)
dots_3055.ZOffset = -2
dots_3055.Texture = "http://www.roblox.com/asset/?id=18539291909"
dots_3055.LockedToPart = true
dots_3055.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_3055.FlipbookLayout = Enum.ParticleFlipbookLayout.None
dots_3055.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_3055.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
dots_3055.FlipbookStartRandom = false
dots_3055.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fogdark_3056=i("ParticleEmitter", torsoatt)
fogdark_3056.Name="fog dark"
fogdark_3056:SetAttribute("AuraInstance", true)
fogdark_3056.Enabled = true
fogdark_3056.Rate = 8.857349395751953
fogdark_3056.Lifetime = nr(0.8467544317245483,0.8467544317245483)
fogdark_3056.Speed = nr(0,0)
fogdark_3056.Rotation = nr(-360,360)
fogdark_3056.RotSpeed = nr(0,0)
fogdark_3056.Size = ns({nsk(0.000000,19.567696,0.000000),nsk(0.100000,20.594122,0.000000),nsk(0.200000,21.577034,0.000000),nsk(0.300000,22.567272,0.000000),nsk(0.400000,23.594736,0.000000),nsk(0.500000,24.684534,0.000000),nsk(0.600000,25.863825,0.000000),nsk(0.700000,27.167732,0.000000),nsk(0.800000,28.648779,0.000000),nsk(0.900000,30.398247,0.000000),nsk(1.000000,32.612831,0.000000),nsk(1.000000,32.612831,0.000000)})
fogdark_3056.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
fogdark_3056.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
fogdark_3056.LightEmission = 0
fogdark_3056.LightInfluence = 0
fogdark_3056.Acceleration = v3(0.000000,0.000000,0.000000)
fogdark_3056.Drag = 0
fogdark_3056.EmissionDirection = Enum.NormalId.Top
fogdark_3056.SpreadAngle = v2(350.000000,350.000000)
fogdark_3056.ZOffset = -6
fogdark_3056.Texture = "http://www.roblox.com/asset/?id=13712002536"
fogdark_3056.LockedToPart = true
fogdark_3056.Orientation = Enum.ParticleOrientation.FacingCamera
fogdark_3056.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
fogdark_3056.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fogdark_3056.FlipbookFramerate = nr(36.66891860961914,36.66891860961914)
fogdark_3056.FlipbookStartRandom = false
fogdark_3056.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fogdark_3057=i("ParticleEmitter", torsoatt)
fogdark_3057.Name="fog dark"
fogdark_3057:SetAttribute("AuraInstance", true)
fogdark_3057.Enabled = true
fogdark_3057.Rate = 8.857349395751953
fogdark_3057.Lifetime = nr(0.8467544317245483,0.8467544317245483)
fogdark_3057.Speed = nr(0,0)
fogdark_3057.Rotation = nr(-360,360)
fogdark_3057.RotSpeed = nr(0,0)
fogdark_3057.Size = ns({nsk(0.000000,8.681087,0.000000),nsk(0.100000,9.136456,0.000000),nsk(0.200000,9.572520,0.000000),nsk(0.300000,10.011831,0.000000),nsk(0.400000,10.467660,0.000000),nsk(0.500000,10.951143,0.000000),nsk(0.600000,11.474330,0.000000),nsk(0.700000,12.052795,0.000000),nsk(0.800000,12.709856,0.000000),nsk(0.900000,13.485994,0.000000),nsk(1.000000,14.468483,0.000000),nsk(1.000000,14.468483,0.000000)})
fogdark_3057.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
fogdark_3057.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
fogdark_3057.LightEmission = -10
fogdark_3057.LightInfluence = 0
fogdark_3057.Acceleration = v3(0.000000,0.000000,0.000000)
fogdark_3057.Drag = 0
fogdark_3057.EmissionDirection = Enum.NormalId.Top
fogdark_3057.SpreadAngle = v2(350.000000,350.000000)
fogdark_3057.ZOffset = -5.099999904632568
fogdark_3057.Texture = "http://www.roblox.com/asset/?id=13712002536"
fogdark_3057.LockedToPart = true
fogdark_3057.Orientation = Enum.ParticleOrientation.FacingCamera
fogdark_3057.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
fogdark_3057.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fogdark_3057.FlipbookFramerate = nr(36.66891860961914,36.66891860961914)
fogdark_3057.FlipbookStartRandom = false
fogdark_3057.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local glitchstuff_3058=i("ParticleEmitter", torsoatt)
glitchstuff_3058.Name="glitchstuff"
glitchstuff_3058:SetAttribute("AuraInstance", true)
glitchstuff_3058.Enabled = true
glitchstuff_3058.Rate = 221.4337615966797
glitchstuff_3058.Lifetime = nr(0.11290058493614197,0.11290058493614197)
glitchstuff_3058.Speed = nr(0,0)
glitchstuff_3058.Rotation = nr(-360,360)
glitchstuff_3058.RotSpeed = nr(0,0)
glitchstuff_3058.Size = ns({nsk(0.000000,15.327898,0.000000),nsk(0.498943,26.823841,9.579933),nsk(1.000000,15.327898,0.000000)})
glitchstuff_3058.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchstuff_3058.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
glitchstuff_3058.LightEmission = -5
glitchstuff_3058.LightInfluence = 0
glitchstuff_3058.Acceleration = v3(0.000000,0.000000,0.000000)
glitchstuff_3058.Drag = 0
glitchstuff_3058.EmissionDirection = Enum.NormalId.Top
glitchstuff_3058.SpreadAngle = v2(360.000000,360.000000)
glitchstuff_3058.ZOffset = -2.002000093460083
glitchstuff_3058.Texture = "rbxassetid://12237413962"
glitchstuff_3058.LockedToPart = true
glitchstuff_3058.Orientation = Enum.ParticleOrientation.FacingCamera
glitchstuff_3058.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchstuff_3058.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchstuff_3058.FlipbookFramerate = nr(44286.75,44286.75)
glitchstuff_3058.FlipbookStartRandom = false
glitchstuff_3058.Squash = ns({nsk(0.000000,0.000000,1.000000),nsk(0.100000,0.000000,1.000000),nsk(0.200000,0.000000,1.000000),nsk(0.300000,0.000000,1.000000),nsk(0.400000,0.000000,1.000000),nsk(0.500000,0.000000,1.000000),nsk(0.600000,0.000000,1.000000),nsk(0.700000,0.000000,1.000000),nsk(0.800000,0.000000,1.000000),nsk(0.900000,0.000000,1.000000),nsk(1.000000,0.000000,1.000000),nsk(1.000000,0.000000,1.000000)})

local glitchstuff_3059=i("ParticleEmitter", torsoatt)
glitchstuff_3059.Name="glitchstuff"
glitchstuff_3059:SetAttribute("AuraInstance", true)
glitchstuff_3059.Enabled = true
glitchstuff_3059.Rate = 267.9348449707031
glitchstuff_3059.Lifetime = nr(0.0933062806725502,0.0933062806725502)
glitchstuff_3059.Speed = nr(0,0)
glitchstuff_3059.Rotation = nr(180,180)
glitchstuff_3059.RotSpeed = nr(-357.2464294433594,357.2464294433594)
glitchstuff_3059.Size = ns({nsk(0.000000,18.373724,0.000000),nsk(0.498943,32.154022,11.483574),nsk(1.000000,18.373724,0.000000)})
glitchstuff_3059.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchstuff_3059.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
glitchstuff_3059.LightEmission = -15
glitchstuff_3059.LightInfluence = 0
glitchstuff_3059.Acceleration = v3(0.000000,0.000000,0.000000)
glitchstuff_3059.Drag = 0
glitchstuff_3059.EmissionDirection = Enum.NormalId.Top
glitchstuff_3059.SpreadAngle = v2(360.000000,360.000000)
glitchstuff_3059.ZOffset = -2
glitchstuff_3059.Texture = "rbxassetid://12237413962"
glitchstuff_3059.LockedToPart = true
glitchstuff_3059.Orientation = Enum.ParticleOrientation.FacingCamera
glitchstuff_3059.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchstuff_3059.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchstuff_3059.FlipbookFramerate = nr(53586.96875,53586.96875)
glitchstuff_3059.FlipbookStartRandom = false
glitchstuff_3059.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.098504,-0.675000,0.000000),nsk(0.169576,-0.975000,0.000000),nsk(0.195761,0.637500,0.000000),nsk(0.216958,-0.600000,0.000000),nsk(0.255611,-0.412500,0.000000),nsk(0.280549,-1.087500,0.000000),nsk(0.335411,-0.112500,0.000000),nsk(0.374065,0.150000,1.200000),nsk(0.448878,-1.200000,1.070917),nsk(0.517456,-0.750000,0.932812),nsk(0.593516,-0.487500,0.790600),nsk(0.597257,-1.012500,0.000000),nsk(0.654613,-0.187500,0.000000),nsk(0.668329,-1.312500,0.000000),nsk(0.744389,-0.450000,0.000000),nsk(0.769327,-1.500000,0.000000),nsk(0.817955,0.375000,0.000000),nsk(0.850374,-0.487500,2.512500),nsk(1.000000,0.000000,0.000000)})

local glitchstuff_3060=i("ParticleEmitter", torsoatt)
glitchstuff_3060.Name="glitchstuff"
glitchstuff_3060:SetAttribute("AuraInstance", true)
glitchstuff_3060.Enabled = true
glitchstuff_3060.Rate = 267.9348449707031
glitchstuff_3060.Lifetime = nr(0.0933062806725502,0.0933062806725502)
glitchstuff_3060.Speed = nr(0,0)
glitchstuff_3060.Rotation = nr(-360,360)
glitchstuff_3060.RotSpeed = nr(-357.2464294433594,357.2464294433594)
glitchstuff_3060.Size = ns({nsk(0.000000,11.876620,0.000000),nsk(0.498943,20.784090,7.422889),nsk(1.000000,11.876620,0.000000)})
glitchstuff_3060.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchstuff_3060.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
glitchstuff_3060.LightEmission = -15
glitchstuff_3060.LightInfluence = 0
glitchstuff_3060.Acceleration = v3(0.000000,0.000000,0.000000)
glitchstuff_3060.Drag = 0
glitchstuff_3060.EmissionDirection = Enum.NormalId.Top
glitchstuff_3060.SpreadAngle = v2(360.000000,360.000000)
glitchstuff_3060.ZOffset = -2
glitchstuff_3060.Texture = "rbxassetid://12237413962"
glitchstuff_3060.LockedToPart = true
glitchstuff_3060.Orientation = Enum.ParticleOrientation.FacingCamera
glitchstuff_3060.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchstuff_3060.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchstuff_3060.FlipbookFramerate = nr(53586.96875,53586.96875)
glitchstuff_3060.FlipbookStartRandom = false
glitchstuff_3060.Squash = ns({nsk(0.000000,0.000000,2.000000),nsk(0.100000,0.000000,2.000000),nsk(0.200000,0.000000,2.000000),nsk(0.300000,0.000000,2.000000),nsk(0.400000,0.000000,2.000000),nsk(0.500000,0.000000,2.000000),nsk(0.600000,0.000000,2.000000),nsk(0.700000,0.000000,2.000000),nsk(0.800000,0.000000,2.000000),nsk(0.900000,0.000000,2.000000),nsk(1.000000,0.000000,2.000000),nsk(1.000000,0.000000,2.000000)})

local glitchstuff_3061=i("ParticleEmitter", torsoatt)
glitchstuff_3061.Name="glitchstuff"
glitchstuff_3061:SetAttribute("AuraInstance", true)
glitchstuff_3061.Enabled = true
glitchstuff_3061.Rate = 221.4337615966797
glitchstuff_3061.Lifetime = nr(0.11290058493614197,0.11290058493614197)
glitchstuff_3061.Speed = nr(0,0)
glitchstuff_3061.Rotation = nr(180,180)
glitchstuff_3061.RotSpeed = nr(0,0)
glitchstuff_3061.Size = ns({nsk(0.000000,22.441574,0.000000),nsk(0.498943,39.272781,14.025980),nsk(1.000000,22.441574,0.000000)})
glitchstuff_3061.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.184461,0.273224,0.000000),nsk(0.635835,0.229508,0.000000),nsk(1.000000,1.000000,0.000000)})
glitchstuff_3061.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
glitchstuff_3061.LightEmission = -5
glitchstuff_3061.LightInfluence = 0
glitchstuff_3061.Acceleration = v3(0.000000,0.000000,0.000000)
glitchstuff_3061.Drag = 0
glitchstuff_3061.EmissionDirection = Enum.NormalId.Top
glitchstuff_3061.SpreadAngle = v2(360.000000,360.000000)
glitchstuff_3061.ZOffset = -2.002000093460083
glitchstuff_3061.Texture = "rbxassetid://12237413962"
glitchstuff_3061.LockedToPart = true
glitchstuff_3061.Orientation = Enum.ParticleOrientation.FacingCamera
glitchstuff_3061.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
glitchstuff_3061.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchstuff_3061.FlipbookFramerate = nr(44286.75,44286.75)
glitchstuff_3061.FlipbookStartRandom = false
glitchstuff_3061.Squash = ns({nsk(0.000000,0.000000,1.000000),nsk(0.100000,0.000000,1.000000),nsk(0.200000,0.000000,1.000000),nsk(0.300000,0.000000,1.000000),nsk(0.400000,0.000000,1.000000),nsk(0.500000,0.000000,1.000000),nsk(0.600000,0.000000,1.000000),nsk(0.700000,0.000000,1.000000),nsk(0.800000,0.000000,1.000000),nsk(0.900000,0.000000,1.000000),nsk(1.000000,0.000000,1.000000),nsk(1.000000,0.000000,1.000000)})

local glitchyness_3062=i("ParticleEmitter", torsoatt)
glitchyness_3062.Name="glitchyness"
glitchyness_3062:SetAttribute("AuraInstance", true)
glitchyness_3062.Enabled = true
glitchyness_3062.Rate = 11.80980110168457
glitchyness_3062.Lifetime = nr(0.6774035692214966,1.6935088634490967)
glitchyness_3062.Speed = nr(2.8936967849731445,2.8936967849731445)
glitchyness_3062.Rotation = nr(0,0)
glitchyness_3062.RotSpeed = nr(0,0)
glitchyness_3062.Size = ns({nsk(0.000000,0.445804,0.222902),nsk(0.741000,0.445804,0.222902),nsk(0.865000,1.337412,0.222902),nsk(1.000000,0.000000,0.000000)})
glitchyness_3062.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
glitchyness_3062.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
glitchyness_3062.LightEmission = -100
glitchyness_3062.LightInfluence = 0
glitchyness_3062.Acceleration = v3(0.000000,0.000000,0.000000)
glitchyness_3062.Drag = 4.723919868469238
glitchyness_3062.EmissionDirection = Enum.NormalId.Top
glitchyness_3062.SpreadAngle = v2(360.000000,360.000000)
glitchyness_3062.ZOffset = 5
glitchyness_3062.Texture = "rbxassetid://8733226116"
glitchyness_3062.LockedToPart = true
glitchyness_3062.Orientation = Enum.ParticleOrientation.FacingCamera
glitchyness_3062.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
glitchyness_3062.FlipbookMode = Enum.ParticleFlipbookMode.Random
glitchyness_3062.FlipbookFramerate = nr(59.04899978637695,59.04899978637695)
glitchyness_3062.FlipbookStartRandom = true
glitchyness_3062.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.605438,0.000000,0.000000),nsk(0.716843,2.287500,0.000000),nsk(1.000000,-3.000000,0.000000)})

local glitchyness_3063=i("ParticleEmitter", torsoatt)
glitchyness_3063.Name="glitchyness"
glitchyness_3063:SetAttribute("AuraInstance", true)
glitchyness_3063.Enabled = true
glitchyness_3063.Rate = 11.80980110168457
glitchyness_3063.Lifetime = nr(1.3548071384429932,1.6935088634490967)
glitchyness_3063.Speed = nr(2.8936967849731445,2.8936967849731445)
glitchyness_3063.Rotation = nr(0,360)
glitchyness_3063.RotSpeed = nr(-206.67149353027344,206.67149353027344)
glitchyness_3063.Size = ns({nsk(0.000000,0.222902,0.222902),nsk(0.470000,0.222902,0.222902),nsk(1.000000,0.000000,0.000000)})
glitchyness_3063.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
glitchyness_3063.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
glitchyness_3063.LightEmission = 1
glitchyness_3063.LightInfluence = 0
glitchyness_3063.Acceleration = v3(0.000000,1.554423,0.000000)
glitchyness_3063.Drag = 2.9524502754211426
glitchyness_3063.EmissionDirection = Enum.NormalId.Top
glitchyness_3063.SpreadAngle = v2(360.000000,360.000000)
glitchyness_3063.ZOffset = 5
glitchyness_3063.Texture = "rbxassetid://12852915048"
glitchyness_3063.LockedToPart = true
glitchyness_3063.Orientation = Enum.ParticleOrientation.FacingCamera
glitchyness_3063.FlipbookLayout = Enum.ParticleFlipbookLayout.None
glitchyness_3063.FlipbookMode = Enum.ParticleFlipbookMode.Loop
glitchyness_3063.FlipbookFramerate = nr(0.5904899835586548,0.5904899835586548)
glitchyness_3063.FlipbookStartRandom = false
glitchyness_3063.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local lightning_3064=i("ParticleEmitter", torsoatt)
lightning_3064.Name="lightning"
lightning_3064:SetAttribute("AuraInstance", true)
lightning_3064.Enabled = true
lightning_3064.Rate = 59.04899978637695
lightning_3064.Lifetime = nr(0.2777354419231415,0.2777354419231415)
lightning_3064.Speed = nr(0.083516925573349,0.083516925573349)
lightning_3064.Rotation = nr(-360,360)
lightning_3064.RotSpeed = nr(0,0)
lightning_3064.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.298032,0.000000),nsk(0.200000,1.420824,0.000000),nsk(0.300000,3.269027,0.000000),nsk(0.400000,5.703938,0.000000),nsk(0.500000,8.622089,0.000000),nsk(0.600000,11.947502,0.000000),nsk(0.700000,15.622964,0.000000),nsk(0.800000,19.604183,0.000000),nsk(0.900000,23.856018,0.000000),nsk(1.000000,28.350000,0.000000),nsk(1.000000,28.350000,0.000000)})
lightning_3064.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
lightning_3064.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
lightning_3064.LightEmission = 0
lightning_3064.LightInfluence = 0
lightning_3064.Acceleration = v3(0.000000,0.000000,0.000000)
lightning_3064.Drag = 0
lightning_3064.EmissionDirection = Enum.NormalId.Top
lightning_3064.SpreadAngle = v2(360.000000,360.000000)
lightning_3064.ZOffset = 14
lightning_3064.Texture = "rbxassetid://17602992063"
lightning_3064.LockedToPart = true
lightning_3064.Orientation = Enum.ParticleOrientation.FacingCamera
lightning_3064.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
lightning_3064.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightning_3064.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
lightning_3064.FlipbookStartRandom = false
lightning_3064.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local lightning_3065=i("ParticleEmitter", torsoatt)
lightning_3065.Name="lightning"
lightning_3065:SetAttribute("AuraInstance", true)
lightning_3065.Enabled = true
lightning_3065.Rate = 59.04899978637695
lightning_3065.Lifetime = nr(0.2776053845882416,0.2776053845882416)
lightning_3065.Speed = nr(0.14212529361248016,0.14212529361248016)
lightning_3065.Rotation = nr(0,360)
lightning_3065.RotSpeed = nr(0,0)
lightning_3065.Size = ns({nsk(0.000000,2.322277,2.322277),nsk(0.100000,5.794011,2.322277),nsk(0.200000,9.118563,2.322277),nsk(0.300000,12.467907,2.322277),nsk(0.400000,15.943150,2.322277),nsk(0.500000,19.629248,2.322277),nsk(0.600000,23.618021,2.322277),nsk(0.700000,28.028292,2.322277),nsk(0.800000,33.037716,2.322277),nsk(0.900000,38.955032,2.322277),nsk(1.000000,46.445545,2.322277),nsk(1.000000,46.445545,2.322277)})
lightning_3065.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.386154,0.770186,0.000000),nsk(0.564615,0.285714,0.000000),nsk(0.610769,0.782609,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
lightning_3065.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
lightning_3065.LightEmission = 0
lightning_3065.LightInfluence = 0
lightning_3065.Acceleration = v3(0.000000,0.000000,0.000000)
lightning_3065.Drag = 0
lightning_3065.EmissionDirection = Enum.NormalId.Top
lightning_3065.SpreadAngle = v2(360.000000,360.000000)
lightning_3065.ZOffset = 14.00100040435791
lightning_3065.Texture = "rbxassetid://17602992063"
lightning_3065.LockedToPart = true
lightning_3065.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
lightning_3065.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
lightning_3065.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightning_3065.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
lightning_3065.FlipbookStartRandom = false
lightning_3065.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local lightning_3066=i("ParticleEmitter", torsoatt)
lightning_3066.Name="lightning"
lightning_3066:SetAttribute("AuraInstance", true)
lightning_3066.Enabled = true
lightning_3066.Rate = 29.524499893188477
lightning_3066.Lifetime = nr(0.2776053845882416,0.2776053845882416)
lightning_3066.Speed = nr(0.10360933840274811,0.10360933840274811)
lightning_3066.Rotation = nr(0,360)
lightning_3066.RotSpeed = nr(0,0)
lightning_3066.Size = ns({nsk(0.000000,1.692940,1.692940),nsk(0.100000,4.223834,1.692940),nsk(0.200000,6.647432,1.692940),nsk(0.300000,9.089105,1.692940),nsk(0.400000,11.622557,1.692940),nsk(0.500000,14.309722,1.692940),nsk(0.600000,17.217537,1.692940),nsk(0.700000,20.432623,1.692940),nsk(0.800000,24.084496,1.692940),nsk(0.900000,28.398218,1.692940),nsk(1.000000,33.858803,1.692940),nsk(1.000000,33.858803,1.692940)})
lightning_3066.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.410769,0.608696,0.000000),nsk(0.576923,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
lightning_3066.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
lightning_3066.LightEmission = 0
lightning_3066.LightInfluence = 0
lightning_3066.Acceleration = v3(0.000000,0.000000,0.000000)
lightning_3066.Drag = 0
lightning_3066.EmissionDirection = Enum.NormalId.Top
lightning_3066.SpreadAngle = v2(360.000000,360.000000)
lightning_3066.ZOffset = 14.00100040435791
lightning_3066.Texture = "rbxassetid://17602992063"
lightning_3066.LockedToPart = true
lightning_3066.Orientation = Enum.ParticleOrientation.FacingCamera
lightning_3066.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
lightning_3066.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightning_3066.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
lightning_3066.FlipbookStartRandom = false
lightning_3066.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local slash_3067=i("ParticleEmitter", torsoatt)
slash_3067.Name="slash"
slash_3067:SetAttribute("EmitDelay", 0.34989850843864234)
slash_3067:SetAttribute("AuraInstance", true)
slash_3067:SetAttribute("EmitCount", 25)
slash_3067.Enabled = true
slash_3067.Rate = 19.648555755615234
slash_3067.Lifetime = nr(0.38170748949050903,0.7634149789810181)
slash_3067.Speed = nr(0.41782453656196594,0.41782453656196594)
slash_3067.Rotation = nr(0,360)
slash_3067.RotSpeed = nr(785.9421997070312,785.9421997070312)
slash_3067.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.638640,0.000000),nsk(0.200000,3.044623,0.000000),nsk(0.300000,7.005058,0.000000),nsk(0.400000,12.222724,0.000000),nsk(0.500000,18.475906,0.000000),nsk(0.600000,25.601791,0.000000),nsk(0.700000,33.477776,0.000000),nsk(0.800000,42.008961,0.000000),nsk(0.900000,51.120041,0.000000),nsk(1.000000,60.750000,0.000000),nsk(1.000000,60.750000,0.000000)})
slash_3067.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.011099,1.000000,0.000000),nsk(0.081924,0.284153,0.000000),nsk(0.201374,0.000000,0.000000),nsk(0.647992,0.573771,0.000000),nsk(0.781712,0.786885,0.000000),nsk(0.843552,0.912568,0.000000),nsk(0.885835,0.928962,0.000000),nsk(1.000000,1.000000,0.000000)})
slash_3067.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
slash_3067.LightEmission = -5
slash_3067.LightInfluence = 0
slash_3067.Acceleration = v3(0.000000,0.000000,0.000000)
slash_3067.Drag = 0
slash_3067.EmissionDirection = Enum.NormalId.Top
slash_3067.SpreadAngle = v2(360.000000,360.000000)
slash_3067.ZOffset = 0
slash_3067.Texture = "rbxassetid://18403832786"
slash_3067.LockedToPart = false
slash_3067.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
slash_3067.FlipbookLayout = Enum.ParticleFlipbookLayout.None
slash_3067.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
slash_3067.FlipbookFramerate = nr(7.368208408355713,7.368208408355713)
slash_3067.FlipbookStartRandom = false
slash_3067.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local slash_3068=i("ParticleEmitter", torsoatt)
slash_3068.Name="slash"
slash_3068:SetAttribute("EmitDelay", 0.34989850843864234)
slash_3068:SetAttribute("AuraInstance", true)
slash_3068:SetAttribute("EmitCount", 25)
slash_3068.Enabled = true
slash_3068.Rate = 19.648555755615234
slash_3068.Lifetime = nr(0.38170748949050903,0.7634149789810181)
slash_3068.Speed = nr(0.5731475353240967,0.5731475353240967)
slash_3068.Rotation = nr(0,360)
slash_3068.RotSpeed = nr(785.9421997070312,785.9421997070312)
slash_3068.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.638640,0.000000),nsk(0.200000,3.044623,0.000000),nsk(0.300000,7.005058,0.000000),nsk(0.400000,12.222724,0.000000),nsk(0.500000,18.475906,0.000000),nsk(0.600000,25.601791,0.000000),nsk(0.700000,33.477776,0.000000),nsk(0.800000,42.008961,0.000000),nsk(0.900000,51.120041,0.000000),nsk(1.000000,60.750000,0.000000),nsk(1.000000,60.750000,0.000000)})
slash_3068.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.011099,1.000000,0.000000),nsk(0.081924,0.284153,0.000000),nsk(0.201374,0.000000,0.000000),nsk(0.647992,0.573771,0.000000),nsk(0.781712,0.786885,0.000000),nsk(0.843552,0.912568,0.000000),nsk(0.885835,0.928962,0.000000),nsk(1.000000,1.000000,0.000000)})
slash_3068.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
slash_3068.LightEmission = -5
slash_3068.LightInfluence = 0
slash_3068.Acceleration = v3(0.000000,0.000000,0.000000)
slash_3068.Drag = 0
slash_3068.EmissionDirection = Enum.NormalId.Top
slash_3068.SpreadAngle = v2(360.000000,360.000000)
slash_3068.ZOffset = 0
slash_3068.Texture = "rbxassetid://18403832786"
slash_3068.LockedToPart = false
slash_3068.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
slash_3068.FlipbookLayout = Enum.ParticleFlipbookLayout.None
slash_3068.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
slash_3068.FlipbookFramerate = nr(7.368208408355713,7.368208408355713)
slash_3068.FlipbookStartRandom = false
slash_3068.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local wigglydots_3069=i("ParticleEmitter", Floor)
wigglydots_3069.Name="wiggly dots"
wigglydots_3069:SetAttribute("AuraInstance", true)
wigglydots_3069.Enabled = true
wigglydots_3069.Rate = 118.0979995727539
wigglydots_3069.Lifetime = nr(1.6935088634490967,1.6935088634490967)
wigglydots_3069.Speed = nr(26.30632972717285,26.30632972717285)
wigglydots_3069.Rotation = nr(0,360)
wigglydots_3069.RotSpeed = nr(-2952.449951171875,2952.449951171875)
wigglydots_3069.Size = ns({nsk(0.000000,0.405000,0.000000),nsk(1.000000,0.405000,0.000000)})
wigglydots_3069.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.379493,0.000000,0.000000),nsk(0.570296,0.000000,0.000000),nsk(0.752643,0.464481,0.000000),nsk(0.812368,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
wigglydots_3069.Color = cs({csk(0.000000,c3(1.000000,0.400000,0.411765)),csk(1.000000,c3(1.000000,0.400000,0.411765))})
wigglydots_3069.LightEmission = -15
wigglydots_3069.LightInfluence = 0
wigglydots_3069.Acceleration = v3(0.000000,0.000000,0.000000)
wigglydots_3069.Drag = 0
wigglydots_3069.EmissionDirection = Enum.NormalId.Top
wigglydots_3069.SpreadAngle = v2(360.000000,360.000000)
wigglydots_3069.ZOffset = -3
wigglydots_3069.Texture = "rbxassetid://12681311322"
wigglydots_3069.LockedToPart = true
wigglydots_3069.Orientation = Enum.ParticleOrientation.FacingCamera
wigglydots_3069.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
wigglydots_3069.FlipbookMode = Enum.ParticleFlipbookMode.Loop
wigglydots_3069.FlipbookFramerate = nr(202.62571716308594,202.62571716308594)
wigglydots_3069.FlipbookStartRandom = false
wigglydots_3069.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})


local hh=torsoatt:Clone()

g=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
g:Disconnect()
torsoatt:Destroy()
return
end
pcall(function()
if not torso:FindFirstChild("ScaryParticles") then 
torsoatt.Parent=torso
end
end)
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()



end)




end
repeat Fatal() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")