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
local rus=game:service'RunService'
local PostSimulation=rus.PostSimulation
local sin=math.sin
local cos=math.cos
local rad=math.rad
local abs=math.abs
local min=math.min
local mrandom=math.random
local random=function(a,b) return mrandom(a*1000,b*1000)/1000 end
local clamp=math.clamp
local cf=CFrame.new
local angles=CFrame.Angles

local tinsert=table.insert
local u2scale=UDim2.fromScale
local Name="Rayleigh"



function Rayleigh()
--// Init
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
local l=1
local hhh=nil
i9=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then i9:Disconnect() end
local t=sound.TimePosition
local d=sound.TimeLength
local pcolor=scriptfolder1["Misc"]["PrimaryColor"]
local scolor=scriptfolder1["Misc"]["SecondaryColor"]
local p0=sound.PlaybackLoudness
l+=1
if t>29.707 then
if sound.PlaybackLoudness>random(400,450) then
hhh=clamp(sound.PlaybackLoudness/25,0,math.random(10,15))
else
hhh=clamp(sound.PlaybackLoudness/50,0,math.random(5,15))
end
else
hhh=clamp(sound.PlaybackLoudness/50,0,math.random(10,30))
end
local f=PartFXFloor
local g=hhh/2.5
block1("In",1,v3(0,1,5),v3(hhh,1,5),f.CFrame*cf(30.5,g,0)*angles(0,rad(0),rad(45)),scolor.Value,0,f.CFrame*cf(30.5,0,0)*angles(0,rad(0),rad(45)),true,pcolor.Value,true,0,"Neon")
block1("In",1,v3(0,1,5),v3(hhh,1,5),f.CFrame*cf(-30.5,g,0)*angles(0,rad(0),rad(-45)),scolor.Value,0,f.CFrame*cf(-30.5,0,0)*angles(0,rad(0),rad(-45)),true,pcolor.Value,true,0,"Neon")

local lol=random(-50,50)
local lol1=random(50,75)
local lol2=random(10,50)
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),g,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"ForceField")
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),g,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"ForceField")
li.Color=scolor.Value
li.Range=hhh
li.Brightness=hhh/5


wave2("Out",1,25,rootpart1.CFrame*cf(0,-.5,0)*angles(0,l,0),pcolor.Value,.5)
wave1("Out",1,.5,rootpart1.CFrame*cf(0,-.5,0)*angles(0,l,0),scolor.Value,.5)
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
TweenFunction(PartFXFloor,.01,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
PartFXFloor.Rotation=v3(0,l*10,0)
end)
end
repeat Rayleigh() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")