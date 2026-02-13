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





 Embers_11728=i("Attachment", foldah)
Embers_11728.Name="Embers"
Embers_11728:SetAttribute("AuraInstance", true)
Embers_11728.Position = v3(0,0,0)
Embers_11728.Visible = false

 Bobbing_11729=i("Script", Embers_11728)
Bobbing_11729.Name="Bobbing"
Bobbing_11729.Source = ""

 RFireTop_11730=i("ParticleEmitter", Embers_11728)
RFireTop_11730.Name="R. Fire (Top)"
RFireTop_11730:SetAttribute("EmitDuration", 0)
RFireTop_11730.Enabled = true
RFireTop_11730.Rate = 10
RFireTop_11730.Lifetime = nr(2,2)
RFireTop_11730.Speed = nr(2,2)
RFireTop_11730.Rotation = nr(-180,180)
RFireTop_11730.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
RFireTop_11730.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.105795,0.000000),nsk(0.200000,0.502078,0.000000),nsk(0.300000,1.153236,0.000000),nsk(0.400000,2.010872,0.000000),nsk(0.500000,3.038969,0.000000),nsk(0.600000,4.211063,0.000000),nsk(0.700000,5.507192,0.000000),nsk(0.800000,6.911875,0.000000),nsk(0.900000,8.412807,0.000000),nsk(1.000000,10.000000,0.000000),nsk(1.000000,10.000000,0.000000)})
RFireTop_11730.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
RFireTop_11730.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
RFireTop_11730.LightEmission = 1
RFireTop_11730.LightInfluence = 0
RFireTop_11730.Acceleration = v3(0.000000,3.000000,0.000000)
RFireTop_11730.Drag = 0.5
RFireTop_11730.EmissionDirection = Enum.NormalId.Top
RFireTop_11730.SpreadAngle = v2(30.000000,30.000000)
RFireTop_11730.ZOffset = 5
RFireTop_11730.Texture = "rbxassetid://11447021694"
RFireTop_11730.LockedToPart = true
RFireTop_11730.Orientation = Enum.ParticleOrientation.FacingCamera
RFireTop_11730.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
RFireTop_11730.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
RFireTop_11730.FlipbookFramerate = nr(20,20)
RFireTop_11730.FlipbookStartRandom = true
RFireTop_11730.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 RFireBottom_11731=i("ParticleEmitter", Embers_11728)
RFireBottom_11731.Name="R. Fire (Bottom)"
RFireBottom_11731:SetAttribute("EmitDuration", 0)
RFireBottom_11731.Enabled = true
RFireBottom_11731.Rate = 10
RFireBottom_11731.Lifetime = nr(1.5,1.5)
RFireBottom_11731.Speed = nr(2,2)
RFireBottom_11731.Rotation = nr(-180,180)
RFireBottom_11731.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
RFireBottom_11731.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.084636,0.000000),nsk(0.200000,0.401662,0.000000),nsk(0.300000,0.922589,0.000000),nsk(0.400000,1.608697,0.000000),nsk(0.500000,2.431175,0.000000),nsk(0.600000,3.368850,0.000000),nsk(0.700000,4.405754,0.000000),nsk(0.800000,5.529500,0.000000),nsk(0.900000,6.730246,0.000000),nsk(1.000000,8.000000,0.000000),nsk(1.000000,8.000000,0.000000)})
RFireBottom_11731.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500529,0.464481,0.000000),nsk(1.000000,1.000000,0.000000)})
RFireBottom_11731.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
RFireBottom_11731.LightEmission = 1
RFireBottom_11731.LightInfluence = 0
RFireBottom_11731.Acceleration = v3(0.000000,-10.000000,0.000000)
RFireBottom_11731.Drag = 0.5
RFireBottom_11731.EmissionDirection = Enum.NormalId.Top
RFireBottom_11731.SpreadAngle = v2(30.000000,30.000000)
RFireBottom_11731.ZOffset = 5
RFireBottom_11731.Texture = "rbxassetid://11447021694"
RFireBottom_11731.LockedToPart = true
RFireBottom_11731.Orientation = Enum.ParticleOrientation.FacingCamera
RFireBottom_11731.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
RFireBottom_11731.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
RFireBottom_11731.FlipbookFramerate = nr(20,20)
RFireBottom_11731.FlipbookStartRandom = true
RFireBottom_11731.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Dots_11732=i("Attachment", Embers_11728)
Dots_11732.Name="Dots"
Dots_11732.Position = v3(0.000000,1.394384,0.000000)
Dots_11732.Visible = false

 DotsDebris_11733=i("ParticleEmitter", Dots_11732)
DotsDebris_11733.Name="Dots (Debris)"
DotsDebris_11733:SetAttribute("EmitDelay", 0.05)
DotsDebris_11733:SetAttribute("EmitCount", 100)
DotsDebris_11733.Enabled = true
DotsDebris_11733.Rate = 80
DotsDebris_11733.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11733.Speed = nr(-50,50)
DotsDebris_11733.Rotation = nr(0,360)
DotsDebris_11733.RotSpeed = nr(-200,200)
DotsDebris_11733.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11733.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11733.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
DotsDebris_11733.LightEmission = 0
DotsDebris_11733.LightInfluence = 0
DotsDebris_11733.Acceleration = v3(0.000000,25.000000,0.000000)
DotsDebris_11733.Drag = 3
DotsDebris_11733.EmissionDirection = Enum.NormalId.Left
DotsDebris_11733.SpreadAngle = v2(90.000000,180.000000)
DotsDebris_11733.ZOffset = -1
DotsDebris_11733.Texture = "rbxassetid://12852915048"
DotsDebris_11733.LockedToPart = true
DotsDebris_11733.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11733.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11733.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11733.FlipbookFramerate = nr(1,1)
DotsDebris_11733.FlipbookStartRandom = false
DotsDebris_11733.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11734=i("ParticleEmitter", Dots_11732)
DotsDebris_11734.Name="Dots (Debris)"
DotsDebris_11734:SetAttribute("EmitDelay", 0.05)
DotsDebris_11734:SetAttribute("EmitCount", 100)
DotsDebris_11734.Enabled = true
DotsDebris_11734.Rate = 80
DotsDebris_11734.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11734.Speed = nr(-50,50)
DotsDebris_11734.Rotation = nr(0,360)
DotsDebris_11734.RotSpeed = nr(-200,200)
DotsDebris_11734.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11734.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11734.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11734.LightEmission = 1
DotsDebris_11734.LightInfluence = 0
DotsDebris_11734.Acceleration = v3(0.000000,25.000000,0.000000)
DotsDebris_11734.Drag = 3
DotsDebris_11734.EmissionDirection = Enum.NormalId.Left
DotsDebris_11734.SpreadAngle = v2(90.000000,180.000000)
DotsDebris_11734.ZOffset = -1
DotsDebris_11734.Texture = "rbxassetid://12852915048"
DotsDebris_11734.LockedToPart = true
DotsDebris_11734.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11734.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11734.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11734.FlipbookFramerate = nr(1,1)
DotsDebris_11734.FlipbookStartRandom = false
DotsDebris_11734.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11735=i("ParticleEmitter", Dots_11732)
DotsDebris_11735.Name="Dots (Debris)"
DotsDebris_11735:SetAttribute("EmitDelay", 0.05)
DotsDebris_11735:SetAttribute("EmitCount", 100)
DotsDebris_11735.Enabled = true
DotsDebris_11735.Rate = 20
DotsDebris_11735.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11735.Speed = nr(-50,50)
DotsDebris_11735.Rotation = nr(0,360)
DotsDebris_11735.RotSpeed = nr(-200,200)
DotsDebris_11735.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11735.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11735.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11735.LightEmission = 1
DotsDebris_11735.LightInfluence = 0
DotsDebris_11735.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11735.Drag = 3
DotsDebris_11735.EmissionDirection = Enum.NormalId.Left
DotsDebris_11735.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11735.ZOffset = -1
DotsDebris_11735.Texture = "rbxassetid://12852915048"
DotsDebris_11735.LockedToPart = true
DotsDebris_11735.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11735.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11735.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11735.FlipbookFramerate = nr(1,1)
DotsDebris_11735.FlipbookStartRandom = false
DotsDebris_11735.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11736=i("ParticleEmitter", Dots_11732)
DotsDebris_11736.Name="Dots (Debris)"
DotsDebris_11736:SetAttribute("EmitDelay", 0.05)
DotsDebris_11736:SetAttribute("EmitCount", 100)
DotsDebris_11736.Enabled = true
DotsDebris_11736.Rate = 20
DotsDebris_11736.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11736.Speed = nr(-50,50)
DotsDebris_11736.Rotation = nr(0,360)
DotsDebris_11736.RotSpeed = nr(-200,200)
DotsDebris_11736.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11736.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11736.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
DotsDebris_11736.LightEmission = 0
DotsDebris_11736.LightInfluence = 0
DotsDebris_11736.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11736.Drag = 3
DotsDebris_11736.EmissionDirection = Enum.NormalId.Left
DotsDebris_11736.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11736.ZOffset = -1
DotsDebris_11736.Texture = "rbxassetid://12852915048"
DotsDebris_11736.LockedToPart = true
DotsDebris_11736.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11736.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11736.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11736.FlipbookFramerate = nr(1,1)
DotsDebris_11736.FlipbookStartRandom = false
DotsDebris_11736.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 CenterSpark_11737=i("Attachment", Embers_11728)
CenterSpark_11737.Name="CenterSpark"
CenterSpark_11737.Position = v3(0.000000,1.167994,0.000000)
CenterSpark_11737.Visible = false

 Star_11738=i("ParticleEmitter", CenterSpark_11737)
Star_11738.Name="Star"
Star_11738.Enabled = true
Star_11738.Rate = 30
Star_11738.Lifetime = nr(0.20000000298023224,0.4000000059604645)
Star_11738.Speed = nr(0.009999999776482582,0.009999999776482582)
Star_11738.Rotation = nr(35,35)
Star_11738.RotSpeed = nr(0,0)
Star_11738.Size = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Star_11738.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499377,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Star_11738.Color = cs({csk(0.000000,c3(1.000000,0.515107,0.270588)),csk(1.000000,c3(1.000000,0.515107,0.270588))})
Star_11738.LightEmission = 1
Star_11738.LightInfluence = 0
Star_11738.Acceleration = v3(0.000000,0.000000,0.000000)
Star_11738.Drag = 0
Star_11738.EmissionDirection = Enum.NormalId.Top
Star_11738.SpreadAngle = v2(-2.000000,2.000000)
Star_11738.ZOffset = 10
Star_11738.Texture = "rbxassetid://14590086212"
Star_11738.LockedToPart = true
Star_11738.Orientation = Enum.ParticleOrientation.FacingCamera
Star_11738.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Star_11738.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Star_11738.FlipbookFramerate = nr(1,1)
Star_11738.FlipbookStartRandom = false
Star_11738.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.200317,-1.500000,0.000000),nsk(0.800211,3.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Glow_11739=i("ParticleEmitter", CenterSpark_11737)
Glow_11739.Name="Glow"
Glow_11739.Enabled = true
Glow_11739.Rate = 10
Glow_11739.Lifetime = nr(1,1)
Glow_11739.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11739.Rotation = nr(-10000,1000)
Glow_11739.RotSpeed = nr(30,30)
Glow_11739.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
Glow_11739.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360000,0.940000,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11739.Color = cs({csk(0.000000,c3(1.000000,0.347080,0.231373)),csk(1.000000,c3(1.000000,0.347080,0.231373))})
Glow_11739.LightEmission = 1
Glow_11739.LightInfluence = 0
Glow_11739.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11739.Drag = 0
Glow_11739.EmissionDirection = Enum.NormalId.Top
Glow_11739.SpreadAngle = v2(360.000000,360.000000)
Glow_11739.ZOffset = 6
Glow_11739.Texture = "rbxassetid://1075864321"
Glow_11739.LockedToPart = true
Glow_11739.Orientation = Enum.ParticleOrientation.FacingCamera
Glow_11739.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11739.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11739.FlipbookFramerate = nr(1,1)
Glow_11739.FlipbookStartRandom = false
Glow_11739.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Star_11740=i("ParticleEmitter", CenterSpark_11737)
Star_11740.Name="Star"
Star_11740.Enabled = true
Star_11740.Rate = 30
Star_11740.Lifetime = nr(0.20000000298023224,0.4000000059604645)
Star_11740.Speed = nr(0.009999999776482582,0.009999999776482582)
Star_11740.Rotation = nr(90,90)
Star_11740.RotSpeed = nr(0,0)
Star_11740.Size = ns({nsk(0.000000,2.000000,0.000000),nsk(1.000000,2.000000,0.000000)})
Star_11740.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499377,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Star_11740.Color = cs({csk(0.000000,c3(1.000000,0.515107,0.270588)),csk(1.000000,c3(1.000000,0.515107,0.270588))})
Star_11740.LightEmission = 1
Star_11740.LightInfluence = 0
Star_11740.Acceleration = v3(0.000000,0.000000,0.000000)
Star_11740.Drag = 0
Star_11740.EmissionDirection = Enum.NormalId.Top
Star_11740.SpreadAngle = v2(-2.000000,2.000000)
Star_11740.ZOffset = 10
Star_11740.Texture = "rbxassetid://14590086212"
Star_11740.LockedToPart = true
Star_11740.Orientation = Enum.ParticleOrientation.FacingCamera
Star_11740.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Star_11740.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Star_11740.FlipbookFramerate = nr(1,1)
Star_11740.FlipbookStartRandom = false
Star_11740.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.200317,-1.500000,0.000000),nsk(0.800211,3.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Contrast_11741=i("ParticleEmitter", CenterSpark_11737)
Contrast_11741.Name="Contrast"
Contrast_11741.Enabled = true
Contrast_11741.Rate = 30
Contrast_11741.Lifetime = nr(0.20000000298023224,0.4000000059604645)
Contrast_11741.Speed = nr(0.009999999776482582,0.009999999776482582)
Contrast_11741.Rotation = nr(90,90)
Contrast_11741.RotSpeed = nr(0,0)
Contrast_11741.Size = ns({nsk(0.000000,2.000000,0.000000),nsk(1.000000,2.000000,0.000000)})
Contrast_11741.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499377,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Contrast_11741.Color = cs({csk(0.000000,c3(1.000000,0.274510,0.274510)),csk(1.000000,c3(1.000000,0.274510,0.274510))})
Contrast_11741.LightEmission = -3
Contrast_11741.LightInfluence = 0
Contrast_11741.Acceleration = v3(0.000000,0.000000,0.000000)
Contrast_11741.Drag = 0
Contrast_11741.EmissionDirection = Enum.NormalId.Top
Contrast_11741.SpreadAngle = v2(-2.000000,2.000000)
Contrast_11741.ZOffset = 9
Contrast_11741.Texture = "rbxassetid://14590086212"
Contrast_11741.LockedToPart = true
Contrast_11741.Orientation = Enum.ParticleOrientation.FacingCamera
Contrast_11741.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Contrast_11741.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Contrast_11741.FlipbookFramerate = nr(1,1)
Contrast_11741.FlipbookStartRandom = false
Contrast_11741.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.200317,-1.500000,0.000000),nsk(0.800211,3.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Contrast_11742=i("ParticleEmitter", CenterSpark_11737)
Contrast_11742.Name="Contrast"
Contrast_11742.Enabled = true
Contrast_11742.Rate = 30
Contrast_11742.Lifetime = nr(0.20000000298023224,0.4000000059604645)
Contrast_11742.Speed = nr(0.009999999776482582,0.009999999776482582)
Contrast_11742.Rotation = nr(35,35)
Contrast_11742.RotSpeed = nr(0,0)
Contrast_11742.Size = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Contrast_11742.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499377,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Contrast_11742.Color = cs({csk(0.000000,c3(1.000000,0.274510,0.274510)),csk(1.000000,c3(1.000000,0.274510,0.274510))})
Contrast_11742.LightEmission = -3
Contrast_11742.LightInfluence = 0
Contrast_11742.Acceleration = v3(0.000000,0.000000,0.000000)
Contrast_11742.Drag = 0
Contrast_11742.EmissionDirection = Enum.NormalId.Top
Contrast_11742.SpreadAngle = v2(-2.000000,2.000000)
Contrast_11742.ZOffset = 9
Contrast_11742.Texture = "rbxassetid://14590086212"
Contrast_11742.LockedToPart = true
Contrast_11742.Orientation = Enum.ParticleOrientation.FacingCamera
Contrast_11742.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Contrast_11742.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Contrast_11742.FlipbookFramerate = nr(1,1)
Contrast_11742.FlipbookStartRandom = false
Contrast_11742.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(0.200317,-1.500000,0.000000),nsk(0.800211,3.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Pulse_11743=i("ParticleEmitter", CenterSpark_11737)
Pulse_11743.Name="Pulse"
Pulse_11743.Enabled = true
Pulse_11743.Rate = 10
Pulse_11743.Lifetime = nr(0.20000000298023224,0.4000000059604645)
Pulse_11743.Speed = nr(0.009999999776482582,0.009999999776482582)
Pulse_11743.Rotation = nr(0,0)
Pulse_11743.RotSpeed = nr(0,0)
Pulse_11743.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,1.217017,0.000000),nsk(0.200000,2.036417,0.000000),nsk(0.300000,2.506185,0.000000),nsk(0.400000,2.756671,0.000000),nsk(0.500000,2.886672,0.000000),nsk(0.600000,2.952102,0.000000),nsk(0.700000,2.982963,0.000000),nsk(0.800000,2.995669,0.000000),nsk(0.900000,2.999529,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
Pulse_11743.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.710383,0.000000),nsk(1.000000,1.000000,0.000000)})
Pulse_11743.Color = cs({csk(0.000000,c3(1.000000,0.515107,0.270588)),csk(1.000000,c3(1.000000,0.515107,0.270588))})
Pulse_11743.LightEmission = 1
Pulse_11743.LightInfluence = 0
Pulse_11743.Acceleration = v3(0.000000,0.000000,0.000000)
Pulse_11743.Drag = 0
Pulse_11743.EmissionDirection = Enum.NormalId.Top
Pulse_11743.SpreadAngle = v2(-2.000000,2.000000)
Pulse_11743.ZOffset = 10
Pulse_11743.Texture = "rbxassetid://14198091244"
Pulse_11743.LockedToPart = true
Pulse_11743.Orientation = Enum.ParticleOrientation.FacingCamera
Pulse_11743.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Pulse_11743.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Pulse_11743.FlipbookFramerate = nr(1,1)
Pulse_11743.FlipbookStartRandom = false
Pulse_11743.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Pulse_11744=i("ParticleEmitter", CenterSpark_11737)
Pulse_11744.Name="Pulse"
Pulse_11744.Enabled = true
Pulse_11744.Rate = 10
Pulse_11744.Lifetime = nr(0.20000000298023224,0.4000000059604645)
Pulse_11744.Speed = nr(0.009999999776482582,0.009999999776482582)
Pulse_11744.Rotation = nr(180,180)
Pulse_11744.RotSpeed = nr(0,0)
Pulse_11744.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,1.217017,0.000000),nsk(0.200000,2.036417,0.000000),nsk(0.300000,2.506185,0.000000),nsk(0.400000,2.756671,0.000000),nsk(0.500000,2.886672,0.000000),nsk(0.600000,2.952102,0.000000),nsk(0.700000,2.982963,0.000000),nsk(0.800000,2.995669,0.000000),nsk(0.900000,2.999529,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
Pulse_11744.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.710383,0.000000),nsk(1.000000,1.000000,0.000000)})
Pulse_11744.Color = cs({csk(0.000000,c3(1.000000,0.515107,0.270588)),csk(1.000000,c3(1.000000,0.515107,0.270588))})
Pulse_11744.LightEmission = 1
Pulse_11744.LightInfluence = 0
Pulse_11744.Acceleration = v3(0.000000,0.000000,0.000000)
Pulse_11744.Drag = 0
Pulse_11744.EmissionDirection = Enum.NormalId.Top
Pulse_11744.SpreadAngle = v2(-2.000000,2.000000)
Pulse_11744.ZOffset = 10
Pulse_11744.Texture = "rbxassetid://14198091244"
Pulse_11744.LockedToPart = true
Pulse_11744.Orientation = Enum.ParticleOrientation.FacingCamera
Pulse_11744.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Pulse_11744.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Pulse_11744.FlipbookFramerate = nr(1,1)
Pulse_11744.FlipbookStartRandom = false
Pulse_11744.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 RCFireTop_11745=i("ParticleEmitter", Embers_11728)
RCFireTop_11745.Name="R. C. Fire (Top)"
RCFireTop_11745.Enabled = true
RCFireTop_11745.Rate = 15
RCFireTop_11745.Lifetime = nr(2,2)
RCFireTop_11745.Speed = nr(2,2)
RCFireTop_11745.Rotation = nr(-180,180)
RCFireTop_11745.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
RCFireTop_11745.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.137533,0.000000),nsk(0.200000,0.652701,0.000000),nsk(0.300000,1.499207,0.000000),nsk(0.400000,2.614133,0.000000),nsk(0.500000,3.950660,0.000000),nsk(0.600000,5.474382,0.000000),nsk(0.700000,7.159349,0.000000),nsk(0.800000,8.985437,0.000000),nsk(0.900000,10.936649,0.000000),nsk(1.000000,13.000000,0.000000),nsk(1.000000,13.000000,0.000000)})
RCFireTop_11745.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
RCFireTop_11745.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
RCFireTop_11745.LightEmission = -30
RCFireTop_11745.LightInfluence = 0
RCFireTop_11745.Acceleration = v3(0.000000,3.500000,0.000000)
RCFireTop_11745.Drag = 0.5
RCFireTop_11745.EmissionDirection = Enum.NormalId.Top
RCFireTop_11745.SpreadAngle = v2(30.000000,30.000000)
RCFireTop_11745.ZOffset = 4.999000072479248
RCFireTop_11745.Texture = "rbxassetid://11447021694"
RCFireTop_11745.LockedToPart = true
RCFireTop_11745.Orientation = Enum.ParticleOrientation.FacingCamera
RCFireTop_11745.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
RCFireTop_11745.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
RCFireTop_11745.FlipbookFramerate = nr(20,20)
RCFireTop_11745.FlipbookStartRandom = true
RCFireTop_11745.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 RCFireBottom_11746=i("ParticleEmitter", Embers_11728)
RCFireBottom_11746.Name="R. C. Fire (Bottom)"
RCFireBottom_11746.Enabled = true
RCFireBottom_11746.Rate = 15
RCFireBottom_11746.Lifetime = nr(1.25,1.25)
RCFireBottom_11746.Speed = nr(2,2)
RCFireBottom_11746.Rotation = nr(-180,180)
RCFireBottom_11746.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
RCFireBottom_11746.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.126954,0.000000),nsk(0.200000,0.602493,0.000000),nsk(0.300000,1.383884,0.000000),nsk(0.400000,2.413046,0.000000),nsk(0.500000,3.646763,0.000000),nsk(0.600000,5.053276,0.000000),nsk(0.700000,6.608630,0.000000),nsk(0.800000,8.294250,0.000000),nsk(0.900000,10.095368,0.000000),nsk(1.000000,12.000000,0.000000),nsk(1.000000,12.000000,0.000000)})
RCFireBottom_11746.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.498943,0.000000,0.000000),nsk(0.886364,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
RCFireBottom_11746.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
RCFireBottom_11746.LightEmission = -30
RCFireBottom_11746.LightInfluence = 0
RCFireBottom_11746.Acceleration = v3(0.000000,-10.000000,0.000000)
RCFireBottom_11746.Drag = 0.5
RCFireBottom_11746.EmissionDirection = Enum.NormalId.Top
RCFireBottom_11746.SpreadAngle = v2(30.000000,30.000000)
RCFireBottom_11746.ZOffset = 4.998000144958496
RCFireBottom_11746.Texture = "rbxassetid://11447021694"
RCFireBottom_11746.LockedToPart = true
RCFireBottom_11746.Orientation = Enum.ParticleOrientation.FacingCamera
RCFireBottom_11746.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
RCFireBottom_11746.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
RCFireBottom_11746.FlipbookFramerate = nr(20,20)
RCFireBottom_11746.FlipbookStartRandom = true
RCFireBottom_11746.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 FireTop_11747=i("ParticleEmitter", Embers_11728)
FireTop_11747.Name="Fire (Top)"
FireTop_11747:SetAttribute("EmitDuration", 0)
FireTop_11747.Enabled = true
FireTop_11747.Rate = 5
FireTop_11747.Lifetime = nr(2,2)
FireTop_11747.Speed = nr(2,2)
FireTop_11747.Rotation = nr(-180,180)
FireTop_11747.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
FireTop_11747.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.052897,0.000000),nsk(0.200000,0.251039,0.000000),nsk(0.300000,0.576618,0.000000),nsk(0.400000,1.005436,0.000000),nsk(0.500000,1.519485,0.000000),nsk(0.600000,2.105531,0.000000),nsk(0.700000,2.753596,0.000000),nsk(0.800000,3.455937,0.000000),nsk(0.900000,4.206403,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
FireTop_11747.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
FireTop_11747.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
FireTop_11747.LightEmission = 1
FireTop_11747.LightInfluence = 0
FireTop_11747.Acceleration = v3(0.000000,3.000000,0.000000)
FireTop_11747.Drag = 0.5
FireTop_11747.EmissionDirection = Enum.NormalId.Top
FireTop_11747.SpreadAngle = v2(30.000000,30.000000)
FireTop_11747.ZOffset = 5
FireTop_11747.Texture = "rbxassetid://15730376453"
FireTop_11747.LockedToPart = true
FireTop_11747.Orientation = Enum.ParticleOrientation.FacingCamera
FireTop_11747.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
FireTop_11747.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
FireTop_11747.FlipbookFramerate = nr(20,20)
FireTop_11747.FlipbookStartRandom = true
FireTop_11747.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 FireBottom_11748=i("ParticleEmitter", Embers_11728)
FireBottom_11748.Name="Fire (Bottom)"
FireBottom_11748:SetAttribute("EmitDuration", 0)
FireBottom_11748.Enabled = true
FireBottom_11748.Rate = 5
FireBottom_11748.Lifetime = nr(1,1)
FireBottom_11748.Speed = nr(2,2)
FireBottom_11748.Rotation = nr(-180,180)
FireBottom_11748.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
FireBottom_11748.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.052897,0.000000),nsk(0.200000,0.251039,0.000000),nsk(0.300000,0.576618,0.000000),nsk(0.400000,1.005436,0.000000),nsk(0.500000,1.519485,0.000000),nsk(0.600000,2.105531,0.000000),nsk(0.700000,2.753596,0.000000),nsk(0.800000,3.455937,0.000000),nsk(0.900000,4.206403,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
FireBottom_11748.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500529,0.464481,0.000000),nsk(1.000000,1.000000,0.000000)})
FireBottom_11748.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
FireBottom_11748.LightEmission = 1
FireBottom_11748.LightInfluence = 0
FireBottom_11748.Acceleration = v3(0.000000,-10.000000,0.000000)
FireBottom_11748.Drag = 0.5
FireBottom_11748.EmissionDirection = Enum.NormalId.Top
FireBottom_11748.SpreadAngle = v2(30.000000,30.000000)
FireBottom_11748.ZOffset = 5
FireBottom_11748.Texture = "rbxassetid://15730376453"
FireBottom_11748.LockedToPart = true
FireBottom_11748.Orientation = Enum.ParticleOrientation.FacingCamera
FireBottom_11748.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
FireBottom_11748.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
FireBottom_11748.FlipbookFramerate = nr(20,20)
FireBottom_11748.FlipbookStartRandom = true
FireBottom_11748.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})






 FlameVolcano_11770=i("Attachment", foldah)
FlameVolcano_11770.Name="FlameVolcano"
FlameVolcano_11770:SetAttribute("AuraInstance", true)
FlameVolcano_11770.Position = v3(-13.792076,10.179585,9.954616)
FlameVolcano_11770.Visible = false

 Bobbing_11771=i("Script", FlameVolcano_11770)
Bobbing_11771.Name="Bobbing"
Bobbing_11771.Source = ""

 Detail_11772=i("ParticleEmitter", FlameVolcano_11770)
Detail_11772.Name="Detail"
Detail_11772.Enabled = true
Detail_11772.Rate = 5
Detail_11772.Lifetime = nr(2,2)
Detail_11772.Speed = nr(2,2)
Detail_11772.Rotation = nr(-180,180)
Detail_11772.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Detail_11772.Size = ns({nsk(0.000000,1.000000,0.000000),nsk(0.100000,1.016807,0.000000),nsk(0.200000,1.072836,0.000000),nsk(0.300000,1.170457,0.000000),nsk(0.400000,1.315025,0.000000),nsk(0.500000,1.515623,0.000000),nsk(0.600000,1.786913,0.000000),nsk(0.700000,2.153733,0.000000),nsk(0.800000,2.663374,0.000000),nsk(0.900000,3.429569,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Detail_11772.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
Detail_11772.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Detail_11772.LightEmission = 1
Detail_11772.LightInfluence = 0
Detail_11772.Acceleration = v3(0.000000,6.000000,0.000000)
Detail_11772.Drag = 0.5
Detail_11772.EmissionDirection = Enum.NormalId.Top
Detail_11772.SpreadAngle = v2(30.000000,30.000000)
Detail_11772.ZOffset = 5
Detail_11772.Texture = "rbxassetid://12779603482"
Detail_11772.LockedToPart = true
Detail_11772.Orientation = Enum.ParticleOrientation.FacingCamera
Detail_11772.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Detail_11772.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Detail_11772.FlipbookFramerate = nr(20,20)
Detail_11772.FlipbookStartRandom = true
Detail_11772.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Fire_11773=i("ParticleEmitter", FlameVolcano_11770)
Fire_11773.Name="Fire"
Fire_11773.Enabled = true
Fire_11773.Rate = 5
Fire_11773.Lifetime = nr(2,2)
Fire_11773.Speed = nr(2,2)
Fire_11773.Rotation = nr(-180,180)
Fire_11773.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fire_11773.Size = ns({nsk(0.000000,1.000000,0.000000),nsk(0.100000,1.016807,0.000000),nsk(0.200000,1.072836,0.000000),nsk(0.300000,1.170457,0.000000),nsk(0.400000,1.315025,0.000000),nsk(0.500000,1.515623,0.000000),nsk(0.600000,1.786913,0.000000),nsk(0.700000,2.153733,0.000000),nsk(0.800000,2.663374,0.000000),nsk(0.900000,3.429569,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Fire_11773.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
Fire_11773.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Fire_11773.LightEmission = 1
Fire_11773.LightInfluence = 0
Fire_11773.Acceleration = v3(0.000000,8.000000,0.000000)
Fire_11773.Drag = 0.5
Fire_11773.EmissionDirection = Enum.NormalId.Top
Fire_11773.SpreadAngle = v2(30.000000,30.000000)
Fire_11773.ZOffset = 5
Fire_11773.Texture = "rbxassetid://15730376453"
Fire_11773.LockedToPart = true
Fire_11773.Orientation = Enum.ParticleOrientation.FacingCamera
Fire_11773.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Fire_11773.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Fire_11773.FlipbookFramerate = nr(20,20)
Fire_11773.FlipbookStartRandom = true
Fire_11773.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Fog_11774=i("ParticleEmitter", FlameVolcano_11770)
Fog_11774.Name="Fog"
Fog_11774.Enabled = true
Fog_11774.Rate = 15
Fog_11774.Lifetime = nr(2,2)
Fog_11774.Speed = nr(2,2)
Fog_11774.Rotation = nr(-180,180)
Fog_11774.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11774.Size = ns({nsk(0.000000,2.000000,0.000000),nsk(0.100000,2.050421,0.000000),nsk(0.200000,2.218508,0.000000),nsk(0.300000,2.511371,0.000000),nsk(0.400000,2.945074,0.000000),nsk(0.500000,3.546868,0.000000),nsk(0.600000,4.360740,0.000000),nsk(0.700000,5.461201,0.000000),nsk(0.800000,6.990121,0.000000),nsk(0.900000,9.288707,0.000000),nsk(1.000000,14.000000,0.000000),nsk(1.000000,14.000000,0.000000)})
Fog_11774.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11774.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Fog_11774.LightEmission = 1
Fog_11774.LightInfluence = 0
Fog_11774.Acceleration = v3(0.000000,5.000000,0.000000)
Fog_11774.Drag = 0.5
Fog_11774.EmissionDirection = Enum.NormalId.Top
Fog_11774.SpreadAngle = v2(30.000000,30.000000)
Fog_11774.ZOffset = 5
Fog_11774.Texture = "rbxassetid://11447021694"
Fog_11774.LockedToPart = true
Fog_11774.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11774.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11774.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11774.FlipbookFramerate = nr(20,20)
Fog_11774.FlipbookStartRandom = true
Fog_11774.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Dots_11775=i("Attachment", FlameVolcano_11770)
Dots_11775.Name="Dots"
Dots_11775.Position = v3(0.000000,1.394384,0.000000)
Dots_11775.Visible = false

 DotsDebris_11776=i("ParticleEmitter", Dots_11775)
DotsDebris_11776.Name="Dots (Debris)"
DotsDebris_11776:SetAttribute("EmitDelay", 0.05)
DotsDebris_11776:SetAttribute("EmitCount", 100)
DotsDebris_11776.Enabled = true
DotsDebris_11776.Rate = 80
DotsDebris_11776.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11776.Speed = nr(-20,20)
DotsDebris_11776.Rotation = nr(0,360)
DotsDebris_11776.RotSpeed = nr(-200,200)
DotsDebris_11776.Size = ns({nsk(0.000000,0.437159,0.300000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11776.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11776.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
DotsDebris_11776.LightEmission = 0
DotsDebris_11776.LightInfluence = 0
DotsDebris_11776.Acceleration = v3(0.000000,25.000000,0.000000)
DotsDebris_11776.Drag = 0
DotsDebris_11776.EmissionDirection = Enum.NormalId.Left
DotsDebris_11776.SpreadAngle = v2(90.000000,180.000000)
DotsDebris_11776.ZOffset = -1
DotsDebris_11776.Texture = "rbxassetid://12852915048"
DotsDebris_11776.LockedToPart = true
DotsDebris_11776.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11776.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11776.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11776.FlipbookFramerate = nr(1,1)
DotsDebris_11776.FlipbookStartRandom = false
DotsDebris_11776.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11777=i("ParticleEmitter", Dots_11775)
DotsDebris_11777.Name="Dots (Debris)"
DotsDebris_11777:SetAttribute("EmitDelay", 0.05)
DotsDebris_11777:SetAttribute("EmitCount", 100)
DotsDebris_11777.Enabled = true
DotsDebris_11777.Rate = 80
DotsDebris_11777.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11777.Speed = nr(-20,20)
DotsDebris_11777.Rotation = nr(0,360)
DotsDebris_11777.RotSpeed = nr(-200,200)
DotsDebris_11777.Size = ns({nsk(0.000000,0.437159,0.300000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11777.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11777.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11777.LightEmission = 1
DotsDebris_11777.LightInfluence = 0
DotsDebris_11777.Acceleration = v3(0.000000,25.000000,0.000000)
DotsDebris_11777.Drag = 0
DotsDebris_11777.EmissionDirection = Enum.NormalId.Left
DotsDebris_11777.SpreadAngle = v2(90.000000,180.000000)
DotsDebris_11777.ZOffset = -1
DotsDebris_11777.Texture = "rbxassetid://12852915048"
DotsDebris_11777.LockedToPart = true
DotsDebris_11777.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11777.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11777.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11777.FlipbookFramerate = nr(1,1)
DotsDebris_11777.FlipbookStartRandom = false
DotsDebris_11777.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11778=i("ParticleEmitter", Dots_11775)
DotsDebris_11778.Name="Dots (Debris)"
DotsDebris_11778:SetAttribute("EmitDelay", 0.05)
DotsDebris_11778:SetAttribute("EmitCount", 100)
DotsDebris_11778.Enabled = true
DotsDebris_11778.Rate = 20
DotsDebris_11778.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11778.Speed = nr(-2.5,2.5)
DotsDebris_11778.Rotation = nr(0,360)
DotsDebris_11778.RotSpeed = nr(-200,200)
DotsDebris_11778.Size = ns({nsk(0.000000,0.437159,0.300000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11778.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11778.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11778.LightEmission = 1
DotsDebris_11778.LightInfluence = 0
DotsDebris_11778.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11778.Drag = 0
DotsDebris_11778.EmissionDirection = Enum.NormalId.Left
DotsDebris_11778.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11778.ZOffset = -1
DotsDebris_11778.Texture = "rbxassetid://12852915048"
DotsDebris_11778.LockedToPart = true
DotsDebris_11778.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11778.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11778.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11778.FlipbookFramerate = nr(1,1)
DotsDebris_11778.FlipbookStartRandom = false
DotsDebris_11778.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11779=i("ParticleEmitter", Dots_11775)
DotsDebris_11779.Name="Dots (Debris)"
DotsDebris_11779:SetAttribute("EmitDelay", 0.05)
DotsDebris_11779:SetAttribute("EmitCount", 100)
DotsDebris_11779.Enabled = true
DotsDebris_11779.Rate = 20
DotsDebris_11779.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11779.Speed = nr(-2.5,2.5)
DotsDebris_11779.Rotation = nr(0,360)
DotsDebris_11779.RotSpeed = nr(-200,200)
DotsDebris_11779.Size = ns({nsk(0.000000,0.437159,0.300000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11779.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11779.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
DotsDebris_11779.LightEmission = 0
DotsDebris_11779.LightInfluence = 0
DotsDebris_11779.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11779.Drag = 0
DotsDebris_11779.EmissionDirection = Enum.NormalId.Left
DotsDebris_11779.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11779.ZOffset = -1
DotsDebris_11779.Texture = "rbxassetid://12852915048"
DotsDebris_11779.LockedToPart = true
DotsDebris_11779.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11779.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11779.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11779.FlipbookFramerate = nr(1,1)
DotsDebris_11779.FlipbookStartRandom = false
DotsDebris_11779.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 CFog_11780=i("ParticleEmitter", FlameVolcano_11770)
CFog_11780.Name="C. Fog"
CFog_11780.Enabled = true
CFog_11780.Rate = 15
CFog_11780.Lifetime = nr(2.5,2.5)
CFog_11780.Speed = nr(2,2)
CFog_11780.Rotation = nr(-180,180)
CFog_11780.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CFog_11780.Size = ns({nsk(0.000000,4.000000,0.000000),nsk(0.100000,4.063477,0.000000),nsk(0.200000,4.301247,0.000000),nsk(0.300000,4.691942,0.000000),nsk(0.400000,5.206523,0.000000),nsk(0.500000,5.823381,0.000000),nsk(0.600000,6.526638,0.000000),nsk(0.700000,7.304315,0.000000),nsk(0.800000,8.147125,0.000000),nsk(0.900000,9.047684,0.000000),nsk(1.000000,10.000000,0.000000),nsk(1.000000,10.000000,0.000000)})
CFog_11780.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
CFog_11780.Color = cs({csk(0.000000,c3(0.247059,0.090676,0.041292)),csk(1.000000,c3(0.247059,0.090676,0.041292))})
CFog_11780.LightEmission = -2
CFog_11780.LightInfluence = 0
CFog_11780.Acceleration = v3(0.000000,5.000000,0.000000)
CFog_11780.Drag = 0.5
CFog_11780.EmissionDirection = Enum.NormalId.Top
CFog_11780.SpreadAngle = v2(30.000000,30.000000)
CFog_11780.ZOffset = -0.0010000000474974513
CFog_11780.Texture = "rbxassetid://11447021694"
CFog_11780.LockedToPart = true
CFog_11780.Orientation = Enum.ParticleOrientation.FacingCamera
CFog_11780.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
CFog_11780.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CFog_11780.FlipbookFramerate = nr(20,20)
CFog_11780.FlipbookStartRandom = true
CFog_11780.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CrescentFacingDown_11781=i("Attachment", FlameVolcano_11770)
CrescentFacingDown_11781.Name="Crescent (FacingDown)"
CrescentFacingDown_11781.Position = v3(0.000000,2.040045,0.000000)
CrescentFacingDown_11781.Visible = false

 Crescent_11782=i("ParticleEmitter", CrescentFacingDown_11781)
Crescent_11782.Name="Crescent"
Crescent_11782.Enabled = true
Crescent_11782.Rate = 15
Crescent_11782.Lifetime = nr(2,2)
Crescent_11782.Speed = nr(2,2)
Crescent_11782.Rotation = nr(-180,180)
Crescent_11782.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Crescent_11782.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.031738,0.000000),nsk(0.200000,0.150623,0.000000),nsk(0.300000,0.345971,0.000000),nsk(0.400000,0.603261,0.000000),nsk(0.500000,0.911691,0.000000),nsk(0.600000,1.263319,0.000000),nsk(0.700000,1.652158,0.000000),nsk(0.800000,2.073562,0.000000),nsk(0.900000,2.523842,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
Crescent_11782.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.499471,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescent_11782.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
Crescent_11782.LightEmission = 1
Crescent_11782.LightInfluence = 0
Crescent_11782.Acceleration = v3(0.000000,0.500000,0.000000)
Crescent_11782.Drag = 0.5
Crescent_11782.EmissionDirection = Enum.NormalId.Top
Crescent_11782.SpreadAngle = v2(10.000000,10.000000)
Crescent_11782.ZOffset = -0.0010000000474974513
Crescent_11782.Texture = "rbxassetid://18463089761"
Crescent_11782.LockedToPart = true
Crescent_11782.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Crescent_11782.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Crescent_11782.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Crescent_11782.FlipbookFramerate = nr(20,20)
Crescent_11782.FlipbookStartRandom = true
Crescent_11782.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CCrescent_11783=i("ParticleEmitter", CrescentFacingDown_11781)
CCrescent_11783.Name="C. Crescent"
CCrescent_11783.Enabled = true
CCrescent_11783.Rate = 15
CCrescent_11783.Lifetime = nr(2,2)
CCrescent_11783.Speed = nr(2,2)
CCrescent_11783.Rotation = nr(-180,180)
CCrescent_11783.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CCrescent_11783.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.031738,0.000000),nsk(0.200000,0.150623,0.000000),nsk(0.300000,0.345971,0.000000),nsk(0.400000,0.603261,0.000000),nsk(0.500000,0.911691,0.000000),nsk(0.600000,1.263319,0.000000),nsk(0.700000,1.652158,0.000000),nsk(0.800000,2.073562,0.000000),nsk(0.900000,2.523842,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
CCrescent_11783.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
CCrescent_11783.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
CCrescent_11783.LightEmission = -5
CCrescent_11783.LightInfluence = 0
CCrescent_11783.Acceleration = v3(0.000000,0.500000,0.000000)
CCrescent_11783.Drag = 0.5
CCrescent_11783.EmissionDirection = Enum.NormalId.Top
CCrescent_11783.SpreadAngle = v2(10.000000,10.000000)
CCrescent_11783.ZOffset = -0.0020000000949949026
CCrescent_11783.Texture = "rbxassetid://18463089761"
CCrescent_11783.LockedToPart = true
CCrescent_11783.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CCrescent_11783.FlipbookLayout = Enum.ParticleFlipbookLayout.None
CCrescent_11783.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CCrescent_11783.FlipbookFramerate = nr(20,20)
CCrescent_11783.FlipbookStartRandom = true
CCrescent_11783.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Crescent_11784=i("ParticleEmitter", CrescentFacingDown_11781)
Crescent_11784.Name="Crescent"
Crescent_11784.Enabled = true
Crescent_11784.Rate = 15
Crescent_11784.Lifetime = nr(2,2)
Crescent_11784.Speed = nr(2,2)
Crescent_11784.Rotation = nr(-180,180)
Crescent_11784.RotSpeed = nr(-30,30)
Crescent_11784.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.031738,0.000000),nsk(0.200000,0.150623,0.000000),nsk(0.300000,0.345971,0.000000),nsk(0.400000,0.603261,0.000000),nsk(0.500000,0.911691,0.000000),nsk(0.600000,1.263319,0.000000),nsk(0.700000,1.652158,0.000000),nsk(0.800000,2.073562,0.000000),nsk(0.900000,2.523842,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
Crescent_11784.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.499471,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescent_11784.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
Crescent_11784.LightEmission = 1
Crescent_11784.LightInfluence = 0
Crescent_11784.Acceleration = v3(0.000000,0.500000,0.000000)
Crescent_11784.Drag = 0.5
Crescent_11784.EmissionDirection = Enum.NormalId.Top
Crescent_11784.SpreadAngle = v2(10.000000,10.000000)
Crescent_11784.ZOffset = -0.0010000000474974513
Crescent_11784.Texture = "rbxassetid://18794141926"
Crescent_11784.LockedToPart = true
Crescent_11784.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Crescent_11784.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Crescent_11784.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Crescent_11784.FlipbookFramerate = nr(20,20)
Crescent_11784.FlipbookStartRandom = true
Crescent_11784.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CCrescent_11785=i("ParticleEmitter", CrescentFacingDown_11781)
CCrescent_11785.Name="C. Crescent"
CCrescent_11785.Enabled = true
CCrescent_11785.Rate = 15
CCrescent_11785.Lifetime = nr(2,2)
CCrescent_11785.Speed = nr(2,2)
CCrescent_11785.Rotation = nr(-180,180)
CCrescent_11785.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CCrescent_11785.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.042318,0.000000),nsk(0.200000,0.200831,0.000000),nsk(0.300000,0.461295,0.000000),nsk(0.400000,0.804349,0.000000),nsk(0.500000,1.215588,0.000000),nsk(0.600000,1.684425,0.000000),nsk(0.700000,2.202877,0.000000),nsk(0.800000,2.764750,0.000000),nsk(0.900000,3.365123,0.000000),nsk(1.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
CCrescent_11785.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
CCrescent_11785.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
CCrescent_11785.LightEmission = -7
CCrescent_11785.LightInfluence = 0
CCrescent_11785.Acceleration = v3(0.000000,0.500000,0.000000)
CCrescent_11785.Drag = 0.5
CCrescent_11785.EmissionDirection = Enum.NormalId.Top
CCrescent_11785.SpreadAngle = v2(10.000000,10.000000)
CCrescent_11785.ZOffset = -0.0020000000949949026
CCrescent_11785.Texture = "rbxassetid://18463089761"
CCrescent_11785.LockedToPart = true
CCrescent_11785.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CCrescent_11785.FlipbookLayout = Enum.ParticleFlipbookLayout.None
CCrescent_11785.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CCrescent_11785.FlipbookFramerate = nr(20,20)
CCrescent_11785.FlipbookStartRandom = true
CCrescent_11785.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CrescentFacingUp_11786=i("Attachment", FlameVolcano_11770)
CrescentFacingUp_11786.Name="Crescent (FacingUp)"
CrescentFacingUp_11786.Position = v3(0.000000,-0.957164,0.000000)
CrescentFacingUp_11786.Visible = false

 Crescent_11787=i("ParticleEmitter", CrescentFacingUp_11786)
Crescent_11787.Name="Crescent"
Crescent_11787.Enabled = true
Crescent_11787.Rate = 15
Crescent_11787.Lifetime = nr(2,2)
Crescent_11787.Speed = nr(2,2)
Crescent_11787.Rotation = nr(-180,180)
Crescent_11787.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Crescent_11787.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.063477,0.000000),nsk(0.200000,0.301247,0.000000),nsk(0.300000,0.691942,0.000000),nsk(0.400000,1.206523,0.000000),nsk(0.500000,1.823381,0.000000),nsk(0.600000,2.526638,0.000000),nsk(0.700000,3.304315,0.000000),nsk(0.800000,4.147125,0.000000),nsk(0.900000,5.047684,0.000000),nsk(1.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
Crescent_11787.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.499471,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescent_11787.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
Crescent_11787.LightEmission = 1
Crescent_11787.LightInfluence = 0
Crescent_11787.Acceleration = v3(0.000000,0.500000,0.000000)
Crescent_11787.Drag = 0.5
Crescent_11787.EmissionDirection = Enum.NormalId.Top
Crescent_11787.SpreadAngle = v2(10.000000,10.000000)
Crescent_11787.ZOffset = -0.0010000000474974513
Crescent_11787.Texture = "rbxassetid://18463089761"
Crescent_11787.LockedToPart = true
Crescent_11787.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Crescent_11787.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Crescent_11787.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Crescent_11787.FlipbookFramerate = nr(20,20)
Crescent_11787.FlipbookStartRandom = true
Crescent_11787.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CCrescent_11788=i("ParticleEmitter", CrescentFacingUp_11786)
CCrescent_11788.Name="C. Crescent"
CCrescent_11788.Enabled = true
CCrescent_11788.Rate = 15
CCrescent_11788.Lifetime = nr(2,2)
CCrescent_11788.Speed = nr(2,2)
CCrescent_11788.Rotation = nr(-180,180)
CCrescent_11788.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CCrescent_11788.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.063477,0.000000),nsk(0.200000,0.301247,0.000000),nsk(0.300000,0.691942,0.000000),nsk(0.400000,1.206523,0.000000),nsk(0.500000,1.823381,0.000000),nsk(0.600000,2.526638,0.000000),nsk(0.700000,3.304315,0.000000),nsk(0.800000,4.147125,0.000000),nsk(0.900000,5.047684,0.000000),nsk(1.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
CCrescent_11788.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
CCrescent_11788.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
CCrescent_11788.LightEmission = -5
CCrescent_11788.LightInfluence = 0
CCrescent_11788.Acceleration = v3(0.000000,0.500000,0.000000)
CCrescent_11788.Drag = 0.5
CCrescent_11788.EmissionDirection = Enum.NormalId.Top
CCrescent_11788.SpreadAngle = v2(10.000000,10.000000)
CCrescent_11788.ZOffset = -0.0020000000949949026
CCrescent_11788.Texture = "rbxassetid://18463089761"
CCrescent_11788.LockedToPart = true
CCrescent_11788.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CCrescent_11788.FlipbookLayout = Enum.ParticleFlipbookLayout.None
CCrescent_11788.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CCrescent_11788.FlipbookFramerate = nr(20,20)
CCrescent_11788.FlipbookStartRandom = true
CCrescent_11788.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Crescent_11789=i("ParticleEmitter", CrescentFacingUp_11786)
Crescent_11789.Name="Crescent"
Crescent_11789.Enabled = true
Crescent_11789.Rate = 15
Crescent_11789.Lifetime = nr(2,2)
Crescent_11789.Speed = nr(2,2)
Crescent_11789.Rotation = nr(-180,180)
Crescent_11789.RotSpeed = nr(-30,30)
Crescent_11789.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.063477,0.000000),nsk(0.200000,0.301247,0.000000),nsk(0.300000,0.691942,0.000000),nsk(0.400000,1.206523,0.000000),nsk(0.500000,1.823381,0.000000),nsk(0.600000,2.526638,0.000000),nsk(0.700000,3.304315,0.000000),nsk(0.800000,4.147125,0.000000),nsk(0.900000,5.047684,0.000000),nsk(1.000000,6.000000,0.000000),nsk(1.000000,6.000000,0.000000)})
Crescent_11789.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.499471,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Crescent_11789.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
Crescent_11789.LightEmission = 1
Crescent_11789.LightInfluence = 0
Crescent_11789.Acceleration = v3(0.000000,0.500000,0.000000)
Crescent_11789.Drag = 0.5
Crescent_11789.EmissionDirection = Enum.NormalId.Top
Crescent_11789.SpreadAngle = v2(10.000000,10.000000)
Crescent_11789.ZOffset = -0.0010000000474974513
Crescent_11789.Texture = "rbxassetid://18794141926"
Crescent_11789.LockedToPart = true
Crescent_11789.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Crescent_11789.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Crescent_11789.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Crescent_11789.FlipbookFramerate = nr(20,20)
Crescent_11789.FlipbookStartRandom = true
Crescent_11789.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CCrescent_11790=i("ParticleEmitter", CrescentFacingUp_11786)
CCrescent_11790.Name="C. Crescent"
CCrescent_11790.Enabled = true
CCrescent_11790.Rate = 15
CCrescent_11790.Lifetime = nr(2,2)
CCrescent_11790.Speed = nr(2,2)
CCrescent_11790.Rotation = nr(-180,180)
CCrescent_11790.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CCrescent_11790.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.074056,0.000000),nsk(0.200000,0.351454,0.000000),nsk(0.300000,0.807266,0.000000),nsk(0.400000,1.407610,0.000000),nsk(0.500000,2.127278,0.000000),nsk(0.600000,2.947744,0.000000),nsk(0.700000,3.855034,0.000000),nsk(0.800000,4.838313,0.000000),nsk(0.900000,5.888965,0.000000),nsk(1.000000,7.000000,0.000000),nsk(1.000000,7.000000,0.000000)})
CCrescent_11790.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
CCrescent_11790.Color = cs({csk(0.000000,c3(0.839216,0.310927,0.178854)),csk(1.000000,c3(0.839216,0.310927,0.178854))})
CCrescent_11790.LightEmission = -7
CCrescent_11790.LightInfluence = 0
CCrescent_11790.Acceleration = v3(0.000000,0.500000,0.000000)
CCrescent_11790.Drag = 0.5
CCrescent_11790.EmissionDirection = Enum.NormalId.Top
CCrescent_11790.SpreadAngle = v2(10.000000,10.000000)
CCrescent_11790.ZOffset = -0.0020000000949949026
CCrescent_11790.Texture = "rbxassetid://18463089761"
CCrescent_11790.LockedToPart = true
CCrescent_11790.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CCrescent_11790.FlipbookLayout = Enum.ParticleFlipbookLayout.None
CCrescent_11790.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CCrescent_11790.FlipbookFramerate = nr(20,20)
CCrescent_11790.FlipbookStartRandom = true
CCrescent_11790.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 RCFire_11791=i("ParticleEmitter", FlameVolcano_11770)
RCFire_11791.Name="R. C. Fire"
RCFire_11791.Enabled = true
RCFire_11791.Rate = 15
RCFire_11791.Lifetime = nr(1.25,1.25)
RCFire_11791.Speed = nr(2,2)
RCFire_11791.Rotation = nr(-180,180)
RCFire_11791.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
RCFire_11791.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.126954,0.000000),nsk(0.200000,0.602493,0.000000),nsk(0.300000,1.383884,0.000000),nsk(0.400000,2.413046,0.000000),nsk(0.500000,3.646763,0.000000),nsk(0.600000,5.053276,0.000000),nsk(0.700000,6.608630,0.000000),nsk(0.800000,8.294250,0.000000),nsk(0.900000,10.095368,0.000000),nsk(1.000000,12.000000,0.000000),nsk(1.000000,12.000000,0.000000)})
RCFire_11791.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.498943,0.000000,0.000000),nsk(0.886364,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
RCFire_11791.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
RCFire_11791.LightEmission = -30
RCFire_11791.LightInfluence = 0
RCFire_11791.Acceleration = v3(0.000000,10.000000,0.000000)
RCFire_11791.Drag = 0.5
RCFire_11791.EmissionDirection = Enum.NormalId.Top
RCFire_11791.SpreadAngle = v2(30.000000,30.000000)
RCFire_11791.ZOffset = -3
RCFire_11791.Texture = "rbxassetid://11447021694"
RCFire_11791.LockedToPart = true
RCFire_11791.Orientation = Enum.ParticleOrientation.FacingCamera
RCFire_11791.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
RCFire_11791.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
RCFire_11791.FlipbookFramerate = nr(20,20)
RCFire_11791.FlipbookStartRandom = true
RCFire_11791.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})



 FlamesHead_11814=i("Attachment", foldah)
FlamesHead_11814.Name="Flames (Head)"
FlamesHead_11814:SetAttribute("AuraInstance", true)
FlamesHead_11814.Position = v3(1.587615,5.817327,8.805757)
FlamesHead_11814.Visible = false

 Bobbing_11815=i("Script", FlamesHead_11814)
Bobbing_11815.Name="Bobbing"
Bobbing_11815.Source = ""

 Detail_11816=i("ParticleEmitter", FlamesHead_11814)
Detail_11816.Name="Detail"
Detail_11816.Enabled = true
Detail_11816.Rate = 5
Detail_11816.Lifetime = nr(2,2)
Detail_11816.Speed = nr(2,2)
Detail_11816.Rotation = nr(-180,180)
Detail_11816.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Detail_11816.Size = ns({nsk(0.000000,3.000000,0.000000),nsk(0.100000,3.126954,0.000000),nsk(0.200000,3.602493,0.000000),nsk(0.300000,4.383883,0.000000),nsk(0.400000,5.413046,0.000000),nsk(0.500000,6.646763,0.000000),nsk(0.600000,8.053275,0.000000),nsk(0.700000,9.608630,0.000000),nsk(0.800000,11.294250,0.000000),nsk(0.900000,13.095368,0.000000),nsk(1.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
Detail_11816.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
Detail_11816.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Detail_11816.LightEmission = 1
Detail_11816.LightInfluence = 0
Detail_11816.Acceleration = v3(0.000000,12.000000,0.000000)
Detail_11816.Drag = 0.5
Detail_11816.EmissionDirection = Enum.NormalId.Top
Detail_11816.SpreadAngle = v2(30.000000,30.000000)
Detail_11816.ZOffset = 5
Detail_11816.Texture = "rbxassetid://12779603482"
Detail_11816.LockedToPart = true
Detail_11816.Orientation = Enum.ParticleOrientation.FacingCamera
Detail_11816.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Detail_11816.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Detail_11816.FlipbookFramerate = nr(20,20)
Detail_11816.FlipbookStartRandom = true
Detail_11816.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Glow_11817=i("Attachment", FlamesHead_11814)
Glow_11817.Name="Glow"
Glow_11817.Position = v3(0.000000,10.301659,0.000000)
Glow_11817.Visible = false

 Glow_11818=i("ParticleEmitter", Glow_11817)
Glow_11818.Name="Glow"
Glow_11818.Enabled = true
Glow_11818.Rate = 10
Glow_11818.Lifetime = nr(1,1)
Glow_11818.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11818.Rotation = nr(-10000,1000)
Glow_11818.RotSpeed = nr(30,30)
Glow_11818.Size = ns({nsk(0.000000,25.000000,0.000000),nsk(1.000000,25.000000,0.000000)})
Glow_11818.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360000,0.940000,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11818.Color = cs({csk(0.000000,c3(1.000000,0.347080,0.231373)),csk(1.000000,c3(1.000000,0.347080,0.231373))})
Glow_11818.LightEmission = 1
Glow_11818.LightInfluence = 0
Glow_11818.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11818.Drag = 0
Glow_11818.EmissionDirection = Enum.NormalId.Top
Glow_11818.SpreadAngle = v2(360.000000,360.000000)
Glow_11818.ZOffset = 30
Glow_11818.Texture = "rbxassetid://1075864321"
Glow_11818.LockedToPart = true
Glow_11818.Orientation = Enum.ParticleOrientation.FacingCamera
Glow_11818.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11818.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11818.FlipbookFramerate = nr(1,1)
Glow_11818.FlipbookStartRandom = false
Glow_11818.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 AcceleratingDots_11819=i("Attachment", FlamesHead_11814)
AcceleratingDots_11819.Name="Accelerating Dots"
AcceleratingDots_11819.Position = v3(-3.000031,1.394379,0.000031)
AcceleratingDots_11819.Visible = false

 DotsDebris_11820=i("ParticleEmitter", AcceleratingDots_11819)
DotsDebris_11820.Name="Dots (Debris)"
DotsDebris_11820:SetAttribute("EmitDelay", 0.05)
DotsDebris_11820:SetAttribute("EmitCount", 100)
DotsDebris_11820.Enabled = true
DotsDebris_11820.Rate = 20
DotsDebris_11820.Lifetime = nr(0.6000000238418579,0.800000011920929)
DotsDebris_11820.Speed = nr(-2.5,2.5)
DotsDebris_11820.Rotation = nr(0,360)
DotsDebris_11820.RotSpeed = nr(-200,200)
DotsDebris_11820.Size = ns({nsk(0.000000,0.200000,1.000000),nsk(0.100000,0.248063,1.000000),nsk(0.200000,0.293458,1.000000),nsk(0.300000,0.335876,1.000000),nsk(0.400000,0.374933,1.000000),nsk(0.500000,0.410153,1.000000),nsk(0.600000,0.440919,1.000000),nsk(0.700000,0.466427,1.000000),nsk(0.800000,0.485599,1.000000),nsk(0.900000,0.497051,1.000000),nsk(1.000000,0.500000,1.000000),nsk(1.000000,0.500000,1.000000)})
DotsDebris_11820.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.652220,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DotsDebris_11820.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11820.LightEmission = 1
DotsDebris_11820.LightInfluence = 0
DotsDebris_11820.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11820.Drag = 0
DotsDebris_11820.EmissionDirection = Enum.NormalId.Left
DotsDebris_11820.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11820.ZOffset = -1
DotsDebris_11820.Texture = "rbxassetid://12852915048"
DotsDebris_11820.LockedToPart = true
DotsDebris_11820.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11820.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11820.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11820.FlipbookFramerate = nr(1,1)
DotsDebris_11820.FlipbookStartRandom = false
DotsDebris_11820.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 AcceleratingDots_11821=i("Attachment", FlamesHead_11814)
AcceleratingDots_11821.Name="Accelerating Dots"
AcceleratingDots_11821.Position = v3(3.000031,1.394379,0.000031)
AcceleratingDots_11821.Visible = false

 DotsDebris_11822=i("ParticleEmitter", AcceleratingDots_11821)
DotsDebris_11822.Name="Dots (Debris)"
DotsDebris_11822:SetAttribute("EmitDelay", 0.05)
DotsDebris_11822:SetAttribute("EmitCount", 100)
DotsDebris_11822.Enabled = true
DotsDebris_11822.Rate = 20
DotsDebris_11822.Lifetime = nr(0.6000000238418579,0.800000011920929)
DotsDebris_11822.Speed = nr(-2.5,2.5)
DotsDebris_11822.Rotation = nr(0,360)
DotsDebris_11822.RotSpeed = nr(-200,200)
DotsDebris_11822.Size = ns({nsk(0.000000,0.200000,1.000000),nsk(0.100000,0.248063,1.000000),nsk(0.200000,0.293458,1.000000),nsk(0.300000,0.335876,1.000000),nsk(0.400000,0.374933,1.000000),nsk(0.500000,0.410153,1.000000),nsk(0.600000,0.440919,1.000000),nsk(0.700000,0.466427,1.000000),nsk(0.800000,0.485599,1.000000),nsk(0.900000,0.497051,1.000000),nsk(1.000000,0.500000,1.000000),nsk(1.000000,0.500000,1.000000)})
DotsDebris_11822.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.652220,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DotsDebris_11822.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11822.LightEmission = 1
DotsDebris_11822.LightInfluence = 0
DotsDebris_11822.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11822.Drag = 0
DotsDebris_11822.EmissionDirection = Enum.NormalId.Left
DotsDebris_11822.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11822.ZOffset = -1
DotsDebris_11822.Texture = "rbxassetid://12852915048"
DotsDebris_11822.LockedToPart = true
DotsDebris_11822.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11822.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11822.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11822.FlipbookFramerate = nr(1,1)
DotsDebris_11822.FlipbookStartRandom = false
DotsDebris_11822.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 CFog_11823=i("ParticleEmitter", FlamesHead_11814)
CFog_11823.Name="C. Fog"
CFog_11823.Enabled = true
CFog_11823.Rate = 15
CFog_11823.Lifetime = nr(2,2)
CFog_11823.Speed = nr(2,2)
CFog_11823.Rotation = nr(-180,180)
CFog_11823.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CFog_11823.Size = ns({nsk(0.000000,11.000000,0.000000),nsk(0.100000,11.169271,0.000000),nsk(0.200000,11.803325,0.000000),nsk(0.300000,12.845179,0.000000),nsk(0.400000,14.217395,0.000000),nsk(0.500000,15.862350,0.000000),nsk(0.600000,17.737701,0.000000),nsk(0.700000,19.811506,0.000000),nsk(0.800000,22.059000,0.000000),nsk(0.900000,24.460491,0.000000),nsk(1.000000,27.000000,0.000000),nsk(1.000000,27.000000,0.000000)})
CFog_11823.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
CFog_11823.Color = cs({csk(0.000000,c3(0.247059,0.090676,0.041292)),csk(1.000000,c3(0.247059,0.090676,0.041292))})
CFog_11823.LightEmission = -5
CFog_11823.LightInfluence = 0
CFog_11823.Acceleration = v3(0.000000,12.000000,0.000000)
CFog_11823.Drag = 0.5
CFog_11823.EmissionDirection = Enum.NormalId.Top
CFog_11823.SpreadAngle = v2(40.000000,40.000000)
CFog_11823.ZOffset = -0.0010000000474974513
CFog_11823.Texture = "rbxassetid://11447021694"
CFog_11823.LockedToPart = true
CFog_11823.Orientation = Enum.ParticleOrientation.FacingCamera
CFog_11823.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
CFog_11823.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CFog_11823.FlipbookFramerate = nr(20,20)
CFog_11823.FlipbookStartRandom = true
CFog_11823.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Dots_11824=i("Attachment", FlamesHead_11814)
Dots_11824.Name="Dots"
Dots_11824.Position = v3(0.000000,1.394384,0.000000)
Dots_11824.Visible = false

 DotsDebris_11825=i("ParticleEmitter", Dots_11824)
DotsDebris_11825.Name="Dots (Debris)"
DotsDebris_11825:SetAttribute("EmitDelay", 0.05)
DotsDebris_11825:SetAttribute("EmitCount", 100)
DotsDebris_11825.Enabled = true
DotsDebris_11825.Rate = 80
DotsDebris_11825.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11825.Speed = nr(-50,50)
DotsDebris_11825.Rotation = nr(0,360)
DotsDebris_11825.RotSpeed = nr(-200,200)
DotsDebris_11825.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11825.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11825.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
DotsDebris_11825.LightEmission = 0
DotsDebris_11825.LightInfluence = 0
DotsDebris_11825.Acceleration = v3(0.000000,25.000000,0.000000)
DotsDebris_11825.Drag = 3
DotsDebris_11825.EmissionDirection = Enum.NormalId.Left
DotsDebris_11825.SpreadAngle = v2(90.000000,180.000000)
DotsDebris_11825.ZOffset = -1
DotsDebris_11825.Texture = "rbxassetid://12852915048"
DotsDebris_11825.LockedToPart = true
DotsDebris_11825.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11825.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11825.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11825.FlipbookFramerate = nr(1,1)
DotsDebris_11825.FlipbookStartRandom = false
DotsDebris_11825.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11826=i("ParticleEmitter", Dots_11824)
DotsDebris_11826.Name="Dots (Debris)"
DotsDebris_11826:SetAttribute("EmitDelay", 0.05)
DotsDebris_11826:SetAttribute("EmitCount", 100)
DotsDebris_11826.Enabled = true
DotsDebris_11826.Rate = 80
DotsDebris_11826.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11826.Speed = nr(-50,50)
DotsDebris_11826.Rotation = nr(0,360)
DotsDebris_11826.RotSpeed = nr(-200,200)
DotsDebris_11826.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11826.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11826.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11826.LightEmission = 1
DotsDebris_11826.LightInfluence = 0
DotsDebris_11826.Acceleration = v3(0.000000,25.000000,0.000000)
DotsDebris_11826.Drag = 3
DotsDebris_11826.EmissionDirection = Enum.NormalId.Left
DotsDebris_11826.SpreadAngle = v2(90.000000,180.000000)
DotsDebris_11826.ZOffset = -1
DotsDebris_11826.Texture = "rbxassetid://12852915048"
DotsDebris_11826.LockedToPart = true
DotsDebris_11826.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11826.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11826.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11826.FlipbookFramerate = nr(1,1)
DotsDebris_11826.FlipbookStartRandom = false
DotsDebris_11826.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11827=i("ParticleEmitter", Dots_11824)
DotsDebris_11827.Name="Dots (Debris)"
DotsDebris_11827:SetAttribute("EmitDelay", 0.05)
DotsDebris_11827:SetAttribute("EmitCount", 100)
DotsDebris_11827.Enabled = true
DotsDebris_11827.Rate = 20
DotsDebris_11827.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11827.Speed = nr(-50,50)
DotsDebris_11827.Rotation = nr(0,360)
DotsDebris_11827.RotSpeed = nr(-200,200)
DotsDebris_11827.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11827.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11827.Color = cs({csk(0.000000,c3(1.000000,0.372549,0.215686)),csk(1.000000,c3(1.000000,0.372549,0.215686))})
DotsDebris_11827.LightEmission = 1
DotsDebris_11827.LightInfluence = 0
DotsDebris_11827.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11827.Drag = 3
DotsDebris_11827.EmissionDirection = Enum.NormalId.Left
DotsDebris_11827.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11827.ZOffset = -1
DotsDebris_11827.Texture = "rbxassetid://12852915048"
DotsDebris_11827.LockedToPart = true
DotsDebris_11827.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11827.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11827.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11827.FlipbookFramerate = nr(1,1)
DotsDebris_11827.FlipbookStartRandom = false
DotsDebris_11827.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 DotsDebris_11828=i("ParticleEmitter", Dots_11824)
DotsDebris_11828.Name="Dots (Debris)"
DotsDebris_11828:SetAttribute("EmitDelay", 0.05)
DotsDebris_11828:SetAttribute("EmitCount", 100)
DotsDebris_11828.Enabled = true
DotsDebris_11828.Rate = 20
DotsDebris_11828.Lifetime = nr(0.4000000059604645,0.6000000238418579)
DotsDebris_11828.Speed = nr(-50,50)
DotsDebris_11828.Rotation = nr(0,360)
DotsDebris_11828.RotSpeed = nr(-200,200)
DotsDebris_11828.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.563636,0.750000,0.283636),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11828.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
DotsDebris_11828.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
DotsDebris_11828.LightEmission = 0
DotsDebris_11828.LightInfluence = 0
DotsDebris_11828.Acceleration = v3(0.000000,-50.000000,0.000000)
DotsDebris_11828.Drag = 3
DotsDebris_11828.EmissionDirection = Enum.NormalId.Left
DotsDebris_11828.SpreadAngle = v2(0.000000,0.000000)
DotsDebris_11828.ZOffset = -1
DotsDebris_11828.Texture = "rbxassetid://12852915048"
DotsDebris_11828.LockedToPart = true
DotsDebris_11828.Orientation = Enum.ParticleOrientation.FacingCamera
DotsDebris_11828.FlipbookLayout = Enum.ParticleFlipbookLayout.None
DotsDebris_11828.FlipbookMode = Enum.ParticleFlipbookMode.Loop
DotsDebris_11828.FlipbookFramerate = nr(1,1)
DotsDebris_11828.FlipbookStartRandom = false
DotsDebris_11828.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

 Fire_11829=i("ParticleEmitter", FlamesHead_11814)
Fire_11829.Name="Fire"
Fire_11829.Enabled = true
Fire_11829.Rate = 3
Fire_11829.Lifetime = nr(2,2)
Fire_11829.Speed = nr(2,2)
Fire_11829.Rotation = nr(-180,180)
Fire_11829.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fire_11829.Size = ns({nsk(0.000000,3.000000,0.000000),nsk(0.100000,3.126954,0.000000),nsk(0.200000,3.602493,0.000000),nsk(0.300000,4.383883,0.000000),nsk(0.400000,5.413046,0.000000),nsk(0.500000,6.646763,0.000000),nsk(0.600000,8.053275,0.000000),nsk(0.700000,9.608630,0.000000),nsk(0.800000,11.294250,0.000000),nsk(0.900000,13.095368,0.000000),nsk(1.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
Fire_11829.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
Fire_11829.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Fire_11829.LightEmission = 1
Fire_11829.LightInfluence = 0
Fire_11829.Acceleration = v3(0.000000,16.000000,0.000000)
Fire_11829.Drag = 0.5
Fire_11829.EmissionDirection = Enum.NormalId.Top
Fire_11829.SpreadAngle = v2(30.000000,30.000000)
Fire_11829.ZOffset = 5
Fire_11829.Texture = "rbxassetid://15730376453"
Fire_11829.LockedToPart = true
Fire_11829.Orientation = Enum.ParticleOrientation.FacingCamera
Fire_11829.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Fire_11829.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Fire_11829.FlipbookFramerate = nr(20,20)
Fire_11829.FlipbookStartRandom = true
Fire_11829.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Fog_11830=i("ParticleEmitter", FlamesHead_11814)
Fog_11830.Name="Fog"
Fog_11830.Enabled = true
Fog_11830.Rate = 6
Fog_11830.Lifetime = nr(2,2)
Fog_11830.Speed = nr(2,2)
Fog_11830.Rotation = nr(-180,180)
Fog_11830.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11830.Size = ns({nsk(0.000000,6.000000,0.000000),nsk(0.100000,6.232749,0.000000),nsk(0.200000,7.104571,0.000000),nsk(0.300000,8.537120,0.000000),nsk(0.400000,10.423918,0.000000),nsk(0.500000,12.685732,0.000000),nsk(0.600000,15.264338,0.000000),nsk(0.700000,18.115822,0.000000),nsk(0.800000,21.206125,0.000000),nsk(0.900000,24.508175,0.000000),nsk(1.000000,28.000000,0.000000),nsk(1.000000,28.000000,0.000000)})
Fog_11830.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.500000,0.431694,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11830.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Fog_11830.LightEmission = 1
Fog_11830.LightInfluence = 0
Fog_11830.Acceleration = v3(0.000000,10.000000,0.000000)
Fog_11830.Drag = 0.5
Fog_11830.EmissionDirection = Enum.NormalId.Top
Fog_11830.SpreadAngle = v2(30.000000,30.000000)
Fog_11830.ZOffset = 5
Fog_11830.Texture = "rbxassetid://11447021694"
Fog_11830.LockedToPart = true
Fog_11830.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11830.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11830.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11830.FlipbookFramerate = nr(20,20)
Fog_11830.FlipbookStartRandom = true
Fog_11830.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 RCFireTop_11831=i("ParticleEmitter", FlamesHead_11814)
RCFireTop_11831.Name="R. C. Fire (Top)"
RCFireTop_11831.Enabled = true
RCFireTop_11831.Rate = 15
RCFireTop_11831.Lifetime = nr(2,2)
RCFireTop_11831.Speed = nr(2,2)
RCFireTop_11831.Rotation = nr(-180,180)
RCFireTop_11831.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
RCFireTop_11831.Size = ns({nsk(0.000000,3.000000,3.000000),nsk(0.100000,3.156670,3.000000),nsk(0.200000,3.745897,3.000000),nsk(0.300000,4.717110,3.000000),nsk(0.400000,5.999189,3.000000),nsk(0.500000,7.538777,3.000000),nsk(0.600000,9.296459,3.000000),nsk(0.700000,11.242397,3.000000),nsk(0.800000,13.353386,3.000000),nsk(0.900000,15.610933,3.000000),nsk(1.000000,18.000000,3.000000),nsk(1.000000,18.000000,3.000000)})
RCFireTop_11831.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.498414,0.327869,0.000000),nsk(1.000000,1.000000,0.000000)})
RCFireTop_11831.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
RCFireTop_11831.LightEmission = -30
RCFireTop_11831.LightInfluence = 0
RCFireTop_11831.Acceleration = v3(0.000000,17.500000,0.000000)
RCFireTop_11831.Drag = 0.5
RCFireTop_11831.EmissionDirection = Enum.NormalId.Top
RCFireTop_11831.SpreadAngle = v2(30.000000,30.000000)
RCFireTop_11831.ZOffset = 4.999000072479248
RCFireTop_11831.Texture = "rbxassetid://11447021694"
RCFireTop_11831.LockedToPart = true
RCFireTop_11831.Orientation = Enum.ParticleOrientation.FacingCamera
RCFireTop_11831.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
RCFireTop_11831.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
RCFireTop_11831.FlipbookFramerate = nr(20,20)
RCFireTop_11831.FlipbookStartRandom = true
RCFireTop_11831.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})


 GroundAura_11832=i("Attachment", Floor)
GroundAura_11832.Name="GroundAura"
GroundAura_11832:SetAttribute("AuraInstance", true)
GroundAura_11832.Position = v3(0.000000,-2.807064,0.000000)
GroundAura_11832.Visible = false

 CenterFlame_11833=i("ParticleEmitter", GroundAura_11832)
CenterFlame_11833.Name="CenterFlame"
CenterFlame_11833:SetAttribute("EmitDelay", 0)
CenterFlame_11833.Enabled = true
CenterFlame_11833.Rate = 10
CenterFlame_11833.Lifetime = nr(1,1)
CenterFlame_11833.Speed = nr(0.0010000000474974513,0.0010000000474974513)
CenterFlame_11833.Rotation = nr(-1000,1000)
CenterFlame_11833.RotSpeed = nr(0,0)
CenterFlame_11833.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.100896,0.000000),nsk(0.200000,0.489507,0.000000),nsk(0.300000,1.136022,0.000000),nsk(0.400000,1.992217,0.000000),nsk(0.500000,3.021265,0.000000),nsk(0.600000,4.195892,0.000000),nsk(0.700000,5.495492,0.000000),nsk(0.800000,6.904091,0.000000),nsk(0.900000,8.409016,0.000000),nsk(1.000000,10.000000,0.000000),nsk(1.000000,10.000000,0.000000)})
CenterFlame_11833.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.544397,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
CenterFlame_11833.Color = cs({csk(0.000000,c3(1.000000,0.411408,0.298039)),csk(1.000000,c3(1.000000,0.411408,0.298039))})
CenterFlame_11833.LightEmission = 1
CenterFlame_11833.LightInfluence = 0
CenterFlame_11833.Acceleration = v3(0.000000,0.000000,0.000000)
CenterFlame_11833.Drag = 1
CenterFlame_11833.EmissionDirection = Enum.NormalId.Top
CenterFlame_11833.SpreadAngle = v2(0.001000,0.001000)
CenterFlame_11833.ZOffset = 0.014000000432133675
CenterFlame_11833.Texture = "rbxassetid://14200879082"
CenterFlame_11833.LockedToPart = true
CenterFlame_11833.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CenterFlame_11833.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CenterFlame_11833.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CenterFlame_11833.FlipbookFramerate = nr(10,10)
CenterFlame_11833.FlipbookStartRandom = false
CenterFlame_11833.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CBurst_11834=i("ParticleEmitter", GroundAura_11832)
CBurst_11834.Name="C. Burst"
CBurst_11834:SetAttribute("EmitDelay", 0)
CBurst_11834.Enabled = true
CBurst_11834.Rate = 10
CBurst_11834.Lifetime = nr(1,1)
CBurst_11834.Speed = nr(0.0010000000474974513,0.0010000000474974513)
CBurst_11834.Rotation = nr(-1000,1000)
CBurst_11834.RotSpeed = nr(0,0)
CBurst_11834.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.484681,0.000000),nsk(0.200000,1.897143,0.000000),nsk(0.300000,4.116459,0.000000),nsk(0.400000,6.935930,0.000000),nsk(0.500000,10.071088,0.000000),nsk(0.600000,13.192719,0.000000),nsk(0.700000,15.976924,0.000000),nsk(0.800000,18.152712,0.000000),nsk(0.900000,19.529480,0.000000),nsk(1.000000,20.000000,0.000000),nsk(1.000000,20.000000,0.000000)})
CBurst_11834.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.544397,0.000000,0.000000),nsk(0.936046,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
CBurst_11834.Color = cs({csk(0.000000,c3(1.000000,0.411408,0.298039)),csk(1.000000,c3(1.000000,0.411408,0.298039))})
CBurst_11834.LightEmission = -10
CBurst_11834.LightInfluence = 0
CBurst_11834.Acceleration = v3(0.000000,0.000000,0.000000)
CBurst_11834.Drag = 1
CBurst_11834.EmissionDirection = Enum.NormalId.Top
CBurst_11834.SpreadAngle = v2(0.001000,0.001000)
CBurst_11834.ZOffset = 0.0020000000949949026
CBurst_11834.Texture = "rbxassetid://11866455263"
CBurst_11834.LockedToPart = true
CBurst_11834.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CBurst_11834.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CBurst_11834.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CBurst_11834.FlipbookFramerate = nr(10,10)
CBurst_11834.FlipbookStartRandom = false
CBurst_11834.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CShadow_11835=i("ParticleEmitter", GroundAura_11832)
CShadow_11835.Name="C. Shadow"
CShadow_11835.Enabled = true
CShadow_11835.Rate = 40
CShadow_11835.Lifetime = nr(1,1)
CShadow_11835.Speed = nr(0.009600000455975533,0.009600000455975533)
CShadow_11835.Rotation = nr(-1000,1000)
CShadow_11835.RotSpeed = nr(0,5)
CShadow_11835.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,4.014436,0.000000),nsk(0.200000,7.807166,0.000000),nsk(0.300000,11.351597,0.000000),nsk(0.400000,14.614954,0.000000),nsk(0.500000,17.556070,0.000000),nsk(0.600000,20.122129,0.000000),nsk(0.700000,22.243931,0.000000),nsk(0.800000,23.829855,0.000000),nsk(0.900000,24.765442,0.000000),nsk(1.000000,25.000000,0.000000),nsk(1.000000,25.000000,0.000000)})
CShadow_11835.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.479387,0.787500,0.000000),nsk(1.000000,1.000000,0.000000)})
CShadow_11835.Color = cs({csk(0.000000,c3(1.000000,0.538178,0.396078)),csk(1.000000,c3(1.000000,0.538178,0.396078))})
CShadow_11835.LightEmission = -10
CShadow_11835.LightInfluence = 0
CShadow_11835.Acceleration = v3(0.000000,0.000000,0.000000)
CShadow_11835.Drag = 1
CShadow_11835.EmissionDirection = Enum.NormalId.Top
CShadow_11835.SpreadAngle = v2(0.001000,0.001000)
CShadow_11835.ZOffset = -0.0020000000949949026
CShadow_11835.Texture = "rbxassetid://15333819074"
CShadow_11835.LockedToPart = true
CShadow_11835.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CShadow_11835.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CShadow_11835.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CShadow_11835.FlipbookFramerate = nr(12,12)
CShadow_11835.FlipbookStartRandom = true
CShadow_11835.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CCenterFlame_11836=i("ParticleEmitter", GroundAura_11832)
CCenterFlame_11836.Name="C. CenterFlame"
CCenterFlame_11836:SetAttribute("EmitDelay", 0)
CCenterFlame_11836.Enabled = true
CCenterFlame_11836.Rate = 10
CCenterFlame_11836.Lifetime = nr(1,1)
CCenterFlame_11836.Speed = nr(0.0010000000474974513,0.0010000000474974513)
CCenterFlame_11836.Rotation = nr(-1000,1000)
CCenterFlame_11836.RotSpeed = nr(0,0)
CCenterFlame_11836.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.151344,0.000000),nsk(0.200000,0.734261,0.000000),nsk(0.300000,1.704033,0.000000),nsk(0.400000,2.988325,0.000000),nsk(0.500000,4.531897,0.000000),nsk(0.600000,6.293838,0.000000),nsk(0.700000,8.243237,0.000000),nsk(0.800000,10.356136,0.000000),nsk(0.900000,12.613523,0.000000),nsk(1.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
CCenterFlame_11836.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.544397,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
CCenterFlame_11836.Color = cs({csk(0.000000,c3(1.000000,0.411408,0.298039)),csk(1.000000,c3(1.000000,0.411408,0.298039))})
CCenterFlame_11836.LightEmission = -1
CCenterFlame_11836.LightInfluence = 0
CCenterFlame_11836.Acceleration = v3(0.000000,0.000000,0.000000)
CCenterFlame_11836.Drag = 1
CCenterFlame_11836.EmissionDirection = Enum.NormalId.Top
CCenterFlame_11836.SpreadAngle = v2(0.001000,0.001000)
CCenterFlame_11836.ZOffset = 0.012000000104308128
CCenterFlame_11836.Texture = "rbxassetid://14200879082"
CCenterFlame_11836.LockedToPart = true
CCenterFlame_11836.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CCenterFlame_11836.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CCenterFlame_11836.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CCenterFlame_11836.FlipbookFramerate = nr(10,10)
CCenterFlame_11836.FlipbookStartRandom = false
CCenterFlame_11836.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 CBurst_11837=i("ParticleEmitter", GroundAura_11832)
CBurst_11837.Name="C. Burst"
CBurst_11837:SetAttribute("EmitDelay", 0)
CBurst_11837.Enabled = true
CBurst_11837.Rate = 10
CBurst_11837.Lifetime = nr(1,1)
CBurst_11837.Speed = nr(0.0010000000474974513,0.0010000000474974513)
CBurst_11837.Rotation = nr(-1000,1000)
CBurst_11837.RotSpeed = nr(0,0)
CBurst_11837.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.252240,0.000000),nsk(0.200000,1.223768,0.000000),nsk(0.300000,2.840055,0.000000),nsk(0.400000,4.980542,0.000000),nsk(0.500000,7.553161,0.000000),nsk(0.600000,10.489730,0.000000),nsk(0.700000,13.738729,0.000000),nsk(0.800000,17.260227,0.000000),nsk(0.900000,21.022539,0.000000),nsk(1.000000,25.000000,0.000000),nsk(1.000000,25.000000,0.000000)})
CBurst_11837.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.544397,0.000000,0.000000),nsk(0.936046,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
CBurst_11837.Color = cs({csk(0.000000,c3(1.000000,0.411408,0.298039)),csk(1.000000,c3(1.000000,0.411408,0.298039))})
CBurst_11837.LightEmission = -10
CBurst_11837.LightInfluence = 0
CBurst_11837.Acceleration = v3(0.000000,0.000000,0.000000)
CBurst_11837.Drag = 1
CBurst_11837.EmissionDirection = Enum.NormalId.Top
CBurst_11837.SpreadAngle = v2(0.001000,0.001000)
CBurst_11837.ZOffset = 0
CBurst_11837.Texture = "rbxassetid://11866455263"
CBurst_11837.LockedToPart = true
CBurst_11837.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CBurst_11837.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CBurst_11837.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CBurst_11837.FlipbookFramerate = nr(10,10)
CBurst_11837.FlipbookStartRandom = false
CBurst_11837.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Burst_11838=i("ParticleEmitter", GroundAura_11832)
Burst_11838.Name="Burst"
Burst_11838:SetAttribute("EmitDelay", 0)
Burst_11838.Enabled = true
Burst_11838.Rate = 10
Burst_11838.Lifetime = nr(1,1)
Burst_11838.Speed = nr(0.0010000000474974513,0.0010000000474974513)
Burst_11838.Rotation = nr(-1000,1000)
Burst_11838.RotSpeed = nr(0,0)
Burst_11838.Size = ns({nsk(0.000000,5.000000,0.000000),nsk(0.100000,5.264487,0.000000),nsk(0.200000,6.255194,0.000000),nsk(0.300000,7.883091,0.000000),nsk(0.400000,10.027179,0.000000),nsk(0.500000,12.597423,0.000000),nsk(0.600000,15.527658,0.000000),nsk(0.700000,18.767979,0.000000),nsk(0.800000,22.279688,0.000000),nsk(0.900000,26.032017,0.000000),nsk(1.000000,30.000000,0.000000),nsk(1.000000,30.000000,0.000000)})
Burst_11838.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.544397,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Burst_11838.Color = cs({csk(0.000000,c3(1.000000,0.410187,0.298039)),csk(1.000000,c3(1.000000,0.410187,0.298039))})
Burst_11838.LightEmission = 1
Burst_11838.LightInfluence = 0
Burst_11838.Acceleration = v3(0.000000,0.000000,0.000000)
Burst_11838.Drag = 1
Burst_11838.EmissionDirection = Enum.NormalId.Top
Burst_11838.SpreadAngle = v2(0.001000,0.001000)
Burst_11838.ZOffset = 0.006000000052154064
Burst_11838.Texture = "rbxassetid://11866455263"
Burst_11838.LockedToPart = true
Burst_11838.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Burst_11838.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Burst_11838.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Burst_11838.FlipbookFramerate = nr(10,10)
Burst_11838.FlipbookStartRandom = false
Burst_11838.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Shadow_11839=i("ParticleEmitter", GroundAura_11832)
Shadow_11839.Name="Shadow"
Shadow_11839.Enabled = true
Shadow_11839.Rate = 40
Shadow_11839.Lifetime = nr(1,1)
Shadow_11839.Speed = nr(0.009600000455975533,0.009600000455975533)
Shadow_11839.Rotation = nr(-1000,1000)
Shadow_11839.RotSpeed = nr(0,5)
Shadow_11839.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,3.372126,0.000000),nsk(0.200000,6.558019,0.000000),nsk(0.300000,9.535341,0.000000),nsk(0.400000,12.276562,0.000000),nsk(0.500000,14.747099,0.000000),nsk(0.600000,16.902588,0.000000),nsk(0.700000,18.684902,0.000000),nsk(0.800000,20.017078,0.000000),nsk(0.900000,20.802971,0.000000),nsk(1.000000,21.000000,0.000000),nsk(1.000000,21.000000,0.000000)})
Shadow_11839.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.479387,0.787500,0.000000),nsk(1.000000,1.000000,0.000000)})
Shadow_11839.Color = cs({csk(0.000000,c3(1.000000,0.538178,0.396078)),csk(1.000000,c3(1.000000,0.538178,0.396078))})
Shadow_11839.LightEmission = -2
Shadow_11839.LightInfluence = 0
Shadow_11839.Acceleration = v3(0.000000,0.000000,0.000000)
Shadow_11839.Drag = 1
Shadow_11839.EmissionDirection = Enum.NormalId.Top
Shadow_11839.SpreadAngle = v2(0.001000,0.001000)
Shadow_11839.ZOffset = 0.0010000000474974513
Shadow_11839.Texture = "rbxassetid://15333819074"
Shadow_11839.LockedToPart = true
Shadow_11839.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Shadow_11839.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Shadow_11839.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Shadow_11839.FlipbookFramerate = nr(12,12)
Shadow_11839.FlipbookStartRandom = true
Shadow_11839.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 FloorGlow_11840=i("Attachment", GroundAura_11832)
FloorGlow_11840.Name="FloorGlow"
FloorGlow_11840.Position = v3(0.000000,0.348772,0.000000)
FloorGlow_11840.Visible = false

 Glow_11841=i("ParticleEmitter", FloorGlow_11840)
Glow_11841.Name="Glow"
Glow_11841.Enabled = true
Glow_11841.Rate = 10
Glow_11841.Lifetime = nr(1,1)
Glow_11841.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11841.Rotation = nr(-10000,1000)
Glow_11841.RotSpeed = nr(30,30)
Glow_11841.Size = ns({nsk(0.000000,40.000000,0.000000),nsk(1.000000,40.000000,0.000000)})
Glow_11841.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360000,0.940000,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11841.Color = cs({csk(0.000000,c3(1.000000,0.347080,0.231373)),csk(1.000000,c3(1.000000,0.347080,0.231373))})
Glow_11841.LightEmission = 1
Glow_11841.LightInfluence = 0
Glow_11841.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11841.Drag = 0
Glow_11841.EmissionDirection = Enum.NormalId.Top
Glow_11841.SpreadAngle = v2(0.000000,0.000000)
Glow_11841.ZOffset = 0
Glow_11841.Texture = "rbxassetid://1075864321"
Glow_11841.LockedToPart = true
Glow_11841.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Glow_11841.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11841.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11841.FlipbookFramerate = nr(1,1)
Glow_11841.FlipbookStartRandom = false
Glow_11841.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Glow_11842=i("ParticleEmitter", FloorGlow_11840)
Glow_11842.Name="Glow"
Glow_11842.Enabled = true
Glow_11842.Rate = 10
Glow_11842.Lifetime = nr(1,1)
Glow_11842.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11842.Rotation = nr(-10000,1000)
Glow_11842.RotSpeed = nr(30,30)
Glow_11842.Size = ns({nsk(0.000000,30.000000,0.000000),nsk(1.000000,30.000000,0.000000)})
Glow_11842.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360465,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11842.Color = cs({csk(0.000000,c3(1.000000,0.347080,0.231373)),csk(1.000000,c3(1.000000,0.347080,0.231373))})
Glow_11842.LightEmission = -3
Glow_11842.LightInfluence = 0
Glow_11842.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11842.Drag = 0
Glow_11842.EmissionDirection = Enum.NormalId.Top
Glow_11842.SpreadAngle = v2(0.000000,0.000000)
Glow_11842.ZOffset = -0.0020000000949949026
Glow_11842.Texture = "rbxassetid://1075864321"
Glow_11842.LockedToPart = true
Glow_11842.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Glow_11842.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11842.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11842.FlipbookFramerate = nr(1,1)
Glow_11842.FlipbookStartRandom = false
Glow_11842.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Glow_11843=i("Attachment", GroundAura_11832)
Glow_11843.Name="Glow"
Glow_11843.Position = v3(0.000000,0.301656,0.000000)
Glow_11843.Visible = false

 Glow_11844=i("ParticleEmitter", Glow_11843)
Glow_11844.Name="Glow"
Glow_11844.Enabled = true
Glow_11844.Rate = 10
Glow_11844.Lifetime = nr(1,1)
Glow_11844.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11844.Rotation = nr(-10000,1000)
Glow_11844.RotSpeed = nr(30,30)
Glow_11844.Size = ns({nsk(0.000000,25.000000,0.000000),nsk(1.000000,25.000000,0.000000)})
Glow_11844.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360465,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11844.Color = cs({csk(0.000000,c3(1.000000,0.347080,0.231373)),csk(1.000000,c3(1.000000,0.347080,0.231373))})
Glow_11844.LightEmission = -3
Glow_11844.LightInfluence = 0
Glow_11844.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11844.Drag = 0
Glow_11844.EmissionDirection = Enum.NormalId.Top
Glow_11844.SpreadAngle = v2(360.000000,360.000000)
Glow_11844.ZOffset = -10
Glow_11844.Texture = "rbxassetid://1075864321"
Glow_11844.LockedToPart = true
Glow_11844.Orientation = Enum.ParticleOrientation.FacingCamera
Glow_11844.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11844.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11844.FlipbookFramerate = nr(1,1)
Glow_11844.FlipbookStartRandom = false
Glow_11844.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 Glow_11845=i("ParticleEmitter", Glow_11843)
Glow_11845.Name="Glow"
Glow_11845.Enabled = true
Glow_11845.Rate = 10
Glow_11845.Lifetime = nr(1,1)
Glow_11845.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11845.Rotation = nr(-10000,1000)
Glow_11845.RotSpeed = nr(30,30)
Glow_11845.Size = ns({nsk(0.000000,35.000000,0.000000),nsk(1.000000,35.000000,0.000000)})
Glow_11845.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360000,0.940000,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11845.Color = cs({csk(0.000000,c3(1.000000,0.347080,0.231373)),csk(1.000000,c3(1.000000,0.347080,0.231373))})
Glow_11845.LightEmission = 1
Glow_11845.LightInfluence = 0
Glow_11845.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11845.Drag = 0
Glow_11845.EmissionDirection = Enum.NormalId.Top
Glow_11845.SpreadAngle = v2(360.000000,360.000000)
Glow_11845.ZOffset = 30
Glow_11845.Texture = "rbxassetid://1075864321"
Glow_11845.LockedToPart = true
Glow_11845.Orientation = Enum.ParticleOrientation.FacingCamera
Glow_11845.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11845.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11845.FlipbookFramerate = nr(1,1)
Glow_11845.FlipbookStartRandom = false
Glow_11845.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 WavyFlames_11846=i("ParticleEmitter", GroundAura_11832)
WavyFlames_11846.Name="WavyFlames"
WavyFlames_11846:SetAttribute("EmitDelay", 0)
WavyFlames_11846.Enabled = true
WavyFlames_11846.Rate = 40
WavyFlames_11846.Lifetime = nr(1,1)
WavyFlames_11846.Speed = nr(0.0010000000474974513,0.0010000000474974513)
WavyFlames_11846.Rotation = nr(-1000,1000)
WavyFlames_11846.RotSpeed = nr(0,0)
WavyFlames_11846.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.290936,0.000000),nsk(0.200000,1.380714,0.000000),nsk(0.300000,3.171400,0.000000),nsk(0.400000,5.529897,0.000000),nsk(0.500000,8.357165,0.000000),nsk(0.600000,11.580423,0.000000),nsk(0.700000,15.144777,0.000000),nsk(0.800000,19.007656,0.000000),nsk(0.900000,23.135220,0.000000),nsk(1.000000,27.500000,0.000000),nsk(1.000000,27.500000,0.000000)})
WavyFlames_11846.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.544397,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
WavyFlames_11846.Color = cs({csk(0.000000,c3(1.000000,0.588811,0.400000)),csk(1.000000,c3(1.000000,0.588811,0.400000))})
WavyFlames_11846.LightEmission = 1
WavyFlames_11846.LightInfluence = 0
WavyFlames_11846.Acceleration = v3(0.000000,0.000000,0.000000)
WavyFlames_11846.Drag = 1
WavyFlames_11846.EmissionDirection = Enum.NormalId.Top
WavyFlames_11846.SpreadAngle = v2(0.001000,0.001000)
WavyFlames_11846.ZOffset = 0.009999999776482582
WavyFlames_11846.Texture = "rbxassetid://12602224662"
WavyFlames_11846.LockedToPart = true
WavyFlames_11846.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
WavyFlames_11846.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
WavyFlames_11846.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
WavyFlames_11846.FlipbookFramerate = nr(10,10)
WavyFlames_11846.FlipbookStartRandom = false
WavyFlames_11846.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

 InnerWavyFlames_11847=i("ParticleEmitter", GroundAura_11832)
InnerWavyFlames_11847.Name="InnerWavyFlames"
InnerWavyFlames_11847:SetAttribute("EmitDelay", 0)
InnerWavyFlames_11847.Enabled = true
InnerWavyFlames_11847.Rate = 40
InnerWavyFlames_11847.Lifetime = nr(1,1)
InnerWavyFlames_11847.Speed = nr(0.0010000000474974513,0.0010000000474974513)
InnerWavyFlames_11847.Rotation = nr(-1000,1000)
InnerWavyFlames_11847.RotSpeed = nr(0,0)
InnerWavyFlames_11847.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.151344,0.000000),nsk(0.200000,0.734261,0.000000),nsk(0.300000,1.704033,0.000000),nsk(0.400000,2.988325,0.000000),nsk(0.500000,4.531897,0.000000),nsk(0.600000,6.293838,0.000000),nsk(0.700000,8.243237,0.000000),nsk(0.800000,10.356136,0.000000),nsk(0.900000,12.613523,0.000000),nsk(1.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
InnerWavyFlames_11847.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.544397,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
InnerWavyFlames_11847.Color = cs({csk(0.000000,c3(1.000000,0.588811,0.400000)),csk(1.000000,c3(1.000000,0.588811,0.400000))})
InnerWavyFlames_11847.LightEmission = 1
InnerWavyFlames_11847.LightInfluence = 0
InnerWavyFlames_11847.Acceleration = v3(0.000000,0.000000,0.000000)
InnerWavyFlames_11847.Drag = 1
InnerWavyFlames_11847.EmissionDirection = Enum.NormalId.Top
InnerWavyFlames_11847.SpreadAngle = v2(0.001000,0.001000)
InnerWavyFlames_11847.ZOffset = 0.01600000075995922
InnerWavyFlames_11847.Texture = "rbxassetid://12602224662"
InnerWavyFlames_11847.LockedToPart = true
InnerWavyFlames_11847.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
InnerWavyFlames_11847.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
InnerWavyFlames_11847.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
InnerWavyFlames_11847.FlipbookFramerate = nr(10,10)
InnerWavyFlames_11847.FlipbookStartRandom = false
InnerWavyFlames_11847.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})



local GroundFlames_11724=i("Attachment", Floor)
GroundFlames_11724.Name="GroundFlames"
GroundFlames_11724:SetAttribute("AuraInstance", true)
GroundFlames_11724.Position = v3(0.000000,-3.000000,0.000000)
GroundFlames_11724.Visible = false

local Fog_11725=i("ParticleEmitter", GroundFlames_11724)
Fog_11725.Name="Fog"
Fog_11725.Enabled = true
Fog_11725.Rate = 48
Fog_11725.Lifetime = nr(2,3)
Fog_11725.Speed = nr(10,10)
Fog_11725.Rotation = nr(-180,180)
Fog_11725.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11725.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Fog_11725.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.900634,0.704918,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11725.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Fog_11725.LightEmission = 1
Fog_11725.LightInfluence = 0
Fog_11725.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11725.Drag = 0.5
Fog_11725.EmissionDirection = Enum.NormalId.Right
Fog_11725.SpreadAngle = v2(3.500000,-360.000000)
Fog_11725.ZOffset = 5
Fog_11725.Texture = "rbxassetid://11447021694"
Fog_11725.LockedToPart = true
Fog_11725.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11725.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11725.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11725.FlipbookFramerate = nr(20,20)
Fog_11725.FlipbookStartRandom = true
Fog_11725.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fog_11726=i("ParticleEmitter", GroundFlames_11724)
Fog_11726.Name="Fog"
Fog_11726.Enabled = true
Fog_11726.Rate = 48
Fog_11726.Lifetime = nr(2,3)
Fog_11726.Speed = nr(10,10)
Fog_11726.Rotation = nr(-180,180)
Fog_11726.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11726.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Fog_11726.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.700000,0.984000,0.000000),nsk(0.798626,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11726.Color = cs({csk(0.000000,c3(1.000000,0.435294,0.294118)),csk(1.000000,c3(1.000000,0.435294,0.294118))})
Fog_11726.LightEmission = -40
Fog_11726.LightInfluence = 0
Fog_11726.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11726.Drag = 0.5
Fog_11726.EmissionDirection = Enum.NormalId.Right
Fog_11726.SpreadAngle = v2(3.500000,-360.000000)
Fog_11726.ZOffset = 4.999000072479248
Fog_11726.Texture = "rbxassetid://11447021694"
Fog_11726.LockedToPart = true
Fog_11726.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11726.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11726.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11726.FlipbookFramerate = nr(20,20)
Fog_11726.FlipbookStartRandom = true
Fog_11726.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local CFog_11727=i("ParticleEmitter", GroundFlames_11724)
CFog_11727.Name="C.Fog"
CFog_11727.Enabled = true
CFog_11727.Rate = 48
CFog_11727.Lifetime = nr(2,3)
CFog_11727.Speed = nr(10,10)
CFog_11727.Rotation = nr(-180,180)
CFog_11727.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CFog_11727.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
CFog_11727.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.899577,0.912568,0.000000),nsk(1.000000,1.000000,0.000000)})
CFog_11727.Color = cs({csk(0.000000,c3(0.529412,0.196048,0.089043)),csk(1.000000,c3(0.529412,0.196048,0.089043))})
CFog_11727.LightEmission = -10
CFog_11727.LightInfluence = 0
CFog_11727.Acceleration = v3(0.000000,1.000000,0.000000)
CFog_11727.Drag = 0.5
CFog_11727.EmissionDirection = Enum.NormalId.Right
CFog_11727.SpreadAngle = v2(3.500000,-360.000000)
CFog_11727.ZOffset = 4
CFog_11727.Texture = "rbxassetid://11447021694"
CFog_11727.LockedToPart = true
CFog_11727.Orientation = Enum.ParticleOrientation.FacingCamera
CFog_11727.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
CFog_11727.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CFog_11727.FlipbookFramerate = nr(20,20)
CFog_11727.FlipbookStartRandom = true
CFog_11727.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})


local WallOfFire_11694=i("Attachment", Floor)
WallOfFire_11694.Name="WallOfFire"
WallOfFire_11694:SetAttribute("AuraInstance", true)
WallOfFire_11694.Position = v3(0.000000,0.000000,-36.658844)
WallOfFire_11694.Visible = false

local Fire_11695=i("Attachment", WallOfFire_11694)
Fire_11695.Name="Fire"
Fire_11695.Position = v3(0.000000,-10.259980,0.000000)
Fire_11695.Visible = false

local BottomFlames_11696=i("ParticleEmitter", Fire_11695)
BottomFlames_11696.Name="BottomFlames"
BottomFlames_11696:SetAttribute("EmitDelay", 0.1)
BottomFlames_11696:SetAttribute("EmitCount", 7)
BottomFlames_11696:SetAttribute("EmitDuration", 0.5)
BottomFlames_11696.Enabled = false
BottomFlames_11696.Rate = 40
BottomFlames_11696.Lifetime = nr(0.550000011920929,1.149999976158142)
BottomFlames_11696.Speed = nr(75,125)
BottomFlames_11696.Rotation = nr(-30,30)
BottomFlames_11696.RotSpeed = nr(0,0)
BottomFlames_11696.Size = ns({nsk(0.000000,8.000000,3.000000),nsk(0.100000,9.441880,3.000000),nsk(0.200000,10.803741,3.000000),nsk(0.300000,12.076265,3.000000),nsk(0.400000,13.248000,3.000000),nsk(0.500000,14.304580,3.000000),nsk(0.600000,15.227582,3.000000),nsk(0.700000,15.992818,3.000000),nsk(0.800000,16.567978,3.000000),nsk(0.900000,16.911520,3.000000),nsk(1.000000,17.000000,3.000000),nsk(1.000000,17.000000,3.000000)})
BottomFlames_11696.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.146934,0.894410,0.000000),nsk(1.000000,1.000000,0.000000)})
BottomFlames_11696.Color = cs({csk(0.000000,c3(1.000000,0.345195,0.125490)),csk(1.000000,c3(1.000000,0.345195,0.125490))})
BottomFlames_11696.LightEmission = 1
BottomFlames_11696.LightInfluence = 0
BottomFlames_11696.Acceleration = v3(0.000000,0.000000,0.000000)
BottomFlames_11696.Drag = 6
BottomFlames_11696.EmissionDirection = Enum.NormalId.Top
BottomFlames_11696.SpreadAngle = v2(20.000000,20.000000)
BottomFlames_11696.ZOffset = 1
BottomFlames_11696.Texture = "rbxassetid://16867371255"
BottomFlames_11696.LockedToPart = true
BottomFlames_11696.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
BottomFlames_11696.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
BottomFlames_11696.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
BottomFlames_11696.FlipbookFramerate = nr(1,1)
BottomFlames_11696.FlipbookStartRandom = false
BottomFlames_11696.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local FlameTexture_11697=i("ParticleEmitter", Fire_11695)
FlameTexture_11697.Name="FlameTexture"
FlameTexture_11697:SetAttribute("EmitDelay", 0.1)
FlameTexture_11697:SetAttribute("EmitCount", 14)
FlameTexture_11697:SetAttribute("EmitDuration", 0.5)
FlameTexture_11697.Enabled = false
FlameTexture_11697.Rate = 40
FlameTexture_11697.Lifetime = nr(0.550000011920929,1.149999976158142)
FlameTexture_11697.Speed = nr(75,125)
FlameTexture_11697.Rotation = nr(-30,30)
FlameTexture_11697.RotSpeed = nr(0,0)
FlameTexture_11697.Size = ns({nsk(0.000000,8.000000,3.000000),nsk(0.100000,9.441880,3.000000),nsk(0.200000,10.803741,3.000000),nsk(0.300000,12.076265,3.000000),nsk(0.400000,13.248000,3.000000),nsk(0.500000,14.304580,3.000000),nsk(0.600000,15.227582,3.000000),nsk(0.700000,15.992818,3.000000),nsk(0.800000,16.567978,3.000000),nsk(0.900000,16.911520,3.000000),nsk(1.000000,17.000000,3.000000),nsk(1.000000,17.000000,3.000000)})
FlameTexture_11697.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.148520,0.950311,0.000000),nsk(1.000000,1.000000,0.000000)})
FlameTexture_11697.Color = cs({csk(0.000000,c3(1.000000,0.345195,0.125490)),csk(1.000000,c3(1.000000,0.345195,0.125490))})
FlameTexture_11697.LightEmission = 1
FlameTexture_11697.LightInfluence = 0
FlameTexture_11697.Acceleration = v3(0.000000,0.000000,0.000000)
FlameTexture_11697.Drag = 6
FlameTexture_11697.EmissionDirection = Enum.NormalId.Top
FlameTexture_11697.SpreadAngle = v2(20.000000,20.000000)
FlameTexture_11697.ZOffset = 1
FlameTexture_11697.Texture = "rbxassetid://16867460128"
FlameTexture_11697.LockedToPart = true
FlameTexture_11697.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
FlameTexture_11697.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
FlameTexture_11697.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
FlameTexture_11697.FlipbookFramerate = nr(1,1)
FlameTexture_11697.FlipbookStartRandom = false
FlameTexture_11697.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local CFlames_11698=i("ParticleEmitter", Fire_11695)
CFlames_11698.Name="C. Flames"
CFlames_11698:SetAttribute("EmitDelay", 0.1)
CFlames_11698:SetAttribute("EmitCount", 5)
CFlames_11698:SetAttribute("EmitDuration", 0.5)
CFlames_11698.Enabled = false
CFlames_11698.Rate = 40
CFlames_11698.Lifetime = nr(0.375,0.675000011920929)
CFlames_11698.Speed = nr(150,220)
CFlames_11698.Rotation = nr(-30,30)
CFlames_11698.RotSpeed = nr(0,0)
CFlames_11698.Size = ns({nsk(0.000000,10.500000,3.000000),nsk(0.100000,11.861775,3.000000),nsk(0.200000,13.147977,3.000000),nsk(0.300000,14.349806,3.000000),nsk(0.400000,15.456445,3.000000),nsk(0.500000,16.454325,3.000000),nsk(0.600000,17.326050,3.000000),nsk(0.700000,18.048773,3.000000),nsk(0.800000,18.591980,3.000000),nsk(0.900000,18.916437,3.000000),nsk(1.000000,19.000000,3.000000),nsk(1.000000,19.000000,3.000000)})
CFlames_11698.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.146406,0.645963,0.000000),nsk(1.000000,1.000000,0.000000)})
CFlames_11698.Color = cs({csk(0.000000,c3(1.000000,0.345195,0.125490)),csk(1.000000,c3(1.000000,0.345195,0.125490))})
CFlames_11698.LightEmission = -1
CFlames_11698.LightInfluence = 0
CFlames_11698.Acceleration = v3(0.000000,0.000000,0.000000)
CFlames_11698.Drag = 12
CFlames_11698.EmissionDirection = Enum.NormalId.Top
CFlames_11698.SpreadAngle = v2(20.000000,20.000000)
CFlames_11698.ZOffset = 0.9990000128746033
CFlames_11698.Texture = "rbxassetid://16867371255"
CFlames_11698.LockedToPart = true
CFlames_11698.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
CFlames_11698.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CFlames_11698.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CFlames_11698.FlipbookFramerate = nr(2,2)
CFlames_11698.FlipbookStartRandom = false
CFlames_11698.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local MainFlames_11699=i("ParticleEmitter", Fire_11695)
MainFlames_11699.Name="MainFlames"
MainFlames_11699:SetAttribute("EmitDelay", 0.1)
MainFlames_11699:SetAttribute("EmitCount", 5)
MainFlames_11699:SetAttribute("EmitDuration", 0.5)
MainFlames_11699.Enabled = false
MainFlames_11699.Rate = 40
MainFlames_11699.Lifetime = nr(0.2750000059604645,0.574999988079071)
MainFlames_11699.Speed = nr(150,220)
MainFlames_11699.Rotation = nr(-30,30)
MainFlames_11699.RotSpeed = nr(0,0)
MainFlames_11699.Size = ns({nsk(0.000000,8.000000,3.000000),nsk(0.100000,9.441880,3.000000),nsk(0.200000,10.803741,3.000000),nsk(0.300000,12.076265,3.000000),nsk(0.400000,13.248000,3.000000),nsk(0.500000,14.304580,3.000000),nsk(0.600000,15.227582,3.000000),nsk(0.700000,15.992818,3.000000),nsk(0.800000,16.567978,3.000000),nsk(0.900000,16.911520,3.000000),nsk(1.000000,17.000000,3.000000),nsk(1.000000,17.000000,3.000000)})
MainFlames_11699.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.151163,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
MainFlames_11699.Color = cs({csk(0.000000,c3(1.000000,0.345195,0.125490)),csk(1.000000,c3(1.000000,0.345195,0.125490))})
MainFlames_11699.LightEmission = 0
MainFlames_11699.LightInfluence = 0
MainFlames_11699.Acceleration = v3(0.000000,0.000000,0.000000)
MainFlames_11699.Drag = 12
MainFlames_11699.EmissionDirection = Enum.NormalId.Top
MainFlames_11699.SpreadAngle = v2(20.000000,20.000000)
MainFlames_11699.ZOffset = 1
MainFlames_11699.Texture = "rbxassetid://16867371255"
MainFlames_11699.LockedToPart = true
MainFlames_11699.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
MainFlames_11699.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
MainFlames_11699.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
MainFlames_11699.FlipbookFramerate = nr(2,2)
MainFlames_11699.FlipbookStartRandom = false
MainFlames_11699.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local Debris_11700=i("ParticleEmitter", WallOfFire_11694)
Debris_11700.Name="Debris"
Debris_11700:SetAttribute("EmitDelay", 0.05)
Debris_11700:SetAttribute("EmitCount", 30)
Debris_11700:SetAttribute("EmitDuration", 0.75)
Debris_11700.Enabled = false
Debris_11700.Rate = 20
Debris_11700.Lifetime = nr(0.550000011920929,1.149999976158142)
Debris_11700.Speed = nr(125,125)
Debris_11700.Rotation = nr(0,0)
Debris_11700.RotSpeed = nr(0,0)
Debris_11700.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,0.700000,0.700000),nsk(0.500000,0.000000,0.000000),nsk(0.600000,0.350000,0.350000),nsk(1.000000,0.000000,0.000000)})
Debris_11700.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_11700.Color = cs({csk(0.000000,c3(1.000000,0.286123,0.109804)),csk(1.000000,c3(1.000000,0.286123,0.109804))})
Debris_11700.LightEmission = 1
Debris_11700.LightInfluence = 0
Debris_11700.Acceleration = v3(0.000000,0.000000,0.000000)
Debris_11700.Drag = 10
Debris_11700.EmissionDirection = Enum.NormalId.Top
Debris_11700.SpreadAngle = v2(100.000000,100.000000)
Debris_11700.ZOffset = 0
Debris_11700.Texture = "rbxassetid://17062454806"
Debris_11700.LockedToPart = true
Debris_11700.Orientation = Enum.ParticleOrientation.FacingCamera
Debris_11700.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Debris_11700.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Debris_11700.FlipbookFramerate = nr(1,1)
Debris_11700.FlipbookStartRandom = false
Debris_11700.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Debris_11701=i("ParticleEmitter", WallOfFire_11694)
Debris_11701.Name="Debris"
Debris_11701:SetAttribute("EmitDelay", 0.05)
Debris_11701:SetAttribute("EmitCount", 30)
Debris_11701:SetAttribute("EmitDuration", 0.75)
Debris_11701.Enabled = false
Debris_11701.Rate = 20
Debris_11701.Lifetime = nr(0.550000011920929,1.149999976158142)
Debris_11701.Speed = nr(125,125)
Debris_11701.Rotation = nr(-360,360)
Debris_11701.RotSpeed = nr(-360,360)
Debris_11701.Size = ns({nsk(0.000000,0.375000,0.375000),nsk(1.000000,0.000000,0.000000)})
Debris_11701.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Debris_11701.Color = cs({csk(0.000000,c3(1.000000,0.286123,0.109804)),csk(1.000000,c3(1.000000,0.286123,0.109804))})
Debris_11701.LightEmission = 1
Debris_11701.LightInfluence = 0
Debris_11701.Acceleration = v3(0.000000,0.000000,0.000000)
Debris_11701.Drag = 10
Debris_11701.EmissionDirection = Enum.NormalId.Top
Debris_11701.SpreadAngle = v2(100.000000,100.000000)
Debris_11701.ZOffset = 0
Debris_11701.Texture = "rbxassetid://12852915048"
Debris_11701.LockedToPart = true
Debris_11701.Orientation = Enum.ParticleOrientation.FacingCamera
Debris_11701.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Debris_11701.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Debris_11701.FlipbookFramerate = nr(1,1)
Debris_11701.FlipbookStartRandom = false
Debris_11701.Squash = ns({nsk(0.000000,0.000000,0.300000),nsk(1.000000,0.000000,0.300000)})

local FlameRing_11702=i("Attachment", WallOfFire_11694)
FlameRing_11702.Name="FlameRing"
FlameRing_11702.Position = v3(0.000000,-0.594105,0.000000)
FlameRing_11702.Visible = false

local Fog_11703=i("ParticleEmitter", FlameRing_11702)
Fog_11703.Name="Fog"
Fog_11703:SetAttribute("EmitDelay", 0)
Fog_11703:SetAttribute("EmitCount", 48)
Fog_11703:SetAttribute("EmitDuration", 0.5)
Fog_11703.Enabled = false
Fog_11703.Rate = 48
Fog_11703.Lifetime = nr(0.75,1)
Fog_11703.Speed = nr(50,50)
Fog_11703.Rotation = nr(-180,180)
Fog_11703.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11703.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Fog_11703.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.701374,0.715847,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11703.Color = cs({csk(0.000000,c3(1.000000,0.345195,0.125490)),csk(1.000000,c3(1.000000,0.345195,0.125490))})
Fog_11703.LightEmission = 1
Fog_11703.LightInfluence = 0
Fog_11703.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11703.Drag = 4
Fog_11703.EmissionDirection = Enum.NormalId.Right
Fog_11703.SpreadAngle = v2(3.500000,-360.000000)
Fog_11703.ZOffset = 5
Fog_11703.Texture = "rbxassetid://11447021694"
Fog_11703.LockedToPart = true
Fog_11703.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11703.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11703.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11703.FlipbookFramerate = nr(20,20)
Fog_11703.FlipbookStartRandom = true
Fog_11703.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fog_11704=i("ParticleEmitter", FlameRing_11702)
Fog_11704.Name="Fog"
Fog_11704:SetAttribute("EmitDelay", 0)
Fog_11704:SetAttribute("EmitCount", 48)
Fog_11704:SetAttribute("EmitDuration", 0.5)
Fog_11704.Enabled = false
Fog_11704.Rate = 48
Fog_11704.Lifetime = nr(0.75,1)
Fog_11704.Speed = nr(50,50)
Fog_11704.Rotation = nr(-180,180)
Fog_11704.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11704.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Fog_11704.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.700000,0.984000,0.000000),nsk(0.921247,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11704.Color = cs({csk(0.000000,c3(1.000000,0.403922,0.254902)),csk(1.000000,c3(1.000000,0.403922,0.254902))})
Fog_11704.LightEmission = -40
Fog_11704.LightInfluence = 0
Fog_11704.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11704.Drag = 4
Fog_11704.EmissionDirection = Enum.NormalId.Right
Fog_11704.SpreadAngle = v2(3.500000,-360.000000)
Fog_11704.ZOffset = 4.999000072479248
Fog_11704.Texture = "rbxassetid://11447021694"
Fog_11704.LockedToPart = true
Fog_11704.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11704.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11704.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11704.FlipbookFramerate = nr(20,20)
Fog_11704.FlipbookStartRandom = true
Fog_11704.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local CFog_11705=i("ParticleEmitter", FlameRing_11702)
CFog_11705.Name="C.Fog"
CFog_11705:SetAttribute("EmitDelay", 0)
CFog_11705:SetAttribute("EmitCount", 48)
CFog_11705:SetAttribute("EmitDuration", 0.5)
CFog_11705.Enabled = false
CFog_11705.Rate = 48
CFog_11705.Lifetime = nr(0.75,1)
CFog_11705.Speed = nr(50,50)
CFog_11705.Rotation = nr(-180,180)
CFog_11705.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CFog_11705.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
CFog_11705.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.835624,0.912568,0.000000),nsk(1.000000,1.000000,0.000000)})
CFog_11705.Color = cs({csk(0.000000,c3(0.529412,0.180332,0.068281)),csk(1.000000,c3(0.529412,0.180332,0.068281))})
CFog_11705.LightEmission = -10
CFog_11705.LightInfluence = 0
CFog_11705.Acceleration = v3(0.000000,1.000000,0.000000)
CFog_11705.Drag = 4
CFog_11705.EmissionDirection = Enum.NormalId.Right
CFog_11705.SpreadAngle = v2(3.500000,-360.000000)
CFog_11705.ZOffset = 4
CFog_11705.Texture = "rbxassetid://11447021694"
CFog_11705.LockedToPart = true
CFog_11705.Orientation = Enum.ParticleOrientation.FacingCamera
CFog_11705.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
CFog_11705.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CFog_11705.FlipbookFramerate = nr(20,20)
CFog_11705.FlipbookStartRandom = true
CFog_11705.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local InnerFlameRing_11706=i("Attachment", WallOfFire_11694)
InnerFlameRing_11706.Name="InnerFlameRing"
InnerFlameRing_11706.Position = v3(0.000000,-0.594105,0.000000)
InnerFlameRing_11706.Visible = false

local CFog_11707=i("ParticleEmitter", InnerFlameRing_11706)
CFog_11707.Name="C.Fog"
CFog_11707:SetAttribute("EmitDelay", 0)
CFog_11707:SetAttribute("EmitCount", 48)
CFog_11707:SetAttribute("EmitDuration", 0.5)
CFog_11707.Enabled = false
CFog_11707.Rate = 48
CFog_11707.Lifetime = nr(0.75,1)
CFog_11707.Speed = nr(30,30)
CFog_11707.Rotation = nr(-180,180)
CFog_11707.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CFog_11707.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
CFog_11707.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.835624,0.912568,0.000000),nsk(1.000000,1.000000,0.000000)})
CFog_11707.Color = cs({csk(0.000000,c3(0.529412,0.180332,0.068281)),csk(1.000000,c3(0.529412,0.180332,0.068281))})
CFog_11707.LightEmission = -10
CFog_11707.LightInfluence = 0
CFog_11707.Acceleration = v3(0.000000,1.000000,0.000000)
CFog_11707.Drag = 4
CFog_11707.EmissionDirection = Enum.NormalId.Right
CFog_11707.SpreadAngle = v2(3.500000,-360.000000)
CFog_11707.ZOffset = 4
CFog_11707.Texture = "rbxassetid://11447021694"
CFog_11707.LockedToPart = true
CFog_11707.Orientation = Enum.ParticleOrientation.FacingCamera
CFog_11707.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
CFog_11707.FlipbookMode = Enum.ParticleFlipbookMode.Loop
CFog_11707.FlipbookFramerate = nr(20,20)
CFog_11707.FlipbookStartRandom = true
CFog_11707.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fog_11708=i("ParticleEmitter", InnerFlameRing_11706)
Fog_11708.Name="Fog"
Fog_11708:SetAttribute("EmitDelay", 0)
Fog_11708:SetAttribute("EmitCount", 48)
Fog_11708:SetAttribute("EmitDuration", 0.5)
Fog_11708.Enabled = false
Fog_11708.Rate = 48
Fog_11708.Lifetime = nr(0.75,1)
Fog_11708.Speed = nr(30,30)
Fog_11708.Rotation = nr(-180,180)
Fog_11708.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11708.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Fog_11708.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.701374,0.715847,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11708.Color = cs({csk(0.000000,c3(1.000000,0.345195,0.125490)),csk(1.000000,c3(1.000000,0.345195,0.125490))})
Fog_11708.LightEmission = 1
Fog_11708.LightInfluence = 0
Fog_11708.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11708.Drag = 4
Fog_11708.EmissionDirection = Enum.NormalId.Right
Fog_11708.SpreadAngle = v2(3.500000,-360.000000)
Fog_11708.ZOffset = 5
Fog_11708.Texture = "rbxassetid://11447021694"
Fog_11708.LockedToPart = true
Fog_11708.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11708.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11708.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11708.FlipbookFramerate = nr(20,20)
Fog_11708.FlipbookStartRandom = true
Fog_11708.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fog_11709=i("ParticleEmitter", InnerFlameRing_11706)
Fog_11709.Name="Fog"
Fog_11709:SetAttribute("EmitDelay", 0)
Fog_11709:SetAttribute("EmitCount", 48)
Fog_11709:SetAttribute("EmitDuration", 0.5)
Fog_11709.Enabled = false
Fog_11709.Rate = 48
Fog_11709.Lifetime = nr(0.75,1)
Fog_11709.Speed = nr(30,30)
Fog_11709.Rotation = nr(-180,180)
Fog_11709.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11709.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(0.100000,9.947103,0.000000),nsk(0.200000,9.748961,0.000000),nsk(0.300000,9.423382,0.000000),nsk(0.400000,8.994564,0.000000),nsk(0.500000,8.480515,0.000000),nsk(0.600000,7.894469,0.000000),nsk(0.700000,7.246404,0.000000),nsk(0.800000,6.544063,0.000000),nsk(0.900000,5.793597,0.000000),nsk(1.000000,5.000000,0.000000),nsk(1.000000,5.000000,0.000000)})
Fog_11709.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.700000,0.984000,0.000000),nsk(0.921247,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11709.Color = cs({csk(0.000000,c3(1.000000,0.403922,0.254902)),csk(1.000000,c3(1.000000,0.403922,0.254902))})
Fog_11709.LightEmission = -40
Fog_11709.LightInfluence = 0
Fog_11709.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11709.Drag = 4
Fog_11709.EmissionDirection = Enum.NormalId.Right
Fog_11709.SpreadAngle = v2(3.500000,-360.000000)
Fog_11709.ZOffset = 4.999000072479248
Fog_11709.Texture = "rbxassetid://11447021694"
Fog_11709.LockedToPart = true
Fog_11709.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11709.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11709.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11709.FlipbookFramerate = nr(20,20)
Fog_11709.FlipbookStartRandom = true
Fog_11709.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local CenterFog_11710=i("Attachment", WallOfFire_11694)
CenterFog_11710.Name="CenterFog"
CenterFog_11710.Position = v3(0.000000,0.594454,0.000000)
CenterFog_11710.Visible = false

local Fog_11711=i("ParticleEmitter", CenterFog_11710)
Fog_11711.Name="Fog"
Fog_11711:SetAttribute("EmitDelay", 0.2)
Fog_11711:SetAttribute("EmitCount", 48)
Fog_11711:SetAttribute("EmitDuration", 0.5)
Fog_11711.Enabled = false
Fog_11711.Rate = 48
Fog_11711.Lifetime = nr(0.30000001192092896,0.699999988079071)
Fog_11711.Speed = nr(10,10)
Fog_11711.Rotation = nr(-180,180)
Fog_11711.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11711.Size = ns({nsk(0.000000,10.500000,3.000000),nsk(0.100000,12.823029,3.000000),nsk(0.200000,15.017137,3.000000),nsk(0.300000,17.067316,3.000000),nsk(0.400000,18.955111,3.000000),nsk(0.500000,20.657379,3.000000),nsk(0.600000,22.144438,3.000000),nsk(0.700000,23.377317,3.000000),nsk(0.800000,24.303965,3.000000),nsk(0.900000,24.857450,3.000000),nsk(1.000000,25.000000,3.000000),nsk(1.000000,25.000000,3.000000)})
Fog_11711.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.701374,0.715847,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11711.Color = cs({csk(0.000000,c3(1.000000,0.567395,0.352941)),csk(1.000000,c3(1.000000,0.567395,0.352941))})
Fog_11711.LightEmission = 1
Fog_11711.LightInfluence = 0
Fog_11711.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11711.Drag = 4
Fog_11711.EmissionDirection = Enum.NormalId.Right
Fog_11711.SpreadAngle = v2(360.000000,-360.000000)
Fog_11711.ZOffset = 5
Fog_11711.Texture = "rbxassetid://11447021694"
Fog_11711.LockedToPart = true
Fog_11711.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11711.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11711.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11711.FlipbookFramerate = nr(20,20)
Fog_11711.FlipbookStartRandom = true
Fog_11711.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Fog_11712=i("ParticleEmitter", CenterFog_11710)
Fog_11712.Name="Fog"
Fog_11712:SetAttribute("EmitDelay", 0.2)
Fog_11712:SetAttribute("EmitCount", 48)
Fog_11712:SetAttribute("EmitDuration", 0.5)
Fog_11712.Enabled = false
Fog_11712.Rate = 48
Fog_11712.Lifetime = nr(0.30000001192092896,0.699999988079071)
Fog_11712.Speed = nr(10,10)
Fog_11712.Rotation = nr(-180,180)
Fog_11712.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Fog_11712.Size = ns({nsk(0.000000,10.500000,3.000000),nsk(0.100000,12.823029,3.000000),nsk(0.200000,15.017137,3.000000),nsk(0.300000,17.067316,3.000000),nsk(0.400000,18.955111,3.000000),nsk(0.500000,20.657379,3.000000),nsk(0.600000,22.144438,3.000000),nsk(0.700000,23.377317,3.000000),nsk(0.800000,24.303965,3.000000),nsk(0.900000,24.857450,3.000000),nsk(1.000000,25.000000,3.000000),nsk(1.000000,25.000000,3.000000)})
Fog_11712.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.700000,0.984000,0.000000),nsk(0.921247,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Fog_11712.Color = cs({csk(0.000000,c3(1.000000,0.567395,0.352941)),csk(1.000000,c3(1.000000,0.567395,0.352941))})
Fog_11712.LightEmission = -40
Fog_11712.LightInfluence = 0
Fog_11712.Acceleration = v3(0.000000,1.000000,0.000000)
Fog_11712.Drag = 4
Fog_11712.EmissionDirection = Enum.NormalId.Right
Fog_11712.SpreadAngle = v2(360.000000,-360.000000)
Fog_11712.ZOffset = 4.999000072479248
Fog_11712.Texture = "rbxassetid://11447021694"
Fog_11712.LockedToPart = true
Fog_11712.Orientation = Enum.ParticleOrientation.FacingCamera
Fog_11712.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Fog_11712.FlipbookMode = Enum.ParticleFlipbookMode.Loop
Fog_11712.FlipbookFramerate = nr(20,20)
Fog_11712.FlipbookStartRandom = true
Fog_11712.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local Impact_11713=i("Attachment", WallOfFire_11694)
Impact_11713.Name="Impact"
Impact_11713.Position = v3(0.000000,3.090448,0.000000)
Impact_11713.Visible = false

local CPulse_11714=i("ParticleEmitter", Impact_11713)
CPulse_11714.Name="C. Pulse"
CPulse_11714:SetAttribute("EmitDelay", 0.1)
CPulse_11714:SetAttribute("EmitCount", 5)
CPulse_11714:SetAttribute("EmitDuration", 0.25)
CPulse_11714.Enabled = false
CPulse_11714.Rate = 20
CPulse_11714.Lifetime = nr(0.17499999701976776,0.42500001192092896)
CPulse_11714.Speed = nr(0.0010000000474974513,0.0010000000474974513)
CPulse_11714.Rotation = nr(0,360)
CPulse_11714.RotSpeed = nr(0,0)
CPulse_11714.Size = ns({nsk(0.000000,6.000000,0.000000),nsk(0.100000,12.251331,0.000000),nsk(0.200000,15.195147,0.000000),nsk(0.300000,17.139967,0.000000),nsk(0.400000,18.534388,0.000000),nsk(0.500000,19.562500,0.000000),nsk(0.600000,20.320415,0.000000),nsk(0.700000,20.864721,0.000000),nsk(0.800000,21.230505,0.000000),nsk(0.900000,21.438721,0.000000),nsk(1.000000,21.500000,0.000000),nsk(1.000000,21.500000,0.000000)})
CPulse_11714.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.535519,0.000000),nsk(1.000000,1.000000,0.000000)})
CPulse_11714.Color = cs({csk(0.000000,c3(1.000000,0.320236,0.113725)),csk(1.000000,c3(1.000000,0.320236,0.113725))})
CPulse_11714.LightEmission = -10
CPulse_11714.LightInfluence = 0
CPulse_11714.Acceleration = v3(0.000000,0.000000,0.000000)
CPulse_11714.Drag = 0
CPulse_11714.EmissionDirection = Enum.NormalId.Top
CPulse_11714.SpreadAngle = v2(30.000000,30.000000)
CPulse_11714.ZOffset = -10
CPulse_11714.Texture = "rbxassetid://14762708319"
CPulse_11714.LockedToPart = true
CPulse_11714.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CPulse_11714.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CPulse_11714.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CPulse_11714.FlipbookFramerate = nr(1,1)
CPulse_11714.FlipbookStartRandom = false
CPulse_11714.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Pulse_11715=i("ParticleEmitter", Impact_11713)
Pulse_11715.Name="Pulse"
Pulse_11715:SetAttribute("EmitDelay", 0.1)
Pulse_11715:SetAttribute("EmitCount", 5)
Pulse_11715:SetAttribute("EmitDuration", 0.25)
Pulse_11715.Enabled = false
Pulse_11715.Rate = 20
Pulse_11715.Lifetime = nr(0.17499999701976776,0.42500001192092896)
Pulse_11715.Speed = nr(0.0010000000474974513,0.0010000000474974513)
Pulse_11715.Rotation = nr(0,360)
Pulse_11715.RotSpeed = nr(0,0)
Pulse_11715.Size = ns({nsk(0.000000,6.000000,0.000000),nsk(0.100000,11.041396,0.000000),nsk(0.200000,13.415441,0.000000),nsk(0.300000,14.983845,0.000000),nsk(0.400000,16.108377,0.000000),nsk(0.500000,16.937500,0.000000),nsk(0.600000,17.548723,0.000000),nsk(0.700000,17.987679,0.000000),nsk(0.800000,18.282665,0.000000),nsk(0.900000,18.450583,0.000000),nsk(1.000000,18.500000,0.000000),nsk(1.000000,18.500000,0.000000)})
Pulse_11715.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Pulse_11715.Color = cs({csk(0.000000,c3(1.000000,0.320236,0.113725)),csk(1.000000,c3(1.000000,0.320236,0.113725))})
Pulse_11715.LightEmission = 1
Pulse_11715.LightInfluence = 0
Pulse_11715.Acceleration = v3(0.000000,0.000000,0.000000)
Pulse_11715.Drag = 0
Pulse_11715.EmissionDirection = Enum.NormalId.Top
Pulse_11715.SpreadAngle = v2(30.000000,30.000000)
Pulse_11715.ZOffset = 0
Pulse_11715.Texture = "rbxassetid://14762708319"
Pulse_11715.LockedToPart = true
Pulse_11715.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Pulse_11715.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Pulse_11715.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Pulse_11715.FlipbookFramerate = nr(1,1)
Pulse_11715.FlipbookStartRandom = false
Pulse_11715.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Impact_11716=i("ParticleEmitter", Impact_11713)
Impact_11716.Name="Impact"
Impact_11716:SetAttribute("EmitDelay", 0.05)
Impact_11716:SetAttribute("EmitCount", 15)
Impact_11716:SetAttribute("EmitDuration", 0)
Impact_11716.Enabled = false
Impact_11716.Rate = 20
Impact_11716.Lifetime = nr(0.07500000298023224,0.07500000298023224)
Impact_11716.Speed = nr(0.0010000000474974513,0.0010000000474974513)
Impact_11716.Rotation = nr(0,360)
Impact_11716.RotSpeed = nr(0,0)
Impact_11716.Size = ns({nsk(0.000000,6.000000,0.000000),nsk(0.100000,10.795360,0.000000),nsk(0.200000,14.062929,0.000000),nsk(0.300000,16.299820,0.000000),nsk(0.400000,17.810970,0.000000),nsk(0.500000,18.800688,0.000000),nsk(0.600000,19.414986,0.000000),nsk(0.700000,19.763618,0.000000),nsk(0.800000,19.932615,0.000000),nsk(0.900000,19.991863,0.000000),nsk(1.000000,20.000000,0.000000),nsk(1.000000,20.000000,0.000000)})
Impact_11716.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Impact_11716.Color = cs({csk(0.000000,c3(1.000000,0.320236,0.113725)),csk(1.000000,c3(1.000000,0.320236,0.113725))})
Impact_11716.LightEmission = 1
Impact_11716.LightInfluence = 0
Impact_11716.Acceleration = v3(0.000000,0.000000,0.000000)
Impact_11716.Drag = 0
Impact_11716.EmissionDirection = Enum.NormalId.Top
Impact_11716.SpreadAngle = v2(90.000000,90.000000)
Impact_11716.ZOffset = 0
Impact_11716.Texture = "rbxassetid://12385813444"
Impact_11716.LockedToPart = true
Impact_11716.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Impact_11716.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Impact_11716.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Impact_11716.FlipbookFramerate = nr(1,1)
Impact_11716.FlipbookStartRandom = false
Impact_11716.Squash = ns({nsk(0.000000,0.500000,0.000000),nsk(1.000000,0.500000,0.000000)})

local Glow_11717=i("Attachment", WallOfFire_11694)
Glow_11717.Name="Glow"
Glow_11717.Position = v3(0.000000,0.301656,0.000000)
Glow_11717.Visible = false

local Glow_11718=i("ParticleEmitter", Glow_11717)
Glow_11718.Name="Glow"
Glow_11718:SetAttribute("EmitDuration", 0.6)
Glow_11718:SetAttribute("EmitCount", 10)
Glow_11718.Enabled = false
Glow_11718.Rate = 10
Glow_11718.Lifetime = nr(1,1)
Glow_11718.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11718.Rotation = nr(-10000,1000)
Glow_11718.RotSpeed = nr(30,30)
Glow_11718.Size = ns({nsk(0.000000,25.000000,0.000000),nsk(1.000000,25.000000,0.000000)})
Glow_11718.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360465,0.967213,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11718.Color = cs({csk(0.000000,c3(1.000000,0.313768,0.192157)),csk(1.000000,c3(1.000000,0.313768,0.192157))})
Glow_11718.LightEmission = -3
Glow_11718.LightInfluence = 0
Glow_11718.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11718.Drag = 0
Glow_11718.EmissionDirection = Enum.NormalId.Top
Glow_11718.SpreadAngle = v2(360.000000,360.000000)
Glow_11718.ZOffset = -10
Glow_11718.Texture = "rbxassetid://1075864321"
Glow_11718.LockedToPart = true
Glow_11718.Orientation = Enum.ParticleOrientation.FacingCamera
Glow_11718.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11718.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11718.FlipbookFramerate = nr(1,1)
Glow_11718.FlipbookStartRandom = false
Glow_11718.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

local Glow_11719=i("ParticleEmitter", Glow_11717)
Glow_11719.Name="Glow"
Glow_11719:SetAttribute("EmitDuration", 0.6)
Glow_11719:SetAttribute("EmitCount", 10)
Glow_11719.Enabled = false
Glow_11719.Rate = 10
Glow_11719.Lifetime = nr(1,1)
Glow_11719.Speed = nr(0.0011054400820285082,0.0011054400820285082)
Glow_11719.Rotation = nr(-10000,1000)
Glow_11719.RotSpeed = nr(30,30)
Glow_11719.Size = ns({nsk(0.000000,35.000000,0.000000),nsk(1.000000,35.000000,0.000000)})
Glow_11719.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.280127,1.000000,0.000000),nsk(0.360000,0.940000,0.000000),nsk(1.000000,1.000000,0.000000)})
Glow_11719.Color = cs({csk(0.000000,c3(1.000000,0.313768,0.192157)),csk(1.000000,c3(1.000000,0.313768,0.192157))})
Glow_11719.LightEmission = 1
Glow_11719.LightInfluence = 0
Glow_11719.Acceleration = v3(0.000000,0.000000,0.000000)
Glow_11719.Drag = 0
Glow_11719.EmissionDirection = Enum.NormalId.Top
Glow_11719.SpreadAngle = v2(360.000000,360.000000)
Glow_11719.ZOffset = 30
Glow_11719.Texture = "rbxassetid://1075864321"
Glow_11719.LockedToPart = true
Glow_11719.Orientation = Enum.ParticleOrientation.FacingCamera
Glow_11719.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Glow_11719.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Glow_11719.FlipbookFramerate = nr(1,1)
Glow_11719.FlipbookStartRandom = false
Glow_11719.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

local Spark_11720=i("ParticleEmitter", WallOfFire_11694)
Spark_11720.Name="Spark"
Spark_11720:SetAttribute("EmitDelay", 0)
Spark_11720:SetAttribute("EmitCount", 100)
Spark_11720:SetAttribute("EmitDuration", 0.8)
Spark_11720.Enabled = false
Spark_11720.Rate = 100
Spark_11720.Lifetime = nr(0.5,2)
Spark_11720.Speed = nr(60,82.5)
Spark_11720.Rotation = nr(180,180)
Spark_11720.RotSpeed = nr(0,0)
Spark_11720.Size = ns({nsk(0.000000,0.500000,0.000000),nsk(0.100000,0.419896,0.000000),nsk(0.200000,0.344237,0.000000),nsk(0.300000,0.273541,0.000000),nsk(0.400000,0.208444,0.000000),nsk(0.500000,0.149746,0.000000),nsk(0.600000,0.098468,0.000000),nsk(0.700000,0.055955,0.000000),nsk(0.800000,0.024001,0.000000),nsk(0.900000,0.004916,0.000000),nsk(1.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
Spark_11720.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.098592,0.000000,0.000000),nsk(0.599232,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Spark_11720.Color = cs({csk(0.000000,c3(1.000000,0.325396,0.101961)),csk(1.000000,c3(1.000000,0.325396,0.101961))})
Spark_11720.LightEmission = 1
Spark_11720.LightInfluence = 0
Spark_11720.Acceleration = v3(0.000000,-50.000000,0.000000)
Spark_11720.Drag = 3
Spark_11720.EmissionDirection = Enum.NormalId.Top
Spark_11720.SpreadAngle = v2(45.000000,45.000000)
Spark_11720.ZOffset = 0
Spark_11720.Texture = "rbxassetid://7216980374"
Spark_11720.LockedToPart = false
Spark_11720.Orientation = Enum.ParticleOrientation.VelocityParallel
Spark_11720.FlipbookLayout = Enum.ParticleFlipbookLayout.None
Spark_11720.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Spark_11720.FlipbookFramerate = nr(1,1)
Spark_11720.FlipbookStartRandom = false
Spark_11720.Squash = ns({nsk(0.000000,-2.000000,0.000000),nsk(0.100000,-1.421644,0.000000),nsk(0.200000,-1.057754,0.000000),nsk(0.300000,-0.792416,0.000000),nsk(0.400000,-0.587675,0.000000),nsk(0.500000,-0.425461,0.000000),nsk(0.600000,-0.295559,0.000000),nsk(0.700000,-0.191607,0.000000),nsk(0.800000,-0.109423,0.000000),nsk(0.900000,-0.046206,0.000000),nsk(1.000000,0.000000,0.000000)})

local Crack_11721=i("Attachment", WallOfFire_11694)
Crack_11721.Name="Crack"
Crack_11721.Position = v3(0.000000,-2.000000,0.000000)
Crack_11721.Visible = false

local Crack_11722=i("ParticleEmitter", Crack_11721)
Crack_11722.Name="Crack"
Crack_11722:SetAttribute("EmitDelay", 0.1)
Crack_11722:SetAttribute("EmitCount", 3)
Crack_11722:SetAttribute("EmitDuration", 0.2)
Crack_11722.Enabled = false
Crack_11722.Rate = 10
Crack_11722.Lifetime = nr(0.17499999701976776,0.17499999701976776)
Crack_11722.Speed = nr(0.0010000000474974513,0.0010000000474974513)
Crack_11722.Rotation = nr(-360,360)
Crack_11722.RotSpeed = nr(0,0)
Crack_11722.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(0.100000,17.313549,0.000000),nsk(0.200000,19.041523,0.000000),nsk(0.300000,20.298082,0.000000),nsk(0.400000,21.180859,0.000000),nsk(0.500000,21.773010,0.000000),nsk(0.600000,22.145159,0.000000),nsk(0.700000,22.357141,0.000000),nsk(0.800000,22.459564,0.000000),nsk(0.900000,22.495167,0.000000),nsk(1.000000,22.500000,0.000000),nsk(1.000000,22.500000,0.000000)})
Crack_11722.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.005464,0.000000),nsk(1.000000,1.000000,0.000000)})
Crack_11722.Color = cs({csk(0.000000,c3(1.000000,0.292068,0.078431)),csk(1.000000,c3(1.000000,0.292068,0.078431))})
Crack_11722.LightEmission = 1
Crack_11722.LightInfluence = 0
Crack_11722.Acceleration = v3(0.000000,0.000000,0.000000)
Crack_11722.Drag = 0
Crack_11722.EmissionDirection = Enum.NormalId.Top
Crack_11722.SpreadAngle = v2(0.000000,0.000000)
Crack_11722.ZOffset = 1
Crack_11722.Texture = "rbxassetid://16477801787"
Crack_11722.LockedToPart = false
Crack_11722.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
Crack_11722.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Crack_11722.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Crack_11722.FlipbookFramerate = nr(1,1)
Crack_11722.FlipbookStartRandom = false
Crack_11722.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local CCrack_11723=i("ParticleEmitter", Crack_11721)
CCrack_11723.Name="C. Crack"
CCrack_11723:SetAttribute("EmitDelay", 0)
CCrack_11723:SetAttribute("EmitCount", 3)
CCrack_11723:SetAttribute("EmitDuration", 0)
CCrack_11723.Enabled = false
CCrack_11723.Rate = 10
CCrack_11723.Lifetime = nr(0.17499999701976776,0.17499999701976776)
CCrack_11723.Speed = nr(0.0010000000474974513,0.0010000000474974513)
CCrack_11723.Rotation = nr(-360,360)
CCrack_11723.RotSpeed = nr(0,0)
CCrack_11723.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(0.100000,17.313549,0.000000),nsk(0.200000,19.041523,0.000000),nsk(0.300000,20.298082,0.000000),nsk(0.400000,21.180859,0.000000),nsk(0.500000,21.773010,0.000000),nsk(0.600000,22.145159,0.000000),nsk(0.700000,22.357141,0.000000),nsk(0.800000,22.459564,0.000000),nsk(0.900000,22.495167,0.000000),nsk(1.000000,22.500000,0.000000),nsk(1.000000,22.500000,0.000000)})
CCrack_11723.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501586,0.098361,0.000000),nsk(1.000000,1.000000,0.000000)})
CCrack_11723.Color = cs({csk(0.000000,c3(1.000000,0.292068,0.078431)),csk(1.000000,c3(1.000000,0.292068,0.078431))})
CCrack_11723.LightEmission = -10
CCrack_11723.LightInfluence = 0
CCrack_11723.Acceleration = v3(0.000000,0.000000,0.000000)
CCrack_11723.Drag = 0
CCrack_11723.EmissionDirection = Enum.NormalId.Top
CCrack_11723.SpreadAngle = v2(0.000000,0.000000)
CCrack_11723.ZOffset = 0
CCrack_11723.Texture = "rbxassetid://16477801787"
CCrack_11723.LockedToPart = false
CCrack_11723.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
CCrack_11723.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CCrack_11723.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CCrack_11723.FlipbookFramerate = nr(1,1)
CCrack_11723.FlipbookStartRandom = false
CCrack_11723.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})




local Fog_11691=i("Attachment", Floor)
Fog_11691.Name="Fog"


local CSmoke_11861=i("ParticleEmitter", Fog_11691)
CSmoke_11861.Name="C. Smoke"
CSmoke_11861.Enabled = true
CSmoke_11861.Rate = 30
CSmoke_11861.Lifetime = nr(1.5,2.5)
CSmoke_11861.Speed = nr(20,20)
CSmoke_11861.Rotation = nr(-360,360)
CSmoke_11861.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CSmoke_11861.Size = ns({nsk(0.000000,12.000000,0.000000),nsk(0.100000,11.894736,0.000000),nsk(0.200000,11.502534,0.000000),nsk(0.300000,10.628295,0.000000),nsk(0.400000,8.939691,0.000000),nsk(0.500000,6.615051,0.000000),nsk(0.600000,4.872066,0.000000),nsk(0.700000,3.875073,0.000000),nsk(0.800000,3.334051,0.000000),nsk(0.900000,3.073522,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
CSmoke_11861.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.901639,0.000000),nsk(0.900000,0.995000,0.000000),nsk(1.000000,1.000000,0.000000)})
CSmoke_11861.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
CSmoke_11861.LightEmission = 0
CSmoke_11861.LightInfluence = 0
CSmoke_11861.Acceleration = v3(0.000000,0.000000,0.000000)
CSmoke_11861.Drag = 1
CSmoke_11861.EmissionDirection = Enum.NormalId.Right
CSmoke_11861.SpreadAngle = v2(90.000000,90.000000)
CSmoke_11861.ZOffset = -9.425000190734863
CSmoke_11861.Texture = "rbxassetid://14200879082"
CSmoke_11861.LockedToPart = true
CSmoke_11861.Orientation = Enum.ParticleOrientation.FacingCamera
CSmoke_11861.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CSmoke_11861.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CSmoke_11861.FlipbookFramerate = nr(20,20)
CSmoke_11861.FlipbookStartRandom = true
CSmoke_11861.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Smoke_11862=i("ParticleEmitter", Fog_11691)
Smoke_11862.Name="Smoke"
Smoke_11862.Enabled = true
Smoke_11862.Rate = 48
Smoke_11862.Lifetime = nr(1.5,2.5)
Smoke_11862.Speed = nr(20,20)
Smoke_11862.Rotation = nr(-360,360)
Smoke_11862.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Smoke_11862.Size = ns({nsk(0.000000,12.000000,0.000000),nsk(0.100000,11.894736,0.000000),nsk(0.200000,11.502534,0.000000),nsk(0.300000,10.628295,0.000000),nsk(0.400000,8.939691,0.000000),nsk(0.500000,6.615051,0.000000),nsk(0.600000,4.872066,0.000000),nsk(0.700000,3.875073,0.000000),nsk(0.800000,3.334051,0.000000),nsk(0.900000,3.073522,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
Smoke_11862.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.174947,0.983607,0.000000),nsk(0.900634,0.956284,0.000000),nsk(1.000000,1.000000,0.000000)})
Smoke_11862.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Smoke_11862.LightEmission = 1
Smoke_11862.LightInfluence = 0
Smoke_11862.Acceleration = v3(0.000000,0.000000,0.000000)
Smoke_11862.Drag = 1
Smoke_11862.EmissionDirection = Enum.NormalId.Right
Smoke_11862.SpreadAngle = v2(90.000000,90.000000)
Smoke_11862.ZOffset = 0
Smoke_11862.Texture = "rbxassetid://14200879082"
Smoke_11862.LockedToPart = true
Smoke_11862.Orientation = Enum.ParticleOrientation.FacingCamera
Smoke_11862.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Smoke_11862.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Smoke_11862.FlipbookFramerate = nr(20,20)
Smoke_11862.FlipbookStartRandom = true
Smoke_11862.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local Attachment_11863=i("Attachment", Fog_11691)
Attachment_11863.Name="Attachment"
Attachment_11863.Position = v3(0.000000,80.872314,-9.759644)
Attachment_11863.Visible = false

local Flame_11864=i("ParticleEmitter", Fog_11691)
Flame_11864.Name="Flame"
Flame_11864.Enabled = true
Flame_11864.Rate = 10
Flame_11864.Lifetime = nr(2,2)
Flame_11864.Speed = nr(14,14)
Flame_11864.Rotation = nr(-360,360)
Flame_11864.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Flame_11864.Size = ns({nsk(0.000000,12.000000,0.000000),nsk(0.100000,11.894736,0.000000),nsk(0.200000,11.502534,0.000000),nsk(0.300000,10.628295,0.000000),nsk(0.400000,8.939691,0.000000),nsk(0.500000,6.615051,0.000000),nsk(0.600000,4.872066,0.000000),nsk(0.700000,3.875073,0.000000),nsk(0.800000,3.334051,0.000000),nsk(0.900000,3.073522,0.000000),nsk(1.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})
Flame_11864.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.174947,0.983607,0.000000),nsk(0.371036,0.956284,0.000000),nsk(0.420719,0.825137,0.000000),nsk(0.464588,0.830601,0.000000),nsk(0.512156,1.000000,0.000000),nsk(0.901163,0.770492,0.000000),nsk(1.000000,1.000000,0.000000)})
Flame_11864.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Flame_11864.LightEmission = 1
Flame_11864.LightInfluence = 0
Flame_11864.Acceleration = v3(1.000000,0.000000,0.000000)
Flame_11864.Drag = 1
Flame_11864.EmissionDirection = Enum.NormalId.Right
Flame_11864.SpreadAngle = v2(90.000000,90.000000)
Flame_11864.ZOffset = 16.322999954223633
Flame_11864.Texture = "rbxassetid://12779603482"
Flame_11864.LockedToPart = true
Flame_11864.Orientation = Enum.ParticleOrientation.FacingCamera
Flame_11864.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Flame_11864.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Flame_11864.FlipbookFramerate = nr(20,20)
Flame_11864.FlipbookStartRandom = true
Flame_11864.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})









local RainR_11693=i("Attachment", Floor)
RainR_11693.Name="Rain (R)"

local Rain_11865=i("ParticleEmitter", RainR_11693)
Rain_11865.Name="Rain"
Rain_11865.Enabled = true
Rain_11865.Rate = 250
Rain_11865.Lifetime = nr(0.75,1)
Rain_11865.Speed = nr(20,40)
Rain_11865.Rotation = nr(90,90)
Rain_11865.RotSpeed = nr(0,0)
Rain_11865.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.496257,1.000000,0.500000),nsk(1.000000,0.000000,0.000000)})
Rain_11865.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Rain_11865.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
Rain_11865.LightEmission = 1
Rain_11865.LightInfluence = 0
Rain_11865.Acceleration = v3(0.000000,-10.000000,0.000000)
Rain_11865.Drag = 0
Rain_11865.EmissionDirection = Enum.NormalId.Right
Rain_11865.SpreadAngle = v2(0.000000,0.000000)
Rain_11865.ZOffset = 0
Rain_11865.Texture = "rbxassetid://16879591102"
Rain_11865.LockedToPart = false
Rain_11865.Orientation = Enum.ParticleOrientation.VelocityParallel
Rain_11865.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Rain_11865.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Rain_11865.FlipbookFramerate = nr(1,1)
Rain_11865.FlipbookStartRandom = false
Rain_11865.Squash = ns({nsk(0.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})

local Rain_11866=i("ParticleEmitter", RainR_11693)
Rain_11866.Name="Rain"
Rain_11866.Enabled = true
Rain_11866.Rate = 250
Rain_11866.Lifetime = nr(0.75,1)
Rain_11866.Speed = nr(20,40)
Rain_11866.Rotation = nr(90,90)
Rain_11866.RotSpeed = nr(0,0)
Rain_11866.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.496257,1.000000,0.500000),nsk(1.000000,0.000000,0.000000)})
Rain_11866.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Rain_11866.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
Rain_11866.LightEmission = -10
Rain_11866.LightInfluence = 0
Rain_11866.Acceleration = v3(0.000000,-10.000000,0.000000)
Rain_11866.Drag = 0
Rain_11866.EmissionDirection = Enum.NormalId.Right
Rain_11866.SpreadAngle = v2(0.000000,0.000000)
Rain_11866.ZOffset = 0
Rain_11866.Texture = "rbxassetid://16879591102"
Rain_11866.LockedToPart = false
Rain_11866.Orientation = Enum.ParticleOrientation.VelocityParallel
Rain_11866.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Rain_11866.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Rain_11866.FlipbookFramerate = nr(1,1)
Rain_11866.FlipbookStartRandom = false
Rain_11866.Squash = ns({nsk(0.000000,3.000000,0.000000),nsk(1.000000,3.000000,0.000000)})



local DebrisBottomAtmosphere_11689=i("Attachment", Floor)
DebrisBottomAtmosphere_11689.Name="Debris + Bottom Atmosphere"


local Flames_11848=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
Flames_11848.Name="Flames"
Flames_11848.Enabled = true
Flames_11848.Rate = 125
Flames_11848.Lifetime = nr(0.75,1)
Flames_11848.Speed = nr(15,20)
Flames_11848.Rotation = nr(50,50)
Flames_11848.RotSpeed = nr(0,0)
Flames_11848.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
Flames_11848.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Flames_11848.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
Flames_11848.LightEmission = 1
Flames_11848.LightInfluence = 0
Flames_11848.Acceleration = v3(0.000000,75.000000,0.000000)
Flames_11848.Drag = 0
Flames_11848.EmissionDirection = Enum.NormalId.Top
Flames_11848.SpreadAngle = v2(360.000000,360.000000)
Flames_11848.ZOffset = 0
Flames_11848.Texture = "rbxassetid://17635379154"
Flames_11848.LockedToPart = false
Flames_11848.Orientation = Enum.ParticleOrientation.VelocityParallel
Flames_11848.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Flames_11848.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Flames_11848.FlipbookFramerate = nr(1,1)
Flames_11848.FlipbookStartRandom = false
Flames_11848.Squash = ns({nsk(0.000000,0.250000,0.000000),nsk(1.000000,0.250000,0.000000)})

local Flames_11849=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
Flames_11849.Name="Flames"
Flames_11849.Enabled = true
Flames_11849.Rate = 125
Flames_11849.Lifetime = nr(0.75,1)
Flames_11849.Speed = nr(15,20)
Flames_11849.Rotation = nr(90,90)
Flames_11849.RotSpeed = nr(0,0)
Flames_11849.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
Flames_11849.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
Flames_11849.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
Flames_11849.LightEmission = 1
Flames_11849.LightInfluence = 0
Flames_11849.Acceleration = v3(0.000000,75.000000,0.000000)
Flames_11849.Drag = 0
Flames_11849.EmissionDirection = Enum.NormalId.Top
Flames_11849.SpreadAngle = v2(360.000000,360.000000)
Flames_11849.ZOffset = 0
Flames_11849.Texture = "rbxassetid://16879591102"
Flames_11849.LockedToPart = false
Flames_11849.Orientation = Enum.ParticleOrientation.VelocityParallel
Flames_11849.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
Flames_11849.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Flames_11849.FlipbookFramerate = nr(1,1)
Flames_11849.FlipbookStartRandom = false
Flames_11849.Squash = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})

local InnerGroundFlames_11850=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
InnerGroundFlames_11850.Name="InnerGroundFlames"
InnerGroundFlames_11850.Enabled = true
InnerGroundFlames_11850.Rate = 48
InnerGroundFlames_11850.Lifetime = nr(2,3)
InnerGroundFlames_11850.Speed = nr(-5,5)
InnerGroundFlames_11850.Rotation = nr(-180,180)
InnerGroundFlames_11850.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
InnerGroundFlames_11850.Size = ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
InnerGroundFlames_11850.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.900634,0.704918,0.000000),nsk(1.000000,1.000000,0.000000)})
InnerGroundFlames_11850.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
InnerGroundFlames_11850.LightEmission = 1
InnerGroundFlames_11850.LightInfluence = 0
InnerGroundFlames_11850.Acceleration = v3(0.000000,0.500000,0.000000)
InnerGroundFlames_11850.Drag = 1.75
InnerGroundFlames_11850.EmissionDirection = Enum.NormalId.Right
InnerGroundFlames_11850.SpreadAngle = v2(0.000000,0.000000)
InnerGroundFlames_11850.ZOffset = 5
InnerGroundFlames_11850.Texture = "rbxassetid://14200879082"
InnerGroundFlames_11850.LockedToPart = true
InnerGroundFlames_11850.Orientation = Enum.ParticleOrientation.FacingCamera
InnerGroundFlames_11850.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
InnerGroundFlames_11850.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
InnerGroundFlames_11850.FlipbookFramerate = nr(20,20)
InnerGroundFlames_11850.FlipbookStartRandom = true
InnerGroundFlames_11850.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local BGFlames_11851=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
BGFlames_11851.Name="(BG) Flames"
BGFlames_11851.Enabled = true
BGFlames_11851.Rate = 125
BGFlames_11851.Lifetime = nr(0.75,1)
BGFlames_11851.Speed = nr(15,20)
BGFlames_11851.Rotation = nr(50,50)
BGFlames_11851.RotSpeed = nr(0,0)
BGFlames_11851.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
BGFlames_11851.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BGFlames_11851.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
BGFlames_11851.LightEmission = 1
BGFlames_11851.LightInfluence = 0
BGFlames_11851.Acceleration = v3(0.000000,75.000000,0.000000)
BGFlames_11851.Drag = 0
BGFlames_11851.EmissionDirection = Enum.NormalId.Top
BGFlames_11851.SpreadAngle = v2(360.000000,360.000000)
BGFlames_11851.ZOffset = -10
BGFlames_11851.Texture = "rbxassetid://17635379154"
BGFlames_11851.LockedToPart = false
BGFlames_11851.Orientation = Enum.ParticleOrientation.VelocityParallel
BGFlames_11851.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
BGFlames_11851.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
BGFlames_11851.FlipbookFramerate = nr(1,1)
BGFlames_11851.FlipbookStartRandom = false
BGFlames_11851.Squash = ns({nsk(0.000000,0.250000,0.000000),nsk(1.000000,0.250000,0.000000)})

local BGFlames_11852=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
BGFlames_11852.Name="(BG) Flames"
BGFlames_11852.Enabled = true
BGFlames_11852.Rate = 125
BGFlames_11852.Lifetime = nr(0.75,1)
BGFlames_11852.Speed = nr(15,20)
BGFlames_11852.Rotation = nr(90,90)
BGFlames_11852.RotSpeed = nr(0,0)
BGFlames_11852.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
BGFlames_11852.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BGFlames_11852.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
BGFlames_11852.LightEmission = 1
BGFlames_11852.LightInfluence = 0
BGFlames_11852.Acceleration = v3(0.000000,75.000000,0.000000)
BGFlames_11852.Drag = 0
BGFlames_11852.EmissionDirection = Enum.NormalId.Top
BGFlames_11852.SpreadAngle = v2(360.000000,360.000000)
BGFlames_11852.ZOffset = -10
BGFlames_11852.Texture = "rbxassetid://16879591102"
BGFlames_11852.LockedToPart = false
BGFlames_11852.Orientation = Enum.ParticleOrientation.VelocityParallel
BGFlames_11852.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
BGFlames_11852.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
BGFlames_11852.FlipbookFramerate = nr(1,1)
BGFlames_11852.FlipbookStartRandom = false
BGFlames_11852.Squash = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})

local ExtraDebris_11853=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
ExtraDebris_11853.Name="ExtraDebris"
ExtraDebris_11853.Enabled = true
ExtraDebris_11853.Rate = 50
ExtraDebris_11853.Lifetime = nr(1,2)
ExtraDebris_11853.Speed = nr(5,5)
ExtraDebris_11853.Rotation = nr(0,360)
ExtraDebris_11853.RotSpeed = nr(360,360)
ExtraDebris_11853.Size = ns({nsk(0.000000,0.500000,1.000000),nsk(0.100000,0.500000,1.000000),nsk(0.200000,0.500000,1.000000),nsk(0.300000,0.500000,1.000000),nsk(0.400000,0.500000,1.000000),nsk(0.500000,0.500000,1.000000),nsk(0.600000,0.500000,1.000000),nsk(0.700000,0.500000,1.000000),nsk(0.800000,0.500000,1.000000),nsk(0.900000,0.500000,1.000000),nsk(1.000000,0.500000,1.000000),nsk(1.000000,0.500000,1.000000)})
ExtraDebris_11853.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.078224,0.311475,0.000000),nsk(0.453488,0.150000,0.150000),nsk(0.818182,0.661202,0.000000),nsk(0.890592,0.781421,0.000000),nsk(0.939218,0.945355,0.000000),nsk(1.000000,1.000000,0.000000)})
ExtraDebris_11853.Color = cs({csk(0.000000,c3(1.000000,0.359477,0.231373)),csk(1.000000,c3(1.000000,0.359477,0.231373))})
ExtraDebris_11853.LightEmission = 1
ExtraDebris_11853.LightInfluence = 0
ExtraDebris_11853.Acceleration = v3(0.000000,10.000000,0.000000)
ExtraDebris_11853.Drag = -1.5
ExtraDebris_11853.EmissionDirection = Enum.NormalId.Top
ExtraDebris_11853.SpreadAngle = v2(0.000000,0.000000)
ExtraDebris_11853.ZOffset = -0.041999999433755875
ExtraDebris_11853.Texture = "rbxassetid://18446116252"
ExtraDebris_11853.LockedToPart = true
ExtraDebris_11853.Orientation = Enum.ParticleOrientation.FacingCamera
ExtraDebris_11853.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ExtraDebris_11853.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ExtraDebris_11853.FlipbookFramerate = nr(1,1)
ExtraDebris_11853.FlipbookStartRandom = false
ExtraDebris_11853.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local BGDarkFlames_11854=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
BGDarkFlames_11854.Name="(BG) Dark Flames"
BGDarkFlames_11854.Enabled = true
BGDarkFlames_11854.Rate = 125
BGDarkFlames_11854.Lifetime = nr(0.75,1)
BGDarkFlames_11854.Speed = nr(15,20)
BGDarkFlames_11854.Rotation = nr(50,50)
BGDarkFlames_11854.RotSpeed = nr(0,0)
BGDarkFlames_11854.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
BGDarkFlames_11854.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BGDarkFlames_11854.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
BGDarkFlames_11854.LightEmission = -10
BGDarkFlames_11854.LightInfluence = 0
BGDarkFlames_11854.Acceleration = v3(0.000000,75.000000,0.000000)
BGDarkFlames_11854.Drag = 0
BGDarkFlames_11854.EmissionDirection = Enum.NormalId.Top
BGDarkFlames_11854.SpreadAngle = v2(360.000000,360.000000)
BGDarkFlames_11854.ZOffset = -10
BGDarkFlames_11854.Texture = "rbxassetid://17635379154"
BGDarkFlames_11854.LockedToPart = false
BGDarkFlames_11854.Orientation = Enum.ParticleOrientation.VelocityParallel
BGDarkFlames_11854.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
BGDarkFlames_11854.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
BGDarkFlames_11854.FlipbookFramerate = nr(1,1)
BGDarkFlames_11854.FlipbookStartRandom = false
BGDarkFlames_11854.Squash = ns({nsk(0.000000,0.250000,0.000000),nsk(1.000000,0.250000,0.000000)})

local BGDarkFlames_11855=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
BGDarkFlames_11855.Name="(BG) Dark Flames"
BGDarkFlames_11855.Enabled = true
BGDarkFlames_11855.Rate = 125
BGDarkFlames_11855.Lifetime = nr(0.75,1)
BGDarkFlames_11855.Speed = nr(15,20)
BGDarkFlames_11855.Rotation = nr(90,90)
BGDarkFlames_11855.RotSpeed = nr(0,0)
BGDarkFlames_11855.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
BGDarkFlames_11855.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
BGDarkFlames_11855.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
BGDarkFlames_11855.LightEmission = -10
BGDarkFlames_11855.LightInfluence = 0
BGDarkFlames_11855.Acceleration = v3(0.000000,75.000000,0.000000)
BGDarkFlames_11855.Drag = 0
BGDarkFlames_11855.EmissionDirection = Enum.NormalId.Top
BGDarkFlames_11855.SpreadAngle = v2(360.000000,360.000000)
BGDarkFlames_11855.ZOffset = -10
BGDarkFlames_11855.Texture = "rbxassetid://16879591102"
BGDarkFlames_11855.LockedToPart = false
BGDarkFlames_11855.Orientation = Enum.ParticleOrientation.VelocityParallel
BGDarkFlames_11855.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
BGDarkFlames_11855.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
BGDarkFlames_11855.FlipbookFramerate = nr(1,1)
BGDarkFlames_11855.FlipbookStartRandom = false
BGDarkFlames_11855.Squash = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})

local DarkFlames_11856=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
DarkFlames_11856.Name="Dark Flames"
DarkFlames_11856.Enabled = true
DarkFlames_11856.Rate = 125
DarkFlames_11856.Lifetime = nr(0.75,1)
DarkFlames_11856.Speed = nr(15,20)
DarkFlames_11856.Rotation = nr(90,90)
DarkFlames_11856.RotSpeed = nr(0,0)
DarkFlames_11856.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
DarkFlames_11856.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DarkFlames_11856.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
DarkFlames_11856.LightEmission = -10
DarkFlames_11856.LightInfluence = 0
DarkFlames_11856.Acceleration = v3(0.000000,75.000000,0.000000)
DarkFlames_11856.Drag = 0
DarkFlames_11856.EmissionDirection = Enum.NormalId.Top
DarkFlames_11856.SpreadAngle = v2(360.000000,360.000000)
DarkFlames_11856.ZOffset = 0
DarkFlames_11856.Texture = "rbxassetid://16879591102"
DarkFlames_11856.LockedToPart = false
DarkFlames_11856.Orientation = Enum.ParticleOrientation.VelocityParallel
DarkFlames_11856.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
DarkFlames_11856.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
DarkFlames_11856.FlipbookFramerate = nr(1,1)
DarkFlames_11856.FlipbookStartRandom = false
DarkFlames_11856.Squash = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})

local DarkFlames_11857=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
DarkFlames_11857.Name="Dark Flames"
DarkFlames_11857.Enabled = true
DarkFlames_11857.Rate = 125
DarkFlames_11857.Lifetime = nr(0.75,1)
DarkFlames_11857.Speed = nr(15,20)
DarkFlames_11857.Rotation = nr(50,50)
DarkFlames_11857.RotSpeed = nr(0,0)
DarkFlames_11857.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.500000,0.750000,0.500000),nsk(1.000000,0.000000,0.000000)})
DarkFlames_11857.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
DarkFlames_11857.Color = cs({csk(0.000000,c3(1.000000,0.402062,0.200000)),csk(1.000000,c3(1.000000,0.282353,0.282353))})
DarkFlames_11857.LightEmission = -10
DarkFlames_11857.LightInfluence = 0
DarkFlames_11857.Acceleration = v3(0.000000,75.000000,0.000000)
DarkFlames_11857.Drag = 0
DarkFlames_11857.EmissionDirection = Enum.NormalId.Top
DarkFlames_11857.SpreadAngle = v2(360.000000,360.000000)
DarkFlames_11857.ZOffset = 0
DarkFlames_11857.Texture = "rbxassetid://17635379154"
DarkFlames_11857.LockedToPart = false
DarkFlames_11857.Orientation = Enum.ParticleOrientation.VelocityParallel
DarkFlames_11857.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
DarkFlames_11857.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
DarkFlames_11857.FlipbookFramerate = nr(1,1)
DarkFlames_11857.FlipbookStartRandom = false
DarkFlames_11857.Squash = ns({nsk(0.000000,0.250000,0.000000),nsk(1.000000,0.250000,0.000000)})

local Burst_11858=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
Burst_11858.Name="Burst"
Burst_11858.Enabled = true
Burst_11858.Rate = 50
Burst_11858.Lifetime = nr(1,1)
Burst_11858.Speed = nr(-5,5)
Burst_11858.Rotation = nr(-180,180)
Burst_11858.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
Burst_11858.Size = ns({nsk(0.000000,5.000000,0.000000),nsk(0.100000,5.018027,0.000000),nsk(0.200000,5.113095,0.000000),nsk(0.300000,5.321950,0.000000),nsk(0.400000,5.674688,0.000000),nsk(0.500000,6.206405,0.000000),nsk(0.600000,6.964828,0.000000),nsk(0.700000,8.021704,0.000000),nsk(0.800000,9.496847,0.000000),nsk(0.900000,11.623067,0.000000),nsk(1.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
Burst_11858.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.182875,0.633880,0.000000),nsk(0.783298,0.300546,0.000000),nsk(1.000000,1.000000,0.000000)})
Burst_11858.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
Burst_11858.LightEmission = 1
Burst_11858.LightInfluence = 0
Burst_11858.Acceleration = v3(0.000000,3.000000,0.000000)
Burst_11858.Drag = 1.75
Burst_11858.EmissionDirection = Enum.NormalId.Right
Burst_11858.SpreadAngle = v2(0.000000,0.000000)
Burst_11858.ZOffset = 5
Burst_11858.Texture = "rbxassetid://14066311352"
Burst_11858.LockedToPart = true
Burst_11858.Orientation = Enum.ParticleOrientation.FacingCamera
Burst_11858.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
Burst_11858.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
Burst_11858.FlipbookFramerate = nr(20,20)
Burst_11858.FlipbookStartRandom = true
Burst_11858.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local BGCBurst_11859=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
BGCBurst_11859.Name="(BG) C. Burst"
BGCBurst_11859.Enabled = true
BGCBurst_11859.Rate = 20
BGCBurst_11859.Lifetime = nr(1,1)
BGCBurst_11859.Speed = nr(-9,9)
BGCBurst_11859.Rotation = nr(-180,180)
BGCBurst_11859.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
BGCBurst_11859.Size = ns({nsk(0.000000,7.500000,0.000000),nsk(0.100000,7.517126,0.000000),nsk(0.200000,7.607440,0.000000),nsk(0.300000,7.805853,0.000000),nsk(0.400000,8.140954,0.000000),nsk(0.500000,8.646084,0.000000),nsk(0.600000,9.366587,0.000000),nsk(0.700000,10.370619,0.000000),nsk(0.800000,11.772005,0.000000),nsk(0.900000,13.791913,0.000000),nsk(1.000000,17.000000,0.000000),nsk(1.000000,17.000000,0.000000)})
BGCBurst_11859.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.182875,0.633880,0.000000),nsk(0.783298,0.300546,0.000000),nsk(1.000000,1.000000,0.000000)})
BGCBurst_11859.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
BGCBurst_11859.LightEmission = -20
BGCBurst_11859.LightInfluence = 0
BGCBurst_11859.Acceleration = v3(0.000000,5.000000,0.000000)
BGCBurst_11859.Drag = 1.75
BGCBurst_11859.EmissionDirection = Enum.NormalId.Right
BGCBurst_11859.SpreadAngle = v2(0.000000,0.000000)
BGCBurst_11859.ZOffset = -8
BGCBurst_11859.Texture = "rbxassetid://14066311352"
BGCBurst_11859.LockedToPart = true
BGCBurst_11859.Orientation = Enum.ParticleOrientation.FacingCamera
BGCBurst_11859.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
BGCBurst_11859.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
BGCBurst_11859.FlipbookFramerate = nr(20,20)
BGCBurst_11859.FlipbookStartRandom = true
BGCBurst_11859.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local CInnerGroundFlames_11860=i("ParticleEmitter", DebrisBottomAtmosphere_11689)
CInnerGroundFlames_11860.Name="C. InnerGroundFlames"
CInnerGroundFlames_11860.Enabled = true
CInnerGroundFlames_11860.Rate = 48
CInnerGroundFlames_11860.Lifetime = nr(2,2.5)
CInnerGroundFlames_11860.Speed = nr(-10,-10)
CInnerGroundFlames_11860.Rotation = nr(-180,180)
CInnerGroundFlames_11860.RotSpeed = nr(-7.2900004386901855,7.2900004386901855)
CInnerGroundFlames_11860.Size = ns({nsk(0.000000,4.000000,0.000000),nsk(1.000000,4.000000,0.000000)})
CInnerGroundFlames_11860.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.172833,0.945355,0.000000),nsk(0.900634,0.704918,0.000000),nsk(1.000000,1.000000,0.000000)})
CInnerGroundFlames_11860.Color = cs({csk(0.000000,c3(1.000000,0.374558,0.164706)),csk(1.000000,c3(1.000000,0.374558,0.164706))})
CInnerGroundFlames_11860.LightEmission = -10
CInnerGroundFlames_11860.LightInfluence = 0
CInnerGroundFlames_11860.Acceleration = v3(0.000000,0.000000,0.000000)
CInnerGroundFlames_11860.Drag = 1.75
CInnerGroundFlames_11860.EmissionDirection = Enum.NormalId.Right
CInnerGroundFlames_11860.SpreadAngle = v2(0.000000,0.000000)
CInnerGroundFlames_11860.ZOffset = -5.251999855041504
CInnerGroundFlames_11860.Texture = "rbxassetid://14200879082"
CInnerGroundFlames_11860.LockedToPart = true
CInnerGroundFlames_11860.Orientation = Enum.ParticleOrientation.FacingCamera
CInnerGroundFlames_11860.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
CInnerGroundFlames_11860.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
CInnerGroundFlames_11860.FlipbookFramerate = nr(20,20)
CInnerGroundFlames_11860.FlipbookStartRandom = true
CInnerGroundFlames_11860.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})


local iset=insSet
local ring=i("Part")
iset(ring,"Size",v3(0,5,0));iset(ring,"Anchored",true);iset(ring,"CastShadow",false);iset(ring,"CanCollide",false);iset(ring,"CanQuery",false);iset(ring,"CanTouch",false);iset(ring,"Transparency",1);iset(ring,"Parent",foldah);iset(ring,"Name","Ring1")
local ring1=i("Part")
iset(ring1,"Size",v3(0,5,0));iset(ring1,"Anchored",true);iset(ring1,"CastShadow",false);iset(ring1,"CanCollide",false);iset(ring1,"CanQuery",false);iset(ring1,"CanTouch",false);iset(ring1,"Transparency",1);iset(ring1,"Parent",foldah);iset(ring1,"Name","Ring2")


local Embers2=Embers_11728:Clone()
Embers2.Parent=foldah
local FlameVolcano_2=FlameVolcano_11770:Clone()
FlameVolcano_2.Parent=foldah
FlameVolcano_2.Position=v3(13.792076,10.179585,9.954616)

local li1=i("PointLight",Embers2)
local li2=i("PointLight",Embers_11728)

local FlamesHead=FlamesHead_11814
for _,v in Floor:GetChildren() do 
if v:IsA("Attachment") then 
v.Position=v3(0,-2,0)
end
end

dd=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("PyroplexAssets") then
dd:Disconnect()
pcall(function()
Embers_11728:Destroy()
Embers2:Destroy()
FlameVolcano_11770:Destroy()
FlameVolcano_2:Destroy()
FlamesHead:Destroy()
end)
return
end
local root=rootpart1
pcall(function()
Embers_11728.Parent=ring
Embers2.Parent=ring1
FlameVolcano_11770.Parent=root
FlameVolcano_2.Parent=root
FlamesHead.Parent=root
end)


TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()



sine=os.clock()
local forward=root.CFrame.LookVector
local up=v3(0, 1, 0)
local front=CFrame.lookAt(root.Position,root.Position + forward,up)
local Offset=cf(15*cos((sine+.1)*.5),10-2*cos(sine*.1),-15*sin((sine+.85)*.5))
local Offset1=cf(-15*cos((sine+.1)*.5),5+2.5*cos(sine*.1),15*sin((sine+.85)*.5))
local tilt=angles(rad(10.5*cos(sine*.5)),0,0)
local tilt1=angles(rad(-10.5*cos(sine*.5)),0,0)
ring1.CFrame=ring1.CFrame:Lerp(front*Offset1*tilt,.15)
ring.CFrame=ring.CFrame:Lerp(front*Offset*tilt,.15)

pcall(function() for _,h in scriptfolder.Parent:GetDescendants() do 
if h:IsA("PointLight") then
h.Brightness=5+sound.PlaybackLoudness/50
h.Range=3+sound.PlaybackLoudness/60
h.Color=rgb(193+sound.PlaybackLoudness/75,83+sound.PlaybackLoudness/25,0)
end
end

for _,h in scriptfolder.Parent:GetDescendants() do 
if h:IsA("ParticleEmitter") then
h.Brightness=2.5+sound.PlaybackLoudness/50
end
end
end)

end)







end
repeat Pyroplex() task.wait() until not scriptfolder:FindFirstChild("PyroplexAssets")