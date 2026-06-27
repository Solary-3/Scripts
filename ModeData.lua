
--// Variables
local Global=(getgenv and getgenv()) or shared







local osclock=os.clock
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local sin=math.sin
local cos=math.cos
local rad=math.rad
local abs=math.abs
local tan=math.tan
local min=math.min
local clamp=math.clamp
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local random=function(a,b) 
return mrandom(a*1000,b*1000)/1000
end
local vmagnitude=vector.magnitude --faster than indexing with Magnitude
local vnormalize=vector.normalize --faster than indexing with Unit

--the script doesnt have to read global varaibles every time to get them
--why not have them saved in local varaibles for faster access times
local next=next
local pcall=pcall
local xpcall=xpcall
local type=type
local typeof=typeof
local game=game
local replicatesignal=replicatesignal

local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local rgb=Color3.fromRGB
local cf=CFrame.new
local cfl=CFrame.lookAt
local angles=CFrame.fromEulerAngles --faster than .Angles
local u2=UDim2.new 
local e=Enum 
local rp=RaycastParams.new 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 

local sine=osclock()
local v3_0=v3()
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local cf_0=cf()
local v3_xz=v3_101*10
local v3_xzL=v3_101*250.1
local v3_net=v3_010*25.01
local pdloadedtime=nil

local enumMD=e.MouseBehavior.Default

--not "local function rs" to not assign debug names
local rs=function()
local s=""
for i=1,mrandom(8,15) do
if mrandom(2)==2 then
s=s..schar(mrandom(65,90))
else
s=s..schar(mrandom(97,122))
end
end
return s
end

--it runs even faster if u call __index and __newindex metamethods directly
local getMetamethodFromErrorStack=function(userdata,f,test)
local ret=nil
xpcall(f,function()
ret=debug.info(2,"f")
end,userdata,nil,0)
if (type(ret)~="function") or not test(ret) then
return f
end
return ret
end
local insSet=getMetamethodFromErrorStack(game,function(a,b,c) a[b]=c end,function(f) local a=i("Folder") local b=rs() f(a,"Name",b) return a.Name==b end)
local insGet=getMetamethodFromErrorStack(game,function(a,b) return a[b] end,function(f) local a=i("Folder") local b=rs() a.Name=b return f(a,"Name")==b end)
local cfGet=getMetamethodFromErrorStack(cf_0,function(a,b) return a[b] end,function(f) return f(cf(1,2,3),"Position")==v3(1,2,3) end)
local cfMul=getMetamethodFromErrorStack(cf_0,function(a,b) return a*b end,function(f) return angles(1,2,3)*angles(1,2,3)==f(angles(1,2,3),angles(1,2,3)) end)

local Destroy=insGet(game,"Destroy")
local IsA=insGet(game,"IsA")
local FindFirstChildOfClass=insGet(game,"FindFirstChildOfClass")
local FindFirstChild=insGet(game,"FindFirstChild")
local FindFirstChildWhichIsA=insGet(game,"FindFirstChildWhichIsA")
local WaitForChild=insGet(game,"WaitForChild")
local GetChildren=insGet(game,"GetChildren")
local IsDescendantOf=insGet(game,"IsDescendantOf")
local QueryDescendants=insGet(game,"QueryDescendants")
local GetPropertyChangedSignal=insGet(game,"GetPropertyChangedSignal")
local Inverse=cfGet(cf_0,"Inverse")
local Lerp=cfGet(cf_0,"Lerp")
local ns=NumberSequence.new
local nsk=NumberSequenceKeypoint.new 
local nr=NumberRange.new 
local u2scale=UDim2.fromScale
local u2offset=UDim2.fromOffset
local spinboost=1
function CreateWeld(parent,part0,part1,C0,C1)
local weld=Instance.new("Weld")
weld.Parent=parent
weld.Part0=part0
weld.Part1=part1
weld.Name="Wing Weld:3"
if C0~=nil then
weld.C0=C0
else
weld.C0=cf()
end
if C1~=nil then
weld.C1=C1
else
weld.C1=cf()
end
return weld
end

function CreatePart(parent,name,size,pos,col,mat,ref,transparency,mesh,scale)
local p=Instance.new("Part")
p.Parent=parent
p.Name=name
p.Size=size
p.Position=pos
p.Color=col 
p.Material=mat
p.Reflectance=ref
p.Transparency=transparency
p.TopSurface=0
p.BottomSurface=0
p.CanCollide=false
p.Locked=false 
p.Massless=true 
p.Anchored=true 
if mesh~=nil then 
local m=i("SpecialMesh")
m.MeshType=mesh
m.Scale=scale
end
return p
end

function CreateParta(parent,transparency,reflectance,material,brickcolor)
local p=Instance.new("Part")
p.TopSurface=0
p.BottomSurface=0
p.Parent=parent
p.Size=Vector3.new(0.1,0.1,0.1)
p.Transparency=transparency
p.Reflectance=reflectance
p.CanCollide=false
p.Locked=true
p.Color=brickcolor
p.Material=material
return p
end

function CreateMesh(p,m,s)
local ms=i("SpecialMesh",p)
ms.MeshType=m
ms.Scale=s
return ms
end

function BetterTween(obj, speed, prop ,type, dir)
if type==nil then type="Quad" end
if dir==nil then dir="Out" end
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii=Tinfo(speed, Enum.EasingStyle[type], Enum.EasingDirection[dir])
return TweenService:Create(obj, hii,prop)
end





--// Some Extra Variables 
local Clock=tick() --// for some stuffs
local CLerp=c3().Lerp



local GlobalTable=Global.GlobalTable
local RealChar=GlobalTable.RealChar


local LeftShoulder=RealChar.Torso:WaitForChild("Left Shoulder")
local LeftHip=RealChar.Torso:WaitForChild("Left Hip")
local RightShoulder=RealChar.Torso:WaitForChild("Right Shoulder")
local RightHip=RealChar.Torso:WaitForChild("Right Hip")
local Neck=RealChar.Torso:WaitForChild("Neck")
local RootJoint=RealChar.HumanoidRootPart:WaitForChild("RootJoint")

local RotateOnce=GlobalTable.RotateOnce
local ModeEvent=GlobalTable.ModeEvent
local PrimaryColor=GlobalTable.PrimaryColor
local SecondaryColor=GlobalTable.SecondaryColor
local setVal=GlobalTable.setVal
local UIHandler=GlobalTable.UIHandler
local RecolorUI=GlobalTable.UIHandler.RecolorUI

local LyricsHandler=UIHandler.LyricHandler

local CameraHandler=GlobalTable.CameraHandler
--[==[ local ModeData={







  
 ["Vindictive"]={
WingAnimData=function(Table)
  sine=osclock()
 RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,-1.5707963267948966+0.5235987755982988*cos((sine*1)+0)))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+-5*sin((sine*1)+0),4.5+7*sin((sine*2)+0),0),angles(0,0.08726646259971647,1.5707963267948966+174.53292519943295*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,1.5707963267948966+-0.5235987755982988*cos((sine*1)+0)))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,0.5235987755982988+-0.5235987755982988*cos((sine*1)+0)))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,-2.6179938779914944+0.5235987755982988*cos((sine*1)+0)))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,-0.5235987755982988+0.5235987755982988*cos((sine*1)+0)))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+-5*sin((sine*1)+0),4.5+7*sin((sine*2)+0),0),angles(0,0.08726646259971647,-1.5707963267948966+174.53292519943295*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,2.6179938779914944+-0.5235987755982988*cos((sine*1)+0)))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
-- RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cf(),0.5)
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso 
end,
BodyAnimData=function(Table)
  sine=osclock()

LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.30000000000000004+0.26*sin((sine*2)+0),-0.2),angles(2.2689280275926285+0.17453292519943295*sin((sine*2)+0),0.5759586531581288+0.0017453292519943296*sin((sine*1000)+0)+-0.0017453292519943296*tan((sine*1000)+0),0.8552113334772214)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0.5+0.25*cos((sine*2)+0),0),angles(1.1693705988362009+-0.17453292519943295*sin((sine*2)+0),0.017453292519943295+0.17453292519943295*cos((sine*2)+0),1.9373154697137058)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-0.4+0.25*sin((sine*2)+0),-0.6000000000000001),angles(0.20943951023931956+-0.2617993877991494*cos((sine*2)+-0.5),0.47123889803846897+-0.2617993877991494*sin((sine*2)+-0.5),-0.22689280275926285)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-0+0.25*cos((sine*2)+-0.5),-0.5),angles(-0.24434609527920614+0.2617993877991494*sin((sine*2)+1),-0.4537856055185257+0.2617993877991494*cos((sine*2)+0),0.2617993877991494)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,5+0.25*sin((sine*2)+0),0),angles(-0.6283185307179586+0.17453292519943295*cos((sine*2)+0),-0.4188790204786391+0.17453292519943295*sin((sine*2)+0),0.13962634015954636)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.4014257279586958+0.17453292519943295*cos((sine*2)+-1)+0.0017453292519943296*tan((sine*1000)+0),0.4014257279586958+0.0017453292519943296*tan((sine*1000)+0),-0.10471975511965978+-0.0017453292519943296*tan((sine*1000)+1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()

local model7=i("Model",RealChar)  insSet(model7,"Name","Ring_Model1");model7:SetAttribute("ModeAsset",true);model7:SetAttribute("TargetColor","None");local handlex7=CreateParta(model7,1,1,Enum.Material.Neon,c3(0.392157,0.392157,0.392157));CreateMesh(handlex7,"Brick",v3(0,0,0));local handlexweld7=CreateWeld(handlex7,handlex7,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex7,"Name","Ring_Piece1");insSet(handlex7,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex7,0,0,Enum.Material.Neon,c3(0.392157,0.392157,0.392157));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex7,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model7:ScaleTo(1)  for _,e in model7:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

return {

WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,-1.5707963267948966+0.5235987755982988*cos((sine*1)+0))))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='PrimaryColor',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model7',
HandleName='Wing_Piece_7',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+-5*sin((sine*1)+0),4.5+7*sin((sine*2)+0),0),angles(0,0.08726646259971647,1.5707963267948966+174.53292519943295*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model7.Wing_Piece_7',
SetColorFromUI='PrimaryColor',
},
[3]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,1.5707963267948966+-0.5235987755982988*cos((sine*1)+0))))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='PrimaryColor',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,0.5235987755982988+-0.5235987755982988*cos((sine*1)+0))))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='PrimaryColor',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,-2.6179938779914944+0.5235987755982988*cos((sine*1)+0))))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='PrimaryColor',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,-0.5235987755982988+0.5235987755982988*cos((sine*1)+0))))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='PrimaryColor',
},
[7]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model8',
HandleName='Wing_Piece_8',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+-5*sin((sine*1)+0),4.5+7*sin((sine*2)+0),0),angles(0,0.08726646259971647,-1.5707963267948966+174.53292519943295*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model8.Wing_Piece_8',
SetColorFromUI='PrimaryColor',
},1
[8]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.588235,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.5,0),angles(-0.3490658503988659+0.5235987755982988*cos((sine*1)+1),0.08726646259971647,2.6179938779914944+-0.5235987755982988*cos((sine*1)+0))))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='PrimaryColor',
},
}
}

end,
ModeDataEventLoop=function(Table)
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local LerpFramePosition=UIHandler.LerpFramePosition
local LerpFrameRotation=UIHandler.LerpFrameRotation
local is=insSet
local ig=insGet
local cl=CLerp
local s=SecondaryColor
local p=PrimaryColor
local TopFrame=UIHandler.TopFrames
local BottomFrame=UIHandler.BottomFrame
local pc
local sc


local cla=clamp(ld/7.5,1,random(200,255))*2.5
pc=cl(rgb(0,0,0),rgb(cla,0,0),clamp(cla*cos(sine/(ld/10)),0,10)/10)
is(p,"Value",pc)
is(s,"Value",rgb(cla,cla,cla))
RecolorUI(true)




end,
EventData={


},
PrimaryColor=c3(0,0,0),
SecondaryColor=c3(0,0,0),
Speed=12,
JumpPower=50,
Title="Vindictive",
Key=nil,
SecondaryName="Vitrud",
Side="Vilrum",-- Spectrum
Desc="Vindictive Endictor",
SongData={
  title="Villain Virus",
  auth="Kobaryo",
  remix="feat. かめりあ",
},
  },







}
]==]






local ModeData={
-- To lazy to keep typing the same table, why not just makd an empty table then copy paste it? vv

 --[=[ ["Empty"]={
WingAnimData=function(Table)
  sine=osclock()
  
end,
BodyAnimData=function(Table)
  sine=osclock()


end,
ModeAsset=function()


return {


}
end,
ModeDataEventLoop=function(Table)
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local LerpFramePosition=UIHandler.LerpFramePosition
local LerpFrameRotation=UIHandler.LerpFrameRotation
local is=insSet
local ig=insGet
local s=SecondaryColor
local p=PrimaryColor
local TopFrame=UIHandler.TopFrames
local BottomFrame=UIHandler.BottomFrame

local TextLabels=GlobalTable.TextLabels
local OverheadText=TextLabels.OverheadText
local OtherText=TextLabels.OtherText


end,
EventData={


},
PrimaryColor=rgb(0,0,0),
SecondaryColor=c3(1,1,1),
Speed=12,
JumpPower=50,
Title="Nil",
Key=nil,
SecondaryName="Nil",
Side="Vilrum",-- Spectrum(Default)
Desc="None",
SongData={
  title="Nil",
  auth="Nil",
  remix="None",
},
  },
]=]

  ["Mayhem"]={
WingAnimData=function()
  sine=osclock()
  RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,1.5707963267948966),cfMul(cf(-3.5,-2,0),angles(0+-0.5235987755982988*cos((sine*1)+-2.5),-0.17453292519943295+-0.3490658503988659*sin((sine*1)+-2),0+0.5235987755982988*cos((sine*1)+-3)))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,1.5707963267948966),cfMul(cf(-1.5,-2,0),angles(0+-0.17453292519943295*cos((sine*1)+-1),0+0.17453292519943295*cos((sine*1)+0),0+0.17453292519943295*sin((sine*1)+0)))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,1.5707963267948966),cfMul(cf(-2.5,-2,0),angles(0+-0.3490658503988659*cos((sine*1)+-2),-0.08726646259971647+-0.17453292519943295*sin((sine*1)+-1.5),0+0.3490658503988659*cos((sine*1)+-2)))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cf(0,1.5,1.05)*angles(rad(180),0,0),0.5)
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso
end,
BodyAnimData=function()
  sine=osclock()
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.8,0.1),angles(-0.2617993877991494,-2.9670597283903604,-2.827433388230814)),angles(-0,-1.5707963705062866,0)),0.5)
LeftShoulder.Part0=RealChar.Torso
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0+0.25*cos((sine*2)+0),-0.1),angles(0,-0.5585053606381855,0.3839724354387525)),angles(0,1.5707963705062866,0)),0.5)
RightShoulder.Part0=RealChar.Torso
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-0.8,-1.1,-0.9),angles(0.12217304763960307+-0.08726646259971647*cos((sine*2)+0),0.10471975511965978,0)),angles(-0,-1.5707963705062866,0)),0.5)
   LeftHip.Part0=RealChar.HumanoidRootPart
RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-1.3,0.30000000000000004),angles(-0.5061454830783556+0.08726646259971647*cos((sine*2)+0),0.33161255787892263,0.10471975511965978)),angles(0,1.5707963705062866,0)),0.5)
RightHip.Part0=RealChar.HumanoidRootPart
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,0+0.15*cos((sine*2)+0),0),angles(-0.17453292519943295+0.08726646259971647*sin((sine*2)+0),-0.6457718232379019,0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
RootJoint.Part0=RealChar.HumanoidRootPart
Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.3141592653589793+0.08726646259971647*sin((sine*1000)+0)+0.17453292519943295*cos((sine*2)+0)+0.003490658503988659*tan((sine*1000)+0),0.7504915783575618,0.05235987755982989+0.08726646259971647*sin((sine*2)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
 return {
 WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,1.5707963267948966),cfMul(cf(-3.5,-2,0),angles(0+-0.5235987755982988*cos((sine*1)+-2.5),-0.17453292519943295+-0.3490658503988659*sin((sine*1)+-2),0+0.5235987755982988*cos((sine*1)+-3))))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,1.5707963267948966),cfMul(cf(-1.5,-2,0),angles(0+-0.17453292519943295*cos((sine*1)+-1),0+0.17453292519943295*cos((sine*1)+0),0+0.17453292519943295*sin((sine*1)+0))))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,1.5707963267948966),cfMul(cf(-2.5,-2,0),angles(0+-0.3490658503988659*cos((sine*1)+-2),-0.08726646259971647+-0.17453292519943295*sin((sine*1)+-1.5),0+0.3490658503988659*cos((sine*1)+-2))))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='None',
},
},
 RingData={
[1]={
SpecialAttribute='None',
Color=c3(1.000000,0.000000,0.000000),
Scale=1,
Transparency=0,
Material=Enum.Material.Neon,
ModelName='Ring_Model1',
HandleName='Ring_Piece1',
Part1='RealChar.Torso',
Lerp='No Lerps! Try Making One!',
RingAttach='RealChar.Ring_Model1.Ring_Piece1',
SetColorFromUI='None',
},
}
 }
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=rgb(255,0,0),
SecondaryColor=rgb(0,0,0),
Speed=12,
JumpPower=50,
Title="Mayhem",
Key=0,
SecondaryName="Reverix",
Side="Vilrum",-- Spectrum
Desc="The Destructor",
SongData={
  title="Shriek",
  auth="D-Mode-D",
  remix="None",
},
  },


  ["Purity"]={
WingAnimData=function()
  sine=osclock()
  RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-2.9,2.3,0.2),angles(0+0.2617993877991494*cos((sine*1)+0),0+-0.2617993877991494*cos((sine*1)+0),3.141592653589793+-0.17453292519943295*sin((sine*1)+0.5)))),0.5)

 RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(2.4000000000000004,2.3000000000000003,0.2),angles(0+0.2617993877991494*cos((sine*1)+0),0+0.2617993877991494*cos((sine*1)+0),3.141592653589793+0.17453292519943295*sin((sine*1)+0.5)))),0.5)

 RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1

RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(1.3,2.1,0.2),angles(0+0.08726646259971647*cos((sine*1)+0),0+0.17453292519943295*cos((sine*1)+0),3.141592653589793+0.08726646259971647*sin((sine*1)+0)))),0.5)

 RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-1.8,2.1,0.2),angles(0+0.08726646259971647*cos((sine*1)+0),0+-0.17453292519943295*cos((sine*1)+0),3.141592653589793+-0.08726646259971647*sin((sine*1)+0)))),0.5)

 RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-4,2.3,0.2),angles(0+0.4363323129985824*cos((sine*1)+0),0+-0.4363323129985824*cos((sine*1)+0),3.141592653589793+-0.3490658503988659*sin((sine*1)+1)))),0.5)

 RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(3.5,2.3000000000000003,0.2),angles(0+0.4363323129985824*cos((sine*1)+0),0.017453292519943295+0.4363323129985824*cos((sine*1)+0),3.141592653589793+0.3490658503988659*sin((sine*1)+1)))),0.5)

 RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
end,
BodyAnimData=function()
  sine=osclock()
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.8,0.5+0.15*sin((sine*2)+0.125),-0.2),angles(0.5585053606381855,0.17453292519943295,1.4486232791552935+0.17453292519943295*cos((sine*2)+1))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(0.8,0.4+0.1*cos((sine*2)+0.5),-0),angles(0.9424777960769379,-0.29670597283903605+-0.017453292519943295*sin((sine*2)+1.75),-1.5533430342749532)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-1.1,-0.5),angles(0.08726646259971647+-0.04363323129985824*sin((sine*2)+0.5),0.4014257279586958,-0.19198621771937624)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(0.9,-1,0.6000000000000001),angles(-0.17453292519943295+-0.04363323129985824*sin((sine*2)+-1),-0.9424777960769379,0.3141592653589793)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.HumanoidRootPart
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,0+0.15*cos((sine*2)+0),0),angles(0+0.17453292519943295*cos((sine*2)+0.5),-0.4886921905584123,0.06981317007977318+0.08726646259971647*sin((sine*1)+-1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.17453292519943295+0.17453292519943295*sin((sine*2)+-0.5),0.5061454830783556,0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local m=i("Model",RealChar)
 m.Name="Wing Model5"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_5_1=i("Part", m)
insSet(Wing_Piece_5_1,'Name',"Wing_Piece_5");
insSet(Wing_Piece_5_1,'Anchored',false);
insSet(Wing_Piece_5_1,'CanCollide',false);
insSet(Wing_Piece_5_1,'CanQuery',true);
insSet(Wing_Piece_5_1,'CanTouch',true);
insSet(Wing_Piece_5_1,'Transparency',1);
insSet(Wing_Piece_5_1,'Reflectance',1);
insSet(Wing_Piece_5_1,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_5_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_5_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_5_1,'CastShadow',true);
insSet(Wing_Piece_5_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_5_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_5_1);



 Part_4=i("Part", Wing_Piece_5_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_5_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_5_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_5_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_5_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_5_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_5_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model1"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_1_1=i("Part", m)
insSet(Wing_Piece_1_1,'Name',"Wing_Piece_1");
insSet(Wing_Piece_1_1,'Anchored',false);
insSet(Wing_Piece_1_1,'CanCollide',false);
insSet(Wing_Piece_1_1,'CanQuery',true);
insSet(Wing_Piece_1_1,'CanTouch',true);
insSet(Wing_Piece_1_1,'Transparency',1);
insSet(Wing_Piece_1_1,'Reflectance',1);
insSet(Wing_Piece_1_1,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_1_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_1_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_1_1,'CastShadow',true);
insSet(Wing_Piece_1_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_1_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_1_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_1_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_1_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_1_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_1_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_1_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_1_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_1_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
local m=i("Model",RealChar)
 m.Name="Wing Model4"
 m:SetAttribute("ModeAsset",true) 
 Wing_Piece_4_1=i("Part", m)
insSet(Wing_Piece_4_1,'Name',"Wing_Piece_4");
insSet(Wing_Piece_4_1,'Anchored',false);
insSet(Wing_Piece_4_1,'CanCollide',false);
insSet(Wing_Piece_4_1,'CanQuery',true);
insSet(Wing_Piece_4_1,'CanTouch',true);
insSet(Wing_Piece_4_1,'Transparency',1);
insSet(Wing_Piece_4_1,'Reflectance',1);
insSet(Wing_Piece_4_1,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_4_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_4_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_4_1,'CastShadow',true);
insSet(Wing_Piece_4_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_4_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_4_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_4_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_4_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_4_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_4_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_4_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_4_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_4_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model6"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_6_1=i("Part", m)
insSet(Wing_Piece_6_1,'Name',"Wing_Piece_6");
insSet(Wing_Piece_6_1,'Anchored',false);
insSet(Wing_Piece_6_1,'CanCollide',false);
insSet(Wing_Piece_6_1,'CanQuery',true);
insSet(Wing_Piece_6_1,'CanTouch',true);
insSet(Wing_Piece_6_1,'Transparency',1);
insSet(Wing_Piece_6_1,'Reflectance',1);
insSet(Wing_Piece_6_1,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_6_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_6_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_6_1,'CastShadow',true);
insSet(Wing_Piece_6_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_6_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_6_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_6_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_6_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_6_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_6_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_6_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_6_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_6_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model3"
 m:SetAttribute("ModeAsset",true)
 
 Wing_Piece_3_1=i("Part", m)
insSet(Wing_Piece_3_1,'Name',"Wing_Piece_3");
insSet(Wing_Piece_3_1,'Anchored',false);
insSet(Wing_Piece_3_1,'CanCollide',false);
insSet(Wing_Piece_3_1,'CanQuery',true);
insSet(Wing_Piece_3_1,'CanTouch',true);
insSet(Wing_Piece_3_1,'Transparency',1);
insSet(Wing_Piece_3_1,'Reflectance',1);
insSet(Wing_Piece_3_1,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_3_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_3_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_3_1,'CastShadow',true);
insSet(Wing_Piece_3_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_3_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_3_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_3_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_3_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_3_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_3_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_3_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_3_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_3_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model2"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_2_1=i("Part", m)
insSet(Wing_Piece_2_1,'Name',"Wing_Piece_2");
insSet(Wing_Piece_2_1,'Anchored',false);
insSet(Wing_Piece_2_1,'CanCollide',false);
insSet(Wing_Piece_2_1,'CanQuery',true);
insSet(Wing_Piece_2_1,'CanTouch',true);
insSet(Wing_Piece_2_1,'Transparency',1);
insSet(Wing_Piece_2_1,'Reflectance',1);
insSet(Wing_Piece_2_1,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_2_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_2_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_2_1,'CastShadow',true);
insSet(Wing_Piece_2_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_2_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_2_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_2_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_2_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_2_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_2_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_2_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_2_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_2_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);


  local model12=i("Model",RealChar)  insSet(model12,"Name","Ring Model1");model12:SetAttribute("ModeAsset",true);local handlex12=CreateParta(model12,1,1,Enum.Material.Neon,c3(0.000000,1.000000,1.000000));CreateMesh(handlex12,"Brick",v3(0,0,0));local handlexweld12=CreateWeld(handlex12,handlex12,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex12,"Name","Ring_Piece1");insSet(handlex12,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex12,0,0,Enum.Material.Neon,c3(0.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex12,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model12:ScaleTo(1) 
  
  local WingAttachmentData={
  [1]=Wing_Piece_1_1,
  [2]=Wing_Piece_2_1,
  [3]=Wing_Piece_4_1,
  [3]=Wing_Piece_5_1,
}
return WingAttachmentData
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=rgb(255,255,255),
SecondaryColor=rgb(0,255,255),
Speed=12,
JumpPower=50,
Title="Purity",
Key=1,
SecondaryName="Athrid",
Side="Vilrum",-- Spectrum
Desc="Clenased Traveller",
SongData={
  title="GoodTek",
  auth="Ebimayo",
  remix="None",
},
  },


  ["Corruption"]={
WingAnimData=function()
  sine=osclock()
  RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-2.9,2.3,0.2),angles(0+0.2617993877991494*cos((sine*1)+0),0+-0.2617993877991494*cos((sine*1)+0),3.141592653589793+-0.17453292519943295*sin((sine*1)+0.5)))),0.5)

 RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(2.4000000000000004,2.3000000000000003,0.2),angles(0+0.2617993877991494*cos((sine*1)+0),0+0.2617993877991494*cos((sine*1)+0),3.141592653589793+0.17453292519943295*sin((sine*1)+0.5)))),0.5)

 RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1

RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(1.3,2.1,0.2),angles(0+0.08726646259971647*cos((sine*1)+0),0+0.17453292519943295*cos((sine*1)+0),3.141592653589793+0.08726646259971647*sin((sine*1)+0)))),0.5)

 RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-1.8,2.1,0.2),angles(0+0.08726646259971647*cos((sine*1)+0),0+-0.17453292519943295*cos((sine*1)+0),3.141592653589793+-0.08726646259971647*sin((sine*1)+0)))),0.5)

 RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-4,2.3,0.2),angles(0+0.4363323129985824*cos((sine*1)+0),0+-0.4363323129985824*cos((sine*1)+0),3.141592653589793+-0.3490658503988659*sin((sine*1)+1)))),0.5)

 RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(3.5,2.3000000000000003,0.2),angles(0+0.4363323129985824*cos((sine*1)+0),0.017453292519943295+0.4363323129985824*cos((sine*1)+0),3.141592653589793+0.3490658503988659*sin((sine*1)+1)))),0.5)

 RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
end,
BodyAnimData=function()
  sine=osclock()
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.6000000000000001,0.5+0.15*cos((sine*2)+-1),0.6000000000000001),angles(-0.15707963267948966,0.3839724354387525,0.5759586531581288)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(0.6000000000000001,0.5+0.15*cos((sine*2)+-1),0.6000000000000001),angles(-0.15707963267948966,-0.3839724354387525,-0.5759586531581288)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-1,-0.1),angles(0.03490658503988659,0.3665191429188092,-0.22689280275926285)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.2000000000000002,-1,-0.1),angles(0.07679448708775051,-0.3839724354387525,0.22689280275926285)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.HumanoidRootPart
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,0+0.15*sin((sine*2)+0),0),angles(0+0.08726646259971647*cos((sine*2)+-1),0,0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.17453292519943295+0.17453292519943295*sin((sine*2)+-1)+0.0017453292519943296*tan((sine*10000)+0),0+-0.0017453292519943296*tan((sine*10000)+5),0+-0.0017453292519943296*tan((sine*500)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local m=i("Model",RealChar)
 m.Name="Wing Model5"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_5_1=i("Part", m)
insSet(Wing_Piece_5_1,'Name',"Wing_Piece_5");
insSet(Wing_Piece_5_1,'Anchored',false);
insSet(Wing_Piece_5_1,'CanCollide',false);
insSet(Wing_Piece_5_1,'CanQuery',true);
insSet(Wing_Piece_5_1,'CanTouch',true);
insSet(Wing_Piece_5_1,'Transparency',1);
insSet(Wing_Piece_5_1,'Reflectance',1);
insSet(Wing_Piece_5_1,'Color',rgb(122,6,186));
insSet(Wing_Piece_5_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_5_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_5_1,'CastShadow',true);
insSet(Wing_Piece_5_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_5_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_5_1);


 Part_4=i("Part", Wing_Piece_5_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(122,6,186));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_5_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_5_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_5_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(122,6,186));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_5_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(122,6,186));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_5_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(122,6,186));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_5_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(122,6,186));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(122,6,186)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model1"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_1_1=i("Part", m)
insSet(Wing_Piece_1_1,'Name',"Wing_Piece_1");
insSet(Wing_Piece_1_1,'Anchored',false);
insSet(Wing_Piece_1_1,'CanCollide',false);
insSet(Wing_Piece_1_1,'CanQuery',true);
insSet(Wing_Piece_1_1,'CanTouch',true);
insSet(Wing_Piece_1_1,'Transparency',1);
insSet(Wing_Piece_1_1,'Reflectance',1);
insSet(Wing_Piece_1_1,'Color',rgb(122,6,186));
insSet(Wing_Piece_1_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_1_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_1_1,'CastShadow',true);
insSet(Wing_Piece_1_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_1_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_1_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_1_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(122,6,186));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_1_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_1_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_1_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(122,6,186));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_1_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(122,6,186));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_1_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(122,6,186));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_1_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(122,6,186));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(122,6,186)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
local m=i("Model",RealChar)
 m.Name="Wing Model4"
 m:SetAttribute("ModeAsset",true) 
 Wing_Piece_4_1=i("Part", m)
insSet(Wing_Piece_4_1,'Name',"Wing_Piece_4");
insSet(Wing_Piece_4_1,'Anchored',false);
insSet(Wing_Piece_4_1,'CanCollide',false);
insSet(Wing_Piece_4_1,'CanQuery',true);
insSet(Wing_Piece_4_1,'CanTouch',true);
insSet(Wing_Piece_4_1,'Transparency',1);
insSet(Wing_Piece_4_1,'Reflectance',1);
insSet(Wing_Piece_4_1,'Color',rgb(122,6,186));
insSet(Wing_Piece_4_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_4_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_4_1,'CastShadow',true);
insSet(Wing_Piece_4_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_4_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_4_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_4_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(122,6,186));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_4_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_4_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_4_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(122,6,186));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_4_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(122,6,186));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_4_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(122,6,186));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_4_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(122,6,186));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(122,6,186)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model6"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_6_1=i("Part", m)
insSet(Wing_Piece_6_1,'Name',"Wing_Piece_6");
insSet(Wing_Piece_6_1,'Anchored',false);
insSet(Wing_Piece_6_1,'CanCollide',false);
insSet(Wing_Piece_6_1,'CanQuery',true);
insSet(Wing_Piece_6_1,'CanTouch',true);
insSet(Wing_Piece_6_1,'Transparency',1);
insSet(Wing_Piece_6_1,'Reflectance',1);
insSet(Wing_Piece_6_1,'Color',rgb(122,6,186));
insSet(Wing_Piece_6_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_6_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_6_1,'CastShadow',true);
insSet(Wing_Piece_6_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_6_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_6_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_6_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(122,6,186));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_6_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_6_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_6_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(122,6,186));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_6_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(122,6,186));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_6_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(122,6,186));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_6_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(122,6,186));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(122,6,186)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model3"
 m:SetAttribute("ModeAsset",true)
 
 Wing_Piece_3_1=i("Part", m)
insSet(Wing_Piece_3_1,'Name',"Wing_Piece_3");
insSet(Wing_Piece_3_1,'Anchored',false);
insSet(Wing_Piece_3_1,'CanCollide',false);
insSet(Wing_Piece_3_1,'CanQuery',true);
insSet(Wing_Piece_3_1,'CanTouch',true);
insSet(Wing_Piece_3_1,'Transparency',1);
insSet(Wing_Piece_3_1,'Reflectance',1);
insSet(Wing_Piece_3_1,'Color',rgb(122,6,186));
insSet(Wing_Piece_3_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_3_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_3_1,'CastShadow',true);
insSet(Wing_Piece_3_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_3_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_3_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_3_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(122,6,186));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_3_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_3_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_3_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(122,6,186));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_3_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(122,6,186));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_3_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(122,6,186));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_3_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(122,6,186));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(122,6,186)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model2"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_2_1=i("Part", m)
insSet(Wing_Piece_2_1,'Name',"Wing_Piece_2");
insSet(Wing_Piece_2_1,'Anchored',false);
insSet(Wing_Piece_2_1,'CanCollide',false);
insSet(Wing_Piece_2_1,'CanQuery',true);
insSet(Wing_Piece_2_1,'CanTouch',true);
insSet(Wing_Piece_2_1,'Transparency',1);
insSet(Wing_Piece_2_1,'Reflectance',1);
insSet(Wing_Piece_2_1,'Color',rgb(122,6,186));
insSet(Wing_Piece_2_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_2_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_2_1,'CastShadow',true);
insSet(Wing_Piece_2_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_2_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_2_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_2_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(122,6,186));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_2_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_2_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_2_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(122,6,186));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_2_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(122,6,186));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_2_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(122,6,186));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_2_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(122,6,186));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(122,6,186)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);


  local model12=i("Model",RealChar)  insSet(model12,"Name","Ring Model1");model12:SetAttribute("ModeAsset",true);local handlex12=CreateParta(model12,1,1,Enum.Material.Neon,rgb(122,6,186));CreateMesh(handlex12,"Brick",v3(0,0,0));local handlexweld12=CreateWeld(handlex12,handlex12,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex12,"Name","Ring_Piece1");insSet(handlex12,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex12,0,0,Enum.Material.Neon,rgb(122,6,186));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex12,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model12:ScaleTo(1) 
  
  local WingAttachmentData={
  [1]=Wing_Piece_1_1,
  [2]=Wing_Piece_2_1,
  [3]=Wing_Piece_4_1,
  [3]=Wing_Piece_5_1,
}
return WingAttachmentData
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=rgb(122,6,186),
SecondaryColor=rgb(0,0,0),
Speed=12,
JumpPower=50,
Title="Corruption",
Key=2,
SecondaryName="Cavaris",
Side="Vilrum",-- Spectrum
Desc="Corrupted Traveller",
SongData={
  title="Night Falls",
  auth="Touhou 15.5 - Evening Star",
  remix="None",
},
  },


  ["Chaos"]={
WingAnimData=function()
  sine=osclock()
  local Rcolor=rgb(random(0,255),random(0,255),random(0,255))
  RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-2.9,2.3,0.2),angles(0+0.2617993877991494*cos((sine*1)+0),0+-0.2617993877991494*cos((sine*1)+0),3.141592653589793+-0.17453292519943295*sin((sine*1)+0.5)))),0.5)

 RealChar["Wing Model5"].Wing_Piece_5["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 
 RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(2.4000000000000004,2.3000000000000003,0.2),angles(0+0.2617993877991494*cos((sine*1)+0),0+0.2617993877991494*cos((sine*1)+0),3.141592653589793+0.17453292519943295*sin((sine*1)+0.5)))),0.5)

 RealChar["Wing Model2"].Wing_Piece_2["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1

RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(1.3,2.1,0.2),angles(0+0.08726646259971647*cos((sine*1)+0),0+0.17453292519943295*cos((sine*1)+0),3.141592653589793+0.08726646259971647*sin((sine*1)+0)))),0.5)

 RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-1.8,2.1,0.2),angles(0+0.08726646259971647*cos((sine*1)+0),0+-0.17453292519943295*cos((sine*1)+0),3.141592653589793+-0.08726646259971647*sin((sine*1)+0)))),0.5)

 RealChar["Wing Model4"].Wing_Piece_4["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-4,2.3,0.2),angles(0+0.4363323129985824*cos((sine*1)+0),0+-0.4363323129985824*cos((sine*1)+0),3.141592653589793+-0.3490658503988659*sin((sine*1)+1)))),0.5)

 RealChar["Wing Model6"].Wing_Piece_6["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 
 RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(3.5,2.3000000000000003,0.2),angles(0+0.4363323129985824*cos((sine*1)+0),0.017453292519943295+0.4363323129985824*cos((sine*1)+0),3.141592653589793+0.3490658503988659*sin((sine*1)+1)))),0.5)

 RealChar["Wing Model3"].Wing_Piece_3["Wing Weld:3"].Part1=RealChar["Ring Model1"].Ring_Piece1
 local Rcolor=rgb(random(0,255),random(0,255),random(0,255))
 setVal(PrimaryColor,Rcolor)
 UIHandler.RecolorUI(true)
 for _,e in RealChar["Wing Model5"]:GetDescendants() do 
   if e:IsA("Trail") then 
     e.Color=cs(Rcolor)
   elseif e:IsA("BasePart") then 
     e.Color=Rcolor
     end
   end
 for _,e in RealChar["Wing Model6"]:GetDescendants() do 
   if e:IsA("Trail") then 
     e.Color=cs(Rcolor)
   elseif e:IsA("BasePart") then 
     e.Color=Rcolor
     end
   end
 for _,e in RealChar["Wing Model4"]:GetDescendants() do 
   if e:IsA("Trail") then 
     e.Color=cs(Rcolor)
   elseif e:IsA("BasePart") then 
     e.Color=Rcolor
     end
   end
end,
BodyAnimData=function()
  sine=osclock()
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.8,0.5+0.15*sin((sine*2)+0),-0.7000000000000001),angles(2.234021442552742+0.17453292519943295*cos((sine*2)+0)+0.003490658503988659*tan((sine*1000)+0),0.8552113334772214+-0.0017453292519943296*tan((sine*1000)+0),1.2042771838760873+0.002617993877991494*cos((sine*2)+0))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0.1+0.25*sin((sine*2)+0),-0.2),angles(1.1868238913561442+0.17453292519943295*sin((sine*2)+-1),-0.8377580409572782,0.6108652381980153+-0.08726646259971647*cos((sine*2)+0))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-1.5+0.2*cos((sine*2)+-0.5),0.7000000000000001),angles(-1.0122909661567112+0.08726646259971647*cos((sine*2)+-0.5),0.5934119456780721,-0.1466076571675237)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.4000000000000001,-1.2000000000000002+0.1*cos((sine*2)+-0.5),0),angles(0.29670597283903605+-0.08726646259971647*cos((sine*2)+-0.5),-0.4014257279586958,0.13962634015954636)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.HumanoidRootPart
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,-0.4+0.2*cos((sine*2)+0),0),angles(-0.7853981633974483+0.08726646259971647*sin((sine*2)+0),-0.10471975511965978,0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.5585053606381855+0.08726646259971647*sin((sine*2)+0)+0.003490658503988659*tan((sine*1000)+0),0.22689280275926285+-0.0017453292519943296*tan((sine*10000)+0),0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local m=i("Model",RealChar)
 m.Name="Wing Model5"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_5_1=i("Part", m)
insSet(Wing_Piece_5_1,'Name',"Wing_Piece_5");
insSet(Wing_Piece_5_1,'Anchored',false);
insSet(Wing_Piece_5_1,'CanCollide',false);
insSet(Wing_Piece_5_1,'CanQuery',true);
insSet(Wing_Piece_5_1,'CanTouch',true);
insSet(Wing_Piece_5_1,'Transparency',1);
insSet(Wing_Piece_5_1,'Reflectance',1);
insSet(Wing_Piece_5_1,'Color',rgb(0,0,0));
insSet(Wing_Piece_5_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_5_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_5_1,'CastShadow',true);
insSet(Wing_Piece_5_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_5_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_5_1);


 Part_4=i("Part", Wing_Piece_5_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(0,0,0));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_5_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_5_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_5_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(0,0,0));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_5_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(0,0,0));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_5_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(0,0,0));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_5_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(0,0,0));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(0,0,0)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model1"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_1_1=i("Part", m)
insSet(Wing_Piece_1_1,'Name',"Wing_Piece_1");
insSet(Wing_Piece_1_1,'Anchored',false);
insSet(Wing_Piece_1_1,'CanCollide',false);
insSet(Wing_Piece_1_1,'CanQuery',true);
insSet(Wing_Piece_1_1,'CanTouch',true);
insSet(Wing_Piece_1_1,'Transparency',1);
insSet(Wing_Piece_1_1,'Reflectance',1);
insSet(Wing_Piece_1_1,'Color',rgb(0,0,0));
insSet(Wing_Piece_1_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_1_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_1_1,'CastShadow',true);
insSet(Wing_Piece_1_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_1_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_1_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_1_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(0,0,0));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_1_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_1_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_1_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(0,0,0));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_1_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(0,0,0));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_1_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(0,0,0));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_1_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(0,0,0));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(0,0,0)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
local m=i("Model",RealChar)
 m.Name="Wing Model4"
 m:SetAttribute("ModeAsset",true) 
 Wing_Piece_4_1=i("Part", m)
insSet(Wing_Piece_4_1,'Name',"Wing_Piece_4");
insSet(Wing_Piece_4_1,'Anchored',false);
insSet(Wing_Piece_4_1,'CanCollide',false);
insSet(Wing_Piece_4_1,'CanQuery',true);
insSet(Wing_Piece_4_1,'CanTouch',true);
insSet(Wing_Piece_4_1,'Transparency',1);
insSet(Wing_Piece_4_1,'Reflectance',1);
insSet(Wing_Piece_4_1,'Color',rgb(0,0,0));
insSet(Wing_Piece_4_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_4_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_4_1,'CastShadow',true);
insSet(Wing_Piece_4_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_4_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_4_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_4_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(0,0,0));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_4_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_4_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_4_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(0,0,0));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_4_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(0,0,0));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_4_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(0,0,0));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_4_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(0,0,0));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(0,0,0)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model6"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_6_1=i("Part", m)
insSet(Wing_Piece_6_1,'Name',"Wing_Piece_6");
insSet(Wing_Piece_6_1,'Anchored',false);
insSet(Wing_Piece_6_1,'CanCollide',false);
insSet(Wing_Piece_6_1,'CanQuery',true);
insSet(Wing_Piece_6_1,'CanTouch',true);
insSet(Wing_Piece_6_1,'Transparency',1);
insSet(Wing_Piece_6_1,'Reflectance',1);
insSet(Wing_Piece_6_1,'Color',rgb(0,0,0));
insSet(Wing_Piece_6_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_6_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_6_1,'CastShadow',true);
insSet(Wing_Piece_6_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_6_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_6_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_6_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(0,0,0));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_6_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_6_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_6_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(0,0,0));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_6_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(0,0,0));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_6_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(0,0,0));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_6_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(0,0,0));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(0,0,0)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model3"
 m:SetAttribute("ModeAsset",true)
 
 Wing_Piece_3_1=i("Part", m)
insSet(Wing_Piece_3_1,'Name',"Wing_Piece_3");
insSet(Wing_Piece_3_1,'Anchored',false);
insSet(Wing_Piece_3_1,'CanCollide',false);
insSet(Wing_Piece_3_1,'CanQuery',true);
insSet(Wing_Piece_3_1,'CanTouch',true);
insSet(Wing_Piece_3_1,'Transparency',1);
insSet(Wing_Piece_3_1,'Reflectance',1);
insSet(Wing_Piece_3_1,'Color',rgb(0,0,0));
insSet(Wing_Piece_3_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_3_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_3_1,'CastShadow',true);
insSet(Wing_Piece_3_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_3_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_3_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_3_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(0,0,0));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_3_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_3_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_3_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(0,0,0));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_3_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(0,0,0));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_3_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(0,0,0));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_3_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(0,0,0));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(0,0,0)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);
 local m=i("Model",RealChar)
 m.Name="Wing Model2"
 m:SetAttribute("ModeAsset",true)
 Wing_Piece_2_1=i("Part", m)
insSet(Wing_Piece_2_1,'Name',"Wing_Piece_2");
insSet(Wing_Piece_2_1,'Anchored',false);
insSet(Wing_Piece_2_1,'CanCollide',false);
insSet(Wing_Piece_2_1,'CanQuery',true);
insSet(Wing_Piece_2_1,'CanTouch',true);
insSet(Wing_Piece_2_1,'Transparency',1);
insSet(Wing_Piece_2_1,'Reflectance',1);
insSet(Wing_Piece_2_1,'Color',rgb(0,0,0));
insSet(Wing_Piece_2_1,'Material',Enum.Material.Neon);
insSet(Wing_Piece_2_1,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_2_1,'CastShadow',true);
insSet(Wing_Piece_2_1,'Massless',false);


 WingWeld3_2=i("Weld", Wing_Piece_2_1)
insSet(WingWeld3_2,'Name',"Wing Weld:3");
insSet(WingWeld3_2,'Enabled',true);
insSet(WingWeld3_2,'C0',cf(0,-.25,1.05)*angles(rad(180),rad(0),rad(-90)));
insSet(WingWeld3_2,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_2,'Part0',Wing_Piece_2_1);
insSet(WingWeld3_2,'Part1',Ring_Piece1_3);


 Part_4=i("Part", Wing_Piece_2_1)
insSet(Part_4,'Name',"Part");
insSet(Part_4,'Anchored',false);
insSet(Part_4,'CanCollide',false);
insSet(Part_4,'CanQuery',true);
insSet(Part_4,'CanTouch',true);
insSet(Part_4,'Transparency',1);
insSet(Part_4,'Reflectance',1);
insSet(Part_4,'Color',rgb(0,0,0));
insSet(Part_4,'Material',Enum.Material.Neon);
insSet(Part_4,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_4,'CastShadow',true);
insSet(Part_4,'Massless',false);


 WingWeld3_5=i("Weld", Part_4)
insSet(WingWeld3_5,'Name',"Wing Weld:3");
insSet(WingWeld3_5,'Enabled',true);
insSet(WingWeld3_5,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_5,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_5,'Part0',Wing_Piece_2_1);
insSet(WingWeld3_5,'Part1',Part_4);


 Mesh_6=i("SpecialMesh", Wing_Piece_2_1)
insSet(Mesh_6,'Name',"Mesh");
insSet(Mesh_6,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_6,'MeshId',"");
insSet(Mesh_6,'TextureId',"");
insSet(Mesh_6,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_6,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_6,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_7=i("Part", Wing_Piece_2_1)
insSet(LeftSmallWedge_7,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_7,'Anchored',false);
insSet(LeftSmallWedge_7,'CanCollide',false);
insSet(LeftSmallWedge_7,'CanQuery',true);
insSet(LeftSmallWedge_7,'CanTouch',true);
insSet(LeftSmallWedge_7,'Transparency',0);
insSet(LeftSmallWedge_7,'Reflectance',0);
insSet(LeftSmallWedge_7,'Color',rgb(0,0,0));
insSet(LeftSmallWedge_7,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_7,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_7,'CastShadow',true);
insSet(LeftSmallWedge_7,'Massless',false);


 RightSmallWedgeMesh_8=i("SpecialMesh", LeftSmallWedge_7)
insSet(RightSmallWedgeMesh_8,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_8,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_8,'MeshId',"");
insSet(RightSmallWedgeMesh_8,'TextureId',"");
insSet(RightSmallWedgeMesh_8,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_8,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_8,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_9=i("Weld", LeftSmallWedge_7)
insSet(WingWeld3_9,'Name',"Wing Weld:3");
insSet(WingWeld3_9,'Enabled',true);
insSet(WingWeld3_9,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_9,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_9,'Part0',Part_4);
insSet(WingWeld3_9,'Part1',LeftSmallWedge_7);


 RightSmallWedge_10=i("Part", Wing_Piece_2_1)
insSet(RightSmallWedge_10,'Name',"RightSmallWedge");
insSet(RightSmallWedge_10,'Anchored',false);
insSet(RightSmallWedge_10,'CanCollide',false);
insSet(RightSmallWedge_10,'CanQuery',true);
insSet(RightSmallWedge_10,'CanTouch',true);
insSet(RightSmallWedge_10,'Transparency',0);
insSet(RightSmallWedge_10,'Reflectance',0);
insSet(RightSmallWedge_10,'Color',rgb(0,0,0));
insSet(RightSmallWedge_10,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_10,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_10,'CastShadow',true);
insSet(RightSmallWedge_10,'Massless',false);


 LeftSmallWedgeMesh_11=i("SpecialMesh", RightSmallWedge_10)
insSet(LeftSmallWedgeMesh_11,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_11,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_11,'MeshId',"");
insSet(LeftSmallWedgeMesh_11,'TextureId',"");
insSet(LeftSmallWedgeMesh_11,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_11,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_11,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_12=i("Weld", RightSmallWedge_10)
insSet(WingWeld3_12,'Name',"Wing Weld:3");
insSet(WingWeld3_12,'Enabled',true);
insSet(WingWeld3_12,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_12,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_12,'Part0',Part_4);
insSet(WingWeld3_12,'Part1',RightSmallWedge_10);


 Att0_13=i("Attachment", RightSmallWedge_10)
insSet(Att0_13,'Name',"Att0");
insSet(Att0_13,'Visible',false);
insSet(Att0_13,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_14=i("Part", Wing_Piece_2_1)
insSet(LeftLongWedge_14,'Name',"LeftLongWedge");
insSet(LeftLongWedge_14,'Anchored',false);
insSet(LeftLongWedge_14,'CanCollide',false);
insSet(LeftLongWedge_14,'CanQuery',true);
insSet(LeftLongWedge_14,'CanTouch',true);
insSet(LeftLongWedge_14,'Transparency',0);
insSet(LeftLongWedge_14,'Reflectance',0);
insSet(LeftLongWedge_14,'Color',rgb(0,0,0));
insSet(LeftLongWedge_14,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_14,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_14,'CastShadow',true);
insSet(LeftLongWedge_14,'Massless',false);


 LeftLongWedge_15=i("SpecialMesh", LeftLongWedge_14)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_15,'MeshId',"");
insSet(LeftLongWedge_15,'TextureId',"");
insSet(LeftLongWedge_15,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_15,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_15,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_16=i("Weld", LeftLongWedge_14)
insSet(WingWeld3_16,'Name',"Wing Weld:3");
insSet(WingWeld3_16,'Enabled',true);
insSet(WingWeld3_16,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_16,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_16,'Part0',Part_4);
insSet(WingWeld3_16,'Part1',LeftLongWedge_14);


 Att1_17=i("Attachment", LeftLongWedge_14)
insSet(Att1_17,'Name',"Att1");
insSet(Att1_17,'Visible',false);
insSet(Att1_17,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_18=i("Part", Wing_Piece_2_1)
insSet(RightLongWedge_18,'Name',"RightLongWedge");
insSet(RightLongWedge_18,'Anchored',false);
insSet(RightLongWedge_18,'CanCollide',false);
insSet(RightLongWedge_18,'CanQuery',true);
insSet(RightLongWedge_18,'CanTouch',true);
insSet(RightLongWedge_18,'Transparency',0);
insSet(RightLongWedge_18,'Reflectance',0);
insSet(RightLongWedge_18,'Color',rgb(0,0,0));
insSet(RightLongWedge_18,'Material',Enum.Material.Neon);
insSet(RightLongWedge_18,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_18,'CastShadow',true);
insSet(RightLongWedge_18,'Massless',false);


 RightLongWedgeMesh_19=i("SpecialMesh", RightLongWedge_18)
insSet(RightLongWedgeMesh_19,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_19,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_19,'MeshId',"");
insSet(RightLongWedgeMesh_19,'TextureId',"");
insSet(RightLongWedgeMesh_19,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_19,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_19,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_20=i("Weld", RightLongWedge_18)
insSet(WingWeld3_20,'Name',"Wing Weld:3");
insSet(WingWeld3_20,'Enabled',true);
insSet(WingWeld3_20,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_20,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_20,'Part0',Part_4);
insSet(WingWeld3_20,'Part1',RightLongWedge_18);


 Trail_21=i("Trail", RightLongWedge_18)
insSet(Trail_21,'Name',"Trail");
insSet(Trail_21,'Enabled',true);
insSet(Trail_21,'Lifetime',0.6000000238418579);
insSet(Trail_21,'FaceCamera',false);
insSet(Trail_21,'WidthScale',ns(1,0));
insSet(Trail_21,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_21,'Color',cs(rgb(0,0,0)));
insSet(Trail_21,'Texture',"rbxassetid://2108945559");
insSet(Trail_21,'TextureLength',1);
insSet(Trail_21,'LightEmission',1);
insSet(Trail_21,'LightInfluence',0);
insSet(Trail_21,'Brightness',1);
insSet(Trail_21,'Attachment0',Att1_17);
insSet(Trail_21,'Attachment1',Att0_13);


  local model12=i("Model",RealChar)  insSet(model12,"Name","Ring Model1");model12:SetAttribute("ModeAsset",true);local handlex12=CreateParta(model12,1,1,Enum.Material.Neon,rgb(0,0,0));CreateMesh(handlex12,"Brick",v3(0,0,0));local handlexweld12=CreateWeld(handlex12,handlex12,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex12,"Name","Ring_Piece1");insSet(handlex12,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex12,0,0,Enum.Material.Neon,rgb(0,0,0));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex12,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model12:ScaleTo(1) 
  
  local WingAttachmentData={
  [1]=Wing_Piece_1_1,
  [2]=Wing_Piece_2_1,
  [3]=Wing_Piece_4_1,
  [3]=Wing_Piece_5_1,
}
return WingAttachmentData
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=rgb(0,255,0),
SecondaryColor=rgb(0,0,0),
Speed=12,
JumpPower=50,
Title="Chaos",
Key=3,
SecondaryName="Ithios",
Side="Vilrum",-- Spectrum
Desc="Relentless Torment",
SongData={
  title="Theory Of Everything",
  auth="DJ - Nate",
  remix="None",
},
  },

  ["Divinity"]={
WingAnimData=function()
  sine=osclock()
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-4,0),angles(0.08726646259971647+-0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+-0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(cfMul(cf(2,3.5,0),angles(0.08726646259971647+0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(cfMul(cf(2,2,0),angles(0.08726646259971647+0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-5.5,0),angles(0.08726646259971647+-0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0.2617993877991494+-0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-2.5,0),angles(0.08726646259971647+-0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+-0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(cfMul(cf(2,5,0),angles(0.08726646259971647+0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),-0.17453292519943295+0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 

end,
BodyAnimData=function()
  sine=osclock()
 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.7000000000000001,0.1+-0.2*cos((sine*2)+-0.5),0),angles(0.6806784082777885,0.5934119456780721+-0.17453292519943295*sin((sine*2)+0.25),1.6580627893946132)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(0.8,0.2+-0.2*sin((sine*2)+0),-0.2),angles(0.8552113334772214,-0.2617993877991494+0.17453292519943295*cos((sine*2)+-1),-1.53588974175501)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.25,-0.2+-0.2*sin((sine*2)+0),-0.4),angles(-0.3490658503988659+0.2617993877991494*cos((sine*2)+-1),0.5934119456780721+0.17453292519943295*sin((sine*2)+0.5),0.13962634015954636)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-0.9,-0.2),angles(-0.17453292519943295+-0.3490658503988659*sin((sine*2)+-0.5),-0.33161255787892263+0.2617993877991494*cos((sine*2)+0),0.08726646259971647)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,3+-0.35*sin((sine*2)+0),0),angles(0.03490658503988659+-0.17453292519943295*cos((sine*2)+0),-0.4014257279586958,0+0.17453292519943295*sin((sine*1)+0.5))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.10471975511965978+0.2617993877991494*cos((sine*2)+0),0.3490658503988659,0.017453292519943295+0.08726646259971647*sin((sine*1)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local model6=i("Model",RealChar)  insSet(model6,"Name","Ring_Model1");model6:SetAttribute("ModeAsset",true);model6:SetAttribute("TargetColor","None");local handlex6=CreateParta(model6,1,1,Enum.Material.Neon,c3(1.000000,1.000000,0.470588));CreateMesh(handlex6,"Brick",v3(0,0,0));local handlexweld6=CreateWeld(handlex6,handlex6,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex6,"Name","Ring_Piece1");insSet(handlex6,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex6,0,0,Enum.Material.Neon,c3(1.000000,1.000000,0.470588));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex6,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model6:ScaleTo(1)  handlexweld6.Part1=RealChar.Torso for _,e in model6:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-4,0),angles(0.08726646259971647+-0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+-0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,3.5,0),angles(0.08726646259971647+0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,2,0),angles(0.08726646259971647+0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='None',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-5.5,0),angles(0.08726646259971647+-0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+0.2617993877991494*cos((sine*2)+0),0.2617993877991494+-0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='None',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-2.5,0),angles(0.08726646259971647+-0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+-0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,5,0),angles(0.08726646259971647+0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),-0.17453292519943295+0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='None',
},
}  
}
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=c3(1.000000,1.000000,0.392157),
SecondaryColor=c3(1,1,1),
Speed=12,
JumpPower=50,
Title="Divinity",
Key=4,
SecondaryName="Divis",
Side="Vilrum",-- Spectrum
Desc="Divine Sol",
SongData={
  title="Refel",
  auth="Sakuzyo",
  remix="[2018]",
},
  },

  ["Equinox"]={
WingAnimData=function()
  sine=osclock()
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-4,0),angles(0.08726646259971647+-0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+-0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(cfMul(cf(2,3.5,0),angles(0.08726646259971647+0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(cfMul(cf(2,2,0),angles(0.08726646259971647+0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-5.5,0),angles(0.08726646259971647+-0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0.2617993877991494+-0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-2.5,0),angles(0.08726646259971647+-0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+-0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(cfMul(cf(2,5,0),angles(0.08726646259971647+0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),-0.17453292519943295+0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 

end,
BodyAnimData=function()
  sine=osclock()
 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,-0.2+0.25*cos((sine*2)+0),0),angles(2.426007660272118+0.2617993877991494*sin((sine*2)+0),0.5061454830783556,-0.3839724354387525+-0.2617993877991494*cos((sine*2)+0))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0.3+0.2*sin((sine*2)+0),0),angles(1.361356816555577+0.17453292519943295*cos((sine*2)+0),-0.17453292519943295,0.5759586531581288)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.4000000000000001,0.1+0.25*cos((sine*2)+0.25),-0.6000000000000001),angles(-0.4014257279586958+0.17453292519943295*sin((sine*2)+0),0.4886921905584123+-0.17453292519943295*cos((sine*2)+0),0.19198621771937624)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-1+0.2*sin((sine*2)+0),-0.1),angles(-0.22689280275926285+0.2617993877991494*cos((sine*2)+0),-0.5235987755982988+0.17453292519943295*sin((sine*2)+0),-0.10471975511965978)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,3+0.35*sin((sine*2)+0),0),angles(0.19198621771937624+0.17453292519943295*cos((sine*2)+0),0.5934119456780721,-0.03490658503988659+0.17453292519943295*sin((sine*1)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),-0.47123889803846897,-0.15707963267948966+0.17453292519943295*cos((sine*1)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local model6=i("Model",RealChar)  insSet(model6,"Name","Ring_Model1");model6:SetAttribute("ModeAsset",true);model6:SetAttribute("TargetColor","None");local handlex6=CreateParta(model6,1,1,Enum.Material.Neon,c3(0,0,0));CreateMesh(handlex6,"Brick",v3(0,0,0));local handlexweld6=CreateWeld(handlex6,handlex6,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex6,"Name","Ring_Piece1");insSet(handlex6,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex6,0,0,Enum.Material.Neon,c3(0,0,0));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex6,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model6:ScaleTo(1)  handlexweld6.Part1=RealChar.Torso for _,e in model6:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1,1,1),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-4,0),angles(0.08726646259971647+-0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+-0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0,0,0),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,3.5,0),angles(0.08726646259971647+0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0,0,0),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,2,0),angles(0.08726646259971647+0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='None',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1,1,1),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-5.5,0),angles(0.08726646259971647+-0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+0.2617993877991494*cos((sine*2)+0),0.2617993877991494+-0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='None',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1,1,1),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-2.5,0),angles(0.08726646259971647+-0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+-0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0,0,0),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,5,0),angles(0.08726646259971647+0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),-0.17453292519943295+0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='None',
},
}  
}
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=c3(1,1,1),
SecondaryColor=c3(0,0,0),
Speed=12,
JumpPower=50,
Title="Equinox",
Key=5,
SecondaryName="Quis",
Side="Vilrum",-- Spectrum
Desc="None",
SongData={
  title="Ascension to Heaven",
  auth="xi",
  remix="None",
},
  },

  ["Destiny"]={
WingAnimData=function()
  sine=osclock()
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-4,0),angles(0.08726646259971647+-0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+-0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(cfMul(cf(2,3.5,0),angles(0.08726646259971647+0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(cfMul(cf(2,2,0),angles(0.08726646259971647+0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-5.5,0),angles(0.08726646259971647+-0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0.2617993877991494+-0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(cfMul(cf(2,-2.5,0),angles(0.08726646259971647+-0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+-0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(cfMul(cf(2,5,0),angles(0.08726646259971647+0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),-0.17453292519943295+0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966)),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 

end,
BodyAnimData=function()
  sine=osclock()
 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.9,-0.2+0.25*sin((sine*2)+0),0.30000000000000004),angles(2.443460952792061,0.5061454830783556+0.17453292519943295*cos((sine*2)+0),-0.6632251157578453+0.17453292519943295*sin((sine*2)+-0.5))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.2+0.25*cos((sine*2)+0),0.4),angles(2.0420352248333655,-0.7452555906015788+0.3490658503988659*sin((sine*2)+0),0.5218534463463046+-0.2617993877991494*sin((sine*2)+0))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.2000000000000002,-0.1+-0.2*cos((sine*2)+0.5),-0.4),angles(-0.4537856055185257,0.5061454830783556+-0.17453292519943295*sin((sine*2)+0),0.06981317007977318+0.17453292519943295*sin((sine*2)+-0.5))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-1+0.2*sin((sine*2)+0),0),angles(-0.17453292519943295+0.2617993877991494*cos((sine*2)+0),-0.29670597283903605+0.17453292519943295*sin((sine*2)+0),-0.08726646259971647)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,3+0.35*sin((sine*2)+0),0),angles(0.05235987755982989+0.17453292519943295*cos((sine*2)+0),-0.4188790204786391+0.17453292519943295*sin((sine*2)+-0.5),-0.03490658503988659+0.08726646259971647*cos((sine*2)+1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.06981317007977318+-0.17453292519943295*cos((sine*2)+0.5),0.47123889803846897+-0.08726646259971647*sin((sine*2)+0),-0.03490658503988659)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
 
end,
ModeAsset=function()
local model6=i("Model",RealChar)  insSet(model6,"Name","Ring_Model1");model6:SetAttribute("ModeAsset",true);model6:SetAttribute("TargetColor","None");local handlex6=CreateParta(model6,1,1,Enum.Material.Neon,rgb(242,121,255));CreateMesh(handlex6,"Brick",v3(0,0,0));local handlexweld6=CreateWeld(handlex6,handlex6,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex6,"Name","Ring_Piece1");insSet(handlex6,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex6,0,0,Enum.Material.Neon,rgb(242,121,255));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex6,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model6:ScaleTo(1)  handlexweld6.Part1=RealChar.Torso for _,e in model6:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=rgb(242,121,255),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-4,0),angles(0.08726646259971647+-0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+-0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=rgb(242,121,255),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,3.5,0),angles(0.08726646259971647+0.17453292519943295*cos((sine*2)+0.5),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),0+0.3490658503988659*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=rgb(242,121,255),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,2,0),angles(0.08726646259971647+0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='None',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=rgb(242,121,255),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-5.5,0),angles(0.08726646259971647+-0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+0.2617993877991494*cos((sine*2)+0),0.2617993877991494+-0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='None',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=rgb(242,121,255),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,-2.5,0),angles(0.08726646259971647+-0.08726646259971647*cos((sine*2)+1),0+-0.17453292519943295*cos((sine*2)+0),0+-0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=rgb(242,121,255),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(cfMul(cf(2,5,0),angles(0.08726646259971647+0.3490658503988659*cos((sine*2)+0.25),-0.17453292519943295+-0.2617993877991494*cos((sine*2)+0),-0.17453292519943295+0.4363323129985824*sin((sine*2)+0))),angles(-3.141592502593994,0,1.5707963267948966))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='None',
},
}  
}
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=rgb(242,121,255),
SecondaryColor=c3(1,1,1),
Speed=12,
JumpPower=50,
Title="Destiny",
Key=7,
SecondaryName="Varge",
Side="Vilrum",-- Spectrum
Desc="Destined Traverseer",
SongData={
  title="Servants Of The Scourge",
  auth="Dm Dokuro",
  remix="None",
},
  },

  ["SHD"]={
WingAnimData=function()
  sine=osclock()
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0)),cfMul(cf(0.25,2,0),angles(-3.141592653589793,0,rad(240)+6.283185307179586*cos((sine*0.5)+0)+sine*10))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.8726646259971648),cfMul(cf(-1+3*sin((sine*1)+0),-0.25+-5*sin((sine*0.5)+0),0),angles(0,-0.08726646259971647,2.443460952792061+sine))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.8726646259971648),cfMul(cf(-1+3*sin((sine*1)+0),-0.25+-5*sin((sine*0.5)+0),0),angles(0,-0.08726646259971647,0.5235987755982988+sine))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0)),cfMul(cf(0.25,2,0),angles(-3.141592653589793,0,rad(120)+6.283185307179586*cos((sine*0.5)+0)+sine*10))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0)),cfMul(cf(0.25,2,0),angles(-3.141592653589793,0,6.283185307179586*cos((sine*0.5)+0)+sine*10))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.8726646259971648),cfMul(cf(-1+3*sin((sine*1)+0),-0.25+-5*sin((sine*0.5)+0),0),angles(0,-0.08726646259971647,-1.5707963267948966+sine))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso

end,
BodyAnimData=function()
  sine=osclock()
 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.5+0.25*sin((sine*2)+0),-0.2),angles(1.5882496193148399+-0.17453292519943295*cos((sine*2)+0),0.10471975511965978,-0.8203047484373349)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.4+0.25*sin((sine*2)+0.5),0),angles(2.321287905152458+-0.17453292519943295*sin((sine*2)+0),-0.22689280275926285,0.47123889803846897+-0.17453292519943295*cos((sine*2)+0))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.3,-0.2+0.2*sin((sine*2)+0),-0.2),angles(-0.2617993877991494+-0.2617993877991494*cos((sine*2)+-0.5),0.47123889803846897,0.19198621771937624+0.17453292519943295*sin((sine*2)+0.5))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.2000000000000002,-1+0.2*sin((sine*2)+0),-0.4),angles(-0.17453292519943295+0.08726646259971647*sin((sine*2)+0),0.3665191429188092,0.17453292519943295+-0.17453292519943295*cos((sine*2)+1))),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,3+0.5*cos((sine*2)+0),0),angles(0.10471975511965978+0.17453292519943295*sin((sine*2)+0),-0.7504915783575618,-0.03490658503988659+0.08726646259971647*cos((sine*2)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.05235987755982989+0.17453292519943295*sin((sine*2)+-1),0.767944870877505,0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
 
end,
ModeAsset=function()
local model6=i("Model",RealChar)  insSet(model6,"Name","Ring_Model1");model6:SetAttribute("ModeAsset",true);model6:SetAttribute("TargetColor","None");local handlex6=CreateParta(model6,1,1,Enum.Material.Neon,c3(0.254902,0.474510,1.000000));CreateMesh(handlex6,"Brick",v3(0,0,0));local handlexweld6=CreateWeld(handlex6,handlex6,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex6,"Name","Ring_Piece1");insSet(handlex6,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex6,0,0,Enum.Material.Neon,c3(0.254902,0.474510,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex6,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model6:ScaleTo(1)  handlexweld6.Part1=RealChar.Torso for _,e in model6:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.788235,0.474510,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0)),cfMul(cf(0.25,2,0),angles(-3.141592653589793,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0))))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.788235,0.474510,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,0.8726646259971648),cfMul(cf(-1+3*sin((sine*1)+0),-0.25+-5*sin((sine*0.5)+0),0),angles(0,-0.08726646259971647,2.443460952792061)))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.788235,0.474510,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,0.8726646259971648),cfMul(cf(-1+3*sin((sine*1)+0),-0.25+-5*sin((sine*0.5)+0),0),angles(0,-0.08726646259971647,0.5235987755982988)))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='None',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.788235,0.474510,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0)),cfMul(cf(0.25,2,0),angles(-3.141592653589793,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0))))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='None',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.788235,0.474510,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0)),cfMul(cf(0.25,2,0),angles(-3.141592653589793,0,1.5707963267948966+6.283185307179586*cos((sine*0.5)+0))))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.788235,0.474510,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,0.8726646259971648),cfMul(cf(-1+3*sin((sine*1)+0),-0.25+-5*sin((sine*0.5)+0),0),angles(0,-0.08726646259971647,-1.5707963267948966)))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='None',
},
}
}
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=c3(0.788235,0.474510,1.000000),
SecondaryColor=c3(0.254902,0.474510,1.000000),
Speed=12,
JumpPower=50,
Title="SHD",
Key=nil,
SecondaryName="Vulrem",
Side="Vilrum",-- Spectrum
Desc="None",
SongData={
  title="We Want To Run",
  auth="Frums",
  remix="None",
},
  },



  ["Hyperspeed"]={
WingAnimData=function()
  sine=osclock()
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4+1*sin((sine*1)+0),0),angles(-0.4363323129985824,0.08726646259971647,3.141592653589793+6.283185307179586*cos((sine*0.5)+0)))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4+1*sin((sine*1)+0),0),angles(0,0.08726646259971647,0+6.283185307179586*cos((sine*0.5)+0)))),0.5)
RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4+1*sin((sine*1)+0),0),angles(-0.4363323129985824,0.08726646259971647,1.0471975511965976+6.283185307179586*cos((sine*0.5)+0)))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4+1*sin((sine*1)+0),0),angles(-0.4363323129985824,0.08726646259971647,5.235987755982989+6.283185307179586*cos((sine*0.5)+0)))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4+1*sin((sine*1)+0),0),angles(0,0.08726646259971647,4.1887902047863905+6.283185307179586*cos((sine*0.5)+0)))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4+1*sin((sine*1)+0),0),angles(0,0.08726646259971647,2.0943951023931953+6.283185307179586*cos((sine*0.5)+0)))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1
end,
BodyAnimData=function()
  sine=osclock()
 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,-2,-1.1),angles(0.3839724354387525,-0.5113814708343386,-0.04886921905584123)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0= RealChar.HumanoidRootPart
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.2+-0.2*sin((sine*2)+-0.5),0.5),angles(-0.7853981633974483+-0.2617993877991494*cos((sine*2)+0.5),-0.17453292519943295,0.6283185307179586)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0= RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-1.9000000000000001,0.5),angles(-1.1554079648202462,0.12217304763960307,-0.3560471674068433)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0= RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.3,-1,0),angles(0.14835298641951802,-0.6702064327658226,0.21642082724729686)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0= RealChar.HumanoidRootPart
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,-0.6000000000000001+0.15*cos((sine*2)+0),0),angles(-0.8377580409572782+0.08726646259971647*sin((sine*2)+0.5),-0.3665191429188092,0+0.17453292519943295*sin((sine*1)+-1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0= RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(0.5585053606381855+-0.17453292519943295*cos((sine*2)+0.5),0.22689280275926285,-0.15707963267948966+-0.17453292519943295*sin((sine*1)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0= RealChar.Torso
end,
ModeAsset=function()

 Wing_Model5_1=i("Model",  RealChar)
insSet(Wing_Model5_1,'Name',"Wing_Model5");
Wing_Model5_1:ScaleTo(1);
Wing_Model5_1:SetAttribute("ModeAsset", true)


 Wing_Piece_5_2=i("Part", Wing_Model5_1)
insSet(Wing_Piece_5_2,'Name',"Wing_Piece_5");
insSet(Wing_Piece_5_2,'Anchored',false);
insSet(Wing_Piece_5_2,'CanCollide',false);
insSet(Wing_Piece_5_2,'CanQuery',true);
insSet(Wing_Piece_5_2,'CanTouch',true);
insSet(Wing_Piece_5_2,'Transparency',1);
insSet(Wing_Piece_5_2,'Reflectance',1);
insSet(Wing_Piece_5_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_5_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_5_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_5_2,'CastShadow',true);
insSet(Wing_Piece_5_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_5_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,-0.5346417427062988,-0.7327409386634827,0.42101016640663147,-0.7802411913871765,0.6193767786026001,0.08715590834617615,-0.3246266543865204,-0.2818922698497772,-0.9028593301773071));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_5_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_5_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_5_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_5_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,-1,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_5_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_5_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_5_2=i("Part", Wing_Model5)
insSet(Wing_Piece_5_2,'Name',"Wing_Piece_5");
insSet(Wing_Piece_5_2,'Anchored',false);
insSet(Wing_Piece_5_2,'CanCollide',false);
insSet(Wing_Piece_5_2,'CanQuery',true);
insSet(Wing_Piece_5_2,'CanTouch',true);
insSet(Wing_Piece_5_2,'Transparency',1);
insSet(Wing_Piece_5_2,'Reflectance',1);
insSet(Wing_Piece_5_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_5_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_5_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_5_2,'CastShadow',true);
insSet(Wing_Piece_5_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_5_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,-0.5346417427062988,-0.7327409386634827,0.42101016640663147,-0.7802411913871765,0.6193767786026001,0.08715590834617615,-0.3246266543865204,-0.2818922698497772,-0.9028593301773071));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_5_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_5_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_5_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_5_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,-1,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_5_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_5_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 WingModel1_1=i("Model",  RealChar)
insSet(WingModel1_1,'Name',"Wing Model1");
WingModel1_1:ScaleTo(1);
WingModel1_1:SetAttribute("ModeAsset", true)


 Wing_Piece_1_2=i("Part", WingModel1_1)
insSet(Wing_Piece_1_2,'Name',"Wing_Piece_1");
insSet(Wing_Piece_1_2,'Anchored',false);
insSet(Wing_Piece_1_2,'CanCollide',false);
insSet(Wing_Piece_1_2,'CanQuery',true);
insSet(Wing_Piece_1_2,'CanTouch',true);
insSet(Wing_Piece_1_2,'Transparency',1);
insSet(Wing_Piece_1_2,'Reflectance',1);
insSet(Wing_Piece_1_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_1_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_1_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_1_2,'CastShadow',true);
insSet(Wing_Piece_1_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_1_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,0.6217426657676697,0.7832216620445251,-7.450580596923828e-09,0.7802413105964661,-0.6193772554397583,0.08715589344501495,0.06826236099004745,-0.054188549518585205,-0.9961951971054077));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_1_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_1_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_1_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_1_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_1_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_1_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_1_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_1_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://2108945559");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_1_2=i("Part",WingModel1_1)
insSet(Wing_Piece_1_2,'Name',"Wing_Piece_1");
insSet(Wing_Piece_1_2,'Anchored',false);
insSet(Wing_Piece_1_2,'CanCollide',false);
insSet(Wing_Piece_1_2,'CanQuery',true);
insSet(Wing_Piece_1_2,'CanTouch',true);
insSet(Wing_Piece_1_2,'Transparency',1);
insSet(Wing_Piece_1_2,'Reflectance',1);
insSet(Wing_Piece_1_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_1_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_1_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_1_2,'CastShadow',true);
insSet(Wing_Piece_1_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_1_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,0.6217426657676697,0.7832216620445251,-7.450580596923828e-09,0.7802413105964661,-0.6193772554397583,0.08715589344501495,0.06826236099004745,-0.054188549518585205,-0.9961951971054077));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_1_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_1_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_1_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_1_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_1_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_1_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_1_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_1_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://2108945559");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Model4_1=i("Model",  RealChar)
insSet(Wing_Model4_1,'Name',"Wing_Model4");
Wing_Model4_1:ScaleTo(1);
Wing_Model4_1:SetAttribute("ModeAsset", true)


 Wing_Piece_4_2=i("Part", Wing_Model4_1)
insSet(Wing_Piece_4_2,'Name',"Wing_Piece_4");
insSet(Wing_Piece_4_2,'Anchored',false);
insSet(Wing_Piece_4_2,'CanCollide',false);
insSet(Wing_Piece_4_2,'CanQuery',true);
insSet(Wing_Piece_4_2,'CanTouch',true);
insSet(Wing_Piece_4_2,'Transparency',1);
insSet(Wing_Piece_4_2,'Reflectance',1);
insSet(Wing_Piece_4_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_4_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_4_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_4_2,'CastShadow',true);
insSet(Wing_Piece_4_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_4_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,0.9018928408622742,-0.09664282947778702,0.4210101068019867,-0.14627575874328613,-0.9853971004486084,0.08715590089559555,0.4064390957355499,-0.14018884301185608,-0.902859091758728));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_4_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_4_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_4_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_4_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,-1,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_4_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_4_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_4_2=i("Part", Wing_Model4)
insSet(Wing_Piece_4_2,'Name',"Wing_Piece_4");
insSet(Wing_Piece_4_2,'Anchored',false);
insSet(Wing_Piece_4_2,'CanCollide',false);
insSet(Wing_Piece_4_2,'CanQuery',true);
insSet(Wing_Piece_4_2,'CanTouch',true);
insSet(Wing_Piece_4_2,'Transparency',1);
insSet(Wing_Piece_4_2,'Reflectance',1);
insSet(Wing_Piece_4_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_4_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_4_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_4_2,'CastShadow',true);
insSet(Wing_Piece_4_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_4_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,0.9018928408622742,-0.09664282947778702,0.4210101068019867,-0.14627575874328613,-0.9853971004486084,0.08715590089559555,0.4064390957355499,-0.14018884301185608,-0.902859091758728));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_4_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_4_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_4_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_4_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,-1,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_4_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_4_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));

insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Model6_1=i("Model",  RealChar)
insSet(Wing_Model6_1,'Name',"Wing_Model6");
Wing_Model6_1:ScaleTo(1);
Wing_Model6_1:SetAttribute("ModeAsset", true)


 Wing_Piece_6_2=i("Part", Wing_Model6_1)
insSet(Wing_Piece_6_2,'Name',"Wing_Piece_6");
insSet(Wing_Piece_6_2,'Anchored',false);
insSet(Wing_Piece_6_2,'CanCollide',false);
insSet(Wing_Piece_6_2,'CanQuery',true);
insSet(Wing_Piece_6_2,'CanTouch',true);
insSet(Wing_Piece_6_2,'Transparency',1);
insSet(Wing_Piece_6_2,'Reflectance',1);
insSet(Wing_Piece_6_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_6_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_6_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_6_2,'CastShadow',true);
insSet(Wing_Piece_6_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_6_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,-0.36725127696990967,0.8293834328651428,0.42101001739501953,0.926516592502594,0.366020143032074,0.08715587854385376,-0.08181248605251312,0.422080934047699,-0.9028589725494385));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_6_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_6_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_6_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_6_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,-1,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_6_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_6_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_6_2=i("Part", Wing_Model6)
insSet(Wing_Piece_6_2,'Name',"Wing_Piece_6");
insSet(Wing_Piece_6_2,'Anchored',false);
insSet(Wing_Piece_6_2,'CanCollide',false);
insSet(Wing_Piece_6_2,'CanQuery',true);
insSet(Wing_Piece_6_2,'CanTouch',true);
insSet(Wing_Piece_6_2,'Transparency',1);
insSet(Wing_Piece_6_2,'Reflectance',1);
insSet(Wing_Piece_6_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_6_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_6_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_6_2,'CastShadow',true);
insSet(Wing_Piece_6_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_6_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,-0.36725127696990967,0.8293834328651428,0.42101001739501953,0.926516592502594,0.366020143032074,0.08715587854385376,-0.08181248605251312,0.422080934047699,-0.9028589725494385));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_6_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_6_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_6_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_6_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,-1,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_6_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_6_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));

insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Model3_1=i("Model",  RealChar)
insSet(Wing_Model3_1,'Name',"Wing_Model3");
Wing_Model3_1:ScaleTo(1);
Wing_Model3_1:SetAttribute("ModeAsset", true)


 Wing_Piece_3_2=i("Part", Wing_Model3_1)
insSet(Wing_Piece_3_2,'Name',"Wing_Piece_3");
insSet(Wing_Piece_3_2,'Anchored',false);
insSet(Wing_Piece_3_2,'CanCollide',false);
insSet(Wing_Piece_3_2,'CanQuery',true);
insSet(Wing_Piece_3_2,'CanTouch',true);
insSet(Wing_Piece_3_2,'Transparency',1);
insSet(Wing_Piece_3_2,'Reflectance',1);
insSet(Wing_Piece_3_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_3_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_3_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_3_2,'CastShadow',true);
insSet(Wing_Piece_3_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_3_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,-0.9891613721847534,0.1468343585729599,-3.259629011154175e-09,0.146275594830513,0.9853970408439636,0.08715590834617615,0.012797482311725616,0.08621123433113098,-0.9961949586868286));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_3_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_3_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_3_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_3_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_3_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_3_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://2108945559");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_3_2=i("Part", Wing_Model3)
insSet(Wing_Piece_3_2,'Name',"Wing_Piece_3");
insSet(Wing_Piece_3_2,'Anchored',false);
insSet(Wing_Piece_3_2,'CanCollide',false);
insSet(Wing_Piece_3_2,'CanQuery',true);
insSet(Wing_Piece_3_2,'CanTouch',true);
insSet(Wing_Piece_3_2,'Transparency',1);
insSet(Wing_Piece_3_2,'Reflectance',1);
insSet(Wing_Piece_3_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_3_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_3_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_3_2,'CastShadow',true);
insSet(Wing_Piece_3_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_3_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,-0.9891613721847534,0.1468343585729599,-3.259629011154175e-09,0.146275594830513,0.9853970408439636,0.08715590834617615,0.012797482311725616,0.08621123433113098,-0.9961949586868286));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_3_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_3_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_3_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_3_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_3_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_3_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://2108945559");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Model2_1=i("Model",  RealChar)
insSet(Wing_Model2_1,'Name',"Wing_Model2");
Wing_Model2_1:ScaleTo(1);
Wing_Model2_1:SetAttribute("ModeAsset", true)


 Wing_Piece_2_2=i("Part", Wing_Model2_1)
insSet(Wing_Piece_2_2,'Name',"Wing_Piece_2");
insSet(Wing_Piece_2_2,'Anchored',false);
insSet(Wing_Piece_2_2,'CanCollide',false);
insSet(Wing_Piece_2_2,'CanQuery',true);
insSet(Wing_Piece_2_2,'CanTouch',true);
insSet(Wing_Piece_2_2,'Transparency',1);
insSet(Wing_Piece_2_2,'Reflectance',1);
insSet(Wing_Piece_2_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_2_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_2_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_2_2,'CastShadow',true);
insSet(Wing_Piece_2_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_2_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,0.36741822957992554,-0.9300559759140015,-3.725290298461914e-09,-0.9265167713165283,-0.3660203218460083,0.08715589344501495,-0.08105984330177307,-0.03202266991138458,-0.9961949586868286));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_2_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_2_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_2_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_2_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_2_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_2_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));


insSet(Trail_22,'Texture',"rbxassetid://2108945559");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_2_2=i("Part", Wing_Model2)
insSet(Wing_Piece_2_2,'Name',"Wing_Piece_2");
insSet(Wing_Piece_2_2,'Anchored',false);
insSet(Wing_Piece_2_2,'CanCollide',false);
insSet(Wing_Piece_2_2,'CanQuery',true);
insSet(Wing_Piece_2_2,'CanTouch',true);
insSet(Wing_Piece_2_2,'Transparency',1);
insSet(Wing_Piece_2_2,'Reflectance',1);
insSet(Wing_Piece_2_2,'Color',c3(0.000000,1.000000,1.000000));
insSet(Wing_Piece_2_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_2_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_2_2,'CastShadow',true);
insSet(Wing_Piece_2_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_2_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(3.198367118835449,-0.24999985098838806,-3.774892576302591e-08,0.36741822957992554,-0.9300559759140015,-3.725290298461914e-09,-0.9265167713165283,-0.3660203218460083,0.08715589344501495,-0.08105984330177307,-0.03202266991138458,-0.9961949586868286));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_2_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_2_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_2_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_2_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_2_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,30.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-1.75,0.25,4.371138828673793e-08,1,8.742277657347586e-08,-4.371139183945161e-08,-8.742277657347586e-08,1,1,-4.371139183945161e-08,4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_2_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,30.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-1.75,0.25,1.910685465164705e-15,4.371138828673793e-08,1,-8.742277657347586e-08,-1,4.371138828673793e-08,1,-8.742277657347586e-08,1.910685465164705e-15));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,1.000000,1.000000)),csk(1.000000,c3(0.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://2108945559");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


  local model12=i("Model",RealChar)  insSet(model12,"Name","Ring_Model1");model12:SetAttribute("ModeAsset",true);local handlex12=CreateParta(model12,1,1,Enum.Material.Neon,c3(0.000000,0.392157,1.000000));CreateMesh(handlex12,"Brick",v3(0,0,0));local handlexweld12=CreateWeld(handlex12,handlex12,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex12,"Name","Ring_Piece1");insSet(handlex12,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex12,0,0,Enum.Material.Neon,c3(0.000000,0.392157,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex12,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model12:ScaleTo(0.75)  handlexweld12.Part1= RealChar.Torso for _,e in model12:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end


  handlexweld12.C0=Lerp(handlexweld12.C0,cfMul(cfMul(cf(0,0,2),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5) 

end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=c3(0.000000,0.392157,1.000000),
SecondaryColor=c3(0.000000,1.000000,1.000000),
Speed=12,
JumpPower=50,
Title="Hyperspeed",
Key=nil,
SecondaryName="Hyios",
Side="Harquinn",-- Anvarius
Desc="The Speedster",
SongData={
  title="The Quick Brown Fox",
  auth="Electrohell - Lucas Mota",
  remix="None",
},
  },

  ["Epistulius"]={
WingAnimData=function()
  sine=osclock()
  local RotOnce=RotateOnce(1,90)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.275,4,0),angles(0,0.08726646259971647,1.5707963267948966))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(0,2.4000000000000004,0.4),angles(0,1.6580627893946132,0))),0.5)
RealChar["Wing Model1"].Wing_Piece_1["Wing Weld:3"].Part1=RealChar["Left Arm"] RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.275,4,0),angles(0,0.08726646259971647,1.5707963267948966))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model4.Ring_Piece4 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.275,4,0),angles(0,0.08726646259971647,1.5707963267948966))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model2.Ring_Piece2 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.275,4,0),angles(0,0.08726646259971647,1.5707963267948966))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model3.Ring_Piece3 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(0,2.4000000000000004,-0.4),angles(0,1.6580627893946132,0))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar["Right Arm"] 
local handlexweld10=RealChar:FindFirstChild("Ring_Model2")["Ring_Piece2"]["Wing Weld:3"]
local handlexweld12=RealChar:FindFirstChild("Ring_Model4")["Ring_Piece4"]["Wing Weld:3"]
local handlexweld7=RealChar:FindFirstChild("Ring_Model3")["Ring_Piece3"]["Wing Weld:3"]
local handlexweld15=RealChar:FindFirstChild("Ring_Model1")["Ring_Piece1"]["Wing Weld:3"]
handlexweld7.C0=Lerp(handlexweld7.C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(1+1*cos((sine*1)+0),0,-1.0499999523162842),angles(0,0,4.71238898038469+RotOnce))),0.5) 

 handlexweld10.C0=Lerp(handlexweld10.C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(1+1*cos((sine*1)+0),0,-1.0499999523162842),angles(0,0,3.141592653589793+RotOnce))),0.5) 

 handlexweld12.C0=Lerp(handlexweld12.C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(1+1*cos((sine*1)+0),0,-1.0499999523162842),angles(0,0,1.5707963267948966+RotOnce))),0.5) 

 handlexweld15.C0=Lerp(handlexweld15.C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(1+1*cos((sine*1)+0),0,-1.0499999523162842),angles(0,0,0+RotOnce))),0.5) 
end,
BodyAnimData=function()
  sine=osclock()
 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.4+0.15*sin((sine*2)+0),-0),angles(0.9424777960769379,0.04014257279586959+-0.2617993877991494*cos((sine*2)+-0.25),1.0821041362364843)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.2+-0.15*cos((sine*2)+0),0.30000000000000004),angles(2.2689280275926285+0.17453292519943295*sin((sine*2)+-0.5),-0.06981317007977318,0.3490658503988659)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-1.1,-0.6000000000000001),angles(0.15707963267948966,0.4886921905584123,-0.10471975511965978)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.3,-1.3,0.2),angles(-0.2792526803190927,-0.47123889803846897,0.22689280275926285)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.HumanoidRootPart
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,0+0.2*sin((sine*2)+0),0),angles(-0.06981317007977318+0.08726646259971647*sin((sine*2)+1),-0.5410520681182421,0+-0.08726646259971647*cos((sine*1)+1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.12217304763960307+0.17453292519943295*sin((sine*2)+0),0.4886921905584123,0.12217304763960307+-0.08726646259971647*cos((sine*1)+-1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
function W1()
 Wing_Model5_1=i("Model", RealChar)
insSet(Wing_Model5_1,'Name',"Wing_Model5");
Wing_Model5_1:ScaleTo(1);
Wing_Model5_1:SetAttribute("ModeAsset", true)


 Wing_Piece_5_2=i("Part", Wing_Model5_1)
insSet(Wing_Piece_5_2,'Name',"Wing_Piece_5");
insSet(Wing_Piece_5_2,'Anchored',false);
insSet(Wing_Piece_5_2,'CanCollide',false);
insSet(Wing_Piece_5_2,'CanQuery',true);
insSet(Wing_Piece_5_2,'CanTouch',true);
insSet(Wing_Piece_5_2,'Transparency',1);
insSet(Wing_Piece_5_2,'Reflectance',1);
insSet(Wing_Piece_5_2,'Color',c3(1.000000,1.000000,1.000000));
insSet(Wing_Piece_5_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_5_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_5_2,'CastShadow',true);
insSet(Wing_Piece_5_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_5_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_5_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(1.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_5_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_5_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_5_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_5_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_5_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(1.000000,1.000000,1.000000)),csk(1.000000,c3(1.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_5_2=i("Part", Wing_Model5)
insSet(Wing_Piece_5_2,'Name',"Wing_Piece_5");
insSet(Wing_Piece_5_2,'Anchored',false);
insSet(Wing_Piece_5_2,'CanCollide',false);
insSet(Wing_Piece_5_2,'CanQuery',true);
insSet(Wing_Piece_5_2,'CanTouch',true);
insSet(Wing_Piece_5_2,'Transparency',1);
insSet(Wing_Piece_5_2,'Reflectance',1);
insSet(Wing_Piece_5_2,'Color',c3(1.000000,1.000000,1.000000));
insSet(Wing_Piece_5_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_5_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_5_2,'CastShadow',true);
insSet(Wing_Piece_5_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_5_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_3,'Part1',Ring_Piece1_4);


 Part_5=i("Part", Wing_Piece_5_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(1.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_5_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_5_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_5_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_5_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_5_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_5_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(1.000000,1.000000,1.000000)),csk(1.000000,c3(1.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 WingModel1_1=i("Model", RealChar)
insSet(WingModel1_1,'Name',"Wing Model1");
WingModel1_1:ScaleTo(1);
WingModel1_1:SetAttribute("ModeAsset", true)


 Wing_Piece_1_2=i("Part", WingModel1_1)
insSet(Wing_Piece_1_2,'Name',"Wing_Piece_1");
insSet(Wing_Piece_1_2,'Anchored',false);
insSet(Wing_Piece_1_2,'CanCollide',false);
insSet(Wing_Piece_1_2,'CanQuery',true);
insSet(Wing_Piece_1_2,'CanTouch',true);
insSet(Wing_Piece_1_2,'Transparency',1);
insSet(Wing_Piece_1_2,'Reflectance',1);
insSet(Wing_Piece_1_2,'Color',c3(1.000000,1.000000,1.000000));
insSet(Wing_Piece_1_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_1_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_1_2,'CastShadow',true);
insSet(Wing_Piece_1_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_1_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(2.4000000953674316,1.6530566426808946e-07,-0.3999999761581421,0,1,0,-0.0871557891368866,0,0.9961947202682495,0.9961947202682495,0,0.08715575933456421));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_1_2);
insSet(WingWeld3_3,'Part1',LeftArm_4);


 Part_5=i("Part", Wing_Piece_1_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(1.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_1_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_1_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_1_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_1_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_1_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_1_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(1.000000,1.000000,1.000000)),csk(1.000000,c3(1.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_4_2=i("Part", Wing_Model4_1)
insSet(Wing_Piece_4_2,'Name',"Wing_Piece_4");
insSet(Wing_Piece_4_2,'Anchored',false);
insSet(Wing_Piece_4_2,'CanCollide',false);
insSet(Wing_Piece_4_2,'CanQuery',true);
insSet(Wing_Piece_4_2,'CanTouch',true);
insSet(Wing_Piece_4_2,'Transparency',1);
insSet(Wing_Piece_4_2,'Reflectance',1);
insSet(Wing_Piece_4_2,'Color',c3(0.000000,0.000000,1.000000));
insSet(Wing_Piece_4_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_4_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_4_2,'CastShadow',true);
insSet(Wing_Piece_4_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_4_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_3,'Part1',Ring_Piece4_4);


 Part_5=i("Part", Wing_Piece_4_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,0.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_4_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_4_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_4_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_4_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_4_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,0.000000,1.000000)),csk(1.000000,c3(0.000000,0.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
end 
W1()
function W2()
Wing_Model5_1=i("Model", RealChar)
insSet(Wing_Model5_1,'Name',"Wing_Model4");
Wing_Model5_1:ScaleTo(1);
Wing_Model5_1:SetAttribute("ModeAsset", true)

 Wing_Piece_4_2=i("Part", Wing_Model5_1)
insSet(Wing_Piece_4_2,'Name',"Wing_Piece_4");
insSet(Wing_Piece_4_2,'Anchored',false);
insSet(Wing_Piece_4_2,'CanCollide',false);
insSet(Wing_Piece_4_2,'CanQuery',true);
insSet(Wing_Piece_4_2,'CanTouch',true);
insSet(Wing_Piece_4_2,'Transparency',1);
insSet(Wing_Piece_4_2,'Reflectance',1);
insSet(Wing_Piece_4_2,'Color',c3(0.000000,0.000000,1.000000));
insSet(Wing_Piece_4_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_4_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_4_2,'CastShadow',true);
insSet(Wing_Piece_4_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_4_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_3,'Part1',Ring_Piece4_4);


 Part_5=i("Part", Wing_Piece_4_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,0.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_4_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_4_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_4_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_4_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_4_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_4_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,0.000000,1.000000)),csk(1.000000,c3(0.000000,0.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
end
W2()
function W2()
 Wing_Model6_1=i("Model", RealChar)
insSet(Wing_Model6_1,'Name',"Wing_Model6");
Wing_Model6_1:ScaleTo(1);
Wing_Model6_1:SetAttribute("ModeAsset", true)


 Wing_Piece_6_2=i("Part", Wing_Model6_1)
insSet(Wing_Piece_6_2,'Name',"Wing_Piece_6");
insSet(Wing_Piece_6_2,'Anchored',false);
insSet(Wing_Piece_6_2,'CanCollide',false);
insSet(Wing_Piece_6_2,'CanQuery',true);
insSet(Wing_Piece_6_2,'CanTouch',true);
insSet(Wing_Piece_6_2,'Transparency',1);
insSet(Wing_Piece_6_2,'Reflectance',1);
insSet(Wing_Piece_6_2,'Color',c3(1.000000,1.000000,1.000000));
insSet(Wing_Piece_6_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_6_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_6_2,'CastShadow',true);
insSet(Wing_Piece_6_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_6_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_3,'Part1',Ring_Piece2_4);


 Part_5=i("Part", Wing_Piece_6_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(1.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_6_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_6_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_6_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_6_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_6_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(1.000000,1.000000,1.000000)),csk(1.000000,c3(1.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);

 Wing_Piece_6_2=i("Part", Wing_Model6)
insSet(Wing_Piece_6_2,'Name',"Wing_Piece_6");
insSet(Wing_Piece_6_2,'Anchored',false);
insSet(Wing_Piece_6_2,'CanCollide',false);
insSet(Wing_Piece_6_2,'CanQuery',true);
insSet(Wing_Piece_6_2,'CanTouch',true);
insSet(Wing_Piece_6_2,'Transparency',1);
insSet(Wing_Piece_6_2,'Reflectance',1);
insSet(Wing_Piece_6_2,'Color',c3(1.000000,1.000000,1.000000));
insSet(Wing_Piece_6_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_6_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_6_2,'CastShadow',true);
insSet(Wing_Piece_6_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_6_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_3,'Part1',Ring_Piece2_4);


 Part_5=i("Part", Wing_Piece_6_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(1.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_6_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_6_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_6_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_6_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_6_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_6_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(1.000000,1.000000,1.000000)),csk(1.000000,c3(1.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

end

W2()
function W3()
 Wing_Model3_1=i("Model", RealChar)
insSet(Wing_Model3_1,'Name',"Wing_Model3");
Wing_Model3_1:ScaleTo(1);
Wing_Model3_1:SetAttribute("ModeAsset", true)


 Wing_Piece_3_2=i("Part", Wing_Model3_1)
insSet(Wing_Piece_3_2,'Name',"Wing_Piece_3");
insSet(Wing_Piece_3_2,'Anchored',false);
insSet(Wing_Piece_3_2,'CanCollide',false);
insSet(Wing_Piece_3_2,'CanQuery',true);
insSet(Wing_Piece_3_2,'CanTouch',true);
insSet(Wing_Piece_3_2,'Transparency',1);
insSet(Wing_Piece_3_2,'Reflectance',1);
insSet(Wing_Piece_3_2,'Color',c3(0.000000,0.000000,1.000000));
insSet(Wing_Piece_3_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_3_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_3_2,'CastShadow',true);
insSet(Wing_Piece_3_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_3_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_3,'Part1',Ring_Piece3_4);


 Part_5=i("Part", Wing_Piece_3_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,0.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_3_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_3_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_3_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_3_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_3_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,0.000000,1.000000)),csk(1.000000,c3(0.000000,0.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_3_2=i("Part", Wing_Model3)
insSet(Wing_Piece_3_2,'Name',"Wing_Piece_3");
insSet(Wing_Piece_3_2,'Anchored',false);
insSet(Wing_Piece_3_2,'CanCollide',false);
insSet(Wing_Piece_3_2,'CanQuery',true);
insSet(Wing_Piece_3_2,'CanTouch',true);
insSet(Wing_Piece_3_2,'Transparency',1);
insSet(Wing_Piece_3_2,'Reflectance',1);
insSet(Wing_Piece_3_2,'Color',c3(0.000000,0.000000,1.000000));
insSet(Wing_Piece_3_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_3_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_3_2,'CastShadow',true);
insSet(Wing_Piece_3_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_3_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(4,-0.27499979734420776,-4.1523819049871236e-08,1,-1.6633507071706077e-10,-3.809698778667325e-09,1.663356535841487e-10,-0.9961947202682495,0.08715590834617615,-3.809698778667325e-09,-0.08715590834617615,-0.9961947202682495));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_3,'Part1',Ring_Piece3_4);


 Part_5=i("Part", Wing_Piece_3_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(0.000000,0.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_3_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_3_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_3_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_3_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_3_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(0.000000,0.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_3_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(0.000000,0.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(0.000000,0.000000,1.000000)),csk(1.000000,c3(0.000000,0.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
end
W3()
function W4()
 Wing_Model2_1=i("Model", RealChar)
insSet(Wing_Model2_1,'Name',"Wing_Model2");
Wing_Model2_1:ScaleTo(1);
Wing_Model2_1:SetAttribute("ModeAsset", true)


 Wing_Piece_2_2=i("Part", Wing_Model2_1)
insSet(Wing_Piece_2_2,'Name',"Wing_Piece_2");
insSet(Wing_Piece_2_2,'Anchored',false);
insSet(Wing_Piece_2_2,'CanCollide',false);
insSet(Wing_Piece_2_2,'CanQuery',true);
insSet(Wing_Piece_2_2,'CanTouch',true);
insSet(Wing_Piece_2_2,'Transparency',1);
insSet(Wing_Piece_2_2,'Reflectance',1);
insSet(Wing_Piece_2_2,'Color',c3(1.000000,1.000000,1.000000));
insSet(Wing_Piece_2_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_2_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_2_2,'CastShadow',true);
insSet(Wing_Piece_2_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_2_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(2.4000000953674316,4.450901514019279e-08,0.40000003576278687,0,1,0,-0.0871557891368866,0,0.9961947202682495,0.9961947202682495,0,0.08715575933456421));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_3,'Part1',RightArm_4);


 Part_5=i("Part", Wing_Piece_2_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(1.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_2_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_2_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_2_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_2_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_2_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(1.000000,1.000000,1.000000)),csk(1.000000,c3(1.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);


 Wing_Piece_2_2=i("Part", Wing_Model2)
insSet(Wing_Piece_2_2,'Name',"Wing_Piece_2");
insSet(Wing_Piece_2_2,'Anchored',false);
insSet(Wing_Piece_2_2,'CanCollide',false);
insSet(Wing_Piece_2_2,'CanQuery',true);
insSet(Wing_Piece_2_2,'CanTouch',true);
insSet(Wing_Piece_2_2,'Transparency',1);
insSet(Wing_Piece_2_2,'Reflectance',1);
insSet(Wing_Piece_2_2,'Color',c3(1.000000,1.000000,1.000000));
insSet(Wing_Piece_2_2,'Material',Enum.Material.Neon);
insSet(Wing_Piece_2_2,'Size',v3(0.100000,0.100000,0.100000));
insSet(Wing_Piece_2_2,'CastShadow',true);
insSet(Wing_Piece_2_2,'Massless',false);


 WingWeld3_3=i("Weld", Wing_Piece_2_2)
insSet(WingWeld3_3,'Name',"Wing Weld:3");
insSet(WingWeld3_3,'Enabled',true);
insSet(WingWeld3_3,'C0',cf(2.4000000953674316,4.450901514019279e-08,0.40000003576278687,0,1,0,-0.0871557891368866,0,0.9961947202682495,0.9961947202682495,0,0.08715575933456421));
insSet(WingWeld3_3,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_3,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_3,'Part1',RightArm_4);


 Part_5=i("Part", Wing_Piece_2_2)
insSet(Part_5,'Name',"Part");
insSet(Part_5,'Anchored',false);
insSet(Part_5,'CanCollide',false);
insSet(Part_5,'CanQuery',true);
insSet(Part_5,'CanTouch',true);
insSet(Part_5,'Transparency',1);
insSet(Part_5,'Reflectance',1);
insSet(Part_5,'Color',c3(1.000000,1.000000,1.000000));
insSet(Part_5,'Material',Enum.Material.Neon);
insSet(Part_5,'Size',v3(0.100000,0.100000,0.100000));
insSet(Part_5,'CastShadow',true);
insSet(Part_5,'Massless',false);


 WingWeld3_6=i("Weld", Part_5)
insSet(WingWeld3_6,'Name',"Wing Weld:3");
insSet(WingWeld3_6,'Enabled',true);
insSet(WingWeld3_6,'C0',cf(3,0,-0.25,-4.371138828673793e-08,1,0,-0.9961947202682495,-4.354505378501017e-08,-0.08715573698282242,-0.08715573698282242,-3.8096983345781155e-09,0.9961947202682495));
insSet(WingWeld3_6,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_6,'Part0',Wing_Piece_2_2);
insSet(WingWeld3_6,'Part1',Part_5);


 Mesh_7=i("SpecialMesh", Wing_Piece_2_2)
insSet(Mesh_7,'Name',"Mesh");
insSet(Mesh_7,'MeshType',Enum.MeshType.Brick);
insSet(Mesh_7,'MeshId',"");
insSet(Mesh_7,'TextureId',"");
insSet(Mesh_7,'Scale',v3(5.000000,5.000000,5.000000));
insSet(Mesh_7,'Offset',v3(0.000000,0.000000,0.000000));
insSet(Mesh_7,'VertexColor',v3(1.000000,1.000000,1.000000));


 LeftSmallWedge_8=i("Part", Wing_Piece_2_2)
insSet(LeftSmallWedge_8,'Name',"LeftSmallWedge");
insSet(LeftSmallWedge_8,'Anchored',false);
insSet(LeftSmallWedge_8,'CanCollide',false);
insSet(LeftSmallWedge_8,'CanQuery',true);
insSet(LeftSmallWedge_8,'CanTouch',true);
insSet(LeftSmallWedge_8,'Transparency',0);
insSet(LeftSmallWedge_8,'Reflectance',0);
insSet(LeftSmallWedge_8,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftSmallWedge_8,'Material',Enum.Material.Neon);
insSet(LeftSmallWedge_8,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftSmallWedge_8,'CastShadow',true);
insSet(LeftSmallWedge_8,'Massless',false);


 RightSmallWedgeMesh_9=i("SpecialMesh", LeftSmallWedge_8)
insSet(RightSmallWedgeMesh_9,'Name',"RightSmallWedgeMesh");
insSet(RightSmallWedgeMesh_9,'MeshType',Enum.MeshType.Wedge);
insSet(RightSmallWedgeMesh_9,'MeshId',"");
insSet(RightSmallWedgeMesh_9,'TextureId',"");
insSet(RightSmallWedgeMesh_9,'Scale',v3(0.500000,5.000000,5.000000));
insSet(RightSmallWedgeMesh_9,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightSmallWedgeMesh_9,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_10=i("Weld", LeftSmallWedge_8)
insSet(WingWeld3_10,'Name',"Wing Weld:3");
insSet(WingWeld3_10,'Enabled',true);
insSet(WingWeld3_10,'C0',cf(0,0,0.25,-4.371138828673793e-08,0,1,0,1,0,-1,0,-4.371138828673793e-08));
insSet(WingWeld3_10,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_10,'Part0',Part_5);
insSet(WingWeld3_10,'Part1',LeftSmallWedge_8);


 RightSmallWedge_11=i("Part", Wing_Piece_2_2)
insSet(RightSmallWedge_11,'Name',"RightSmallWedge");
insSet(RightSmallWedge_11,'Anchored',false);
insSet(RightSmallWedge_11,'CanCollide',false);
insSet(RightSmallWedge_11,'CanQuery',true);
insSet(RightSmallWedge_11,'CanTouch',true);
insSet(RightSmallWedge_11,'Transparency',0);
insSet(RightSmallWedge_11,'Reflectance',0);
insSet(RightSmallWedge_11,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightSmallWedge_11,'Material',Enum.Material.Neon);
insSet(RightSmallWedge_11,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightSmallWedge_11,'CastShadow',true);
insSet(RightSmallWedge_11,'Massless',false);


 LeftSmallWedgeMesh_12=i("SpecialMesh", RightSmallWedge_11)
insSet(LeftSmallWedgeMesh_12,'Name',"LeftSmallWedgeMesh");
insSet(LeftSmallWedgeMesh_12,'MeshType',Enum.MeshType.Wedge);
insSet(LeftSmallWedgeMesh_12,'MeshId',"");
insSet(LeftSmallWedgeMesh_12,'TextureId',"");
insSet(LeftSmallWedgeMesh_12,'Scale',v3(0.500000,5.000000,5.000000));
insSet(LeftSmallWedgeMesh_12,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftSmallWedgeMesh_12,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_13=i("Weld", RightSmallWedge_11)
insSet(WingWeld3_13,'Name',"Wing Weld:3");
insSet(WingWeld3_13,'Enabled',true);
insSet(WingWeld3_13,'C0',cf(0.5,0,0.25,-4.371138828673793e-08,0,-1,0,1,0,1,0,-4.371138828673793e-08));
insSet(WingWeld3_13,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_13,'Part0',Part_5);
insSet(WingWeld3_13,'Part1',RightSmallWedge_11);


 Att0_14=i("Attachment", RightSmallWedge_11)
insSet(Att0_14,'Name',"Att0");
insSet(Att0_14,'Visible',false);
insSet(Att0_14,'CFrame',cf(0,0.25,0.25,1,0,0,0,1,0,0,0,1));


 LeftLongWedge_15=i("Part", Wing_Piece_2_2)
insSet(LeftLongWedge_15,'Name',"LeftLongWedge");
insSet(LeftLongWedge_15,'Anchored',false);
insSet(LeftLongWedge_15,'CanCollide',false);
insSet(LeftLongWedge_15,'CanQuery',true);
insSet(LeftLongWedge_15,'CanTouch',true);
insSet(LeftLongWedge_15,'Transparency',0);
insSet(LeftLongWedge_15,'Reflectance',0);
insSet(LeftLongWedge_15,'Color',c3(1.000000,1.000000,1.000000));
insSet(LeftLongWedge_15,'Material',Enum.Material.Neon);
insSet(LeftLongWedge_15,'Size',v3(0.100000,0.100000,0.100000));
insSet(LeftLongWedge_15,'CastShadow',true);
insSet(LeftLongWedge_15,'Massless',false);


 LeftLongWedge_16=i("SpecialMesh", LeftLongWedge_15)
insSet(LeftLongWedge_16,'Name',"LeftLongWedge");
insSet(LeftLongWedge_16,'MeshType',Enum.MeshType.Wedge);
insSet(LeftLongWedge_16,'MeshId',"");
insSet(LeftLongWedge_16,'TextureId',"");
insSet(LeftLongWedge_16,'Scale',v3(0.500000,5.000000,70.000000));
insSet(LeftLongWedge_16,'Offset',v3(0.000000,0.000000,0.000000));
insSet(LeftLongWedge_16,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_17=i("Weld", LeftLongWedge_15)
insSet(WingWeld3_17,'Name',"Wing Weld:3");
insSet(WingWeld3_17,'Enabled',true);
insSet(WingWeld3_17,'C0',cf(0.5,-3.75,0.25,-4.371138828673793e-08,1,0,4.371138828673793e-08,1.910685465164705e-15,1,1,4.371138828673793e-08,-4.371138828673793e-08));
insSet(WingWeld3_17,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_17,'Part0',Part_5);
insSet(WingWeld3_17,'Part1',LeftLongWedge_15);


 Att1_18=i("Attachment", LeftLongWedge_15)
insSet(Att1_18,'Name',"Att1");
insSet(Att1_18,'Visible',false);
insSet(Att1_18,'CFrame',cf(0,-0.25,-2,1,0,0,0,1,0,0,0,1));


 RightLongWedge_19=i("Part", Wing_Piece_2_2)
insSet(RightLongWedge_19,'Name',"RightLongWedge");
insSet(RightLongWedge_19,'Anchored',false);
insSet(RightLongWedge_19,'CanCollide',false);
insSet(RightLongWedge_19,'CanQuery',true);
insSet(RightLongWedge_19,'CanTouch',true);
insSet(RightLongWedge_19,'Transparency',0);
insSet(RightLongWedge_19,'Reflectance',0);
insSet(RightLongWedge_19,'Color',c3(1.000000,1.000000,1.000000));
insSet(RightLongWedge_19,'Material',Enum.Material.Neon);
insSet(RightLongWedge_19,'Size',v3(0.100000,0.100000,0.100000));
insSet(RightLongWedge_19,'CastShadow',true);
insSet(RightLongWedge_19,'Massless',false);


 RightLongWedgeMesh_20=i("SpecialMesh", RightLongWedge_19)
insSet(RightLongWedgeMesh_20,'Name',"RightLongWedgeMesh");
insSet(RightLongWedgeMesh_20,'MeshType',Enum.MeshType.Wedge);
insSet(RightLongWedgeMesh_20,'MeshId',"");
insSet(RightLongWedgeMesh_20,'TextureId',"");
insSet(RightLongWedgeMesh_20,'Scale',v3(0.500000,70.000000,5.000000));
insSet(RightLongWedgeMesh_20,'Offset',v3(0.000000,0.000000,0.000000));
insSet(RightLongWedgeMesh_20,'VertexColor',v3(1.000000,1.000000,1.000000));


 WingWeld3_21=i("Weld", RightLongWedge_19)
insSet(WingWeld3_21,'Name',"Wing Weld:3");
insSet(WingWeld3_21,'Enabled',true);
insSet(WingWeld3_21,'C0',cf(0,-3.75,0.25,-4.371138828673793e-08,0,1,8.742277657347586e-08,-1,3.82137093032941e-15,1,8.742277657347586e-08,4.371138828673793e-08));
insSet(WingWeld3_21,'C1',cf(0,0,0,1,0,0,0,1,0,0,0,1));
insSet(WingWeld3_21,'Part0',Part_5);
insSet(WingWeld3_21,'Part1',RightLongWedge_19);


 Trail_22=i("Trail", RightLongWedge_19)
insSet(Trail_22,'Name',"Trail");
insSet(Trail_22,'Enabled',true);
insSet(Trail_22,'Lifetime',0.6000000238418579);
insSet(Trail_22,'FaceCamera',false);
insSet(Trail_22,'WidthScale',ns(1,0));
insSet(Trail_22,'Transparency',ns({nsk(0.000000,1.000000,0.000000),nsk(1.000000,0.000000,1.000000)}));
insSet(Trail_22,'Color',cs({csk(0.000000,c3(1.000000,1.000000,1.000000)),csk(1.000000,c3(1.000000,1.000000,1.000000))}));
insSet(Trail_22,'Texture',"rbxassetid://6499637829");
insSet(Trail_22,'TextureLength',1);
insSet(Trail_22,'LightEmission',1);
insSet(Trail_22,'LightInfluence',0);
insSet(Trail_22,'Brightness',1);

 --RightLongWedge_19 Attachments(Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14),Trail_22.Attachment0(Att1_18),Trail_22.Attachment1(Att0_14))

insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
insSet(Trail_22,'Attachment0',Att1_18);
insSet(Trail_22,'Attachment1',Att0_14);
end 
W4()

  local model7=i("Model",RealChar)  insSet(model7,"Name","Ring_Model3");model7:SetAttribute("ModeAsset",true);local handlex7=CreateParta(model7,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex7,"Brick",v3(0,0,0));local handlexweld7=CreateWeld(handlex7,handlex7,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex7,"Name","Ring_Piece3");insSet(handlex7,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex7,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex7,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model7:ScaleTo(0.75)  handlexweld7.Part1=RealChar.Torso for _,e in model7:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model10=i("Model",RealChar)  insSet(model10,"Name","Ring_Model2");model10:SetAttribute("ModeAsset",true);local handlex10=CreateParta(model10,1,1,Enum.Material.Neon,c3(0.000000,0.000000,1.000000));CreateMesh(handlex10,"Brick",v3(0,0,0));local handlexweld10=CreateWeld(handlex10,handlex10,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex10,"Name","Ring_Piece2");insSet(handlex10,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex10,0,0,Enum.Material.Neon,c3(0.000000,0.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex10,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model10:ScaleTo(0.75)  handlexweld10.Part1=RealChar.Torso for _,e in model10:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model12=i("Model",RealChar)  insSet(model12,"Name","Ring_Model4");model12:SetAttribute("ModeAsset",true);local handlex12=CreateParta(model12,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex12,"Brick",v3(0,0,0));local handlexweld12=CreateWeld(handlex12,handlex12,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex12,"Name","Ring_Piece4");insSet(handlex12,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex12,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex12,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model12:ScaleTo(0.75)  handlexweld12.Part1=RealChar.Torso for _,e in model12:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model15=i("Model",RealChar)  insSet(model15,"Name","Ring_Model1");model15:SetAttribute("ModeAsset",true);local handlex15=CreateParta(model15,1,1,Enum.Material.Neon,c3(0.000000,0.000000,1.000000));CreateMesh(handlex15,"Brick",v3(0,0,0));local handlexweld15=CreateWeld(handlex15,handlex15,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex15,"Name","Ring_Piece1");insSet(handlex15,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex15,0,0,Enum.Material.Neon,c3(0.000000,0.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex15,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model15:ScaleTo(0.75)  handlexweld15.Part1=RealChar.Torso for _,e in model15:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
end,
ModeDataEventLoop=function()
-- If there is a mode that doesnt need any evemt, leave it empty
end ,
EventData={
  -- leave empty if mode doesnt have an event
},

PrimaryColor=c3(0,0,1),
SecondaryColor=c3(1,1,1),
Speed=12,
JumpPower=50,
Title="Epistulius",
Key=6,
SecondaryName="Haclis",
Side="Vilrum",-- Spectrum
Desc="Everstill Sanguine",
SongData={
  title="Robotic Dance",
  auth="Vermair",
  remix="None",
},
  },

  ["Credits"]={
WingAnimData=function()
  sine=osclock()
  local RotOnce=RotateOnce(1,90)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+5*sin((sine*1)+0),4.25+-7*sin((sine/2)+0),0),angles(0,0.08726646259971647,1.0471975511965976+sine))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+5*sin((sine*1)+0),4.25+-7*sin((sine/2)+0),0),angles(0,0.08726646259971647,3.141592653589793+sine))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+5*sin((sine*1)+0),4.25+-7*sin((sine/2)+0),0),angles(0,0.08726646259971647,-1.0471975511965976+sine))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,5.25,0),angles(0,0.03490658503988659,2.0943951023931953+2.0943951023931953*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.03490658503988659,0+RotOnce))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.03490658503988659,2.0943951023931953+RotOnce))),0.5)
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.03490658503988659,4.1887902047863905+RotOnce))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,5.25,0),angles(0,0.03490658503988659,4.1887902047863905+-2.0943951023931953*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-1,7.25,0),angles(0,0.03490658503988659,2.0943951023931953+2.0943951023931953*cos((sine*1)+-0.5)))),0.5)
RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(0.5,7.25,0),angles(0,0.03490658503988659,4.1887902047863905+-2.0943951023931953*cos((sine*1)+-0.5)))),0.5)
RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1:GetChildren()[2].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1:GetChildren()[2].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5) 

RealChar.Ring_Model2.Ring_Piece2:GetChildren()[2].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2:GetChildren()[2].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5) 
end,
BodyAnimData=function()
  sine=osclock()
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.2+0.2*cos((sine*2)+0),0),angles(2.0245819323134224+-0.17453292519943295*sin((sine*2)+0),0.2617993877991494,-0.8726646259971648)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1.1,0.2+0.2*cos((sine*2)+0),-0.6000000000000001),angles(0.10471975511965978,-0.3141592653589793,-1.7976891295541595+-0.2617993877991494*sin((sine*2)+0))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.1,-0.1+0.25*cos((sine*2)+0),-0.6000000000000001),angles(-0.5061454830783556+0.2617993877991494*sin((sine*2)+-0.5),0.4188790204786391,-0.20943951023931956)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.1,-0.8+0.3*cos((sine*2)+0),-0.30000000000000004),angles(-0.29670597283903605+0.17453292519943295*sin((sine*2)+0),-0.5934119456780721,0.22689280275926285)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,10+0.25*sin((sine*2)+0),0),angles(0.7155849933176751+-0.17453292519943295*cos((sine*2)+0),-0.6632251157578453+0.17453292519943295*cos((sine*2)+-1),0.5235987755982988+0.08726646259971647*sin((sine*2)+1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.47123889803846897+0.17453292519943295*cos((sine*2)+0),0.8203047484373349,0.17453292519943295+-0.17453292519943295*sin((sine*2)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local model6=i("Model",RealChar)  insSet(model6,"Name","Ring_Model1");model6:SetAttribute("ModeAsset",true);local handlex6=CreateParta(model6,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex6,"Brick",v3(0,0,0));local handlexweld6=CreateWeld(handlex6,handlex6,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex6,"Name","Ring_Piece1");insSet(handlex6,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex6,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex6,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model6:ScaleTo(1)  handlexweld6.Part1=RealChar.Torso for _,e in model6:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model13=i("Model",RealChar)  insSet(model13,"Name","Ring_Model2");model13:SetAttribute("ModeAsset",true);local handlex13=CreateParta(model13,1,1,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(handlex13,"Brick",v3(0,0,0));local handlexweld13=CreateWeld(handlex13,handlex13,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex13,"Name","Ring_Piece2");insSet(handlex13,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex13,0,0,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex13,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model13:ScaleTo(1.1)  handlexweld13.Part1=handlex6 for _,e in model13:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+5*sin((sine*1)+0),4.25+-7*sin((sine*0.5)+0),0),angles(0,0.08726646259971647,1.0471975511965976))),
----------WingAttach=RealChar.Wing_Model5.Wing_Piece_5,
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+5*sin((sine*1)+0),4.25+-7*sin((sine*0.5)+0),0),angles(0,0.08726646259971647,3.141592653589793))),
--------WingAttach=RealChar.Wing_Model6.Wing_Piece_6,
},
[3]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25+5*sin((sine*1)+0),4.25+-7*sin((sine*0.5)+0),0),angles(0,0.08726646259971647,-1.0471975511965976))),
--------WingAttach=RealChar.Wing_Model4.Wing_Piece_4,
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.2750000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.125,0.2750000059604645)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.550000011920929,-4.125,0.2750000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.45,0,0.2750000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.2750000059604645,-2.200000047683716)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.2750000059604645,0.2750000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model7',
HandleName='Wing_Piece_7',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.100000023841858,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,5.25,0),angles(0,0.03490658503988659,2.0943951023931953+2.0943951023931953*cos((sine*1)+0)))),
--------WingAttach=RealChar.Wing_Model7.Wing_Piece_7,
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-3.75,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-3.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
SetColorFromUI="PrimaryColor",
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.03490658503988659,0))),
--------WingAttach=RealChar.Wing_Model2.Wing_Piece_2,
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-3.75,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-3.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
SetColorFromUI="PrimaryColor",
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.03490658503988659,2.0943951023931953))),
--------WingAttach=RealChar.Wing_Model1.Wing_Piece_1,
},
[7]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-3.75,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-3.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
SetColorFromUI="PrimaryColor",
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.03490658503988659,4.1887902047863905))),
--------WingAttach=RealChar.Wing_Model3.Wing_Piece_3,
},
[8]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.2750000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.125,0.2750000059604645)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.4,-4.125,0.2750000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.4,0,0.2750000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.2750000059604645,-2.200000047683716)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.2750000059604645,0.2750000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model8',
HandleName='Wing_Piece_8',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.100000023841858,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,5.25,0),angles(0,0.03490658503988659,4.1887902047863905+-2.0943951023931953*cos((sine*1)+0)))),
--------WingAttach=RealChar.Wing_Model8.Wing_Piece_8,
},
[9]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.2750000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.125,0.2750000059604645)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.550000011920929,-4.125,0.2750000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.275)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.2750000059604645,-2.200000047683716)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.2750000059604645,0.2750000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
SetColorFromUI="PrimaryColor",
Material=Enum.Material.Neon,
ModelName='Wing_Model9',
HandleName='Wing_Piece_9',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.100000023841858,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-1,7.25,0),angles(0,0.03490658503988659,2.0943951023931953+2.0943951023931953*cos((sine*1)+-0.5)))),
--------WingAttach=RealChar.Wing_Model9.Wing_Piece_9,
},
[10]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.2750000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.125,0.2750000059604645)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.550000011920929,-4.125,0.2750000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.45,0,0.2750000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.2750000059604645,-2.200000047683716)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.2750000059604645,0.2750000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
SetColorFromUI="PrimaryColor",
Material=Enum.Material.Neon,
ModelName='Wing_Model10',
HandleName='Wing_Piece_10',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.100000023841858,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(0.5,7.25,0),angles(0,0.03490658503988659,4.1887902047863905+-2.0943951023931953*cos((sine*1)+-0.5)))),
--------WingAttach=RealChar.Wing_Model10.Wing_Piece_10,
},
}
}
end,
ModeDataEventLoop=function()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local v1 = math.sin(ld / 50) * 50 * math.sin(10 / 50) + 185
local v2 = math.clamp((ld / 65) ^ 3, 0, 100)
RecolorUI(false,Color3.fromHSV(v1 / 360, (if tpos > 80.48 and tpos < 123.4 then math.random(1, 100) else 0) / 100 % 100, math.clamp(v2, 10, 100) / 100),true,rgb(0,0,0))

end ,
EventData={
  -- leave empty if mode doesnt have an event
},
PrimaryColor=c3(1,1,1),
SecondaryColor=c3(0,0,0),
Speed=12,
JumpPower=50,
Title="Credits",
Key=nil,
SecondaryName="Crith",
Side="Sublis",-- Sublimal
Desc="Emptiness Of Tranquility",
SongData={
  title="Credits Ex",
  auth="Frums",
  remix="None",
},
  },

  ["Hymonium"]={
WingAnimData=function()
  sine=osclock()
  local RotOnce=RotateOnce(1,90)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Wing_Model2.Wing_Piece_2 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),0.5)
RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Wing_Model9.Wing_Piece_9 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Wing_Model3.Wing_Piece_3 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Wing_Model1.Wing_Piece_1 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.5235987755982988*cos((sine*1)+1),0.08726646259971647+-0.2617993877991494*cos((sine*1)+-1),-1.0471975511965976+-0.6108652381980153*sin((sine*1)+0)))),0.5)
RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.4363323129985824*sin((sine*1)+2),0.08726646259971647+-0.17453292519943295*cos((sine*1)+-2),1.3962634015954636+-0.5235987755982988*cos((sine*1)+1.35)))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.5235987755982988*cos((sine*1)+1),0.08726646259971647+0.2617993877991494*cos((sine*1)+-1),1.0471975511965976+0.6108652381980153*sin((sine*1)+0)))),0.5)
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.3490658503988659*sin((sine*1)+1.5),0.08726646259971647+-0.08726646259971647*cos((sine*1)+-2.5),1.7453292519943295+-0.3490658503988659*cos((sine*1)+1.5)))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.3490658503988659*sin((sine*1)+1.5),0.08726646259971647+0.08726646259971647*cos((sine*1)+-2.5),-1.7453292519943295+0.3490658503988659*cos((sine*1)+1.5)))),0.5)
RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.4363323129985824*sin((sine*1)+2),0.08726646259971647+0.17453292519943295*cos((sine*1)+2),-1.3962634015954636+0.5235987755982988*cos((sine*1)+1.35)))),0.5)
RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),0.5)
RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Wing_Model7.Wing_Piece_7 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),0.5)
RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Wing_Model8.Wing_Piece_8 
end,
BodyAnimData=function()
  sine=osclock()
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,-0.2+0.15*cos((sine*2)+0.5),0.1),angles(2.3911010752322315+0.17453292519943295*sin((sine*2)+1),0.08726646259971647,-0.4363323129985824)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0.30000000000000004+0.15*cos((sine*2)+0),-0.5),angles(1.2042771838760873,-0.06981317007977318+0.17453292519943295*sin((sine*2)+0),0.5235987755982988)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.2000000000000002,-1,0.1),angles(0.15707963267948966,0.767944870877505,-0.22689280275926285)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-1,-0.6),angles(0.17453292519943295,-0.08726646259971647,0.17453292519943295)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.HumanoidRootPart
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,0+0.2*cos((sine*2)+0),0),angles(0.33161255787892263+0.08726646259971647*sin((sine*2)+0),0.4188790204786391,0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.5235987755982988+0.17453292519943295*cos((sine*2)+0.5),-0.4363323129985824,-0.12217304763960307)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local model7=i("Model",RealChar)  insSet(model7,"Name","Ring_Model1");model7:SetAttribute("ModeAsset",true);local handlex7=CreateParta(model7,1,1,Enum.Material.Neon,c3(1.000000,0.000000,0.294118));CreateMesh(handlex7,"Brick",v3(0,0,0));local handlexweld7=CreateWeld(handlex7,handlex7,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex7,"Name","Ring_Piece1");insSet(handlex7,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex7,0,0,Enum.Material.Neon,c3(1.000000,0.000000,0.294118));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex7,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model7:ScaleTo(1.5)  handlexweld7.Part1=RealChar.Torso for _,e in model7:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,80,5),
llwsm=v3(0.5,5,80),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-4.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.25,
Color=c3(0.196078,0.196078,0.196078),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
--Part1=RealChar.Wing_Model2.Wing_Piece_2,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),
--------WingAttach=RealChar.Wing_Model5.Wing_Piece_5,
SetColorFromUI='SecondaryColor',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,80,5),
llwsm=v3(0.5,5,80),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-4.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.25,
Color=c3(0.196078,0.196078,0.196078),
Material=Enum.Material.Neon,
ModelName='Wing_Model12',
HandleName='Wing_Piece_12',
--Part1=RealChar.Wing_Model9.Wing_Piece_9,
ModelScale=1,
--erp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),
--------WingAttach=RealChar.Wing_Model12.Wing_Piece_12,
SetColorFromUI='SecondaryColor',
},
[3]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,80,5),
llwsm=v3(0.5,5,80),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-4.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.25,
Color=c3(0.196078,0.196078,0.196078),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
--Part1=RealChar.Wing_Model3.Wing_Piece_3,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),
------WingAttach=RealChar.Wing_Model6.Wing_Piece_6,
SetColorFromUI='SecondaryColor',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,80,5),
llwsm=v3(0.5,5,80),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-4.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.25,
Color=c3(0.196078,0.196078,0.196078),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
--Part1=RealChar.Wing_Model1.Wing_Piece_1,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),
------WingAttach=RealChar.Wing_Model4.Wing_Piece_4,
SetColorFromUI='SecondaryColor',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.5)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-7.5,0.5)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(1,-7.5,0.5)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(1,0,0.5)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.5,-4)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,-2,0.5)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.8500000238418579,
Color=c3(1.000000,0.000000,0.294118),
Material=Enum.Material.Neon,
ModelName='Wing_Model7',
HandleName='Wing_Piece_7',
--Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=2,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.5235987755982988*cos((sine*1)+1),0.08726646259971647+-0.2617993877991494*cos((sine*1)+-1),-1.0471975511965976+-0.6108652381980153*sin((sine*1)+0)))),
------WingAttach=RealChar.Wing_Model7.Wing_Piece_7,
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.5)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-7.5,0.5)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(1,-7.5,0.5)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(1,0,0.5)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.5,-4)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,-2,0.5)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.8500000238418579,
Color=c3(1.000000,0.000000,0.294118),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
--Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=2,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.4363323129985824*sin((sine*1)+2),0.08726646259971647+-0.17453292519943295*cos((sine*1)+-2),1.3962634015954636+-0.5235987755982988*cos((sine*1)+1.35)))),
------WingAttach=RealChar.Wing_Model2.Wing_Piece_2,
SetColorFromUI='None',
},
[7]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.5)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-7.5,0.5)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(1,-7.5,0.5)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(1,0,0.5)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.5,-4)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,-2,0.5)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.8500000238418579,
Color=c3(1.000000,0.000000,0.294118),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
--Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=2,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.5235987755982988*cos((sine*1)+1),0.08726646259971647+0.2617993877991494*cos((sine*1)+-1),1.0471975511965976+0.6108652381980153*sin((sine*1)+0)))),
------WingAttach=RealChar.Wing_Model1.Wing_Piece_1,
SetColorFromUI='None',
},
[8]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.5)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-7.5,0.5)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(1,-7.5,0.5)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(1,0,0.5)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.5,-4)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,-2,0.5)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.8500000238418579,
Color=c3(1.000000,0.000000,0.294118),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
--Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=2,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.3490658503988659*sin((sine*1)+1.5),0.08726646259971647+-0.08726646259971647*cos((sine*1)+-2.5),1.7453292519943295+-0.3490658503988659*cos((sine*1)+1.5)))),
------WingAttach=RealChar.Wing_Model3.Wing_Piece_3,
SetColorFromUI='None',
},
[9]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.5)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-7.5,0.5)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(1,-7.5,0.5)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(1,0,0.5)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.5,-4)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,-2,0.5)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.8500000238418579,
Color=c3(1.000000,0.000000,0.294118),
Material=Enum.Material.Neon,
ModelName='Wing_Model9',
HandleName='Wing_Piece_9',
--Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=2,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.3490658503988659*sin((sine*1)+1.5),0.08726646259971647+0.08726646259971647*cos((sine*1)+-2.5),-1.7453292519943295+0.3490658503988659*cos((sine*1)+1.5)))),
------WingAttach=RealChar.Wing_Model9.Wing_Piece_9,
SetColorFromUI='None',
},
[10]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,70,5),
llwsm=v3(0.5,5,70),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.5)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-7.5,0.5)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(1,-7.5,0.5)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(1,0,0.5)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.5,-4)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,-2,0.5)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.8500000238418579,
Color=c3(1.000000,0.000000,0.294118),
Material=Enum.Material.Neon,
ModelName='Wing_Model8',
HandleName='Wing_Piece_8',
--Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=2,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.6,8,0),angles(0+-0.4363323129985824*sin((sine*1)+2),0.08726646259971647+0.17453292519943295*cos((sine*1)+2),-1.3962634015954636+0.5235987755982988*cos((sine*1)+1.35)))),
------WingAttach=RealChar.Wing_Model8.Wing_Piece_8,
SetColorFromUI='None',
},
[11]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,80,5),
llwsm=v3(0.5,5,80),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-4.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.25,
Color=c3(0.196078,0.196078,0.196078),
Material=Enum.Material.Neon,
ModelName='Wing_Model10',
HandleName='Wing_Piece_10',
--Part1=RealChar.Wing_Model7.Wing_Piece_7,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),
------WingAttach=RealChar.Wing_Model10.Wing_Piece_10,
SetColorFromUI='SecondaryColor',
},
[12]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,80,5),
llwsm=v3(0.5,5,80),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.5,-4.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0.25,
Color=c3(0.196078,0.196078,0.196078),
Material=Enum.Material.Neon,
ModelName='Wing_Model11',
HandleName='Wing_Piece_11',
--Part1=RealChar.Wing_Model8.Wing_Piece_8,
ModelScale=1,
--Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.8,-3,0),angles(0,0,1.5707963267948966))),
------WingAttach=RealChar.Wing_Model11.Wing_Piece_11,
SetColorFromUI='SecondaryColor',
},
}
}
end,
ModeDataEventLoop=function()
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local sinn=clamp(255*sin(sine),0,255)
RecolorUI(false,c3(1.000000,0.000000,0.294118),true,rgb(sinn,sinn,sinn))
end ,
EventData={
  -- leave empty if mode doesnt have an event
},
PrimaryColor=c3(1.000000,0.000000,0.294118),
SecondaryColor=c3(0.196078,0.196078,0.196078),
Speed=12,
JumpPower=50,
Title="Hymonium",
Key=nil,
SecondaryName="Zetrin",
Side="Vilrum",-- Spectrum
Desc="Endictment Epistus",
SongData={
  title="Pandemonium",
  auth="t+pazolite & Laur",
  remix="None",
},
  },

  ["Derelict"]={
WingAnimData=function()
  sine=osclock()
  local ld=GlobalTable.SoundInstace.PlaybackLoudness/100
  spinboost-=rad(90)*rad(clamp(ld,1,100))
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-0.8726646259971648+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+10*sin((sine*1)+0),0+-12*sin((sine*0.5)+0),0),angles(-3.141592653589793,0,spinboost))),0.5)
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-2.443460952792061+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+12*sin((sine*0.5)+0),0+10*sin((sine*1)+0),0),angles(-3.141592653589793,0,spinboost))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.6981317007977318+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+-12*sin((sine*0.5)+0),0+-10*sin((sine*1)+0),0),angles(-3.141592653589793,0,spinboost))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,2.2689280275926285+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+-10*sin((sine*1)+0),0+12*sin((sine*0.5)+0),0),angles(-3.141592653589793,0,spinboost))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
end,
BodyAnimData=function()
  sine=osclock()
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.35+0.1*cos((sine*2)+0),-0.1),angles(1.5707963267948966+0.17453292519943295*cos((sine*2)+1),0.08726646259971647+0.17453292519943295*sin((sine*2)+1),-0.9599310885968813)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.30000000000000004+0.15*cos((sine*2)+0),0),angles(2.2689280275926285+0.17453292519943295*sin((sine*2)+0),-0.06981317007977318,0.4014257279586958)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.2000000000000002,-0.5+0.15*sin((sine*2)+0),-0.2),angles(-0.3490658503988659+0.08726646259971647*sin((sine*2)+0),0.6108652381980153,0.2617993877991494+0.08726646259971647*cos((sine*2)+1))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.2000000000000002,-1+0.2*cos((sine*2)+0),-0.4),angles(-0.22689280275926285,0.20943951023931956,0.24434609527920614+0.08726646259971647*sin((sine*2)+0))),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,15+0.5*sin((sine*2)+0),0),angles(0+0.17453292519943295*cos((sine*2)+0),-0.9075712110370514,-0.017453292519943295+0.08726646259971647*sin((sine*2)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(0+0.17453292519943295*sin((sine*2)+0),0.8901179185171081,0+-0.17453292519943295*sin((sine*2)+0.5))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local model14=i("Model",RealChar)  insSet(model14,"Name","Ring_Model1");model14:SetAttribute("ModeAsset",true);local handlex14=CreateParta(model14,1,1,Enum.Material.Neon,c3(1.000000,1.000000,0.000000));CreateMesh(handlex14,"Brick",v3(0,0,0));local handlexweld14=CreateWeld(handlex14,handlex14,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex14,"Name","Ring_Piece1");insSet(handlex14,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex14,0,0,Enum.Material.Neon,c3(1.000000,1.000000,0.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex14,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model14:ScaleTo(1.25)  handlexweld14.Part1=RealChar.Torso for _,e in model14:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.32499998807907104)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.199999809265137,0.32499998807907104)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.6499999761581421,-5.199999809265137,0.32499998807907104)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.6499999761581421,0,0.32499998807907104)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.32499998807907104,-2.5999999046325684)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.32499998807907104,0.32499998807907104)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.392157,0.000000,0.588235),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.2999999523162842,
--Lerp=cfMul(angles(-3.141592502593994,0,-0.8726646259971648+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+10*sin((sine*1)+0),0+-12*sin((sine*0.5)+0),0),angles(-3.141592653589793,0,-0.8726646259971648+3.141592653589793*sin((sine*0.5)+0)))),
------WingAttach=RealChar.Wing_Model1.Wing_Piece_1,
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.32499998807907104)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.199999809265137,0.32499998807907104)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.6499999761581421,-5.199999809265137,0.32499998807907104)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.6499999761581421,0,0.32499998807907104)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.32499998807907104,-2.5999999046325684)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.32499998807907104,0.32499998807907104)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.392157,0.000000,0.588235),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.2999999523162842,
--Lerp=cfMul(angles(-3.141592502593994,0,-2.443460952792061+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+12*sin((sine*0.5)+0),0+10*sin((sine*1)+0),0),angles(-3.141592653589793,0,-2.443460952792061+3.141592653589793*sin((sine*0.5)+0)))),
------WingAttach=RealChar.Wing_Model4.Wing_Piece_4,
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.32499998807907104)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.199999809265137,0.32499998807907104)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.6499999761581421,-5.199999809265137,0.32499998807907104)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.6499999761581421,0,0.32499998807907104)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.32499998807907104,-2.5999999046325684)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.32499998807907104,0.32499998807907104)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.392157,0.000000,0.588235),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.2999999523162842,
--Lerp=cfMul(angles(-3.141592502593994,0,0.6981317007977318+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+-12*sin((sine*0.5)+0),0+-10*sin((sine*1)+0),0),angles(-3.141592653589793,0,0.6981317007977318+3.141592653589793*sin((sine*0.5)+0)))),
------WingAttach=RealChar.Wing_Model3.Wing_Piece_3,
SetColorFromUI='None',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,75,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.32499998807907104)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.199999809265137,0.32499998807907104)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.6499999761581421,-5.199999809265137,0.32499998807907104)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.6499999761581421,0,0.32499998807907104)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.32499998807907104,-2.5999999046325684)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.32499998807907104,0.32499998807907104)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.392157,0.000000,0.588235),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1.2999999523162842,
--Lerp=cfMul(angles(-3.141592502593994,0,2.2689280275926285+3.141592653589793*sin((sine*0.5)+0)),cfMul(cf(-0.35+-10*sin((sine*1)+0),0+12*sin((sine*0.5)+0),0),angles(-3.141592653589793,0,2.2689280275926285+3.141592653589793*sin((sine*0.5)+0)))),
------WingAttach=RealChar.Wing_Model2.Wing_Piece_2,
SetColorFromUI='None',
},
}
}
end,
ModeDataEventLoop=function()
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness

end ,
EventData={
  -- leave empty if mode doesnt have an event
},
PrimaryColor=c3(0.392157,0.000000,0.588235),
SecondaryColor=c3(1,1,0),
Speed=12,
JumpPower=50,
Title="Derelict",
Key=nil,
SecondaryName="Ivis",
Side="Harquinn",-- Anvarius
Desc="Endictive Frontier",
SongData={
  title="Dance With Silence",
  auth="Camellia",
  remix="None",
},
  },

  ["Extravaganza"]={
WingAnimData=function()
  sine=osclock()
  RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-3.35,2.3,0),angles(0+0.3490658503988659*sin((sine*1)+1.5),0+-0.17453292519943295*sin((sine*1)+-0.5),-3.141592653589793+-0.3490658503988659*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(2.75,2.3,0),angles(0+0.3490658503988659*sin((sine*1)+1.5),0+0.17453292519943295*sin((sine*1)+-0.5),-3.141592653589793+0.3490658503988659*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(1.5,2.75,0),angles(0+0.17453292519943295*sin((sine*1)+2),0+0.08726646259971647*sin((sine*1)+-1),-3.141592653589793+0.17453292519943295*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-4.5,1.5,0),angles(0+0.5235987755982988*sin((sine*1)+1),0+-0.2617993877991494*sin((sine*1)+0),-3.141592653589793+-0.5235987755982988*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-2.1,2.75,0),angles(0+0.17453292519943295*sin((sine*1)+2),0+-0.08726646259971647*sin((sine*1)+-1),-3.141592653589793+-0.17453292519943295*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(3.9,1.5,0),angles(0+0.5235987755982988*sin((sine*1)+1),0+0.2617993877991494*sin((sine*1)+0),-3.141592653589793+0.5235987755982988*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
end,
BodyAnimData=function()
  sine=osclock()
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.8,0.5+0.15*sin((sine*4)+0),0.7000000000000001),angles(-0,-0.19198621771937624,0.7330382858376184+-0.08726646259971647*cos((sine*4)+0))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0.7000000000000001+0.1*cos((sine*4)+0),0),angles(2.827433388230814,-0.08726646259971647,-0.6981317007977318+0.08726646259971647*sin((sine*4)+0.5))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-1.1,-0.4),angles(-0.08726646259971647,0.29670597283903605,0.017453292519943295+0.08726646259971647*cos((sine*1.5)+-1))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-0.1+0.1*cos((sine*4)+0),-0.2),angles(-0.3490658503988659+0.08726646259971647*sin((sine*4)+0),-0.6632251157578453,0.2617993877991494)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,0+0.1*cos((sine*4)+0),0),angles(0.2617993877991494+0.08726646259971647*sin((sine*4)+0),-0.2617993877991494,0.17453292519943295+0.08726646259971647*sin((sine*2)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.2617993877991494+-0.08726646259971647*sin((sine*4)+1),0.12217304763960307,0+0.08726646259971647*cos((sine*2)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local model5=i("Model",RealChar)  insSet(model5,"Name","Ring_Model1");model5:SetAttribute("ModeAsset",true);local handlex5=CreateParta(model5,1,1,Enum.Material.Neon,c3(0.784314,1.000000,0.392157));CreateMesh(handlex5,"Brick",v3(0,0,0));local handlexweld5=CreateWeld(handlex5,handlex5,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex5,"Name","Ring_Piece1");insSet(handlex5,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex5,0,0,Enum.Material.Neon,c3(0.784314,1.000000,0.392157));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex5,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model5:ScaleTo(1)  handlexweld5.Part1=RealChar.Torso for _,e in model5:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.196078,1.000000,0.784314),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-3.35,2.3,0),angles(0+0.3490658503988659*sin((sine*1)+1.5),0+-0.17453292519943295*sin((sine*1)+-0.5),-3.141592653589793+-0.3490658503988659*cos((sine*1)+0)))),
----WingAttach=RealChar.Wing_Model5.Wing_Piece_5,
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.196078,1.000000,0.784314),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(2.75,2.3,0),angles(0+0.3490658503988659*sin((sine*1)+1.5),0+0.17453292519943295*sin((sine*1)+-0.5),-3.141592653589793+0.3490658503988659*cos((sine*1)+0)))),
----WingAttach=RealChar.Wing_Model2.Wing_Piece_2,
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.392157,1.000000,0.784314),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(1.5,2.75,0),angles(0+0.17453292519943295*sin((sine*1)+2),0+0.08726646259971647*sin((sine*1)+-1),-3.141592653589793+0.17453292519943295*cos((sine*1)+0)))),
----WingAttach=RealChar.Wing_Model1.Wing_Piece_1,
SetColorFromUI='None',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.784314,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-4.5,1.5,0),angles(0+0.5235987755982988*sin((sine*1)+1),0+-0.2617993877991494*sin((sine*1)+0),-3.141592653589793+-0.5235987755982988*cos((sine*1)+0)))),
----WingAttach=RealChar.Wing_Model6.Wing_Piece_6,
SetColorFromUI='None',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.392157,1.000000,0.784314),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-2.1,2.75,0),angles(0+0.17453292519943295*sin((sine*1)+2),0+-0.08726646259971647*sin((sine*1)+-1),-3.141592653589793+-0.17453292519943295*cos((sine*1)+0)))),
----WingAttach=RealChar.Wing_Model4.Wing_Piece_4,
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.784314,1.000000,0.392157),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1=RealChar.Ring_Model1.Ring_Piece1,
ModelScale=1,
Lerp=cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(3.9,1.5,0),angles(0+0.5235987755982988*sin((sine*1)+1),0+0.2617993877991494*sin((sine*1)+0),-3.141592653589793+0.5235987755982988*cos((sine*1)+0)))),
----WingAttach=RealChar.Wing_Model3.Wing_Piece_3,
SetColorFromUI='None',
},
}
}
end,
ModeDataEventLoop=function()
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness

end ,
EventData={
  -- leave empty if mode doesnt have an event
},
PrimaryColor=c3(0.196078,1.000000,0.784314),
SecondaryColor=c3(0.784314,1.000000,0.392157),
Speed=12,
JumpPower=50,
Title="Extravaganza",
Key=8,
SecondaryName="Exver-1",
Side="Vilrum",-- Spectrum
Desc="Everstill Party",
SongData={
  title="bogos binted",
  auth="ida deerz",
  remix="(ft. 2a03-fox kaj strife)",
},
  },

  ["Nhelv"]={
WingAnimData=function(Table)
  sine=osclock()
  local ld=GlobalTable.SoundInstace.PlaybackLoudness/10
  spinboost-=rad(50)*rad(clamp(ld,1,360))
  if Table.AnimState==1 then
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,4.1887902047863905+spinboost))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,5.759586531581287+spinboost))),0.5)

RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,0.5235987755982988+spinboost))),0.5)

RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,1.0471975511965976+spinboost))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,2.0943951023931953+spinboost))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,0+spinboost))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,2.6179938779914944+spinboost))),0.5)

RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,5.235987755982989+spinboost))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,3.141592653589793+spinboost))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,1.5707963267948966+spinboost))),0.5)

RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,3.6651914291880923+spinboost))),0.5)

RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,4.71238898038469+spinboost))),0.5)

RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
elseif Table.AnimState==2 or Table.AnimState==6 or Table.AnimState==3 then
 RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,3.3161255787892263),cfMul(cf(-7.25,-0.75,0),angles(0,0.08726646259971647,0+-0.3490658503988659*cos((sine*2)+-0.25)))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(0.2,0.5,0),angles(-0.017453292519943295,-0.017453292519943295,1.5707963267948966))),0.5)

RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Wing_Model6.Wing_Piece_6 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-0.08726646259971647),cfMul(cf(3,1.5,0.2),angles(0.08726646259971647,0.017453292519943295,0))),0.5)

RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Wing_Model1.Wing_Piece_1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-0.17453292519943295),cfMul(cf(7.5,0,0),angles(0,0.08726646259971647,0+0.3490658503988659*cos((sine*2)+-0.25)))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.17453292519943295),cfMul(cf(6.5,-2.5,0),angles(0,0.08726646259971647,0+0.3490658503988659*cos((sine*2)+-0.5)))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,3.839724354387525),cfMul(cf(-8.25,2.85,0),angles(0,0.08726646259971647,0+-0.3490658503988659*cos((sine*2)+0)))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-0.6981317007977318),cfMul(cf(8.5,3.5,0),angles(0,0.08726646259971647,0+0.3490658503988659*cos((sine*2)+0)))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(1,1.5,0.19),angles(0.08726646259971647,0.017453292519943295,0))),0.5)

RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Wing_Model3.Wing_Piece_3 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-3.3161255787892263),cfMul(cf(-6.25,-3.5,0),angles(0,0,0+-0.3490658503988659*cos((sine*2)+-0.5)))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(2,1.5,0.19),angles(0.08726646259971647,0,0))),0.5)

RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Wing_Model2.Wing_Piece_2 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,0,0.2),angles(0.08726646259971647,-0.017453292519943295,0))),0.5)

RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Wing_Model4.Wing_Piece_4 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(2,0,0),angles(0.08726646259971647,0,0))),0.5)

RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Wing_Model5.Wing_Piece_5 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].Part1=RealChar.Torso
elseif Table.AnimState==4 or Table.AnimState==5 then 
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=cfMul(cf(random(-45,45),random(-10,45),random(-45,45)),angles(random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453),random(-6.632251157578453,6.632251157578453)))
RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].Part1=RealChar.Torso
end
--RealChar.Ring_Model1.Ring_Piece1.Part.C0=Lerp(RealChar.Ring_Model1.Ring_Piece1.Part.C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
end,
BodyAnimData=function(Table)
  sine=osclock()
  if Table.AnimState==1 or Table.AnimState==2 then
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0+0.2*sin((sine*3)+0),0.1),angles(0.5235987755982988,-0.5934119456780721,-0.22689280275926285+0.2617993877991494*cos((sine*3)+0))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.1+0.2*sin((sine*3)+0),0.2),angles(0.5759586531581288,0.5235987755982988,0.3141592653589793+0.2617993877991494*sin((sine*3)+-0.5))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-0.4+0.25*sin((sine*3)+0),-0.30000000000000004),angles(-0.17453292519943295+0.2617993877991494*cos((sine*3)+1),0.5061454830783556,0)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-0.4+0.26*sin((sine*3)+0),-0.4),angles(0.2792526803190927+0.17453292519943295*cos((sine*3)+-1),-0.5410520681182421,0)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,10+0.75*cos((sine*3)+0),0),angles(-0.6981317007977318+0.08726646259971647*sin((sine*3)+0)+0.017453292519943295*cos((sine*1000)+0)+0.0017453292519943296*tan((sine*100)+0),0,0+0.03490658503988659*cos((sine*1000)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.5235987755982988+0.17453292519943295*sin((sine*3)+0)+0.08726646259971647*cos((sine*100000)+0)+0.003490658503988659*tan((sine*1000)+0),0,0+0.0017453292519943296*tan((sine*10000)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
  elseif Table.AnimState==3 then 
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf((random(-0.025,0.025))+0,(random(-0.025,0.025))+10+0.25*sin((sine*3)),(random(-0.025,0.025))+0),angles((random(-0.017453292519943295,0.017453292519943295))+-0.7853981633974483+-0.08726646259971647*cos((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+0,(random(-0.017453292519943295,0.017453292519943295))+0)),angles(-1.5707963705062866,0,-3.141592502593994)),min(.5*3,1))Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles((random(-0.017453292519943295,0.017453292519943295))+-0.6981317007977318+-0.2617993877991494*cos((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+0,(random(-0.017453292519943295,0.017453292519943295))+0)),angles(-1.5707963705062866,0,-3.141592502593994)),min(.5*2,1))RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(0.8,0.5,-0.25+0.2*sin((sine*3))),angles((random(-0.017453292519943295,0.017453292519943295))+2.8797932657906435+-0.17453292519943295*sin((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+0.2617993877991494,(random(-0.017453292519943295,0.017453292519943295))+-0.3490658503988659)),angles(0,1.5707963705062866,0)),.5)LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-0.9,-0.3),angles(0.2617993877991494+-0.2617993877991494*sin((sine*3)),0.3490658503988659,0)),angles(-0,-1.5707963705062866,0)),.5)LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.8,0.5,-0.25+0.2*sin((sine*3))),angles((random(-0.017453292519943295,0.017453292519943295))+2.8797932657906435+0.17453292519943295*sin((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+-0.2617993877991494,(random(-0.017453292519943295,0.017453292519943295))+0.3490658503988659)),angles(-0,-1.5707963705062866,0)),.5)RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,0.2,-1),angles(-0.4363323129985824+-0.17453292519943295*cos((sine*3)),-0.4363323129985824,0)),angles(0,1.5707963705062866,0)),.5)
elseif Table.AnimState==4 then 
  Neck.C0=cfMul(cfMul(cf(0,1,0),angles((random(-0.04363323129985824,0.04363323129985824))+0.7853981633974483+0.17453292519943295*cos((sine*3)),(random(-0.08726646259971647,0.08726646259971647))+0,(random(-0.04363323129985824,0.04363323129985824))+0)),angles(-1.5707963705062866,0,-3.141592502593994))RootJoint.C0=cfMul(cfMul(cf((random(-0.25,0.25))+0,(random(-0.25,0.25))+10+0.25*sin((sine*3)),(random(-0.25,0.25))+0),angles((random(-0.1,0.1))+0.4363323129985824,(random(-0.1,0.1))+0,(random(-0.1,0.1))+0)),angles(-1.5707963705062866,0,-3.141592502593994))LeftShoulder.C0=cfMul(cfMul(cf(-0.8,0.25,0.25),angles(1.1344640137963142,0.7853981633974483,-0.8726646259971648)),angles(-0,-1.5707963705062866,0))RightHip.C0=cfMul(cfMul(cf(0.9,0,-1.1),angles(-0.7853981633974483+0.08726646259971647*cos((sine*3)),-0.4363323129985824,0.08726646259971647)),angles(0,1.5707963705062866,0))LeftHip.C0=cfMul(cfMul(cf(-1,-0.9,-0.45),angles(-0.5235987755982988+0.08726646259971647*cos((sine*3)),0,-0.08726646259971647)),angles(-0,-1.5707963705062866,0))RightShoulder.C0=cfMul(cfMul(cf(0.8,0.25,0.25),angles(1.1344640137963142,-0.7853981633974483,0.8726646259971648)),angles(0,1.5707963705062866,0))
elseif Table.AnimState==5 then 
  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf((random(-0.025,0.025))+0,(random(-0.025,0.025))+10+0.25*sin((sine*3)),(random(-0.025,0.025))+0),angles((random(-0.017453292519943295,0.017453292519943295))+0+-0.08726646259971647*cos((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+0,(random(-0.017453292519943295,0.017453292519943295))+3.141592653589793)),angles(-1.5707963705062866,0,-3.141592502593994)),.5)RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,0.2,-1),angles(-0.4363323129985824+-0.17453292519943295*cos((sine*3)),-0.4363323129985824,0)),angles(0,1.5707963705062866,0)),.5)LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-0.9,-0.3),angles(0.2617993877991494+-0.2617993877991494*sin((sine*3)),0.3490658503988659,0)),angles(-0,-1.5707963705062866,0)),.5)LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.8,0.5,-0.25+0.2*sin((sine*3))),angles((random(-0.017453292519943295,0.017453292519943295))+2.8797932657906435+0.17453292519943295*sin((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+-0.2617993877991494,(random(-0.017453292519943295,0.017453292519943295))+0.3490658503988659)),angles(-0,-1.5707963705062866,0)),.5)RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(0.8,0.5,-0.25+0.2*sin((sine*3))),angles((random(-0.017453292519943295,0.017453292519943295))+2.8797932657906435+-0.17453292519943295*sin((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+0.2617993877991494,(random(-0.017453292519943295,0.017453292519943295))+-0.3490658503988659)),angles(0,1.5707963705062866,0)),.5)Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles((random(-0.017453292519943295,0.017453292519943295))+-0.6981317007977318+-0.2617993877991494*cos((sine*3)),(random(-0.017453292519943295,0.017453292519943295))+0,(random(-0.017453292519943295,0.017453292519943295))+0)),angles(-1.5707963705062866,0,-3.141592502593994)),min(.5*2,1))
elseif Table.AnimState==6 then 
  RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.4,0+0.2*cos(sine*2.5),-0.9),angles(-0.6108652381980153+-0.3490658503988659*sin(sine*2.5),-0.3490658503988659+-0.17453292519943295*cos(sine*2.5),-0.2617993877991494)),angles(0,1.5707963705062866,0)),.5)LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-0.9+0.2*cos(sine*2.5),-0.5),angles(-0.17453292519943295+0.3490658503988659*sin(sine*2.5),-0.4363323129985824,0)),angles(-0,-1.5707963705062866,0)),.5)LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1.4,0+-0.2*cos(sine*2.5),-0.4),angles(0.4363323129985824+0.4363323129985824*sin(sine*2.5),0.6108652381980153,2.0943951023931953)),angles(-0,-1.5707963705062866,0)),.5)RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,10+1*sin(sine*2.5),0),angles(0+0.3490658503988659*cos(sine*2.5),0.6108652381980153,0)),angles(-1.5707963705062866,0,-3.141592502593994)),.5)RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0.75+-0.2*cos(sine*2.5),0.65),angles(0.3490658503988659+0.17453292519943295*sin(sine*2.5),0.6108652381980153,-1.0471975511965976)),angles(0,1.5707963705062866,0)),.5)Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.17453292519943295+-0.2617993877991494*sin(sine*2.5),-0.6108652381980153,0)),angles(-1.5707963705062866,0,-3.141592502593994)),.5)
 end
end,
ModeAsset=function()
return {
 RingData={
[1]={
SpecialAttribute='None',
Color=c3(0.000000,0.000000,0.000000),
Scale=1.75,
Transparency=0,
Material=Enum.Material.Neon,
ModelName='Ring_Model1',
HandleName='Ring_Piece1',
Part1='RealChar.Torso',
Lerp='cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0))',
RingAttach='RealChar.Ring_Model1.Ring_Piece1',
SetColorFromUI='SecondaryColor',
},
[2]={
SpecialAttribute='None',
Color=c3(1.000000,1.000000,1.000000),
Scale=1.65,
Transparency=0,
Material=Enum.Material.Neon,
ModelName='Ring_Model2',
HandleName='Ring_Piece2',
Part1='RealChar.Torso',
Lerp='cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0))',
RingAttach='RealChar.Ring_Model2.Ring_Piece2',
SetColorFromUI='PrimaryColor',
},
},

WingData={
[1]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,80),
rlwsm=v3(0.5,80,5),
lws=cf(0,0,0.375)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-6.375,0.375)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.75,-6.375,0.375)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.75,0,0.375)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.375,-6.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.375,0.375)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.5,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,4.1887902047863905)))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='PrimaryColor',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,100,5),
llwsm=v3(0.5,5,100),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-5.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-4.333333492279053)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model12',
HandleName='Wing_Piece_12',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,5.759586531581287)))',
WingAttach='RealChar.Wing_Model12.Wing_Piece_12',
SetColorFromUI='SecondaryColor',
},
[3]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,100,5),
llwsm=v3(0.5,5,100),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.25,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-5.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-4.333333492279053)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model7',
HandleName='Wing_Piece_7',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,0.5235987755982988)))',
WingAttach='RealChar.Wing_Model7.Wing_Piece_7',
SetColorFromUI='SecondaryColor',
},
[4]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,80),
rlwsm=v3(0.5,80,5),
lws=cf(0,0,0.375)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-6.375,0.375)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.75,-6.375,0.375)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.75,0,0.375)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.375,-6.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.375,0.375)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.5,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,1.0471975511965976)))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='PrimaryColor',
},
[5]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,80),
rlwsm=v3(0.5,80,5),
lws=cf(0,0,0.375)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-6.375,0.375)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.75,-6.375,0.375)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.75,0,0.375)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.375,-6.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.375,0.375)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.5,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,2.0943951023931953)))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='PrimaryColor',
},
[6]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,80),
rlwsm=v3(0.5,80,5),
lws=cf(0,0,0.375)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-6.375,0.375)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.75,-6.375,0.375)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.75,0,0.375)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.375,-6.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.375,0.375)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.5,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,0)))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='PrimaryColor',
},
[7]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,100,5),
llwsm=v3(0.5,5,100),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-5.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-4.333333492279053)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model9',
HandleName='Wing_Piece_9',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,2.6179938779914944)))',
WingAttach='RealChar.Wing_Model9.Wing_Piece_9',
SetColorFromUI='SecondaryColor',
},
[8]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,80),
rlwsm=v3(0.5,80,5),
lws=cf(0,0,0.375)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-6.375,0.375)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.75,-6.375,0.375)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.75,0,0.375)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.375,-6.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.375,0.375)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.5,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,5.235987755982989)))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='PrimaryColor',
},
[9]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,80),
rlwsm=v3(0.5,80,5),
lws=cf(0,0,0.375)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-6.375,0.375)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.75,-6.375,0.375)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.75,0,0.375)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.375,-6.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.375,0.375)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.5,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+0),0),angles(0,0.08726646259971647,3.141592653589793)))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='PrimaryColor',
},
[10]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,100,5),
llwsm=v3(0.5,5,100),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-5.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-4.333333492279053)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model8',
HandleName='Wing_Piece_8',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,1.5707963267948966)))',
WingAttach='RealChar.Wing_Model8.Wing_Piece_8',
SetColorFromUI='SecondaryColor',
},
[11]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,100,5),
llwsm=v3(0.5,5,100),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-5.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-4.333333492279053)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model10',
HandleName='Wing_Piece_10',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,3.6651914291880923)))',
WingAttach='RealChar.Wing_Model10.Wing_Piece_10',
SetColorFromUI='SecondaryColor',
},
[12]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,100,5),
llwsm=v3(0.5,5,100),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.25,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-5.25,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-4.333333492279053)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model11',
HandleName='Wing_Piece_11',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.5,7+3*cos((sine*2)+-0.5),0),angles(0,0.08726646259971647,4.71238898038469)))',
WingAttach='RealChar.Wing_Model11.Wing_Piece_11',
SetColorFromUI='SecondaryColor',
},
},  
}
end,
ModeDataEventLoop=function(Table)
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local LerpFramePosition=UIHandler.LerpFramePosition
local LerpFrameRotation=UIHandler.LerpFrameRotation
local is=insSet
local ig=insGet
local s=SecondaryColor
local p=PrimaryColor
UIHandler.OverrideHandleRot=true
local shake
if tpos<23.4 or (tpos>=110.9 and tpos<121.6) then
  local f=math.clamp(255*cos(sine*5)*1,2,255)
  local w=random(1,2+5)
  is(s,"Value",rgb(f,f,f))
  is(p,"Value",rgb(w,w,w))
  shake=clamp(ld/50,0,random(5,7))
elseif (tpos>=45 and tpos<=67) or (tpos>=121.6 and tpos<=134.55) or tpos>=154.3 and tpos<198  then
  shake=clamp(ld/50,0,random(5,7))
  local f=clamp(ld,0,random(100,255))
  local w=random(1,2+f)
  is(s,"Value",rgb(f,0,0))
  is(p,"Value",rgb(w,w,w))
elseif (tpos>=23.4 and tpos<45) or (tpos>=67 and tpos<110.9) or (tpos>=130.9 and tpos<132.6) or (tpos>=198 and tpos<329) then
  local f=clamp(ld,0,random(1,255))
  local w=random(1,2+f)
  local aa=random(50,100)
  is(s,"Value",rgb(f,f,f))
  is(p,"Value",rgb(w,w,w))
  if tpos>=198 and tpos<329 then 
  shake=clamp(ld/25,0,random(10,15))
  if tpos >=198 and tpos<=220 then 
  local g2=clamp(ld/900.5,0,1)/random(8,15)
  for _,v in next,UIHandler.Statics do
   insSet(v,"Visible",true)
   insSet(v,"ImageColor3",s.Value)
   insSet(v,"Position",u2(0,random(-5,5),0,random(-5,5)))
   --insSet(v,"ImageTransparency",1-g2)
   BetterTween(v,10,{ImageTransparency=1-g2}):Play()
   insSet(v,"ImageColor3",p.Value)
   end
  end
  else
  shake=clamp(ld/50,0,random(5,7))
  end
elseif tpos>=134.55 and tpos<=153.3 then 
  local f=clamp(ld,0,random(100,255))
  local w=random(1,2+f)
  is(s,"Value",rgb(f,0,0))
  is(p,"Value",rgb(w,w,w))
elseif tpos>=329 and tpos<369.85 then
  shake=clamp(ld/50,0,random(5,7))
  local rand1=mrandom(1,4)
  local ok=random(0,0.1)
  local c3t={c3(),c3(0.25,0.25,0.25),c3(1,1,1),c3(random(0.9,1),ok,ok)}
  is(p,"Value",c3(0.9+0.1*sin(sine/2),0.2+0.2*cos(sine),0.2+0.2*cos(sine)))
  is(s,"Value",c3t[rand1])
elseif tpos>=369.85 and tpos<388.5 then
  shake=0
  is(p,"Value",c3(0.7+0.25*sin(sine/2),0.1+0.1*sin(sine/2),0.1+0.1*sin(sine/2)))
  is(s,"Value",c3(0.45+0.25*sin(sine/2),0.1+0.1*sin(sine/2),0.1+0.1*sin(sine/2)))
else
  shake=0
  is(s,"Value",c3())
  is(p,"Value",c3())
end
if tpos>=121.6 and tpos<=132.6 or tpos>=134.55 and tpos<= 140 or tpos>= 143 and tpos<= 154.3 then 
  local g2=clamp(ld/900.5,0,1)/random(5,10)
  for _,v in next,UIHandler.Statics do
   insSet(v,"Visible",true)
   insSet(v,"ImageColor3",s.Value)
   insSet(v,"Position",u2(0,random(-5,5),0,random(-5,5)))
   insSet(v,"ImageTransparency",1-g2)
   insSet(v,"ImageColor3",p.Value)
 end
elseif tpos>=132.6 and tpos<=134.55  then 
  local g2=random(.1,.5)
  for _,v in next,UIHandler.Statics do
    insSet(v,"Visible",true)
    insSet(v,"ImageColor3",s.Value)
    insSet(v,"Position",u2(0,random(-5,5),0,random(-5,5)))
    insSet(v,"ImageTransparency",1-g2)
    insSet(v,"ImageColor3",p.Value)
  end
elseif tpos>=144 and tpos<=147 then 
  local g2=tpos%1
  for _,v in next,UIHandler.Statics do
    insSet(v,"Visible",true)
    insSet(v,"ImageColor3",s.Value)
    insSet(v,"Position",u2(0,random(-5,5),0,random(-5,5)))
    insSet(v,"ImageTransparency",1-g2)
    insSet(v,"ImageColor3",p.Value)
  end
elseif tpos>=154.3 then 
  for _,v in next,UIHandler.Statics do
  if tpos >=198 and tpos<=220 then 
    insSet(v,"Visible", true)
    else
    insSet(v,"Visible",false)
    end
    insSet(v,"ImageColor3",s.Value)
    insSet(v,"Position",u2(0,random(-5,5),0,random(-5,5)))
    insSet(v,"ImageColor3",p.Value)
  end
end

if tpos<132.6 or tpos>=154.3 then 
 LerpFramePosition(UIHandler.BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-10*cos((sine*2)+1)),.35)
  LerpFrameRotation(UIHandler.BottomFrame["Bottom"].Frame,random(-shake,shake),.25)
  LerpFramePosition(UIHandler.TopFrames["MainFrame"].Frame,UDim2.new(0.33, -16-10*sin(sine*1), 0, 10*cos((sine*2)+1)),.35)
  LerpFrameRotation(UIHandler.TopFrames["MainFrame"].Frame,random(-shake,shake),.25)
  LerpFrameRotation(UIHandler.TopFrames["Handler2"].Frame,random(-shake,shake),.25)
elseif tpos>=132.6 and tpos<=134.55 then 
    LerpFramePosition(UIHandler.BottomFrame["Bottom"].Frame,UDim2.new(0, -100*cos(sine*2), 0, 40*cos((sine*2)*2)),.075)
    LerpFrameRotation(UIHandler.BottomFrame["Bottom"].Frame,180-20*sin(sine*2),.075)
    LerpFramePosition(UIHandler.TopFrames["MainFrame"].Frame,UDim2.new(.35, 100*cos(sine*2), 0.85, 25-20*cos((sine+1)*2)),.025)
    LerpFrameRotation(UIHandler.TopFrames["MainFrame"].Frame,180+20*sin(sine*2),.050)
    LerpFrameRotation(UIHandler.TopFrames["Handler2"].Frame,-10*sin(sine*2),.050)
elseif tpos>=134.55 and tpos<=154.3 then
   LerpFramePosition(UIHandler.BottomFrame["Bottom"].Frame,UDim2.new(0, -100*cos(sine*2), 0, 40*cos((sine*2)*2)),.25)
    LerpFrameRotation(UIHandler.BottomFrame["Bottom"].Frame,180-20*sin(sine*2),.1)
    LerpFramePosition(UIHandler.TopFrames["MainFrame"].Frame,UDim2.new(.35, 100*cos(sine*2), 0.85, 25-20*cos((sine+1)*2)),.25)
    LerpFrameRotation(UIHandler.TopFrames["MainFrame"].Frame,180+20*sin(sine*2),.1)
    LerpFrameRotation(UIHandler.TopFrames["Handler2"].Frame,-10*sin(sine*2),.25)
end
if tpos>=110.9 and tpos<121.6 then 
 Table.AnimState=2
elseif tpos>=130.9 and tpos<132.6 then 
 Table.AnimState=3
elseif tpos>=132.6 and tpos<134.55 then 
 Table.AnimState=4 
elseif tpos>=134.55 and tpos<154.3 then 
 Table.AnimState=5
elseif tpos>=329 then 
 Table.AnimState=6
else
 Table.AnimState=1
end
 RecolorUI(true)
end,
EventData={
AnimState=1
},
PrimaryColor=c3(1,1,1),
SecondaryColor=rgb(66,66,66),
Speed=12,
JumpPower=50,
Title="Nhelv",
Key=nil,
SecondaryName="Firioss",
Side="Vilrum",-- Spectrum
Desc="Beyond Genesis",
SongData={
  title="Nhelv",
  auth="Silentroom",
  remix="2020 Remaster Ver",
},
  },

  ["Delirium"]={
WingAnimData=function(Table)
  sine=osclock()
  local ld=GlobalTable.SoundInstace.PlaybackLoudness/10
  spinboost-=rad(50)*rad(clamp(ld,1,360))
  if Table.AnimState==1 then 
 
 
 RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,2.443460952792061+0.8726646259971648*cos((sine*1.5)+-1)),cfMul(cf(-8.5,2+2*cos((sine*1.5)+-1),0),angles(0,-0.2617993877991494,0))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Wing_Model11.Wing_Piece_11 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,1.5707963267948966),cfMul(cf(0.75,0,0),angles(0,0,-1.5707963267948966))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Wing_Model5.Wing_Piece_5 RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0,cfMul(angles(3.141592653589793,0,1.2217304763960306+-0.3490658503988659*cos((sine*1.5)+0)),cfMul(cf(4.5,-4.75,0),angles(0,0.08726646259971647,0))),0.5)

RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.5235987755982988+-1.0471975511965976*cos((sine*1.5)+-1.5)),cfMul(cf(10.5,7.25+3*cos((sine*1.5)+-1.5),0),angles(0,0.3490658503988659,0))),0.5)

RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].Part1=RealChar.Wing_Model17.Wing_Piece_17 RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,3.141592653589793,-3.490658503988659+-1.9198621771937625*cos((sine*1.5)+-2.5)),cfMul(cf(8+-6*cos((sine*1.5)+-2.5),16.25+5*cos((sine*1.5)+-2.5),-0.5),angles(0,0.5235987755982988,0))),0.5)

RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Wing_Model1.Wing_Piece_1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,2.2689280275926285+0.6981317007977318*cos((sine*1.5)+-0.5)),cfMul(cf(-6.5,-2+1*cos((sine*1.5)+-0.5),0),angles(0,-0.17453292519943295,0))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,2.9670597283903604+1.3962634015954636*cos((sine*1.5)+-2)),cfMul(cf(-9+2.5*cos((sine*1.5)+-2),12+4*cos((sine*1.5)+-2),0),angles(0,-0.4363323129985824,0))),0.5)

RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].Part1=RealChar.Wing_Model21.Wing_Piece_21 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.2217304763960306+0.3490658503988659*cos((sine*1.5)+0)),cfMul(cf(4,5,0),angles(0,0.08726646259971647,3.141592653589793))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Wing_Model7.Wing_Piece_7 RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].Part1=RealChar.Wing_Model13.Wing_Piece_13 RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.8726646259971648+-0.6981317007977318*cos((sine*1.5)+-0.5)),cfMul(cf(6.5,-1.5+1*cos((sine*1.5)+-0.5),0),angles(0,0.17453292519943295,0))),0.5)

RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Wing_Model3.Wing_Piece_3 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,2.6179938779914944+1.0471975511965976*cos((sine*1.5)+-1.5)),cfMul(cf(-10,7+3*cos((sine*1.5)+-1.5),0),angles(0,-0.3490658503988659,0))),0.5)

RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].Part1=RealChar.Wing_Model15.Wing_Piece_15 RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.17453292519943295+-1.3962634015954636*cos((sine*1.5)+-2)),cfMul(cf(9.5+-2.5*cos((sine*1.5)+-2),12.25+4*cos((sine*1.5)+-2),0),angles(0,0.4363323129985824,0))),0.5)

RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.6981317007977318+-0.8726646259971648*cos((sine*1.5)+-1)),cfMul(cf(8,2.25+2*cos((sine*1.5)+-1),0),angles(0,0.2617993877991494,0))),0.5)

RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0.1),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].Part1=RealChar.Wing_Model23.Wing_Piece_23 RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].Part1=RealChar.Wing_Model19.Wing_Piece_19 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963267948966),cfMul(cf(-0.75,0,0),angles(0,0,1.5707963267948966))),0.5)

RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Wing_Model9.Wing_Piece_9 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,3.490658503988659+1.9198621771937625*cos((sine*1.5)+-2.5)),cfMul(cf(-7.5+6*cos((sine*1.5)+-2.5),16+5*cos((sine*1.5)+-2.5),0),angles(0,-0.5235987755982988,0))),0.5)

RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1
elseif Table.AnimState==2 then 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,4,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
 RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0.08726646259971647,0),cfMul(cf(7,-0.5,0.5),angles(0,0+0.3490658503988659*sin((sine*1)+-0.5),0+0.5235987755982988*cos((sine*1)+-0.5)))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,0.75,0.1),angles(0,0,0))),0.5)
RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Wing_Model11.Wing_Piece_11 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(0,0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Wing_Model5.Wing_Piece_5 RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,3.5779249665883754),cfMul(cf(-9.5,2.5,0),angles(0,0.08726646259971647+-0.3490658503988659*sin((sine*1)+0),0+-0.6981317007977318*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.17453292519943295),cfMul(cf(3,-1.35,0),angles(0,0+0.3490658503988659*cos((sine*1)+-0.5),0+0.3490658503988659*sin((sine*1)+-0.5)))),0.5)
RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].Part1=RealChar.Wing_Model17.Wing_Piece_17 RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.3490658503988659),cfMul(cf(3,-1,0),angles(0,0+0.3490658503988659*cos((sine*1)+-1),0+0.3490658503988659*sin((sine*1)+-1)))),0.5)
RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].Part1=RealChar.Wing_Model21.Wing_Piece_21 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,-0.75,-0.025),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Wing_Model1.Wing_Piece_1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(cfMul(cf(3,-2.5,-0.2),angles(0.03490658503988659,0+-0.3490658503988659*cos((sine*1)+0),0.17453292519943295+0.3490658503988659*sin((sine*1)+0))),angles(-3.141592502593994,0,0)),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Wing_Model1.Wing_Piece_1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0.4363323129985824),cfMul(cf(7,-4,0),angles(0,0.08726646259971647+0.3490658503988659*sin((sine*1)+-1),0+0.3490658503988659*cos((sine*1)+-1)))),0.5)
RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,0.75,0.1),angles(0,0,0))),0.5)
RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].Part1=RealChar.Wing_Model15.Wing_Piece_15 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-0.4363323129985824),cfMul(cf(9,3,0),angles(0,0.08726646259971647+0.3490658503988659*sin((sine*1)+0),0+0.6981317007977318*cos((sine*1)+0)))),0.5)
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,0.75,0.1),angles(0,0,0))),0.5)
RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Wing_Model7.Wing_Piece_7 RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(0,0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].Part1=RealChar.Wing_Model13.Wing_Piece_13 RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,-1.25,0),angles(0,0+0.3490658503988659*cos((sine*1)+0),0.17453292519943295+0.3490658503988659*sin((sine*1)+0)))),0.5)
RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].Part1=RealChar.Wing_Model13.Wing_Piece_13 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,0.75,0.1),angles(0,0,0))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Wing_Model3.Wing_Piece_3 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(cfMul(cf(3,-2.5,0),angles(0,0+0.3490658503988659*sin((sine*1)+-0.5),0+0.3490658503988659*sin((sine*1)+-0.5))),angles(-3.141592502593994,0,-0.17453292519943295)),0.5)
RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Wing_Model5.Wing_Piece_5 RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,0.75,0.1),angles(0,0,0))),0.5)
RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].Part1=RealChar.Wing_Model19.Wing_Piece_19 RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(0,0,.1),angles(-3.141592653589793,0,0))),0.5)
RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].Part1=RealChar.Wing_Model17.Wing_Piece_17 RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(0,0.75,-0.1),angles(0,0,0))),0.5)
RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].Part1=RealChar.Wing_Model21.Wing_Piece_21 RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3,0.75,0.1),angles(0,0,0))),0.5)
RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].Part1=RealChar.Wing_Model23.Wing_Piece_23 RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-3.5779249665883754),cfMul(cf(-6.6,-4.5,0),angles(0,0.08726646259971647+-0.3490658503988659*sin((sine*1)+-1),0+-0.3490658503988659*cos((sine*1)+-1)))),0.5)
RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-3.141592653589793),cfMul(cf(-8,-1.25,0),angles(0,0.08726646259971647+-0.3490658503988659*sin((sine*1)+-0.5),0+-0.5235987755982988*cos((sine*1)+-0.5)))),0.5)
RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(0,0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Wing_Model9.Wing_Piece_9 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-0.2617993877991494),cfMul(cf(3,2.5,0.1),angles(0,0+0.3490658503988659*cos((sine*1)+-1),0+-0.3490658503988659*sin((sine*1)+-1)))),0.5)
RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Wing_Model9.Wing_Piece_9 



elseif Table.AnimState==3 then 
 RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963267948966),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0+sine))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+0),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Wing_Model11.Wing_Piece_11 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Wing_Model5.Wing_Piece_5 RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.141592653589793+sine))),0.5)
RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.141592653589793+sine*1.5))),0.5)
RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].Part1=RealChar.Wing_Model17.Wing_Piece_17 RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.141592653589793+sine*2))),0.5)
RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Wing_Model1.Wing_Piece_1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963267948966),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0+sine*1.5))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0+sine*2))),0.5)
RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].Part1=RealChar.Wing_Model21.Wing_Piece_21 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0+sine*2.5))),0.5)
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+0),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Wing_Model7.Wing_Piece_7 RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].Part1=RealChar.Wing_Model13.Wing_Piece_13 RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.141592653589793+sine*2.5))),0.5)
RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+0),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Wing_Model3.Wing_Piece_3 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0+sine*3))),0.5)
RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+0),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].Part1=RealChar.Wing_Model15.Wing_Piece_15 RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+0),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].Part1=RealChar.Wing_Model19.Wing_Piece_19 RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+0),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].Part1=RealChar.Wing_Model23.Wing_Piece_23 RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.141592653589793+sine*3))),0.5)
RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.141592653589793+sine*3.5))),0.5)
RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Wing_Model9.Wing_Piece_9 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0+sine*3.5))),0.5)
RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,1.5),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)



elseif Table.AnimState==4 then 
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963267948966),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,5.235987755982989+sine*5))),0.5)
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Wing_Model11.Wing_Piece_11 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Wing_Model5.Wing_Piece_5 RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,1.5707963267948966+sine*5))),0.5)
RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,3.141592653589793+sine*5))),0.5)
RealChar.Wing_Model19.Wing_Piece_19["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].Part1=RealChar.Wing_Model17.Wing_Piece_17 RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,4.1887902047863905+sine*5))),0.5)
RealChar.Wing_Model23.Wing_Piece_23["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Wing_Model1.Wing_Piece_1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963267948966),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,4.71238898038469+sine*5))),0.5)
RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,0+sine*5))),0.5)
RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model22.Wing_Piece_22["Wing Weld:3"].Part1=RealChar.Wing_Model21.Wing_Piece_21 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0.5235987755982988+sine*5))),0.5)
RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Wing_Model7.Wing_Piece_7 RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].Part1=RealChar.Wing_Model13.Wing_Piece_13 RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,2.0943951023931953+sine*5))),0.5)
RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Wing_Model3.Wing_Piece_3 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,5.759586531581287+sine*5))),0.5)
RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.6651914291880923+sine*5))),0.5)
RealChar.Wing_Model21.Wing_Piece_21["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,2.6179938779914944+sine*5))),0.5)
RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model24.Wing_Piece_24["Wing Weld:3"].Part1=RealChar.Wing_Model23.Wing_Piece_23 RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model20.Wing_Piece_20["Wing Weld:3"].Part1=RealChar.Wing_Model19.Wing_Piece_19 RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].Part1=RealChar.Wing_Model15.Wing_Piece_15 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0))),0.5)
RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Wing_Model9.Wing_Piece_9 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,1.0471975511965976+sine*5))),0.5)
RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,1.5),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
  end
end,
BodyAnimData=function(Table)
  sine=osclock()
  if Table.AnimState==1 then 
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.5,-0.5),angles(3.0630528372500483,0.15533430342749532,0.4328416544945937)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.30000000000000004+0.15*sin((sine*2)+0),0.2),angles(2.4085543677521746+0.3490658503988659*cos((sine*2)+-1),-0.5934119456780721,0.4537856055185257)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.4000000000000001,-0.30000000000000004+0.25*cos((sine*2)+2),-0.4),angles(-0.3141592653589793+0.17453292519943295*cos((sine*2)+1),0.5235987755982988,0.19198621771937624)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.2000000000000002,-1+0.15*sin((sine*2)+0),-0.30000000000000004),angles(0+0.3490658503988659*cos((sine*2)+0),-0.2617993877991494,0.10471975511965978)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,15+0.5*sin((sine*2)+0),0),angles(0.10471975511965978+0.17453292519943295*cos((sine*2)+0),-0.3490658503988659+-0.17453292519943295*cos((sine*1)+0),-0.06981317007977318+0.17453292519943295*sin((sine*1)+-1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.22689280275926285+-0.17453292519943295*cos((sine*2)+1),0.29670597283903605,0.13962634015954636)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
  elseif Table.AnimState==2 then 
 LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.8+0.25*cos((sine*2)+0),-0.1),angles(2.6878070480712677,-0.12217304763960307,-0.2617993877991494+-0.17453292519943295*cos((sine*2)+1))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.2+0.2*sin((sine*2)+0),0),angles(-0.08726646259971647,-0.22689280275926285,0.3839724354387525+0.2617993877991494*cos((sine*2)+-0.5))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.2,-0.2+0.15*sin((sine*2)+0),-0.4),angles(-0.3490658503988659+0.2617993877991494*cos((sine*2)+0.5),0.7225663103256525,-0.008726646259971648)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.1,-1+0.2*sin((sine*2)+0),0),angles(0.08726646259971647+0.2617993877991494*cos((sine*2)+0),-0.2617993877991494,0.19198621771937624)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,15+0.5*cos((sine*2)+0),0),angles(0+0.17453292519943295*sin((sine*2)+0),-0.4363323129985824,0.03490658503988659+0.17453292519943295*sin((sine*1)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.13962634015954636+-0.08726646259971647*cos((sine*2)+0.5)+0.0017453292519943296*tan((sine*1000)+0),0.47123889803846897,0+0.17453292519943295*sin((sine*1)+0)+0.0017453292519943296*tan((sine*10000)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
  elseif Table.AnimState==3 then 
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.8,-0.30000000000000004+0.25*cos((sine*2)+0),0.2),angles(2.181661564992912+0.2617993877991494*cos((sine*2)+0),0.4363323129985824,-0.5759586531581288)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.2+0.25*sin((sine*2)+-1),0.5),angles(2.6354471705114375+0.2617993877991494*cos((sine*2)+0),-0.2617993877991494,0.8552113334772214)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1,-0.4+0.2*cos((sine*2)+0),-0.1),angles(-0.10471975511965978+0.2617993877991494*cos((sine*2)+-0.5),0.47123889803846897,-0.17453292519943295)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.2000000000000002,-0.1+0.25*sin((sine*2)+0),-0.6000000000000001),angles(-0.3141592653589793+0.2617993877991494*cos((sine*2)+-0.5),-0.2792526803190927,0.24434609527920614)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0+0.25*cos((sine*2)+0),15+0.35*sin((sine*2)+0),0),angles(0.3839724354387525+0.17453292519943295*cos((sine*2)+0),0.2792526803190927+0.17453292519943295*sin((sine*2)+0),-0.05235987755982989+0.17453292519943295*sin((sine*2)+1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.3665191429188092+-0.2617993877991494*cos((sine*2)+0.25),-0.24434609527920614+-0.17453292519943295*sin((sine*2)+0),0)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
elseif Table.AnimState==4 then 
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.2+0.15*cos((sine*2)+-0.5),-0.1),angles(1.2234758056480253+-0.2617993877991494*cos((sine*2)+0),0.08203047484373349,-0.6894050545377601)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,-0.5+0.25*sin((sine*2)+-0.25),0.4),angles(2.2689280275926285+0.2617993877991494*cos((sine*2)+0.5),-0.08726646259971647,0.4014257279586958+0.17453292519943295*sin((sine*2)+-1))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.1,-0.1+0.25*sin((sine*2)+0),-0.6000000000000001),angles(-0.20943951023931956+-0.17453292519943295*cos((sine*2)+-1),0.4188790204786391,-0.29670597283903605)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.2,-0.7000000000000001+0.25*cos((sine*2)+0),-0.3),angles(0.08726646259971647+0.3490658503988659*cos((sine*2)+1),-0.2792526803190927,0.24434609527920614)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,15+0.5*cos((sine*2)+0),0),angles(0.22689280275926285+0.1308996938995747*sin((sine*2)+0),-0.6283185307179586,0.08726646259971647+0.1308996938995747*cos((sine*2)+1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.2792526803190927+-0.17453292519943295*sin((sine*2)+1),0.5759586531581288,0.13962634015954636+0.17453292519943295*cos((sine*2)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
  end 
end,
ModeAsset=function()
local model25=i("Model",RealChar)  insSet(model25,"Name","Ring_Model1");model25:SetAttribute("ModeAsset",true);model25:SetAttribute("TargetColor","None");local handlex25=CreateParta(model25,1,1,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(handlex25,"Brick",v3(0,0,0));local handlexweld25=CreateWeld(handlex25,handlex25,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex25,"Name","Ring_Piece1");insSet(handlex25,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex25,0,0,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex25,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model25:ScaleTo(1.5)  handlexweld25.Part1=RealChar.Torso for _,e in model25:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model30=i("Model",RealChar)  insSet(model30,"Name","Ring_Model2");model30:SetAttribute("ModeAsset",true);model30:SetAttribute("TargetColor","PrimaryColor");local handlex30=CreateParta(model30,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex30,"Brick",v3(0,0,0));local handlexweld30=CreateWeld(handlex30,handlex30,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex30,"Name","Ring_Piece2");insSet(handlex30,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex30,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex30,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model30:ScaleTo(1.35)  handlexweld30.Part1=RealChar.Ring_Model1.Ring_Piece1 for _,e in model30:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963267948966),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,5.235987755982989)))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model12',
HandleName='Wing_Piece_12',
Part1='RealChar.Wing_Model11.Wing_Piece_11',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model12.Wing_Piece_12',
SetColorFromUI='PrimaryColor',
},
[3]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Wing_Model5.Wing_Piece_5',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='PrimaryColor',
},
[4]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model13',
HandleName='Wing_Piece_13',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,1.5707963267948966)))',
WingAttach='RealChar.Wing_Model13.Wing_Piece_13',
SetColorFromUI='None',
},
[5]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model19',
HandleName='Wing_Piece_19',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,3.141592653589793)))',
WingAttach='RealChar.Wing_Model19.Wing_Piece_19',
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model18',
HandleName='Wing_Piece_18',
Part1='RealChar.Wing_Model17.Wing_Piece_17',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model18.Wing_Piece_18',
SetColorFromUI='PrimaryColor',
},
[7]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model23',
HandleName='Wing_Piece_23',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,4.1887902047863905)))',
WingAttach='RealChar.Wing_Model23.Wing_Piece_23',
SetColorFromUI='None',
},
[8]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Wing_Model1.Wing_Piece_1',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='PrimaryColor',
},
[9]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963267948966),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,4.71238898038469)))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='None',
},
[10]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model9',
HandleName='Wing_Piece_9',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6+-2*sin((sine*1)+0),0),angles(0,0.08726646259971647,0)))',
WingAttach='RealChar.Wing_Model9.Wing_Piece_9',
SetColorFromUI='None',
},
[11]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model22',
HandleName='Wing_Piece_22',
Part1='RealChar.Wing_Model21.Wing_Piece_21',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model22.Wing_Piece_22',
SetColorFromUI='PrimaryColor',
},
[12]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,0.5235987755982988)))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='None',
},
[13]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model8',
HandleName='Wing_Piece_8',
Part1='RealChar.Wing_Model7.Wing_Piece_7',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model8.Wing_Piece_8',
SetColorFromUI='PrimaryColor',
},
[14]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model14',
HandleName='Wing_Piece_14',
Part1='RealChar.Wing_Model13.Wing_Piece_13',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model14.Wing_Piece_14',
SetColorFromUI='PrimaryColor',
},
[15]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model15',
HandleName='Wing_Piece_15',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,2.0943951023931953)))',
WingAttach='RealChar.Wing_Model15.Wing_Piece_15',
SetColorFromUI='None',
},
[16]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Wing_Model3.Wing_Piece_3',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='PrimaryColor',
},
[17]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model7',
HandleName='Wing_Piece_7',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,5.759586531581287)))',
WingAttach='RealChar.Wing_Model7.Wing_Piece_7',
SetColorFromUI='None',
},
[18]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model21',
HandleName='Wing_Piece_21',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,3.6651914291880923)))',
WingAttach='RealChar.Wing_Model21.Wing_Piece_21',
SetColorFromUI='None',
},
[19]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model17',
HandleName='Wing_Piece_17',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,2.6179938779914944)))',
WingAttach='RealChar.Wing_Model17.Wing_Piece_17',
SetColorFromUI='None',
},
[20]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model24',
HandleName='Wing_Piece_24',
Part1='RealChar.Wing_Model23.Wing_Piece_23',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model24.Wing_Piece_24',
SetColorFromUI='PrimaryColor',
},
[21]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model20',
HandleName='Wing_Piece_20',
Part1='RealChar.Wing_Model19.Wing_Piece_19',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model20.Wing_Piece_20',
SetColorFromUI='PrimaryColor',
},
[22]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model16',
HandleName='Wing_Piece_16',
Part1='RealChar.Wing_Model15.Wing_Piece_15',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+2),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model16.Wing_Piece_16',
SetColorFromUI='PrimaryColor',
},
[23]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.599999904632568,0.3499999940395355)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.699999988079071,-5.599999904632568,0.3499999940395355)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.699999988079071,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3499999940395355,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3499999940395355,0.3499999940395355)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model10',
HandleName='Wing_Piece_10',
Part1='RealChar.Wing_Model9.Wing_Piece_9',
ModelScale=1.399999976158142,
Lerp='cfMul(angles(-3.141592502593994,0,0),cfMul(cf(3+3*cos((sine*1)+1),0.75,0),angles(0,0,0)))',
WingAttach='RealChar.Wing_Model10.Wing_Piece_10',
SetColorFromUI='PrimaryColor',
},
[24]={
lswsm=v3(0.5,10,5),
rswsm=v3(0.5,10,5),
llwsm=v3(0.5,5,75),
rlwsm=v3(0.5,75,5),
lws=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-5.400000095367432,0.3375000059604645)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://6499637829',
llw=cf(0.675000011920929,-5.400000095367432,0.3375000059604645)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.675000011920929,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3375000059604645,-5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3375000059604645,0.3375000059604645)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model11',
HandleName='Wing_Piece_11',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.350000023841858,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35,6,0),angles(0,0.08726646259971647,1.0471975511965976)))',
WingAttach='RealChar.Wing_Model11.Wing_Piece_11',
SetColorFromUI='None',
},
}
}
end,
ModeDataEventLoop=function(Table)
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local LerpFramePosition=UIHandler.LerpFramePosition
local LerpFrameRotation=UIHandler.LerpFrameRotation
local is=insSet
local ig=insGet
local s=SecondaryColor
local p=PrimaryColor
local TopFrame=UIHandler.TopFrames
local BottomFrame=UIHandler.BottomFrame
UIHandler.OverrideHandleRot=true
local l=tick()
if l-Clock<=10 then
 Table.AnimState=1
elseif l-Clock>=10 and l-Clock<=20 then
 Table.AnimState=2
elseif l-Clock>=20 and l-Clock<=30 then
 Table.AnimState=3
elseif l-Clock>=30 and l-Clock<=40 then
 Table.AnimState=4
elseif l-Clock>=40 then
 Clock=tick()
end
if tpos<29.707 or tpos>384.3 or tpos>=103.53 and tpos<=116.466 then
      if tpos<29.787  or tpos>=103.53 and tpos<=116.466 then
        local h=clamp(ld/50,0,50)
        local h1=clamp(ld/10,0,110)
        local sin1=clamp(25*cos(sine*5),0,10+h1)
        local pcs 
        local scs
        if ld>=210 then 
          pcs=CLerp(rgb(0+h/2,0,0+h),rgb(110+h1,0,200+h),random(.1,1))
          scs=CLerp(rgb(0+h/2,0,0+h),rgb(180+h,0,200+h),random(.1,1))
          LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25+5-15*cos((sine+2)*2)),.35)
          LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
          LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, h+15*cos((sine*2)*2)),.35)
          LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
          LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
        else
          LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-15*cos((sine+2)*2)),.35)
          LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
          LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, 15*cos((sine*2)*2)),.35)
          LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
          LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
          pcs=CLerp(rgb(0+h/2,0,0+h),rgb(55+sin1*2.5,0,100+h+sin1+h1/1.5),.25)
          scs=CLerp(rgb(0+h/2,0,0+h),rgb(90+sin1*5.5,0,100+h+sin1+h1/1.5),.25)
        end
        is(p,"Value",pcs)
        is(s,"Value",scs)
      elseif tpos>384.3 then
        local h=clamp(ld/150,0,50)
        local h1=clamp(ld/25,10,150)
        local sin1=clamp(25*cos(sine*5),0,10+h1)
        local pcs 
        local scs
         if ld>=210 then 
          pcs=CLerp(rgb(0+h1/2,0,0+h1),rgb(h1,0,100+h1),random(.1,1))
          scs=CLerp(rgb(0+h1/2,0,0+h1),rgb(80+h1,0,100+h1),random(.1,1))
          LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25+5-15*cos((sine+2)*2)),.35)
          LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
          LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, h+15*cos((sine*2)*2)),.35)
          LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
          LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
        else
          LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-15*cos((sine+2)*2)),.35)
          LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
          LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, 15*cos((sine*2)*2)),.35)
          LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
          LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
          pcs=CLerp(rgb(0+h/2,0,0+h),rgb(55+sin1*2.5,0,100+h+sin1+h1/1.5),.25)
          scs=CLerp(rgb(0+h/2,0,0+h),rgb(90+sin1*5.5,0,100+h+sin1+h1/1.5),.25)
        end
        is(p,"Value",pcs)
        is(s,"Value",scs)
     end
   elseif tpos>=29.707 and tpos<=57.502 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*5),0,10+h1)
      local sin2=clamp(-25*cos(sine*5),0,10+h1)
      is(p,"Value",rgb(25+sin1*5.5,0,20+sin1*5.5*.5))
      is(s,"Value",rgb(30+sin2*5.5,0,70+sin2*1.5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=57.502 and tpos<=59.3 then 
     
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*100),0,10+h1)
      local sin2=clamp(-25*cos(sine*100),0,10+h1)
      is(p,"Value",rgb(25+sin1*5.5,0,20+sin1*5.5*.5))
      is(s,"Value",rgb(30+sin2*5.5,0,70+sin2*1.5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>59.3 and tpos<=88.9 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*5),0,10+h1)
      local sin2=clamp(-25*cos(sine*5),0,10+h1*50)
     is(s,"Value",rgb(100+sin1,70+sin1*2.5,0))
     is(p,"Value",rgb(0,h1,50+sin2*5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=88.9 and tpos<=118.5 then
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*100),0,10+h1)
      local sin2=clamp(-25*cos(sine*100),0,10+h1*50)
     is(s,"Value",rgb(100+sin1,70+sin1*2.5,0))
     is(p,"Value",rgb(0,h1,50+sin2*5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>118.5 and tpos<144 then 
      local h1=clamp(ld/10,0,30)
      local h=clamp(ld/50,0,50)
      local sin1=clamp(25*sin(sine*5),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      local cols=clamp(100*sin(sine),0,100)
      is(s,"Value",rgb(cols,cols,cols))
      is(p,"Value",rgb(sin2*5.5,sin2*5.5,sin2*5.5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=144 and tpos<=148 then 
      local h1=clamp(ld/10,0,30)
      local h=clamp(ld/50,0,50)
      local sin1=clamp(25*sin(sine*105),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*107.5),0,10+h1)
      local cols=clamp(100*sin(sine),0,100)
      is(s,"Value",rgb(cols,cols,cols))
      is(p,"Value",rgb(sin2*5.5,sin2*5.5,sin2*5.5))
     local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>148 and tpos<172.75 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine*1.5),0,200)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      is(s,"Value",rgb(sin2*5.5,0,0))
      is(p,"Value",rgb(sin1,sin1,sin1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=172.75 and tpos<=177 then
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine*101.5),0,200)
      local sin2=clamp(-25*tan(sine*107.5),0,10+h1)
      is(s,"Value",rgb(sin2*5.5,0,0))
      is(p,"Value",rgb(sin1,sin1,sin1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>176.75 and tpos<203.250 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*5),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      local cols=clamp(100*sin(sine),0,100)
      is(s,"Value",rgb(0,cols,cols))
      is(p,"Value",rgb(0,sin2*5.5,sin2*5.5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=203.25 and tpos<=206.8 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*5),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      local cols=clamp(100*sin(sine),0,100)
      is(s,"Value",rgb(0,cols,cols))
      is(p,"Value",rgb(0,sin2*5.5,sin2*5.5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>206.8 and tpos<232.5 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(25*sin(sine*5),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      is(s,"Value",rgb(sin2*5.5,sin2*5.5,sin2*5.5))
      is(p,"Value",rainb)
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=232.5 and tpos<=236 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local rainb=Color3.fromHSV((tick()*1)%1,1,1)
      local sin1=clamp(25*sin(sine*5),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      is(s,"Value",rgb(sin2*5.5,sin2*5.5,sin2*5.5))
      is(p,"Value",rainb)
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
   elseif tpos>236 and tpos<250 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine*2),0,200)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      is(s,"Value",rgb(sin2*5.5,sin2*5.5,0))
      is(p,"Value",rgb(0,0,sin1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=250 and tpos<=266 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine*102),0,200)
      local sin2=clamp(-25*tan(sine*107.5),0,10+h1)
      is(s,"Value",rgb(sin2*5.5,sin2*5.5,0))
      is(p,"Value",rgb(0,0,sin1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>266 and tpos<291.55 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,150)
      local sin1=clamp(200*sin(sine),0,200)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      local sin3=clamp(-25*tan(sine*7.5),0,100)/100
      local cols=clamp(100*sin(sine*5),0,100)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local rainb1=Color3.fromHSV((tick()*.1)%1,1,sin3)
      is(s,"Value",rainb)
      is(p,"Value",rainb1)
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=291.55 and tpos<=295.55 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,150)
      local sin1=clamp(200*sin(sine),0,200)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      local sin3=clamp(-25*tan(sine*7.5),0,100)/100
      local cols=clamp(100*sin(sine*5),0,100)
      local rainb=Color3.fromHSV((tick()*2)%1,1,1)
      local rainb1=Color3.fromHSV((tick()*1)%1,1,sin3)
      is(s,"Value",rainb)
      is(p,"Value",rainb1)
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>295.55 and tpos<320.8 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine),0,200)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      is(s,"Value",Color3.fromHSV(random(.1,1),1,1))
      is(p,"Value",Color3.fromHSV(random(.1,1),1,1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>=320.8 and tpos<=325.2 then 
     local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine),0,200)
      local sin2=clamp(-25*tan(sine*107.5),0,10+h1)
      is(s,"Value",Color3.fromHSV(random(.1,1),1,1))
      is(p,"Value",Color3.fromHSV(random(.1,1),1,1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>325.2 and tpos<350.9 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine*1.5),0,200)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      is(s,"Value",Color3.fromHSV(clamp(255*tan(sine*7.5),0,255)%1,1,1))
      is(p,"Value",Color3.fromHSV(clamp(255*tan(sine*7.5),0,255)%1,1,1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>350.9 and tpos<=354.25 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/25,0,200)
      local rainb=Color3.fromHSV((tick()*.075)%1,1,1)
      local sin1=clamp(200*sin(sine*101.5),0,200)
      local sin2=clamp(-25*tan(sine*107.5),0,10+h1)
      is(s,"Value",Color3.fromHSV(clamp(255*tan(sine*7.5),0,255)%1,1,1))
      is(p,"Value",Color3.fromHSV(clamp(255*tan(sine*7.5),0,255)%1,1,1))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>354.25 and tpos<380.5 then 
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*5),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*7.5),0,10+h1)
      local cols=clamp(100*sin(sine),0,100)
      is(s,"Value",rgb(sin2*5.5,0,sin2*5.5))
      is(p,"Value",rgb(0,sin2*5.5,sin2*5.5))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   elseif tpos>380.5 and tpos<=384.3 then
      local h=clamp(ld/50,0,50)
      local h1=clamp(ld/10,0,30)
      local sin1=clamp(25*sin(sine*105),0,10+h1*5)
      local sin2=clamp(-25*tan(sine*107.5),0,10+h1)
      local cols=clamp(100*sin(sine),0,100)
      is(s,"Value",rgb(clamp(255*sin(sine*2),0,255),0,clamp(255*sin(sine*2),0,255)))
      is(p,"Value",rgb(0,clamp(255*sin(sine*2),0,255),clamp(255*sin(sine*2),0,255)))
      local debouche=h*2
      LerpFramePosition(BottomFrame["Bottom"].Frame,UDim2.new(0, 50*sin(sine*10), 0.95, 25-debouche),1)
      LerpFrameRotation(BottomFrame["Bottom"].Frame,random(-5,5),.25)
      LerpFramePosition(TopFrame["MainFrame"].Frame,UDim2.new(0.35, -16-100*sin(sine*10), 0, debouche),1)
      LerpFrameRotation(TopFrame["MainFrame"].Frame,random(-5,5),.25)
      LerpFrameRotation(TopFrame["Handler2"].Frame,random(-5,5),.25)
   end
RecolorUI(true)
end,
EventData={
AnimState=1
},
PrimaryColor=rgb(51,2,78),
SecondaryColor=c3(),
Speed=12,
JumpPower=50,
Title="Delirium",
Key=nil,
SecondaryName="Exiriqa",
Side="Vilrum",-- Spectrum
Desc="Inquisitence Sovereign",
SongData={
  title="Lexapro Doesn't Work",
  auth="Cynthoni",
  remix="None",
},
  },

["Iviriza"]={
WingAnimData=function(Table)
  sine=osclock()
  local ld=GlobalTable.SoundInstace.PlaybackLoudness/10
  spinboost-=rad(50)*rad(clamp(ld,1,360))
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,3.141592653589793+1.2217304763960306*cos((sine*2)+-1.25)))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model3.Ring_Piece3 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592653589793,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,2.6179938779914944+1.2217304763960306*cos((sine*2)+-0.5)))),0.5)

RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model7.Ring_Piece7 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,2.792526803190927+1.2217304763960306*cos((sine*2)+-0.75)))),0.5)

RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model7.Ring_Piece7 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,2.6179938779914944+1.2217304763960306*cos((sine*2)+-0.5)))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model3.Ring_Piece3 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4,0),angles(-0.17453292519943295,0.08726646259971647,-0.8726646259971648))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model5.Ring_Piece5 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4,0),angles(-0.17453292519943295,0.08726646259971647,0.8726646259971648))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,2.792526803190927+1.2217304763960306*cos((sine*2)+-0.75)))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model3.Ring_Piece3 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,2.9670597283903604+1.2217304763960306*cos((sine*2)+-1)))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model3.Ring_Piece3 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,2.9670597283903604+1.2217304763960306*cos((sine*2)+-1)))),0.5)

RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Ring_Model7.Ring_Piece7 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,3.141592653589793+1.2217304763960306*cos((sine*2)+-1.25)))),0.5)

RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Ring_Model7.Ring_Piece7 
 RealChar.Ring_Model8.Ring_Piece8["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model8.Ring_Piece8["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model7.Ring_Piece7["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model7.Ring_Piece7["Wing Weld:3"].C0,cfMul(cfMul(cf(5.75,0.25,0),angles(3.141592653589793,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model4.Ring_Piece4["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model4.Ring_Piece4["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(2,1.5,1.0499999523162842),angles(0,0,0+0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model6.Ring_Piece6["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model6.Ring_Piece6["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model3.Ring_Piece3["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model3.Ring_Piece3["Wing Weld:3"].C0,cfMul(cfMul(cf(5.75,-0.25,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model5.Ring_Piece5["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model5.Ring_Piece5["Wing Weld:3"].C0,cfMul(cfMul(cf(-2,1.5,1.0499999523162842),angles(0,0,0+-0.17453292519943295*sin((sine*2)+0))),angles(-3.141592502593994,0,0)),0.5)

RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].C0,cfMul(cfMul(cf(0,0,0),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
end,
BodyAnimData=function(Table)
  sine=osclock()
local AnimState=Table.AnimState
if AnimState==0 then 
  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,-1.7000000000000002,-1.4000000000000001),angles(0.3490658503988659,0.4014257279586958,-0.19198621771937624)),angles(-0,-1.5707963705062866,0)),0.5)
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1.1,0.5+0.1*sin((sine*2)+-0.25),0.2),angles(1.8151424220741028+0.17453292519943295*cos((sine*2)+0),0.06981317007977318,2.059488517353309+0.08726646259971647*sin((sine*2)+0))),angles(0,1.5707963705062866,0)),0.5)
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(angles(-0,-1.5707963705062866,0),cfMul(cf(0.8,-2,1),angles(0,-0.2792526803190927,1.1519173063162575+-0.05235987755982989*cos((sine*2)+-1)))),0.5)
 RightHip.C0=Lerp(RightHip.C0,cfMul(angles(0,1.5707963705062866,0),cfMul(cf(0.5,-1,1.4000000000000001),angles(-0.21467549799530256,-0.4014257279586958,0.06981317007977318+0.03490658503988659*cos((sine*2)+1)))),0.5)
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,-0.8+0.2*sin((sine*2)+0),0),angles(-0.8726646259971648+0.17453292519943295*cos((sine*2)+0.25),-0.29670597283903605,-0.05235987755982989)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.29670597283903605+0.17453292519943295*sin((sine*2)+0.25),0.2792526803190927,0.12217304763960307)),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
 LeftShoulder.Part0=RealChar.HumanoidRootPart
 RightShoulder.Part0=RealChar.Torso
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.Part0=RealChar.HumanoidRootPart
elseif AnimState==1 then 
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.75,0,0),angles(-0.5235987755982988+0.09599310885968812*sin((sine+0.4)*1000),0.3490658503988659,-0.17453292519943295+0.1832595714594046*sin((sine+0.75)*1000))),.75)  
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.45,0,0.5),angles(-0.5235987755982988+0.17453292519943295*sin((sine+0.2)*1000),-0.3490658503988659,-0.17453292519943295*sin((sine+0.9)*1000))),.75)  
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.2217304763960306-0.17453292519943295*sin((sine+0.85)*1000),0.17453292519943295*sin((sine+0.1)*1000),3.141592653589793-0.2617993877991494*sin((sine+0.75)*1000))),.75)  
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.25,0),angles(-1.2217304763960306,-0.08726646259971647,3.3161255787892263)),.75)  
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.75,-0.85,0.5),angles(-1.2217304763960306,-0.3490658503988659,-0.17453292519943295)),.75) 
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.75,-1,0.1),angles(-0.3490658503988659,-0.3490658503988659,-0.08726646259971647)),.75)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.Part0=RealChar.Torso
 LeftHip.Part0=RealChar.Torso
 RightHip.Part0=RealChar.Torso
elseif AnimState==2 then 
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.Part0=RealChar.Torso
 LeftHip.Part0=RealChar.Torso
 RightHip.Part0=RealChar.Torso
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.35,-1.25),angles(0,0.3490658503988659,2.2689280275926285)),.75)  
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.85,-1,0.5),angles(-0.9599310885968813,-0.3490658503988659,-0.17453292519943295)),.75)  
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.9198621771937625-0.2617993877991494*sin((sine+0.8)*1000),0.2181661564992912*sin((sine+0.1)*1000),3.141592653589793-0.26529004630313807*sin((sine+0.74)*1000))),.75)  
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.6,-1.15,0),angles(0,-0.3490658503988659,-0.08726646259971647)),.75)  
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0,0.75),angles(-0.5235987755982988+0.17453292519943295*sin((sine+0.8)*1000),-0.5235987755982988,0.3490658503988659-0.1308996938995747*sin((sine+0.1)*1000))),.75)  
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(-1,-0.15,-1),angles(-1.3962634015954636,-0.08726646259971647,3.839724354387525)),.75)
elseif AnimState==3 then 
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.Part0=RealChar.Torso
 LeftHip.Part0=RealChar.Torso
 RightHip.Part0=RealChar.Torso
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(3,-0.35,0),angles(-1.3962634015954636,0.04363323129985824,2.2689280275926285)),.75) 
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0,-1.25),angles(0,-0.3490658503988659,-2.0943951023931953)),.75)  
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.75,-0.2,0.25),angles(-1.2217304763960306,0.3490658503988659,-0.17453292519943295)),.75)  
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.35,-0.65,-0.35),angles(0,-0.3490658503988659,0.17453292519943295)),.75) 
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5707963267948966,-0.17453292519943295,3.141592653589793)),.75)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-1,0.75),angles(-0.6981317007977318,0.3490658503988659,-0.2181661564992912)),.75)  
elseif AnimState==4 then 
LeftShoulder.Part0=RealChar.Torso
 RightShoulder.Part0=RealChar.Torso
 LeftHip.Part0=RealChar.Torso
 RightHip.Part0=RealChar.Torso
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.25,-2),angles(-2.0943951023931953,0,3.141592653589793)),.75)  
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.45,-0.35,0.5),angles(-1.2217304763960306,-0.3490658503988659,0.17453292519943295)),.75) 
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.45,-0.2,0.5),angles(-1.2217304763960306,0.3490658503988659,-0.3490658503988659)),.75)  
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-0.75,-0.5),angles(0.5235987755982988,-0.3490658503988659,0)),.75)  
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.0471975511965976+0.17453292519943295*sin((sine+0.65)*100),-0.2617993877991494*sin((sine+0.8)*1000),3.141592653589793+0.17453292519943295*sin((sine+0.4)*1000))),.75)  
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-1.25,0),angles(-0.5235987755982988,0.3490658503988659,0)),.75)  
end
end,
ModeAsset=function()
local model1=i("Model",RealChar)  insSet(model1,"Name","Ring_Model8");model1:SetAttribute("ModeAsset",true);model1:SetAttribute("TargetColor","None");local handlex1=CreateParta(model1,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex1,"Brick",v3(0,0,0));local handlexweld1=CreateWeld(handlex1,handlex1,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex1,"Name","Ring_Piece8");insSet(handlex1,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex1,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex1,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model1:ScaleTo(0.95)  for _,e in model1:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model4=i("Model",RealChar)  insSet(model4,"Name","Ring_Model7");model4:SetAttribute("ModeAsset",true);model4:SetAttribute("TargetColor","None");local handlex4=CreateParta(model4,1,1,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(handlex4,"Brick",v3(0,0,0));local handlexweld4=CreateWeld(handlex4,handlex4,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex4,"Name","Ring_Piece7");insSet(handlex4,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex4,0,0,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex4,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model4:ScaleTo(1)  for _,e in model4:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model11=i("Model",RealChar)  insSet(model11,"Name","Ring_Model4");model11:SetAttribute("ModeAsset",true);model11:SetAttribute("TargetColor","None");local handlex11=CreateParta(model11,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex11,"Brick",v3(0,0,0));local handlexweld11=CreateWeld(handlex11,handlex11,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex11,"Name","Ring_Piece4");insSet(handlex11,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex11,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex11,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model11:ScaleTo(0.95)  for _,e in model11:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model12=i("Model",RealChar)  insSet(model12,"Name","Ring_Model1");model12:SetAttribute("ModeAsset",true);model12:SetAttribute("TargetColor","None");local handlex12=CreateParta(model12,1,1,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(handlex12,"Brick",v3(0,0,0));local handlexweld12=CreateWeld(handlex12,handlex12,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex12,"Name","Ring_Piece1");insSet(handlex12,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex12,0,0,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex12,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model12:ScaleTo(1) for _,e in model12:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model18=i("Model",RealChar)  insSet(model18,"Name","Ring_Model6");model18:SetAttribute("ModeAsset",true);model18:SetAttribute("TargetColor","None");local handlex18=CreateParta(model18,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex18,"Brick",v3(0,0,0));local handlexweld18=CreateWeld(handlex18,handlex18,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex18,"Name","Ring_Piece6");insSet(handlex18,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex18,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex18,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model18:ScaleTo(0.95) for _,e in model18:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model20=i("Model",RealChar)  insSet(model20,"Name","Ring_Model3");model20:SetAttribute("ModeAsset",true);model20:SetAttribute("TargetColor","None");local handlex20=CreateParta(model20,1,1,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(handlex20,"Brick",v3(0,0,0));local handlexweld20=CreateWeld(handlex20,handlex20,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex20,"Name","Ring_Piece3");insSet(handlex20,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex20,0,0,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex20,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model20:ScaleTo(1) for _,e in model20:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model21=i("Model",RealChar)  insSet(model21,"Name","Ring_Model5");model21:SetAttribute("ModeAsset",true);model21:SetAttribute("TargetColor","None");local handlex21=CreateParta(model21,1,1,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(handlex21,"Brick",v3(0,0,0));local handlexweld21=CreateWeld(handlex21,handlex21,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex21,"Name","Ring_Piece5");insSet(handlex21,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex21,0,0,Enum.Material.Neon,c3(0.000000,0.000000,0.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex21,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model21:ScaleTo(1) for _,e in model21:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end

 local model23=i("Model",RealChar)  insSet(model23,"Name","Ring_Model2");model23:SetAttribute("ModeAsset",true);model23:SetAttribute("TargetColor","None");local handlex23=CreateParta(model23,1,1,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(handlex23,"Brick",v3(0,0,0));local handlexweld23=CreateWeld(handlex23,handlex23,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex23,"Name","Ring_Piece2");insSet(handlex23,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex23,0,0,Enum.Material.Neon,c3(1.000000,1.000000,1.000000));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex23,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model23:ScaleTo(0.95) for _,e in model23:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
 handlexweld23.Part1=RealChar.Ring_Model1.Ring_Piece1
 handlexweld12.Part1=RealChar.Torso
 handlexweld21.Part1=RealChar.Torso
 handlexweld1.Part1=RealChar.Ring_Model7.Ring_Piece7
 tspawn(function()
repeat wait() until RealChar:WaitForChild("Wing_Model6") and RealChar:WaitForChild("Wing_Model5") and RealChar:WaitForChild("Wing_Model1") and RealChar:WaitForChild("Wing_Model3")
 handlexweld20.Part1=RealChar.Wing_Model1.Wing_Piece_1 
 handlexweld4.Part1=RealChar.Wing_Model6.Wing_Piece_6
 handlexweld18.Part1=RealChar.Ring_Model5.Ring_Piece5
 handlexweld11.Part1=RealChar.Ring_Model3.Ring_Piece3
 end)
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model3.Ring_Piece3',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,3.141592653589793+1.2217304763960306*cos((sine*2)+-1.25))))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='PrimaryColor',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model7',
HandleName='Wing_Piece_7',
Part1='RealChar.Ring_Model7.Ring_Piece7',
ModelScale=1,
Lerp='cfMul(angles(-3.141592653589793,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,2.6179938779914944+1.2217304763960306*cos((sine*2)+-0.5))))',
WingAttach='RealChar.Wing_Model7.Wing_Piece_7',
SetColorFromUI='PrimaryColor',
},
[3]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model9',
HandleName='Wing_Piece_9',
Part1='RealChar.Ring_Model7.Ring_Piece7',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,2.792526803190927+1.2217304763960306*cos((sine*2)+-0.75))))',
WingAttach='RealChar.Wing_Model9.Wing_Piece_9',
SetColorFromUI='PrimaryColor',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model3.Ring_Piece3',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,2.6179938779914944+1.2217304763960306*cos((sine*2)+-0.5))))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='PrimaryColor',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model5.Ring_Piece5',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4,0),angles(-0.17453292519943295,0.08726646259971647,-0.8726646259971648)))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='PrimaryColor',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4,0),angles(-0.17453292519943295,0.08726646259971647,0.8726646259971648)))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='PrimaryColor',
},
[7]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model3.Ring_Piece3',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,2.792526803190927+1.2217304763960306*cos((sine*2)+-0.75))))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='PrimaryColor',
},
[8]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model3.Ring_Piece3',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0),angles(-0.17453292519943295,0.08726646259971647,2.9670597283903604+1.2217304763960306*cos((sine*2)+-1))))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='PrimaryColor',
},
[9]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model8',
HandleName='Wing_Piece_8',
Part1='RealChar.Ring_Model7.Ring_Piece7',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,2.9670597283903604+1.2217304763960306*cos((sine*2)+-1))))',
WingAttach='RealChar.Wing_Model8.Wing_Piece_8',
SetColorFromUI='PrimaryColor',
},
[10]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,76,5),
llwsm=v3(0.5,5,75),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-4,0.25)*angles(rad(180),rad(90),rad(0)),
TrailTexture='rbxassetid://14261159751',
llw=cf(0.5,-4,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,1.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model10',
HandleName='Wing_Piece_10',
Part1='RealChar.Ring_Model7.Ring_Piece7',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.1344640137963142),cfMul(cf(0,3.5,0.25),angles(0.17453292519943295,0.08726646259971647,3.141592653589793+1.2217304763960306*cos((sine*2)+-1.25))))',
WingAttach='RealChar.Wing_Model10.Wing_Piece_10',
SetColorFromUI='PrimaryColor',
},
}
}
end,
ModeDataEventLoop=function(Table,deltaTime)
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local SetHumCameraOffset=GlobalTable.CameraHandler.SetHumCameraOffset
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local LerpFramePosition=UIHandler.LerpFramePosition
local LerpFrameRotation=UIHandler.LerpFrameRotation
local ReturnOldUI=UIHandler.ReturnOldUI
local is=insSet
local ig=insGet
local s=SecondaryColor
local p=PrimaryColor
local TopFrame=UIHandler.TopFrames
local BottomFrame=UIHandler.BottomFrame
local AnimState=Table.AnimState
local prim=rgb(255-ld/3.5,255-ld/3.5,200)
local sec=rgb(5+ld/200,10+ld/100,150+ld/7.5)
if tpos>135.08 and tpos<=155.65 then 
UIHandler.OverrideHandleRot=true
is(s,"Value",rgb(79,79,79))
is(p,"Value",rgb(random(100,255),0,0))
TopFrame["Label"].Frame.Text=supper("Torment")
SetHumCameraOffset(true,cf(random(-1,1),random(-1,1),random(-1,1))*angles(rad(random(-10,10)),rad(random(-10,10)),rad(random(-10,10))),cf(random(-1,1),random(-1,1),random(-1,1))*angles(rad(random(-10,10)),rad(random(-10,10)),rad(random(-10,10))),RealChar.HumanoidRootPart,RealChar.Head,.05,deltaTime)
LerpFramePosition(UIHandler.BottomFrame["Bottom"].Frame,UDim2.new(0, 10*sin(sine*1), 0.95, 25-5*cos((sine+2)*2)),.35)
  LerpFrameRotation(UIHandler.BottomFrame["Bottom"].Frame,random(-5,5),.25)
  LerpFramePosition(UIHandler.TopFrames["MainFrame"].Frame,UDim2.new(0.35, -16-10*sin(sine*1), 0, 5*cos((sine*2)*2)),.35)
  LerpFrameRotation(UIHandler.TopFrames["MainFrame"].Frame,random(-5,5),.25)
  LerpFrameRotation(UIHandler.TopFrames["Handler2"].Frame,random(-5,5),.25)
else

LerpFramePosition(UIHandler.TopFrames["MainFrame"].Frame,UIHandler.TopFrames["MainFrame"].OldPos,1)
LerpFrameRotation(UIHandler.TopFrames["MainFrame"].Frame,0,1)
UIHandler.OverrideHandleRot=false 
SetHumCameraOffset(false,cf(0,2,0),cf(0,-1,0),RealChar.HumanoidRootPart,RealChar.Head,.2,deltaTime)
TopFrame["Label"].Frame.Text=supper("Vilrum")
is(p,"Value",prim)
is(s,"Value",sec)
end
RecolorUI(true)

if tpos>=135.08 and tpos<140 or  tpos>=146.1 and tpos<146.45 or tpos>=147.8 and tpos<148.2 or tpos>=149.1 and tpos<149.4 or tpos>=151.7 and tpos<151.87 or tpos>=152.67 and tpos<153.1 or tpos>=154.3 and tpos<155.65 then
Table.AnimState=1 
elseif tpos>=145.3 and tpos<145.5 or tpos>=148.2 and tpos<148.55 or tpos>=150.9 and tpos<151.3 or tpos>=153.37 and tpos<153.65 then
Table.AnimState=2
elseif tpos>=145.5 and tpos<145.8 or tpos>=146.45 and tpos<147.4 or tpos>=148.55 and tpos<149.1 or tpos>=151.3 and tpos<151.7 or tpos>=152.47 and tpos<152.67 or tpos>=153.1 and tpos<153.37 then
Table.AnimState=3
elseif tpos>=145.8 and tpos<146.1 or tpos>=151.87 and tpos<152.47 or tpos>=153.65 and tpos<153.9 then
Table.AnimState=4
else
Table.AnimState=0
end
end,
EventData={
AnimState=0,
},
PrimaryColor=rgb(0,133,205),
SecondaryColor=rgb(1,61,111),
Speed=12,
JumpPower=50,
Title="Iviriza",
Key=nil,
SecondaryName="Avizrath",
Side="Vilrum",-- Spectrum
Desc="The Tormented Abyss Keeper",
SongData={
  title="Tides",
  auth="Cepheid",
  remix="ft. ZephyriannaCh & unit.0",
},
  },

  ["Love"]={
WingAnimData=function(Table)
  sine=osclock()
  local ld=GlobalTable.SoundInstace.PlaybackLoudness/10
  spinboost-=rad(50)*rad(clamp(ld,1,360))
RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,4.1887902047863905))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,1.0471975511965976))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,0))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,5.235987755982989))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,3.141592653589793))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,2.0943951023931953))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 
 RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0=Lerp(RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].C0,cfMul(cfMul(cf(0,1.5,1.0499999523162842),angles(0,0,0)),angles(-3.141592502593994,0,0)),0.5)
end,
BodyAnimData=function(Table)
  sine=osclock()
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-0.7000000000000001,0.2+0.2*cos((sine*2)+0),0.2),angles(-0.5410520681182421,-0.03490658503988659,0.8028514559173916+0.17453292519943295*sin((sine*2)+0.5))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1.1,-0+0.2*sin((sine*2)+0),0),angles(0.9773843811168246,-0.5061454830783556+0.17453292519943295*sin((sine*2)+0.5),-1.53588974175501)),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.1,-1.1,-0.1),angles(-0.03490658503988659,0.4537856055185257,-0.08726646259971647)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.HumanoidRootPart
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1.1,-0.6000000000000001+0.1*sin((sine*2)+0),-0.5),angles(-0.5235987755982988+-0.17453292519943295*cos((sine*2)+-0.5),-0.6981317007977318,0.08726646259971647)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,-0.1+0.2*sin((sine*2)+0),0),angles(0.12217304763960307+-0.08726646259971647*cos((sine*2)+0),0.3665191429188092,-0.017453292519943295+0.17453292519943295*sin((sine*1)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.15707963267948966+0.17453292519943295*sin((sine*2)+0.5),-0.4537856055185257,-0.19198621771937624+0.08726646259971647*cos((sine*1)+-1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso
end,
ModeAsset=function()
local model6=i("Model",RealChar)  insSet(model6,"Name","Ring_Model1");model6:SetAttribute("ModeAsset",true);model6:SetAttribute("TargetColor","None");local handlex6=CreateParta(model6,1,1,Enum.Material.Neon,c3(1.000000,0.392157,0.784314));CreateMesh(handlex6,"Brick",v3(0,0,0));local handlexweld6=CreateWeld(handlex6,handlex6,RealChar.Torso,cf(0,1.5,1.05)*angles(rad(180),0,0));insSet(handlex6,"Name","Ring_Piece1");insSet(handlex6,"Material",Enum.Material.Neon);local valuaring=10 for i=0,49 do valuaring+=10  rn=CreateParta(handlex6,0,0,Enum.Material.Neon,c3(1.000000,0.392157,0.784314));CreateMesh(rn,"Brick",v3(0.25*10,0.1*10,0.1*10));CreateWeld(rn,handlex6,rn,cf(),cf(0,1,0)*angles(rad(0),rad(0),rad(valuaring))) end  model6:ScaleTo(1)  handlexweld6.Part1=RealChar.Torso for _,e in model6:GetChildren() do if e:IsA("BasePart") then e.Transparency=0 end end
return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,4.1887902047863905)))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='None',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,1.0471975511965976)))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='None',
},
[3]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,0)))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='None',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,5.235987755982989)))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='None',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,3.141592653589793)))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='None',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.25)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.75,0.25)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.5,-1.75,0.25)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.5,0,0.25)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.25,-2)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.25,0.25)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(1.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.25,4.25+1*cos((sine*1)+0),0),angles(0,0.08726646259971647,2.0943951023931953)))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='None',
},
}
}
end,
ModeDataEventLoop=function(Table)
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local LerpFramePosition=UIHandler.LerpFramePosition
local LerpFrameRotation=UIHandler.LerpFrameRotation
local is=insSet
local ig=insGet
local s=SecondaryColor
local p=PrimaryColor
local TopFrame=UIHandler.TopFrames
local BottomFrame=UIHandler.BottomFrame
end,
EventData={
},
PrimaryColor=rgb(255,100,200),
SecondaryColor=c3(1,0,1),
Speed=12,
JumpPower=50,
Title="Love",
Key=9,
SecondaryName="Vryin",
Side="Vilrum",-- Spectrum
Desc="None",
SongData={
  title="crystallized",
  auth="Camellia",
  remix="None",
},
  },


  ["Crazed"]={
WingAnimData=function(Table)
  sine=osclock()
  RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+3*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,4.1887902047863905+62.83185307179586*cos((sine*0.1)+1)))),0.5)

RealChar.Wing_Model4.Wing_Piece_4["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,-0.5235987755982988+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model18.Wing_Piece_18["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+4*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,3.141592653589793+62.83185307179586*cos((sine*0.1)+1)))),0.5)

RealChar.Wing_Model5.Wing_Piece_5["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,2.6179938779914944+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model12.Wing_Piece_12["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,3.141592653589793+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model13.Wing_Piece_13["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,4.1887902047863905+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model15.Wing_Piece_15["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,0+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model7.Wing_Piece_7["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,5.235987755982989+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model17.Wing_Piece_17["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,4.71238898038469+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model16.Wing_Piece_16["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+4*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,1.0471975511965976+62.83185307179586*cos((sine*0.1)+1)))),0.5)

RealChar.Wing_Model2.Wing_Piece_2["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,3.6651914291880923+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model14.Wing_Piece_14["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+3*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,0+62.83185307179586*cos((sine*0.1)+1)))),0.5)

RealChar.Wing_Model1.Wing_Piece_1["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,1.0471975511965976+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model9.Wing_Piece_9["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+3*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,2.0943951023931953+62.83185307179586*cos((sine*0.1)+1)))),0.5)

RealChar.Wing_Model3.Wing_Piece_3["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+4*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,5.235987755982989+62.83185307179586*cos((sine*0.1)+1)))),0.5)

RealChar.Wing_Model6.Wing_Piece_6["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,0.5235987755982988+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model8.Wing_Piece_8["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,1.5707963267948966+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model10.Wing_Piece_10["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1 RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0=Lerp(RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].C0,cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,2.0943951023931953+44.505895925855405*cos((sine*0.1)+0)))),0.5)

RealChar.Wing_Model11.Wing_Piece_11["Wing Weld:3"].Part1=RealChar.Ring_Model1.Ring_Piece1
RealChar.Ring_Model1.Ring_Piece1["Wing Weld:3"].Part1=RealChar.Torso


RealChar.Ring_Model2.Ring_Piece2["Wing Weld:3"].Part1=RealChar.Torso
end,
BodyAnimData=function(Table)
  sine=osclock()
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cfMul(cf(-1,0.1+0.25*sin((sine*4)+0),0),angles(0,0.29670597283903605,-0.2617993877991494+0.17453292519943295*cos((sine*4)+0))),angles(-0,-1.5707963705062866,0)),0.5)
 LeftShoulder.Part0=RealChar.Torso
 RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cfMul(cf(1,0.1+0.35*cos((sine*4)+-0.5),0),angles(-0.03490658503988659,-0.4537856055185257,0.2617993877991494+0.17453292519943295*sin((sine*4)+0))),angles(0,1.5707963705062866,0)),0.5)
 RightShoulder.Part0=RealChar.Torso
 LeftHip.C0=Lerp(LeftHip.C0,cfMul(cfMul(cf(-1.2000000000000002,0.2+-0.25*cos((sine*4)+-1.5),-0.6000000000000001),angles(-0.3490658503988659+-0.17453292519943295*sin((sine*4)+1.6),0.4014257279586958+0.08726646259971647*cos((sine*4)+-1),0)),angles(-0,-1.5707963705062866,0)),0.5)
 LeftHip.Part0=RealChar.Torso
 RightHip.C0=Lerp(RightHip.C0,cfMul(cfMul(cf(1,-0.9+0.25*sin((sine*4)+0),-0.2),angles(-0.5235987755982988+0.17453292519943295*cos((sine*4)+0),-0.3665191429188092+-0.17453292519943295*sin((sine*4)+0),-0)),angles(0,1.5707963705062866,0)),0.5)
 RightHip.Part0=RealChar.Torso
 RootJoint.C0=Lerp(RootJoint.C0,cfMul(cfMul(cf(0,10+0.25*sin((sine*4)+0),0),angles(0.20943951023931956+-0.17453292519943295*cos((sine*4)+0),0.4188790204786391+0.17453292519943295*sin((sine*4)+2.5),-0.12217304763960307+-0.08726646259971647*cos((sine*4)+-1))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 RootJoint.Part0=RealChar.HumanoidRootPart
 Neck.C0=Lerp(Neck.C0,cfMul(cfMul(cf(0,1,0),angles(-0.4014257279586958+0.17453292519943295*sin((sine*4)+1)+0.0017453292519943296*tan((sine*10000)+0),-0.4014257279586958+0.08726646259971647*cos((sine*4)+1.5)+0.004363323129985824*tan((sine*1000)+0),0+0.08726646259971647*sin((sine*4)+0))),angles(-1.5707963705062866,0,-3.1415927410125732)),0.5)
 Neck.Part0=RealChar.Torso

end,
ModeAsset=function()

return {
WingData={
[1]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.3125)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-2.1875,0.3125)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.625,-2.1875,0.3125)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.625,0,0.3125)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3125,-2.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3125,0.3125)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model4',
HandleName='Wing_Piece_4',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.25,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+3*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,4.1887902047863905+62.83185307179586*cos((sine*0.1)+1))))',
WingAttach='RealChar.Wing_Model4.Wing_Piece_4',
SetColorFromUI='SecondaryColor',
},
[2]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model18',
HandleName='Wing_Piece_18',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,-0.5235987755982988+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model18.Wing_Piece_18',
SetColorFromUI='PrimaryColor',
},
[3]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.3125)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-2.1875,0.3125)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.625,-2.1875,0.3125)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.625,0,0.3125)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3125,-2.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3125,0.3125)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model5',
HandleName='Wing_Piece_5',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.25,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+4*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,3.141592653589793+62.83185307179586*cos((sine*0.1)+1))))',
WingAttach='RealChar.Wing_Model5.Wing_Piece_5',
SetColorFromUI='PrimaryColor',
},
[4]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model12',
HandleName='Wing_Piece_12',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,2.6179938779914944+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model12.Wing_Piece_12',
SetColorFromUI='PrimaryColor',
},
[5]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model13',
HandleName='Wing_Piece_13',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,3.141592653589793+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model13.Wing_Piece_13',
SetColorFromUI='SecondaryColor',
},
[6]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model15',
HandleName='Wing_Piece_15',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,4.1887902047863905+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model15.Wing_Piece_15',
SetColorFromUI='SecondaryColor',
},
[7]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model7',
HandleName='Wing_Piece_7',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,0+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model7.Wing_Piece_7',
SetColorFromUI='SecondaryColor',
},
[8]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model17',
HandleName='Wing_Piece_17',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,5.235987755982989+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model17.Wing_Piece_17',
SetColorFromUI='SecondaryColor',
},
[9]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model16',
HandleName='Wing_Piece_16',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,0.4363323129985824+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model16.Wing_Piece_16',
SetColorFromUI='PrimaryColor',
},
[10]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.3125)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-2.1875,0.3125)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.625,-2.1875,0.3125)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.625,0,0.3125)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3125,-2.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3125,0.3125)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model2',
HandleName='Wing_Piece_2',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.25,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+4*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,1.0471975511965976+62.83185307179586*cos((sine*0.1)+1))))',
WingAttach='RealChar.Wing_Model2.Wing_Piece_2',
SetColorFromUI='PrimaryColor',
},
[11]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model14',
HandleName='Wing_Piece_14',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,3.6651914291880923+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model14.Wing_Piece_14',
SetColorFromUI='PrimaryColor',
},
[12]={
lswsm=v3(0.5,5,5),
rswsm=v3(0.5,5,5),
llwsm=v3(0.5,5,30),
rlwsm=v3(0.5,30,5),
lws=cf(0,0,0.3125)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-2.1875,0.3125)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.625,-2.1875,0.3125)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.625,0,0.3125)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3125,-2.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3125,0.3125)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model1',
HandleName='Wing_Piece_1',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.25,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+3*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,0+62.83185307179586*cos((sine*0.1)+1))))',
WingAttach='RealChar.Wing_Model1.Wing_Piece_1',
SetColorFromUI='SecondaryColor',
},
[13]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model9',
HandleName='Wing_Piece_9',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,1.0471975511965976+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model9.Wing_Piece_9',
SetColorFromUI='SecondaryColor',
},
[14]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.3125)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-2.1875,0.3125)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.625,-2.1875,0.3125)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.625,0,0.3125)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3125,-2.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3125,0.3125)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model3',
HandleName='Wing_Piece_3',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.25,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+3*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,2.0943951023931953+62.83185307179586*cos((sine*0.1)+1))))',
WingAttach='RealChar.Wing_Model3.Wing_Piece_3',
SetColorFromUI='SecondaryColor',
},
[15]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.3125)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-2.1875,0.3125)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.625,-2.1875,0.3125)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.625,0,0.3125)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.3125,-2.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.3125,0.3125)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model6',
HandleName='Wing_Piece_6',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=1.25,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866),cfMul(cf(-0.35+4*sin((sine*1)+0),6+2*cos((sine*1)+0),0),angles(0,0.08726646259971647,5.235987755982989+62.83185307179586*cos((sine*0.1)+1))))',
WingAttach='RealChar.Wing_Model6.Wing_Piece_6',
SetColorFromUI='PrimaryColor',
},
[16]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model8',
HandleName='Wing_Piece_8',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,0.5235987755982988+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model8.Wing_Piece_8',
SetColorFromUI='PrimaryColor',
},
[17]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,1.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model10',
HandleName='Wing_Piece_10',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,1.5707963267948966+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model10.Wing_Piece_10',
SetColorFromUI='PrimaryColor',
},
[18]={
lswsm=v3(0.5,5,5),
rlwsm=v3(0.5,30,5),
llwsm=v3(0.5,5,30),
rswsm=v3(0.5,5,5),
lws=cf(0,0,0.1875)*angles(rad(0),rad(90),rad(0)),
rlw=cf(0,-1.3125,0.1875)*angles(rad(-180),rad(90),rad(0)),
TrailTexture='rbxassetid://2108945559',
llw=cf(0.375,-1.3125,0.1875)*angles(rad(-90),rad(0),rad(-90)),
rsw=cf(0.375,0,0.1875)*angles(rad(-0),rad(-90),rad(0)),
Att0=cf(0,-0.1875,-1.5)*angles(rad(-0),rad(0),rad(-0)),
Att1=cf(0,0.1875,0.1875)*angles(rad(-0),rad(0),rad(-0)),
Transparency=0,
Color=c3(0.000000,0.000000,0.000000),
Material=Enum.Material.Neon,
ModelName='Wing_Model11',
HandleName='Wing_Piece_11',
Part1='RealChar.Ring_Model1.Ring_Piece1',
ModelScale=0.75,
Lerp='cfMul(angles(-3.141592502593994,0,-1.5707963705062866+1.5707963267948966*cos((sine*1)+1)),cfMul(cf(-0.35+3*cos((sine*1)+0),10,0),angles(0,0,2.0943951023931953+44.505895925855405*cos((sine*0.1)+0))))',
WingAttach='RealChar.Wing_Model11.Wing_Piece_11',
SetColorFromUI='SecondaryColor',
},
},
 RingData={
[1]={
SpecialAttribute='None',
Color=c3(0.000000,0.000000,1.000000),
Scale=1.5,
Transparency=0,
Material=Enum.Material.Neon,
ModelName='Ring_Model1',
HandleName='Ring_Piece1',
Part1='RealChar.Torso',
Lerp='No Lerps! Try Making One!',
RingAttach='RealChar.Ring_Model1.Ring_Piece1',
SetColorFromUI='PrimaryColor',
},
[2]={
SpecialAttribute='None',
Color=c3(0.000000,0.000000,0.000000),
Scale=2,
Transparency=0,
Material=Enum.Material.Glass,
ModelName='Ring_Model2',
HandleName='Ring_Piece2',
Part1='RealChar.Torso',
Lerp='No Lerps! Try Making One!',
RingAttach='RealChar.Ring_Model2.Ring_Piece2',
SetColorFromUI='SecondaryColor',
},
}

}
end,
ModeDataEventLoop=function(Table)
sine=osclock()
local tpos=GlobalTable.SoundInstace.TimePosition
local ld=GlobalTable.SoundInstace.PlaybackLoudness
local LerpFramePosition=UIHandler.LerpFramePosition
local LerpFrameRotation=UIHandler.LerpFrameRotation
local is=insSet
local ig=insGet
local s=SecondaryColor
local p=PrimaryColor
local TopFrame=UIHandler.TopFrames
local BottomFrame=UIHandler.BottomFrame

local TextLabels=GlobalTable.TextLabels
local OverheadText=TextLabels.OverheadText
local OtherText=TextLabels.OtherText

local RandomText={
"Crazed?",
"Crazed?",
"Crazed?",
"CRAZED",
"CRAZED",
"CRAZED",
"------",
"------",
"------",
"CRAZED!!!!",
"CRAZED!!!!",
"CRAZED!!!!",
"Crazy",
"Crazy",
"Crazy",
"dezarC",
"dezarC",
"dezarC",
"Crazed",
"Crazed",
"Crazed",
"Crazed",
}
local RandomBlue={
rgb(0,0,100),
rgb(0,0,100),
rgb(0,0,100),
rgb(0,0,1),
rgb(0,0,240),
rgb(0,0,1),
rgb(0,0,255),
rgb(0,0,255),
rgb(0,0,200),
rgb(0,0,200),
rgb(0,0,150),
rgb(0,0,150),
rgb(0,0,150),
rgb(0,0,50),
rgb(0,0,50),
rgb(0,0,25),
rgb(0,0,25),
rgb(0,0,25),
}

if ld>=170 then
is(p,"Value",RandomBlue[mrandom(1,#RandomBlue)])
is(s,"Value",rgb(0,0,0))
OverheadText.Text=RandomText[mrandom(1,#RandomText)]
OtherText.Text=RandomText[mrandom(1,#RandomText)]
else
is(s,"Value",RandomBlue[mrandom(1,#RandomBlue)])
is(p,"Value",rgb(0,0,0))
OverheadText.Text="CRAZED"
OtherText.Text="CRAZED"
end

RecolorUI(true)
end,
EventData={

},
PrimaryColor=rgb(0,0,1),
SecondaryColor=c3(0,0,0),
Speed=12,
JumpPower=50,
Title="Crazed",
Key=nil,
SecondaryName="Diruth",
Side="Vilrum",-- Spectrum
Desc="The Crazed",
SongData={
  title="Options",
  auth="Frums",
  remix="None",
},
  },


}



return ModeData


