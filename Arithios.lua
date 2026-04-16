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
local Extras=Global.Extras or {}
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
local sphere1=Global.sphere1 or nil
local blockmoveup=Global.blockmoveup or nil
local sphere=Global.sphere or nil 
local square=Global.square or nil 
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
local cf=CFrame.new
local angles=CFrame.Angles
local u2=UDim2.new
local rus=game:service'RunService'
local PostSimulation=rus.PostSimulation
local sin=math.sin
local cos=math.cos
local rad=math.rad
local abs=math.abs
local min=math.min
local mrandom=math.random
local sine=os.clock()
local random=function(a,b) return mrandom(a*1000,b*1000)/1000 end
local clamp=math.clamp

local tinsert=table.insert
local u2scale=UDim2.fromScale
local Name=Extras.AssetName
print(Extras.AssetName)
function VFX4()
if scriptfolder:FindFirstChild(Name.."Assets") then return end
local foldah=i("Folder",scriptfolder)
foldah.Name=Name.."Assets"
foldah:SetAttribute("VFX",true)

--// Init Default Instances
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


 floor_875=i("Attachment", Floor)
floor_875.Name="floor"
floor_875:SetAttribute("AuraInstance", true)
floor_875.Visible=false
floor_875.CFrame=cf(0,-2.4000000953674316,0,1,0,0,0,1,0,0,0,1)






 crescent_876=i("ParticleEmitter", floor_875)
crescent_876.Name="crescent"
crescent_876:SetAttribute("EmitCount", 0)
crescent_876:SetAttribute("AuraInstance", true)
crescent_876.Enabled=true
crescent_876.Rate=2
crescent_876.Lifetime=nr(2,2)
crescent_876.Speed=nr(1,2)
crescent_876.Rotation=nr(-180,180)
crescent_876.RotSpeed=nr(90,120)
crescent_876.Size=ns({nsk(0.000000,25.000000,0.000000),nsk(0.100000,24.778028,0.000000),nsk(0.200000,23.923084,0.000000),nsk(0.300000,22.500751,0.000000),nsk(0.400000,20.617123,0.000000),nsk(0.500000,18.353218,0.000000),nsk(0.600000,15.769037,0.000000),nsk(0.700000,12.909918,0.000000),nsk(0.800000,9.811000,0.000000),nsk(0.900000,6.500166,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
crescent_876.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
crescent_876.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
crescent_876.LightEmission=1
crescent_876.LightInfluence=0
crescent_876.Acceleration=v3(0.000000,0.000000,0.000010)
crescent_876.Drag=0
crescent_876.EmissionDirection=Enum.NormalId.Top
crescent_876.SpreadAngle=v2(2.000000,2.000000)
crescent_876.ZOffset=0
crescent_876.Texture="rbxassetid://92480710176023"
crescent_876.LockedToPart=true
crescent_876.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
crescent_876.FlipbookLayout=Enum.ParticleFlipbookLayout.None
crescent_876.FlipbookMode=Enum.ParticleFlipbookMode.Loop
crescent_876.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
crescent_876.FlipbookStartRandom=false
crescent_876.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
crescent_876.Brightness=50






 crescent2_877=i("ParticleEmitter", floor_875)
crescent2_877.Name="crescent2"
crescent2_877:SetAttribute("EmitCount", 0)
crescent2_877:SetAttribute("AuraInstance", true)
crescent2_877.Enabled=true
crescent2_877.Rate=2
crescent2_877.Lifetime=nr(2,2)
crescent2_877.Speed=nr(1,2)
crescent2_877.Rotation=nr(-180,180)
crescent2_877.RotSpeed=nr(90,120)
crescent2_877.Size=ns({nsk(0.000000,20.000000,0.000000),nsk(0.100000,19.828478,0.000000),nsk(0.200000,19.167837,0.000000),nsk(0.300000,18.068762,0.000000),nsk(0.400000,16.613232,0.000000),nsk(0.500000,14.863851,0.000000),nsk(0.600000,12.866983,0.000000),nsk(0.700000,10.657664,0.000000),nsk(0.800000,8.263045,0.000000),nsk(0.900000,5.704674,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
crescent2_877.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
crescent2_877.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
crescent2_877.LightEmission=1
crescent2_877.LightInfluence=0
crescent2_877.Acceleration=v3(0.000000,0.000000,0.000010)
crescent2_877.Drag=0
crescent2_877.EmissionDirection=Enum.NormalId.Top
crescent2_877.SpreadAngle=v2(2.000000,2.000000)
crescent2_877.ZOffset=0
crescent2_877.Texture="rbxassetid://91416375155019"
crescent2_877.LockedToPart=true
crescent2_877.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
crescent2_877.FlipbookLayout=Enum.ParticleFlipbookLayout.None
crescent2_877.FlipbookMode=Enum.ParticleFlipbookMode.Loop
crescent2_877.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
crescent2_877.FlipbookStartRandom=false
crescent2_877.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
crescent2_877.Brightness=50






 crescent3_878=i("ParticleEmitter", floor_875)
crescent3_878.Name="crescent3"
crescent3_878:SetAttribute("EmitCount", 0)
crescent3_878:SetAttribute("AuraInstance", true)
crescent3_878.Enabled=true
crescent3_878.Rate=2
crescent3_878.Lifetime=nr(2,2)
crescent3_878.Speed=nr(1,2)
crescent3_878.Rotation=nr(-180,180)
crescent3_878.RotSpeed=nr(90,120)
crescent3_878.Size=ns({nsk(0.000000,20.000000,0.000000),nsk(0.100000,19.828478,0.000000),nsk(0.200000,19.167837,0.000000),nsk(0.300000,18.068762,0.000000),nsk(0.400000,16.613232,0.000000),nsk(0.500000,14.863851,0.000000),nsk(0.600000,12.866983,0.000000),nsk(0.700000,10.657664,0.000000),nsk(0.800000,8.263045,0.000000),nsk(0.900000,5.704674,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
crescent3_878.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
crescent3_878.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
crescent3_878.LightEmission=1
crescent3_878.LightInfluence=0
crescent3_878.Acceleration=v3(0.000000,0.000000,0.000010)
crescent3_878.Drag=0
crescent3_878.EmissionDirection=Enum.NormalId.Top
crescent3_878.SpreadAngle=v2(2.000000,2.000000)
crescent3_878.ZOffset=0
crescent3_878.Texture="rbxassetid://124257080285036"
crescent3_878.LockedToPart=true
crescent3_878.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
crescent3_878.FlipbookLayout=Enum.ParticleFlipbookLayout.None
crescent3_878.FlipbookMode=Enum.ParticleFlipbookMode.Loop
crescent3_878.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
crescent3_878.FlipbookStartRandom=false
crescent3_878.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
crescent3_878.Brightness=5






 crescent4_879=i("ParticleEmitter", floor_875)
crescent4_879.Name="crescent4"
crescent4_879:SetAttribute("EmitCount", 0)
crescent4_879:SetAttribute("AuraInstance", true)
crescent4_879.Enabled=true
crescent4_879.Rate=2
crescent4_879.Lifetime=nr(2,2)
crescent4_879.Speed=nr(1,2)
crescent4_879.Rotation=nr(-180,180)
crescent4_879.RotSpeed=nr(90,120)
crescent4_879.Size=ns({nsk(0.000000,20.000000,0.000000),nsk(0.100000,19.828478,0.000000),nsk(0.200000,19.167837,0.000000),nsk(0.300000,18.068762,0.000000),nsk(0.400000,16.613232,0.000000),nsk(0.500000,14.863851,0.000000),nsk(0.600000,12.866983,0.000000),nsk(0.700000,10.657664,0.000000),nsk(0.800000,8.263045,0.000000),nsk(0.900000,5.704674,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
crescent4_879.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
crescent4_879.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
crescent4_879.LightEmission=1
crescent4_879.LightInfluence=0
crescent4_879.Acceleration=v3(0.000000,0.000000,0.000010)
crescent4_879.Drag=0
crescent4_879.EmissionDirection=Enum.NormalId.Top
crescent4_879.SpreadAngle=v2(2.000000,2.000000)
crescent4_879.ZOffset=0
crescent4_879.Texture="rbxassetid://100939474652176"
crescent4_879.LockedToPart=true
crescent4_879.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
crescent4_879.FlipbookLayout=Enum.ParticleFlipbookLayout.None
crescent4_879.FlipbookMode=Enum.ParticleFlipbookMode.Loop
crescent4_879.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
crescent4_879.FlipbookStartRandom=false
crescent4_879.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
crescent4_879.Brightness=50






 vincentsmol_880=i("ParticleEmitter", floor_875)
vincentsmol_880.Name="vincentsmol"
vincentsmol_880:SetAttribute("EmitCount", 0)
vincentsmol_880:SetAttribute("AuraInstance", true)
vincentsmol_880.Enabled=true
vincentsmol_880.Rate=2
vincentsmol_880.Lifetime=nr(2,2)
vincentsmol_880.Speed=nr(1,2)
vincentsmol_880.Rotation=nr(-180,180)
vincentsmol_880.RotSpeed=nr(90,120)
vincentsmol_880.Size=ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.949553,0.000000),nsk(0.200000,9.755246,0.000000),nsk(0.300000,9.431989,0.000000),nsk(0.400000,9.003892,0.000000),nsk(0.500000,8.489367,0.000000),nsk(0.600000,7.902054,0.000000),nsk(0.700000,7.252254,0.000000),nsk(0.800000,6.547955,0.000000),nsk(0.900000,5.795492,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
vincentsmol_880.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
vincentsmol_880.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
vincentsmol_880.LightEmission=1
vincentsmol_880.LightInfluence=0
vincentsmol_880.Acceleration=v3(0.000000,0.000000,0.000010)
vincentsmol_880.Drag=0
vincentsmol_880.EmissionDirection=Enum.NormalId.Top
vincentsmol_880.SpreadAngle=v2(2.000000,2.000000)
vincentsmol_880.ZOffset=0
vincentsmol_880.Texture="rbxassetid://132756629303425"
vincentsmol_880.LockedToPart=true
vincentsmol_880.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
vincentsmol_880.FlipbookLayout=Enum.ParticleFlipbookLayout.None
vincentsmol_880.FlipbookMode=Enum.ParticleFlipbookMode.Loop
vincentsmol_880.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
vincentsmol_880.FlipbookStartRandom=false
vincentsmol_880.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
vincentsmol_880.Brightness=5






 swirlcon2_881=i("ParticleEmitter", floor_875)
swirlcon2_881.Name="swirlcon2"
swirlcon2_881:SetAttribute("EmitCount", 0)
swirlcon2_881:SetAttribute("AuraInstance", true)
swirlcon2_881.Enabled=true
swirlcon2_881.Rate=3
swirlcon2_881.Lifetime=nr(2,2)
swirlcon2_881.Speed=nr(1,2)
swirlcon2_881.Rotation=nr(-180,180)
swirlcon2_881.RotSpeed=nr(90,120)
swirlcon2_881.Size=ns({nsk(0.000000,40.000000,0.000000),nsk(0.100000,39.646866,0.000000),nsk(0.200000,38.286724,0.000000),nsk(0.300000,36.023922,0.000000),nsk(0.400000,33.027241,0.000000),nsk(0.500000,29.425575,0.000000),nsk(0.600000,25.314377,0.000000),nsk(0.700000,20.765778,0.000000),nsk(0.800000,15.835681,0.000000),nsk(0.900000,10.568446,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
swirlcon2_881.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirlcon2_881.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
swirlcon2_881.LightEmission=-2
swirlcon2_881.LightInfluence=0
swirlcon2_881.Acceleration=v3(0.000000,0.000000,0.000010)
swirlcon2_881.Drag=0
swirlcon2_881.EmissionDirection=Enum.NormalId.Top
swirlcon2_881.SpreadAngle=v2(2.000000,2.000000)
swirlcon2_881.ZOffset=-0.0020000000949949026
swirlcon2_881.Texture="rbxassetid://117663097159743"
swirlcon2_881.LockedToPart=true
swirlcon2_881.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirlcon2_881.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirlcon2_881.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirlcon2_881.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirlcon2_881.FlipbookStartRandom=false
swirlcon2_881.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirlcon2_881.Brightness=0.30000001192092896






 swirlcon3_882=i("ParticleEmitter", floor_875)
swirlcon3_882.Name="swirlcon3"
swirlcon3_882:SetAttribute("EmitCount", 0)
swirlcon3_882:SetAttribute("AuraInstance", true)
swirlcon3_882.Enabled=true
swirlcon3_882.Rate=3
swirlcon3_882.Lifetime=nr(2,2)
swirlcon3_882.Speed=nr(1,2)
swirlcon3_882.Rotation=nr(-180,180)
swirlcon3_882.RotSpeed=nr(90,120)
swirlcon3_882.Size=ns({nsk(0.000000,40.000000,0.000000),nsk(0.100000,39.646866,0.000000),nsk(0.200000,38.286724,0.000000),nsk(0.300000,36.023922,0.000000),nsk(0.400000,33.027241,0.000000),nsk(0.500000,29.425575,0.000000),nsk(0.600000,25.314377,0.000000),nsk(0.700000,20.765778,0.000000),nsk(0.800000,15.835681,0.000000),nsk(0.900000,10.568446,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
swirlcon3_882.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirlcon3_882.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
swirlcon3_882.LightEmission=-2
swirlcon3_882.LightInfluence=0
swirlcon3_882.Acceleration=v3(0.000000,0.000000,0.000010)
swirlcon3_882.Drag=0
swirlcon3_882.EmissionDirection=Enum.NormalId.Top
swirlcon3_882.SpreadAngle=v2(2.000000,2.000000)
swirlcon3_882.ZOffset=-0.003000000026077032
swirlcon3_882.Texture="rbxassetid://119938502668979"
swirlcon3_882.LockedToPart=true
swirlcon3_882.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirlcon3_882.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirlcon3_882.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirlcon3_882.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirlcon3_882.FlipbookStartRandom=false
swirlcon3_882.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirlcon3_882.Brightness=0.20000000298023224






 swirlcon4_883=i("ParticleEmitter", floor_875)
swirlcon4_883.Name="swirlcon4"
swirlcon4_883:SetAttribute("EmitCount", 0)
swirlcon4_883:SetAttribute("AuraInstance", true)
swirlcon4_883.Enabled=true
swirlcon4_883.Rate=2
swirlcon4_883.Lifetime=nr(2,2)
swirlcon4_883.Speed=nr(1,2)
swirlcon4_883.Rotation=nr(-180,180)
swirlcon4_883.RotSpeed=nr(90,120)
swirlcon4_883.Size=ns({nsk(0.000000,30.000000,0.000000),nsk(0.100000,29.727581,0.000000),nsk(0.200000,28.678331,0.000000),nsk(0.300000,26.932739,0.000000),nsk(0.400000,24.621016,0.000000),nsk(0.500000,21.842587,0.000000),nsk(0.600000,18.671091,0.000000),nsk(0.700000,15.162172,0.000000),nsk(0.800000,11.358953,0.000000),nsk(0.900000,7.295659,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
swirlcon4_883.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirlcon4_883.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
swirlcon4_883.LightEmission=-2
swirlcon4_883.LightInfluence=0
swirlcon4_883.Acceleration=v3(0.000000,0.000000,0.000010)
swirlcon4_883.Drag=0
swirlcon4_883.EmissionDirection=Enum.NormalId.Top
swirlcon4_883.SpreadAngle=v2(2.000000,2.000000)
swirlcon4_883.ZOffset=-0.004000000189989805
swirlcon4_883.Texture="rbxassetid://114514980738104"
swirlcon4_883.LockedToPart=true
swirlcon4_883.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirlcon4_883.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirlcon4_883.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirlcon4_883.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirlcon4_883.FlipbookStartRandom=false
swirlcon4_883.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirlcon4_883.Brightness=2






 swirlcon_884=i("ParticleEmitter", floor_875)
swirlcon_884.Name="swirlcon"
swirlcon_884:SetAttribute("EmitCount", 0)
swirlcon_884:SetAttribute("AuraInstance", true)
swirlcon_884.Enabled=true
swirlcon_884.Rate=2
swirlcon_884.Lifetime=nr(2,2)
swirlcon_884.Speed=nr(1,2)
swirlcon_884.Rotation=nr(-180,180)
swirlcon_884.RotSpeed=nr(90,120)
swirlcon_884.Size=ns({nsk(0.000000,30.000000,0.000000),nsk(0.100000,29.747761,0.000000),nsk(0.200000,28.776232,0.000000),nsk(0.300000,27.159945,0.000000),nsk(0.400000,25.019459,0.000000),nsk(0.500000,22.446838,0.000000),nsk(0.600000,19.510269,0.000000),nsk(0.700000,16.261271,0.000000),nsk(0.800000,12.739772,0.000000),nsk(0.900000,8.977462,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
swirlcon_884.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirlcon_884.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
swirlcon_884.LightEmission=-2
swirlcon_884.LightInfluence=0
swirlcon_884.Acceleration=v3(0.000000,0.000000,0.000010)
swirlcon_884.Drag=0
swirlcon_884.EmissionDirection=Enum.NormalId.Top
swirlcon_884.SpreadAngle=v2(2.000000,2.000000)
swirlcon_884.ZOffset=-0.0010000000474974513
swirlcon_884.Texture="rbxassetid://89913778292661"
swirlcon_884.LockedToPart=true
swirlcon_884.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirlcon_884.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirlcon_884.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirlcon_884.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirlcon_884.FlipbookStartRandom=false
swirlcon_884.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirlcon_884.Brightness=0.30000001192092896






 swirl67_885=i("ParticleEmitter", floor_875)
swirl67_885.Name="swirl67"
swirl67_885:SetAttribute("EmitCount", 0)
swirl67_885:SetAttribute("AuraInstance", true)
swirl67_885.Enabled=true
swirl67_885.Rate=2
swirl67_885.Lifetime=nr(2,2)
swirl67_885.Speed=nr(1,2)
swirl67_885.Rotation=nr(-180,180)
swirl67_885.RotSpeed=nr(90,120)
swirl67_885.Size=ns({nsk(0.000000,25.000000,0.000000),nsk(0.100000,24.747761,0.000000),nsk(0.200000,23.776232,0.000000),nsk(0.300000,22.159945,0.000000),nsk(0.400000,20.019459,0.000000),nsk(0.500000,17.446838,0.000000),nsk(0.600000,14.510270,0.000000),nsk(0.700000,11.261271,0.000000),nsk(0.800000,7.739772,0.000000),nsk(0.900000,3.977462,0.000000),nsk(1.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirl67_885.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirl67_885.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
swirl67_885.LightEmission=1
swirl67_885.LightInfluence=0
swirl67_885.Acceleration=v3(0.000000,0.000000,0.000010)
swirl67_885.Drag=0
swirl67_885.EmissionDirection=Enum.NormalId.Top
swirl67_885.SpreadAngle=v2(2.000000,2.000000)
swirl67_885.ZOffset=0
swirl67_885.Texture="rbxassetid://132756629303425"
swirl67_885.LockedToPart=true
swirl67_885.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirl67_885.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirl67_885.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirl67_885.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirl67_885.FlipbookStartRandom=false
swirl67_885.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirl67_885.Brightness=20






 swirl67_886=i("ParticleEmitter", floor_875)
swirl67_886.Name="swirl67"
swirl67_886:SetAttribute("EmitCount", 0)
swirl67_886:SetAttribute("AuraInstance", true)
swirl67_886.Enabled=true
swirl67_886.Rate=2
swirl67_886.Lifetime=nr(2,2)
swirl67_886.Speed=nr(1,2)
swirl67_886.Rotation=nr(-180,180)
swirl67_886.RotSpeed=nr(90,120)
swirl67_886.Size=ns({nsk(0.000000,30.000000,0.000000),nsk(0.100000,29.727581,0.000000),nsk(0.200000,28.678331,0.000000),nsk(0.300000,26.932739,0.000000),nsk(0.400000,24.621016,0.000000),nsk(0.500000,21.842587,0.000000),nsk(0.600000,18.671091,0.000000),nsk(0.700000,15.162172,0.000000),nsk(0.800000,11.358953,0.000000),nsk(0.900000,7.295659,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
swirl67_886.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirl67_886.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
swirl67_886.LightEmission=1
swirl67_886.LightInfluence=0
swirl67_886.Acceleration=v3(0.000000,0.000000,0.000010)
swirl67_886.Drag=0
swirl67_886.EmissionDirection=Enum.NormalId.Top
swirl67_886.SpreadAngle=v2(2.000000,2.000000)
swirl67_886.ZOffset=0
swirl67_886.Texture="rbxassetid://117663097159743"
swirl67_886.LockedToPart=true
swirl67_886.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirl67_886.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirl67_886.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirl67_886.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirl67_886.FlipbookStartRandom=false
swirl67_886.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirl67_886.Brightness=0.30000001192092896






 swirl1_887=i("ParticleEmitter", floor_875)
swirl1_887.Name="swirl1"
swirl1_887:SetAttribute("EmitCount", 0)
swirl1_887:SetAttribute("AuraInstance", true)
swirl1_887.Enabled=true
swirl1_887.Rate=2
swirl1_887.Lifetime=nr(2,2)
swirl1_887.Speed=nr(1,2)
swirl1_887.Rotation=nr(-180,180)
swirl1_887.RotSpeed=nr(90,120)
swirl1_887.Size=ns({nsk(0.000000,30.000000,0.000000),nsk(0.100000,29.747761,0.000000),nsk(0.200000,28.776232,0.000000),nsk(0.300000,27.159945,0.000000),nsk(0.400000,25.019459,0.000000),nsk(0.500000,22.446838,0.000000),nsk(0.600000,19.510269,0.000000),nsk(0.700000,16.261271,0.000000),nsk(0.800000,12.739772,0.000000),nsk(0.900000,8.977462,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
swirl1_887.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirl1_887.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
swirl1_887.LightEmission=1
swirl1_887.LightInfluence=0
swirl1_887.Acceleration=v3(0.000000,0.000000,0.000010)
swirl1_887.Drag=0
swirl1_887.EmissionDirection=Enum.NormalId.Top
swirl1_887.SpreadAngle=v2(2.000000,2.000000)
swirl1_887.ZOffset=0
swirl1_887.Texture="rbxassetid://89913778292661"
swirl1_887.LockedToPart=true
swirl1_887.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirl1_887.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirl1_887.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirl1_887.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirl1_887.FlipbookStartRandom=false
swirl1_887.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirl1_887.Brightness=1






 debris_888=i("ParticleEmitter", floor_875)
debris_888.Name="debris"
debris_888:SetAttribute("EmitCount", 0)
debris_888:SetAttribute("AuraInstance", true)
debris_888.Enabled=true
debris_888.Rate=3
debris_888.Lifetime=nr(1.5,2)
debris_888.Speed=nr(1,2)
debris_888.Rotation=nr(-180,180)
debris_888.RotSpeed=nr(90,120)
debris_888.Size=ns({nsk(0.000000,15.000000,0.000000),nsk(0.100000,14.865132,0.000000),nsk(0.200000,14.417582,0.000000),nsk(0.300000,13.725260,0.000000),nsk(0.400000,12.842756,0.000000),nsk(0.500000,11.806173,0.000000),nsk(0.600000,10.640670,0.000000),nsk(0.700000,9.364676,0.000000),nsk(0.800000,7.992233,0.000000),nsk(0.900000,6.534378,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
debris_888.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
debris_888.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
debris_888.LightEmission=1
debris_888.LightInfluence=0
debris_888.Acceleration=v3(0.000000,0.000000,0.000010)
debris_888.Drag=0
debris_888.EmissionDirection=Enum.NormalId.Top
debris_888.SpreadAngle=v2(2.000000,2.000000)
debris_888.ZOffset=0
debris_888.Texture="rbxassetid://17311703172"
debris_888.LockedToPart=true
debris_888.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
debris_888.FlipbookLayout=Enum.ParticleFlipbookLayout.None
debris_888.FlipbookMode=Enum.ParticleFlipbookMode.Loop
debris_888.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
debris_888.FlipbookStartRandom=false
debris_888.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debris_888.Brightness=20






 debris_889=i("ParticleEmitter", floor_875)
debris_889.Name="debris"
debris_889:SetAttribute("EmitCount", 0)
debris_889:SetAttribute("AuraInstance", true)
debris_889.Enabled=true
debris_889.Rate=3
debris_889.Lifetime=nr(1.5,2)
debris_889.Speed=nr(1,2)
debris_889.Rotation=nr(-180,180)
debris_889.RotSpeed=nr(90,120)
debris_889.Size=ns({nsk(0.000000,35.000000,0.000000),nsk(0.100000,34.649952,0.000000),nsk(0.200000,33.396351,0.000000),nsk(0.300000,31.386328,0.000000),nsk(0.400000,28.776144,0.000000),nsk(0.500000,25.675978,0.000000),nsk(0.600000,22.164730,0.000000),nsk(0.700000,18.300999,0.000000),nsk(0.800000,14.129772,0.000000),nsk(0.900000,9.686552,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
debris_889.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
debris_889.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
debris_889.LightEmission=1
debris_889.LightInfluence=0
debris_889.Acceleration=v3(0.000000,0.000000,0.000010)
debris_889.Drag=0
debris_889.EmissionDirection=Enum.NormalId.Top
debris_889.SpreadAngle=v2(2.000000,2.000000)
debris_889.ZOffset=0
debris_889.Texture="rbxassetid://17311703172"
debris_889.LockedToPart=true
debris_889.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
debris_889.FlipbookLayout=Enum.ParticleFlipbookLayout.None
debris_889.FlipbookMode=Enum.ParticleFlipbookMode.Loop
debris_889.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
debris_889.FlipbookStartRandom=false
debris_889.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
debris_889.Brightness=20






 swirl67_890=i("ParticleEmitter", floor_875)
swirl67_890.Name="swirl67"
swirl67_890:SetAttribute("EmitCount", 0)
swirl67_890:SetAttribute("AuraInstance", true)
swirl67_890.Enabled=true
swirl67_890.Rate=2
swirl67_890.Lifetime=nr(2,2)
swirl67_890.Speed=nr(1.5,3)
swirl67_890.Rotation=nr(-180,180)
swirl67_890.RotSpeed=nr(90,120)
swirl67_890.Size=ns({nsk(0.000000,45.000000,0.000000),nsk(0.100000,44.591370,0.000000),nsk(0.200000,43.017498,0.000000),nsk(0.300000,40.399109,0.000000),nsk(0.400000,36.931522,0.000000),nsk(0.500000,32.763878,0.000000),nsk(0.600000,28.006638,0.000000),nsk(0.700000,22.743259,0.000000),nsk(0.800000,17.038429,0.000000),nsk(0.900000,10.943488,0.000000),nsk(1.000000,4.500000,0.000000),nsk(1.000000,4.500000,0.000000)})
swirl67_890.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
swirl67_890.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
swirl67_890.LightEmission=-1
swirl67_890.LightInfluence=0
swirl67_890.Acceleration=v3(0.000000,0.000000,0.000015)
swirl67_890.Drag=0
swirl67_890.EmissionDirection=Enum.NormalId.Top
swirl67_890.SpreadAngle=v2(2.000000,2.000000)
swirl67_890.ZOffset=0.0020000000949949026
swirl67_890.Texture="rbxassetid://117663097159743"
swirl67_890.LockedToPart=true
swirl67_890.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
swirl67_890.FlipbookLayout=Enum.ParticleFlipbookLayout.None
swirl67_890.FlipbookMode=Enum.ParticleFlipbookMode.Loop
swirl67_890.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
swirl67_890.FlipbookStartRandom=false
swirl67_890.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
swirl67_890.Brightness=0.10000000149011612






 overlay2_891=i("ParticleEmitter", floor_875)
overlay2_891.Name="overlay2"
overlay2_891:SetAttribute("EmitCount", 0)
overlay2_891:SetAttribute("AuraInstance", true)
overlay2_891.Enabled=true
overlay2_891.Rate=2
overlay2_891.Lifetime=nr(2,2)
overlay2_891.Speed=nr(0.75,1.5)
overlay2_891.Rotation=nr(-180,180)
overlay2_891.RotSpeed=nr(90,120)
overlay2_891.Size=ns({nsk(0.000000,22.500000,0.000000),nsk(0.100000,22.295685,0.000000),nsk(0.200000,21.508749,0.000000),nsk(0.300000,20.199554,0.000000),nsk(0.400000,18.465761,0.000000),nsk(0.500000,16.381939,0.000000),nsk(0.600000,14.003319,0.000000),nsk(0.700000,11.371630,0.000000),nsk(0.800000,8.519215,0.000000),nsk(0.900000,5.471744,0.000000),nsk(1.000000,2.250000,0.000000),nsk(1.000000,2.250000,0.000000)})
overlay2_891.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
overlay2_891.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
overlay2_891.LightEmission=-5
overlay2_891.LightInfluence=0
overlay2_891.Acceleration=v3(0.000000,0.000000,0.000007)
overlay2_891.Drag=0
overlay2_891.EmissionDirection=Enum.NormalId.Top
overlay2_891.SpreadAngle=v2(2.000000,2.000000)
overlay2_891.ZOffset=0.003000000026077032
overlay2_891.Texture="rbxassetid://76369245545989"
overlay2_891.LockedToPart=true
overlay2_891.Orientation=Enum.ParticleOrientation.VelocityPerpendicular
overlay2_891.FlipbookLayout=Enum.ParticleFlipbookLayout.None
overlay2_891.FlipbookMode=Enum.ParticleFlipbookMode.Loop
overlay2_891.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
overlay2_891.FlipbookStartRandom=false
overlay2_891.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
overlay2_891.Brightness=0.10000000149011612






 atmosphere_892=i("ParticleEmitter", floor_875)
atmosphere_892.Name="atmosphere"
atmosphere_892:SetAttribute("EmitCount", 0)
atmosphere_892:SetAttribute("AuraInstance", true)
atmosphere_892.Enabled=true
atmosphere_892.Rate=2
atmosphere_892.Lifetime=nr(2,2)
atmosphere_892.Speed=nr(1.5,3)
atmosphere_892.Rotation=nr(0,0)
atmosphere_892.RotSpeed=nr(0,0)
atmosphere_892.Size=ns({nsk(0.000000,45.000000,0.000000),nsk(0.100000,44.621643,0.000000),nsk(0.200000,43.164349,0.000000),nsk(0.300000,40.739918,0.000000),nsk(0.400000,37.529190,0.000000),nsk(0.500000,33.670258,0.000000),nsk(0.600000,29.265404,0.000000),nsk(0.700000,24.391907,0.000000),nsk(0.800000,19.109657,0.000000),nsk(0.900000,13.466192,0.000000),nsk(1.000000,7.500000,0.000000),nsk(1.000000,7.500000,0.000000)})
atmosphere_892.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
atmosphere_892.Color=cs({csk(0.000000,c3(1.000000,0.305882,0.305882)),csk(0.365052,c3(1.000000,0.164706,0.180392)),csk(0.719723,c3(1.000000,0.145098,0.160784)),csk(1.000000,c3(1.000000,0.305882,0.305882))})
atmosphere_892.LightEmission=-2
atmosphere_892.LightInfluence=0
atmosphere_892.Acceleration=v3(0.000000,0.000000,0.000015)
atmosphere_892.Drag=0
atmosphere_892.EmissionDirection=Enum.NormalId.Top
atmosphere_892.SpreadAngle=v2(2.000000,2.000000)
atmosphere_892.ZOffset=-15
atmosphere_892.Texture="rbxassetid://98046010009179"
atmosphere_892.LockedToPart=true
atmosphere_892.Orientation=Enum.ParticleOrientation.FacingCamera
atmosphere_892.FlipbookLayout=Enum.ParticleFlipbookLayout.None
atmosphere_892.FlipbookMode=Enum.ParticleFlipbookMode.Loop
atmosphere_892.FlipbookFramerate=nr(0.6704726815223694,0.6704726815223694)
atmosphere_892.FlipbookStartRandom=false
atmosphere_892.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
atmosphere_892.Brightness=0.30000001192092896






 ring_893=i("Attachment", Floor)
ring_893.Name="ring"
ring_893:SetAttribute("AuraInstance", true)
ring_893.Visible=false
ring_893.CFrame=cf(0,-1.8999996185302734,0,1,0,0,0,1,0,0,0,1)






 _2_894=i("Attachment", ring_893)
_2_894.Name="2"
_2_894:SetAttribute("AuraInstance", true)
_2_894.Visible=false
_2_894.CFrame=cf(-0.00000762939453125,0,-15.139995574951172,-1,0,0,0,1,0,0,0,-1)






 con_895=i("ParticleEmitter", _2_894)
con_895.Name="con"
con_895:SetAttribute("AuraInstance", true)
con_895.Enabled=true
con_895.Rate=7.199999809265137
con_895.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_895.Speed=nr(28.799999237060547,28.799999237060547)
con_895.Rotation=nr(0,0)
con_895.RotSpeed=nr(0,0)
con_895.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con_895.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_895.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_895.LightEmission=-1
con_895.LightInfluence=0
con_895.Acceleration=v3(0.000000,28.799999,-29.520000)
con_895.Drag=2.880000114440918
con_895.EmissionDirection=Enum.NormalId.Right
con_895.SpreadAngle=v2(20.000000,40.000000)
con_895.ZOffset=4
con_895.Texture="rbxassetid://14050078974"
con_895.LockedToPart=true
con_895.Orientation=Enum.ParticleOrientation.VelocityParallel
con_895.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_895.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_895.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_895.FlipbookStartRandom=false
con_895.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_895.Brightness=0.10000000149011612






 thing_896=i("ParticleEmitter", _2_894)
thing_896.Name="thing"
thing_896:SetAttribute("AuraInstance", true)
thing_896.Enabled=true
thing_896.Rate=2.880000114440918
thing_896.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_896.Speed=nr(28.799999237060547,28.799999237060547)
thing_896.Rotation=nr(90,90)
thing_896.RotSpeed=nr(0,0)
thing_896.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_896.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_896.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_896.LightEmission=1
thing_896.LightInfluence=0
thing_896.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_896.Drag=2.880000114440918
thing_896.EmissionDirection=Enum.NormalId.Right
thing_896.SpreadAngle=v2(20.000000,40.000000)
thing_896.ZOffset=5.000999927520752
thing_896.Texture="rbxassetid://16879591102"
thing_896.LockedToPart=true
thing_896.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_896.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_896.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_896.FlipbookFramerate=nr(72,72)
thing_896.FlipbookStartRandom=false
thing_896.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_896.Brightness=5






 star_897=i("ParticleEmitter", _2_894)
star_897.Name="star"
star_897:SetAttribute("AuraInstance", true)
star_897.Enabled=true
star_897.Rate=2.880000114440918
star_897.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_897.Speed=nr(20,20)
star_897.Rotation=nr(90,90)
star_897.RotSpeed=nr(0,0)
star_897.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_897.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_897.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_897.LightEmission=1
star_897.LightInfluence=0
star_897.Acceleration=v3(0.000000,30.431999,-25.893000)
star_897.Drag=2.880000114440918
star_897.EmissionDirection=Enum.NormalId.Right
star_897.SpreadAngle=v2(20.000000,40.000000)
star_897.ZOffset=5.000999927520752
star_897.Texture="rbxassetid://111508092337743"
star_897.LockedToPart=true
star_897.Orientation=Enum.ParticleOrientation.VelocityParallel
star_897.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_897.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_897.FlipbookFramerate=nr(72,72)
star_897.FlipbookStartRandom=false
star_897.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_897.Brightness=50






 con2_898=i("ParticleEmitter", _2_894)
con2_898.Name="con2"
con2_898:SetAttribute("AuraInstance", true)
con2_898.Enabled=true
con2_898.Rate=7.199999809265137
con2_898.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_898.Speed=nr(28.799999237060547,28.799999237060547)
con2_898.Rotation=nr(0,0)
con2_898.RotSpeed=nr(0,0)
con2_898.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con2_898.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_898.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_898.LightEmission=-1
con2_898.LightInfluence=0
con2_898.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_898.Drag=2.880000114440918
con2_898.EmissionDirection=Enum.NormalId.Right
con2_898.SpreadAngle=v2(20.000000,40.000000)
con2_898.ZOffset=4
con2_898.Texture="rbxassetid://72126171130861"
con2_898.LockedToPart=true
con2_898.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_898.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_898.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_898.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_898.FlipbookStartRandom=false
con2_898.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_898.Brightness=0.10000000149011612






 cloud_899=i("ParticleEmitter", _2_894)
cloud_899.Name="cloud"
cloud_899:SetAttribute("AuraInstance", true)
cloud_899.Enabled=true
cloud_899.Rate=4
cloud_899.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_899.Speed=nr(28.799999237060547,28.799999237060547)
cloud_899.Rotation=nr(180,180)
cloud_899.RotSpeed=nr(0,0)
cloud_899.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_899.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_899.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_899.LightEmission=-5
cloud_899.LightInfluence=0
cloud_899.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_899.Drag=2.880000114440918
cloud_899.EmissionDirection=Enum.NormalId.Right
cloud_899.SpreadAngle=v2(20.000000,40.000000)
cloud_899.ZOffset=5.000999927520752
cloud_899.Texture="rbxassetid://116615675769772"
cloud_899.LockedToPart=true
cloud_899.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_899.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_899.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_899.FlipbookFramerate=nr(72,72)
cloud_899.FlipbookStartRandom=false
cloud_899.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_899.Brightness=12.5






 noclue_900=i("ParticleEmitter", _2_894)
noclue_900.Name="noclue"
noclue_900:SetAttribute("AuraInstance", true)
noclue_900.Enabled=true
noclue_900.Rate=4
noclue_900.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_900.Speed=nr(28.799999237060547,28.799999237060547)
noclue_900.Rotation=nr(0,0)
noclue_900.RotSpeed=nr(0,0)
noclue_900.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_900.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_900.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_900.LightEmission=-5
noclue_900.LightInfluence=0
noclue_900.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_900.Drag=2.880000114440918
noclue_900.EmissionDirection=Enum.NormalId.Right
noclue_900.SpreadAngle=v2(20.000000,40.000000)
noclue_900.ZOffset=5.000999927520752
noclue_900.Texture="rbxassetid://106969664801014"
noclue_900.LockedToPart=true
noclue_900.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_900.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_900.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_900.FlipbookFramerate=nr(72,72)
noclue_900.FlipbookStartRandom=false
noclue_900.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_900.Brightness=25






 dotsfb_901=i("ParticleEmitter", _2_894)
dotsfb_901.Name="dotsfb"
dotsfb_901:SetAttribute("AuraInstance", true)
dotsfb_901.Enabled=true
dotsfb_901.Rate=7.199999809265137
dotsfb_901.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_901.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_901.Rotation=nr(0,0)
dotsfb_901.RotSpeed=nr(0,0)
dotsfb_901.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_901.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_901.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_901.LightEmission=1
dotsfb_901.LightInfluence=0
dotsfb_901.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_901.Drag=2.880000114440918
dotsfb_901.EmissionDirection=Enum.NormalId.Right
dotsfb_901.SpreadAngle=v2(20.000000,40.000000)
dotsfb_901.ZOffset=2
dotsfb_901.Texture="rbxassetid://128665895806479"
dotsfb_901.LockedToPart=true
dotsfb_901.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_901.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_901.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_901.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_901.FlipbookStartRandom=false
dotsfb_901.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_901.Brightness=50






 things_902=i("ParticleEmitter", _2_894)
things_902.Name="things"
things_902:SetAttribute("AuraInstance", true)
things_902.Enabled=true
things_902.Rate=3
things_902.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_902.Speed=nr(28.799999237060547,28.799999237060547)
things_902.Rotation=nr(0,0)
things_902.RotSpeed=nr(0,0)
things_902.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_902.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_902.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_902.LightEmission=1
things_902.LightInfluence=0
things_902.Acceleration=v3(0.000000,40.000000,-29.520000)
things_902.Drag=2.880000114440918
things_902.EmissionDirection=Enum.NormalId.Right
things_902.SpreadAngle=v2(20.000000,40.000000)
things_902.ZOffset=2
things_902.Texture="rbxassetid://131246143677315"
things_902.LockedToPart=true
things_902.Orientation=Enum.ParticleOrientation.VelocityParallel
things_902.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_902.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_902.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_902.FlipbookStartRandom=false
things_902.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_902.Brightness=3






 Attachment_903=i("Attachment", ring_893)
Attachment_903.Name="Attachment"
Attachment_903:SetAttribute("AuraInstance", true)
Attachment_903.Visible=false
Attachment_903.CFrame=cf(15.139991760253906,0.00006103515625,0.000003814697265625,0,0,1,0,1,-0,-1,0,0)






 thing_904=i("ParticleEmitter", Attachment_903)
thing_904.Name="thing"
thing_904:SetAttribute("AuraInstance", true)
thing_904.Enabled=true
thing_904.Rate=2.880000114440918
thing_904.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_904.Speed=nr(28.799999237060547,28.799999237060547)
thing_904.Rotation=nr(90,90)
thing_904.RotSpeed=nr(0,0)
thing_904.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_904.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_904.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_904.LightEmission=1
thing_904.LightInfluence=0
thing_904.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_904.Drag=2.880000114440918
thing_904.EmissionDirection=Enum.NormalId.Right
thing_904.SpreadAngle=v2(20.000000,40.000000)
thing_904.ZOffset=5.000999927520752
thing_904.Texture="rbxassetid://16879591102"
thing_904.LockedToPart=true
thing_904.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_904.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_904.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_904.FlipbookFramerate=nr(72,72)
thing_904.FlipbookStartRandom=false
thing_904.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_904.Brightness=5






 con_905=i("ParticleEmitter", Attachment_903)
con_905.Name="con"
con_905:SetAttribute("AuraInstance", true)
con_905.Enabled=true
con_905.Rate=7.199999809265137
con_905.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_905.Speed=nr(28.799999237060547,28.799999237060547)
con_905.Rotation=nr(0,0)
con_905.RotSpeed=nr(0,0)
con_905.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con_905.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_905.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_905.LightEmission=-1
con_905.LightInfluence=0
con_905.Acceleration=v3(0.000000,28.799999,-29.520000)
con_905.Drag=2.880000114440918
con_905.EmissionDirection=Enum.NormalId.Right
con_905.SpreadAngle=v2(20.000000,40.000000)
con_905.ZOffset=4
con_905.Texture="rbxassetid://14050078974"
con_905.LockedToPart=true
con_905.Orientation=Enum.ParticleOrientation.VelocityParallel
con_905.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_905.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_905.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_905.FlipbookStartRandom=false
con_905.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_905.Brightness=0.10000000149011612






 star_906=i("ParticleEmitter", Attachment_903)
star_906.Name="star"
star_906:SetAttribute("AuraInstance", true)
star_906.Enabled=true
star_906.Rate=2.880000114440918
star_906.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_906.Speed=nr(20,20)
star_906.Rotation=nr(90,90)
star_906.RotSpeed=nr(0,0)
star_906.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_906.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_906.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_906.LightEmission=1
star_906.LightInfluence=0
star_906.Acceleration=v3(0.000000,30.431999,-25.893000)
star_906.Drag=2.880000114440918
star_906.EmissionDirection=Enum.NormalId.Right
star_906.SpreadAngle=v2(20.000000,40.000000)
star_906.ZOffset=5.000999927520752
star_906.Texture="rbxassetid://111508092337743"
star_906.LockedToPart=true
star_906.Orientation=Enum.ParticleOrientation.VelocityParallel
star_906.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_906.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_906.FlipbookFramerate=nr(72,72)
star_906.FlipbookStartRandom=false
star_906.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_906.Brightness=50






 con2_907=i("ParticleEmitter", Attachment_903)
con2_907.Name="con2"
con2_907:SetAttribute("AuraInstance", true)
con2_907.Enabled=true
con2_907.Rate=7.199999809265137
con2_907.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_907.Speed=nr(28.799999237060547,28.799999237060547)
con2_907.Rotation=nr(0,0)
con2_907.RotSpeed=nr(0,0)
con2_907.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con2_907.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_907.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_907.LightEmission=-1
con2_907.LightInfluence=0
con2_907.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_907.Drag=2.880000114440918
con2_907.EmissionDirection=Enum.NormalId.Right
con2_907.SpreadAngle=v2(20.000000,40.000000)
con2_907.ZOffset=4
con2_907.Texture="rbxassetid://72126171130861"
con2_907.LockedToPart=true
con2_907.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_907.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_907.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_907.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_907.FlipbookStartRandom=false
con2_907.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_907.Brightness=0.10000000149011612






 cloud_908=i("ParticleEmitter", Attachment_903)
cloud_908.Name="cloud"
cloud_908:SetAttribute("AuraInstance", true)
cloud_908.Enabled=true
cloud_908.Rate=4
cloud_908.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_908.Speed=nr(28.799999237060547,28.799999237060547)
cloud_908.Rotation=nr(180,180)
cloud_908.RotSpeed=nr(0,0)
cloud_908.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_908.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_908.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_908.LightEmission=-5
cloud_908.LightInfluence=0
cloud_908.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_908.Drag=2.880000114440918
cloud_908.EmissionDirection=Enum.NormalId.Right
cloud_908.SpreadAngle=v2(20.000000,40.000000)
cloud_908.ZOffset=5.000999927520752
cloud_908.Texture="rbxassetid://116615675769772"
cloud_908.LockedToPart=true
cloud_908.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_908.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_908.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_908.FlipbookFramerate=nr(72,72)
cloud_908.FlipbookStartRandom=false
cloud_908.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_908.Brightness=12.5






 noclue_909=i("ParticleEmitter", Attachment_903)
noclue_909.Name="noclue"
noclue_909:SetAttribute("AuraInstance", true)
noclue_909.Enabled=true
noclue_909.Rate=4
noclue_909.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_909.Speed=nr(28.799999237060547,28.799999237060547)
noclue_909.Rotation=nr(0,0)
noclue_909.RotSpeed=nr(0,0)
noclue_909.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_909.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_909.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_909.LightEmission=-5
noclue_909.LightInfluence=0
noclue_909.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_909.Drag=2.880000114440918
noclue_909.EmissionDirection=Enum.NormalId.Right
noclue_909.SpreadAngle=v2(20.000000,40.000000)
noclue_909.ZOffset=5.000999927520752
noclue_909.Texture="rbxassetid://106969664801014"
noclue_909.LockedToPart=true
noclue_909.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_909.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_909.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_909.FlipbookFramerate=nr(72,72)
noclue_909.FlipbookStartRandom=false
noclue_909.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_909.Brightness=25






 dotsfb_910=i("ParticleEmitter", Attachment_903)
dotsfb_910.Name="dotsfb"
dotsfb_910:SetAttribute("AuraInstance", true)
dotsfb_910.Enabled=true
dotsfb_910.Rate=7.199999809265137
dotsfb_910.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_910.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_910.Rotation=nr(0,0)
dotsfb_910.RotSpeed=nr(0,0)
dotsfb_910.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_910.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_910.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_910.LightEmission=1
dotsfb_910.LightInfluence=0
dotsfb_910.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_910.Drag=2.880000114440918
dotsfb_910.EmissionDirection=Enum.NormalId.Right
dotsfb_910.SpreadAngle=v2(20.000000,40.000000)
dotsfb_910.ZOffset=2
dotsfb_910.Texture="rbxassetid://128665895806479"
dotsfb_910.LockedToPart=true
dotsfb_910.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_910.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_910.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_910.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_910.FlipbookStartRandom=false
dotsfb_910.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_910.Brightness=50






 things_911=i("ParticleEmitter", Attachment_903)
things_911.Name="things"
things_911:SetAttribute("AuraInstance", true)
things_911.Enabled=true
things_911.Rate=3
things_911.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_911.Speed=nr(28.799999237060547,28.799999237060547)
things_911.Rotation=nr(0,0)
things_911.RotSpeed=nr(0,0)
things_911.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_911.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_911.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_911.LightEmission=1
things_911.LightInfluence=0
things_911.Acceleration=v3(0.000000,40.000000,-29.520000)
things_911.Drag=2.880000114440918
things_911.EmissionDirection=Enum.NormalId.Right
things_911.SpreadAngle=v2(20.000000,40.000000)
things_911.ZOffset=2
things_911.Texture="rbxassetid://131246143677315"
things_911.LockedToPart=true
things_911.Orientation=Enum.ParticleOrientation.VelocityParallel
things_911.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_911.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_911.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_911.FlipbookStartRandom=false
things_911.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_911.Brightness=3






 Attachment_912=i("Attachment", ring_893)
Attachment_912.Name="Attachment"
Attachment_912:SetAttribute("AuraInstance", true)
Attachment_912.Visible=false
Attachment_912.CFrame=cf(-15.139991760253906,-0.000003814697265625,-0.000003814697265625,0,0,-1,0,1,0,1,0,0)






 con_913=i("ParticleEmitter", Attachment_912)
con_913.Name="con"
con_913:SetAttribute("AuraInstance", true)
con_913.Enabled=true
con_913.Rate=7.199999809265137
con_913.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_913.Speed=nr(28.799999237060547,28.799999237060547)
con_913.Rotation=nr(0,0)
con_913.RotSpeed=nr(0,0)
con_913.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con_913.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_913.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_913.LightEmission=-1
con_913.LightInfluence=0
con_913.Acceleration=v3(0.000000,28.799999,-29.520000)
con_913.Drag=2.880000114440918
con_913.EmissionDirection=Enum.NormalId.Right
con_913.SpreadAngle=v2(20.000000,40.000000)
con_913.ZOffset=4
con_913.Texture="rbxassetid://14050078974"
con_913.LockedToPart=true
con_913.Orientation=Enum.ParticleOrientation.VelocityParallel
con_913.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_913.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_913.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_913.FlipbookStartRandom=false
con_913.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_913.Brightness=0.10000000149011612






 star_914=i("ParticleEmitter", Attachment_912)
star_914.Name="star"
star_914:SetAttribute("AuraInstance", true)
star_914.Enabled=true
star_914.Rate=2.880000114440918
star_914.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_914.Speed=nr(20,20)
star_914.Rotation=nr(90,90)
star_914.RotSpeed=nr(0,0)
star_914.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_914.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_914.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_914.LightEmission=1
star_914.LightInfluence=0
star_914.Acceleration=v3(0.000000,30.431999,-25.893000)
star_914.Drag=2.880000114440918
star_914.EmissionDirection=Enum.NormalId.Right
star_914.SpreadAngle=v2(20.000000,40.000000)
star_914.ZOffset=5.000999927520752
star_914.Texture="rbxassetid://111508092337743"
star_914.LockedToPart=true
star_914.Orientation=Enum.ParticleOrientation.VelocityParallel
star_914.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_914.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_914.FlipbookFramerate=nr(72,72)
star_914.FlipbookStartRandom=false
star_914.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_914.Brightness=50






 con2_915=i("ParticleEmitter", Attachment_912)
con2_915.Name="con2"
con2_915:SetAttribute("AuraInstance", true)
con2_915.Enabled=true
con2_915.Rate=7.199999809265137
con2_915.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_915.Speed=nr(28.799999237060547,28.799999237060547)
con2_915.Rotation=nr(0,0)
con2_915.RotSpeed=nr(0,0)
con2_915.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con2_915.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_915.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_915.LightEmission=-1
con2_915.LightInfluence=0
con2_915.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_915.Drag=2.880000114440918
con2_915.EmissionDirection=Enum.NormalId.Right
con2_915.SpreadAngle=v2(20.000000,40.000000)
con2_915.ZOffset=4
con2_915.Texture="rbxassetid://72126171130861"
con2_915.LockedToPart=true
con2_915.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_915.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_915.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_915.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_915.FlipbookStartRandom=false
con2_915.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_915.Brightness=0.10000000149011612






 cloud_916=i("ParticleEmitter", Attachment_912)
cloud_916.Name="cloud"
cloud_916:SetAttribute("AuraInstance", true)
cloud_916.Enabled=true
cloud_916.Rate=4
cloud_916.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_916.Speed=nr(28.799999237060547,28.799999237060547)
cloud_916.Rotation=nr(180,180)
cloud_916.RotSpeed=nr(0,0)
cloud_916.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_916.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_916.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_916.LightEmission=-5
cloud_916.LightInfluence=0
cloud_916.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_916.Drag=2.880000114440918
cloud_916.EmissionDirection=Enum.NormalId.Right
cloud_916.SpreadAngle=v2(20.000000,40.000000)
cloud_916.ZOffset=5.000999927520752
cloud_916.Texture="rbxassetid://116615675769772"
cloud_916.LockedToPart=true
cloud_916.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_916.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_916.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_916.FlipbookFramerate=nr(72,72)
cloud_916.FlipbookStartRandom=false
cloud_916.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_916.Brightness=12.5






 noclue_917=i("ParticleEmitter", Attachment_912)
noclue_917.Name="noclue"
noclue_917:SetAttribute("AuraInstance", true)
noclue_917.Enabled=true
noclue_917.Rate=4
noclue_917.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_917.Speed=nr(28.799999237060547,28.799999237060547)
noclue_917.Rotation=nr(0,0)
noclue_917.RotSpeed=nr(0,0)
noclue_917.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_917.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_917.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_917.LightEmission=-5
noclue_917.LightInfluence=0
noclue_917.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_917.Drag=2.880000114440918
noclue_917.EmissionDirection=Enum.NormalId.Right
noclue_917.SpreadAngle=v2(20.000000,40.000000)
noclue_917.ZOffset=5.000999927520752
noclue_917.Texture="rbxassetid://106969664801014"
noclue_917.LockedToPart=true
noclue_917.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_917.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_917.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_917.FlipbookFramerate=nr(72,72)
noclue_917.FlipbookStartRandom=false
noclue_917.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_917.Brightness=25






 dotsfb_918=i("ParticleEmitter", Attachment_912)
dotsfb_918.Name="dotsfb"
dotsfb_918:SetAttribute("AuraInstance", true)
dotsfb_918.Enabled=true
dotsfb_918.Rate=7.199999809265137
dotsfb_918.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_918.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_918.Rotation=nr(0,0)
dotsfb_918.RotSpeed=nr(0,0)
dotsfb_918.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_918.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_918.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_918.LightEmission=1
dotsfb_918.LightInfluence=0
dotsfb_918.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_918.Drag=2.880000114440918
dotsfb_918.EmissionDirection=Enum.NormalId.Right
dotsfb_918.SpreadAngle=v2(20.000000,40.000000)
dotsfb_918.ZOffset=2
dotsfb_918.Texture="rbxassetid://128665895806479"
dotsfb_918.LockedToPart=true
dotsfb_918.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_918.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_918.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_918.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_918.FlipbookStartRandom=false
dotsfb_918.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_918.Brightness=50






 things_919=i("ParticleEmitter", Attachment_912)
things_919.Name="things"
things_919:SetAttribute("AuraInstance", true)
things_919.Enabled=true
things_919.Rate=3
things_919.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_919.Speed=nr(28.799999237060547,28.799999237060547)
things_919.Rotation=nr(0,0)
things_919.RotSpeed=nr(0,0)
things_919.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_919.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_919.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_919.LightEmission=1
things_919.LightInfluence=0
things_919.Acceleration=v3(0.000000,40.000000,-29.520000)
things_919.Drag=2.880000114440918
things_919.EmissionDirection=Enum.NormalId.Right
things_919.SpreadAngle=v2(20.000000,40.000000)
things_919.ZOffset=2
things_919.Texture="rbxassetid://131246143677315"
things_919.LockedToPart=true
things_919.Orientation=Enum.ParticleOrientation.VelocityParallel
things_919.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_919.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_919.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_919.FlipbookStartRandom=false
things_919.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_919.Brightness=3






 thing_920=i("ParticleEmitter", Attachment_912)
thing_920.Name="thing"
thing_920:SetAttribute("AuraInstance", true)
thing_920.Enabled=true
thing_920.Rate=2.880000114440918
thing_920.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_920.Speed=nr(28.799999237060547,28.799999237060547)
thing_920.Rotation=nr(90,90)
thing_920.RotSpeed=nr(0,0)
thing_920.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_920.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_920.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_920.LightEmission=1
thing_920.LightInfluence=0
thing_920.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_920.Drag=2.880000114440918
thing_920.EmissionDirection=Enum.NormalId.Right
thing_920.SpreadAngle=v2(20.000000,40.000000)
thing_920.ZOffset=5.000999927520752
thing_920.Texture="rbxassetid://16879591102"
thing_920.LockedToPart=true
thing_920.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_920.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_920.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_920.FlipbookFramerate=nr(72,72)
thing_920.FlipbookStartRandom=false
thing_920.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_920.Brightness=5






 Attachment_921=i("Attachment", ring_893)
Attachment_921.Name="Attachment"
Attachment_921:SetAttribute("AuraInstance", true)
Attachment_921.Visible=false
Attachment_921.CFrame=cf(10.70556640625,0.0000591278076171875,10.70562744140625,0.7071342468261719,0,0.707079291343689,0,1,-0,-0.707079291343689,0,0.7071342468261719)






 thing_922=i("ParticleEmitter", Attachment_921)
thing_922.Name="thing"
thing_922:SetAttribute("AuraInstance", true)
thing_922.Enabled=true
thing_922.Rate=2.880000114440918
thing_922.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_922.Speed=nr(28.799999237060547,28.799999237060547)
thing_922.Rotation=nr(90,90)
thing_922.RotSpeed=nr(0,0)
thing_922.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_922.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_922.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_922.LightEmission=1
thing_922.LightInfluence=0
thing_922.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_922.Drag=2.880000114440918
thing_922.EmissionDirection=Enum.NormalId.Right
thing_922.SpreadAngle=v2(20.000000,40.000000)
thing_922.ZOffset=5.000999927520752
thing_922.Texture="rbxassetid://16879591102"
thing_922.LockedToPart=true
thing_922.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_922.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_922.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_922.FlipbookFramerate=nr(72,72)
thing_922.FlipbookStartRandom=false
thing_922.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_922.Brightness=5






 con_923=i("ParticleEmitter", Attachment_921)
con_923.Name="con"
con_923:SetAttribute("AuraInstance", true)
con_923.Enabled=true
con_923.Rate=7.199999809265137
con_923.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_923.Speed=nr(28.799999237060547,28.799999237060547)
con_923.Rotation=nr(0,0)
con_923.RotSpeed=nr(0,0)
con_923.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con_923.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_923.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_923.LightEmission=-1
con_923.LightInfluence=0
con_923.Acceleration=v3(0.000000,28.799999,-29.520000)
con_923.Drag=2.880000114440918
con_923.EmissionDirection=Enum.NormalId.Right
con_923.SpreadAngle=v2(20.000000,40.000000)
con_923.ZOffset=4
con_923.Texture="rbxassetid://14050078974"
con_923.LockedToPart=true
con_923.Orientation=Enum.ParticleOrientation.VelocityParallel
con_923.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_923.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_923.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_923.FlipbookStartRandom=false
con_923.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_923.Brightness=0.10000000149011612






 star_924=i("ParticleEmitter", Attachment_921)
star_924.Name="star"
star_924:SetAttribute("AuraInstance", true)
star_924.Enabled=true
star_924.Rate=2.880000114440918
star_924.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_924.Speed=nr(20,20)
star_924.Rotation=nr(90,90)
star_924.RotSpeed=nr(0,0)
star_924.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_924.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_924.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_924.LightEmission=1
star_924.LightInfluence=0
star_924.Acceleration=v3(0.000000,30.431999,-25.893000)
star_924.Drag=2.880000114440918
star_924.EmissionDirection=Enum.NormalId.Right
star_924.SpreadAngle=v2(20.000000,40.000000)
star_924.ZOffset=5.000999927520752
star_924.Texture="rbxassetid://111508092337743"
star_924.LockedToPart=true
star_924.Orientation=Enum.ParticleOrientation.VelocityParallel
star_924.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_924.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_924.FlipbookFramerate=nr(72,72)
star_924.FlipbookStartRandom=false
star_924.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_924.Brightness=50






 con2_925=i("ParticleEmitter", Attachment_921)
con2_925.Name="con2"
con2_925:SetAttribute("AuraInstance", true)
con2_925.Enabled=true
con2_925.Rate=7.199999809265137
con2_925.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_925.Speed=nr(28.799999237060547,28.799999237060547)
con2_925.Rotation=nr(0,0)
con2_925.RotSpeed=nr(0,0)
con2_925.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con2_925.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_925.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_925.LightEmission=-1
con2_925.LightInfluence=0
con2_925.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_925.Drag=2.880000114440918
con2_925.EmissionDirection=Enum.NormalId.Right
con2_925.SpreadAngle=v2(20.000000,40.000000)
con2_925.ZOffset=4
con2_925.Texture="rbxassetid://72126171130861"
con2_925.LockedToPart=true
con2_925.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_925.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_925.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_925.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_925.FlipbookStartRandom=false
con2_925.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_925.Brightness=0.10000000149011612






 cloud_926=i("ParticleEmitter", Attachment_921)
cloud_926.Name="cloud"
cloud_926:SetAttribute("AuraInstance", true)
cloud_926.Enabled=true
cloud_926.Rate=4
cloud_926.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_926.Speed=nr(28.799999237060547,28.799999237060547)
cloud_926.Rotation=nr(180,180)
cloud_926.RotSpeed=nr(0,0)
cloud_926.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_926.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_926.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_926.LightEmission=-5
cloud_926.LightInfluence=0
cloud_926.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_926.Drag=2.880000114440918
cloud_926.EmissionDirection=Enum.NormalId.Right
cloud_926.SpreadAngle=v2(20.000000,40.000000)
cloud_926.ZOffset=5.000999927520752
cloud_926.Texture="rbxassetid://116615675769772"
cloud_926.LockedToPart=true
cloud_926.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_926.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_926.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_926.FlipbookFramerate=nr(72,72)
cloud_926.FlipbookStartRandom=false
cloud_926.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_926.Brightness=12.5






 noclue_927=i("ParticleEmitter", Attachment_921)
noclue_927.Name="noclue"
noclue_927:SetAttribute("AuraInstance", true)
noclue_927.Enabled=true
noclue_927.Rate=4
noclue_927.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_927.Speed=nr(28.799999237060547,28.799999237060547)
noclue_927.Rotation=nr(0,0)
noclue_927.RotSpeed=nr(0,0)
noclue_927.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_927.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_927.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_927.LightEmission=-5
noclue_927.LightInfluence=0
noclue_927.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_927.Drag=2.880000114440918
noclue_927.EmissionDirection=Enum.NormalId.Right
noclue_927.SpreadAngle=v2(20.000000,40.000000)
noclue_927.ZOffset=5.000999927520752
noclue_927.Texture="rbxassetid://106969664801014"
noclue_927.LockedToPart=true
noclue_927.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_927.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_927.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_927.FlipbookFramerate=nr(72,72)
noclue_927.FlipbookStartRandom=false
noclue_927.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_927.Brightness=25






 dotsfb_928=i("ParticleEmitter", Attachment_921)
dotsfb_928.Name="dotsfb"
dotsfb_928:SetAttribute("AuraInstance", true)
dotsfb_928.Enabled=true
dotsfb_928.Rate=7.199999809265137
dotsfb_928.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_928.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_928.Rotation=nr(0,0)
dotsfb_928.RotSpeed=nr(0,0)
dotsfb_928.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_928.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_928.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_928.LightEmission=1
dotsfb_928.LightInfluence=0
dotsfb_928.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_928.Drag=2.880000114440918
dotsfb_928.EmissionDirection=Enum.NormalId.Right
dotsfb_928.SpreadAngle=v2(20.000000,40.000000)
dotsfb_928.ZOffset=2
dotsfb_928.Texture="rbxassetid://128665895806479"
dotsfb_928.LockedToPart=true
dotsfb_928.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_928.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_928.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_928.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_928.FlipbookStartRandom=false
dotsfb_928.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_928.Brightness=50






 things_929=i("ParticleEmitter", Attachment_921)
things_929.Name="things"
things_929:SetAttribute("AuraInstance", true)
things_929.Enabled=true
things_929.Rate=3
things_929.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_929.Speed=nr(28.799999237060547,28.799999237060547)
things_929.Rotation=nr(0,0)
things_929.RotSpeed=nr(0,0)
things_929.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_929.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_929.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_929.LightEmission=1
things_929.LightInfluence=0
things_929.Acceleration=v3(0.000000,40.000000,-29.520000)
things_929.Drag=2.880000114440918
things_929.EmissionDirection=Enum.NormalId.Right
things_929.SpreadAngle=v2(20.000000,40.000000)
things_929.ZOffset=2
things_929.Texture="rbxassetid://131246143677315"
things_929.LockedToPart=true
things_929.Orientation=Enum.ParticleOrientation.VelocityParallel
things_929.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_929.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_929.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_929.FlipbookStartRandom=false
things_929.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_929.Brightness=3






 Attachment_930=i("Attachment", ring_893)
Attachment_930.Name="Attachment"
Attachment_930:SetAttribute("AuraInstance", true)
Attachment_930.Visible=false
Attachment_930.CFrame=cf(-10.705619812011719,-0.000003814697265625,-10.705615997314453,-0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,-0.7071342468261719)






 thing_931=i("ParticleEmitter", Attachment_930)
thing_931.Name="thing"
thing_931:SetAttribute("AuraInstance", true)
thing_931.Enabled=true
thing_931.Rate=2.880000114440918
thing_931.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_931.Speed=nr(28.799999237060547,28.799999237060547)
thing_931.Rotation=nr(90,90)
thing_931.RotSpeed=nr(0,0)
thing_931.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_931.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_931.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_931.LightEmission=1
thing_931.LightInfluence=0
thing_931.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_931.Drag=2.880000114440918
thing_931.EmissionDirection=Enum.NormalId.Right
thing_931.SpreadAngle=v2(20.000000,40.000000)
thing_931.ZOffset=5.000999927520752
thing_931.Texture="rbxassetid://16879591102"
thing_931.LockedToPart=true
thing_931.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_931.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_931.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_931.FlipbookFramerate=nr(72,72)
thing_931.FlipbookStartRandom=false
thing_931.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_931.Brightness=5






 con_932=i("ParticleEmitter", Attachment_930)
con_932.Name="con"
con_932:SetAttribute("AuraInstance", true)
con_932.Enabled=true
con_932.Rate=7.199999809265137
con_932.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_932.Speed=nr(28.799999237060547,28.799999237060547)
con_932.Rotation=nr(0,0)
con_932.RotSpeed=nr(0,0)
con_932.Size=ns({nsk(0.000000,5.625000,2.250000),nsk(1.000000,5.625000,2.250000)})
con_932.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_932.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_932.LightEmission=-1
con_932.LightInfluence=0
con_932.Acceleration=v3(0.000000,28.799999,-29.520000)
con_932.Drag=2.880000114440918
con_932.EmissionDirection=Enum.NormalId.Right
con_932.SpreadAngle=v2(20.000000,40.000000)
con_932.ZOffset=4
con_932.Texture="rbxassetid://14050078974"
con_932.LockedToPart=true
con_932.Orientation=Enum.ParticleOrientation.VelocityParallel
con_932.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_932.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_932.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_932.FlipbookStartRandom=false
con_932.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_932.Brightness=0.10000000149011612






 star_933=i("ParticleEmitter", Attachment_930)
star_933.Name="star"
star_933:SetAttribute("AuraInstance", true)
star_933.Enabled=true
star_933.Rate=2.880000114440918
star_933.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_933.Speed=nr(20,20)
star_933.Rotation=nr(90,90)
star_933.RotSpeed=nr(0,0)
star_933.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_933.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_933.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_933.LightEmission=1
star_933.LightInfluence=0
star_933.Acceleration=v3(0.000000,30.431999,-25.893000)
star_933.Drag=2.880000114440918
star_933.EmissionDirection=Enum.NormalId.Right
star_933.SpreadAngle=v2(20.000000,40.000000)
star_933.ZOffset=5.000999927520752
star_933.Texture="rbxassetid://111508092337743"
star_933.LockedToPart=true
star_933.Orientation=Enum.ParticleOrientation.VelocityParallel
star_933.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_933.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_933.FlipbookFramerate=nr(72,72)
star_933.FlipbookStartRandom=false
star_933.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_933.Brightness=50






 con2_934=i("ParticleEmitter", Attachment_930)
con2_934.Name="con2"
con2_934:SetAttribute("AuraInstance", true)
con2_934.Enabled=true
con2_934.Rate=7.199999809265137
con2_934.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_934.Speed=nr(28.799999237060547,28.799999237060547)
con2_934.Rotation=nr(0,0)
con2_934.RotSpeed=nr(0,0)
con2_934.Size=ns({nsk(0.000000,5.625000,2.250000),nsk(1.000000,5.625000,2.250000)})
con2_934.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_934.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_934.LightEmission=-1
con2_934.LightInfluence=0
con2_934.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_934.Drag=2.880000114440918
con2_934.EmissionDirection=Enum.NormalId.Right
con2_934.SpreadAngle=v2(20.000000,40.000000)
con2_934.ZOffset=4
con2_934.Texture="rbxassetid://72126171130861"
con2_934.LockedToPart=true
con2_934.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_934.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_934.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_934.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_934.FlipbookStartRandom=false
con2_934.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_934.Brightness=0.10000000149011612






 cloud_935=i("ParticleEmitter", Attachment_930)
cloud_935.Name="cloud"
cloud_935:SetAttribute("AuraInstance", true)
cloud_935.Enabled=true
cloud_935.Rate=4
cloud_935.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_935.Speed=nr(28.799999237060547,28.799999237060547)
cloud_935.Rotation=nr(180,180)
cloud_935.RotSpeed=nr(0,0)
cloud_935.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_935.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_935.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_935.LightEmission=-5
cloud_935.LightInfluence=0
cloud_935.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_935.Drag=2.880000114440918
cloud_935.EmissionDirection=Enum.NormalId.Right
cloud_935.SpreadAngle=v2(20.000000,40.000000)
cloud_935.ZOffset=5.000999927520752
cloud_935.Texture="rbxassetid://116615675769772"
cloud_935.LockedToPart=true
cloud_935.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_935.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_935.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_935.FlipbookFramerate=nr(72,72)
cloud_935.FlipbookStartRandom=false
cloud_935.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_935.Brightness=12.5






 noclue_936=i("ParticleEmitter", Attachment_930)
noclue_936.Name="noclue"
noclue_936:SetAttribute("AuraInstance", true)
noclue_936.Enabled=true
noclue_936.Rate=4
noclue_936.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_936.Speed=nr(28.799999237060547,28.799999237060547)
noclue_936.Rotation=nr(0,0)
noclue_936.RotSpeed=nr(0,0)
noclue_936.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_936.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_936.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_936.LightEmission=-5
noclue_936.LightInfluence=0
noclue_936.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_936.Drag=2.880000114440918
noclue_936.EmissionDirection=Enum.NormalId.Right
noclue_936.SpreadAngle=v2(20.000000,40.000000)
noclue_936.ZOffset=5.000999927520752
noclue_936.Texture="rbxassetid://106969664801014"
noclue_936.LockedToPart=true
noclue_936.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_936.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_936.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_936.FlipbookFramerate=nr(72,72)
noclue_936.FlipbookStartRandom=false
noclue_936.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_936.Brightness=25






 dotsfb_937=i("ParticleEmitter", Attachment_930)
dotsfb_937.Name="dotsfb"
dotsfb_937:SetAttribute("AuraInstance", true)
dotsfb_937.Enabled=true
dotsfb_937.Rate=7.199999809265137
dotsfb_937.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_937.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_937.Rotation=nr(0,0)
dotsfb_937.RotSpeed=nr(0,0)
dotsfb_937.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_937.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_937.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_937.LightEmission=1
dotsfb_937.LightInfluence=0
dotsfb_937.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_937.Drag=2.880000114440918
dotsfb_937.EmissionDirection=Enum.NormalId.Right
dotsfb_937.SpreadAngle=v2(20.000000,40.000000)
dotsfb_937.ZOffset=2
dotsfb_937.Texture="rbxassetid://128665895806479"
dotsfb_937.LockedToPart=true
dotsfb_937.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_937.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_937.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_937.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_937.FlipbookStartRandom=false
dotsfb_937.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_937.Brightness=50






 things_938=i("ParticleEmitter", Attachment_930)
things_938.Name="things"
things_938:SetAttribute("AuraInstance", true)
things_938.Enabled=true
things_938.Rate=3
things_938.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_938.Speed=nr(28.799999237060547,28.799999237060547)
things_938.Rotation=nr(0,0)
things_938.RotSpeed=nr(0,0)
things_938.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_938.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_938.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_938.LightEmission=1
things_938.LightInfluence=0
things_938.Acceleration=v3(0.000000,40.000000,-29.520000)
things_938.Drag=2.880000114440918
things_938.EmissionDirection=Enum.NormalId.Right
things_938.SpreadAngle=v2(20.000000,40.000000)
things_938.ZOffset=2
things_938.Texture="rbxassetid://131246143677315"
things_938.LockedToPart=true
things_938.Orientation=Enum.ParticleOrientation.VelocityParallel
things_938.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_938.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_938.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_938.FlipbookStartRandom=false
things_938.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_938.Brightness=3






 Attachment_939=i("Attachment", ring_893)
Attachment_939.Name="Attachment"
Attachment_939:SetAttribute("AuraInstance", true)
Attachment_939.Visible=false
Attachment_939.CFrame=cf(10.70556640625,0.0000591278076171875,-10.705570220947266,-0.7071342468261719,0,0.707079291343689,0,1,0,-0.707079291343689,0,-0.7071342468261719)






 thing_940=i("ParticleEmitter", Attachment_939)
thing_940.Name="thing"
thing_940:SetAttribute("AuraInstance", true)
thing_940.Enabled=true
thing_940.Rate=2.880000114440918
thing_940.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_940.Speed=nr(28.799999237060547,28.799999237060547)
thing_940.Rotation=nr(90,90)
thing_940.RotSpeed=nr(0,0)
thing_940.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_940.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_940.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_940.LightEmission=1
thing_940.LightInfluence=0
thing_940.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_940.Drag=2.880000114440918
thing_940.EmissionDirection=Enum.NormalId.Right
thing_940.SpreadAngle=v2(20.000000,40.000000)
thing_940.ZOffset=5.000999927520752
thing_940.Texture="rbxassetid://16879591102"
thing_940.LockedToPart=true
thing_940.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_940.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_940.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_940.FlipbookFramerate=nr(72,72)
thing_940.FlipbookStartRandom=false
thing_940.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_940.Brightness=5






 con_941=i("ParticleEmitter", Attachment_939)
con_941.Name="con"
con_941:SetAttribute("AuraInstance", true)
con_941.Enabled=true
con_941.Rate=7.199999809265137
con_941.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_941.Speed=nr(28.799999237060547,28.799999237060547)
con_941.Rotation=nr(0,0)
con_941.RotSpeed=nr(0,0)
con_941.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con_941.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_941.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_941.LightEmission=-1
con_941.LightInfluence=0
con_941.Acceleration=v3(0.000000,28.799999,-29.520000)
con_941.Drag=2.880000114440918
con_941.EmissionDirection=Enum.NormalId.Right
con_941.SpreadAngle=v2(20.000000,40.000000)
con_941.ZOffset=4
con_941.Texture="rbxassetid://14050078974"
con_941.LockedToPart=true
con_941.Orientation=Enum.ParticleOrientation.VelocityParallel
con_941.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_941.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_941.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_941.FlipbookStartRandom=false
con_941.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_941.Brightness=0.10000000149011612






 star_942=i("ParticleEmitter", Attachment_939)
star_942.Name="star"
star_942:SetAttribute("AuraInstance", true)
star_942.Enabled=true
star_942.Rate=2.880000114440918
star_942.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_942.Speed=nr(20,20)
star_942.Rotation=nr(90,90)
star_942.RotSpeed=nr(0,0)
star_942.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_942.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_942.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_942.LightEmission=1
star_942.LightInfluence=0
star_942.Acceleration=v3(0.000000,30.431999,-25.893000)
star_942.Drag=2.880000114440918
star_942.EmissionDirection=Enum.NormalId.Right
star_942.SpreadAngle=v2(20.000000,40.000000)
star_942.ZOffset=5.000999927520752
star_942.Texture="rbxassetid://111508092337743"
star_942.LockedToPart=true
star_942.Orientation=Enum.ParticleOrientation.VelocityParallel
star_942.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_942.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_942.FlipbookFramerate=nr(72,72)
star_942.FlipbookStartRandom=false
star_942.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_942.Brightness=50






 con2_943=i("ParticleEmitter", Attachment_939)
con2_943.Name="con2"
con2_943:SetAttribute("AuraInstance", true)
con2_943.Enabled=true
con2_943.Rate=7.199999809265137
con2_943.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_943.Speed=nr(28.799999237060547,28.799999237060547)
con2_943.Rotation=nr(0,0)
con2_943.RotSpeed=nr(0,0)
con2_943.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con2_943.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_943.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_943.LightEmission=-1
con2_943.LightInfluence=0
con2_943.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_943.Drag=2.880000114440918
con2_943.EmissionDirection=Enum.NormalId.Right
con2_943.SpreadAngle=v2(20.000000,40.000000)
con2_943.ZOffset=4
con2_943.Texture="rbxassetid://72126171130861"
con2_943.LockedToPart=true
con2_943.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_943.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_943.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_943.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_943.FlipbookStartRandom=false
con2_943.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_943.Brightness=0.10000000149011612






 cloud_944=i("ParticleEmitter", Attachment_939)
cloud_944.Name="cloud"
cloud_944:SetAttribute("AuraInstance", true)
cloud_944.Enabled=true
cloud_944.Rate=4
cloud_944.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_944.Speed=nr(28.799999237060547,28.799999237060547)
cloud_944.Rotation=nr(180,180)
cloud_944.RotSpeed=nr(0,0)
cloud_944.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_944.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_944.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_944.LightEmission=-5
cloud_944.LightInfluence=0
cloud_944.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_944.Drag=2.880000114440918
cloud_944.EmissionDirection=Enum.NormalId.Right
cloud_944.SpreadAngle=v2(20.000000,40.000000)
cloud_944.ZOffset=5.000999927520752
cloud_944.Texture="rbxassetid://116615675769772"
cloud_944.LockedToPart=true
cloud_944.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_944.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_944.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_944.FlipbookFramerate=nr(72,72)
cloud_944.FlipbookStartRandom=false
cloud_944.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_944.Brightness=12.5






 noclue_945=i("ParticleEmitter", Attachment_939)
noclue_945.Name="noclue"
noclue_945:SetAttribute("AuraInstance", true)
noclue_945.Enabled=true
noclue_945.Rate=4
noclue_945.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_945.Speed=nr(28.799999237060547,28.799999237060547)
noclue_945.Rotation=nr(0,0)
noclue_945.RotSpeed=nr(0,0)
noclue_945.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_945.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_945.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_945.LightEmission=-5
noclue_945.LightInfluence=0
noclue_945.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_945.Drag=2.880000114440918
noclue_945.EmissionDirection=Enum.NormalId.Right
noclue_945.SpreadAngle=v2(20.000000,40.000000)
noclue_945.ZOffset=5.000999927520752
noclue_945.Texture="rbxassetid://106969664801014"
noclue_945.LockedToPart=true
noclue_945.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_945.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_945.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_945.FlipbookFramerate=nr(72,72)
noclue_945.FlipbookStartRandom=false
noclue_945.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_945.Brightness=25






 dotsfb_946=i("ParticleEmitter", Attachment_939)
dotsfb_946.Name="dotsfb"
dotsfb_946:SetAttribute("AuraInstance", true)
dotsfb_946.Enabled=true
dotsfb_946.Rate=7.199999809265137
dotsfb_946.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_946.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_946.Rotation=nr(0,0)
dotsfb_946.RotSpeed=nr(0,0)
dotsfb_946.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_946.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_946.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_946.LightEmission=1
dotsfb_946.LightInfluence=0
dotsfb_946.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_946.Drag=2.880000114440918
dotsfb_946.EmissionDirection=Enum.NormalId.Right
dotsfb_946.SpreadAngle=v2(20.000000,40.000000)
dotsfb_946.ZOffset=2
dotsfb_946.Texture="rbxassetid://128665895806479"
dotsfb_946.LockedToPart=true
dotsfb_946.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_946.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_946.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_946.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_946.FlipbookStartRandom=false
dotsfb_946.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_946.Brightness=50






 things_947=i("ParticleEmitter", Attachment_939)
things_947.Name="things"
things_947:SetAttribute("AuraInstance", true)
things_947.Enabled=true
things_947.Rate=3
things_947.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_947.Speed=nr(28.799999237060547,28.799999237060547)
things_947.Rotation=nr(0,0)
things_947.RotSpeed=nr(0,0)
things_947.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_947.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_947.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_947.LightEmission=1
things_947.LightInfluence=0
things_947.Acceleration=v3(0.000000,40.000000,-29.520000)
things_947.Drag=2.880000114440918
things_947.EmissionDirection=Enum.NormalId.Right
things_947.SpreadAngle=v2(20.000000,40.000000)
things_947.ZOffset=2
things_947.Texture="rbxassetid://131246143677315"
things_947.LockedToPart=true
things_947.Orientation=Enum.ParticleOrientation.VelocityParallel
things_947.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_947.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_947.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_947.FlipbookStartRandom=false
things_947.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_947.Brightness=3






 Attachment_948=i("Attachment", ring_893)
Attachment_948.Name="Attachment"
Attachment_948:SetAttribute("AuraInstance", true)
Attachment_948.Visible=false
Attachment_948.CFrame=cf(-10.705619812011719,-0.000003814697265625,10.70562744140625,0.7071342468261719,0,-0.707079291343689,0,1,0,0.707079291343689,0,0.7071342468261719)






 thing_949=i("ParticleEmitter", Attachment_948)
thing_949.Name="thing"
thing_949:SetAttribute("AuraInstance", true)
thing_949.Enabled=true
thing_949.Rate=2.880000114440918
thing_949.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_949.Speed=nr(28.799999237060547,28.799999237060547)
thing_949.Rotation=nr(90,90)
thing_949.RotSpeed=nr(0,0)
thing_949.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_949.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_949.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_949.LightEmission=1
thing_949.LightInfluence=0
thing_949.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_949.Drag=2.880000114440918
thing_949.EmissionDirection=Enum.NormalId.Right
thing_949.SpreadAngle=v2(20.000000,40.000000)
thing_949.ZOffset=5.000999927520752
thing_949.Texture="rbxassetid://16879591102"
thing_949.LockedToPart=true
thing_949.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_949.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_949.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_949.FlipbookFramerate=nr(72,72)
thing_949.FlipbookStartRandom=false
thing_949.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_949.Brightness=5






 con_950=i("ParticleEmitter", Attachment_948)
con_950.Name="con"
con_950:SetAttribute("AuraInstance", true)
con_950.Enabled=true
con_950.Rate=7.199999809265137
con_950.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_950.Speed=nr(28.799999237060547,28.799999237060547)
con_950.Rotation=nr(0,0)
con_950.RotSpeed=nr(0,0)
con_950.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con_950.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_950.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_950.LightEmission=-1
con_950.LightInfluence=0
con_950.Acceleration=v3(0.000000,28.799999,-29.520000)
con_950.Drag=2.880000114440918
con_950.EmissionDirection=Enum.NormalId.Right
con_950.SpreadAngle=v2(20.000000,40.000000)
con_950.ZOffset=4
con_950.Texture="rbxassetid://14050078974"
con_950.LockedToPart=true
con_950.Orientation=Enum.ParticleOrientation.VelocityParallel
con_950.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_950.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_950.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_950.FlipbookStartRandom=false
con_950.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_950.Brightness=0.10000000149011612






 star_951=i("ParticleEmitter", Attachment_948)
star_951.Name="star"
star_951:SetAttribute("AuraInstance", true)
star_951.Enabled=true
star_951.Rate=2.880000114440918
star_951.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_951.Speed=nr(20,20)
star_951.Rotation=nr(90,90)
star_951.RotSpeed=nr(0,0)
star_951.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_951.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_951.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_951.LightEmission=1
star_951.LightInfluence=0
star_951.Acceleration=v3(0.000000,30.431999,-25.893000)
star_951.Drag=2.880000114440918
star_951.EmissionDirection=Enum.NormalId.Right
star_951.SpreadAngle=v2(20.000000,40.000000)
star_951.ZOffset=5.000999927520752
star_951.Texture="rbxassetid://111508092337743"
star_951.LockedToPart=true
star_951.Orientation=Enum.ParticleOrientation.VelocityParallel
star_951.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_951.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_951.FlipbookFramerate=nr(72,72)
star_951.FlipbookStartRandom=false
star_951.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_951.Brightness=50






 con2_952=i("ParticleEmitter", Attachment_948)
con2_952.Name="con2"
con2_952:SetAttribute("AuraInstance", true)
con2_952.Enabled=true
con2_952.Rate=7.199999809265137
con2_952.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_952.Speed=nr(28.799999237060547,28.799999237060547)
con2_952.Rotation=nr(0,0)
con2_952.RotSpeed=nr(0,0)
con2_952.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con2_952.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_952.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_952.LightEmission=-1
con2_952.LightInfluence=0
con2_952.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_952.Drag=2.880000114440918
con2_952.EmissionDirection=Enum.NormalId.Right
con2_952.SpreadAngle=v2(20.000000,40.000000)
con2_952.ZOffset=4
con2_952.Texture="rbxassetid://72126171130861"
con2_952.LockedToPart=true
con2_952.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_952.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_952.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_952.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_952.FlipbookStartRandom=false
con2_952.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_952.Brightness=0.10000000149011612






 cloud_953=i("ParticleEmitter", Attachment_948)
cloud_953.Name="cloud"
cloud_953:SetAttribute("AuraInstance", true)
cloud_953.Enabled=true
cloud_953.Rate=4
cloud_953.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_953.Speed=nr(28.799999237060547,28.799999237060547)
cloud_953.Rotation=nr(180,180)
cloud_953.RotSpeed=nr(0,0)
cloud_953.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_953.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_953.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_953.LightEmission=-5
cloud_953.LightInfluence=0
cloud_953.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_953.Drag=2.880000114440918
cloud_953.EmissionDirection=Enum.NormalId.Right
cloud_953.SpreadAngle=v2(20.000000,40.000000)
cloud_953.ZOffset=5.000999927520752
cloud_953.Texture="rbxassetid://116615675769772"
cloud_953.LockedToPart=true
cloud_953.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_953.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_953.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_953.FlipbookFramerate=nr(72,72)
cloud_953.FlipbookStartRandom=false
cloud_953.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_953.Brightness=12.5






 noclue_954=i("ParticleEmitter", Attachment_948)
noclue_954.Name="noclue"
noclue_954:SetAttribute("AuraInstance", true)
noclue_954.Enabled=true
noclue_954.Rate=4
noclue_954.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_954.Speed=nr(28.799999237060547,28.799999237060547)
noclue_954.Rotation=nr(0,0)
noclue_954.RotSpeed=nr(0,0)
noclue_954.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_954.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_954.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_954.LightEmission=-5
noclue_954.LightInfluence=0
noclue_954.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_954.Drag=2.880000114440918
noclue_954.EmissionDirection=Enum.NormalId.Right
noclue_954.SpreadAngle=v2(20.000000,40.000000)
noclue_954.ZOffset=5.000999927520752
noclue_954.Texture="rbxassetid://106969664801014"
noclue_954.LockedToPart=true
noclue_954.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_954.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_954.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_954.FlipbookFramerate=nr(72,72)
noclue_954.FlipbookStartRandom=false
noclue_954.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_954.Brightness=25






 dotsfb_955=i("ParticleEmitter", Attachment_948)
dotsfb_955.Name="dotsfb"
dotsfb_955:SetAttribute("AuraInstance", true)
dotsfb_955.Enabled=true
dotsfb_955.Rate=7.199999809265137
dotsfb_955.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_955.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_955.Rotation=nr(0,0)
dotsfb_955.RotSpeed=nr(0,0)
dotsfb_955.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_955.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_955.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_955.LightEmission=1
dotsfb_955.LightInfluence=0
dotsfb_955.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_955.Drag=2.880000114440918
dotsfb_955.EmissionDirection=Enum.NormalId.Right
dotsfb_955.SpreadAngle=v2(20.000000,40.000000)
dotsfb_955.ZOffset=2
dotsfb_955.Texture="rbxassetid://128665895806479"
dotsfb_955.LockedToPart=true
dotsfb_955.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_955.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_955.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_955.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_955.FlipbookStartRandom=false
dotsfb_955.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_955.Brightness=50






 things_956=i("ParticleEmitter", Attachment_948)
things_956.Name="things"
things_956:SetAttribute("AuraInstance", true)
things_956.Enabled=true
things_956.Rate=3
things_956.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_956.Speed=nr(28.799999237060547,28.799999237060547)
things_956.Rotation=nr(0,0)
things_956.RotSpeed=nr(0,0)
things_956.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_956.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_956.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_956.LightEmission=1
things_956.LightInfluence=0
things_956.Acceleration=v3(0.000000,40.000000,-29.520000)
things_956.Drag=2.880000114440918
things_956.EmissionDirection=Enum.NormalId.Right
things_956.SpreadAngle=v2(20.000000,40.000000)
things_956.ZOffset=2
things_956.Texture="rbxassetid://131246143677315"
things_956.LockedToPart=true
things_956.Orientation=Enum.ParticleOrientation.VelocityParallel
things_956.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_956.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_956.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_956.FlipbookStartRandom=false
things_956.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_956.Brightness=3






 Attachment_957=i("Attachment", ring_893)
Attachment_957.Name="Attachment"
Attachment_957:SetAttribute("AuraInstance", true)
Attachment_957.Visible=false
Attachment_957.CFrame=cf(0,0,15.139999389648438,1,0,0,0,1,0,0,0,1)






 thing_958=i("ParticleEmitter", Attachment_957)
thing_958.Name="thing"
thing_958:SetAttribute("AuraInstance", true)
thing_958.Enabled=true
thing_958.Rate=2.880000114440918
thing_958.Lifetime=nr(0.868055522441864,1.0416666269302368)
thing_958.Speed=nr(28.799999237060547,28.799999237060547)
thing_958.Rotation=nr(90,90)
thing_958.RotSpeed=nr(0,0)
thing_958.Size=ns({nsk(0.000000,2.250000,2.250000),nsk(1.000000,2.250000,2.250000)})
thing_958.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
thing_958.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
thing_958.LightEmission=1
thing_958.LightInfluence=0
thing_958.Acceleration=v3(0.000000,28.799999,-29.520000)
thing_958.Drag=2.880000114440918
thing_958.EmissionDirection=Enum.NormalId.Right
thing_958.SpreadAngle=v2(20.000000,40.000000)
thing_958.ZOffset=5.000999927520752
thing_958.Texture="rbxassetid://16879591102"
thing_958.LockedToPart=true
thing_958.Orientation=Enum.ParticleOrientation.VelocityParallel
thing_958.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
thing_958.FlipbookMode=Enum.ParticleFlipbookMode.Loop
thing_958.FlipbookFramerate=nr(72,72)
thing_958.FlipbookStartRandom=false
thing_958.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
thing_958.Brightness=5






 con_959=i("ParticleEmitter", Attachment_957)
con_959.Name="con"
con_959:SetAttribute("AuraInstance", true)
con_959.Enabled=true
con_959.Rate=7.199999809265137
con_959.Lifetime=nr(0.868055522441864,1.0416666269302368)
con_959.Speed=nr(28.799999237060547,28.799999237060547)
con_959.Rotation=nr(0,0)
con_959.RotSpeed=nr(0,0)
con_959.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con_959.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
con_959.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con_959.LightEmission=-1
con_959.LightInfluence=0
con_959.Acceleration=v3(0.000000,28.799999,-29.520000)
con_959.Drag=2.880000114440918
con_959.EmissionDirection=Enum.NormalId.Right
con_959.SpreadAngle=v2(20.000000,40.000000)
con_959.ZOffset=4
con_959.Texture="rbxassetid://14050078974"
con_959.LockedToPart=true
con_959.Orientation=Enum.ParticleOrientation.VelocityParallel
con_959.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con_959.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con_959.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con_959.FlipbookStartRandom=false
con_959.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
con_959.Brightness=0.10000000149011612






 star_960=i("ParticleEmitter", Attachment_957)
star_960.Name="star"
star_960:SetAttribute("AuraInstance", true)
star_960.Enabled=true
star_960.Rate=2.880000114440918
star_960.Lifetime=nr(0.868055522441864,1.0416666269302368)
star_960.Speed=nr(20,20)
star_960.Rotation=nr(90,90)
star_960.RotSpeed=nr(0,0)
star_960.Size=ns({nsk(0.000000,6.400000,0.000000),nsk(0.028497,3.440000,1.560000),nsk(0.069948,5.400000,1.000000),nsk(0.137306,2.600000,1.960000),nsk(0.182642,5.680000,0.720000),nsk(0.268135,2.760000,1.920000),nsk(0.295337,5.280000,1.120000),nsk(0.363990,3.320000,1.120000),nsk(0.450777,5.400000,1.000000),nsk(0.536269,2.480000,1.560000),nsk(0.572539,5.400000,1.000000),nsk(0.621762,2.760000,1.400000),nsk(0.667098,5.680000,0.720000),nsk(0.704663,3.160000,1.120000),nsk(0.766839,5.400000,1.000000),nsk(0.857513,2.600000,1.280000),nsk(0.886010,5.240000,1.160000),nsk(0.962435,4.000000,1.000000),nsk(1.000000,0.000000,0.000000)})
star_960.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
star_960.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
star_960.LightEmission=1
star_960.LightInfluence=0
star_960.Acceleration=v3(0.000000,30.431999,-25.893000)
star_960.Drag=2.880000114440918
star_960.EmissionDirection=Enum.NormalId.Right
star_960.SpreadAngle=v2(20.000000,40.000000)
star_960.ZOffset=5.000999927520752
star_960.Texture="rbxassetid://111508092337743"
star_960.LockedToPart=true
star_960.Orientation=Enum.ParticleOrientation.VelocityParallel
star_960.FlipbookLayout=Enum.ParticleFlipbookLayout.None
star_960.FlipbookMode=Enum.ParticleFlipbookMode.Loop
star_960.FlipbookFramerate=nr(72,72)
star_960.FlipbookStartRandom=false
star_960.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.712500,0.000000)})
star_960.Brightness=50






 con2_961=i("ParticleEmitter", Attachment_957)
con2_961.Name="con2"
con2_961:SetAttribute("AuraInstance", true)
con2_961.Enabled=true
con2_961.Rate=7.199999809265137
con2_961.Lifetime=nr(0.868055522441864,1.0416666269302368)
con2_961.Speed=nr(28.799999237060547,28.799999237060547)
con2_961.Rotation=nr(0,0)
con2_961.RotSpeed=nr(0,0)
con2_961.Size=ns({nsk(0.000000,7.687500,2.250000),nsk(1.000000,7.687500,2.250000)})
con2_961.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.900000,0.000000),nsk(1.000000,1.000000,0.000000)})
con2_961.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
con2_961.LightEmission=-1
con2_961.LightInfluence=0
con2_961.Acceleration=v3(0.000000,28.799999,-29.520000)
con2_961.Drag=2.880000114440918
con2_961.EmissionDirection=Enum.NormalId.Right
con2_961.SpreadAngle=v2(20.000000,40.000000)
con2_961.ZOffset=4
con2_961.Texture="rbxassetid://72126171130861"
con2_961.LockedToPart=true
con2_961.Orientation=Enum.ParticleOrientation.VelocityParallel
con2_961.FlipbookLayout=Enum.ParticleFlipbookLayout.None
con2_961.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
con2_961.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
con2_961.FlipbookStartRandom=false
con2_961.Squash=ns({nsk(0.000000,-0.300000,0.000000),nsk(1.000000,-0.300000,0.000000)})
con2_961.Brightness=0.10000000149011612






 cloud_962=i("ParticleEmitter", Attachment_957)
cloud_962.Name="cloud"
cloud_962:SetAttribute("AuraInstance", true)
cloud_962.Enabled=true
cloud_962.Rate=4
cloud_962.Lifetime=nr(0.868055522441864,1.0416666269302368)
cloud_962.Speed=nr(28.799999237060547,28.799999237060547)
cloud_962.Rotation=nr(180,180)
cloud_962.RotSpeed=nr(0,0)
cloud_962.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
cloud_962.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(0.695502,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
cloud_962.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
cloud_962.LightEmission=-5
cloud_962.LightInfluence=0
cloud_962.Acceleration=v3(0.000000,28.799999,-29.520000)
cloud_962.Drag=2.880000114440918
cloud_962.EmissionDirection=Enum.NormalId.Right
cloud_962.SpreadAngle=v2(20.000000,40.000000)
cloud_962.ZOffset=5.000999927520752
cloud_962.Texture="rbxassetid://116615675769772"
cloud_962.LockedToPart=true
cloud_962.Orientation=Enum.ParticleOrientation.VelocityParallel
cloud_962.FlipbookLayout=Enum.ParticleFlipbookLayout.None
cloud_962.FlipbookMode=Enum.ParticleFlipbookMode.Loop
cloud_962.FlipbookFramerate=nr(72,72)
cloud_962.FlipbookStartRandom=false
cloud_962.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
cloud_962.Brightness=12.5






 noclue_963=i("ParticleEmitter", Attachment_957)
noclue_963.Name="noclue"
noclue_963:SetAttribute("AuraInstance", true)
noclue_963.Enabled=true
noclue_963.Rate=4
noclue_963.Lifetime=nr(0.868055522441864,1.0416666269302368)
noclue_963.Speed=nr(28.799999237060547,28.799999237060547)
noclue_963.Rotation=nr(0,0)
noclue_963.RotSpeed=nr(0,0)
noclue_963.Size=ns({nsk(0.000000,6.750000,6.750000),nsk(1.000000,6.750000,6.750000)})
noclue_963.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.250000,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
noclue_963.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
noclue_963.LightEmission=-5
noclue_963.LightInfluence=0
noclue_963.Acceleration=v3(0.000000,28.799999,-29.520000)
noclue_963.Drag=2.880000114440918
noclue_963.EmissionDirection=Enum.NormalId.Right
noclue_963.SpreadAngle=v2(20.000000,40.000000)
noclue_963.ZOffset=5.000999927520752
noclue_963.Texture="rbxassetid://106969664801014"
noclue_963.LockedToPart=true
noclue_963.Orientation=Enum.ParticleOrientation.VelocityParallel
noclue_963.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
noclue_963.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
noclue_963.FlipbookFramerate=nr(72,72)
noclue_963.FlipbookStartRandom=false
noclue_963.Squash=ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,-0.712000,0.000000)})
noclue_963.Brightness=25






 dotsfb_964=i("ParticleEmitter", Attachment_957)
dotsfb_964.Name="dotsfb"
dotsfb_964:SetAttribute("AuraInstance", true)
dotsfb_964.Enabled=true
dotsfb_964.Rate=7.199999809265137
dotsfb_964.Lifetime=nr(0.868055522441864,1.0416666269302368)
dotsfb_964.Speed=nr(28.799999237060547,28.799999237060547)
dotsfb_964.Rotation=nr(0,0)
dotsfb_964.RotSpeed=nr(0,0)
dotsfb_964.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
dotsfb_964.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
dotsfb_964.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
dotsfb_964.LightEmission=1
dotsfb_964.LightInfluence=0
dotsfb_964.Acceleration=v3(0.000000,40.000000,-29.520000)
dotsfb_964.Drag=2.880000114440918
dotsfb_964.EmissionDirection=Enum.NormalId.Right
dotsfb_964.SpreadAngle=v2(20.000000,40.000000)
dotsfb_964.ZOffset=2
dotsfb_964.Texture="rbxassetid://128665895806479"
dotsfb_964.LockedToPart=true
dotsfb_964.Orientation=Enum.ParticleOrientation.VelocityParallel
dotsfb_964.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid8x8
dotsfb_964.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
dotsfb_964.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
dotsfb_964.FlipbookStartRandom=false
dotsfb_964.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
dotsfb_964.Brightness=50






 things_965=i("ParticleEmitter", Attachment_957)
things_965.Name="things"
things_965:SetAttribute("AuraInstance", true)
things_965.Enabled=true
things_965.Rate=3
things_965.Lifetime=nr(0.868055522441864,1.0416666269302368)
things_965.Speed=nr(28.799999237060547,28.799999237060547)
things_965.Rotation=nr(0,0)
things_965.RotSpeed=nr(0,0)
things_965.Size=ns({nsk(0.000000,5.630000,2.250000),nsk(1.000000,4.440000,2.250000)})
things_965.Transparency=ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
things_965.Color=cs({csk(0.000000,c3(1.000000,0.309804,0.321569)),csk(1.000000,c3(1.000000,0.309804,0.321569))})
things_965.LightEmission=1
things_965.LightInfluence=0
things_965.Acceleration=v3(0.000000,40.000000,-29.520000)
things_965.Drag=2.880000114440918
things_965.EmissionDirection=Enum.NormalId.Right
things_965.SpreadAngle=v2(20.000000,40.000000)
things_965.ZOffset=2
things_965.Texture="rbxassetid://131246143677315"
things_965.LockedToPart=true
things_965.Orientation=Enum.ParticleOrientation.VelocityParallel
things_965.FlipbookLayout=Enum.ParticleFlipbookLayout.Grid4x4
things_965.FlipbookMode=Enum.ParticleFlipbookMode.OneShot
things_965.FlipbookFramerate=nr(1.440000057220459,1.440000057220459)
things_965.FlipbookStartRandom=false
things_965.Squash=ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})
things_965.Brightness=3

local spin=1
fg=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
fg:Disconnect()
return
end
local pcolor=Extras.pcolor
local scolor=Extras.scolor
spin+=1
local pbl=sound.PlaybackLoudness
li.Color=scolor.Value
li.Range=pbl/50
li.Brightness=pbl/250
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
TweenFunction(PartFXFloor,.01,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
PartFXFloor.Rotation=v3(0,spin*10,0)
local f=PartFXFloor
local s=clamp(sound.PlaybackLoudness/10,0,random(1,20))
if sound.PlaybackLoudness>random(300,400) then
hhh=clamp(sound.PlaybackLoudness/25,0,math.random(pbl/200,50))
else
hhh=clamp(sound.PlaybackLoudness/50,0,math.random(1,20))
end
local f=PartFXFloor
local spcf=rootpart1.CFrame*cf(10*cos(sine*1),10+5*sin(sine*3.5),-10*cos(sine*5))
local spcf1=rootpart1.CFrame*cf(-10*cos(sine*1),10-5*sin(sine*3.5),10*cos(sine*5))
local g=hhh*3.5
local s1=s/2
local speedrandom=random(.5,5)
local lol=random(-50,50)
local lol1=random(50,75)
local lol2=random(10,15)
local ypos=random(10,30)
local rpos=random(-50,50)
local rpos1=random(-50,50)
local t=sound.TimePosition
local pbl=sound.PlaybackLoudness
li.Color=scolor.Value
li.Range=pbl/50
li.Brightness=pbl/250
for _,v in Floor:GetDescendants() do 
if v:IsA("ParticleEmitter") then 
v.Color=cs({
  csk(0,pcolor.Value),
  csk(1,scolor.Value),
})
v.Brightness=pbl/100
end
end


end)
end
repeat VFX4() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")