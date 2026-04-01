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
local Name="Cheatreal"









function VFX()
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


local spin=1

ch=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
ch:Disconnect()
return
end
spin+=1
sine=os.clock()
local pcolor=scriptfolder1["Misc"]["PrimaryColor"] or nil
local scolor=scriptfolder1["Misc"]["SecondaryColor"] or nil
local pbl=sound.PlaybackLoudness
li.Color=scolor.Value
li.Range=pbl/150
li.Brightness=pbl/250
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
TweenFunction(PartFXFloor,.01,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
PartFXFloor.Rotation=v3(0,spin*5,0)
local f=PartFXFloor
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(-30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(-30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,-30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,-30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)

local s=clamp(sound.PlaybackLoudness/10,0,random(1,20))
local s1=s/2
local lol=random(-50,50)
local lol1=random(50,75)
local lol2=random(10,50)
local ypos=random(10,30)
local rpos=random(-50,50)
local rpos1=random(-50,50)
block1("In",2,v3(0,2,2),v3(s,2,2),PartFXFloor.CFrame*cf(30.5+s1,s1,0)*angles(0,rad(0),rad(90)),scolor.Value,0,PartFXFloor.CFrame*cf(30.5,0,0)*angles(0,rad(0),rad(90)),false,pcolor.Value,true,50)
block1("In",2,v3(0,2,2),v3(s,2,2),PartFXFloor.CFrame*cf(-30.5-s1,s1,0)*angles(0,rad(0),rad(-90)),scolor.Value,0,PartFXFloor.CFrame*cf(-30.5,0,0)*angles(0,rad(0),rad(-90)),false,pcolor.Value,true,50)

block1("In",2,v3(0,2,2),v3(s,2,2),PartFXFloor.CFrame*cf(0,s1,30.5+s1)*angles(0,rad(0),rad(90)),scolor.Value,0,PartFXFloor.CFrame*cf(0,0,30.5)*angles(0,rad(0),rad(90)),false,pcolor.Value,true,50)
block1("In",2,v3(0,2,2),v3(s,2,2),PartFXFloor.CFrame*cf(0,s1,-30.5-s1)*angles(0,rad(0),rad(-90)),scolor.Value,0,PartFXFloor.CFrame*cf(0,0,-30.5)*angles(0,rad(0),rad(-90)),false,pcolor.Value,true,50)




if pbl>=random(230,300) then
sphere1("Out",1,v3(.1,.1,.1),v3(20,.1,.1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
sphere1("Out",1,v3(.1,.1,.1),v3(20,.1,.1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"Neon")

sphere1("Out",1,v3(0,0,0),v3(1,1,1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
sphere1("Out",.65,v3(0,0,0),v3(1.5,1.5,1.5),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,.3,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"Neon")

block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"ForceField")
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"ForceField")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")

local rsize=s*2.5
local rspeed=random(1,1.5)
sphere1("Out",rspeed,v3(.1,.1,.1),v3(rsize,.1,rsize),f.CFrame*cf(0,0,0),scolor.Value,0,f.CFrame*cf(0,0,0),true,pcolor.Value,true,50)


sphere1("Out",2.5,v3(.5,.5,.5),v3(0,.5,50),f.CFrame*cf(0,0,0),scolor.Value,0,f.CFrame*cf(0,0,0),true,pcolor.Value,false,50)
sphere1("Out",2.5,v3(.5,.5,.5),v3(50,.5,.5),f.CFrame*cf(0,0,0),scolor.Value,0,f.CFrame*cf(0,0,0),true,pcolor.Value,false,50)
else
sphere1("Out",2.5,v3(.1,.1,.1),v3(15,.1,15),f.CFrame*cf(0,0,0),pcolor.Value,0,f.CFrame*cf(0,0,0),true,pcolor.Value,true,50)
end








end)
end

repeat VFX() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")