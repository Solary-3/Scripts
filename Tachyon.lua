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
local Ground_583=i("Attachment", Floor)
Ground_583.Name="Ground"
Ground_583:SetAttribute("AuraInstance", true)
Ground_583.Visible=false
Ground_583.CFrame=cf(0,0.7969498634338379,0,1,0,0,0,1,0,0,0,1)



local Bursty_584=i("ParticleEmitter", Ground_583)
Bursty_584.Name="Bursty"
Bursty_584:SetAttribute("AuraInstance", true)
Bursty_584.Enabled=true
Bursty_584.Rate=19
Bursty_584.Lifetime=nr(1,1)
Bursty_584.Speed=nr(-2.8499999046325684,-2.8499999046325684)
Bursty_584.Rotation=nr(-1000,1000)
Bursty_584.RotSpeed=nr(0,0)
Bursty_584.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,57.588387,0.000000)})
Bursty_584.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Bursty_584.Color=cs({csk(0.000000,c3(0.756863,0.206944,0.206944)),csk(1.000000,c3(0.756863,0.206944,0.206944))})
Bursty_584.LightEmission=1
Bursty_584.LightInfluence=0
Bursty_584.Acceleration=v3(0.000000,0.000000,0.000000)
Bursty_584.Drag=0
Bursty_584.EmissionDirection=Enum.NormalId.Top
Bursty_584.SpreadAngle=v2(0.000100,0.000100)
Bursty_584.ZOffset=0.003000000026077032
Bursty_584.Texture="rbxassetid://99993683933857"
Bursty_584.LockedToPart=true
Bursty_584.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Bursty_584.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Bursty_584.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Bursty_584.FlipbookFramerate=nr(1,1)
Bursty_584.FlipbookStartRandom=false
Bursty_584.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Bursty_584.Brightness=40



local cBursty_585=i("ParticleEmitter", Ground_583)
cBursty_585.Name="c. Bursty "
cBursty_585:SetAttribute("AuraInstance", true)
cBursty_585.Enabled=true
cBursty_585.Rate=9
cBursty_585.Lifetime=nr(1.5,1.5)
cBursty_585.Speed=nr(-3,-3)
cBursty_585.Rotation=nr(-1000,1000)
cBursty_585.RotSpeed=nr(0,0)
cBursty_585.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,74.882729,0.000000)})
cBursty_585.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cBursty_585.Color=cs({csk(0.000000,c3(0.756863,0.336679,0.336679)),csk(1.000000,c3(0.756863,0.336679,0.336679))})
cBursty_585.LightEmission=-1
cBursty_585.LightInfluence=0
cBursty_585.Acceleration=v3(0.000000,0.000000,0.000000)
cBursty_585.Drag=0
cBursty_585.EmissionDirection=Enum.NormalId.Top
cBursty_585.SpreadAngle=v2(0.000100,0.000100)
cBursty_585.ZOffset=0.0010000000474974513
cBursty_585.Texture="rbxassetid://11866455263"
cBursty_585.LockedToPart=true
cBursty_585.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
cBursty_585.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
cBursty_585.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
cBursty_585.FlipbookFramerate=nr(1,1)
cBursty_585.FlipbookStartRandom=false
cBursty_585.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
cBursty_585.Brightness=0.10000000149011612



local Galxyyy_586=i("ParticleEmitter", Ground_583)
Galxyyy_586.Name="Galxyyy"
Galxyyy_586:SetAttribute("AuraInstance", true)
Galxyyy_586.Enabled=true
Galxyyy_586.Rate=8
Galxyyy_586.Lifetime=nr(1.5,1.5)
Galxyyy_586.Speed=nr(-3,-3)
Galxyyy_586.Rotation=nr(-360,360)
Galxyyy_586.RotSpeed=nr(0,0)
Galxyyy_586.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,58.402821,1.498515)})
Galxyyy_586.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.495566,0.266000,0.000000),nsk(1.000000,1.000000,0.000000)})
Galxyyy_586.Color=cs({csk(0.000000,c3(0.929412,0.274006,0.274006)),csk(1.000000,c3(0.929412,0.274006,0.274006))})
Galxyyy_586.LightEmission=1
Galxyyy_586.LightInfluence=0
Galxyyy_586.Acceleration=v3(0.000000,0.000000,0.000000)
Galxyyy_586.Drag=0
Galxyyy_586.EmissionDirection=Enum.NormalId.Top
Galxyyy_586.SpreadAngle=v2(0.000100,0.000100)
Galxyyy_586.ZOffset=0.003000000026077032
Galxyyy_586.Texture="http://www.roblox.com/asset/?id=83810812032859"
Galxyyy_586.LockedToPart=true
Galxyyy_586.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Galxyyy_586.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Galxyyy_586.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Galxyyy_586.FlipbookFramerate=nr(1,1)
Galxyyy_586.FlipbookStartRandom=false
Galxyyy_586.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Galxyyy_586.Brightness=0.5



local Dotty2_587=i("ParticleEmitter", Ground_583)
Dotty2_587.Name="Dotty2"
Dotty2_587:SetAttribute("AuraInstance", true)
Dotty2_587.Enabled=true
Dotty2_587.Rate=8
Dotty2_587.Lifetime=nr(1.5,1.5)
Dotty2_587.Speed=nr(-3,-3)
Dotty2_587.Rotation=nr(-360,360)
Dotty2_587.RotSpeed=nr(0,0)
Dotty2_587.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,49.642399,0.000000)})
Dotty2_587.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.497566,0.189333,0.000000),nsk(1.000000,1.000000,0.000000)})
Dotty2_587.Color=cs({csk(0.000000,c3(1.000000,0.506720,0.435068)),csk(1.000000,c3(1.000000,0.506720,0.435068))})
Dotty2_587.LightEmission=0.550000011920929
Dotty2_587.LightInfluence=0
Dotty2_587.Acceleration=v3(0.000000,0.000000,0.000000)
Dotty2_587.Drag=0
Dotty2_587.EmissionDirection=Enum.NormalId.Top
Dotty2_587.SpreadAngle=v2(0.000100,0.000100)
Dotty2_587.ZOffset=0.009999999776482582
Dotty2_587.Texture="http://www.roblox.com/asset/?id=84271702672031"
Dotty2_587.LockedToPart=true
Dotty2_587.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Dotty2_587.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dotty2_587.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Dotty2_587.FlipbookFramerate=nr(1,1)
Dotty2_587.FlipbookStartRandom=false
Dotty2_587.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Dotty2_587.Brightness=0



local swrily_588=i("ParticleEmitter", Ground_583)
swrily_588.Name="swrily"
swrily_588:SetAttribute("AuraInstance", true)
swrily_588.Enabled=true
swrily_588.Rate=8
swrily_588.Lifetime=nr(1.5,1.5)
swrily_588.Speed=nr(-3,-3)
swrily_588.Rotation=nr(-360,360)
swrily_588.RotSpeed=nr(0,0)
swrily_588.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,58.402821,0.000000)})
swrily_588.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swrily_588.Color=cs({csk(0.000000,c3(0.929412,0.391653,0.409821)),csk(1.000000,c3(0.929412,0.391653,0.409821))})
swrily_588.LightEmission=0.44999998807907104
swrily_588.LightInfluence=0
swrily_588.Acceleration=v3(0.000000,0.000000,0.000000)
swrily_588.Drag=0
swrily_588.EmissionDirection=Enum.NormalId.Top
swrily_588.SpreadAngle=v2(0.000100,0.000100)
swrily_588.ZOffset=-0.0010000000474974513
swrily_588.Texture="http://www.roblox.com/asset/?id=107109981712428"
swrily_588.LockedToPart=true
swrily_588.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swrily_588.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swrily_588.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swrily_588.FlipbookFramerate=nr(1,1)
swrily_588.FlipbookStartRandom=false
swrily_588.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swrily_588.Brightness=0.550000011920929



local Dotty2_589=i("ParticleEmitter", Ground_583)
Dotty2_589.Name="Dotty2"
Dotty2_589:SetAttribute("AuraInstance", true)
Dotty2_589.Enabled=true
Dotty2_589.Rate=8
Dotty2_589.Lifetime=nr(1.5,1.5)
Dotty2_589.Speed=nr(-3,-3)
Dotty2_589.Rotation=nr(-360,360)
Dotty2_589.RotSpeed=nr(0,0)
Dotty2_589.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,49.642399,0.000000)})
Dotty2_589.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.497566,0.189333,0.000000),nsk(1.000000,1.000000,0.000000)})
Dotty2_589.Color=cs({csk(0.000000,c3(0.666667,0.222738,0.222738)),csk(1.000000,c3(0.666667,0.222738,0.222738))})
Dotty2_589.LightEmission=1
Dotty2_589.LightInfluence=0
Dotty2_589.Acceleration=v3(0.000000,0.000000,0.000000)
Dotty2_589.Drag=0
Dotty2_589.EmissionDirection=Enum.NormalId.Top
Dotty2_589.SpreadAngle=v2(0.000100,0.000100)
Dotty2_589.ZOffset=0.003000000026077032
Dotty2_589.Texture="rbxassetid://76049055618028"
Dotty2_589.LockedToPart=true
Dotty2_589.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Dotty2_589.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dotty2_589.FlipbookMode=Enum.ParticleFlipbookMode.Loop
Dotty2_589.FlipbookFramerate=nr(1,1)
Dotty2_589.FlipbookStartRandom=false
Dotty2_589.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Dotty2_589.Brightness=3



local Glowe_590=i("ParticleEmitter", Ground_583)
Glowe_590.Name="Glowe"
Glowe_590:SetAttribute("AuraInstance", true)
Glowe_590.Enabled=true
Glowe_590.Rate=2
Glowe_590.Lifetime=nr(2,2)
Glowe_590.Speed=nr(-3,-3)
Glowe_590.Rotation=nr(-1000,1000)
Glowe_590.RotSpeed=nr(0,0)
Glowe_590.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,121.238708,0.000000)})
Glowe_590.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494585,0.762500,0.000000),nsk(1.000000,1.000000,0.000000)})
Glowe_590.Color=cs({csk(0.000000,c3(0.756863,0.195503,0.195503)),csk(1.000000,c3(0.756863,0.195503,0.195503))})
Glowe_590.LightEmission=1
Glowe_590.LightInfluence=0
Glowe_590.Acceleration=v3(0.000000,0.000000,0.000000)
Glowe_590.Drag=0
Glowe_590.EmissionDirection=Enum.NormalId.Top
Glowe_590.SpreadAngle=v2(0.000100,0.000100)
Glowe_590.ZOffset=0.003000000026077032
Glowe_590.Texture="rbxassetid://6673021984"
Glowe_590.LockedToPart=true
Glowe_590.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Glowe_590.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Glowe_590.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Glowe_590.FlipbookFramerate=nr(1,1)
Glowe_590.FlipbookStartRandom=false
Glowe_590.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Glowe_590.Brightness=0.20000000298023224



local stillskibidi2_591=i("ParticleEmitter", Ground_583)
stillskibidi2_591.Name="stillskibidi2"
stillskibidi2_591:SetAttribute("AuraInstance", true)
stillskibidi2_591.Enabled=true
stillskibidi2_591.Rate=8
stillskibidi2_591.Lifetime=nr(2,2)
stillskibidi2_591.Speed=nr(-3,-3)
stillskibidi2_591.Rotation=nr(-1000,1000)
stillskibidi2_591.RotSpeed=nr(0,0)
stillskibidi2_591.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,70.951920,0.000000)})
stillskibidi2_591.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
stillskibidi2_591.Color=cs({csk(0.000000,c3(0.756863,0.328836,0.328836)),csk(1.000000,c3(0.756863,0.270013,0.270013))})
stillskibidi2_591.LightEmission=0.699999988079071
stillskibidi2_591.LightInfluence=0
stillskibidi2_591.Acceleration=v3(0.000000,0.000000,0.000000)
stillskibidi2_591.Drag=0
stillskibidi2_591.EmissionDirection=Enum.NormalId.Top
stillskibidi2_591.SpreadAngle=v2(0.000100,0.000100)
stillskibidi2_591.ZOffset=0.009999999776482582
stillskibidi2_591.Texture="http://www.roblox.com/asset/?id=132708083163648"
stillskibidi2_591.LockedToPart=true
stillskibidi2_591.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
stillskibidi2_591.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
stillskibidi2_591.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stillskibidi2_591.FlipbookFramerate=nr(1,1)
stillskibidi2_591.FlipbookStartRandom=false
stillskibidi2_591.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
stillskibidi2_591.Brightness=0



local cBursty_592=i("ParticleEmitter", Ground_583)
cBursty_592.Name="c. Bursty "
cBursty_592:SetAttribute("AuraInstance", true)
cBursty_592.Enabled=true
cBursty_592.Rate=9
cBursty_592.Lifetime=nr(1.5,1.5)
cBursty_592.Speed=nr(-3,-3)
cBursty_592.Rotation=nr(-1000,1000)
cBursty_592.RotSpeed=nr(0,0)
cBursty_592.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,107.831131,0.000000)})
cBursty_592.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cBursty_592.Color=cs({csk(0.000000,c3(0.756863,0.226875,0.226875)),csk(1.000000,c3(0.756863,0.226875,0.226875))})
cBursty_592.LightEmission=0.6000000238418579
cBursty_592.LightInfluence=0
cBursty_592.Acceleration=v3(0.000000,0.000000,0.000000)
cBursty_592.Drag=0
cBursty_592.EmissionDirection=Enum.NormalId.Top
cBursty_592.SpreadAngle=v2(0.000100,0.000100)
cBursty_592.ZOffset=0
cBursty_592.Texture="rbxassetid://12865656309"
cBursty_592.LockedToPart=true
cBursty_592.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
cBursty_592.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
cBursty_592.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
cBursty_592.FlipbookFramerate=nr(1,1)
cBursty_592.FlipbookStartRandom=false
cBursty_592.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
cBursty_592.Brightness=0.029999999329447746



local Rays_593=i("ParticleEmitter", Ground_583)
Rays_593.Name="Rays"
Rays_593:SetAttribute("AuraInstance", true)
Rays_593.Enabled=true
Rays_593.Rate=2
Rays_593.Lifetime=nr(2,2)
Rays_593.Speed=nr(-3,-3)
Rays_593.Rotation=nr(-1000,1000)
Rays_593.RotSpeed=nr(0,0)
Rays_593.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,174.583740,0.000000)})
Rays_593.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494585,0.762500,0.000000),nsk(1.000000,1.000000,0.000000)})
Rays_593.Color=cs({csk(0.000000,c3(0.756863,0.164130,0.164130)),csk(1.000000,c3(0.756863,0.164130,0.164130))})
Rays_593.LightEmission=1
Rays_593.LightInfluence=0
Rays_593.Acceleration=v3(0.000000,0.000000,0.000000)
Rays_593.Drag=0
Rays_593.EmissionDirection=Enum.NormalId.Top
Rays_593.SpreadAngle=v2(0.000100,0.000100)
Rays_593.ZOffset=0.003000000026077032
Rays_593.Texture="https://assetgame.roblox.com/asset/?id=12363778394&assetName=flare_4"
Rays_593.LockedToPart=true
Rays_593.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Rays_593.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Rays_593.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Rays_593.FlipbookFramerate=nr(1,1)
Rays_593.FlipbookStartRandom=false
Rays_593.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Rays_593.Brightness=1.5



local Air_594=i("Attachment", Ground_583)
Air_594.Name="Air"
Air_594:SetAttribute("AuraInstance", true)
Air_594.Visible=false
Air_594.CFrame=cf(0,-2.2500195503234863,0,1,0,0,0,1,0,0,0,1)



local Burst_595=i("ParticleEmitter", Air_594)
Burst_595.Name="Burst"
Burst_595:SetAttribute("AuraInstance", true)
Burst_595.Enabled=true
Burst_595.Rate=7.5
Burst_595.Lifetime=nr(0.9166666865348816,1)
Burst_595.Speed=nr(105.65476989746094,148.0767822265625)
Burst_595.Rotation=nr(-360,360)
Burst_595.RotSpeed=nr(-29.524497985839844,29.524497985839844)
Burst_595.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.689003,0.000000),nsk(0.200000,3.351494,0.000000),nsk(0.300000,7.784161,0.000000),nsk(0.400000,13.653320,0.000000),nsk(0.500000,20.704075,0.000000),nsk(0.600000,28.747932,0.000000),nsk(0.700000,37.642712,0.000000),nsk(0.800000,47.278431,0.000000),nsk(0.900000,57.567955,0.000000),nsk(1.000000,68.440819,0.000000),nsk(1.000000,68.440819,0.000000)})
Burst_595.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.610108,0.575000,0.112500),nsk(1.000000,1.000000,0.000000)})
Burst_595.Color=cs({csk(0.000000,c3(0.935852,0.369535,0.369535)),csk(1.000000,c3(0.935852,0.369535,0.369535))})
Burst_595.LightEmission=-3
Burst_595.LightInfluence=0
Burst_595.Acceleration=v3(0.000000,39.620541,0.000000)
Burst_595.Drag=3
Burst_595.EmissionDirection=Enum.NormalId.Left
Burst_595.SpreadAngle=v2(0.000000,360.000000)
Burst_595.ZOffset=1
Burst_595.Texture="rbxassetid://11447021694"
Burst_595.LockedToPart=true
Burst_595.Orientation=Enum.ParticleOrientation.FacingCamera
Burst_595.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
Burst_595.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Burst_595.FlipbookFramerate=nr(0.9841499328613281,0.9841499328613281)
Burst_595.FlipbookStartRandom=false
Burst_595.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Burst_595.Brightness=0



local Glow_596=i("ParticleEmitter", Air_594)
Glow_596.Name="Glow"
Glow_596:SetAttribute("AuraInstance", true)
Glow_596.Enabled=true
Glow_596.Rate=22.5
Glow_596.Lifetime=nr(1.8333333730697632,2)
Glow_596.Speed=nr(52.82738494873047,74.03839111328125)
Glow_596.Rotation=nr(-360,360)
Glow_596.RotSpeed=nr(-14.762248992919922,14.762248992919922)
Glow_596.Size=ns({nsk(0.000000,4.200000,2.100000),nsk(0.100000,7.140000,2.100000),nsk(0.200000,10.080000,2.100000),nsk(0.300000,13.020000,2.100000),nsk(0.400000,15.960000,2.100000),nsk(0.500000,18.900000,2.100000),nsk(0.600000,21.840000,2.100000),nsk(0.700000,24.780001,2.100000),nsk(0.800000,27.719999,2.100000),nsk(0.900000,30.660000,2.100000),nsk(1.000000,33.599998,2.100000),nsk(1.000000,33.599998,2.100000)})
Glow_596.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.499398,0.725000,0.112500),nsk(1.000000,1.000000,0.000000)})
Glow_596.Color=cs({csk(0.000000,c3(0.935852,0.229912,0.229912)),csk(1.000000,c3(0.092715,0.034049,0.034049))})
Glow_596.LightEmission=1
Glow_596.LightInfluence=0
Glow_596.Acceleration=v3(0.000000,9.905135,0.000000)
Glow_596.Drag=1.5
Glow_596.EmissionDirection=Enum.NormalId.Left
Glow_596.SpreadAngle=v2(0.000000,360.000000)
Glow_596.ZOffset=1
Glow_596.Texture="rbxassetid://1075864321"
Glow_596.LockedToPart=true
Glow_596.Orientation=Enum.ParticleOrientation.FacingCamera
Glow_596.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Glow_596.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Glow_596.FlipbookFramerate=nr(0.49207496643066406,0.49207496643066406)
Glow_596.FlipbookStartRandom=false
Glow_596.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Glow_596.Brightness=0.05000000074505806



local Dust_597=i("ParticleEmitter", Air_594)
Dust_597.Name="Dust"
Dust_597:SetAttribute("AuraInstance", true)
Dust_597.Enabled=true
Dust_597.Rate=45
Dust_597.Lifetime=nr(0.9166666865348816,1)
Dust_597.Speed=nr(105.65476989746094,148.0767822265625)
Dust_597.Rotation=nr(-360,360)
Dust_597.RotSpeed=nr(-29.524497985839844,29.524497985839844)
Dust_597.Size=ns({nsk(0.000000,0.000000,8.004149),nsk(0.100000,2.567738,8.004149),nsk(0.200000,4.993966,8.004149),nsk(0.300000,7.261739,8.004149),nsk(0.400000,9.350168,8.004149),nsk(0.500000,11.233012,8.004149),nsk(0.600000,12.876577,8.004149),nsk(0.700000,14.236668,8.004149),nsk(0.800000,15.254614,8.004149),nsk(0.900000,15.856646,8.004149),nsk(1.000000,16.008299,8.004149),nsk(1.000000,16.008299,8.004149)})
Dust_597.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.499398,0.725000,0.112500),nsk(1.000000,1.000000,0.000000)})
Dust_597.Color=cs({csk(0.000000,c3(0.935852,0.229912,0.229912)),csk(1.000000,c3(0.935852,0.331799,0.331799))})
Dust_597.LightEmission=1
Dust_597.LightInfluence=0
Dust_597.Acceleration=v3(0.000000,39.620541,0.000000)
Dust_597.Drag=3.75
Dust_597.EmissionDirection=Enum.NormalId.Left
Dust_597.SpreadAngle=v2(0.000000,360.000000)
Dust_597.ZOffset=1.0010000467300415
Dust_597.Texture="rbxassetid://135597498346619"
Dust_597.LockedToPart=true
Dust_597.Orientation=Enum.ParticleOrientation.FacingCamera
Dust_597.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dust_597.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dust_597.FlipbookFramerate=nr(0.9841499328613281,0.9841499328613281)
Dust_597.FlipbookStartRandom=false
Dust_597.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Dust_597.Brightness=0.15000000596046448



local Dust_598=i("ParticleEmitter", Air_594)
Dust_598.Name="Dust"
Dust_598:SetAttribute("AuraInstance", true)
Dust_598.Enabled=true
Dust_598.Rate=33
Dust_598.Lifetime=nr(0.9166666865348816,1)
Dust_598.Speed=nr(105.65476989746094,148.0767822265625)
Dust_598.Rotation=nr(-360,360)
Dust_598.RotSpeed=nr(-29.524497985839844,29.524497985839844)
Dust_598.Size=ns({nsk(0.000000,0.000000,8.004149),nsk(0.100000,2.567738,8.004149),nsk(0.200000,4.993966,8.004149),nsk(0.300000,7.261739,8.004149),nsk(0.400000,9.350168,8.004149),nsk(0.500000,11.233012,8.004149),nsk(0.600000,12.876577,8.004149),nsk(0.700000,14.236668,8.004149),nsk(0.800000,15.254614,8.004149),nsk(0.900000,15.856646,8.004149),nsk(1.000000,16.008299,8.004149),nsk(1.000000,16.008299,8.004149)})
Dust_598.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.619735,0.882353,0.018382),nsk(1.000000,1.000000,0.000000)})
Dust_598.Color=cs({csk(0.000000,c3(0.935852,0.229912,0.229912)),csk(1.000000,c3(0.935852,0.331799,0.331799))})
Dust_598.LightEmission=-4
Dust_598.LightInfluence=0
Dust_598.Acceleration=v3(0.000000,39.620541,0.000000)
Dust_598.Drag=3.75
Dust_598.EmissionDirection=Enum.NormalId.Left
Dust_598.SpreadAngle=v2(0.000000,360.000000)
Dust_598.ZOffset=1.100000023841858
Dust_598.Texture="rbxassetid://122095002207836"
Dust_598.LockedToPart=true
Dust_598.Orientation=Enum.ParticleOrientation.FacingCamera
Dust_598.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dust_598.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dust_598.FlipbookFramerate=nr(0.9841499328613281,0.9841499328613281)
Dust_598.FlipbookStartRandom=false
Dust_598.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Dust_598.Brightness=0.30000001192092896



local Burst_599=i("ParticleEmitter", Air_594)
Burst_599.Name="Burst"
Burst_599:SetAttribute("AuraInstance", true)
Burst_599.Enabled=true
Burst_599.Rate=45
Burst_599.Lifetime=nr(0.9166666865348816,1)
Burst_599.Speed=nr(109.14749908447266,160.0830078125)
Burst_599.Rotation=nr(-360,360)
Burst_599.RotSpeed=nr(-29.524497985839844,29.524497985839844)
Burst_599.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.440962,0.000000),nsk(0.200000,2.144956,0.000000),nsk(0.300000,4.981863,0.000000),nsk(0.400000,8.738126,0.000000),nsk(0.500000,13.250609,0.000000),nsk(0.600000,18.398676,0.000000),nsk(0.700000,24.091337,0.000000),nsk(0.800000,30.258196,0.000000),nsk(0.900000,36.843494,0.000000),nsk(1.000000,43.802128,0.000000),nsk(1.000000,43.802128,0.000000)})
Burst_599.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.607702,0.631250,0.112500),nsk(1.000000,1.000000,0.000000)})
Burst_599.Color=cs({csk(0.000000,c3(0.937255,0.239827,0.239827)),csk(1.000000,c3(0.937255,0.239827,0.239827))})
Burst_599.LightEmission=1
Burst_599.LightInfluence=0
Burst_599.Acceleration=v3(0.000000,13.544212,0.000000)
Burst_599.Drag=4.5
Burst_599.EmissionDirection=Enum.NormalId.Left
Burst_599.SpreadAngle=v2(0.000000,360.000000)
Burst_599.ZOffset=1
Burst_599.Texture="rbxassetid://99993683933857"
Burst_599.LockedToPart=true
Burst_599.Orientation=Enum.ParticleOrientation.FacingCamera
Burst_599.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Burst_599.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Burst_599.FlipbookFramerate=nr(0.9841499328613281,0.9841499328613281)
Burst_599.FlipbookStartRandom=false
Burst_599.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Burst_599.Brightness=15



local Burst_600=i("ParticleEmitter", Air_594)
Burst_600.Name="Burst"
Burst_600:SetAttribute("AuraInstance", true)
Burst_600.Enabled=true
Burst_600.Rate=16.5
Burst_600.Lifetime=nr(1.8333333730697632,2)
Burst_600.Speed=nr(54.57374954223633,80.04150390625)
Burst_600.Rotation=nr(-360,360)
Burst_600.RotSpeed=nr(-14.762248992919922,14.762248992919922)
Burst_600.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.440962,0.000000),nsk(0.200000,2.144956,0.000000),nsk(0.300000,4.981863,0.000000),nsk(0.400000,8.738126,0.000000),nsk(0.500000,13.250609,0.000000),nsk(0.600000,18.398676,0.000000),nsk(0.700000,24.091337,0.000000),nsk(0.800000,30.258196,0.000000),nsk(0.900000,36.843494,0.000000),nsk(1.000000,43.802128,0.000000),nsk(1.000000,43.802128,0.000000)})
Burst_600.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.695548,0.770588,0.229412),nsk(1.000000,1.000000,0.000000)})
Burst_600.Color=cs({csk(0.000000,c3(0.935852,0.320479,0.320479)),csk(1.000000,c3(0.935852,0.320479,0.320479))})
Burst_600.LightEmission=-1
Burst_600.LightInfluence=0
Burst_600.Acceleration=v3(0.000000,6.339286,0.000000)
Burst_600.Drag=1.5
Burst_600.EmissionDirection=Enum.NormalId.Left
Burst_600.SpreadAngle=v2(0.000000,360.000000)
Burst_600.ZOffset=1
Burst_600.Texture="rbxassetid://15333819074"
Burst_600.LockedToPart=true
Burst_600.Orientation=Enum.ParticleOrientation.FacingCamera
Burst_600.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Burst_600.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Burst_600.FlipbookFramerate=nr(0.49207496643066406,0.49207496643066406)
Burst_600.FlipbookStartRandom=false
Burst_600.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Burst_600.Brightness=0.05000000074505806



local Dust_601=i("ParticleEmitter", Air_594)
Dust_601.Name="Dust"
Dust_601:SetAttribute("AuraInstance", true)
Dust_601.Enabled=true
Dust_601.Rate=45
Dust_601.Lifetime=nr(0.9166666865348816,1)
Dust_601.Speed=nr(94.5,126)
Dust_601.Rotation=nr(-360,360)
Dust_601.RotSpeed=nr(-29.524497985839844,29.524497985839844)
Dust_601.Size=ns({nsk(0.000000,12.600000,0.000000),nsk(1.000000,12.600000,0.000000)})
Dust_601.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.499398,0.725000,0.112500),nsk(1.000000,1.000000,0.000000)})
Dust_601.Color=cs({csk(0.000000,c3(0.935852,0.229912,0.229912)),csk(1.000000,c3(0.937255,0.369239,0.369239))})
Dust_601.LightEmission=1
Dust_601.LightInfluence=0
Dust_601.Acceleration=v3(0.000000,8.908987,0.000000)
Dust_601.Drag=3.75
Dust_601.EmissionDirection=Enum.NormalId.Left
Dust_601.SpreadAngle=v2(0.000000,360.000000)
Dust_601.ZOffset=1.0010000467300415
Dust_601.Texture="rbxassetid://122095002207836"
Dust_601.LockedToPart=true
Dust_601.Orientation=Enum.ParticleOrientation.FacingCamera
Dust_601.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dust_601.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dust_601.FlipbookFramerate=nr(0.9841499328613281,0.9841499328613281)
Dust_601.FlipbookStartRandom=false
Dust_601.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Dust_601.Brightness=1.5



local Dust_602=i("ParticleEmitter", Air_594)
Dust_602.Name="Dust"
Dust_602:SetAttribute("AuraInstance", true)
Dust_602.Enabled=true
Dust_602.Rate=45
Dust_602.Lifetime=nr(0.9166666865348816,1)
Dust_602.Speed=nr(94.5,126)
Dust_602.Rotation=nr(-360,360)
Dust_602.RotSpeed=nr(-29.524497985839844,29.524497985839844)
Dust_602.Size=ns({nsk(0.000000,12.600000,0.000000),nsk(1.000000,12.600000,0.000000)})
Dust_602.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.295102,1.000000,0.000000),nsk(0.499398,0.725000,0.112500),nsk(1.000000,1.000000,0.000000)})
Dust_602.Color=cs({csk(0.000000,c3(0.935852,0.229912,0.229912)),csk(1.000000,c3(0.935852,0.331799,0.331799))})
Dust_602.LightEmission=-6
Dust_602.LightInfluence=0
Dust_602.Acceleration=v3(0.000000,8.908987,0.000000)
Dust_602.Drag=3.75
Dust_602.EmissionDirection=Enum.NormalId.Left
Dust_602.SpreadAngle=v2(0.000000,360.000000)
Dust_602.ZOffset=0.8999999761581421
Dust_602.Texture="rbxassetid://122095002207836"
Dust_602.LockedToPart=true
Dust_602.Orientation=Enum.ParticleOrientation.FacingCamera
Dust_602.FlipbookLayout=Enum.ParticleFlipbookLayout.None
Dust_602.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Dust_602.FlipbookFramerate=nr(0.9841499328613281,0.9841499328613281)
Dust_602.FlipbookStartRandom=false
Dust_602.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Dust_602.Brightness=2.5



local Wind_603=i("ParticleEmitter", Ground_583)
Wind_603.Name="Wind"
Wind_603:SetAttribute("AuraInstance", true)
Wind_603.Enabled=true
Wind_603.Rate=12
Wind_603.Lifetime=nr(1,3)
Wind_603.Speed=nr(-3,-3)
Wind_603.Rotation=nr(-57,360)
Wind_603.RotSpeed=nr(-360,360)
Wind_603.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,78.805161,0.000000)})
Wind_603.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494585,0.762500,0.000000),nsk(1.000000,1.000000,0.000000)})
Wind_603.Color=cs({csk(0.000000,c3(0.756863,0.175895,0.175895)),csk(1.000000,c3(0.756863,0.175895,0.175895))})
Wind_603.LightEmission=1
Wind_603.LightInfluence=0
Wind_603.Acceleration=v3(0.000000,0.000000,0.000000)
Wind_603.Drag=0
Wind_603.EmissionDirection=Enum.NormalId.Top
Wind_603.SpreadAngle=v2(0.000100,0.000100)
Wind_603.ZOffset=0.003000000026077032
Wind_603.Texture="rbxassetid://15124481454"
Wind_603.LockedToPart=true
Wind_603.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Wind_603.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Wind_603.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Wind_603.FlipbookFramerate=nr(1,1)
Wind_603.FlipbookStartRandom=false
Wind_603.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Wind_603.Brightness=0.10000000149011612



local Wind_604=i("ParticleEmitter", Ground_583)
Wind_604.Name="Wind"
Wind_604:SetAttribute("AuraInstance", true)
Wind_604.Enabled=true
Wind_604.Rate=12
Wind_604.Lifetime=nr(1,3)
Wind_604.Speed=nr(2.549999952316284,2.549999952316284)
Wind_604.Rotation=nr(-57,360)
Wind_604.RotSpeed=nr(-360,360)
Wind_604.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,66.984390,0.000000)})
Wind_604.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.494585,0.762500,0.000000),nsk(1.000000,1.000000,0.000000)})
Wind_604.Color=cs({csk(0.000000,c3(0.756863,0.175895,0.175895)),csk(1.000000,c3(0.756863,0.175895,0.175895))})
Wind_604.LightEmission=-1
Wind_604.LightInfluence=0
Wind_604.Acceleration=v3(0.000000,0.000000,0.000000)
Wind_604.Drag=0
Wind_604.EmissionDirection=Enum.NormalId.Top
Wind_604.SpreadAngle=v2(12.000000,12.000000)
Wind_604.ZOffset=0.004000000189989805
Wind_604.Texture="rbxassetid://15124481454"
Wind_604.LockedToPart=true
Wind_604.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Wind_604.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Wind_604.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Wind_604.FlipbookFramerate=nr(1,1)
Wind_604.FlipbookStartRandom=false
Wind_604.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Wind_604.Brightness=0



local PointLight_605=i("PointLight", Ground_583)
PointLight_605.Name="PointLight"
PointLight_605:SetAttribute("AuraInstance", true)



local PointLight_606=i("PointLight", Ground_583)
PointLight_606.Name="PointLight"
PointLight_606:SetAttribute("AuraInstance", true)



local stillskibidi3_607=i("ParticleEmitter", Ground_583)
stillskibidi3_607.Name="stillskibidi3"
stillskibidi3_607:SetAttribute("AuraInstance", true)
stillskibidi3_607.Enabled=true
stillskibidi3_607.Rate=5
stillskibidi3_607.Lifetime=nr(1,1.2999999523162842)
stillskibidi3_607.Speed=nr(-3.75,-3.75)
stillskibidi3_607.Rotation=nr(-1000,1000)
stillskibidi3_607.RotSpeed=nr(0,0)
stillskibidi3_607.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,49.272171,0.000000)})
stillskibidi3_607.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
stillskibidi3_607.Color=cs({csk(0.000000,c3(0.756863,0.328836,0.328836)),csk(1.000000,c3(0.756863,0.238640,0.238640))})
stillskibidi3_607.LightEmission=1
stillskibidi3_607.LightInfluence=0
stillskibidi3_607.Acceleration=v3(0.000000,0.000000,0.000000)
stillskibidi3_607.Drag=0
stillskibidi3_607.EmissionDirection=Enum.NormalId.Top
stillskibidi3_607.SpreadAngle=v2(0.000100,0.000100)
stillskibidi3_607.ZOffset=0.003000000026077032
stillskibidi3_607.Texture="rbxassetid://71358984643933"
stillskibidi3_607.LockedToPart=true
stillskibidi3_607.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
stillskibidi3_607.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stillskibidi3_607.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stillskibidi3_607.FlipbookFramerate=nr(1,1)
stillskibidi3_607.FlipbookStartRandom=false
stillskibidi3_607.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
stillskibidi3_607.Brightness=2



local stillskibidi3_608=i("ParticleEmitter", Ground_583)
stillskibidi3_608.Name="stillskibidi3"
stillskibidi3_608:SetAttribute("AuraInstance", true)
stillskibidi3_608.Enabled=true
stillskibidi3_608.Rate=5
stillskibidi3_608.Lifetime=nr(1,1.2999999523162842)
stillskibidi3_608.Speed=nr(-4.6875,-4.6875)
stillskibidi3_608.Rotation=nr(-1000,1000)
stillskibidi3_608.RotSpeed=nr(0,0)
stillskibidi3_608.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,61.590214,0.000000)})
stillskibidi3_608.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
stillskibidi3_608.Color=cs({csk(0.000000,c3(0.756863,0.328836,0.328836)),csk(1.000000,c3(0.756863,0.238640,0.238640))})
stillskibidi3_608.LightEmission=0
stillskibidi3_608.LightInfluence=0
stillskibidi3_608.Acceleration=v3(0.000000,0.000000,0.000000)
stillskibidi3_608.Drag=0
stillskibidi3_608.EmissionDirection=Enum.NormalId.Top
stillskibidi3_608.SpreadAngle=v2(0.000100,0.000100)
stillskibidi3_608.ZOffset=0.029999999329447746
stillskibidi3_608.Texture="rbxassetid://71358984643933"
stillskibidi3_608.LockedToPart=true
stillskibidi3_608.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
stillskibidi3_608.FlipbookLayout=Enum.ParticleFlipbookLayout.None
stillskibidi3_608.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
stillskibidi3_608.FlipbookFramerate=nr(1,1)
stillskibidi3_608.FlipbookStartRandom=false
stillskibidi3_608.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
stillskibidi3_608.Brightness=0



local Bursty_609=i("ParticleEmitter", Ground_583)
Bursty_609.Name="Bursty"
Bursty_609:SetAttribute("AuraInstance", true)
Bursty_609.Enabled=true
Bursty_609.Rate=5
Bursty_609.Lifetime=nr(1,1.2999999523162842)
Bursty_609.Speed=nr(-3.5999999046325684,-3.5999999046325684)
Bursty_609.Rotation=nr(-1000,1000)
Bursty_609.RotSpeed=nr(0,0)
Bursty_609.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,72.743225,0.000000)})
Bursty_609.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Bursty_609.Color=cs({csk(0.000000,c3(0.756863,0.206944,0.206944)),csk(1.000000,c3(0.756863,0.238316,0.238316))})
Bursty_609.LightEmission=1
Bursty_609.LightInfluence=0
Bursty_609.Acceleration=v3(0.000000,0.000000,0.000000)
Bursty_609.Drag=0
Bursty_609.EmissionDirection=Enum.NormalId.Top
Bursty_609.SpreadAngle=v2(0.000100,0.000100)
Bursty_609.ZOffset=0.003000000026077032
Bursty_609.Texture="rbxassetid://91002536716723"
Bursty_609.LockedToPart=true
Bursty_609.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Bursty_609.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Bursty_609.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Bursty_609.FlipbookFramerate=nr(1,1)
Bursty_609.FlipbookStartRandom=false
Bursty_609.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Bursty_609.Brightness=15



local Bursty_610=i("ParticleEmitter", Ground_583)
Bursty_610.Name="Bursty"
Bursty_610:SetAttribute("AuraInstance", true)
Bursty_610.Enabled=true
Bursty_610.Rate=3
Bursty_610.Lifetime=nr(1,1.2999999523162842)
Bursty_610.Speed=nr(-3.5999999046325684,-3.5999999046325684)
Bursty_610.Rotation=nr(-1000,1000)
Bursty_610.RotSpeed=nr(0,0)
Bursty_610.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,72.743225,0.000000)})
Bursty_610.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501566,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Bursty_610.Color=cs({csk(0.000000,c3(0.756863,0.206944,0.206944)),csk(1.000000,c3(0.756863,0.238316,0.238316))})
Bursty_610.LightEmission=1
Bursty_610.LightInfluence=0
Bursty_610.Acceleration=v3(0.000000,0.000000,0.000000)
Bursty_610.Drag=0
Bursty_610.EmissionDirection=Enum.NormalId.Top
Bursty_610.SpreadAngle=v2(0.000100,0.000100)
Bursty_610.ZOffset=0.003000000026077032
Bursty_610.Texture="http://www.roblox.com/asset/?id=13712002536"
Bursty_610.LockedToPart=true
Bursty_610.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
Bursty_610.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
Bursty_610.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
Bursty_610.FlipbookFramerate=nr(1,1)
Bursty_610.FlipbookStartRandom=false
Bursty_610.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Bursty_610.Brightness=20




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