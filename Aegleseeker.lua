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



function AegleseekerAssets()
if scriptfolder:FindFirstChild("AegleseekerAssets") then return end

local Folder=i("Folder",scriptfolder)
Folder.Name="AegleseekerAssets"
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
--Floor.CFrame=CFrame.new(211.32192993164062,88.14154815673828,-367.06134033203125,0.6427632570266724,0,0.7660648822784424,0,1,0,-0.7660648822784424,0,0.6427632570266724)
--Floor.Orientation=Vector3.new(0.000000,50.001999,0.000000)
--Floor.Position=Vector3.new(211.321930,88.141548,-367.061340)
Floor.CastShadow=true
Floor.Massless=true

local up_100278=i("Attachment", Floor)
up_100278.Name="up"
up_100278:SetAttribute("AuraInstance", true)
up_100278.Position = v3(48.600632,-0.000244,0.000122)
up_100278.Visible = false

local circlebeam_100279=i("Attachment", Floor)
circlebeam_100279.Name="circle beam"
circlebeam_100279:SetAttribute("AuraInstance", true)
circlebeam_100279.Position = v3(-1.000000,0.000000,0.000000)
circlebeam_100279.Visible = false

local _1_100280=i("Attachment", circlebeam_100279)
_1_100280.Name="1"
_1_100280:SetAttribute("AuraInstance", true)
_1_100280.Position = v3(-1.118378,-5.000000,31.288513)
_1_100280.Visible = false

local _5_100281=i("Attachment", circlebeam_100279)
_5_100281.Name="5"
_5_100281:SetAttribute("AuraInstance", true)
_5_100281.Position = v3(-1.117722,-5.000000,-31.373688)
_5_100281.Visible = false

local _4_100282=i("Attachment", circlebeam_100279)
_4_100282.Name="4"
_4_100282:SetAttribute("AuraInstance", true)
_4_100282.Position = v3(-23.272278,-5.000000,-22.196991)
_4_100282.Visible = false

local _8_100283=i("Attachment", circlebeam_100279)
_8_100283.Name="8"
_8_100283:SetAttribute("AuraInstance", true)
_8_100283.Position = v3(21.036270,-5.000000,22.111786)
_8_100283.Visible = false

local _6_100284=i("Attachment", circlebeam_100279)
_6_100284.Name="6"
_6_100284:SetAttribute("AuraInstance", true)
_6_100284.Position = v3(21.036697,-5.000000,-22.197144)
_6_100284.Visible = false

local _2_100285=i("Attachment", circlebeam_100279)
_2_100285.Name="2"
_2_100285:SetAttribute("AuraInstance", true)
_2_100285.Position = v3(-23.272766,-5.000000,22.111847)
_2_100285.Visible = false

local _3_100286=i("Attachment", circlebeam_100279)
_3_100286.Name="3"
_3_100286:SetAttribute("AuraInstance", true)
_3_100286.Position = v3(-32.449188,-5.000000,-0.042480)
_3_100286.Visible = false

local _7_100287=i("Attachment", circlebeam_100279)
_7_100287.Name="7"
_7_100287:SetAttribute("AuraInstance", true)
_7_100287.Position = v3(30.213181,-5.000000,-0.042633)
_7_100287.Visible = false

local BeamStorage_100288=i("Attachment", circlebeam_100279)
BeamStorage_100288.Name="Beam Storage"
BeamStorage_100288:SetAttribute("AuraInstance", true)
BeamStorage_100288.Position = v3(0.000038,0.000000,0.000046)
BeamStorage_100288.Visible = false

local _7_100289=i("Folder", BeamStorage_100288)
_7_100289.Name="7"
_7_100289:SetAttribute("AuraInstance", true)

local a_100290=i("Beam", _7_100289)
a_100290.Name="a"
a_100290:SetAttribute("AuraInstance", true)
a_100290.Enabled = true
a_100290.Width0 = 3
a_100290.Width1 = 3
a_100290.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100290.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100290.CurveSize0 = 13
a_100290.CurveSize1 = 0
a_100290.FaceCamera = false
a_100290.LightEmission = 0.699999988079071
a_100290.LightInfluence = 0
a_100290.Segments = 100
a_100290.Texture = "rbxassetid://13580357222"
a_100290.TextureLength = 4
a_100290.TextureSpeed = 7

local ritual_100291=i("Beam", _7_100289)
ritual_100291.Name="ritual"
ritual_100291:SetAttribute("AuraInstance", true)
ritual_100291.Enabled = true
ritual_100291.Width0 = 10
ritual_100291.Width1 = 10
ritual_100291.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100291.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100291.CurveSize0 = 13
ritual_100291.CurveSize1 = 0
ritual_100291.FaceCamera = false
ritual_100291.LightEmission = 1
ritual_100291.LightInfluence = 0
ritual_100291.Segments = 100
ritual_100291.Texture = "rbxassetid://12781812529"
ritual_100291.TextureLength = 3
ritual_100291.TextureSpeed = 5

local contrast_100292=i("Beam", _7_100289)
contrast_100292.Name="contrast"
contrast_100292:SetAttribute("AuraInstance", true)
contrast_100292.Enabled = true
contrast_100292.Width0 = 2.799999952316284
contrast_100292.Width1 = 2.799999952316284
contrast_100292.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100292.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100292.CurveSize0 = 13
contrast_100292.CurveSize1 = 0
contrast_100292.FaceCamera = false
contrast_100292.LightEmission = 0.5
contrast_100292.LightInfluence = 0
contrast_100292.Segments = 100
contrast_100292.Texture = "rbxassetid://10816141940"
contrast_100292.TextureLength = 2.75
contrast_100292.TextureSpeed = 4

local _1_100293=i("Folder", BeamStorage_100288)
_1_100293.Name="1"
_1_100293:SetAttribute("AuraInstance", true)

local a_100294=i("Beam", _1_100293)
a_100294.Name="a"
a_100294:SetAttribute("AuraInstance", true)
a_100294.Enabled = true
a_100294.Width0 = 3
a_100294.Width1 = 3
a_100294.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100294.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100294.CurveSize0 = 13
a_100294.CurveSize1 = 0
a_100294.FaceCamera = false
a_100294.LightEmission = 0.699999988079071
a_100294.LightInfluence = 0
a_100294.Segments = 100
a_100294.Texture = "rbxassetid://13580357222"
a_100294.TextureLength = 4
a_100294.TextureSpeed = 7

local contrast_100295=i("Beam", _1_100293)
contrast_100295.Name="contrast"
contrast_100295:SetAttribute("AuraInstance", true)
contrast_100295.Enabled = true
contrast_100295.Width0 = 2.799999952316284
contrast_100295.Width1 = 2.799999952316284
contrast_100295.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100295.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100295.CurveSize0 = 13
contrast_100295.CurveSize1 = 0
contrast_100295.FaceCamera = false
contrast_100295.LightEmission = 0.5
contrast_100295.LightInfluence = 0
contrast_100295.Segments = 100
contrast_100295.Texture = "rbxassetid://10816141940"
contrast_100295.TextureLength = 2.75
contrast_100295.TextureSpeed = 4

local ritual_100296=i("Beam", _1_100293)
ritual_100296.Name="ritual"
ritual_100296:SetAttribute("AuraInstance", true)
ritual_100296.Enabled = true
ritual_100296.Width0 = 10
ritual_100296.Width1 = 10
ritual_100296.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100296.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100296.CurveSize0 = 13
ritual_100296.CurveSize1 = 0
ritual_100296.FaceCamera = false
ritual_100296.LightEmission = 1
ritual_100296.LightInfluence = 0
ritual_100296.Segments = 100
ritual_100296.Texture = "rbxassetid://12781812529"
ritual_100296.TextureLength = 3
ritual_100296.TextureSpeed = 5

local _6_100297=i("Folder", BeamStorage_100288)
_6_100297.Name="6"
_6_100297:SetAttribute("AuraInstance", true)

local a_100298=i("Beam", _6_100297)
a_100298.Name="a"
a_100298:SetAttribute("AuraInstance", true)
a_100298.Enabled = true
a_100298.Width0 = 3
a_100298.Width1 = 3
a_100298.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100298.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100298.CurveSize0 = 13
a_100298.CurveSize1 = 0
a_100298.FaceCamera = false
a_100298.LightEmission = 0.699999988079071
a_100298.LightInfluence = 0
a_100298.Segments = 100
a_100298.Texture = "rbxassetid://13580357222"
a_100298.TextureLength = 4
a_100298.TextureSpeed = 7

local contrast_100299=i("Beam", _6_100297)
contrast_100299.Name="contrast"
contrast_100299:SetAttribute("AuraInstance", true)
contrast_100299.Enabled = true
contrast_100299.Width0 = 2.799999952316284
contrast_100299.Width1 = 2.799999952316284
contrast_100299.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100299.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100299.CurveSize0 = 13
contrast_100299.CurveSize1 = 0
contrast_100299.FaceCamera = false
contrast_100299.LightEmission = 0.5
contrast_100299.LightInfluence = 0
contrast_100299.Segments = 100
contrast_100299.Texture = "rbxassetid://10816141940"
contrast_100299.TextureLength = 2.75
contrast_100299.TextureSpeed = 4

local ritual_100300=i("Beam", _6_100297)
ritual_100300.Name="ritual"
ritual_100300:SetAttribute("AuraInstance", true)
ritual_100300.Enabled = true
ritual_100300.Width0 = 10
ritual_100300.Width1 = 10
ritual_100300.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100300.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100300.CurveSize0 = 13
ritual_100300.CurveSize1 = 0
ritual_100300.FaceCamera = false
ritual_100300.LightEmission = 1
ritual_100300.LightInfluence = 0
ritual_100300.Segments = 100
ritual_100300.Texture = "rbxassetid://12781812529"
ritual_100300.TextureLength = 3
ritual_100300.TextureSpeed = 5

local _5_100301=i("Folder", BeamStorage_100288)
_5_100301.Name="5"
_5_100301:SetAttribute("AuraInstance", true)

local a_100302=i("Beam", _5_100301)
a_100302.Name="a"
a_100302:SetAttribute("AuraInstance", true)
a_100302.Enabled = true
a_100302.Width0 = 3
a_100302.Width1 = 3
a_100302.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100302.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100302.CurveSize0 = 13
a_100302.CurveSize1 = 0
a_100302.FaceCamera = false
a_100302.LightEmission = 0.699999988079071
a_100302.LightInfluence = 0
a_100302.Segments = 100
a_100302.Texture = "rbxassetid://13580357222"
a_100302.TextureLength = 4
a_100302.TextureSpeed = 7

local contrast_100303=i("Beam", _5_100301)
contrast_100303.Name="contrast"
contrast_100303:SetAttribute("AuraInstance", true)
contrast_100303.Enabled = true
contrast_100303.Width0 = 2.799999952316284
contrast_100303.Width1 = 2.799999952316284
contrast_100303.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100303.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100303.CurveSize0 = 13
contrast_100303.CurveSize1 = 0
contrast_100303.FaceCamera = false
contrast_100303.LightEmission = 0.5
contrast_100303.LightInfluence = 0
contrast_100303.Segments = 100
contrast_100303.Texture = "rbxassetid://10816141940"
contrast_100303.TextureLength = 2.75
contrast_100303.TextureSpeed = 4

local ritual_100304=i("Beam", _5_100301)
ritual_100304.Name="ritual"
ritual_100304:SetAttribute("AuraInstance", true)
ritual_100304.Enabled = true
ritual_100304.Width0 = 10
ritual_100304.Width1 = 10
ritual_100304.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100304.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100304.CurveSize0 = 13
ritual_100304.CurveSize1 = 0
ritual_100304.FaceCamera = false
ritual_100304.LightEmission = 1
ritual_100304.LightInfluence = 0
ritual_100304.Segments = 100
ritual_100304.Texture = "rbxassetid://12781812529"
ritual_100304.TextureLength = 3
ritual_100304.TextureSpeed = 5

local _8_100305=i("Folder", BeamStorage_100288)
_8_100305.Name="8"
_8_100305:SetAttribute("AuraInstance", true)

local a_100306=i("Beam", _8_100305)
a_100306.Name="a"
a_100306:SetAttribute("AuraInstance", true)
a_100306.Enabled = true
a_100306.Width0 = 3
a_100306.Width1 = 3
a_100306.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100306.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100306.CurveSize0 = 13
a_100306.CurveSize1 = 0
a_100306.FaceCamera = false
a_100306.LightEmission = 0.699999988079071
a_100306.LightInfluence = 0
a_100306.Segments = 100
a_100306.Texture = "rbxassetid://13580357222"
a_100306.TextureLength = 4
a_100306.TextureSpeed = 7

local contrast_100307=i("Beam", _8_100305)
contrast_100307.Name="contrast"
contrast_100307:SetAttribute("AuraInstance", true)
contrast_100307.Enabled = true
contrast_100307.Width0 = 2.799999952316284
contrast_100307.Width1 = 2.799999952316284
contrast_100307.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100307.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100307.CurveSize0 = 13
contrast_100307.CurveSize1 = 0
contrast_100307.FaceCamera = false
contrast_100307.LightEmission = 0.5
contrast_100307.LightInfluence = 0
contrast_100307.Segments = 100
contrast_100307.Texture = "rbxassetid://10816141940"
contrast_100307.TextureLength = 2.75
contrast_100307.TextureSpeed = 4

local ritual_100308=i("Beam", _8_100305)
ritual_100308.Name="ritual"
ritual_100308:SetAttribute("AuraInstance", true)
ritual_100308.Enabled = true
ritual_100308.Width0 = 10
ritual_100308.Width1 = 10
ritual_100308.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100308.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100308.CurveSize0 = 13
ritual_100308.CurveSize1 = 0
ritual_100308.FaceCamera = false
ritual_100308.LightEmission = 1
ritual_100308.LightInfluence = 0
ritual_100308.Segments = 100
ritual_100308.Texture = "rbxassetid://12781812529"
ritual_100308.TextureLength = 3
ritual_100308.TextureSpeed = 5

local _3_100309=i("Folder", BeamStorage_100288)
_3_100309.Name="3"
_3_100309:SetAttribute("AuraInstance", true)

local a_100310=i("Beam", _3_100309)
a_100310.Name="a"
a_100310:SetAttribute("AuraInstance", true)
a_100310.Enabled = true
a_100310.Width0 = 3
a_100310.Width1 = 3
a_100310.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100310.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100310.CurveSize0 = 13
a_100310.CurveSize1 = 0
a_100310.FaceCamera = false
a_100310.LightEmission = 0.699999988079071
a_100310.LightInfluence = 0
a_100310.Segments = 100
a_100310.Texture = "rbxassetid://13580357222"
a_100310.TextureLength = 4
a_100310.TextureSpeed = 7

local contrast_100311=i("Beam", _3_100309)
contrast_100311.Name="contrast"
contrast_100311:SetAttribute("AuraInstance", true)
contrast_100311.Enabled = true
contrast_100311.Width0 = 2.799999952316284
contrast_100311.Width1 = 2.799999952316284
contrast_100311.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100311.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100311.CurveSize0 = 13
contrast_100311.CurveSize1 = 0
contrast_100311.FaceCamera = false
contrast_100311.LightEmission = 0.5
contrast_100311.LightInfluence = 0
contrast_100311.Segments = 100
contrast_100311.Texture = "rbxassetid://10816141940"
contrast_100311.TextureLength = 2.75
contrast_100311.TextureSpeed = 4

local ritual_100312=i("Beam", _3_100309)
ritual_100312.Name="ritual"
ritual_100312:SetAttribute("AuraInstance", true)
ritual_100312.Enabled = true
ritual_100312.Width0 = 10
ritual_100312.Width1 = 10
ritual_100312.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100312.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100312.CurveSize0 = 13
ritual_100312.CurveSize1 = 0
ritual_100312.FaceCamera = false
ritual_100312.LightEmission = 1
ritual_100312.LightInfluence = 0
ritual_100312.Segments = 100
ritual_100312.Texture = "rbxassetid://12781812529"
ritual_100312.TextureLength = 3
ritual_100312.TextureSpeed = 5

local _4_100313=i("Folder", BeamStorage_100288)
_4_100313.Name="4"
_4_100313:SetAttribute("AuraInstance", true)

local a_100314=i("Beam", _4_100313)
a_100314.Name="a"
a_100314:SetAttribute("AuraInstance", true)
a_100314.Enabled = true
a_100314.Width0 = 3
a_100314.Width1 = 3
a_100314.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100314.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100314.CurveSize0 = 13
a_100314.CurveSize1 = 0
a_100314.FaceCamera = false
a_100314.LightEmission = 0.699999988079071
a_100314.LightInfluence = 0
a_100314.Segments = 100
a_100314.Texture = "rbxassetid://13580357222"
a_100314.TextureLength = 4
a_100314.TextureSpeed = 7

local contrast_100315=i("Beam", _4_100313)
contrast_100315.Name="contrast"
contrast_100315:SetAttribute("AuraInstance", true)
contrast_100315.Enabled = true
contrast_100315.Width0 = 2.799999952316284
contrast_100315.Width1 = 2.799999952316284
contrast_100315.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100315.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100315.CurveSize0 = 13
contrast_100315.CurveSize1 = 0
contrast_100315.FaceCamera = false
contrast_100315.LightEmission = 0.5
contrast_100315.LightInfluence = 0
contrast_100315.Segments = 100
contrast_100315.Texture = "rbxassetid://10816141940"
contrast_100315.TextureLength = 2.75
contrast_100315.TextureSpeed = 4

local ritual_100316=i("Beam", _4_100313)
ritual_100316.Name="ritual"
ritual_100316:SetAttribute("AuraInstance", true)
ritual_100316.Enabled = true
ritual_100316.Width0 = 10
ritual_100316.Width1 = 10
ritual_100316.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100316.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100316.CurveSize0 = 13
ritual_100316.CurveSize1 = 0
ritual_100316.FaceCamera = false
ritual_100316.LightEmission = 1
ritual_100316.LightInfluence = 0
ritual_100316.Segments = 100
ritual_100316.Texture = "rbxassetid://12781812529"
ritual_100316.TextureLength = 3
ritual_100316.TextureSpeed = 5

local _2_100317=i("Folder", BeamStorage_100288)
_2_100317.Name="2"
_2_100317:SetAttribute("AuraInstance", true)

local a_100318=i("Beam", _2_100317)
a_100318.Name="a"
a_100318:SetAttribute("AuraInstance", true)
a_100318.Enabled = true
a_100318.Width0 = 3
a_100318.Width1 = 3
a_100318.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100318.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100318.CurveSize0 = 13
a_100318.CurveSize1 = 0
a_100318.FaceCamera = false
a_100318.LightEmission = 0.699999988079071
a_100318.LightInfluence = 0
a_100318.Segments = 100
a_100318.Texture = "rbxassetid://13580357222"
a_100318.TextureLength = 4
a_100318.TextureSpeed = 7

local contrast_100319=i("Beam", _2_100317)
contrast_100319.Name="contrast"
contrast_100319:SetAttribute("AuraInstance", true)
contrast_100319.Enabled = true
contrast_100319.Width0 = 2.799999952316284
contrast_100319.Width1 = 2.799999952316284
contrast_100319.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100319.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100319.CurveSize0 = 13
contrast_100319.CurveSize1 = 0
contrast_100319.FaceCamera = false
contrast_100319.LightEmission = 0.5
contrast_100319.LightInfluence = 0
contrast_100319.Segments = 100
contrast_100319.Texture = "rbxassetid://10816141940"
contrast_100319.TextureLength = 2.75
contrast_100319.TextureSpeed = 4

local ritual_100320=i("Beam", _2_100317)
ritual_100320.Name="ritual"
ritual_100320:SetAttribute("AuraInstance", true)
ritual_100320.Enabled = true
ritual_100320.Width0 = 10
ritual_100320.Width1 = 10
ritual_100320.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100320.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100320.CurveSize0 = 13
ritual_100320.CurveSize1 = 0
ritual_100320.FaceCamera = false
ritual_100320.LightEmission = 1
ritual_100320.LightInfluence = 0
ritual_100320.Segments = 100
ritual_100320.Texture = "rbxassetid://12781812529"
ritual_100320.TextureLength = 3
ritual_100320.TextureSpeed = 5

local mid_100321=i("Attachment", Floor)
mid_100321.Name="mid"
mid_100321:SetAttribute("AuraInstance", true)
mid_100321.Position = v3(16.999874,0.000000,0.000000)
mid_100321.Visible = false

local biglines_100322=i("ParticleEmitter", Floor)
biglines_100322.Name="big lines"
biglines_100322:SetAttribute("AuraInstance", true)
biglines_100322.Enabled = true
biglines_100322.Rate = 3
biglines_100322.Lifetime = nr(3,3)
biglines_100322.Speed = nr(1,1)
biglines_100322.Rotation = nr(90,90)
biglines_100322.RotSpeed = nr(0,0)
biglines_100322.Size = ns({nsk(0.000000,16.107290,4.543431),nsk(1.000000,16.870026,4.899777)})
biglines_100322.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499735,0.306250,0.000000),nsk(1.000000,1.000000,0.000000)})
biglines_100322.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
biglines_100322.LightEmission = 0.30000001192092896
biglines_100322.LightInfluence = 0
biglines_100322.Acceleration = v3(0.000000,0.000000,0.000000)
biglines_100322.Drag = 0
biglines_100322.EmissionDirection = Enum.NormalId.Right
biglines_100322.SpreadAngle = v2(0.000000,0.000000)
biglines_100322.ZOffset = -0.10199999809265137
biglines_100322.Texture = "rbxassetid://7216979701"
biglines_100322.LockedToPart = true
biglines_100322.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
biglines_100322.FlipbookLayout = Enum.ParticleFlipbookLayout.None
biglines_100322.FlipbookMode = Enum.ParticleFlipbookMode.Loop
biglines_100322.FlipbookFramerate = nr(1,1)
biglines_100322.FlipbookStartRandom = false
biglines_100322.Squash = ns({nsk(0.000000,-1.800000,0.000000),nsk(1.000000,-1.800000,0.000000)})

local blacksmallerdebris_100323=i("ParticleEmitter", Floor)
blacksmallerdebris_100323.Name="black smaller debris"
blacksmallerdebris_100323:SetAttribute("AuraInstance", true)
blacksmallerdebris_100323.Enabled = true
blacksmallerdebris_100323.Rate = 30
blacksmallerdebris_100323.Lifetime = nr(0.5,0.5)
blacksmallerdebris_100323.Speed = nr(2,2)
blacksmallerdebris_100323.Rotation = nr(-1000,1000)
blacksmallerdebris_100323.RotSpeed = nr(0,0)
blacksmallerdebris_100323.Size = ns({nsk(0.000000,2.125000,0.000000),nsk(0.199789,4.187500,0.000000),nsk(1.000000,2.937500,0.000000)})
blacksmallerdebris_100323.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.044397,1.000000,0.000000),nsk(0.102537,0.518750,0.000000),nsk(0.287773,0.332444,0.000000),nsk(0.535773,0.269111,0.000000),nsk(0.737773,0.315778,0.000000),nsk(0.855773,0.539111,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmallerdebris_100323.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
blacksmallerdebris_100323.LightEmission = -2
blacksmallerdebris_100323.LightInfluence = 0.20000000298023224
blacksmallerdebris_100323.Acceleration = v3(0.000000,0.000000,0.000000)
blacksmallerdebris_100323.Drag = -2
blacksmallerdebris_100323.EmissionDirection = Enum.NormalId.Right
blacksmallerdebris_100323.SpreadAngle = v2(-100.000000,100.000000)
blacksmallerdebris_100323.ZOffset = 1.1759999990463257
blacksmallerdebris_100323.Texture = "rbxassetid://16056965573"
blacksmallerdebris_100323.LockedToPart = true
blacksmallerdebris_100323.Orientation = Enum.ParticleOrientation.VelocityParallel
blacksmallerdebris_100323.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
blacksmallerdebris_100323.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmallerdebris_100323.FlipbookFramerate = nr(1,1)
blacksmallerdebris_100323.FlipbookStartRandom = false
blacksmallerdebris_100323.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local PointLight_100324=i("PointLight", Floor)
PointLight_100324.Name="PointLight"
PointLight_100324:SetAttribute("AuraInstance", true)

local smallerdebris_100325=i("ParticleEmitter", Floor)
smallerdebris_100325.Name="smaller debris"
smallerdebris_100325:SetAttribute("AuraInstance", true)
smallerdebris_100325.Enabled = true
smallerdebris_100325.Rate = 45
smallerdebris_100325.Lifetime = nr(0.5,0.5)
smallerdebris_100325.Speed = nr(2,2)
smallerdebris_100325.Rotation = nr(-1000,1000)
smallerdebris_100325.RotSpeed = nr(0,0)
smallerdebris_100325.Size = ns({nsk(0.000000,2.125000,0.000000),nsk(0.199789,4.187500,0.000000),nsk(1.000000,2.937500,0.000000)})
smallerdebris_100325.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.044397,1.000000,0.000000),nsk(0.102537,0.518750,0.000000),nsk(0.287773,0.332444,0.000000),nsk(0.535773,0.269111,0.000000),nsk(0.737773,0.315778,0.000000),nsk(0.855773,0.539111,0.000000),nsk(1.000000,1.000000,0.000000)})
smallerdebris_100325.Color = cs({csk(0.000000,c3(0.596079,0.513726,1.000000)),csk(1.000000,c3(0.596079,0.513726,1.000000))})
smallerdebris_100325.LightEmission = 1
smallerdebris_100325.LightInfluence = 0
smallerdebris_100325.Acceleration = v3(0.000000,0.000000,0.000000)
smallerdebris_100325.Drag = -2
smallerdebris_100325.EmissionDirection = Enum.NormalId.Right
smallerdebris_100325.SpreadAngle = v2(-100.000000,100.000000)
smallerdebris_100325.ZOffset = 1.1770000457763672
smallerdebris_100325.Texture = "rbxassetid://16056965573"
smallerdebris_100325.LockedToPart = true
smallerdebris_100325.Orientation = Enum.ParticleOrientation.VelocityParallel
smallerdebris_100325.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
smallerdebris_100325.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smallerdebris_100325.FlipbookFramerate = nr(1,1)
smallerdebris_100325.FlipbookStartRandom = false
smallerdebris_100325.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local symbols_100326=i("ParticleEmitter", Floor)
symbols_100326.Name="symbols"
symbols_100326:SetAttribute("AuraInstance", true)
symbols_100326.Enabled = true
symbols_100326.Rate = 12
symbols_100326.Lifetime = nr(1.399999976158142,1.399999976158142)
symbols_100326.Speed = nr(25,30)
symbols_100326.Rotation = nr(-1000,1000)
symbols_100326.RotSpeed = nr(0,0)
symbols_100326.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.099366,0.750000,0.000000),nsk(1.000000,0.437500,0.000000)})
symbols_100326.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.502534,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
symbols_100326.Color = cs({csk(0.000000,c3(0.643137,0.501961,1.000000)),csk(1.000000,c3(0.643137,0.501961,1.000000))})
symbols_100326.LightEmission = 1
symbols_100326.LightInfluence = 0
symbols_100326.Acceleration = v3(0.000000,0.000000,0.000000)
symbols_100326.Drag = 1
symbols_100326.EmissionDirection = Enum.NormalId.Right
symbols_100326.SpreadAngle = v2(-50.000000,50.000000)
symbols_100326.ZOffset = 0.023000000044703484
symbols_100326.Texture = "rbxassetid://11910560348"
symbols_100326.LockedToPart = true
symbols_100326.Orientation = Enum.ParticleOrientation.FacingCamera
symbols_100326.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
symbols_100326.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
symbols_100326.FlipbookFramerate = nr(40,40)
symbols_100326.FlipbookStartRandom = false
symbols_100326.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local specs_100327=i("ParticleEmitter", Floor)
specs_100327.Name="specs"
specs_100327:SetAttribute("AuraInstance", true)
specs_100327.Enabled = true
specs_100327.Rate = 45
specs_100327.Lifetime = nr(0.6499999761581421,1.2999999523162842)
specs_100327.Speed = nr(50,50)
specs_100327.Rotation = nr(-1000,1000)
specs_100327.RotSpeed = nr(40,40)
specs_100327.Size = ns({nsk(0.000000,1.562500,0.375000),nsk(0.857294,0.812500,0.118525),nsk(1.000000,0.000000,0.000000)})
specs_100327.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
specs_100327.Color = cs({csk(0.000000,c3(0.309804,0.219608,1.000000)),csk(1.000000,c3(0.309804,0.219608,1.000000))})
specs_100327.LightEmission = 0
specs_100327.LightInfluence = 0.10000000149011612
specs_100327.Acceleration = v3(60.000000,0.000000,0.000000)
specs_100327.Drag = 3.5
specs_100327.EmissionDirection = Enum.NormalId.Right
specs_100327.SpreadAngle = v2(200.000000,200.000000)
specs_100327.ZOffset = 0.02199999988079071
specs_100327.Texture = "rbxassetid://8071207852"
specs_100327.LockedToPart = true
specs_100327.Orientation = Enum.ParticleOrientation.FacingCamera
specs_100327.FlipbookLayout = Enum.ParticleFlipbookLayout.None
specs_100327.FlipbookMode = Enum.ParticleFlipbookMode.Loop
specs_100327.FlipbookFramerate = nr(1,1)
specs_100327.FlipbookStartRandom = false
specs_100327.Squash = ns({nsk(0.000000,0.000000,0.450000),nsk(1.000000,0.000000,0.412500)})

local ember_100328=i("ParticleEmitter", Floor)
ember_100328.Name="ember"
ember_100328:SetAttribute("AuraInstance", true)
ember_100328.Enabled = true
ember_100328.Rate = 45
ember_100328.Lifetime = nr(1,2)
ember_100328.Speed = nr(10,20)
ember_100328.Rotation = nr(10,10)
ember_100328.RotSpeed = nr(-100,100)
ember_100328.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.204130,2.087384,0.991387),nsk(1.000000,0.000000,0.000000)})
ember_100328.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.801797,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ember_100328.Color = cs({csk(0.000000,c3(0.486275,0.396078,1.000000)),csk(1.000000,c3(0.486275,0.396078,1.000000))})
ember_100328.LightEmission = 1
ember_100328.LightInfluence = 0
ember_100328.Acceleration = v3(25.000000,0.000000,0.000000)
ember_100328.Drag = 1
ember_100328.EmissionDirection = Enum.NormalId.Right
ember_100328.SpreadAngle = v2(90.000000,90.000000)
ember_100328.ZOffset = 0
ember_100328.Texture = "rbxassetid://6766245698"
ember_100328.LockedToPart = true
ember_100328.Orientation = Enum.ParticleOrientation.VelocityParallel
ember_100328.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ember_100328.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ember_100328.FlipbookFramerate = nr(30,30)
ember_100328.FlipbookStartRandom = false
ember_100328.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local line2_100329=i("ParticleEmitter", Floor)
line2_100329.Name="line2"
line2_100329:SetAttribute("AuraInstance", true)
line2_100329.Enabled = true
line2_100329.Rate = 50
line2_100329.Lifetime = nr(0.6000000238418579,0.8999999761581421)
line2_100329.Speed = nr(30,40)
line2_100329.Rotation = nr(180,180)
line2_100329.RotSpeed = nr(0,0)
line2_100329.Size = ns({nsk(0.000000,1.000000,0.500000),nsk(1.000000,0.875000,0.500000)})
line2_100329.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.801797,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
line2_100329.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
line2_100329.LightEmission = -10
line2_100329.LightInfluence = 0
line2_100329.Acceleration = v3(30.000000,0.000000,0.000000)
line2_100329.Drag = 1
line2_100329.EmissionDirection = Enum.NormalId.Right
line2_100329.SpreadAngle = v2(60.000000,60.000000)
line2_100329.ZOffset = -0.03400000184774399
line2_100329.Texture = "rbxassetid://110131639786996"
line2_100329.LockedToPart = true
line2_100329.Orientation = Enum.ParticleOrientation.VelocityParallel
line2_100329.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
line2_100329.FlipbookMode = Enum.ParticleFlipbookMode.Loop
line2_100329.FlipbookFramerate = nr(1,1)
line2_100329.FlipbookStartRandom = false
line2_100329.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

local line1_100330=i("ParticleEmitter", Floor)
line1_100330.Name="line1"
line1_100330:SetAttribute("AuraInstance", true)
line1_100330.Enabled = true
line1_100330.Rate = 50
line1_100330.Lifetime = nr(0.6000000238418579,0.8999999761581421)
line1_100330.Speed = nr(30,40)
line1_100330.Rotation = nr(180,180)
line1_100330.RotSpeed = nr(0,0)
line1_100330.Size = ns({nsk(0.000000,1.000000,0.500000),nsk(1.000000,0.875000,0.500000)})
line1_100330.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.801797,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
line1_100330.Color = cs({csk(0.000000,c3(0.635294,0.450980,1.000000)),csk(1.000000,c3(0.635294,0.450980,1.000000))})
line1_100330.LightEmission = 1
line1_100330.LightInfluence = 0
line1_100330.Acceleration = v3(30.000000,0.000000,0.000000)
line1_100330.Drag = 1
line1_100330.EmissionDirection = Enum.NormalId.Right
line1_100330.SpreadAngle = v2(60.000000,60.000000)
line1_100330.ZOffset = -0.032999999821186066
line1_100330.Texture = "rbxassetid://110131639786996"
line1_100330.LockedToPart = true
line1_100330.Orientation = Enum.ParticleOrientation.VelocityParallel
line1_100330.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
line1_100330.FlipbookMode = Enum.ParticleFlipbookMode.Loop
line1_100330.FlipbookFramerate = nr(1,1)
line1_100330.FlipbookStartRandom = false
line1_100330.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

local lightrays_100331=i("ParticleEmitter", Floor)
lightrays_100331.Name="light rays"
lightrays_100331:SetAttribute("AuraInstance", true)
lightrays_100331.Enabled = true
lightrays_100331.Rate = 50
lightrays_100331.Lifetime = nr(0.4000000059604645,0.4000000059604645)
lightrays_100331.Speed = nr(0.009999999776482582,0.009999999776482582)
lightrays_100331.Rotation = nr(0,0)
lightrays_100331.RotSpeed = nr(0,0)
lightrays_100331.Size = ns({nsk(0.000000,7.062500,2.000000),nsk(1.000000,6.625000,0.000000)})
lightrays_100331.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.300464,0.000000,0.000000),nsk(0.696056,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lightrays_100331.Color = cs({csk(0.000000,c3(0.501961,0.376471,1.000000)),csk(1.000000,c3(0.501961,0.376471,1.000000))})
lightrays_100331.LightEmission = 1
lightrays_100331.LightInfluence = 0.30000001192092896
lightrays_100331.Acceleration = v3(0.000000,0.000000,0.000000)
lightrays_100331.Drag = 0
lightrays_100331.EmissionDirection = Enum.NormalId.Top
lightrays_100331.SpreadAngle = v2(0.000000,0.000000)
lightrays_100331.ZOffset = 1.3530000448226929
lightrays_100331.Texture = "rbxassetid://13365068138"
lightrays_100331.LockedToPart = true
lightrays_100331.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
lightrays_100331.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
lightrays_100331.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightrays_100331.FlipbookFramerate = nr(1,1)
lightrays_100331.FlipbookStartRandom = false
lightrays_100331.Squash = ns({nsk(0.000000,0.787500,0.450001),nsk(1.000000,1.012500,0.337500)})

local fog3_100332=i("ParticleEmitter", Floor)
fog3_100332.Name="fog3"
fog3_100332:SetAttribute("AuraInstance", true)
fog3_100332.Enabled = true
fog3_100332.Rate = 15
fog3_100332.Lifetime = nr(1.25,1.25)
fog3_100332.Speed = nr(17.5,17.5)
fog3_100332.Rotation = nr(-360,360)
fog3_100332.RotSpeed = nr(0,0)
fog3_100332.Size = ns({nsk(0.000000,9.500000,0.000000),nsk(1.000000,9.500000,0.000000)})
fog3_100332.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499471,0.881250,0.000000),nsk(1.000000,1.000000,0.000000)})
fog3_100332.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
fog3_100332.LightEmission = -2
fog3_100332.LightInfluence = 0
fog3_100332.Acceleration = v3(0.000000,0.000000,0.000000)
fog3_100332.Drag = 0
fog3_100332.EmissionDirection = Enum.NormalId.Right
fog3_100332.SpreadAngle = v2(15.000000,15.000000)
fog3_100332.ZOffset = -2.999000072479248
fog3_100332.Texture = "http://www.roblox.com/asset/?id=12221915979"
fog3_100332.LockedToPart = true
fog3_100332.Orientation = Enum.ParticleOrientation.FacingCamera
fog3_100332.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
fog3_100332.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog3_100332.FlipbookFramerate = nr(1,1)
fog3_100332.FlipbookStartRandom = false
fog3_100332.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fog2_100333=i("ParticleEmitter", Floor)
fog2_100333.Name="fog2"
fog2_100333:SetAttribute("AuraInstance", true)
fog2_100333.Enabled = true
fog2_100333.Rate = 15
fog2_100333.Lifetime = nr(1.25,1.25)
fog2_100333.Speed = nr(17.5,17.5)
fog2_100333.Rotation = nr(-360,360)
fog2_100333.RotSpeed = nr(0,0)
fog2_100333.Size = ns({nsk(0.000000,9.500000,0.000000),nsk(1.000000,9.500000,0.000000)})
fog2_100333.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.625000,0.000000),nsk(1.000000,1.000000,0.000000)})
fog2_100333.Color = cs({csk(0.000000,c3(0.372549,0.290196,1.000000)),csk(1.000000,c3(0.372549,0.290196,1.000000))})
fog2_100333.LightEmission = 0
fog2_100333.LightInfluence = 0
fog2_100333.Acceleration = v3(0.000000,0.000000,0.000000)
fog2_100333.Drag = 0
fog2_100333.EmissionDirection = Enum.NormalId.Right
fog2_100333.SpreadAngle = v2(15.000000,15.000000)
fog2_100333.ZOffset = -3.005000114440918
fog2_100333.Texture = "rbxassetid://11627083142"
fog2_100333.LockedToPart = true
fog2_100333.Orientation = Enum.ParticleOrientation.FacingCamera
fog2_100333.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fog2_100333.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog2_100333.FlipbookFramerate = nr(1,1)
fog2_100333.FlipbookStartRandom = false
fog2_100333.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fog1_100334=i("ParticleEmitter", Floor)
fog1_100334.Name="fog1"
fog1_100334:SetAttribute("AuraInstance", true)
fog1_100334.Enabled = true
fog1_100334.Rate = 15
fog1_100334.Lifetime = nr(1.2999999523162842,1.2999999523162842)
fog1_100334.Speed = nr(17,20)
fog1_100334.Rotation = nr(-360,360)
fog1_100334.RotSpeed = nr(0,0)
fog1_100334.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
fog1_100334.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.843750,0.000000),nsk(1.000000,1.000000,0.000000)})
fog1_100334.Color = cs({csk(0.000000,c3(0.521569,0.243137,1.000000)),csk(1.000000,c3(0.521569,0.243137,1.000000))})
fog1_100334.LightEmission = 0.30000001192092896
fog1_100334.LightInfluence = 0
fog1_100334.Acceleration = v3(0.000000,0.000000,0.000000)
fog1_100334.Drag = 0
fog1_100334.EmissionDirection = Enum.NormalId.Right
fog1_100334.SpreadAngle = v2(15.000000,15.000000)
fog1_100334.ZOffset = -3.000999927520752
fog1_100334.Texture = "rbxassetid://13712007292"
fog1_100334.LockedToPart = true
fog1_100334.Orientation = Enum.ParticleOrientation.FacingCamera
fog1_100334.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
fog1_100334.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog1_100334.FlipbookFramerate = nr(1,1)
fog1_100334.FlipbookStartRandom = false
fog1_100334.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local floorlightray_100335=i("ParticleEmitter", Floor)
floorlightray_100335.Name="floor light ray"
floorlightray_100335:SetAttribute("AuraInstance", true)
floorlightray_100335.Enabled = true
floorlightray_100335.Rate = 6
floorlightray_100335.Lifetime = nr(6,6)
floorlightray_100335.Speed = nr(2,2)
floorlightray_100335.Rotation = nr(90,90)
floorlightray_100335.RotSpeed = nr(0,0)
floorlightray_100335.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
floorlightray_100335.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.468750,0.000000),nsk(1.000000,1.000000,0.000000)})
floorlightray_100335.Color = cs({csk(0.000000,c3(0.341177,0.341177,1.000000)),csk(1.000000,c3(0.509804,0.345098,1.000000))})
floorlightray_100335.LightEmission = 1
floorlightray_100335.LightInfluence = 0
floorlightray_100335.Acceleration = v3(0.000000,0.000000,0.000000)
floorlightray_100335.Drag = 0
floorlightray_100335.EmissionDirection = Enum.NormalId.Right
floorlightray_100335.SpreadAngle = v2(0.000000,0.000000)
floorlightray_100335.ZOffset = -1.9229999780654907
floorlightray_100335.Texture = "rbxassetid://14590086212"
floorlightray_100335.LockedToPart = true
floorlightray_100335.Orientation = Enum.ParticleOrientation.VelocityParallel
floorlightray_100335.FlipbookLayout = Enum.ParticleFlipbookLayout.None
floorlightray_100335.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
floorlightray_100335.FlipbookFramerate = nr(5,10)
floorlightray_100335.FlipbookStartRandom = false
floorlightray_100335.Squash = ns({nsk(0.000000,2.000000,0.000000),nsk(1.000000,2.000000,0.000000)})

local floordarkray_100336=i("ParticleEmitter", Floor)
floordarkray_100336.Name="floor dark ray"
floordarkray_100336:SetAttribute("AuraInstance", true)
floordarkray_100336.Enabled = true
floordarkray_100336.Rate = 6
floordarkray_100336.Lifetime = nr(6,6)
floordarkray_100336.Speed = nr(2,2)
floordarkray_100336.Rotation = nr(90,90)
floordarkray_100336.RotSpeed = nr(0,0)
floordarkray_100336.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
floordarkray_100336.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.468750,0.000000),nsk(1.000000,1.000000,0.000000)})
floordarkray_100336.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
floordarkray_100336.LightEmission = 0
floordarkray_100336.LightInfluence = 0
floordarkray_100336.Acceleration = v3(0.000000,0.000000,0.000000)
floordarkray_100336.Drag = 0
floordarkray_100336.EmissionDirection = Enum.NormalId.Right
floordarkray_100336.SpreadAngle = v2(0.000000,0.000000)
floordarkray_100336.ZOffset = -1.9240000247955322
floordarkray_100336.Texture = "rbxassetid://14590086212"
floordarkray_100336.LockedToPart = true
floordarkray_100336.Orientation = Enum.ParticleOrientation.VelocityParallel
floordarkray_100336.FlipbookLayout = Enum.ParticleFlipbookLayout.None
floordarkray_100336.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
floordarkray_100336.FlipbookFramerate = nr(5,10)
floordarkray_100336.FlipbookStartRandom = false
floordarkray_100336.Squash = ns({nsk(0.000000,2.000000,0.000000),nsk(1.000000,2.000000,0.000000)})

local smoke1_100339=i("ParticleEmitter", Floor)
smoke1_100339.Name="smoke1"
smoke1_100339:SetAttribute("AuraInstance", true)
smoke1_100339.Enabled = true
smoke1_100339.Rate = 80
smoke1_100339.Lifetime = nr(0.8999999761581421,1.399999976158142)
smoke1_100339.Speed = nr(60,70)
smoke1_100339.Rotation = nr(90,90)
smoke1_100339.RotSpeed = nr(0,0)
smoke1_100339.Size = ns({nsk(0.000000,6.496000,4.000000),nsk(0.101454,6.456000,4.000000),nsk(0.199454,6.256000,4.000000),nsk(0.293454,6.456000,4.000000),nsk(0.395454,6.456000,4.000000),nsk(0.493454,6.296000,4.000000),nsk(0.605454,6.096000,4.000000),nsk(0.695454,6.176000,4.000000),nsk(0.793454,5.896000,4.000000),nsk(0.903454,6.096000,4.000000),nsk(1.000000,6.016000,4.000000),nsk(1.000000,5.986848,4.000000)})
smoke1_100339.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.762500,0.025000),nsk(1.000000,1.000000,0.000000)})
smoke1_100339.Color = cs({csk(0.000000,c3(0.262745,0.113725,1.000000)),csk(1.000000,c3(0.333333,0.109804,1.000000))})
smoke1_100339.LightEmission = 1
smoke1_100339.LightInfluence = 0
smoke1_100339.Acceleration = v3(0.000000,20.000000,0.000000)
smoke1_100339.Drag = 2
smoke1_100339.EmissionDirection = Enum.NormalId.Right
smoke1_100339.SpreadAngle = v2(0.000000,0.000000)
smoke1_100339.ZOffset = 0.0010000000474974513
smoke1_100339.Texture = "rbxassetid://13365068138"
smoke1_100339.LockedToPart = true
smoke1_100339.Orientation = Enum.ParticleOrientation.VelocityParallel
smoke1_100339.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
smoke1_100339.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smoke1_100339.FlipbookFramerate = nr(60,60)
smoke1_100339.FlipbookStartRandom = true
smoke1_100339.Squash = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})

local smoke2_100340=i("ParticleEmitter", Floor)
smoke2_100340.Name="smoke2"
smoke2_100340:SetAttribute("AuraInstance", true)
smoke2_100340.Enabled = true
smoke2_100340.Rate = 110
smoke2_100340.Lifetime = nr(0.6000000238418579,0.8999999761581421)
smoke2_100340.Speed = nr(60,70)
smoke2_100340.Rotation = nr(90,90)
smoke2_100340.RotSpeed = nr(0,0)
smoke2_100340.Size = ns({nsk(0.000000,6.496000,4.000000),nsk(0.101454,6.456000,4.000000),nsk(0.199454,6.256000,4.000000),nsk(0.293454,6.456000,4.000000),nsk(0.395454,6.456000,4.000000),nsk(0.493454,6.296000,4.000000),nsk(0.605454,6.096000,4.000000),nsk(0.695454,6.176000,4.000000),nsk(0.793454,5.896000,4.000000),nsk(0.903454,6.096000,4.000000),nsk(1.000000,6.016000,4.000000),nsk(1.000000,5.986848,4.000000)})
smoke2_100340.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.718750,0.068750),nsk(1.000000,1.000000,0.000000)})
smoke2_100340.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smoke2_100340.LightEmission = -3
smoke2_100340.LightInfluence = 0
smoke2_100340.Acceleration = v3(0.000000,20.000000,0.000000)
smoke2_100340.Drag = 2
smoke2_100340.EmissionDirection = Enum.NormalId.Right
smoke2_100340.SpreadAngle = v2(0.000000,0.000000)
smoke2_100340.ZOffset = 0.0020000000949949026
smoke2_100340.Texture = "rbxassetid://13365068138"
smoke2_100340.LockedToPart = true
smoke2_100340.Orientation = Enum.ParticleOrientation.VelocityParallel
smoke2_100340.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
smoke2_100340.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smoke2_100340.FlipbookFramerate = nr(60,60)
smoke2_100340.FlipbookStartRandom = true
smoke2_100340.Squash = ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,1.000000,0.000000)})

local floor1_99844=i("Attachment", Floor)
floor1_99844.Name="floor1"
floor1_99844:SetAttribute("AuraInstance", true)
floor1_99844.Position = v3(0.000000,-1.610646,-0.000031)
floor1_99844.Visible = false

local aaa_99845=i("ParticleEmitter", floor1_99844)
aaa_99845.Name="aaa"
aaa_99845:SetAttribute("AuraInstance", true)
aaa_99845.Enabled = true
aaa_99845.Rate = 15
aaa_99845.Lifetime = nr(0.699999988079071,0.699999988079071)
aaa_99845.Speed = nr(0.0010000000474974513,0.0010000000474974513)
aaa_99845.Rotation = nr(-1000,1000)
aaa_99845.RotSpeed = nr(0,0)
aaa_99845.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,17.575636,0.000000)})
aaa_99845.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
aaa_99845.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
aaa_99845.LightEmission = -20
aaa_99845.LightInfluence = 0
aaa_99845.Acceleration = v3(0.000000,0.000000,0.000000)
aaa_99845.Drag = 0
aaa_99845.EmissionDirection = Enum.NormalId.Top
aaa_99845.SpreadAngle = v2(0.100000,0.100000)
aaa_99845.ZOffset = 1.3919999599456787
aaa_99845.Texture = "rbxassetid://13580371343"
aaa_99845.LockedToPart = true
aaa_99845.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
aaa_99845.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
aaa_99845.FlipbookMode = Enum.ParticleFlipbookMode.Loop
aaa_99845.FlipbookFramerate = nr(1,1)
aaa_99845.FlipbookStartRandom = false
aaa_99845.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local burst_99846=i("ParticleEmitter", floor1_99844)
burst_99846.Name="burst"
burst_99846:SetAttribute("AuraInstance", true)
burst_99846.Enabled = true
burst_99846.Rate = 18
burst_99846.Lifetime = nr(1.0099999904632568,1.0099999904632568)
burst_99846.Speed = nr(0.0381469689309597,0.0381469689309597)
burst_99846.Rotation = nr(-1000,1000)
burst_99846.RotSpeed = nr(0,0)
burst_99846.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.098054,2.619817,0.000000),nsk(0.198054,5.590744,0.000000),nsk(0.296054,8.561671,0.000000),nsk(0.392054,11.262513,0.000000),nsk(0.494054,14.908651,0.000000),nsk(0.596054,18.959915,0.000000),nsk(0.698054,23.416306,0.000000),nsk(0.794054,28.682949,0.000000),nsk(0.896054,33.814552,0.000000),nsk(1.000000,40.491280,0.000000),nsk(1.000000,40.512642,0.000000)})
burst_99846.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.437118,0.031250,0.000000),nsk(1.000000,1.000000,0.000000)})
burst_99846.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
burst_99846.LightEmission = -2
burst_99846.LightInfluence = 0
burst_99846.Acceleration = v3(0.000000,0.000000,0.000000)
burst_99846.Drag = 0
burst_99846.EmissionDirection = Enum.NormalId.Top
burst_99846.SpreadAngle = v2(0.550000,-0.550000)
burst_99846.ZOffset = 0.06300000101327896
burst_99846.Texture = "rbxassetid://12906276200"
burst_99846.LockedToPart = true
burst_99846.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
burst_99846.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
burst_99846.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
burst_99846.FlipbookFramerate = nr(1,1)
burst_99846.FlipbookStartRandom = false
burst_99846.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local contrastburst_99847=i("ParticleEmitter", floor1_99844)
contrastburst_99847.Name="contrast burst"
contrastburst_99847:SetAttribute("AuraInstance", true)
contrastburst_99847.Enabled = true
contrastburst_99847.Rate = 5
contrastburst_99847.Lifetime = nr(1.5,1.5)
contrastburst_99847.Speed = nr(0.0009999998146668077,0.0009999998146668077)
contrastburst_99847.Rotation = nr(-1000,1000)
contrastburst_99847.RotSpeed = nr(0,0)
contrastburst_99847.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.631118,33.162895,0.000000),nsk(0.813118,39.379131,0.000000),nsk(1.000000,43.369087,0.000000)})
contrastburst_99847.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.291226,0.000000,0.000000),nsk(0.799683,0.918750,0.000000),nsk(1.000000,1.000000,0.000000)})
contrastburst_99847.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrastburst_99847.LightEmission = -5
contrastburst_99847.LightInfluence = 0
contrastburst_99847.Acceleration = v3(0.000000,0.000000,0.000000)
contrastburst_99847.Drag = 0
contrastburst_99847.EmissionDirection = Enum.NormalId.Top
contrastburst_99847.SpreadAngle = v2(0.100000,0.000000)
contrastburst_99847.ZOffset = 1.1109999418258667
contrastburst_99847.Texture = "rbxassetid://118195003770928"
contrastburst_99847.LockedToPart = true
contrastburst_99847.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
contrastburst_99847.FlipbookLayout = Enum.ParticleFlipbookLayout.None
contrastburst_99847.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
contrastburst_99847.FlipbookFramerate = nr(60,60)
contrastburst_99847.FlipbookStartRandom = false
contrastburst_99847.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local darkshinysuck_99848=i("ParticleEmitter", floor1_99844)
darkshinysuck_99848.Name="dark shiny suck"
darkshinysuck_99848:SetAttribute("AuraInstance", true)
darkshinysuck_99848.Enabled = true
darkshinysuck_99848.Rate = 15
darkshinysuck_99848.Lifetime = nr(1.5,1.5)
darkshinysuck_99848.Speed = nr(0.10000000149011612,0.10000000149011612)
darkshinysuck_99848.Rotation = nr(-1000,1000)
darkshinysuck_99848.RotSpeed = nr(100,100)
darkshinysuck_99848.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.614054,29.422680,0.000000),nsk(0.816054,34.930252,0.000000),nsk(1.000000,36.717155,0.000000)})
darkshinysuck_99848.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
darkshinysuck_99848.Color = cs({csk(0.000000,c3(0.231373,0.200000,0.372549)),csk(1.000000,c3(0.231373,0.200000,0.372549))})
darkshinysuck_99848.LightEmission = -4
darkshinysuck_99848.LightInfluence = 0
darkshinysuck_99848.Acceleration = v3(0.000000,0.000000,0.000000)
darkshinysuck_99848.Drag = 0
darkshinysuck_99848.EmissionDirection = Enum.NormalId.Bottom
darkshinysuck_99848.SpreadAngle = v2(0.100000,0.000000)
darkshinysuck_99848.ZOffset = 0.04800000041723251
darkshinysuck_99848.Texture = "http://www.roblox.com/asset/?id=18539291909"
darkshinysuck_99848.LockedToPart = true
darkshinysuck_99848.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
darkshinysuck_99848.FlipbookLayout = Enum.ParticleFlipbookLayout.None
darkshinysuck_99848.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
darkshinysuck_99848.FlipbookFramerate = nr(1,1)
darkshinysuck_99848.FlipbookStartRandom = false
darkshinysuck_99848.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local darky_99849=i("ParticleEmitter", floor1_99844)
darky_99849.Name="darky"
darky_99849:SetAttribute("AuraInstance", true)
darky_99849.Enabled = true
darky_99849.Rate = 8
darky_99849.Lifetime = nr(1,1)
darky_99849.Speed = nr(0.0009000000427477062,0.0018000000854954123)
darky_99849.Rotation = nr(-360,360)
darky_99849.RotSpeed = nr(-100,-100)
darky_99849.Size = ns({nsk(0.000000,39.000000,0.000000),nsk(1.000000,39.000000,0.000000)})
darky_99849.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.100423,0.000000,0.000000),nsk(0.700317,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
darky_99849.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
darky_99849.LightEmission = 0.8999999761581421
darky_99849.LightInfluence = 0
darky_99849.Acceleration = v3(0.000000,0.000000,0.000000)
darky_99849.Drag = 0
darky_99849.EmissionDirection = Enum.NormalId.Top
darky_99849.SpreadAngle = v2(-2.000000,2.000000)
darky_99849.ZOffset = -0.004000000189989805
darky_99849.Texture = "http://www.roblox.com/asset/?id=18970239906"
darky_99849.LockedToPart = true
darky_99849.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
darky_99849.FlipbookLayout = Enum.ParticleFlipbookLayout.None
darky_99849.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
darky_99849.FlipbookFramerate = nr(1,1)
darky_99849.FlipbookStartRandom = false
darky_99849.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local dots_99850=i("ParticleEmitter", floor1_99844)
dots_99850.Name="dots"
dots_99850:SetAttribute("AuraInstance", true)
dots_99850.Enabled = true
dots_99850.Rate = 7
dots_99850.Lifetime = nr(1,1)
dots_99850.Speed = nr(0.03051757626235485,0.03051757626235485)
dots_99850.Rotation = nr(-1000,1000)
dots_99850.RotSpeed = nr(0,0)
dots_99850.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.094054,3.748152,0.000000),nsk(0.196054,10.943267,0.000000),nsk(0.292054,18.138382,0.000000),nsk(0.388054,25.500824,0.000000),nsk(0.488054,32.026627,0.000000),nsk(0.598054,38.217770,0.000000),nsk(0.694054,41.898994,0.000000),nsk(0.798054,45.914871,0.000000),nsk(0.896054,48.592121,0.000000),nsk(1.000000,49.965729,0.000000),nsk(1.000000,50.198475,0.000000)})
dots_99850.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.053724,0.875000,0.000000),nsk(0.103785,0.775000,0.000000),nsk(0.145299,0.700000,0.000000),nsk(0.166056,0.637500,0.000000),nsk(0.200244,0.537500,0.000000),nsk(0.256410,0.418750,0.000000),nsk(0.282051,0.375000,0.000000),nsk(0.323565,0.293750,0.000000),nsk(0.373626,0.168750,0.000000),nsk(0.401709,0.112500,0.000000),nsk(0.459096,0.056250,0.000000),nsk(0.500000,0.000000,0.000000),nsk(0.540904,0.100000,0.000000),nsk(0.581197,0.150000,0.000000),nsk(0.598291,0.168750,0.000000),nsk(0.630037,0.200000,0.000000),nsk(0.664225,0.281250,0.000000),nsk(0.680098,0.318750,0.000000),nsk(1.000000,1.000000,0.000000)})
dots_99850.Color = cs({csk(0.000000,c3(0.529412,0.309804,1.000000)),csk(1.000000,c3(0.388235,0.305882,1.000000))})
dots_99850.LightEmission = 1
dots_99850.LightInfluence = 0
dots_99850.Acceleration = v3(0.000000,0.000000,0.000000)
dots_99850.Drag = 0
dots_99850.EmissionDirection = Enum.NormalId.Top
dots_99850.SpreadAngle = v2(0.550000,-0.550000)
dots_99850.ZOffset = 0.054999999701976776
dots_99850.Texture = "http://www.roblox.com/asset/?id=14709236536"
dots_99850.LockedToPart = true
dots_99850.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
dots_99850.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
dots_99850.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
dots_99850.FlipbookFramerate = nr(1,1)
dots_99850.FlipbookStartRandom = false
dots_99850.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local floorsmoke_99851=i("ParticleEmitter", floor1_99844)
floorsmoke_99851.Name="floor smoke"
floorsmoke_99851:SetAttribute("EmitDelay", 0)
floorsmoke_99851:SetAttribute("AuraInstance", true)
floorsmoke_99851.Enabled = true
floorsmoke_99851.Rate = 10
floorsmoke_99851.Lifetime = nr(1.5,1.5)
floorsmoke_99851.Speed = nr(0.0009999998146668077,0.0009999998146668077)
floorsmoke_99851.Rotation = nr(-1000,1000)
floorsmoke_99851.RotSpeed = nr(0,0)
floorsmoke_99851.Size = ns({nsk(0.000000,41.472000,0.000000),nsk(1.000000,60.686371,0.000000)})
floorsmoke_99851.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.500000,0.000000),nsk(0.863636,0.912500,0.000000),nsk(1.000000,1.000000,0.000000)})
floorsmoke_99851.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
floorsmoke_99851.LightEmission = 0.800000011920929
floorsmoke_99851.LightInfluence = 0
floorsmoke_99851.Acceleration = v3(0.000000,0.000000,0.000000)
floorsmoke_99851.Drag = 0
floorsmoke_99851.EmissionDirection = Enum.NormalId.Top
floorsmoke_99851.SpreadAngle = v2(0.100000,0.000000)
floorsmoke_99851.ZOffset = 0.4350000023841858
floorsmoke_99851.Texture = "rbxassetid://14200879082"
floorsmoke_99851.LockedToPart = true
floorsmoke_99851.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
floorsmoke_99851.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
floorsmoke_99851.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
floorsmoke_99851.FlipbookFramerate = nr(1,1)
floorsmoke_99851.FlipbookStartRandom = false
floorsmoke_99851.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local floorspin1_99852=i("ParticleEmitter", floor1_99844)
floorspin1_99852.Name="floor spin 1"
floorspin1_99852:SetAttribute("EmitDelay", 0)
floorspin1_99852:SetAttribute("AuraInstance", true)
floorspin1_99852:SetAttribute("EmitCount", 0)
floorspin1_99852.Enabled = true
floorspin1_99852.Rate = 30
floorspin1_99852.Lifetime = nr(1.100000023841858,1.100000023841858)
floorspin1_99852.Speed = nr(0.05000000074505806,0.05000000074505806)
floorspin1_99852.Rotation = nr(-1000,1000)
floorspin1_99852.RotSpeed = nr(-230,-230)
floorspin1_99852.Size = ns({nsk(0.000000,28.207775,0.000000),nsk(1.000000,44.048931,1.261515)})
floorspin1_99852.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.158768,0.469512,0.000000),nsk(0.478858,0.243750,0.000000),nsk(0.826619,0.731707,0.000000),nsk(1.000000,1.000000,0.000000)})
floorspin1_99852.Color = cs({csk(0.000000,c3(0.525490,0.368627,1.000000)),csk(1.000000,c3(0.525490,0.368627,1.000000))})
floorspin1_99852.LightEmission = 1
floorspin1_99852.LightInfluence = 0
floorspin1_99852.Acceleration = v3(0.000000,0.000000,0.000000)
floorspin1_99852.Drag = 0
floorspin1_99852.EmissionDirection = Enum.NormalId.Top
floorspin1_99852.SpreadAngle = v2(3.000000,3.000000)
floorspin1_99852.ZOffset = 1.0149999856948853
floorspin1_99852.Texture = "rbxassetid://18631421152"
floorspin1_99852.LockedToPart = true
floorspin1_99852.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
floorspin1_99852.FlipbookLayout = Enum.ParticleFlipbookLayout.None
floorspin1_99852.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
floorspin1_99852.FlipbookFramerate = nr(162.5,162.5)
floorspin1_99852.FlipbookStartRandom = false
floorspin1_99852.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local floorspin2_99853=i("ParticleEmitter", floor1_99844)
floorspin2_99853.Name="floorspin2"
floorspin2_99853:SetAttribute("EmitDelay", 0)
floorspin2_99853:SetAttribute("AuraInstance", true)
floorspin2_99853:SetAttribute("EmitCount", 0)
floorspin2_99853.Enabled = true
floorspin2_99853.Rate = 30
floorspin2_99853.Lifetime = nr(1.100000023841858,1.100000023841858)
floorspin2_99853.Speed = nr(0.05000000074505806,0.05000000074505806)
floorspin2_99853.Rotation = nr(0,360)
floorspin2_99853.RotSpeed = nr(-230,-230)
floorspin2_99853.Size = ns({nsk(0.000000,20.063416,0.000000),nsk(1.000000,40.651993,1.261515)})
floorspin2_99853.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.158768,0.469512,0.000000),nsk(0.477883,0.000000,0.000000),nsk(0.826619,0.731707,0.000000),nsk(1.000000,1.000000,0.000000)})
floorspin2_99853.Color = cs({csk(0.000000,c3(0.435294,0.333333,1.000000)),csk(1.000000,c3(0.741176,0.482353,1.000000))})
floorspin2_99853.LightEmission = 0.8999999761581421
floorspin2_99853.LightInfluence = 0
floorspin2_99853.Acceleration = v3(0.000000,0.000000,0.000000)
floorspin2_99853.Drag = 0
floorspin2_99853.EmissionDirection = Enum.NormalId.Top
floorspin2_99853.SpreadAngle = v2(3.000000,3.000000)
floorspin2_99853.ZOffset = 0.004999999888241291
floorspin2_99853.Texture = "rbxassetid://18631421152"
floorspin2_99853.LockedToPart = true
floorspin2_99853.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
floorspin2_99853.FlipbookLayout = Enum.ParticleFlipbookLayout.None
floorspin2_99853.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
floorspin2_99853.FlipbookFramerate = nr(162.5,162.5)
floorspin2_99853.FlipbookStartRandom = false
floorspin2_99853.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local glowy_99854=i("ParticleEmitter", floor1_99844)
glowy_99854.Name="glowy"
glowy_99854:SetAttribute("AuraInstance", true)
glowy_99854.Enabled = true
glowy_99854.Rate = 8
glowy_99854.Lifetime = nr(1,1)
glowy_99854.Speed = nr(0.0009000000427477062,0.0018000000854954123)
glowy_99854.Rotation = nr(-360,360)
glowy_99854.RotSpeed = nr(-100,-100)
glowy_99854.Size = ns({nsk(0.000000,39.000000,0.000000),nsk(1.000000,39.000000,0.000000)})
glowy_99854.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.100423,0.000000,0.000000),nsk(0.700317,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
glowy_99854.Color = cs({csk(0.000000,c3(0.388235,0.290196,0.792157)),csk(1.000000,c3(0.290196,0.254902,0.792157))})
glowy_99854.LightEmission = 1
glowy_99854.LightInfluence = 0
glowy_99854.Acceleration = v3(0.000000,0.000000,0.000000)
glowy_99854.Drag = 0
glowy_99854.EmissionDirection = Enum.NormalId.Top
glowy_99854.SpreadAngle = v2(-2.000000,2.000000)
glowy_99854.ZOffset = -0.003000000026077032
glowy_99854.Texture = "http://www.roblox.com/asset/?id=18970239906"
glowy_99854.LockedToPart = true
glowy_99854.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
glowy_99854.FlipbookLayout = Enum.ParticleFlipbookLayout.None
glowy_99854.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
glowy_99854.FlipbookFramerate = nr(1,1)
glowy_99854.FlipbookStartRandom = false
glowy_99854.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local midshine_99855=i("ParticleEmitter", floor1_99844)
midshine_99855.Name="mid shine"
midshine_99855:SetAttribute("AuraInstance", true)
midshine_99855.Enabled = true
midshine_99855.Rate = 4
midshine_99855.Lifetime = nr(0.5,0.5)
midshine_99855.Speed = nr(0.10000000149011612,0.10000000149011612)
midshine_99855.Rotation = nr(0,0)
midshine_99855.RotSpeed = nr(0,0)
midshine_99855.Size = ns({nsk(0.000000,20.000000,0.000000),nsk(1.000000,20.000000,0.000000)})
midshine_99855.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.502494,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
midshine_99855.Color = cs({csk(0.000000,c3(0.262745,0.192157,0.792157)),csk(1.000000,c3(0.262745,0.192157,0.792157))})
midshine_99855.LightEmission = 1
midshine_99855.LightInfluence = 0
midshine_99855.Acceleration = v3(0.000000,0.000000,0.000000)
midshine_99855.Drag = 0
midshine_99855.EmissionDirection = Enum.NormalId.Bottom
midshine_99855.SpreadAngle = v2(0.100000,0.000000)
midshine_99855.ZOffset = 2.059000015258789
midshine_99855.Texture = "rbxassetid://3052949762"
midshine_99855.LockedToPart = true
midshine_99855.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
midshine_99855.FlipbookLayout = Enum.ParticleFlipbookLayout.None
midshine_99855.FlipbookMode = Enum.ParticleFlipbookMode.Loop
midshine_99855.FlipbookFramerate = nr(1,1)
midshine_99855.FlipbookStartRandom = false
midshine_99855.Squash = ns({nsk(0.000000,-0.250000,0.000000),nsk(1.000000,-0.250000,0.000000)})

local rainbowglare_99856=i("ParticleEmitter", floor1_99844)
rainbowglare_99856.Name="rainbow glare"
rainbowglare_99856:SetAttribute("EmitDelay", 0)
rainbowglare_99856:SetAttribute("AuraInstance", true)
rainbowglare_99856:SetAttribute("EmitCount", 0)
rainbowglare_99856.Enabled = true
rainbowglare_99856.Rate = 2
rainbowglare_99856.Lifetime = nr(2,2)
rainbowglare_99856.Speed = nr(-0.10000000149011612,-0.10000000149011612)
rainbowglare_99856.Rotation = nr(0,0)
rainbowglare_99856.RotSpeed = nr(0,0)
rainbowglare_99856.Size = ns({nsk(0.000000,27.054991,0.000000),nsk(1.000000,32.157280,0.000000)})
rainbowglare_99856.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.856250,0.000000),nsk(1.000000,1.000000,0.000000)})
rainbowglare_99856.Color = cs({csk(0.000000,c3(0.545098,0.431373,1.000000)),csk(1.000000,c3(0.545098,0.431373,1.000000))})
rainbowglare_99856.LightEmission = 1
rainbowglare_99856.LightInfluence = 0
rainbowglare_99856.Acceleration = v3(0.000000,0.000000,0.000000)
rainbowglare_99856.Drag = 0
rainbowglare_99856.EmissionDirection = Enum.NormalId.Front
rainbowglare_99856.SpreadAngle = v2(0.001000,0.000000)
rainbowglare_99856.ZOffset = 1.3930000066757202
rainbowglare_99856.Texture = "rbxassetid://18356334814"
rainbowglare_99856.LockedToPart = true
rainbowglare_99856.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
rainbowglare_99856.FlipbookLayout = Enum.ParticleFlipbookLayout.None
rainbowglare_99856.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
rainbowglare_99856.FlipbookFramerate = nr(1,1)
rainbowglare_99856.FlipbookStartRandom = false
rainbowglare_99856.Squash = ns({nsk(0.000000,-0.200000,0.000000),nsk(1.000000,-0.200000,0.000000)})

local shinysuck_99857=i("ParticleEmitter", floor1_99844)
shinysuck_99857.Name="shiny suck"
shinysuck_99857:SetAttribute("AuraInstance", true)
shinysuck_99857.Enabled = true
shinysuck_99857.Rate = 15
shinysuck_99857.Lifetime = nr(1.5,1.5)
shinysuck_99857.Speed = nr(0.10000000149011612,0.10000000149011612)
shinysuck_99857.Rotation = nr(-1000,1000)
shinysuck_99857.RotSpeed = nr(100,100)
shinysuck_99857.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.614054,29.422680,0.000000),nsk(0.816054,34.930252,0.000000),nsk(1.000000,36.717155,0.000000)})
shinysuck_99857.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
shinysuck_99857.Color = cs({csk(0.000000,c3(0.419608,0.262745,0.886275)),csk(1.000000,c3(0.419608,0.262745,0.886275))})
shinysuck_99857.LightEmission = 1
shinysuck_99857.LightInfluence = 0
shinysuck_99857.Acceleration = v3(0.000000,0.000000,0.000000)
shinysuck_99857.Drag = 0
shinysuck_99857.EmissionDirection = Enum.NormalId.Bottom
shinysuck_99857.SpreadAngle = v2(0.100000,0.000000)
shinysuck_99857.ZOffset = 0.052000001072883606
shinysuck_99857.Texture = "http://www.roblox.com/asset/?id=107088533978725"
shinysuck_99857.LockedToPart = true
shinysuck_99857.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
shinysuck_99857.FlipbookLayout = Enum.ParticleFlipbookLayout.None
shinysuck_99857.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
shinysuck_99857.FlipbookFramerate = nr(1,1)
shinysuck_99857.FlipbookStartRandom = false
shinysuck_99857.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local smoke1_99858=i("ParticleEmitter", floor1_99844)
smoke1_99858.Name="smoke1"
smoke1_99858:SetAttribute("EmitDelay", 0)
smoke1_99858:SetAttribute("AuraInstance", true)
smoke1_99858.Enabled = true
smoke1_99858.Rate = 100
smoke1_99858.Lifetime = nr(2,2.5)
smoke1_99858.Speed = nr(30,30)
smoke1_99858.Rotation = nr(-1000,1000)
smoke1_99858.RotSpeed = nr(0,0)
smoke1_99858.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(1.000000,10.000000,0.000000)})
smoke1_99858.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.197146,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke1_99858.Color = cs({csk(0.000000,c3(0.349020,0.188235,1.000000)),csk(1.000000,c3(0.349020,0.188235,1.000000))})
smoke1_99858.LightEmission = 1
smoke1_99858.LightInfluence = 0.30000001192092896
smoke1_99858.Acceleration = v3(0.000000,0.000000,0.000000)
smoke1_99858.Drag = 0
smoke1_99858.EmissionDirection = Enum.NormalId.Right
smoke1_99858.SpreadAngle = v2(10.000000,360.000000)
smoke1_99858.ZOffset = 0.0010000000474974513
smoke1_99858.Texture = "rbxassetid://12123878312"
smoke1_99858.LockedToPart = true
smoke1_99858.Orientation = Enum.ParticleOrientation.FacingCamera
smoke1_99858.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
smoke1_99858.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smoke1_99858.FlipbookFramerate = nr(1,1)
smoke1_99858.FlipbookStartRandom = false
smoke1_99858.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local smoke2_99859=i("ParticleEmitter", floor1_99844)
smoke2_99859.Name="smoke2"
smoke2_99859:SetAttribute("EmitDelay", 0)
smoke2_99859:SetAttribute("AuraInstance", true)
smoke2_99859.Enabled = true
smoke2_99859.Rate = 100
smoke2_99859.Lifetime = nr(2,2.5)
smoke2_99859.Speed = nr(30,30)
smoke2_99859.Rotation = nr(-1000,1000)
smoke2_99859.RotSpeed = nr(0,0)
smoke2_99859.Size = ns({nsk(0.000000,10.000000,0.000000),nsk(1.000000,10.000000,0.000000)})
smoke2_99859.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.197146,0.800000,0.000000),nsk(1.000000,1.000000,0.000000)})
smoke2_99859.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
smoke2_99859.LightEmission = 0.30000001192092896
smoke2_99859.LightInfluence = 0
smoke2_99859.Acceleration = v3(0.000000,0.000000,0.000000)
smoke2_99859.Drag = 0
smoke2_99859.EmissionDirection = Enum.NormalId.Right
smoke2_99859.SpreadAngle = v2(10.000000,360.000000)
smoke2_99859.ZOffset = 0.0020000000949949026
smoke2_99859.Texture = "rbxassetid://12123878312"
smoke2_99859.LockedToPart = true
smoke2_99859.Orientation = Enum.ParticleOrientation.FacingCamera
smoke2_99859.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
smoke2_99859.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smoke2_99859.FlipbookFramerate = nr(1,1)
smoke2_99859.FlipbookStartRandom = false
smoke2_99859.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local spirals_99860=i("ParticleEmitter", floor1_99844)
spirals_99860.Name="spirals"
spirals_99860:SetAttribute("AuraInstance", true)
spirals_99860.Enabled = true
spirals_99860.Rate = 16
spirals_99860.Lifetime = nr(1.2000000476837158,1.2000000476837158)
spirals_99860.Speed = nr(0.0381469689309597,0.0381469689309597)
spirals_99860.Rotation = nr(-1000,1000)
spirals_99860.RotSpeed = nr(0,0)
spirals_99860.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.092054,1.751880,0.000000),nsk(0.194054,4.436213,0.000000),nsk(0.296054,7.685668,0.000000),nsk(0.398054,11.641527,0.000000),nsk(0.496054,16.303789,0.000000),nsk(0.598054,21.107332,0.000000),nsk(0.698054,25.769596,0.000000),nsk(0.796054,30.149298,0.000000),nsk(0.894054,35.376682,0.000000),nsk(1.000000,42.299435,0.000000),nsk(1.000000,42.384205,0.000000)})
spirals_99860.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.437118,0.031250,0.000000),nsk(1.000000,1.000000,0.000000)})
spirals_99860.Color = cs({csk(0.000000,c3(0.435294,0.321569,1.000000)),csk(1.000000,c3(0.435294,0.321569,1.000000))})
spirals_99860.LightEmission = 1
spirals_99860.LightInfluence = 0
spirals_99860.Acceleration = v3(0.000000,0.000000,0.000000)
spirals_99860.Drag = 0
spirals_99860.EmissionDirection = Enum.NormalId.Top
spirals_99860.SpreadAngle = v2(0.550000,-0.550000)
spirals_99860.ZOffset = 0.06700000166893005
spirals_99860.Texture = "rbxassetid://17218042034"
spirals_99860.LockedToPart = true
spirals_99860.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
spirals_99860.FlipbookLayout = Enum.ParticleFlipbookLayout.None
spirals_99860.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
spirals_99860.FlipbookFramerate = nr(1,1)
spirals_99860.FlipbookStartRandom = false
spirals_99860.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local spirals2_99861=i("ParticleEmitter", floor1_99844)
spirals2_99861.Name="spirals2"
spirals2_99861:SetAttribute("AuraInstance", true)
spirals2_99861.Enabled = true
spirals2_99861.Rate = 17
spirals2_99861.Lifetime = nr(1.0099999904632568,1.0099999904632568)
spirals2_99861.Speed = nr(0.0381469689309597,0.0381469689309597)
spirals2_99861.Rotation = nr(-1000,1000)
spirals2_99861.RotSpeed = nr(0,0)
spirals2_99861.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.088054,2.439011,0.000000),nsk(0.188054,5.382647,0.000000),nsk(0.294054,8.045936,0.000000),nsk(0.394054,10.428879,0.000000),nsk(0.496054,13.092168,0.000000),nsk(0.596054,17.017015,0.000000),nsk(0.688054,21.082035,0.000000),nsk(0.796054,27.810345,0.000000),nsk(0.898054,34.819000,0.000000),nsk(1.000000,41.940968,0.000000),nsk(1.000000,42.051933,0.000000)})
spirals2_99861.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.437118,0.031250,0.000000),nsk(1.000000,1.000000,0.000000)})
spirals2_99861.Color = cs({csk(0.000000,c3(0.454902,0.203922,1.000000)),csk(1.000000,c3(0.454902,0.203922,1.000000))})
spirals2_99861.LightEmission = 1
spirals2_99861.LightInfluence = 0
spirals2_99861.Acceleration = v3(0.000000,0.000000,0.000000)
spirals2_99861.Drag = 0
spirals2_99861.EmissionDirection = Enum.NormalId.Top
spirals2_99861.SpreadAngle = v2(0.550000,-0.550000)
spirals2_99861.ZOffset = 0.06800000369548798
spirals2_99861.Texture = "http://www.roblox.com/asset/?id=18894440507"
spirals2_99861.LockedToPart = true
spirals2_99861.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
spirals2_99861.FlipbookLayout = Enum.ParticleFlipbookLayout.None
spirals2_99861.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
spirals2_99861.FlipbookFramerate = nr(1,1)
spirals2_99861.FlipbookStartRandom = false
spirals2_99861.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local waah_99862=i("ParticleEmitter", floor1_99844)
waah_99862.Name="waah"
waah_99862:SetAttribute("AuraInstance", true)
waah_99862.Enabled = true
waah_99862.Rate = 30
waah_99862.Lifetime = nr(1.0099999904632568,1.0099999904632568)
waah_99862.Speed = nr(0.02441406063735485,0.02441406063735485)
waah_99862.Rotation = nr(-1000,1000)
waah_99862.RotSpeed = nr(0,0)
waah_99862.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.100000,1.867144,0.000000),nsk(0.174756,3.906073,0.000000),nsk(0.240756,9.528453,0.000000),nsk(0.322756,15.742661,0.000000),nsk(0.398756,21.217085,0.000000),nsk(0.488756,26.099676,0.000000),nsk(0.558756,29.946568,0.000000),nsk(0.694756,35.273033,0.000000),nsk(0.832756,39.859711,0.000000),nsk(1.000000,44.385860,0.000000),nsk(1.000000,44.387207,0.000000)})
waah_99862.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.343750,0.000000),nsk(1.000000,1.000000,0.000000)})
waah_99862.Color = cs({csk(0.000000,c3(0.443137,0.403922,1.000000)),csk(1.000000,c3(0.443137,0.403922,1.000000))})
waah_99862.LightEmission = 1
waah_99862.LightInfluence = 0
waah_99862.Acceleration = v3(0.000000,0.000000,0.000000)
waah_99862.Drag = 0
waah_99862.EmissionDirection = Enum.NormalId.Top
waah_99862.SpreadAngle = v2(0.550000,-0.550000)
waah_99862.ZOffset = 0.017999999225139618
waah_99862.Texture = "rbxassetid://13992197350"
waah_99862.LockedToPart = true
waah_99862.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
waah_99862.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
waah_99862.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
waah_99862.FlipbookFramerate = nr(1,1)
waah_99862.FlipbookStartRandom = false
waah_99862.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local OUTERVORTEX_99863=i("ParticleEmitter", floor1_99844)
OUTERVORTEX_99863.Name="OUTER VORTEX"
OUTERVORTEX_99863:SetAttribute("AuraInstance", true)
OUTERVORTEX_99863.Enabled = true
OUTERVORTEX_99863.Rate = 2
OUTERVORTEX_99863.Lifetime = nr(2,2)
OUTERVORTEX_99863.Speed = nr(0.10000000149011612,0.10000000149011612)
OUTERVORTEX_99863.Rotation = nr(0,360)
OUTERVORTEX_99863.RotSpeed = nr(150,150)
OUTERVORTEX_99863.Size = ns({nsk(0.000000,50.472130,0.000000),nsk(1.000000,41.454441,0.000000)})
OUTERVORTEX_99863.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.250000,0.000000),nsk(1.000000,1.000000,0.000000)})
OUTERVORTEX_99863.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
OUTERVORTEX_99863.LightEmission = -0.5
OUTERVORTEX_99863.LightInfluence = 0
OUTERVORTEX_99863.Acceleration = v3(0.000000,0.000000,0.000000)
OUTERVORTEX_99863.Drag = 0
OUTERVORTEX_99863.EmissionDirection = Enum.NormalId.Bottom
OUTERVORTEX_99863.SpreadAngle = v2(0.100000,0.000000)
OUTERVORTEX_99863.ZOffset = 0.0020000000949949026
OUTERVORTEX_99863.Texture = "rbxassetid://14050153106"
OUTERVORTEX_99863.LockedToPart = true
OUTERVORTEX_99863.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
OUTERVORTEX_99863.FlipbookLayout = Enum.ParticleFlipbookLayout.None
OUTERVORTEX_99863.FlipbookMode = Enum.ParticleFlipbookMode.Loop
OUTERVORTEX_99863.FlipbookFramerate = nr(1,1)
OUTERVORTEX_99863.FlipbookStartRandom = false
OUTERVORTEX_99863.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local mid_99918=i("Attachment", Floor)
mid_99918.Name="mid"
mid_99918:SetAttribute("AuraInstance", true)
mid_99918.Position = v3(0.000000,0.000000,0.000000)
mid_99918.Visible = false

local awind_99919=i("ParticleEmitter", mid_99918)
awind_99919.Name="awind"
awind_99919:SetAttribute("EmitDelay", 0)
awind_99919:SetAttribute("AuraInstance", true)
awind_99919:SetAttribute("EmitDuration", 2)
awind_99919:SetAttribute("EmitCount", 4)
awind_99919.Enabled = true
awind_99919.Rate = 25
awind_99919.Lifetime = nr(0.699999988079071,0.800000011920929)
awind_99919.Speed = nr(1,10)
awind_99919.Rotation = nr(-360,360)
awind_99919.RotSpeed = nr(20,20)
awind_99919.Size = ns({nsk(0.000000,32.899998,0.000000),nsk(0.367740,38.809948,4.058074),nsk(0.639740,50.984173,5.902650),nsk(1.000000,55.910507,11.671425)})
awind_99919.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.343552,0.975000,0.000000),nsk(0.720000,0.750000,0.000000),nsk(0.894292,0.931250,0.000000),nsk(1.000000,1.000000,0.000000)})
awind_99919.Color = cs({csk(0.000000,c3(0.450980,0.341177,1.000000)),csk(0.704152,c3(0.470588,0.376471,1.000000)),csk(1.000000,c3(0.529412,0.384314,1.000000))})
awind_99919.LightEmission = 1
awind_99919.LightInfluence = 0
awind_99919.Acceleration = v3(0.000000,10.000000,0.000000)
awind_99919.Drag = 0
awind_99919.EmissionDirection = Enum.NormalId.Top
awind_99919.SpreadAngle = v2(-5.000000,5.000000)
awind_99919.ZOffset = 0.032999999821186066
awind_99919.Texture = "http://www.roblox.com/asset/?id=14152113700"
awind_99919.LockedToPart = true
awind_99919.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
awind_99919.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
awind_99919.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
awind_99919.FlipbookFramerate = nr(1,1)
awind_99919.FlipbookStartRandom = false
awind_99919.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local awind2_99920=i("ParticleEmitter", mid_99918)
awind2_99920.Name="awind2"
awind2_99920:SetAttribute("EmitDelay", 0)
awind2_99920:SetAttribute("AuraInstance", true)
awind2_99920:SetAttribute("EmitDuration", 2)
awind2_99920:SetAttribute("EmitCount", 4)
awind2_99920.Enabled = true
awind2_99920.Rate = 20
awind2_99920.Lifetime = nr(0.699999988079071,0.800000011920929)
awind2_99920.Speed = nr(5,10)
awind2_99920.Rotation = nr(-360,360)
awind2_99920.RotSpeed = nr(20,20)
awind2_99920.Size = ns({nsk(0.000000,24.268320,0.000000),nsk(0.359740,27.362488,2.745401),nsk(0.651740,38.649132,5.795848),nsk(1.000000,42.318661,10.135047)})
awind2_99920.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.418076,1.000000,0.000000),nsk(0.720000,0.750000,0.000000),nsk(0.896406,0.950000,0.000000),nsk(1.000000,1.000000,0.000000)})
awind2_99920.Color = cs({csk(0.000000,c3(0.184314,0.137255,0.372549)),csk(1.000000,c3(0.184314,0.137255,0.372549))})
awind2_99920.LightEmission = 1
awind2_99920.LightInfluence = 0
awind2_99920.Acceleration = v3(0.000000,8.000000,0.000000)
awind2_99920.Drag = 0
awind2_99920.EmissionDirection = Enum.NormalId.Top
awind2_99920.SpreadAngle = v2(-5.000000,5.000000)
awind2_99920.ZOffset = 0.03400000184774399
awind2_99920.Texture = "rbxassetid://18356010916"
awind2_99920.LockedToPart = true
awind2_99920.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
awind2_99920.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
awind2_99920.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
awind2_99920.FlipbookFramerate = nr(1,1)
awind2_99920.FlipbookStartRandom = false
awind2_99920.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local awind3_99921=i("ParticleEmitter", mid_99918)
awind3_99921.Name="awind3"
awind3_99921:SetAttribute("EmitDelay", 0)
awind3_99921:SetAttribute("AuraInstance", true)
awind3_99921:SetAttribute("EmitDuration", 2)
awind3_99921:SetAttribute("EmitCount", 4)
awind3_99921.Enabled = true
awind3_99921.Rate = 20
awind3_99921.Lifetime = nr(0.800000011920929,1.100000023841858)
awind3_99921.Speed = nr(1,10)
awind3_99921.Rotation = nr(-360,360)
awind3_99921.RotSpeed = nr(20,20)
awind3_99921.Size = ns({nsk(0.000000,28.723949,0.000000),nsk(0.369740,31.600958,3.656814),nsk(0.647740,44.095070,5.629158),nsk(1.000000,46.503098,8.825405)})
awind3_99921.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.418076,1.000000,0.000000),nsk(0.720000,0.750000,0.000000),nsk(0.895877,0.918750,0.000000),nsk(1.000000,1.000000,0.000000)})
awind3_99921.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
awind3_99921.LightEmission = 0
awind3_99921.LightInfluence = 0
awind3_99921.Acceleration = v3(0.000000,8.000000,0.000000)
awind3_99921.Drag = 0
awind3_99921.EmissionDirection = Enum.NormalId.Top
awind3_99921.SpreadAngle = v2(-5.000000,5.000000)
awind3_99921.ZOffset = 0.03500000014901161
awind3_99921.Texture = "rbxassetid://17723930633"
awind3_99921.LockedToPart = true
awind3_99921.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
awind3_99921.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
awind3_99921.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
awind3_99921.FlipbookFramerate = nr(1,1)
awind3_99921.FlipbookStartRandom = false
awind3_99921.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local crescentblack_99922=i("ParticleEmitter", mid_99918)
crescentblack_99922.Name="crescent black"
crescentblack_99922:SetAttribute("AuraInstance", true)
crescentblack_99922.Enabled = true
crescentblack_99922.Rate = 10
crescentblack_99922.Lifetime = nr(1,1)
crescentblack_99922.Speed = nr(0.03051757626235485,0.03051757626235485)
crescentblack_99922.Rotation = nr(-1000,1000)
crescentblack_99922.RotSpeed = nr(100,100)
crescentblack_99922.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.090132,1.534950,0.000000),nsk(0.200132,4.634371,0.000000),nsk(0.294132,7.355360,0.000000),nsk(0.396132,12.400554,0.000000),nsk(0.500132,19.038965,0.000000),nsk(0.588132,23.287550,0.000000),nsk(0.696132,28.731049,0.000000),nsk(0.798132,33.112400,0.000000),nsk(0.900132,36.784870,0.000000),nsk(1.000000,39.830475,0.000000),nsk(1.000000,39.792915,0.000000)})
crescentblack_99922.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.053724,0.875000,0.000000),nsk(0.103785,0.775000,0.000000),nsk(0.145299,0.700000,0.000000),nsk(0.166056,0.637500,0.000000),nsk(0.200244,0.537500,0.000000),nsk(0.256410,0.418750,0.000000),nsk(0.282051,0.375000,0.000000),nsk(0.323565,0.293750,0.000000),nsk(0.373626,0.168750,0.000000),nsk(0.401709,0.112500,0.000000),nsk(0.459096,0.056250,0.000000),nsk(0.500000,0.000000,0.000000),nsk(0.540904,0.100000,0.000000),nsk(0.581197,0.150000,0.000000),nsk(0.598291,0.168750,0.000000),nsk(0.630037,0.200000,0.000000),nsk(0.664225,0.281250,0.000000),nsk(0.680098,0.318750,0.000000),nsk(1.000000,1.000000,0.000000)})
crescentblack_99922.Color = cs({csk(0.000000,c3(0.101961,0.054902,0.243137)),csk(1.000000,c3(0.101961,0.054902,0.243137))})
crescentblack_99922.LightEmission = -1
crescentblack_99922.LightInfluence = 0
crescentblack_99922.Acceleration = v3(0.000000,0.000000,0.000000)
crescentblack_99922.Drag = 0
crescentblack_99922.EmissionDirection = Enum.NormalId.Top
crescentblack_99922.SpreadAngle = v2(-15.000000,15.000000)
crescentblack_99922.ZOffset = 0.061000000685453415
crescentblack_99922.Texture = "rbxassetid://13580336752"
crescentblack_99922.LockedToPart = true
crescentblack_99922.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
crescentblack_99922.FlipbookLayout = Enum.ParticleFlipbookLayout.None
crescentblack_99922.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
crescentblack_99922.FlipbookFramerate = nr(1,1)
crescentblack_99922.FlipbookStartRandom = false
crescentblack_99922.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local crescent_99923=i("ParticleEmitter", mid_99918)
crescent_99923.Name="crescent"
crescent_99923:SetAttribute("AuraInstance", true)
crescent_99923.Enabled = true
crescent_99923.Rate = 10
crescent_99923.Lifetime = nr(1.100000023841858,1.100000023841858)
crescent_99923.Speed = nr(0.03051757626235485,0.03051757626235485)
crescent_99923.Rotation = nr(-1000,1000)
crescent_99923.RotSpeed = nr(100,100)
crescent_99923.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.090132,1.534950,0.000000),nsk(0.194132,4.088406,0.000000),nsk(0.296132,7.873967,0.000000),nsk(0.390132,12.416640,0.000000),nsk(0.494132,17.085499,0.000000),nsk(0.594132,21.249617,0.000000),nsk(0.694132,26.927959,0.000000),nsk(0.798132,31.344448,0.000000),nsk(0.896132,34.877640,0.000000),nsk(1.000000,37.855614,0.000000),nsk(1.000000,37.855614,0.000000)})
crescent_99923.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.053724,0.875000,0.000000),nsk(0.103785,0.775000,0.000000),nsk(0.145299,0.700000,0.000000),nsk(0.166056,0.637500,0.000000),nsk(0.200244,0.537500,0.000000),nsk(0.256410,0.418750,0.000000),nsk(0.282051,0.375000,0.000000),nsk(0.323565,0.293750,0.000000),nsk(0.373626,0.168750,0.000000),nsk(0.401709,0.112500,0.000000),nsk(0.459096,0.056250,0.000000),nsk(0.500000,0.000000,0.000000),nsk(0.540904,0.100000,0.000000),nsk(0.581197,0.150000,0.000000),nsk(0.598291,0.168750,0.000000),nsk(0.630037,0.200000,0.000000),nsk(0.664225,0.281250,0.000000),nsk(0.680098,0.318750,0.000000),nsk(1.000000,1.000000,0.000000)})
crescent_99923.Color = cs({csk(0.000000,c3(0.180392,0.180392,1.000000)),csk(1.000000,c3(0.427451,0.200000,1.000000))})
crescent_99923.LightEmission = 1
crescent_99923.LightInfluence = 0
crescent_99923.Acceleration = v3(0.000000,0.000000,0.000000)
crescent_99923.Drag = 0
crescent_99923.EmissionDirection = Enum.NormalId.Top
crescent_99923.SpreadAngle = v2(-15.000000,15.000000)
crescent_99923.ZOffset = 0.061000000685453415
crescent_99923.Texture = "rbxassetid://13580336752"
crescent_99923.LockedToPart = true
crescent_99923.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
crescent_99923.FlipbookLayout = Enum.ParticleFlipbookLayout.None
crescent_99923.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
crescent_99923.FlipbookFramerate = nr(1,1)
crescent_99923.FlipbookStartRandom = false
crescent_99923.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local innercrescent_99924=i("ParticleEmitter", mid_99918)
innercrescent_99924.Name="inner crescent"
innercrescent_99924:SetAttribute("AuraInstance", true)
innercrescent_99924.Enabled = true
innercrescent_99924.Rate = 4
innercrescent_99924.Lifetime = nr(1,1)
innercrescent_99924.Speed = nr(0.03051757626235485,0.03051757626235485)
innercrescent_99924.Rotation = nr(-1000,1000)
innercrescent_99924.RotSpeed = nr(130,130)
innercrescent_99924.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.090132,1.534950,1.907342),nsk(0.164626,1.826879,1.657600),nsk(0.250626,2.336967,1.962829),nsk(0.344626,3.675854,1.897971),nsk(0.462626,6.597063,2.556058),nsk(0.564626,9.883423,2.921209),nsk(0.672626,12.622056,3.005244),nsk(0.772626,14.265236,3.044800),nsk(0.868626,15.451656,2.906401),nsk(1.000000,16.542156,3.430798),nsk(1.000000,16.476093,2.927109)})
innercrescent_99924.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.300740,1.000000,0.000000),nsk(0.599894,0.250000,0.025000),nsk(1.000000,1.000000,0.000000)})
innercrescent_99924.Color = cs({csk(0.000000,c3(0.368627,0.321569,1.000000)),csk(1.000000,c3(0.603922,0.376471,1.000000))})
innercrescent_99924.LightEmission = 1
innercrescent_99924.LightInfluence = 0
innercrescent_99924.Acceleration = v3(0.000000,0.000000,0.000000)
innercrescent_99924.Drag = 0
innercrescent_99924.EmissionDirection = Enum.NormalId.Top
innercrescent_99924.SpreadAngle = v2(-10.000000,10.000000)
innercrescent_99924.ZOffset = 2.696000099182129
innercrescent_99924.Texture = "rbxassetid://13580336752"
innercrescent_99924.LockedToPart = true
innercrescent_99924.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
innercrescent_99924.FlipbookLayout = Enum.ParticleFlipbookLayout.None
innercrescent_99924.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
innercrescent_99924.FlipbookFramerate = nr(1,1)
innercrescent_99924.FlipbookStartRandom = false
innercrescent_99924.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local innercrescentblack_99925=i("ParticleEmitter", mid_99918)
innercrescentblack_99925.Name="inner crescent black"
innercrescentblack_99925:SetAttribute("AuraInstance", true)
innercrescentblack_99925.Enabled = true
innercrescentblack_99925.Rate = 4
innercrescentblack_99925.Lifetime = nr(1,1)
innercrescentblack_99925.Speed = nr(0.03051757626235485,0.03051757626235485)
innercrescentblack_99925.Rotation = nr(-1000,1000)
innercrescentblack_99925.RotSpeed = nr(130,130)
innercrescentblack_99925.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.090132,1.534950,1.907342),nsk(0.164626,1.826879,1.657600),nsk(0.250626,2.336967,1.962829),nsk(0.344626,3.675854,1.897971),nsk(0.462626,6.597063,2.556058),nsk(0.564626,9.883423,2.921209),nsk(0.672626,12.622056,3.005244),nsk(0.772626,14.265236,3.044800),nsk(0.868626,15.451656,2.906401),nsk(1.000000,16.542156,3.430798),nsk(1.000000,16.476093,2.927109)})
innercrescentblack_99925.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.299683,1.000000,0.000000),nsk(0.599894,0.231250,0.025000),nsk(1.000000,1.000000,0.000000)})
innercrescentblack_99925.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
innercrescentblack_99925.LightEmission = -1.5
innercrescentblack_99925.LightInfluence = 0
innercrescentblack_99925.Acceleration = v3(0.000000,0.000000,0.000000)
innercrescentblack_99925.Drag = 0
innercrescentblack_99925.EmissionDirection = Enum.NormalId.Top
innercrescentblack_99925.SpreadAngle = v2(-10.000000,10.000000)
innercrescentblack_99925.ZOffset = 2.696000099182129
innercrescentblack_99925.Texture = "rbxassetid://13580336752"
innercrescentblack_99925.LockedToPart = true
innercrescentblack_99925.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
innercrescentblack_99925.FlipbookLayout = Enum.ParticleFlipbookLayout.None
innercrescentblack_99925.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
innercrescentblack_99925.FlipbookFramerate = nr(1,1)
innercrescentblack_99925.FlipbookStartRandom = false
innercrescentblack_99925.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local floor_100277=i("Part", Folder)
floor_100277.Name="floor"
floor_100277:SetAttribute("AuraInstance", true)
floor_100277.Anchored = true
floor_100277.CanCollide = false
floor_100277.CanQuery = false
floor_100277.CanTouch = false
floor_100277.Transparency = 1
floor_100277.Reflectance = 0
floor_100277.Color = c3(0.639216,0.635294,0.647059)
floor_100277.Rotation = v3(0,0,90)
floor_100277.Material = Enum.Material.Plastic
floor_100277.Size = v3(0.250000,44.000000,48.500000)
floor_100277.CastShadow = false
floor_100277.Massless = true

local up_100278=i("Attachment", floor_100277)
up_100278.Name="up"
up_100278:SetAttribute("AuraInstance", true)
up_100278.Position = v3(48.600632,-0.000244,0.000122)
up_100278.Visible = false

local circlebeam_100279=i("Attachment", floor_100277)
circlebeam_100279.Name="circle beam"
circlebeam_100279:SetAttribute("AuraInstance", true)
circlebeam_100279.Position = v3(-1.000000,0.000000,0.000000)
circlebeam_100279.Visible = false

local _1_100280=i("Attachment", circlebeam_100279)
_1_100280.Name="1"
_1_100280:SetAttribute("AuraInstance", true)
_1_100280.Position = v3(-1.118378,-5.000000,31.288513)
_1_100280.Visible = false

local _5_100281=i("Attachment", circlebeam_100279)
_5_100281.Name="5"
_5_100281:SetAttribute("AuraInstance", true)
_5_100281.Position = v3(-1.117722,-5.000000,-31.373688)
_5_100281.Visible = false

local _4_100282=i("Attachment", circlebeam_100279)
_4_100282.Name="4"
_4_100282:SetAttribute("AuraInstance", true)
_4_100282.Position = v3(-23.272278,-5.000000,-22.196991)
_4_100282.Visible = false

local _8_100283=i("Attachment", circlebeam_100279)
_8_100283.Name="8"
_8_100283:SetAttribute("AuraInstance", true)
_8_100283.Position = v3(21.036270,-5.000000,22.111786)
_8_100283.Visible = false

local _6_100284=i("Attachment", circlebeam_100279)
_6_100284.Name="6"
_6_100284:SetAttribute("AuraInstance", true)
_6_100284.Position = v3(21.036697,-5.000000,-22.197144)
_6_100284.Visible = false

local _2_100285=i("Attachment", circlebeam_100279)
_2_100285.Name="2"
_2_100285:SetAttribute("AuraInstance", true)
_2_100285.Position = v3(-23.272766,-5.000000,22.111847)
_2_100285.Visible = false

local _3_100286=i("Attachment", circlebeam_100279)
_3_100286.Name="3"
_3_100286:SetAttribute("AuraInstance", true)
_3_100286.Position = v3(-32.449188,-5.000000,-0.042480)
_3_100286.Visible = false

local _7_100287=i("Attachment", circlebeam_100279)
_7_100287.Name="7"
_7_100287:SetAttribute("AuraInstance", true)
_7_100287.Position = v3(30.213181,-5.000000,-0.042633)
_7_100287.Visible = false

local BeamStorage_100288=i("Attachment", circlebeam_100279)
BeamStorage_100288.Name="Beam Storage"
BeamStorage_100288:SetAttribute("AuraInstance", true)
BeamStorage_100288.Position = v3(0.000038,0.000000,0.000046)
BeamStorage_100288.Visible = false

local _7_100289=i("Folder", BeamStorage_100288)
_7_100289.Name="7"
_7_100289:SetAttribute("AuraInstance", true)

local a_100290=i("Beam", _7_100289)
a_100290.Name="a"
a_100290:SetAttribute("AuraInstance", true)
a_100290.Enabled = true
a_100290.Width0 = 3
a_100290.Width1 = 3
a_100290.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100290.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100290.CurveSize0 = 13
a_100290.CurveSize1 = 0
a_100290.FaceCamera = false
a_100290.LightEmission = 0.699999988079071
a_100290.LightInfluence = 0
a_100290.Segments = 100
a_100290.Texture = "rbxassetid://13580357222"
a_100290.TextureLength = 4
a_100290.TextureSpeed = 7

local ritual_100291=i("Beam", _7_100289)
ritual_100291.Name="ritual"
ritual_100291:SetAttribute("AuraInstance", true)
ritual_100291.Enabled = true
ritual_100291.Width0 = 10
ritual_100291.Width1 = 10
ritual_100291.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100291.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100291.CurveSize0 = 13
ritual_100291.CurveSize1 = 0
ritual_100291.FaceCamera = false
ritual_100291.LightEmission = 1
ritual_100291.LightInfluence = 0
ritual_100291.Segments = 100
ritual_100291.Texture = "rbxassetid://12781812529"
ritual_100291.TextureLength = 3
ritual_100291.TextureSpeed = 5

local contrast_100292=i("Beam", _7_100289)
contrast_100292.Name="contrast"
contrast_100292:SetAttribute("AuraInstance", true)
contrast_100292.Enabled = true
contrast_100292.Width0 = 2.799999952316284
contrast_100292.Width1 = 2.799999952316284
contrast_100292.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100292.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100292.CurveSize0 = 13
contrast_100292.CurveSize1 = 0
contrast_100292.FaceCamera = false
contrast_100292.LightEmission = 0.5
contrast_100292.LightInfluence = 0
contrast_100292.Segments = 100
contrast_100292.Texture = "rbxassetid://10816141940"
contrast_100292.TextureLength = 2.75
contrast_100292.TextureSpeed = 4

local _1_100293=i("Folder", BeamStorage_100288)
_1_100293.Name="1"
_1_100293:SetAttribute("AuraInstance", true)

local a_100294=i("Beam", _1_100293)
a_100294.Name="a"
a_100294:SetAttribute("AuraInstance", true)
a_100294.Enabled = true
a_100294.Width0 = 3
a_100294.Width1 = 3
a_100294.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100294.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100294.CurveSize0 = 13
a_100294.CurveSize1 = 0
a_100294.FaceCamera = false
a_100294.LightEmission = 0.699999988079071
a_100294.LightInfluence = 0
a_100294.Segments = 100
a_100294.Texture = "rbxassetid://13580357222"
a_100294.TextureLength = 4
a_100294.TextureSpeed = 7

local contrast_100295=i("Beam", _1_100293)
contrast_100295.Name="contrast"
contrast_100295:SetAttribute("AuraInstance", true)
contrast_100295.Enabled = true
contrast_100295.Width0 = 2.799999952316284
contrast_100295.Width1 = 2.799999952316284
contrast_100295.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100295.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100295.CurveSize0 = 13
contrast_100295.CurveSize1 = 0
contrast_100295.FaceCamera = false
contrast_100295.LightEmission = 0.5
contrast_100295.LightInfluence = 0
contrast_100295.Segments = 100
contrast_100295.Texture = "rbxassetid://10816141940"
contrast_100295.TextureLength = 2.75
contrast_100295.TextureSpeed = 4

local ritual_100296=i("Beam", _1_100293)
ritual_100296.Name="ritual"
ritual_100296:SetAttribute("AuraInstance", true)
ritual_100296.Enabled = true
ritual_100296.Width0 = 10
ritual_100296.Width1 = 10
ritual_100296.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100296.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100296.CurveSize0 = 13
ritual_100296.CurveSize1 = 0
ritual_100296.FaceCamera = false
ritual_100296.LightEmission = 1
ritual_100296.LightInfluence = 0
ritual_100296.Segments = 100
ritual_100296.Texture = "rbxassetid://12781812529"
ritual_100296.TextureLength = 3
ritual_100296.TextureSpeed = 5

local _6_100297=i("Folder", BeamStorage_100288)
_6_100297.Name="6"
_6_100297:SetAttribute("AuraInstance", true)

local a_100298=i("Beam", _6_100297)
a_100298.Name="a"
a_100298:SetAttribute("AuraInstance", true)
a_100298.Enabled = true
a_100298.Width0 = 3
a_100298.Width1 = 3
a_100298.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100298.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100298.CurveSize0 = 13
a_100298.CurveSize1 = 0
a_100298.FaceCamera = false
a_100298.LightEmission = 0.699999988079071
a_100298.LightInfluence = 0
a_100298.Segments = 100
a_100298.Texture = "rbxassetid://13580357222"
a_100298.TextureLength = 4
a_100298.TextureSpeed = 7

local contrast_100299=i("Beam", _6_100297)
contrast_100299.Name="contrast"
contrast_100299:SetAttribute("AuraInstance", true)
contrast_100299.Enabled = true
contrast_100299.Width0 = 2.799999952316284
contrast_100299.Width1 = 2.799999952316284
contrast_100299.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100299.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100299.CurveSize0 = 13
contrast_100299.CurveSize1 = 0
contrast_100299.FaceCamera = false
contrast_100299.LightEmission = 0.5
contrast_100299.LightInfluence = 0
contrast_100299.Segments = 100
contrast_100299.Texture = "rbxassetid://10816141940"
contrast_100299.TextureLength = 2.75
contrast_100299.TextureSpeed = 4

local ritual_100300=i("Beam", _6_100297)
ritual_100300.Name="ritual"
ritual_100300:SetAttribute("AuraInstance", true)
ritual_100300.Enabled = true
ritual_100300.Width0 = 10
ritual_100300.Width1 = 10
ritual_100300.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100300.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100300.CurveSize0 = 13
ritual_100300.CurveSize1 = 0
ritual_100300.FaceCamera = false
ritual_100300.LightEmission = 1
ritual_100300.LightInfluence = 0
ritual_100300.Segments = 100
ritual_100300.Texture = "rbxassetid://12781812529"
ritual_100300.TextureLength = 3
ritual_100300.TextureSpeed = 5

local _5_100301=i("Folder", BeamStorage_100288)
_5_100301.Name="5"
_5_100301:SetAttribute("AuraInstance", true)

local a_100302=i("Beam", _5_100301)
a_100302.Name="a"
a_100302:SetAttribute("AuraInstance", true)
a_100302.Enabled = true
a_100302.Width0 = 3
a_100302.Width1 = 3
a_100302.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100302.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100302.CurveSize0 = 13
a_100302.CurveSize1 = 0
a_100302.FaceCamera = false
a_100302.LightEmission = 0.699999988079071
a_100302.LightInfluence = 0
a_100302.Segments = 100
a_100302.Texture = "rbxassetid://13580357222"
a_100302.TextureLength = 4
a_100302.TextureSpeed = 7

local contrast_100303=i("Beam", _5_100301)
contrast_100303.Name="contrast"
contrast_100303:SetAttribute("AuraInstance", true)
contrast_100303.Enabled = true
contrast_100303.Width0 = 2.799999952316284
contrast_100303.Width1 = 2.799999952316284
contrast_100303.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100303.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100303.CurveSize0 = 13
contrast_100303.CurveSize1 = 0
contrast_100303.FaceCamera = false
contrast_100303.LightEmission = 0.5
contrast_100303.LightInfluence = 0
contrast_100303.Segments = 100
contrast_100303.Texture = "rbxassetid://10816141940"
contrast_100303.TextureLength = 2.75
contrast_100303.TextureSpeed = 4

local ritual_100304=i("Beam", _5_100301)
ritual_100304.Name="ritual"
ritual_100304:SetAttribute("AuraInstance", true)
ritual_100304.Enabled = true
ritual_100304.Width0 = 10
ritual_100304.Width1 = 10
ritual_100304.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100304.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100304.CurveSize0 = 13
ritual_100304.CurveSize1 = 0
ritual_100304.FaceCamera = false
ritual_100304.LightEmission = 1
ritual_100304.LightInfluence = 0
ritual_100304.Segments = 100
ritual_100304.Texture = "rbxassetid://12781812529"
ritual_100304.TextureLength = 3
ritual_100304.TextureSpeed = 5

local _8_100305=i("Folder", BeamStorage_100288)
_8_100305.Name="8"
_8_100305:SetAttribute("AuraInstance", true)

local a_100306=i("Beam", _8_100305)
a_100306.Name="a"
a_100306:SetAttribute("AuraInstance", true)
a_100306.Enabled = true
a_100306.Width0 = 3
a_100306.Width1 = 3
a_100306.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100306.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100306.CurveSize0 = 13
a_100306.CurveSize1 = 0
a_100306.FaceCamera = false
a_100306.LightEmission = 0.699999988079071
a_100306.LightInfluence = 0
a_100306.Segments = 100
a_100306.Texture = "rbxassetid://13580357222"
a_100306.TextureLength = 4
a_100306.TextureSpeed = 7

local contrast_100307=i("Beam", _8_100305)
contrast_100307.Name="contrast"
contrast_100307:SetAttribute("AuraInstance", true)
contrast_100307.Enabled = true
contrast_100307.Width0 = 2.799999952316284
contrast_100307.Width1 = 2.799999952316284
contrast_100307.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100307.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100307.CurveSize0 = 13
contrast_100307.CurveSize1 = 0
contrast_100307.FaceCamera = false
contrast_100307.LightEmission = 0.5
contrast_100307.LightInfluence = 0
contrast_100307.Segments = 100
contrast_100307.Texture = "rbxassetid://10816141940"
contrast_100307.TextureLength = 2.75
contrast_100307.TextureSpeed = 4

local ritual_100308=i("Beam", _8_100305)
ritual_100308.Name="ritual"
ritual_100308:SetAttribute("AuraInstance", true)
ritual_100308.Enabled = true
ritual_100308.Width0 = 10
ritual_100308.Width1 = 10
ritual_100308.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100308.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100308.CurveSize0 = 13
ritual_100308.CurveSize1 = 0
ritual_100308.FaceCamera = false
ritual_100308.LightEmission = 1
ritual_100308.LightInfluence = 0
ritual_100308.Segments = 100
ritual_100308.Texture = "rbxassetid://12781812529"
ritual_100308.TextureLength = 3
ritual_100308.TextureSpeed = 5

local _3_100309=i("Folder", BeamStorage_100288)
_3_100309.Name="3"
_3_100309:SetAttribute("AuraInstance", true)

local a_100310=i("Beam", _3_100309)
a_100310.Name="a"
a_100310:SetAttribute("AuraInstance", true)
a_100310.Enabled = true
a_100310.Width0 = 3
a_100310.Width1 = 3
a_100310.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100310.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100310.CurveSize0 = 13
a_100310.CurveSize1 = 0
a_100310.FaceCamera = false
a_100310.LightEmission = 0.699999988079071
a_100310.LightInfluence = 0
a_100310.Segments = 100
a_100310.Texture = "rbxassetid://13580357222"
a_100310.TextureLength = 4
a_100310.TextureSpeed = 7

local contrast_100311=i("Beam", _3_100309)
contrast_100311.Name="contrast"
contrast_100311:SetAttribute("AuraInstance", true)
contrast_100311.Enabled = true
contrast_100311.Width0 = 2.799999952316284
contrast_100311.Width1 = 2.799999952316284
contrast_100311.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100311.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100311.CurveSize0 = 13
contrast_100311.CurveSize1 = 0
contrast_100311.FaceCamera = false
contrast_100311.LightEmission = 0.5
contrast_100311.LightInfluence = 0
contrast_100311.Segments = 100
contrast_100311.Texture = "rbxassetid://10816141940"
contrast_100311.TextureLength = 2.75
contrast_100311.TextureSpeed = 4

local ritual_100312=i("Beam", _3_100309)
ritual_100312.Name="ritual"
ritual_100312:SetAttribute("AuraInstance", true)
ritual_100312.Enabled = true
ritual_100312.Width0 = 10
ritual_100312.Width1 = 10
ritual_100312.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100312.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100312.CurveSize0 = 13
ritual_100312.CurveSize1 = 0
ritual_100312.FaceCamera = false
ritual_100312.LightEmission = 1
ritual_100312.LightInfluence = 0
ritual_100312.Segments = 100
ritual_100312.Texture = "rbxassetid://12781812529"
ritual_100312.TextureLength = 3
ritual_100312.TextureSpeed = 5

local _4_100313=i("Folder", BeamStorage_100288)
_4_100313.Name="4"
_4_100313:SetAttribute("AuraInstance", true)

local a_100314=i("Beam", _4_100313)
a_100314.Name="a"
a_100314:SetAttribute("AuraInstance", true)
a_100314.Enabled = true
a_100314.Width0 = 3
a_100314.Width1 = 3
a_100314.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100314.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100314.CurveSize0 = 13
a_100314.CurveSize1 = 0
a_100314.FaceCamera = false
a_100314.LightEmission = 0.699999988079071
a_100314.LightInfluence = 0
a_100314.Segments = 100
a_100314.Texture = "rbxassetid://13580357222"
a_100314.TextureLength = 4
a_100314.TextureSpeed = 7

local contrast_100315=i("Beam", _4_100313)
contrast_100315.Name="contrast"
contrast_100315:SetAttribute("AuraInstance", true)
contrast_100315.Enabled = true
contrast_100315.Width0 = 2.799999952316284
contrast_100315.Width1 = 2.799999952316284
contrast_100315.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100315.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100315.CurveSize0 = 13
contrast_100315.CurveSize1 = 0
contrast_100315.FaceCamera = false
contrast_100315.LightEmission = 0.5
contrast_100315.LightInfluence = 0
contrast_100315.Segments = 100
contrast_100315.Texture = "rbxassetid://10816141940"
contrast_100315.TextureLength = 2.75
contrast_100315.TextureSpeed = 4

local ritual_100316=i("Beam", _4_100313)
ritual_100316.Name="ritual"
ritual_100316:SetAttribute("AuraInstance", true)
ritual_100316.Enabled = true
ritual_100316.Width0 = 10
ritual_100316.Width1 = 10
ritual_100316.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100316.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100316.CurveSize0 = 13
ritual_100316.CurveSize1 = 0
ritual_100316.FaceCamera = false
ritual_100316.LightEmission = 1
ritual_100316.LightInfluence = 0
ritual_100316.Segments = 100
ritual_100316.Texture = "rbxassetid://12781812529"
ritual_100316.TextureLength = 3
ritual_100316.TextureSpeed = 5

local _2_100317=i("Folder", BeamStorage_100288)
_2_100317.Name="2"
_2_100317:SetAttribute("AuraInstance", true)

local a_100318=i("Beam", _2_100317)
a_100318.Name="a"
a_100318:SetAttribute("AuraInstance", true)
a_100318.Enabled = true
a_100318.Width0 = 3
a_100318.Width1 = 3
a_100318.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
a_100318.Color = cs({csk(0.000000,c3(0.521569,0.360784,1.000000)),csk(1.000000,c3(0.521569,0.360784,1.000000))})
a_100318.CurveSize0 = 13
a_100318.CurveSize1 = 0
a_100318.FaceCamera = false
a_100318.LightEmission = 0.699999988079071
a_100318.LightInfluence = 0
a_100318.Segments = 100
a_100318.Texture = "rbxassetid://13580357222"
a_100318.TextureLength = 4
a_100318.TextureSpeed = 7

local contrast_100319=i("Beam", _2_100317)
contrast_100319.Name="contrast"
contrast_100319:SetAttribute("AuraInstance", true)
contrast_100319.Enabled = true
contrast_100319.Width0 = 2.799999952316284
contrast_100319.Width1 = 2.799999952316284
contrast_100319.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
contrast_100319.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
contrast_100319.CurveSize0 = 13
contrast_100319.CurveSize1 = 0
contrast_100319.FaceCamera = false
contrast_100319.LightEmission = 0.5
contrast_100319.LightInfluence = 0
contrast_100319.Segments = 100
contrast_100319.Texture = "rbxassetid://10816141940"
contrast_100319.TextureLength = 2.75
contrast_100319.TextureSpeed = 4

local ritual_100320=i("Beam", _2_100317)
ritual_100320.Name="ritual"
ritual_100320:SetAttribute("AuraInstance", true)
ritual_100320.Enabled = true
ritual_100320.Width0 = 10
ritual_100320.Width1 = 10
ritual_100320.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})
ritual_100320.Color = cs({csk(0.000000,c3(0.552941,0.376471,1.000000)),csk(1.000000,c3(0.552941,0.376471,1.000000))})
ritual_100320.CurveSize0 = 13
ritual_100320.CurveSize1 = 0
ritual_100320.FaceCamera = false
ritual_100320.LightEmission = 1
ritual_100320.LightInfluence = 0
ritual_100320.Segments = 100
ritual_100320.Texture = "rbxassetid://12781812529"
ritual_100320.TextureLength = 3
ritual_100320.TextureSpeed = 5

local mid_100321=i("Attachment", floor_100277)
mid_100321.Name="mid"
mid_100321:SetAttribute("AuraInstance", true)
mid_100321.Position = v3(16.999874,0.000000,0.000000)
mid_100321.Visible = false

local biglines_100322=i("ParticleEmitter", floor_100277)
biglines_100322.Name="big lines"
biglines_100322:SetAttribute("AuraInstance", true)
biglines_100322.Enabled = true
biglines_100322.Rate = 3
biglines_100322.Lifetime = nr(3,3)
biglines_100322.Speed = nr(1,1)
biglines_100322.Rotation = nr(90,90)
biglines_100322.RotSpeed = nr(0,0)
biglines_100322.Size = ns({nsk(0.000000,16.107290,4.543431),nsk(1.000000,16.870026,4.899777)})
biglines_100322.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499735,0.306250,0.000000),nsk(1.000000,1.000000,0.000000)})
biglines_100322.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
biglines_100322.LightEmission = 0.30000001192092896
biglines_100322.LightInfluence = 0
biglines_100322.Acceleration = v3(0.000000,0.000000,0.000000)
biglines_100322.Drag = 0
biglines_100322.EmissionDirection = Enum.NormalId.Right
biglines_100322.SpreadAngle = v2(0.000000,0.000000)
biglines_100322.ZOffset = -0.10199999809265137
biglines_100322.Texture = "rbxassetid://7216979701"
biglines_100322.LockedToPart = true
biglines_100322.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
biglines_100322.FlipbookLayout = Enum.ParticleFlipbookLayout.None
biglines_100322.FlipbookMode = Enum.ParticleFlipbookMode.Loop
biglines_100322.FlipbookFramerate = nr(1,1)
biglines_100322.FlipbookStartRandom = false
biglines_100322.Squash = ns({nsk(0.000000,-1.800000,0.000000),nsk(1.000000,-1.800000,0.000000)})

local blacksmallerdebris_100323=i("ParticleEmitter", floor_100277)
blacksmallerdebris_100323.Name="black smaller debris"
blacksmallerdebris_100323:SetAttribute("AuraInstance", true)
blacksmallerdebris_100323.Enabled = true
blacksmallerdebris_100323.Rate = 30
blacksmallerdebris_100323.Lifetime = nr(0.5,0.5)
blacksmallerdebris_100323.Speed = nr(2,2)
blacksmallerdebris_100323.Rotation = nr(-1000,1000)
blacksmallerdebris_100323.RotSpeed = nr(0,0)
blacksmallerdebris_100323.Size = ns({nsk(0.000000,2.125000,0.000000),nsk(0.199789,4.187500,0.000000),nsk(1.000000,2.937500,0.000000)})
blacksmallerdebris_100323.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.044397,1.000000,0.000000),nsk(0.102537,0.518750,0.000000),nsk(0.287773,0.332444,0.000000),nsk(0.535773,0.269111,0.000000),nsk(0.737773,0.315778,0.000000),nsk(0.855773,0.539111,0.000000),nsk(1.000000,1.000000,0.000000)})
blacksmallerdebris_100323.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
blacksmallerdebris_100323.LightEmission = -2
blacksmallerdebris_100323.LightInfluence = 0.20000000298023224
blacksmallerdebris_100323.Acceleration = v3(0.000000,0.000000,0.000000)
blacksmallerdebris_100323.Drag = -2
blacksmallerdebris_100323.EmissionDirection = Enum.NormalId.Right
blacksmallerdebris_100323.SpreadAngle = v2(-100.000000,100.000000)
blacksmallerdebris_100323.ZOffset = 1.1759999990463257
blacksmallerdebris_100323.Texture = "rbxassetid://16056965573"
blacksmallerdebris_100323.LockedToPart = true
blacksmallerdebris_100323.Orientation = Enum.ParticleOrientation.VelocityParallel
blacksmallerdebris_100323.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
blacksmallerdebris_100323.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
blacksmallerdebris_100323.FlipbookFramerate = nr(1,1)
blacksmallerdebris_100323.FlipbookStartRandom = false
blacksmallerdebris_100323.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local PointLight_100324=i("PointLight", floor_100277)
PointLight_100324.Name="PointLight"
PointLight_100324:SetAttribute("AuraInstance", true)

local smallerdebris_100325=i("ParticleEmitter", floor_100277)
smallerdebris_100325.Name="smaller debris"
smallerdebris_100325:SetAttribute("AuraInstance", true)
smallerdebris_100325.Enabled = true
smallerdebris_100325.Rate = 45
smallerdebris_100325.Lifetime = nr(0.5,0.5)
smallerdebris_100325.Speed = nr(2,2)
smallerdebris_100325.Rotation = nr(-1000,1000)
smallerdebris_100325.RotSpeed = nr(0,0)
smallerdebris_100325.Size = ns({nsk(0.000000,2.125000,0.000000),nsk(0.199789,4.187500,0.000000),nsk(1.000000,2.937500,0.000000)})
smallerdebris_100325.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.044397,1.000000,0.000000),nsk(0.102537,0.518750,0.000000),nsk(0.287773,0.332444,0.000000),nsk(0.535773,0.269111,0.000000),nsk(0.737773,0.315778,0.000000),nsk(0.855773,0.539111,0.000000),nsk(1.000000,1.000000,0.000000)})
smallerdebris_100325.Color = cs({csk(0.000000,c3(0.596079,0.513726,1.000000)),csk(1.000000,c3(0.596079,0.513726,1.000000))})
smallerdebris_100325.LightEmission = 1
smallerdebris_100325.LightInfluence = 0
smallerdebris_100325.Acceleration = v3(0.000000,0.000000,0.000000)
smallerdebris_100325.Drag = -2
smallerdebris_100325.EmissionDirection = Enum.NormalId.Right
smallerdebris_100325.SpreadAngle = v2(-100.000000,100.000000)
smallerdebris_100325.ZOffset = 1.1770000457763672
smallerdebris_100325.Texture = "rbxassetid://16056965573"
smallerdebris_100325.LockedToPart = true
smallerdebris_100325.Orientation = Enum.ParticleOrientation.VelocityParallel
smallerdebris_100325.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
smallerdebris_100325.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
smallerdebris_100325.FlipbookFramerate = nr(1,1)
smallerdebris_100325.FlipbookStartRandom = false
smallerdebris_100325.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local symbols_100326=i("ParticleEmitter", floor_100277)
symbols_100326.Name="symbols"
symbols_100326:SetAttribute("AuraInstance", true)
symbols_100326.Enabled = true
symbols_100326.Rate = 12
symbols_100326.Lifetime = nr(1.399999976158142,1.399999976158142)
symbols_100326.Speed = nr(25,30)
symbols_100326.Rotation = nr(-1000,1000)
symbols_100326.RotSpeed = nr(0,0)
symbols_100326.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.099366,0.750000,0.000000),nsk(1.000000,0.437500,0.000000)})
symbols_100326.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.502534,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
symbols_100326.Color = cs({csk(0.000000,c3(0.643137,0.501961,1.000000)),csk(1.000000,c3(0.643137,0.501961,1.000000))})
symbols_100326.LightEmission = 1
symbols_100326.LightInfluence = 0
symbols_100326.Acceleration = v3(0.000000,0.000000,0.000000)
symbols_100326.Drag = 1
symbols_100326.EmissionDirection = Enum.NormalId.Right
symbols_100326.SpreadAngle = v2(-50.000000,50.000000)
symbols_100326.ZOffset = 0.023000000044703484
symbols_100326.Texture = "rbxassetid://11910560348"
symbols_100326.LockedToPart = true
symbols_100326.Orientation = Enum.ParticleOrientation.FacingCamera
symbols_100326.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
symbols_100326.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
symbols_100326.FlipbookFramerate = nr(40,40)
symbols_100326.FlipbookStartRandom = false
symbols_100326.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local specs_100327=i("ParticleEmitter", floor_100277)
specs_100327.Name="specs"
specs_100327:SetAttribute("AuraInstance", true)
specs_100327.Enabled = true
specs_100327.Rate = 45
specs_100327.Lifetime = nr(0.6499999761581421,1.2999999523162842)
specs_100327.Speed = nr(50,50)
specs_100327.Rotation = nr(-1000,1000)
specs_100327.RotSpeed = nr(40,40)
specs_100327.Size = ns({nsk(0.000000,1.562500,0.375000),nsk(0.857294,0.812500,0.118525),nsk(1.000000,0.000000,0.000000)})
specs_100327.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
specs_100327.Color = cs({csk(0.000000,c3(0.309804,0.219608,1.000000)),csk(1.000000,c3(0.309804,0.219608,1.000000))})
specs_100327.LightEmission = 0
specs_100327.LightInfluence = 0.10000000149011612
specs_100327.Acceleration = v3(60.000000,0.000000,0.000000)
specs_100327.Drag = 3.5
specs_100327.EmissionDirection = Enum.NormalId.Right
specs_100327.SpreadAngle = v2(200.000000,200.000000)
specs_100327.ZOffset = 0.02199999988079071
specs_100327.Texture = "rbxassetid://8071207852"
specs_100327.LockedToPart = true
specs_100327.Orientation = Enum.ParticleOrientation.FacingCamera
specs_100327.FlipbookLayout = Enum.ParticleFlipbookLayout.None
specs_100327.FlipbookMode = Enum.ParticleFlipbookMode.Loop
specs_100327.FlipbookFramerate = nr(1,1)
specs_100327.FlipbookStartRandom = false
specs_100327.Squash = ns({nsk(0.000000,0.000000,0.450000),nsk(1.000000,0.000000,0.412500)})

local ember_100328=i("ParticleEmitter", floor_100277)
ember_100328.Name="ember"
ember_100328:SetAttribute("AuraInstance", true)
ember_100328.Enabled = true
ember_100328.Rate = 45
ember_100328.Lifetime = nr(1,2)
ember_100328.Speed = nr(10,20)
ember_100328.Rotation = nr(10,10)
ember_100328.RotSpeed = nr(-100,100)
ember_100328.Size = ns({nsk(0.000000,0.000000,0.000000),nsk(0.204130,2.087384,0.991387),nsk(1.000000,0.000000,0.000000)})
ember_100328.Transparency = ns({nsk(0.000000,0.000000,0.000000),nsk(0.801797,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
ember_100328.Color = cs({csk(0.000000,c3(0.486275,0.396078,1.000000)),csk(1.000000,c3(0.486275,0.396078,1.000000))})
ember_100328.LightEmission = 1
ember_100328.LightInfluence = 0
ember_100328.Acceleration = v3(25.000000,0.000000,0.000000)
ember_100328.Drag = 1
ember_100328.EmissionDirection = Enum.NormalId.Right
ember_100328.SpreadAngle = v2(90.000000,90.000000)
ember_100328.ZOffset = 0
ember_100328.Texture = "rbxassetid://6766245698"
ember_100328.LockedToPart = true
ember_100328.Orientation = Enum.ParticleOrientation.VelocityParallel
ember_100328.FlipbookLayout = Enum.ParticleFlipbookLayout.None
ember_100328.FlipbookMode = Enum.ParticleFlipbookMode.Loop
ember_100328.FlipbookFramerate = nr(30,30)
ember_100328.FlipbookStartRandom = false
ember_100328.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local line2_100329=i("ParticleEmitter", floor_100277)
line2_100329.Name="line2"
line2_100329:SetAttribute("AuraInstance", true)
line2_100329.Enabled = true
line2_100329.Rate = 50
line2_100329.Lifetime = nr(0.6000000238418579,0.8999999761581421)
line2_100329.Speed = nr(30,40)
line2_100329.Rotation = nr(180,180)
line2_100329.RotSpeed = nr(0,0)
line2_100329.Size = ns({nsk(0.000000,1.000000,0.500000),nsk(1.000000,0.875000,0.500000)})
line2_100329.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.801797,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
line2_100329.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
line2_100329.LightEmission = -10
line2_100329.LightInfluence = 0
line2_100329.Acceleration = v3(30.000000,0.000000,0.000000)
line2_100329.Drag = 1
line2_100329.EmissionDirection = Enum.NormalId.Right
line2_100329.SpreadAngle = v2(60.000000,60.000000)
line2_100329.ZOffset = -0.03400000184774399
line2_100329.Texture = "rbxassetid://110131639786996"
line2_100329.LockedToPart = true
line2_100329.Orientation = Enum.ParticleOrientation.VelocityParallel
line2_100329.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
line2_100329.FlipbookMode = Enum.ParticleFlipbookMode.Loop
line2_100329.FlipbookFramerate = nr(1,1)
line2_100329.FlipbookStartRandom = false
line2_100329.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

local line1_100330=i("ParticleEmitter", floor_100277)
line1_100330.Name="line1"
line1_100330:SetAttribute("AuraInstance", true)
line1_100330.Enabled = true
line1_100330.Rate = 50
line1_100330.Lifetime = nr(0.6000000238418579,0.8999999761581421)
line1_100330.Speed = nr(30,40)
line1_100330.Rotation = nr(180,180)
line1_100330.RotSpeed = nr(0,0)
line1_100330.Size = ns({nsk(0.000000,1.000000,0.500000),nsk(1.000000,0.875000,0.500000)})
line1_100330.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.198731,0.000000,0.000000),nsk(0.801797,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
line1_100330.Color = cs({csk(0.000000,c3(0.635294,0.450980,1.000000)),csk(1.000000,c3(0.635294,0.450980,1.000000))})
line1_100330.LightEmission = 1
line1_100330.LightInfluence = 0
line1_100330.Acceleration = v3(30.000000,0.000000,0.000000)
line1_100330.Drag = 1
line1_100330.EmissionDirection = Enum.NormalId.Right
line1_100330.SpreadAngle = v2(60.000000,60.000000)
line1_100330.ZOffset = -0.032999999821186066
line1_100330.Texture = "rbxassetid://110131639786996"
line1_100330.LockedToPart = true
line1_100330.Orientation = Enum.ParticleOrientation.VelocityParallel
line1_100330.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
line1_100330.FlipbookMode = Enum.ParticleFlipbookMode.Loop
line1_100330.FlipbookFramerate = nr(1,1)
line1_100330.FlipbookStartRandom = false
line1_100330.Squash = ns({nsk(0.000000,-0.500000,0.000000),nsk(1.000000,-0.500000,0.000000)})

local lightrays_100331=i("ParticleEmitter", floor_100277)
lightrays_100331.Name="light rays"
lightrays_100331:SetAttribute("AuraInstance", true)
lightrays_100331.Enabled = true
lightrays_100331.Rate = 50
lightrays_100331.Lifetime = nr(0.4000000059604645,0.4000000059604645)
lightrays_100331.Speed = nr(0.009999999776482582,0.009999999776482582)
lightrays_100331.Rotation = nr(0,0)
lightrays_100331.RotSpeed = nr(0,0)
lightrays_100331.Size = ns({nsk(0.000000,7.062500,2.000000),nsk(1.000000,6.625000,0.000000)})
lightrays_100331.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.300464,0.000000,0.000000),nsk(0.696056,0.000000,0.000000),nsk(1.000000,1.000000,0.000000)})
lightrays_100331.Color = cs({csk(0.000000,c3(0.501961,0.376471,1.000000)),csk(1.000000,c3(0.501961,0.376471,1.000000))})
lightrays_100331.LightEmission = 1
lightrays_100331.LightInfluence = 0.30000001192092896
lightrays_100331.Acceleration = v3(0.000000,0.000000,0.000000)
lightrays_100331.Drag = 0
lightrays_100331.EmissionDirection = Enum.NormalId.Top
lightrays_100331.SpreadAngle = v2(0.000000,0.000000)
lightrays_100331.ZOffset = 1.3530000448226929
lightrays_100331.Texture = "rbxassetid://13365068138"
lightrays_100331.LockedToPart = true
lightrays_100331.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
lightrays_100331.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
lightrays_100331.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
lightrays_100331.FlipbookFramerate = nr(1,1)
lightrays_100331.FlipbookStartRandom = false
lightrays_100331.Squash = ns({nsk(0.000000,0.787500,0.450001),nsk(1.000000,1.012500,0.337500)})

local fog3_100332=i("ParticleEmitter", floor_100277)
fog3_100332.Name="fog3"
fog3_100332:SetAttribute("AuraInstance", true)
fog3_100332.Enabled = true
fog3_100332.Rate = 15
fog3_100332.Lifetime = nr(1.25,1.25)
fog3_100332.Speed = nr(17.5,17.5)
fog3_100332.Rotation = nr(-360,360)
fog3_100332.RotSpeed = nr(0,0)
fog3_100332.Size = ns({nsk(0.000000,9.500000,0.000000),nsk(1.000000,9.500000,0.000000)})
fog3_100332.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.499471,0.881250,0.000000),nsk(1.000000,1.000000,0.000000)})
fog3_100332.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
fog3_100332.LightEmission = -2
fog3_100332.LightInfluence = 0
fog3_100332.Acceleration = v3(0.000000,0.000000,0.000000)
fog3_100332.Drag = 0
fog3_100332.EmissionDirection = Enum.NormalId.Right
fog3_100332.SpreadAngle = v2(15.000000,15.000000)
fog3_100332.ZOffset = -2.999000072479248
fog3_100332.Texture = "http://www.roblox.com/asset/?id=12221915979"
fog3_100332.LockedToPart = true
fog3_100332.Orientation = Enum.ParticleOrientation.FacingCamera
fog3_100332.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid2x2
fog3_100332.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog3_100332.FlipbookFramerate = nr(1,1)
fog3_100332.FlipbookStartRandom = false
fog3_100332.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fog2_100333=i("ParticleEmitter", floor_100277)
fog2_100333.Name="fog2"
fog2_100333:SetAttribute("AuraInstance", true)
fog2_100333.Enabled = true
fog2_100333.Rate = 15
fog2_100333.Lifetime = nr(1.25,1.25)
fog2_100333.Speed = nr(17.5,17.5)
fog2_100333.Rotation = nr(-360,360)
fog2_100333.RotSpeed = nr(0,0)
fog2_100333.Size = ns({nsk(0.000000,9.500000,0.000000),nsk(1.000000,9.500000,0.000000)})
fog2_100333.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500529,0.625000,0.000000),nsk(1.000000,1.000000,0.000000)})
fog2_100333.Color = cs({csk(0.000000,c3(0.372549,0.290196,1.000000)),csk(1.000000,c3(0.372549,0.290196,1.000000))})
fog2_100333.LightEmission = 0
fog2_100333.LightInfluence = 0
fog2_100333.Acceleration = v3(0.000000,0.000000,0.000000)
fog2_100333.Drag = 0
fog2_100333.EmissionDirection = Enum.NormalId.Right
fog2_100333.SpreadAngle = v2(15.000000,15.000000)
fog2_100333.ZOffset = -3.005000114440918
fog2_100333.Texture = "rbxassetid://11627083142"
fog2_100333.LockedToPart = true
fog2_100333.Orientation = Enum.ParticleOrientation.FacingCamera
fog2_100333.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid8x8
fog2_100333.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog2_100333.FlipbookFramerate = nr(1,1)
fog2_100333.FlipbookStartRandom = false
fog2_100333.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local fog1_100334=i("ParticleEmitter", floor_100277)
fog1_100334.Name="fog1"
fog1_100334:SetAttribute("AuraInstance", true)
fog1_100334.Enabled = true
fog1_100334.Rate = 15
fog1_100334.Lifetime = nr(1.2999999523162842,1.2999999523162842)
fog1_100334.Speed = nr(17,20)
fog1_100334.Rotation = nr(-360,360)
fog1_100334.RotSpeed = nr(0,0)
fog1_100334.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
fog1_100334.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.501057,0.843750,0.000000),nsk(1.000000,1.000000,0.000000)})
fog1_100334.Color = cs({csk(0.000000,c3(0.521569,0.243137,1.000000)),csk(1.000000,c3(0.521569,0.243137,1.000000))})
fog1_100334.LightEmission = 0.30000001192092896
fog1_100334.LightInfluence = 0
fog1_100334.Acceleration = v3(0.000000,0.000000,0.000000)
fog1_100334.Drag = 0
fog1_100334.EmissionDirection = Enum.NormalId.Right
fog1_100334.SpreadAngle = v2(15.000000,15.000000)
fog1_100334.ZOffset = -3.000999927520752
fog1_100334.Texture = "rbxassetid://13712007292"
fog1_100334.LockedToPart = true
fog1_100334.Orientation = Enum.ParticleOrientation.FacingCamera
fog1_100334.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
fog1_100334.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
fog1_100334.FlipbookFramerate = nr(1,1)
fog1_100334.FlipbookStartRandom = false
fog1_100334.Squash = ns({nsk(0.000000,0.000000,0.000000),nsk(1.000000,0.000000,0.000000)})

local floorlightray_100335=i("ParticleEmitter", floor_100277)
floorlightray_100335.Name="floor light ray"
floorlightray_100335:SetAttribute("AuraInstance", true)
floorlightray_100335.Enabled = true
floorlightray_100335.Rate = 6
floorlightray_100335.Lifetime = nr(6,6)
floorlightray_100335.Speed = nr(2,2)
floorlightray_100335.Rotation = nr(90,90)
floorlightray_100335.RotSpeed = nr(0,0)
floorlightray_100335.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
floorlightray_100335.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.468750,0.000000),nsk(1.000000,1.000000,0.000000)})
floorlightray_100335.Color = cs({csk(0.000000,c3(0.341177,0.341177,1.000000)),csk(1.000000,c3(0.509804,0.345098,1.000000))})
floorlightray_100335.LightEmission = 1
floorlightray_100335.LightInfluence = 0
floorlightray_100335.Acceleration = v3(0.000000,0.000000,0.000000)
floorlightray_100335.Drag = 0
floorlightray_100335.EmissionDirection = Enum.NormalId.Right
floorlightray_100335.SpreadAngle = v2(0.000000,0.000000)
floorlightray_100335.ZOffset = -1.9229999780654907
floorlightray_100335.Texture = "rbxassetid://14590086212"
floorlightray_100335.LockedToPart = true
floorlightray_100335.Orientation = Enum.ParticleOrientation.VelocityParallel
floorlightray_100335.FlipbookLayout = Enum.ParticleFlipbookLayout.None
floorlightray_100335.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
floorlightray_100335.FlipbookFramerate = nr(5,10)
floorlightray_100335.FlipbookStartRandom = false
floorlightray_100335.Squash = ns({nsk(0.000000,2.000000,0.000000),nsk(1.000000,2.000000,0.000000)})

local floordarkray_100336=i("ParticleEmitter", floor_100277)
floordarkray_100336.Name="floor dark ray"
floordarkray_100336:SetAttribute("AuraInstance", true)
floordarkray_100336.Enabled = true
floordarkray_100336.Rate = 6
floordarkray_100336.Lifetime = nr(6,6)
floordarkray_100336.Speed = nr(2,2)
floordarkray_100336.Rotation = nr(90,90)
floordarkray_100336.RotSpeed = nr(0,0)
floordarkray_100336.Size = ns({nsk(0.000000,15.000000,0.000000),nsk(1.000000,15.000000,0.000000)})
floordarkray_100336.Transparency = ns({nsk(0.000000,1.000000,0.000000),nsk(0.500000,0.468750,0.000000),nsk(1.000000,1.000000,0.000000)})
floordarkray_100336.Color = cs({csk(0.000000,c3(0.000000,0.000000,0.000000)),csk(1.000000,c3(0.000000,0.000000,0.000000))})
floordarkray_100336.LightEmission = 0
floordarkray_100336.LightInfluence = 0
floordarkray_100336.Acceleration = v3(0.000000,0.000000,0.000000)
floordarkray_100336.Drag = 0
floordarkray_100336.EmissionDirection = Enum.NormalId.Right
floordarkray_100336.SpreadAngle = v2(0.000000,0.000000)
floordarkray_100336.ZOffset = -1.9240000247955322
floordarkray_100336.Texture = "rbxassetid://14590086212"
floordarkray_100336.LockedToPart = true
floordarkray_100336.Orientation = Enum.ParticleOrientation.VelocityParallel
floordarkray_100336.FlipbookLayout = Enum.ParticleFlipbookLayout.None
floordarkray_100336.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
floordarkray_100336.FlipbookFramerate = nr(5,10)
floordarkray_100336.FlipbookStartRandom = false
floordarkray_100336.Squash = ns({nsk(0.000000,2.000000,0.000000),nsk(1.000000,2.000000,0.000000)})

f=rus.PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild("AegleseekerAssets") then 
--Folder:Destroy()
f:Disconnect()
--PosRoot(0)
end
sine=os.clock()
--PosRoot(1,true)
local root=rootpart1
local color1,color2=rgb(197+50*cos(sine*1.5),135+100*sin(sine*2),243+12*sin(sine*2.5)),rgb(237+10*cos(sine*1.5),212+35*sin(sine*2),255)
BetterTween(Floor,.1,{Position=v3(root.Position.X,root.Position.Y,root.Position.Z)}):Play()
BetterTween(floor_100277,.1,{Position=v3(root.Position.X,root.Position.Y,root.Position.Z)}):Play()
for _,x in Floor:GetDescendants() do 
if x:IsA("ParticleEmitter") then 
x.Color=cs({
  csk(0,color1),
  csk(1,color2)
})
x.Brightness=1
end
end
for _,x in floor_100277:GetDescendants() do 
if x:IsA("ParticleEmitter") then 
x.Color=cs({
  csk(0,color1),
  csk(1,color2)
})
x.Brightness=1
end
end
for _,x in Floor:GetDescendants() do 
if x:IsA("PointLight") then 
x.Color=color1
x.Brightness=7+sound.PlaybackLoudness/12.5
x.Range=5+sound.PlaybackLoudness/17.5
end
end
end)


end
AegleseekerAssets()