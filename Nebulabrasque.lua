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
local Name="Nebulabrasque"


function Nebulabrasque()
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

local floor_119=i("Attachment", Floor)
floor_119.Name="floor"
floor_119:SetAttribute("AuraInstance", true)
floor_119.Visible=false
floor_119.CFrame=cf(0,-2,0,1,0,0,0,1,0,0,0,1)



local ParticleEmitter_120=i("ParticleEmitter", floor_119)
ParticleEmitter_120.Name="ParticleEmitter"
ParticleEmitter_120:SetAttribute("AuraInstance", true)
ParticleEmitter_120.Enabled=true
ParticleEmitter_120.Rate=2
ParticleEmitter_120.Lifetime=nr(1,1)
ParticleEmitter_120.Speed=nr(2.808000087738037,2.808000087738037)
ParticleEmitter_120.Rotation=nr(-360,3609)
ParticleEmitter_120.RotSpeed=nr(0,0)
ParticleEmitter_120.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,42.120003,0.000000)})
ParticleEmitter_120.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.600000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_120.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.546713,c3(0.376471,0.498039,0.658824)),csk(1.000000,c3(0.372549,0.498039,0.647059))})
ParticleEmitter_120.LightEmission=0
ParticleEmitter_120.LightInfluence=0
ParticleEmitter_120.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_120.Drag=0
ParticleEmitter_120.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_120.SpreadAngle=v2(3.000000,3.000000)
ParticleEmitter_120.ZOffset=0
ParticleEmitter_120.Texture="rbxassetid://17492035906"
ParticleEmitter_120.LockedToPart=true
ParticleEmitter_120.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_120.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_120.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_120.FlipbookFramerate=nr(1,1)
ParticleEmitter_120.FlipbookStartRandom=false
ParticleEmitter_120.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_120.Brightness=4



local ParticleEmitter_121=i("ParticleEmitter", floor_119)
ParticleEmitter_121.Name="ParticleEmitter"
ParticleEmitter_121:SetAttribute("AuraInstance", true)
ParticleEmitter_121.Enabled=true
ParticleEmitter_121.Rate=2
ParticleEmitter_121.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_121.Speed=nr(2.808000087738037,2.808000087738037)
ParticleEmitter_121.Rotation=nr(-360,3609)
ParticleEmitter_121.RotSpeed=nr(60,60)
ParticleEmitter_121.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,42.120003,0.000000)})
ParticleEmitter_121.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_121.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_121.LightEmission=0
ParticleEmitter_121.LightInfluence=0
ParticleEmitter_121.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_121.Drag=0
ParticleEmitter_121.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_121.SpreadAngle=v2(3.000000,3.000000)
ParticleEmitter_121.ZOffset=0
ParticleEmitter_121.Texture="rbxassetid://18453513096"
ParticleEmitter_121.LockedToPart=true
ParticleEmitter_121.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_121.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_121.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_121.FlipbookFramerate=nr(1,1)
ParticleEmitter_121.FlipbookStartRandom=false
ParticleEmitter_121.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_121.Brightness=11



local ParticleEmitter_122=i("ParticleEmitter", floor_119)
ParticleEmitter_122.Name="ParticleEmitter"
ParticleEmitter_122:SetAttribute("AuraInstance", true)
ParticleEmitter_122.Enabled=true
ParticleEmitter_122.Rate=1.600000023841858
ParticleEmitter_122.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_122.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_122.Rotation=nr(-360,3609)
ParticleEmitter_122.RotSpeed=nr(0,0)
ParticleEmitter_122.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,51.980072,0.000000)})
ParticleEmitter_122.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_122.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_122.LightEmission=0
ParticleEmitter_122.LightInfluence=0
ParticleEmitter_122.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_122.Drag=0
ParticleEmitter_122.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_122.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_122.ZOffset=0
ParticleEmitter_122.Texture="rbxassetid://94909652598511"
ParticleEmitter_122.LockedToPart=true
ParticleEmitter_122.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_122.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_122.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_122.FlipbookFramerate=nr(1,1)
ParticleEmitter_122.FlipbookStartRandom=false
ParticleEmitter_122.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_122.Brightness=5



local ParticleEmitter_123=i("ParticleEmitter", floor_119)
ParticleEmitter_123.Name="ParticleEmitter"
ParticleEmitter_123:SetAttribute("AuraInstance", true)
ParticleEmitter_123.Enabled=true
ParticleEmitter_123.Rate=2
ParticleEmitter_123.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_123.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_123.Rotation=nr(-360,3609)
ParticleEmitter_123.RotSpeed=nr(0,0)
ParticleEmitter_123.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,23.558489,0.000000)})
ParticleEmitter_123.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_123.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_123.LightEmission=0
ParticleEmitter_123.LightInfluence=0
ParticleEmitter_123.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_123.Drag=0
ParticleEmitter_123.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_123.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_123.ZOffset=0.0010000000474974513
ParticleEmitter_123.Texture="rbxassetid://14792305846"
ParticleEmitter_123.LockedToPart=true
ParticleEmitter_123.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_123.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_123.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_123.FlipbookFramerate=nr(1,1)
ParticleEmitter_123.FlipbookStartRandom=false
ParticleEmitter_123.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_123.Brightness=5



local ParticleEmitter_124=i("ParticleEmitter", floor_119)
ParticleEmitter_124.Name="ParticleEmitter"
ParticleEmitter_124:SetAttribute("AuraInstance", true)
ParticleEmitter_124.Enabled=true
ParticleEmitter_124.Rate=2
ParticleEmitter_124.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_124.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_124.Rotation=nr(-360,3609)
ParticleEmitter_124.RotSpeed=nr(0,0)
ParticleEmitter_124.Size=ns({nsk(0.000000,2.864159,0.000000),nsk(1.000000,42.120003,0.000000)})
ParticleEmitter_124.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_124.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_124.LightEmission=0
ParticleEmitter_124.LightInfluence=0
ParticleEmitter_124.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_124.Drag=0
ParticleEmitter_124.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_124.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_124.ZOffset=0.0020000000949949026
ParticleEmitter_124.Texture="rbxassetid://14049993216"
ParticleEmitter_124.LockedToPart=true
ParticleEmitter_124.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_124.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_124.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_124.FlipbookFramerate=nr(1,1)
ParticleEmitter_124.FlipbookStartRandom=false
ParticleEmitter_124.Squash=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_124.Brightness=2



local ParticleEmitter_125=i("ParticleEmitter", floor_119)
ParticleEmitter_125.Name="ParticleEmitter"
ParticleEmitter_125:SetAttribute("AuraInstance", true)
ParticleEmitter_125.Enabled=true
ParticleEmitter_125.Rate=3
ParticleEmitter_125.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_125.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_125.Rotation=nr(-360,3609)
ParticleEmitter_125.RotSpeed=nr(-9,9)
ParticleEmitter_125.Size=ns({nsk(0.000000,17.087999,0.000000),nsk(1.000000,40.708595,0.000000)})
ParticleEmitter_125.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_125.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_125.LightEmission=1
ParticleEmitter_125.LightInfluence=0
ParticleEmitter_125.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_125.Drag=0
ParticleEmitter_125.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_125.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_125.ZOffset=12
ParticleEmitter_125.Texture="rbxassetid://15502029648"
ParticleEmitter_125.LockedToPart=true
ParticleEmitter_125.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_125.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_125.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_125.FlipbookFramerate=nr(1,1)
ParticleEmitter_125.FlipbookStartRandom=false
ParticleEmitter_125.Squash=ns({nsk(0.000000,0.400000,0.000000),nsk(1.000000,0.400000,0.000000)})
ParticleEmitter_125.Brightness=0.029999999329447746



local ParticleEmitter_126=i("ParticleEmitter", floor_119)
ParticleEmitter_126.Name="ParticleEmitter"
ParticleEmitter_126:SetAttribute("AuraInstance", true)
ParticleEmitter_126.Enabled=true
ParticleEmitter_126.Rate=2.5
ParticleEmitter_126.Lifetime=nr(0.8700000047683716,0.8700000047683716)
ParticleEmitter_126.Speed=nr(0.0018000000854954123,0.0018000000854954123)
ParticleEmitter_126.Rotation=nr(-360,3609)
ParticleEmitter_126.RotSpeed=nr(20,50)
ParticleEmitter_126.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,50.300968,0.000000)})
ParticleEmitter_126.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502114,0.456250,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_126.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_126.LightEmission=1
ParticleEmitter_126.LightInfluence=0
ParticleEmitter_126.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_126.Drag=0
ParticleEmitter_126.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_126.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_126.ZOffset=0.008999999612569809
ParticleEmitter_126.Texture="rbxassetid://120909577823316"
ParticleEmitter_126.LockedToPart=true
ParticleEmitter_126.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_126.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_126.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_126.FlipbookFramerate=nr(1,1)
ParticleEmitter_126.FlipbookStartRandom=false
ParticleEmitter_126.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_126.Brightness=5



local ParticleEmitter_127=i("ParticleEmitter", floor_119)
ParticleEmitter_127.Name="ParticleEmitter"
ParticleEmitter_127:SetAttribute("AuraInstance", true)
ParticleEmitter_127.Enabled=true
ParticleEmitter_127.Rate=2
ParticleEmitter_127.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_127.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_127.Rotation=nr(-360,3609)
ParticleEmitter_127.RotSpeed=nr(0,0)
ParticleEmitter_127.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,31.549335,0.000000)})
ParticleEmitter_127.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_127.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_127.LightEmission=1
ParticleEmitter_127.LightInfluence=0
ParticleEmitter_127.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_127.Drag=0
ParticleEmitter_127.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_127.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_127.ZOffset=-0.0010000000474974513
ParticleEmitter_127.Texture="rbxassetid://120835870925731"
ParticleEmitter_127.LockedToPart=true
ParticleEmitter_127.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_127.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_127.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_127.FlipbookFramerate=nr(1,1)
ParticleEmitter_127.FlipbookStartRandom=false
ParticleEmitter_127.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_127.Brightness=1



local ParticleEmitter_128=i("ParticleEmitter", floor_119)
ParticleEmitter_128.Name="ParticleEmitter"
ParticleEmitter_128:SetAttribute("AuraInstance", true)
ParticleEmitter_128.Enabled=true
ParticleEmitter_128.Rate=4
ParticleEmitter_128.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_128.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_128.Rotation=nr(-360,3609)
ParticleEmitter_128.RotSpeed=nr(-9,9)
ParticleEmitter_128.Size=ns({nsk(0.000000,17.049601,0.000000),nsk(1.000000,43.199997,0.000000)})
ParticleEmitter_128.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_128.Color=cs({csk(0.000000,c3(0.125490,0.168627,0.219608)),csk(0.434256,c3(0.125490,0.166999,0.223950)),csk(0.685121,c3(0.125490,0.149318,0.271101)),csk(1.000000,c3(0.125490,0.145098,0.282353))})
ParticleEmitter_128.LightEmission=0
ParticleEmitter_128.LightInfluence=0
ParticleEmitter_128.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_128.Drag=0
ParticleEmitter_128.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_128.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_128.ZOffset=-0.0020000000949949026
ParticleEmitter_128.Texture="rbxassetid://13366434456"
ParticleEmitter_128.LockedToPart=true
ParticleEmitter_128.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_128.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_128.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_128.FlipbookFramerate=nr(1,1)
ParticleEmitter_128.FlipbookStartRandom=false
ParticleEmitter_128.Squash=ns({nsk(0.000000,-0.412500,0.000000),nsk(1.000000,0.262500,0.000000)})
ParticleEmitter_128.Brightness=1



local ParticleEmitter_129=i("ParticleEmitter", floor_119)
ParticleEmitter_129.Name="ParticleEmitter"
ParticleEmitter_129:SetAttribute("AuraInstance", true)
ParticleEmitter_129.Enabled=true
ParticleEmitter_129.Rate=5
ParticleEmitter_129.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_129.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_129.Rotation=nr(-360,3609)
ParticleEmitter_129.RotSpeed=nr(-9,9)
ParticleEmitter_129.Size=ns({nsk(0.000000,17.049601,0.000000),nsk(1.000000,43.199997,0.000000)})
ParticleEmitter_129.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_129.Color=cs({csk(0.000000,c3(0.129412,0.172549,0.227451)),csk(0.295848,c3(0.130192,0.172705,0.231820)),csk(0.685121,c3(0.146290,0.175925,0.321971)),csk(1.000000,c3(0.149020,0.176471,0.337255))})
ParticleEmitter_129.LightEmission=-1
ParticleEmitter_129.LightInfluence=0
ParticleEmitter_129.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_129.Drag=0
ParticleEmitter_129.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_129.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_129.ZOffset=0
ParticleEmitter_129.Texture="rbxassetid://13366434456"
ParticleEmitter_129.LockedToPart=true
ParticleEmitter_129.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_129.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_129.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_129.FlipbookFramerate=nr(1,1)
ParticleEmitter_129.FlipbookStartRandom=false
ParticleEmitter_129.Squash=ns({nsk(0.000000,-0.412500,0.000000),nsk(1.000000,0.262500,0.000000)})
ParticleEmitter_129.Brightness=1



local ParticleEmitter_130=i("ParticleEmitter", floor_119)
ParticleEmitter_130.Name="ParticleEmitter"
ParticleEmitter_130:SetAttribute("AuraInstance", true)
ParticleEmitter_130.Enabled=true
ParticleEmitter_130.Rate=3.009999990463257
ParticleEmitter_130.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_130.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_130.Rotation=nr(-360,3609)
ParticleEmitter_130.RotSpeed=nr(-9,9)
ParticleEmitter_130.Size=ns({nsk(0.000000,4.597083,0.000000),nsk(1.000000,17.369331,0.000000)})
ParticleEmitter_130.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_130.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_130.LightEmission=1
ParticleEmitter_130.LightInfluence=0
ParticleEmitter_130.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_130.Drag=0
ParticleEmitter_130.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_130.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_130.ZOffset=0.004000000189989805
ParticleEmitter_130.Texture="rbxassetid://70982449101680"
ParticleEmitter_130.LockedToPart=true
ParticleEmitter_130.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_130.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_130.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_130.FlipbookFramerate=nr(1,1)
ParticleEmitter_130.FlipbookStartRandom=false
ParticleEmitter_130.Squash=ns({nsk(0.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
ParticleEmitter_130.Brightness=1



local ParticleEmitter_131=i("ParticleEmitter", floor_119)
ParticleEmitter_131.Name="ParticleEmitter"
ParticleEmitter_131:SetAttribute("AuraInstance", true)
ParticleEmitter_131.Enabled=true
ParticleEmitter_131.Rate=10
ParticleEmitter_131.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_131.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_131.Rotation=nr(-360,3609)
ParticleEmitter_131.RotSpeed=nr(-9,9)
ParticleEmitter_131.Size=ns({nsk(0.000000,24.679998,0.000000),nsk(1.000000,60.000000,0.000000)})
ParticleEmitter_131.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(0.743129,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_131.Color=cs({csk(0.000000,c3(0.262745,0.349020,0.454902)),csk(1.000000,c3(0.262745,0.349020,0.454902))})
ParticleEmitter_131.LightEmission=0
ParticleEmitter_131.LightInfluence=0
ParticleEmitter_131.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_131.Drag=0
ParticleEmitter_131.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_131.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_131.ZOffset=0
ParticleEmitter_131.Texture="rbxassetid://11037772334"
ParticleEmitter_131.LockedToPart=true
ParticleEmitter_131.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_131.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_131.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_131.FlipbookFramerate=nr(1,1)
ParticleEmitter_131.FlipbookStartRandom=false
ParticleEmitter_131.Squash=ns({nsk(0.000000,0.100000,0.000000),nsk(1.000000,0.100000,0.000000)})
ParticleEmitter_131.Brightness=1



local ParticleEmitter_132=i("ParticleEmitter", floor_119)
ParticleEmitter_132.Name="ParticleEmitter"
ParticleEmitter_132:SetAttribute("AuraInstance", true)
ParticleEmitter_132.Enabled=true
ParticleEmitter_132.Rate=3
ParticleEmitter_132.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_132.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_132.Rotation=nr(-360,3609)
ParticleEmitter_132.RotSpeed=nr(-9,9)
ParticleEmitter_132.Size=ns({nsk(0.000000,39.672001,0.000000),nsk(1.000000,54.000000,0.000000)})
ParticleEmitter_132.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_132.Color=cs({csk(0.000000,c3(0.137255,0.160784,0.309804)),csk(0.337370,c3(0.140783,0.168281,0.308040)),csk(0.716263,c3(0.165065,0.219881,0.295899)),csk(1.000000,c3(0.168627,0.227451,0.294118))})
ParticleEmitter_132.LightEmission=-0.4000000059604645
ParticleEmitter_132.LightInfluence=0
ParticleEmitter_132.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_132.Drag=0
ParticleEmitter_132.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_132.ZOffset=0
ParticleEmitter_132.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_132.Texture="rbxassetid://11037772334"
ParticleEmitter_132.LockedToPart=true
ParticleEmitter_132.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_132.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_132.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_132.FlipbookFramerate=nr(1,1)
ParticleEmitter_132.FlipbookStartRandom=false
ParticleEmitter_132.Squash=ns({nsk(0.000000,-0.412500,0.000000),nsk(1.000000,0.262500,0.000000)})
ParticleEmitter_132.Brightness=0.5



local ParticleEmitter_133=i("ParticleEmitter", floor_119)
ParticleEmitter_133.Name="ParticleEmitter"
ParticleEmitter_133:SetAttribute("AuraInstance", true)
ParticleEmitter_133.Enabled=true
ParticleEmitter_133.Rate=3
ParticleEmitter_133.Lifetime=nr(0.6000000238418579,0.6000000238418579)
ParticleEmitter_133.Speed=nr(2.1600000858306885,2.1600000858306885)
ParticleEmitter_133.Rotation=nr(-360,3609)
ParticleEmitter_133.RotSpeed=nr(0,0)
ParticleEmitter_133.Size=ns({nsk(0.000000,2.864159,0.000000),nsk(0.994266,26.763186,0.000000),nsk(1.000000,30.366701,0.000000)})
ParticleEmitter_133.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_133.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_133.LightEmission=0
ParticleEmitter_133.LightInfluence=0
ParticleEmitter_133.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_133.Drag=0
ParticleEmitter_133.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_133.SpreadAngle=v2(2.000000,2.000000)
ParticleEmitter_133.ZOffset=0.0020000000949949026
ParticleEmitter_133.Texture="rbxassetid://92353261735516"
ParticleEmitter_133.LockedToPart=true
ParticleEmitter_133.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_133.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_133.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_133.FlipbookFramerate=nr(1,1)
ParticleEmitter_133.FlipbookStartRandom=false
ParticleEmitter_133.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_133.Brightness=4



local ParticleEmitter_134=i("ParticleEmitter", floor_119)
ParticleEmitter_134.Name="ParticleEmitter"
ParticleEmitter_134:SetAttribute("AuraInstance", true)
ParticleEmitter_134.Enabled=true
ParticleEmitter_134.Rate=3
ParticleEmitter_134.Lifetime=nr(1,1)
ParticleEmitter_134.Speed=nr(0.0009000000427477062,0.0009000000427477062)
ParticleEmitter_134.Rotation=nr(-360,3609)
ParticleEmitter_134.RotSpeed=nr(0,0)
ParticleEmitter_134.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,9.610394,0.000000)})
ParticleEmitter_134.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_134.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_134.LightEmission=1
ParticleEmitter_134.LightInfluence=0
ParticleEmitter_134.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_134.Drag=0
ParticleEmitter_134.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_134.SpreadAngle=v2(1.000000,1.000000)
ParticleEmitter_134.ZOffset=0
ParticleEmitter_134.Texture="rbxassetid://11372772717"
ParticleEmitter_134.LockedToPart=true
ParticleEmitter_134.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_134.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_134.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_134.FlipbookFramerate=nr(1,1)
ParticleEmitter_134.FlipbookStartRandom=false
ParticleEmitter_134.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_134.Brightness=5



local ParticleEmitter_135=i("ParticleEmitter", floor_119)
ParticleEmitter_135.Name="ParticleEmitter"
ParticleEmitter_135:SetAttribute("AuraInstance", true)
ParticleEmitter_135.Enabled=true
ParticleEmitter_135.Rate=4
ParticleEmitter_135.Lifetime=nr(1,1)
ParticleEmitter_135.Speed=nr(8.09999942779541,8.09999942779541)
ParticleEmitter_135.Rotation=nr(-360,3609)
ParticleEmitter_135.RotSpeed=nr(300,500)
ParticleEmitter_135.Size=ns({nsk(0.000000,17.807518,0.000000),nsk(1.000000,29.613390,0.000000)})
ParticleEmitter_135.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_135.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_135.LightEmission=1
ParticleEmitter_135.LightInfluence=0
ParticleEmitter_135.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_135.Drag=1
ParticleEmitter_135.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_135.SpreadAngle=v2(12.000000,12.000000)
ParticleEmitter_135.ZOffset=0
ParticleEmitter_135.Texture="rbxassetid://14054635072"
ParticleEmitter_135.LockedToPart=true
ParticleEmitter_135.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_135.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_135.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_135.FlipbookFramerate=nr(1,1)
ParticleEmitter_135.FlipbookStartRandom=false
ParticleEmitter_135.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_135.Brightness=5



local ParticleEmitter_136=i("ParticleEmitter", floor_119)
ParticleEmitter_136.Name="ParticleEmitter"
ParticleEmitter_136:SetAttribute("AuraInstance", true)
ParticleEmitter_136.Enabled=true
ParticleEmitter_136.Rate=2
ParticleEmitter_136.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_136.Speed=nr(2.808000087738037,2.808000087738037)
ParticleEmitter_136.Rotation=nr(-360,3609)
ParticleEmitter_136.RotSpeed=nr(0,0)
ParticleEmitter_136.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,42.120003,0.000000)})
ParticleEmitter_136.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.600000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_136.Color=cs({csk(0.000000,c3(0.160784,0.184314,0.356863)),csk(1.000000,c3(0.262745,0.349020,0.454902))})
ParticleEmitter_136.LightEmission=0
ParticleEmitter_136.LightInfluence=0
ParticleEmitter_136.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_136.Drag=0
ParticleEmitter_136.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_136.SpreadAngle=v2(3.000000,3.000000)
ParticleEmitter_136.ZOffset=0
ParticleEmitter_136.Texture="rbxassetid://18765326355"
ParticleEmitter_136.LockedToPart=true
ParticleEmitter_136.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_136.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_136.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_136.FlipbookFramerate=nr(1,1)
ParticleEmitter_136.FlipbookStartRandom=false
ParticleEmitter_136.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_136.Brightness=4



local ParticleEmitter_137=i("ParticleEmitter", floor_119)
ParticleEmitter_137.Name="ParticleEmitter"
ParticleEmitter_137:SetAttribute("AuraInstance", true)
ParticleEmitter_137.Enabled=true
ParticleEmitter_137.Rate=2
ParticleEmitter_137.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_137.Speed=nr(0.18000000715255737,0.18000000715255737)
ParticleEmitter_137.Rotation=nr(-360,3609)
ParticleEmitter_137.RotSpeed=nr(0,0)
ParticleEmitter_137.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,11.584207,0.000000)})
ParticleEmitter_137.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.495243,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_137.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_137.LightEmission=0
ParticleEmitter_137.LightInfluence=0
ParticleEmitter_137.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_137.Drag=0
ParticleEmitter_137.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_137.SpreadAngle=v2(0.100000,0.100000)
ParticleEmitter_137.ZOffset=0.006000000052154064
ParticleEmitter_137.Texture="rbxassetid://18765326355"
ParticleEmitter_137.LockedToPart=true
ParticleEmitter_137.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_137.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_137.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_137.FlipbookFramerate=nr(1,1)
ParticleEmitter_137.FlipbookStartRandom=false
ParticleEmitter_137.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_137.Brightness=11



local ParticleEmitter_138=i("ParticleEmitter", floor_119)
ParticleEmitter_138.Name="ParticleEmitter"
ParticleEmitter_138:SetAttribute("AuraInstance", true)
ParticleEmitter_138.Enabled=true
ParticleEmitter_138.Rate=4
ParticleEmitter_138.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_138.Speed=nr(0.0018000000854954123,0.0018000000854954123)
ParticleEmitter_138.Rotation=nr(-360,3609)
ParticleEmitter_138.RotSpeed=nr(0,0)
ParticleEmitter_138.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,41.705345,0.592306)})
ParticleEmitter_138.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502643,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_138.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_138.LightEmission=0.800000011920929
ParticleEmitter_138.LightInfluence=0
ParticleEmitter_138.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_138.Drag=0
ParticleEmitter_138.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_138.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_138.ZOffset=7
ParticleEmitter_138.Texture="rbxassetid://6991254829"
ParticleEmitter_138.LockedToPart=true
ParticleEmitter_138.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_138.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_138.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_138.FlipbookFramerate=nr(1,1)
ParticleEmitter_138.FlipbookStartRandom=false
ParticleEmitter_138.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_138.Brightness=1



local ParticleEmitter_139=i("ParticleEmitter", floor_119)
ParticleEmitter_139.Name="ParticleEmitter"
ParticleEmitter_139:SetAttribute("AuraInstance", true)
ParticleEmitter_139.Enabled=true
ParticleEmitter_139.Rate=3
ParticleEmitter_139.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_139.Speed=nr(2.808000087738037,2.808000087738037)
ParticleEmitter_139.Rotation=nr(-360,3609)
ParticleEmitter_139.RotSpeed=nr(0,0)
ParticleEmitter_139.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,54.346443,0.000000)})
ParticleEmitter_139.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.600000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_139.Color=cs({csk(0.000000,c3(0.109804,0.125490,0.243137)),csk(1.000000,c3(0.109804,0.125490,0.243137))})
ParticleEmitter_139.LightEmission=-3
ParticleEmitter_139.LightInfluence=0
ParticleEmitter_139.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_139.Drag=0
ParticleEmitter_139.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_139.SpreadAngle=v2(3.000000,3.000000)
ParticleEmitter_139.ZOffset=0.007000000216066837
ParticleEmitter_139.Texture="rbxassetid://15846296184"
ParticleEmitter_139.LockedToPart=true
ParticleEmitter_139.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_139.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_139.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_139.FlipbookFramerate=nr(1,1)
ParticleEmitter_139.FlipbookStartRandom=false
ParticleEmitter_139.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_139.Brightness=0.5



local ParticleEmitter_140=i("ParticleEmitter", floor_119)
ParticleEmitter_140.Name="ParticleEmitter"
ParticleEmitter_140:SetAttribute("AuraInstance", true)
ParticleEmitter_140.Enabled=true
ParticleEmitter_140.Rate=6
ParticleEmitter_140.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_140.Speed=nr(0.0018000000854954123,0.0018000000854954123)
ParticleEmitter_140.Rotation=nr(-360,3609)
ParticleEmitter_140.RotSpeed=nr(0,0)
ParticleEmitter_140.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,37.906555,0.000000)})
ParticleEmitter_140.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502643,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_140.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_140.LightEmission=-0.009999999776482582
ParticleEmitter_140.LightInfluence=0
ParticleEmitter_140.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_140.Drag=0
ParticleEmitter_140.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_140.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_140.ZOffset=0.00800000037997961
ParticleEmitter_140.Texture="rbxassetid://17511023878"
ParticleEmitter_140.LockedToPart=true
ParticleEmitter_140.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_140.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_140.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_140.FlipbookFramerate=nr(1,1)
ParticleEmitter_140.FlipbookStartRandom=false
ParticleEmitter_140.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_140.Brightness=4



local ParticleEmitter_141=i("ParticleEmitter", floor_119)
ParticleEmitter_141.Name="ParticleEmitter"
ParticleEmitter_141:SetAttribute("AuraInstance", true)
ParticleEmitter_141.Enabled=true
ParticleEmitter_141.Rate=2
ParticleEmitter_141.Lifetime=nr(1.2999999523162842,1.2999999523162842)
ParticleEmitter_141.Speed=nr(0,0)
ParticleEmitter_141.Rotation=nr(0,0)
ParticleEmitter_141.RotSpeed=nr(0,0)
ParticleEmitter_141.Size=ns({nsk(0.000000,5.512499,0.000000),nsk(1.000000,9.000000,0.000000)})
ParticleEmitter_141.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.498943,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_141.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_141.LightEmission=0
ParticleEmitter_141.LightInfluence=0
ParticleEmitter_141.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_141.Drag=0
ParticleEmitter_141.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_141.SpreadAngle=v2(3.000000,3.000000)
ParticleEmitter_141.ZOffset=3
ParticleEmitter_141.Texture="rbxassetid://70982449101680"
ParticleEmitter_141.LockedToPart=true
ParticleEmitter_141.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_141.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_141.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_141.FlipbookFramerate=nr(1,1)
ParticleEmitter_141.FlipbookStartRandom=false
ParticleEmitter_141.Squash=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_141.Brightness=11



local Beam_142=i("Beam", floor_119)
Beam_142.Name="Beam"
Beam_142:SetAttribute("AuraInstance", true)
Beam_142.Enabled=true
Beam_142.Width0=40
Beam_142.Width1=70
Beam_142.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.496300,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_142.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.435294,0.576471,0.760784)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
Beam_142.CurveSize0=0
Beam_142.CurveSize1=0
Beam_142.FaceCamera=true
Beam_142.LightEmission=0.699999988079071
Beam_142.LightInfluence=0
Beam_142.Segments=10
Beam_142.Texture="rbxassetid://108170985018134"
Beam_142.TextureLength=0.30000001192092896
Beam_142.TextureSpeed=1
Beam_142.Brightness=0.5



local Beam_143=i("Beam", floor_119)
Beam_143.Name="Beam"
Beam_143:SetAttribute("AuraInstance", true)
Beam_143.Enabled=true
Beam_143.Width0=40
Beam_143.Width1=70
Beam_143.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.495772,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Beam_143.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.435294,0.576471,0.760784)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
Beam_143.CurveSize0=0
Beam_143.CurveSize1=0
Beam_143.FaceCamera=true
Beam_143.LightEmission=0
Beam_143.LightInfluence=0
Beam_143.Segments=10
Beam_143.Texture="rbxassetid://12823611043"
Beam_143.TextureLength=0.30000001192092896
Beam_143.TextureSpeed=1
Beam_143.Brightness=2.555000066757202



local ParticleEmitter_144=i("ParticleEmitter", floor_119)
ParticleEmitter_144.Name="ParticleEmitter"
ParticleEmitter_144:SetAttribute("AuraInstance", true)
ParticleEmitter_144.Enabled=true
ParticleEmitter_144.Rate=6
ParticleEmitter_144.Lifetime=nr(0.8700000047683716,0.8700000047683716)
ParticleEmitter_144.Speed=nr(1.7999999523162842,1.7999999523162842)
ParticleEmitter_144.Rotation=nr(-360,3609)
ParticleEmitter_144.RotSpeed=nr(20,50)
ParticleEmitter_144.Size=ns({nsk(0.000000,7.709999,0.000000),nsk(1.000000,40.117809,0.000000)})
ParticleEmitter_144.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502114,0.456250,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_144.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_144.LightEmission=1
ParticleEmitter_144.LightInfluence=0
ParticleEmitter_144.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_144.Drag=0
ParticleEmitter_144.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_144.SpreadAngle=v2(2.000000,2.000000)
ParticleEmitter_144.ZOffset=0.008999999612569809
ParticleEmitter_144.Texture="rbxassetid://95607941803183"
ParticleEmitter_144.LockedToPart=true
ParticleEmitter_144.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_144.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_144.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_144.FlipbookFramerate=nr(1,1)
ParticleEmitter_144.FlipbookStartRandom=false
ParticleEmitter_144.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_144.Brightness=5



local ParticleEmitter_145=i("ParticleEmitter", floor_119)
ParticleEmitter_145.Name="ParticleEmitter"
ParticleEmitter_145:SetAttribute("AuraInstance", true)
ParticleEmitter_145.Enabled=true
ParticleEmitter_145.Rate=6
ParticleEmitter_145.Lifetime=nr(0.4000000059604645,0.4000000059604645)
ParticleEmitter_145.Speed=nr(0.0009000000427477062,0.0009000000427477062)
ParticleEmitter_145.Rotation=nr(-360,360)
ParticleEmitter_145.RotSpeed=nr(0,0)
ParticleEmitter_145.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,16.984804,0.000000)})
ParticleEmitter_145.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_145.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_145.LightEmission=0
ParticleEmitter_145.LightInfluence=0
ParticleEmitter_145.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_145.Drag=0
ParticleEmitter_145.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_145.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_145.ZOffset=0.009999999776482582
ParticleEmitter_145.Texture="rbxassetid://17211298816"
ParticleEmitter_145.LockedToPart=true
ParticleEmitter_145.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_145.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_145.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_145.FlipbookFramerate=nr(1,1)
ParticleEmitter_145.FlipbookStartRandom=false
ParticleEmitter_145.Squash=ns({nsk(0.000000,-0.600000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_145.Brightness=22



local ParticleEmitter_146=i("ParticleEmitter", floor_119)
ParticleEmitter_146.Name="ParticleEmitter"
ParticleEmitter_146:SetAttribute("AuraInstance", true)
ParticleEmitter_146.Enabled=true
ParticleEmitter_146.Rate=2
ParticleEmitter_146.Lifetime=nr(1.399999976158142,1.399999976158142)
ParticleEmitter_146.Speed=nr(0.8999999761581421,0.8999999761581421)
ParticleEmitter_146.Rotation=nr(-360,3609)
ParticleEmitter_146.RotSpeed=nr(50,50)
ParticleEmitter_146.Size=ns({nsk(0.000000,15.788705,0.000000),nsk(1.000000,39.373333,0.000000)})
ParticleEmitter_146.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.506342,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_146.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_146.LightEmission=1
ParticleEmitter_146.LightInfluence=0
ParticleEmitter_146.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_146.Drag=0
ParticleEmitter_146.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_146.SpreadAngle=v2(1.000000,1.000000)
ParticleEmitter_146.ZOffset=0.008999999612569809
ParticleEmitter_146.Texture="rbxassetid://137972877171893"
ParticleEmitter_146.LockedToPart=true
ParticleEmitter_146.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_146.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_146.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_146.FlipbookFramerate=nr(1,1)
ParticleEmitter_146.FlipbookStartRandom=false
ParticleEmitter_146.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_146.Brightness=5



local ParticleEmitter_147=i("ParticleEmitter", floor_119)
ParticleEmitter_147.Name="ParticleEmitter"
ParticleEmitter_147:SetAttribute("AuraInstance", true)
ParticleEmitter_147.Enabled=true
ParticleEmitter_147.Rate=2.5999999046325684
ParticleEmitter_147.Lifetime=nr(0.8700000047683716,0.8700000047683716)
ParticleEmitter_147.Speed=nr(0.0018000000854954123,0.0018000000854954123)
ParticleEmitter_147.Rotation=nr(-360,3609)
ParticleEmitter_147.RotSpeed=nr(-200,-100)
ParticleEmitter_147.Size=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,36.000000,0.000000)})
ParticleEmitter_147.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502114,0.456250,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_147.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_147.LightEmission=0
ParticleEmitter_147.LightInfluence=0
ParticleEmitter_147.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_147.Drag=0
ParticleEmitter_147.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_147.SpreadAngle=v2(0.200000,0.200000)
ParticleEmitter_147.ZOffset=0.008999999612569809
ParticleEmitter_147.Texture="rbxassetid://71871649341866"
ParticleEmitter_147.LockedToPart=true
ParticleEmitter_147.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_147.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_147.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_147.FlipbookFramerate=nr(1,1)
ParticleEmitter_147.FlipbookStartRandom=false
ParticleEmitter_147.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_147.Brightness=44



local ParticleEmitter_148=i("ParticleEmitter", floor_119)
ParticleEmitter_148.Name="ParticleEmitter"
ParticleEmitter_148:SetAttribute("AuraInstance", true)
ParticleEmitter_148.Enabled=true
ParticleEmitter_148.Rate=3
ParticleEmitter_148.Lifetime=nr(2,2)
ParticleEmitter_148.Speed=nr(0.0028080001939088106,0.0028080001939088106)
ParticleEmitter_148.Rotation=nr(-360,360)
ParticleEmitter_148.RotSpeed=nr(0,0)
ParticleEmitter_148.Size=ns({nsk(0.000000,45.000000,0.000000),nsk(1.000000,45.000000,0.000000)})
ParticleEmitter_148.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_148.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_148.LightEmission=1
ParticleEmitter_148.LightInfluence=0
ParticleEmitter_148.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_148.Drag=0
ParticleEmitter_148.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_148.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_148.ZOffset=0
ParticleEmitter_148.Texture="rbxassetid://87523041579344"
ParticleEmitter_148.LockedToPart=true
ParticleEmitter_148.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_148.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_148.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_148.FlipbookFramerate=nr(1,1)
ParticleEmitter_148.FlipbookStartRandom=false
ParticleEmitter_148.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,0.200000,0.000000)})
ParticleEmitter_148.Brightness=0.08699999749660492



local ParticleEmitter_149=i("ParticleEmitter", floor_119)
ParticleEmitter_149.Name="ParticleEmitter"
ParticleEmitter_149:SetAttribute("AuraInstance", true)
ParticleEmitter_149.Enabled=true
ParticleEmitter_149.Rate=3
ParticleEmitter_149.Lifetime=nr(1,1)
ParticleEmitter_149.Speed=nr(0.0018000000854954123,0.0018000000854954123)
ParticleEmitter_149.Rotation=nr(-360,3609)
ParticleEmitter_149.RotSpeed=nr(0,0)
ParticleEmitter_149.Size=ns({nsk(0.000000,13.679998,0.000000),nsk(1.000000,24.921820,0.000000)})
ParticleEmitter_149.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.512500,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_149.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.462745,0.611765,0.807843)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_149.LightEmission=0
ParticleEmitter_149.LightInfluence=0
ParticleEmitter_149.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_149.Drag=0
ParticleEmitter_149.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_149.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_149.ZOffset=7
ParticleEmitter_149.Texture="rbxassetid://6991254829"
ParticleEmitter_149.LockedToPart=false
ParticleEmitter_149.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
ParticleEmitter_149.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_149.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_149.FlipbookFramerate=nr(1,1)
ParticleEmitter_149.FlipbookStartRandom=false
ParticleEmitter_149.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_149.Brightness=9.149999618530273



local ring_151=i("Attachment", Floor)
ring_151.Name="ring"
ring_151:SetAttribute("AuraInstance", true)
ring_151.Visible=false
ring_151.CFrame=cf(0,-0.00019140244694426656,0,1,0,0,0,1,0,0,0,1)



local Attachment_152=i("Attachment", ring_151)
Attachment_152.Name="Attachment"
Attachment_152:SetAttribute("AuraInstance", true)
Attachment_152.Visible=false
Attachment_152.CFrame=cf(0,0,-2,-1,0,0,0,1,0,0,0,-1)



local ParticleEmitter_153=i("ParticleEmitter", Attachment_152)
ParticleEmitter_153.Name="ParticleEmitter"
ParticleEmitter_153:SetAttribute("EmitCount", 0)
ParticleEmitter_153:SetAttribute("AuraInstance", true)
ParticleEmitter_153.Enabled=true
ParticleEmitter_153.Rate=2
ParticleEmitter_153.Lifetime=nr(1.5,1.5)
ParticleEmitter_153.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_153.Rotation=nr(-360,360)
ParticleEmitter_153.RotSpeed=nr(0,0)
ParticleEmitter_153.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_153.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_153.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_153.LightEmission=1
ParticleEmitter_153.LightInfluence=0
ParticleEmitter_153.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_153.Drag=0
ParticleEmitter_153.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_153.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_153.ZOffset=12
ParticleEmitter_153.Texture="rbxassetid://91167564374329"
ParticleEmitter_153.LockedToPart=true
ParticleEmitter_153.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_153.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_153.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_153.FlipbookFramerate=nr(0,0)
ParticleEmitter_153.FlipbookStartRandom=true
ParticleEmitter_153.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_153.Brightness=10



local ParticleEmitter_154=i("ParticleEmitter", Attachment_152)
ParticleEmitter_154.Name="ParticleEmitter"
ParticleEmitter_154:SetAttribute("EmitCount", 0)
ParticleEmitter_154:SetAttribute("AuraInstance", true)
ParticleEmitter_154.Enabled=true
ParticleEmitter_154.Rate=4
ParticleEmitter_154.Lifetime=nr(1.5,1.5)
ParticleEmitter_154.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_154.Rotation=nr(-360,360)
ParticleEmitter_154.RotSpeed=nr(-200,200)
ParticleEmitter_154.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_154.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_154.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_154.LightEmission=1
ParticleEmitter_154.LightInfluence=0
ParticleEmitter_154.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_154.Drag=0
ParticleEmitter_154.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_154.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_154.ZOffset=12
ParticleEmitter_154.Texture="rbxassetid://16879806460"
ParticleEmitter_154.LockedToPart=true
ParticleEmitter_154.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_154.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_154.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_154.FlipbookFramerate=nr(0,0)
ParticleEmitter_154.FlipbookStartRandom=true
ParticleEmitter_154.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_154.Brightness=10



local ParticleEmitter_155=i("ParticleEmitter", Attachment_152)
ParticleEmitter_155.Name="ParticleEmitter"
ParticleEmitter_155:SetAttribute("EmitCount", 0)
ParticleEmitter_155:SetAttribute("AuraInstance", true)
ParticleEmitter_155.Enabled=true
ParticleEmitter_155.Rate=5
ParticleEmitter_155.Lifetime=nr(1.5,1.5)
ParticleEmitter_155.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_155.Rotation=nr(-360,360)
ParticleEmitter_155.RotSpeed=nr(-100,100)
ParticleEmitter_155.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_155.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_155.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_155.LightEmission=1
ParticleEmitter_155.LightInfluence=0
ParticleEmitter_155.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_155.Drag=0
ParticleEmitter_155.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_155.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_155.ZOffset=12
ParticleEmitter_155.Texture="rbxassetid://15394198783"
ParticleEmitter_155.LockedToPart=true
ParticleEmitter_155.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_155.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_155.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_155.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_155.FlipbookStartRandom=false
ParticleEmitter_155.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_155.Brightness=5



local ParticleEmitter_156=i("ParticleEmitter", Attachment_152)
ParticleEmitter_156.Name="ParticleEmitter"
ParticleEmitter_156:SetAttribute("EmitCount", 0)
ParticleEmitter_156:SetAttribute("AuraInstance", true)
ParticleEmitter_156.Enabled=true
ParticleEmitter_156.Rate=4
ParticleEmitter_156.Lifetime=nr(1.5,1.5)
ParticleEmitter_156.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_156.Rotation=nr(270,270)
ParticleEmitter_156.RotSpeed=nr(-20,20)
ParticleEmitter_156.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_156.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_156.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_156.LightEmission=1
ParticleEmitter_156.LightInfluence=0
ParticleEmitter_156.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_156.Drag=0
ParticleEmitter_156.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_156.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_156.ZOffset=12
ParticleEmitter_156.Texture="rbxassetid://16924875355"
ParticleEmitter_156.LockedToPart=true
ParticleEmitter_156.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_156.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_156.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_156.FlipbookFramerate=nr(50,50)
ParticleEmitter_156.FlipbookStartRandom=false
ParticleEmitter_156.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_156.Brightness=5



local Attachment_157=i("Attachment", ring_151)
Attachment_157.Name="Attachment"
Attachment_157:SetAttribute("AuraInstance", true)
Attachment_157.Visible=false
Attachment_157.CFrame=cf(0,0,0,0,0,1,0,1,-0,-1,0,0)



local ParticleEmitter_158=i("ParticleEmitter", Attachment_157)
ParticleEmitter_158.Name="ParticleEmitter"
ParticleEmitter_158:SetAttribute("EmitCount", 0)
ParticleEmitter_158:SetAttribute("AuraInstance", true)
ParticleEmitter_158.Enabled=true
ParticleEmitter_158.Rate=4
ParticleEmitter_158.Lifetime=nr(1.5,1.5)
ParticleEmitter_158.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_158.Rotation=nr(270,270)
ParticleEmitter_158.RotSpeed=nr(-20,20)
ParticleEmitter_158.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_158.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_158.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_158.LightEmission=1
ParticleEmitter_158.LightInfluence=0
ParticleEmitter_158.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_158.Drag=0
ParticleEmitter_158.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_158.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_158.ZOffset=12
ParticleEmitter_158.Texture="rbxassetid://16924875355"
ParticleEmitter_158.LockedToPart=true
ParticleEmitter_158.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_158.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_158.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_158.FlipbookFramerate=nr(50,50)
ParticleEmitter_158.FlipbookStartRandom=false
ParticleEmitter_158.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_158.Brightness=5



local ParticleEmitter_159=i("ParticleEmitter", Attachment_157)
ParticleEmitter_159.Name="ParticleEmitter"
ParticleEmitter_159:SetAttribute("EmitCount", 0)
ParticleEmitter_159:SetAttribute("AuraInstance", true)
ParticleEmitter_159.Enabled=true
ParticleEmitter_159.Rate=5
ParticleEmitter_159.Lifetime=nr(1.5,1.5)
ParticleEmitter_159.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_159.Rotation=nr(-360,360)
ParticleEmitter_159.RotSpeed=nr(-100,100)
ParticleEmitter_159.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_159.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_159.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_159.LightEmission=1
ParticleEmitter_159.LightInfluence=0
ParticleEmitter_159.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_159.Drag=0
ParticleEmitter_159.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_159.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_159.ZOffset=12
ParticleEmitter_159.Texture="rbxassetid://15394198783"
ParticleEmitter_159.LockedToPart=true
ParticleEmitter_159.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_159.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_159.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_159.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_159.FlipbookStartRandom=false
ParticleEmitter_159.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_159.Brightness=5



local ParticleEmitter_160=i("ParticleEmitter", Attachment_157)
ParticleEmitter_160.Name="ParticleEmitter"
ParticleEmitter_160:SetAttribute("EmitCount", 0)
ParticleEmitter_160:SetAttribute("AuraInstance", true)
ParticleEmitter_160.Enabled=true
ParticleEmitter_160.Rate=4
ParticleEmitter_160.Lifetime=nr(1.5,1.5)
ParticleEmitter_160.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_160.Rotation=nr(-360,360)
ParticleEmitter_160.RotSpeed=nr(-200,200)
ParticleEmitter_160.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_160.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_160.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_160.LightEmission=1
ParticleEmitter_160.LightInfluence=0
ParticleEmitter_160.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_160.Drag=0
ParticleEmitter_160.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_160.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_160.ZOffset=12
ParticleEmitter_160.Texture="rbxassetid://16879806460"
ParticleEmitter_160.LockedToPart=true
ParticleEmitter_160.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_160.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_160.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_160.FlipbookFramerate=nr(0,0)
ParticleEmitter_160.FlipbookStartRandom=true
ParticleEmitter_160.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_160.Brightness=10



local ParticleEmitter_161=i("ParticleEmitter", Attachment_157)
ParticleEmitter_161.Name="ParticleEmitter"
ParticleEmitter_161:SetAttribute("EmitCount", 0)
ParticleEmitter_161:SetAttribute("AuraInstance", true)
ParticleEmitter_161.Enabled=true
ParticleEmitter_161.Rate=2
ParticleEmitter_161.Lifetime=nr(1.5,1.5)
ParticleEmitter_161.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_161.Rotation=nr(-360,360)
ParticleEmitter_161.RotSpeed=nr(0,0)
ParticleEmitter_161.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_161.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_161.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_161.LightEmission=1
ParticleEmitter_161.LightInfluence=0
ParticleEmitter_161.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_161.Drag=0
ParticleEmitter_161.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_161.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_161.ZOffset=12
ParticleEmitter_161.Texture="rbxassetid://91167564374329"
ParticleEmitter_161.LockedToPart=true
ParticleEmitter_161.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_161.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_161.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_161.FlipbookFramerate=nr(0,0)
ParticleEmitter_161.FlipbookStartRandom=true
ParticleEmitter_161.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_161.Brightness=10



local Attachment_162=i("Attachment", ring_151)
Attachment_162.Name="Attachment"
Attachment_162:SetAttribute("AuraInstance", true)
Attachment_162.Visible=false
Attachment_162.CFrame=cf(0,0,0,0,0,-1,0,1,0,1,0,0)



local ParticleEmitter_163=i("ParticleEmitter", Attachment_162)
ParticleEmitter_163.Name="ParticleEmitter"
ParticleEmitter_163:SetAttribute("EmitCount", 0)
ParticleEmitter_163:SetAttribute("AuraInstance", true)
ParticleEmitter_163.Enabled=true
ParticleEmitter_163.Rate=4
ParticleEmitter_163.Lifetime=nr(1.5,1.5)
ParticleEmitter_163.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_163.Rotation=nr(270,270)
ParticleEmitter_163.RotSpeed=nr(-20,20)
ParticleEmitter_163.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_163.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_163.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_163.LightEmission=1
ParticleEmitter_163.LightInfluence=0
ParticleEmitter_163.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_163.Drag=0
ParticleEmitter_163.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_163.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_163.ZOffset=12
ParticleEmitter_163.Texture="rbxassetid://16924875355"
ParticleEmitter_163.LockedToPart=true
ParticleEmitter_163.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_163.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_163.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_163.FlipbookFramerate=nr(50,50)
ParticleEmitter_163.FlipbookStartRandom=false
ParticleEmitter_163.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_163.Brightness=5



local ParticleEmitter_164=i("ParticleEmitter", Attachment_162)
ParticleEmitter_164.Name="ParticleEmitter"
ParticleEmitter_164:SetAttribute("EmitCount", 0)
ParticleEmitter_164:SetAttribute("AuraInstance", true)
ParticleEmitter_164.Enabled=true
ParticleEmitter_164.Rate=5
ParticleEmitter_164.Lifetime=nr(1.5,1.5)
ParticleEmitter_164.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_164.Rotation=nr(-360,360)
ParticleEmitter_164.RotSpeed=nr(-100,100)
ParticleEmitter_164.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_164.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_164.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_164.LightEmission=1
ParticleEmitter_164.LightInfluence=0
ParticleEmitter_164.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_164.Drag=0
ParticleEmitter_164.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_164.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_164.ZOffset=12
ParticleEmitter_164.Texture="rbxassetid://15394198783"
ParticleEmitter_164.LockedToPart=true
ParticleEmitter_164.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_164.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_164.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_164.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_164.FlipbookStartRandom=false
ParticleEmitter_164.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_164.Brightness=5



local ParticleEmitter_165=i("ParticleEmitter", Attachment_162)
ParticleEmitter_165.Name="ParticleEmitter"
ParticleEmitter_165:SetAttribute("EmitCount", 0)
ParticleEmitter_165:SetAttribute("AuraInstance", true)
ParticleEmitter_165.Enabled=true
ParticleEmitter_165.Rate=4
ParticleEmitter_165.Lifetime=nr(1.5,1.5)
ParticleEmitter_165.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_165.Rotation=nr(-360,360)
ParticleEmitter_165.RotSpeed=nr(-200,200)
ParticleEmitter_165.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_165.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_165.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_165.LightEmission=1
ParticleEmitter_165.LightInfluence=0
ParticleEmitter_165.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_165.Drag=0
ParticleEmitter_165.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_165.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_165.ZOffset=12
ParticleEmitter_165.Texture="rbxassetid://16879806460"
ParticleEmitter_165.LockedToPart=true
ParticleEmitter_165.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_165.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_165.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_165.FlipbookFramerate=nr(0,0)
ParticleEmitter_165.FlipbookStartRandom=true
ParticleEmitter_165.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_165.Brightness=10



local ParticleEmitter_166=i("ParticleEmitter", Attachment_162)
ParticleEmitter_166.Name="ParticleEmitter"
ParticleEmitter_166:SetAttribute("EmitCount", 0)
ParticleEmitter_166:SetAttribute("AuraInstance", true)
ParticleEmitter_166.Enabled=true
ParticleEmitter_166.Rate=2
ParticleEmitter_166.Lifetime=nr(1.5,1.5)
ParticleEmitter_166.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_166.Rotation=nr(-360,360)
ParticleEmitter_166.RotSpeed=nr(0,0)
ParticleEmitter_166.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_166.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_166.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_166.LightEmission=1
ParticleEmitter_166.LightInfluence=0
ParticleEmitter_166.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_166.Drag=0
ParticleEmitter_166.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_166.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_166.ZOffset=12
ParticleEmitter_166.Texture="rbxassetid://91167564374329"
ParticleEmitter_166.LockedToPart=true
ParticleEmitter_166.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_166.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_166.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_166.FlipbookFramerate=nr(0,0)
ParticleEmitter_166.FlipbookStartRandom=true
ParticleEmitter_166.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_166.Brightness=10



local Attachment_167=i("Attachment", ring_151)
Attachment_167.Name="Attachment"
Attachment_167:SetAttribute("AuraInstance", true)
Attachment_167.Visible=false
Attachment_167.CFrame=cf(14.560564994812012,-6.437301180994837e-07,11.483541488647461,0.7071342468261719,0,0.707079291343689,0,1,-0,-0.707079291343689,0,0.7071342468261719)



local ParticleEmitter_168=i("ParticleEmitter", Attachment_167)
ParticleEmitter_168.Name="ParticleEmitter"
ParticleEmitter_168:SetAttribute("EmitCount", 0)
ParticleEmitter_168:SetAttribute("AuraInstance", true)
ParticleEmitter_168.Enabled=true
ParticleEmitter_168.Rate=4
ParticleEmitter_168.Lifetime=nr(1.5,1.5)
ParticleEmitter_168.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_168.Rotation=nr(270,270)
ParticleEmitter_168.RotSpeed=nr(-20,20)
ParticleEmitter_168.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_168.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_168.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_168.LightEmission=1
ParticleEmitter_168.LightInfluence=0
ParticleEmitter_168.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_168.Drag=0
ParticleEmitter_168.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_168.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_168.ZOffset=12
ParticleEmitter_168.Texture="rbxassetid://16924875355"
ParticleEmitter_168.LockedToPart=true
ParticleEmitter_168.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_168.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_168.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_168.FlipbookFramerate=nr(50,50)
ParticleEmitter_168.FlipbookStartRandom=false
ParticleEmitter_168.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_168.Brightness=5



local ParticleEmitter_169=i("ParticleEmitter", Attachment_167)
ParticleEmitter_169.Name="ParticleEmitter"
ParticleEmitter_169:SetAttribute("EmitCount", 0)
ParticleEmitter_169:SetAttribute("AuraInstance", true)
ParticleEmitter_169.Enabled=true
ParticleEmitter_169.Rate=5
ParticleEmitter_169.Lifetime=nr(1.5,1.5)
ParticleEmitter_169.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_169.Rotation=nr(-360,360)
ParticleEmitter_169.RotSpeed=nr(-100,100)
ParticleEmitter_169.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_169.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_169.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_169.LightEmission=1
ParticleEmitter_169.LightInfluence=0
ParticleEmitter_169.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_169.Drag=0
ParticleEmitter_169.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_169.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_169.ZOffset=12
ParticleEmitter_169.Texture="rbxassetid://15394198783"
ParticleEmitter_169.LockedToPart=true
ParticleEmitter_169.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_169.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_169.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_169.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_169.FlipbookStartRandom=false
ParticleEmitter_169.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_169.Brightness=5



local ParticleEmitter_170=i("ParticleEmitter", Attachment_167)
ParticleEmitter_170.Name="ParticleEmitter"
ParticleEmitter_170:SetAttribute("EmitCount", 0)
ParticleEmitter_170:SetAttribute("AuraInstance", true)
ParticleEmitter_170.Enabled=true
ParticleEmitter_170.Rate=4
ParticleEmitter_170.Lifetime=nr(1.5,1.5)
ParticleEmitter_170.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_170.Rotation=nr(-360,360)
ParticleEmitter_170.RotSpeed=nr(-200,200)
ParticleEmitter_170.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_170.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_170.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_170.LightEmission=1
ParticleEmitter_170.LightInfluence=0
ParticleEmitter_170.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_170.Drag=0
ParticleEmitter_170.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_170.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_170.ZOffset=12
ParticleEmitter_170.Texture="rbxassetid://16879806460"
ParticleEmitter_170.LockedToPart=true
ParticleEmitter_170.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_170.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_170.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_170.FlipbookFramerate=nr(0,0)
ParticleEmitter_170.FlipbookStartRandom=true
ParticleEmitter_170.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_170.Brightness=10



local ParticleEmitter_171=i("ParticleEmitter", Attachment_167)
ParticleEmitter_171.Name="ParticleEmitter"
ParticleEmitter_171:SetAttribute("EmitCount", 0)
ParticleEmitter_171:SetAttribute("AuraInstance", true)
ParticleEmitter_171.Enabled=true
ParticleEmitter_171.Rate=2
ParticleEmitter_171.Lifetime=nr(1.5,1.5)
ParticleEmitter_171.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_171.Rotation=nr(-360,360)
ParticleEmitter_171.RotSpeed=nr(0,0)
ParticleEmitter_171.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_171.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_171.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_171.LightEmission=1
ParticleEmitter_171.LightInfluence=0
ParticleEmitter_171.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_171.Drag=0
ParticleEmitter_171.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_171.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_171.ZOffset=12
ParticleEmitter_171.Texture="rbxassetid://91167564374329"
ParticleEmitter_171.LockedToPart=true
ParticleEmitter_171.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_171.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_171.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_171.FlipbookFramerate=nr(0,0)
ParticleEmitter_171.FlipbookStartRandom=true
ParticleEmitter_171.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_171.Brightness=10



local Attachment_172=i("Attachment", ring_151)
Attachment_172.Name="Attachment"
Attachment_172:SetAttribute("AuraInstance", true)
Attachment_172.Visible=false
Attachment_172.CFrame=cf(-14.560537338256836,-8.583068620282575e-07,-11.483535766601562,-0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_173=i("ParticleEmitter", Attachment_172)
ParticleEmitter_173.Name="ParticleEmitter"
ParticleEmitter_173:SetAttribute("EmitCount", 0)
ParticleEmitter_173:SetAttribute("AuraInstance", true)
ParticleEmitter_173.Enabled=true
ParticleEmitter_173.Rate=4
ParticleEmitter_173.Lifetime=nr(1.5,1.5)
ParticleEmitter_173.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_173.Rotation=nr(270,270)
ParticleEmitter_173.RotSpeed=nr(-20,20)
ParticleEmitter_173.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_173.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_173.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_173.LightEmission=1
ParticleEmitter_173.LightInfluence=0
ParticleEmitter_173.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_173.Drag=0
ParticleEmitter_173.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_173.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_173.ZOffset=12
ParticleEmitter_173.Texture="rbxassetid://16924875355"
ParticleEmitter_173.LockedToPart=true
ParticleEmitter_173.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_173.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_173.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_173.FlipbookFramerate=nr(50,50)
ParticleEmitter_173.FlipbookStartRandom=false
ParticleEmitter_173.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_173.Brightness=5



local ParticleEmitter_174=i("ParticleEmitter", Attachment_172)
ParticleEmitter_174.Name="ParticleEmitter"
ParticleEmitter_174:SetAttribute("EmitCount", 0)
ParticleEmitter_174:SetAttribute("AuraInstance", true)
ParticleEmitter_174.Enabled=true
ParticleEmitter_174.Rate=5
ParticleEmitter_174.Lifetime=nr(1.5,1.5)
ParticleEmitter_174.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_174.Rotation=nr(-360,360)
ParticleEmitter_174.RotSpeed=nr(-100,100)
ParticleEmitter_174.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_174.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_174.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_174.LightEmission=1
ParticleEmitter_174.LightInfluence=0
ParticleEmitter_174.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_174.Drag=0
ParticleEmitter_174.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_174.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_174.ZOffset=12
ParticleEmitter_174.Texture="rbxassetid://15394198783"
ParticleEmitter_174.LockedToPart=true
ParticleEmitter_174.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_174.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_174.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_174.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_174.FlipbookStartRandom=false
ParticleEmitter_174.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_174.Brightness=5



local ParticleEmitter_175=i("ParticleEmitter", Attachment_172)
ParticleEmitter_175.Name="ParticleEmitter"
ParticleEmitter_175:SetAttribute("EmitCount", 0)
ParticleEmitter_175:SetAttribute("AuraInstance", true)
ParticleEmitter_175.Enabled=true
ParticleEmitter_175.Rate=4
ParticleEmitter_175.Lifetime=nr(1.5,1.5)
ParticleEmitter_175.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_175.Rotation=nr(-360,360)
ParticleEmitter_175.RotSpeed=nr(-200,200)
ParticleEmitter_175.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_175.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_175.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_175.LightEmission=1
ParticleEmitter_175.LightInfluence=0
ParticleEmitter_175.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_175.Drag=0
ParticleEmitter_175.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_175.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_175.ZOffset=12
ParticleEmitter_175.Texture="rbxassetid://16879806460"
ParticleEmitter_175.LockedToPart=true
ParticleEmitter_175.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_175.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_175.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_175.FlipbookFramerate=nr(0,0)
ParticleEmitter_175.FlipbookStartRandom=true
ParticleEmitter_175.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_175.Brightness=10



local ParticleEmitter_176=i("ParticleEmitter", Attachment_172)
ParticleEmitter_176.Name="ParticleEmitter"
ParticleEmitter_176:SetAttribute("EmitCount", 0)
ParticleEmitter_176:SetAttribute("AuraInstance", true)
ParticleEmitter_176.Enabled=true
ParticleEmitter_176.Rate=2
ParticleEmitter_176.Lifetime=nr(1.5,1.5)
ParticleEmitter_176.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_176.Rotation=nr(-360,360)
ParticleEmitter_176.RotSpeed=nr(0,0)
ParticleEmitter_176.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_176.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_176.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_176.LightEmission=1
ParticleEmitter_176.LightInfluence=0
ParticleEmitter_176.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_176.Drag=0
ParticleEmitter_176.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_176.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_176.ZOffset=12
ParticleEmitter_176.Texture="rbxassetid://91167564374329"
ParticleEmitter_176.LockedToPart=true
ParticleEmitter_176.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_176.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_176.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_176.FlipbookFramerate=nr(0,0)
ParticleEmitter_176.FlipbookStartRandom=true
ParticleEmitter_176.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_176.Brightness=10



local Attachment_177=i("Attachment", ring_151)
Attachment_177.Name="Attachment"
Attachment_177:SetAttribute("AuraInstance", true)
Attachment_177.Visible=false
Attachment_177.CFrame=cf(14.560564994812012,-8.583068620282575e-07,-11.483513832092285,-0.7071342468261719,0,0.707079291343689,0,1,0,-0.707079291343689,0,-0.7071342468261719)



local ParticleEmitter_178=i("ParticleEmitter", Attachment_177)
ParticleEmitter_178.Name="ParticleEmitter"
ParticleEmitter_178:SetAttribute("EmitCount", 0)
ParticleEmitter_178:SetAttribute("AuraInstance", true)
ParticleEmitter_178.Enabled=true
ParticleEmitter_178.Rate=4
ParticleEmitter_178.Lifetime=nr(1.5,1.5)
ParticleEmitter_178.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_178.Rotation=nr(270,270)
ParticleEmitter_178.RotSpeed=nr(-20,20)
ParticleEmitter_178.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_178.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_178.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_178.LightEmission=1
ParticleEmitter_178.LightInfluence=0
ParticleEmitter_178.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_178.Drag=0
ParticleEmitter_178.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_178.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_178.ZOffset=12
ParticleEmitter_178.Texture="rbxassetid://16924875355"
ParticleEmitter_178.LockedToPart=true
ParticleEmitter_178.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_178.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_178.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_178.FlipbookFramerate=nr(50,50)
ParticleEmitter_178.FlipbookStartRandom=false
ParticleEmitter_178.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_178.Brightness=5



local ParticleEmitter_179=i("ParticleEmitter", Attachment_177)
ParticleEmitter_179.Name="ParticleEmitter"
ParticleEmitter_179:SetAttribute("EmitCount", 0)
ParticleEmitter_179:SetAttribute("AuraInstance", true)
ParticleEmitter_179.Enabled=true
ParticleEmitter_179.Rate=5
ParticleEmitter_179.Lifetime=nr(1.5,1.5)
ParticleEmitter_179.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_179.Rotation=nr(-360,360)
ParticleEmitter_179.RotSpeed=nr(-100,100)
ParticleEmitter_179.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_179.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_179.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_179.LightEmission=1
ParticleEmitter_179.LightInfluence=0
ParticleEmitter_179.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_179.Drag=0
ParticleEmitter_179.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_179.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_179.ZOffset=12
ParticleEmitter_179.Texture="rbxassetid://15394198783"
ParticleEmitter_179.LockedToPart=true
ParticleEmitter_179.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_179.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_179.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_179.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_179.FlipbookStartRandom=false
ParticleEmitter_179.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_179.Brightness=5



local ParticleEmitter_180=i("ParticleEmitter", Attachment_177)
ParticleEmitter_180.Name="ParticleEmitter"
ParticleEmitter_180:SetAttribute("EmitCount", 0)
ParticleEmitter_180:SetAttribute("AuraInstance", true)
ParticleEmitter_180.Enabled=true
ParticleEmitter_180.Rate=4
ParticleEmitter_180.Lifetime=nr(1.5,1.5)
ParticleEmitter_180.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_180.Rotation=nr(-360,360)
ParticleEmitter_180.RotSpeed=nr(-200,200)
ParticleEmitter_180.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_180.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_180.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_180.LightEmission=1
ParticleEmitter_180.LightInfluence=0
ParticleEmitter_180.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_180.Drag=0
ParticleEmitter_180.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_180.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_180.ZOffset=12
ParticleEmitter_180.Texture="rbxassetid://16879806460"
ParticleEmitter_180.LockedToPart=true
ParticleEmitter_180.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_180.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_180.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_180.FlipbookFramerate=nr(0,0)
ParticleEmitter_180.FlipbookStartRandom=true
ParticleEmitter_180.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_180.Brightness=10



local ParticleEmitter_181=i("ParticleEmitter", Attachment_177)
ParticleEmitter_181.Name="ParticleEmitter"
ParticleEmitter_181:SetAttribute("EmitCount", 0)
ParticleEmitter_181:SetAttribute("AuraInstance", true)
ParticleEmitter_181.Enabled=true
ParticleEmitter_181.Rate=2
ParticleEmitter_181.Lifetime=nr(1.5,1.5)
ParticleEmitter_181.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_181.Rotation=nr(-360,360)
ParticleEmitter_181.RotSpeed=nr(0,0)
ParticleEmitter_181.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_181.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_181.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_181.LightEmission=1
ParticleEmitter_181.LightInfluence=0
ParticleEmitter_181.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_181.Drag=0
ParticleEmitter_181.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_181.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_181.ZOffset=12
ParticleEmitter_181.Texture="rbxassetid://91167564374329"
ParticleEmitter_181.LockedToPart=true
ParticleEmitter_181.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_181.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_181.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_181.FlipbookFramerate=nr(0,0)
ParticleEmitter_181.FlipbookStartRandom=true
ParticleEmitter_181.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_181.Brightness=10



local Attachment_182=i("Attachment", ring_151)
Attachment_182.Name="Attachment"
Attachment_182:SetAttribute("AuraInstance", true)
Attachment_182.Visible=false
Attachment_182.CFrame=cf(-14.560537338256836,-6.437301180994837e-07,11.483541488647461,0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,0.7071342468261719)



local ParticleEmitter_183=i("ParticleEmitter", Attachment_182)
ParticleEmitter_183.Name="ParticleEmitter"
ParticleEmitter_183:SetAttribute("EmitCount", 0)
ParticleEmitter_183:SetAttribute("AuraInstance", true)
ParticleEmitter_183.Enabled=true
ParticleEmitter_183.Rate=4
ParticleEmitter_183.Lifetime=nr(1.5,1.5)
ParticleEmitter_183.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_183.Rotation=nr(270,270)
ParticleEmitter_183.RotSpeed=nr(-20,20)
ParticleEmitter_183.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_183.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_183.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_183.LightEmission=1
ParticleEmitter_183.LightInfluence=0
ParticleEmitter_183.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_183.Drag=0
ParticleEmitter_183.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_183.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_183.ZOffset=12
ParticleEmitter_183.Texture="rbxassetid://16924875355"
ParticleEmitter_183.LockedToPart=true
ParticleEmitter_183.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_183.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_183.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_183.FlipbookFramerate=nr(50,50)
ParticleEmitter_183.FlipbookStartRandom=false
ParticleEmitter_183.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_183.Brightness=5



local ParticleEmitter_184=i("ParticleEmitter", Attachment_182)
ParticleEmitter_184.Name="ParticleEmitter"
ParticleEmitter_184:SetAttribute("EmitCount", 0)
ParticleEmitter_184:SetAttribute("AuraInstance", true)
ParticleEmitter_184.Enabled=true
ParticleEmitter_184.Rate=5
ParticleEmitter_184.Lifetime=nr(1.5,1.5)
ParticleEmitter_184.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_184.Rotation=nr(-360,360)
ParticleEmitter_184.RotSpeed=nr(-100,100)
ParticleEmitter_184.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_184.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_184.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_184.LightEmission=1
ParticleEmitter_184.LightInfluence=0
ParticleEmitter_184.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_184.Drag=0
ParticleEmitter_184.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_184.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_184.ZOffset=12
ParticleEmitter_184.Texture="rbxassetid://15394198783"
ParticleEmitter_184.LockedToPart=true
ParticleEmitter_184.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_184.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_184.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_184.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_184.FlipbookStartRandom=false
ParticleEmitter_184.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_184.Brightness=5



local ParticleEmitter_185=i("ParticleEmitter", Attachment_182)
ParticleEmitter_185.Name="ParticleEmitter"
ParticleEmitter_185:SetAttribute("EmitCount", 0)
ParticleEmitter_185:SetAttribute("AuraInstance", true)
ParticleEmitter_185.Enabled=true
ParticleEmitter_185.Rate=4
ParticleEmitter_185.Lifetime=nr(1.5,1.5)
ParticleEmitter_185.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_185.Rotation=nr(-360,360)
ParticleEmitter_185.RotSpeed=nr(-200,200)
ParticleEmitter_185.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_185.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_185.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_185.LightEmission=1
ParticleEmitter_185.LightInfluence=0
ParticleEmitter_185.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_185.Drag=0
ParticleEmitter_185.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_185.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_185.ZOffset=12
ParticleEmitter_185.Texture="rbxassetid://16879806460"
ParticleEmitter_185.LockedToPart=true
ParticleEmitter_185.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_185.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_185.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_185.FlipbookFramerate=nr(0,0)
ParticleEmitter_185.FlipbookStartRandom=true
ParticleEmitter_185.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_185.Brightness=10



local ParticleEmitter_186=i("ParticleEmitter", Attachment_182)
ParticleEmitter_186.Name="ParticleEmitter"
ParticleEmitter_186:SetAttribute("EmitCount", 0)
ParticleEmitter_186:SetAttribute("AuraInstance", true)
ParticleEmitter_186.Enabled=true
ParticleEmitter_186.Rate=2
ParticleEmitter_186.Lifetime=nr(1.5,1.5)
ParticleEmitter_186.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_186.Rotation=nr(-360,360)
ParticleEmitter_186.RotSpeed=nr(0,0)
ParticleEmitter_186.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_186.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_186.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_186.LightEmission=1
ParticleEmitter_186.LightInfluence=0
ParticleEmitter_186.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_186.Drag=0
ParticleEmitter_186.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_186.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_186.ZOffset=12
ParticleEmitter_186.Texture="rbxassetid://91167564374329"
ParticleEmitter_186.LockedToPart=true
ParticleEmitter_186.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_186.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_186.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_186.FlipbookFramerate=nr(0,0)
ParticleEmitter_186.FlipbookStartRandom=true
ParticleEmitter_186.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_186.Brightness=10



local Attachment_187=i("Attachment", ring_151)
Attachment_187.Name="Attachment"
Attachment_187:SetAttribute("AuraInstance", true)
Attachment_187.Visible=false
Attachment_187.CFrame=cf(0,-6.437301180994837e-07,16.24016761779785,1,0,0,0,1,0,0,0,1)



local ParticleEmitter_188=i("ParticleEmitter", Attachment_187)
ParticleEmitter_188.Name="ParticleEmitter"
ParticleEmitter_188:SetAttribute("EmitCount", 0)
ParticleEmitter_188:SetAttribute("AuraInstance", true)
ParticleEmitter_188.Enabled=true
ParticleEmitter_188.Rate=4
ParticleEmitter_188.Lifetime=nr(1.5,1.5)
ParticleEmitter_188.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_188.Rotation=nr(270,270)
ParticleEmitter_188.RotSpeed=nr(-20,20)
ParticleEmitter_188.Size=ns({nsk(0.000000,1.170000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_188.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_188.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_188.LightEmission=1
ParticleEmitter_188.LightInfluence=0
ParticleEmitter_188.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_188.Drag=0
ParticleEmitter_188.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_188.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_188.ZOffset=12
ParticleEmitter_188.Texture="rbxassetid://16924875355"
ParticleEmitter_188.LockedToPart=true
ParticleEmitter_188.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_188.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_188.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_188.FlipbookFramerate=nr(50,50)
ParticleEmitter_188.FlipbookStartRandom=false
ParticleEmitter_188.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_188.Brightness=5



local ParticleEmitter_189=i("ParticleEmitter", Attachment_187)
ParticleEmitter_189.Name="ParticleEmitter"
ParticleEmitter_189:SetAttribute("EmitCount", 0)
ParticleEmitter_189:SetAttribute("AuraInstance", true)
ParticleEmitter_189.Enabled=true
ParticleEmitter_189.Rate=5
ParticleEmitter_189.Lifetime=nr(1.5,1.5)
ParticleEmitter_189.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_189.Rotation=nr(-360,360)
ParticleEmitter_189.RotSpeed=nr(-100,100)
ParticleEmitter_189.Size=ns({nsk(0.000000,8.336249,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_189.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.394958,0.000000,0.000000),nsk(0.574790,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_189.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_189.LightEmission=1
ParticleEmitter_189.LightInfluence=0
ParticleEmitter_189.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_189.Drag=0
ParticleEmitter_189.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_189.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_189.ZOffset=12
ParticleEmitter_189.Texture="rbxassetid://15394198783"
ParticleEmitter_189.LockedToPart=true
ParticleEmitter_189.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_189.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_189.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_189.FlipbookFramerate=nr(23.100000381469727,23.100000381469727)
ParticleEmitter_189.FlipbookStartRandom=false
ParticleEmitter_189.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_189.Brightness=5



local ParticleEmitter_190=i("ParticleEmitter", Attachment_187)
ParticleEmitter_190.Name="ParticleEmitter"
ParticleEmitter_190:SetAttribute("EmitCount", 0)
ParticleEmitter_190:SetAttribute("AuraInstance", true)
ParticleEmitter_190.Enabled=true
ParticleEmitter_190.Rate=4
ParticleEmitter_190.Lifetime=nr(1.5,1.5)
ParticleEmitter_190.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_190.Rotation=nr(-360,360)
ParticleEmitter_190.RotSpeed=nr(-200,200)
ParticleEmitter_190.Size=ns({nsk(0.000000,2.358720,0.000000),nsk(1.000000,2.358720,0.000000)})
ParticleEmitter_190.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_190.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_190.LightEmission=1
ParticleEmitter_190.LightInfluence=0
ParticleEmitter_190.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_190.Drag=0
ParticleEmitter_190.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_190.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_190.ZOffset=12
ParticleEmitter_190.Texture="rbxassetid://16879806460"
ParticleEmitter_190.LockedToPart=true
ParticleEmitter_190.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_190.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_190.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_190.FlipbookFramerate=nr(0,0)
ParticleEmitter_190.FlipbookStartRandom=true
ParticleEmitter_190.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_190.Brightness=10



local ParticleEmitter_191=i("ParticleEmitter", Attachment_187)
ParticleEmitter_191.Name="ParticleEmitter"
ParticleEmitter_191:SetAttribute("EmitCount", 0)
ParticleEmitter_191:SetAttribute("AuraInstance", true)
ParticleEmitter_191.Enabled=true
ParticleEmitter_191.Rate=2
ParticleEmitter_191.Lifetime=nr(1.5,1.5)
ParticleEmitter_191.Speed=nr(21.228479385375977,34.20144271850586)
ParticleEmitter_191.Rotation=nr(-360,360)
ParticleEmitter_191.RotSpeed=nr(0,0)
ParticleEmitter_191.Size=ns({nsk(0.000000,4.717440,0.000000),nsk(1.000000,4.717440,0.000000)})
ParticleEmitter_191.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.489429,0.000000,0.000000),nsk(0.642178,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_191.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.548443,c3(0.567121,0.750098,0.992496)),csk(1.000000,c3(0.572549,0.760784,0.992157))})
ParticleEmitter_191.LightEmission=1
ParticleEmitter_191.LightInfluence=0
ParticleEmitter_191.Acceleration=v3(0.000000,21.509932,-53.774776)
ParticleEmitter_191.Drag=0
ParticleEmitter_191.EmissionDirection=Enum.NormalId.Right
ParticleEmitter_191.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_191.ZOffset=12
ParticleEmitter_191.Texture="rbxassetid://91167564374329"
ParticleEmitter_191.LockedToPart=true
ParticleEmitter_191.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_191.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid2x2
ParticleEmitter_191.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_191.FlipbookFramerate=nr(0,0)
ParticleEmitter_191.FlipbookStartRandom=true
ParticleEmitter_191.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_191.Brightness=10






local ParticleEmitter_354=i("ParticleEmitter", Floor)
ParticleEmitter_354.Name="ParticleEmitter"
ParticleEmitter_354:SetAttribute("AuraInstance", true)
ParticleEmitter_354.Enabled=true
ParticleEmitter_354.Rate=5
ParticleEmitter_354.Lifetime=nr(3,3)
ParticleEmitter_354.Speed=nr(-1.7999999523162842,-0.8999999761581421)
ParticleEmitter_354.Rotation=nr(-360,360)
ParticleEmitter_354.RotSpeed=nr(-20,20)
ParticleEmitter_354.Size=ns({nsk(0.000000,7.200000,0.000000),nsk(1.000000,12.548467,0.000000)})
ParticleEmitter_354.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.503171,0.875000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_354.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.550173,c3(0.517647,0.686275,0.905882)),csk(1.000000,c3(0.549020,0.737255,0.952941))})
ParticleEmitter_354.LightEmission=0
ParticleEmitter_354.LightInfluence=0
ParticleEmitter_354.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_354.Drag=0
ParticleEmitter_354.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_354.SpreadAngle=v2(30.000000,30.000000)
ParticleEmitter_354.ZOffset=20
ParticleEmitter_354.Texture="rbxassetid://9841261329"
ParticleEmitter_354.LockedToPart=true
ParticleEmitter_354.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_354.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_354.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_354.FlipbookFramerate=nr(1,1)
ParticleEmitter_354.FlipbookStartRandom=false
ParticleEmitter_354.Squash=ns({nsk(0.000000,-0.200000,0.000000),nsk(1.000000,-0.200000,0.000000)})
ParticleEmitter_354.Brightness=22



local ParticleEmitter_355=i("ParticleEmitter", Floor)
ParticleEmitter_355.Name="ParticleEmitter"
ParticleEmitter_355:SetAttribute("AuraInstance", true)
ParticleEmitter_355.Enabled=true
ParticleEmitter_355.Rate=5
ParticleEmitter_355.Lifetime=nr(3,3)
ParticleEmitter_355.Speed=nr(-1,-1)
ParticleEmitter_355.Rotation=nr(-360,360)
ParticleEmitter_355.RotSpeed=nr(-20,20)
ParticleEmitter_355.Size=ns({nsk(0.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
ParticleEmitter_355.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.499471,0.856250,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_355.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.550173,c3(0.517647,0.686275,0.905882)),csk(1.000000,c3(0.549020,0.737255,0.952941))})
ParticleEmitter_355.LightEmission=0
ParticleEmitter_355.LightInfluence=0
ParticleEmitter_355.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_355.Drag=0
ParticleEmitter_355.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_355.SpreadAngle=v2(4.000000,4.000000)
ParticleEmitter_355.ZOffset=20
ParticleEmitter_355.Texture="rbxassetid://11871320339"
ParticleEmitter_355.LockedToPart=true
ParticleEmitter_355.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_355.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_355.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_355.FlipbookFramerate=nr(1,1)
ParticleEmitter_355.FlipbookStartRandom=false
ParticleEmitter_355.Squash=ns({nsk(0.000000,-0.200000,0.000000),nsk(1.000000,-0.200000,0.000000)})
ParticleEmitter_355.Brightness=5



local ParticleEmitter_356=i("ParticleEmitter", Floor)
ParticleEmitter_356.Name="ParticleEmitter"
ParticleEmitter_356:SetAttribute("AuraInstance", true)
ParticleEmitter_356.Enabled=true
ParticleEmitter_356.Rate=5
ParticleEmitter_356.Lifetime=nr(3,3)
ParticleEmitter_356.Speed=nr(3.5999999046325684,3.5999999046325684)
ParticleEmitter_356.Rotation=nr(-360,360)
ParticleEmitter_356.RotSpeed=nr(-100,100)
ParticleEmitter_356.Size=ns({nsk(0.000000,3.712499,0.000000),nsk(1.000000,2.193750,0.000000)})
ParticleEmitter_356.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.514799,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_356.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.550173,c3(0.517647,0.686275,0.905882)),csk(1.000000,c3(0.549020,0.737255,0.952941))})
ParticleEmitter_356.LightEmission=0
ParticleEmitter_356.LightInfluence=0
ParticleEmitter_356.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_356.Drag=0
ParticleEmitter_356.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_356.SpreadAngle=v2(360.000000,360.000000)
ParticleEmitter_356.ZOffset=20
ParticleEmitter_356.Texture="rbxassetid://2545904564"
ParticleEmitter_356.LockedToPart=true
ParticleEmitter_356.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_356.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_356.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_356.FlipbookFramerate=nr(1,1)
ParticleEmitter_356.FlipbookStartRandom=false
ParticleEmitter_356.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_356.Brightness=22



local ParticleEmitter_357=i("ParticleEmitter", Floor)
ParticleEmitter_357.Name="ParticleEmitter"
ParticleEmitter_357:SetAttribute("AuraInstance", true)
ParticleEmitter_357.Enabled=true
ParticleEmitter_357.Rate=29
ParticleEmitter_357.Lifetime=nr(0.15000000596046448,0.20000000298023224)
ParticleEmitter_357.Speed=nr(0,0)
ParticleEmitter_357.Rotation=nr(0,0)
ParticleEmitter_357.RotSpeed=nr(0,0)
ParticleEmitter_357.Size=ns({nsk(0.000000,6.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_357.Transparency=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_357.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.550173,c3(0.517647,0.686275,0.905882)),csk(1.000000,c3(0.549020,0.737255,0.952941))})
ParticleEmitter_357.LightEmission=0
ParticleEmitter_357.LightInfluence=0
ParticleEmitter_357.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_357.Drag=0
ParticleEmitter_357.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_357.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_357.ZOffset=12
ParticleEmitter_357.Texture="rbxassetid://17211298816"
ParticleEmitter_357.LockedToPart=true
ParticleEmitter_357.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_357.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_357.FlipbookMode=Enum.ParticleFlipbookMode.Loop
ParticleEmitter_357.FlipbookFramerate=nr(1,1)
ParticleEmitter_357.FlipbookStartRandom=false
ParticleEmitter_357.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_357.Brightness=3



local ParticleEmitter_358=i("ParticleEmitter", Floor)
ParticleEmitter_358.Name="ParticleEmitter"
ParticleEmitter_358:SetAttribute("AuraInstance", true)
ParticleEmitter_358.Enabled=true
ParticleEmitter_358.Rate=5
ParticleEmitter_358.Lifetime=nr(3,3)
ParticleEmitter_358.Speed=nr(-1,-1)
ParticleEmitter_358.Rotation=nr(-360,360)
ParticleEmitter_358.RotSpeed=nr(0,0)
ParticleEmitter_358.Size=ns({nsk(0.000000,7.000000,0.000000),nsk(1.000000,7.000000,0.000000)})
ParticleEmitter_358.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.502643,0.525000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_358.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.167820,c3(0.453876,0.527147,0.999574)),csk(0.546713,c3(0.572549,0.756863,1.000000)),csk(1.000000,c3(0.576471,0.772549,1.000000))})
ParticleEmitter_358.LightEmission=0
ParticleEmitter_358.LightInfluence=0
ParticleEmitter_358.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_358.Drag=0
ParticleEmitter_358.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_358.SpreadAngle=v2(20.000000,20.000000)
ParticleEmitter_358.ZOffset=20
ParticleEmitter_358.Texture="rbxassetid://74275113680985"
ParticleEmitter_358.LockedToPart=true
ParticleEmitter_358.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_358.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
ParticleEmitter_358.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_358.FlipbookFramerate=nr(1,1)
ParticleEmitter_358.FlipbookStartRandom=false
ParticleEmitter_358.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_358.Brightness=4





local ParticleEmitter_350=i("ParticleEmitter", Floor)
ParticleEmitter_350.Name="ParticleEmitter"
ParticleEmitter_350:SetAttribute("AuraInstance", true)
ParticleEmitter_350.Enabled=true
ParticleEmitter_350.Rate=20
ParticleEmitter_350.Lifetime=nr(1,1)
ParticleEmitter_350.Speed=nr(9,18)
ParticleEmitter_350.Rotation=nr(90,90)
ParticleEmitter_350.RotSpeed=nr(0,0)
ParticleEmitter_350.Size=ns({nsk(0.000000,0.450000,0.000000),nsk(1.000000,0.450000,0.000000)})
ParticleEmitter_350.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.492072,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_350.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.302768,c3(0.453876,0.527147,0.999574)),csk(0.643599,c3(0.549020,0.725490,0.956863)),csk(1.000000,c3(0.576471,0.772549,1.000000))})
ParticleEmitter_350.LightEmission=0
ParticleEmitter_350.LightInfluence=0
ParticleEmitter_350.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_350.Drag=0
ParticleEmitter_350.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_350.SpreadAngle=v2(20.000000,20.000000)
ParticleEmitter_350.ZOffset=10
ParticleEmitter_350.Texture="rbxassetid://8030734851"
ParticleEmitter_350.LockedToPart=true
ParticleEmitter_350.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_350.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_350.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_350.FlipbookFramerate=nr(1,1)
ParticleEmitter_350.FlipbookStartRandom=false
ParticleEmitter_350.Squash=ns({nsk(0.000000,0.200000,0.000000),nsk(1.000000,0.200000,0.000000)})
ParticleEmitter_350.Brightness=9



local ParticleEmitter_351=i("ParticleEmitter", Floor)
ParticleEmitter_351.Name="ParticleEmitter"
ParticleEmitter_351:SetAttribute("AuraInstance", true)
ParticleEmitter_351.Enabled=true
ParticleEmitter_351.Rate=20
ParticleEmitter_351.Lifetime=nr(2,2)
ParticleEmitter_351.Speed=nr(5.399999618530273,9)
ParticleEmitter_351.Rotation=nr(-360,360)
ParticleEmitter_351.RotSpeed=nr(-20,20)
ParticleEmitter_351.Size=ns({nsk(0.000000,4.562500,0.000000),nsk(1.000000,8.000000,0.000000)})
ParticleEmitter_351.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.503700,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_351.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.302768,c3(0.453876,0.527147,0.999574)),csk(0.643599,c3(0.549020,0.725490,0.956863)),csk(1.000000,c3(0.576471,0.772549,1.000000))})
ParticleEmitter_351.LightEmission=0
ParticleEmitter_351.LightInfluence=0
ParticleEmitter_351.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_351.Drag=0
ParticleEmitter_351.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_351.SpreadAngle=v2(10.000000,10.000000)
ParticleEmitter_351.ZOffset=16
ParticleEmitter_351.Texture="rbxassetid://127719409149211"
ParticleEmitter_351.LockedToPart=true
ParticleEmitter_351.Orientation=Enum.ParticleOrientation.FacingCamera
ParticleEmitter_351.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_351.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_351.FlipbookFramerate=nr(1,1)
ParticleEmitter_351.FlipbookStartRandom=false
ParticleEmitter_351.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_351.Brightness=4



local ParticleEmitter_352=i("ParticleEmitter", Floor)
ParticleEmitter_352.Name="ParticleEmitter"
ParticleEmitter_352:SetAttribute("AuraInstance", true)
ParticleEmitter_352.Enabled=true
ParticleEmitter_352.Rate=20
ParticleEmitter_352.Lifetime=nr(1,1)
ParticleEmitter_352.Speed=nr(27,45)
ParticleEmitter_352.Rotation=nr(90,90)
ParticleEmitter_352.RotSpeed=nr(0,0)
ParticleEmitter_352.Size=ns({nsk(0.000000,1.687500,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_352.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.492072,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_352.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.302768,c3(0.453876,0.527147,0.999574)),csk(0.643599,c3(0.549020,0.725490,0.956863)),csk(1.000000,c3(0.576471,0.772549,1.000000))})
ParticleEmitter_352.LightEmission=0
ParticleEmitter_352.LightInfluence=0
ParticleEmitter_352.Acceleration=v3(0.000000,0.000000,0.000000)
ParticleEmitter_352.Drag=5
ParticleEmitter_352.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_352.SpreadAngle=v2(0.000000,0.000000)
ParticleEmitter_352.ZOffset=10
ParticleEmitter_352.Texture="rbxassetid://8030734851"
ParticleEmitter_352.LockedToPart=true
ParticleEmitter_352.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_352.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_352.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_352.FlipbookFramerate=nr(1,1)
ParticleEmitter_352.FlipbookStartRandom=false
ParticleEmitter_352.Squash=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_352.Brightness=9



local ParticleEmitter_353=i("ParticleEmitter", Floor)
ParticleEmitter_353.Name="ParticleEmitter"
ParticleEmitter_353:SetAttribute("AuraInstance", true)
ParticleEmitter_353.Enabled=true
ParticleEmitter_353.Rate=20
ParticleEmitter_353.Lifetime=nr(1,1)
ParticleEmitter_353.Speed=nr(18,27)
ParticleEmitter_353.Rotation=nr(90,90)
ParticleEmitter_353.RotSpeed=nr(0,0)
ParticleEmitter_353.Size=ns({nsk(0.000000,3.750000,0.000000),nsk(0.489958,2.875000,0.000000),nsk(1.000000,0.000000,0.000000)})
ParticleEmitter_353.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.492072,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_353.Color=cs({csk(0.000000,c3(0.447059,0.513726,1.000000)),csk(0.302768,c3(0.453876,0.527147,0.999574)),csk(0.643599,c3(0.549020,0.725490,0.956863)),csk(1.000000,c3(0.576471,0.772549,1.000000))})
ParticleEmitter_353.LightEmission=0
ParticleEmitter_353.LightInfluence=0
ParticleEmitter_353.Acceleration=v3(0.000000,8.099999,0.000000)
ParticleEmitter_353.Drag=2
ParticleEmitter_353.EmissionDirection=Enum.NormalId.Top
ParticleEmitter_353.SpreadAngle=v2(20.000000,20.000000)
ParticleEmitter_353.ZOffset=4
ParticleEmitter_353.Texture="rbxassetid://70982449101680"
ParticleEmitter_353.LockedToPart=true
ParticleEmitter_353.Orientation=Enum.ParticleOrientation.VelocityParallel
ParticleEmitter_353.FlipbookLayout=Enum.ParticleFlipbookLayout.None
ParticleEmitter_353.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
ParticleEmitter_353.FlipbookFramerate=nr(1,1)
ParticleEmitter_353.FlipbookStartRandom=false
ParticleEmitter_353.Squash=ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ParticleEmitter_353.Brightness=11
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
ParticleEmitter_132.Parent=ring_151 
ParticleEmitter_132.Enabled=false 
ParticleEmitter_131.Parent=ring_151
ParticleEmitter_131.Enabled=false
ParticleEmitter_138.Parent=ring_151
ParticleEmitter_149.Parent=ring_151
ParticleEmitter_125.Parent=ring_151
for _,v in ring_151:GetChildren() do  
if v:IsA("Attachment") then 
v.Position=v3(0,-2,0)
end
end
fff=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
fff:Disconnect()
att:Destroy()
ring_151:Destroy()
return
end
if not head:FindFirstChild("EyeShine") then 
att.Parent=head
end

if not torso:FindFirstChild("ring") then 
ring_151.Parent=torso
end
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
pcall(function()
sine=os.clock()
local g=clamp(sound.PlaybackLoudness/5.5,0,25)
local g1=clamp(sound.PlaybackLoudness/2.5,0,255)
local prim=rgb(119+g+50*sin(sine*2),0,192+g+15*cos(sine*1.5))
for _,x in Floor:GetDescendants() do 
if x:IsA("ParticleEmitter") then 
x.Color=cs({
  csk(0,prim),
  csk(1,rgb(g1,g1,g1)),
})
x.Brightness=g*.15
end
end
for _,x in ring_151:GetDescendants() do 
if x:IsA("ParticleEmitter") then 
x.Color=cs({
  csk(0,prim),
  csk(1,rgb(g1,g1,g1)),
})
x.Brightness=g*.15
x.ZOffset=0
end
end
att.Position=v3(0,0,-.5)
li.Color=prim 
li.Brightness=g
li.Range=g*1.25
if sound.PlaybackLoudness>=270 then
e19.Color=cs({
  csk(0,prim),
  csk(1,rgb(g1,g1,g1)),
})
e19.Brightness=g
e19.Enabled=true
else
e19.Enabled=false
li.Color=prim 
li.Brightness=g
li.Range=g*.1
end
end)



end)
end
repeat Nebulabrasque() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")