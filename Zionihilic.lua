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
local Name="Zionihilic"

function VFX3()
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
local hhh=nil
ss=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then 
ss:Disconnect()
return
end
spin+=1
sine=os.clock()
local pcolor=Extras.pcolor
local scolor=Extras.scolor
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
if t>=0 and t<=7 then 
local f=PartFXFloor
local g=hhh/4
block1("In",1.5,v3(0,0,2.5),v3(hhh,2.5,5.5),f.CFrame*cf(30.5+g,g,0)*angles(0,rad(0),rad(45)),scolor.Value,0,f.CFrame*cf(30.5,0,0)*angles(0,rad(0),rad(45)),true,pcolor.Value,true,100,"Neon")
block1("In",1.5,v3(0,0,2.5),v3(hhh,2.5,5.5),f.CFrame*cf(-30.5-g,g,0)*angles(0,rad(0),rad(-45)),scolor.Value,0,f.CFrame*cf(-30.5,0,0)*angles(0,rad(0),rad(-45)),true,pcolor.Value,true,100,"Neon")

block1("In",2,v3(0,1,0),v3(1.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,20.5)*angles(0,rad(0),rad(0)),scolor.Value,0,f.CFrame*cf(0,0,20.5)*angles(0,rad(0),rad(0)),true,pcolor.Value,true,100,"Neon")
block1("In",2,v3(0,1,0),v3(1.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,-20.5)*angles(0,rad(0),rad(-0)),scolor.Value,0,f.CFrame*cf(0,0,-20.5)*angles(0,rad(0),rad(-0)),true,pcolor.Value,true,100,"Neon")

block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(0,0,0),true,pcolor.Value,true,15,"ForceField")
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(0,rad(0),0),true,scolor.Value,true,15,"ForceField")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(-30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(-30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,-30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,-30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
elseif t>=7 and t<=20.3 then 
tspawn(function()
local t=sound.TimePosition
local z=random(-50,50)
local x=random(-50,50)
local size=hhh*3
local hmm=size/7.5
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(z,hmm,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,hmm,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)

--[[sphere1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
sphere1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)]]

block1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)
block1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)

square("Out",1.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)
square("Out",2.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)

end)
tspawn(function()
local t=sound.TimePosition
local z=random(-50,50)
local x=random(-50,50)
local size=hhh*3
local hmm=size/7.5
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(z,hmm,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,hmm,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)

--[[sphere1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
sphere1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)]]

block1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)
block1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)

square("Out",1.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)
square("Out",2.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)

end)
local rsize=s*1.5
local rspeed=random(1,1.5)
local rspeed1=random(1,1.5)
sphere1("Out",rspeed,v3(.1,.1,.1),v3(rsize,.1,rsize),f.CFrame*cf(0,0,0),scolor.Value,0,f.CFrame*cf(0,0,0),true,pcolor.Value,true,50)
square("Out",rspeed1,v3(.1,.1,.1),v3(rsize*2.5,.1,rsize*2.5),f.CFrame*cf(0,0,0),scolor.Value,0,f.CFrame*cf(0,0,0),true,pcolor.Value,true,50)
local f=PartFXFloor
local g=hhh/4
block1("In",2,v3(0,1,0),v3(2.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,20.5)*angles(0,rad(0),rad(0)),scolor.Value,0,f.CFrame*cf(0,0,20.5)*angles(0,rad(0),rad(0)),true,pcolor.Value,true,100,"Neon")
block1("In",2,v3(0,1,0),v3(1.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,-20.5)*angles(0,rad(0),rad(-0)),scolor.Value,0,f.CFrame*cf(0,0,-20.5)*angles(0,rad(0),rad(-0)),true,pcolor.Value,true,100,"Neon")
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(-30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(-30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,-30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,-30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
elseif t>=20.3 and t<=22 then 
local f=PartFXFloor
local rspeed=random(1,1.5)
sphere1("Out",rspeed,v3(.1,.1,.1),v3(hhh,hhh,hhh),f.CFrame*cf(0,0,0),pcolor.Value,0,f.CFrame*cf(random(-50,50),0,random(-50,50)),true,scolor.Value,true,50)
sphere1("Out",rspeed,v3(.1,.1,.1),v3(hhh,hhh,hhh),f.CFrame*cf(0,0,0),pcolor.Value,0,f.CFrame*cf(random(-50,50),0,random(-50,50)),true,scolor.Value,true,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(-30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(-30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,-30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,-30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
elseif t>=22 and t<=35 then 
local f=PartFXFloor
local rspeed=random(1,1.5)
sphere1("Out",rspeed,v3(.1,.1,.1),v3(10,10,10),f.CFrame*cf(0,0,0),pcolor.Value,0,f.CFrame*cf(random(-50,50),0,random(-50,50)),true,scolor.Value,true,50)
sphere1("Out",rspeed,v3(.1,.1,.1),v3(10,10,10),f.CFrame*cf(0,0,0),pcolor.Value,0,f.CFrame*cf(random(-50,50),0,random(-50,50)),true,scolor.Value,true,50)
tspawn(function()
local t=sound.TimePosition
local z=random(-50,50)
local x=random(-50,50)
local size=hhh*3
local hmm=size/7.5
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(z,hmm,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,hmm,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)

--[[sphere1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
sphere1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)]]

block1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)
block1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)

square("Out",1.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)
square("Out",2.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)

end)
tspawn(function()
local t=sound.TimePosition
local z=random(-50,50)
local x=random(-50,50)
local size=hhh*3
local hmm=size/7.5
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(z,hmm,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,hmm,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)

--[[sphere1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
sphere1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)]]

block1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)
block1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)

square("Out",1.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)
square("Out",2.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)

end)
elseif t>=35 and t<=36.1 then 
tspawn(function()
local t=sound.TimePosition
local z=random(-50,50)
local x=random(-50,50)
local size=hhh*3
local hmm=size/7.5
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(z,hmm,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,hmm,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)

--[[sphere1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
sphere1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)]]

block1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)
block1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)

square("Out",1.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)
square("Out",2.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)

end)
tspawn(function()
local t=sound.TimePosition
local z=random(-50,50)
local x=random(-50,50)
local size=hhh*3
local hmm=size/7.5
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(z,hmm,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,hmm,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)

--[[sphere1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
sphere1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)]]

block1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)
block1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)

square("Out",1.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)
square("Out",2.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)

end)
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
elseif t>=36.1 and t<= 79.7 then 
local rspeed=random(1,1.5)
sphere1("Out",5,v3(.1,.1,.1),v3(hhh/2,hhh/2,hhh/2),spcf,scolor.Value,0,spcf,true,pcolor.Value,true,50)
sphere1("Out",5,v3(.1,.1,.1),v3(hhh/2,hhh/2,hhh/2),spcf1,scolor.Value,0,spcf1,true,pcolor.Value,true,50)
square("Out",rspeed,v3(.1,.1,.1),v3(10,10,10),f.CFrame*cf(0,0,0),pcolor.Value,0,f.CFrame*cf(random(-50,50),0,random(-50,50)),true,scolor.Value,true,50)
square("Out",rspeed,v3(.1,.1,.1),v3(10,10,10),f.CFrame*cf(0,0,0),pcolor.Value,0,f.CFrame*cf(random(-50,50),0,random(-50,50)),true,scolor.Value,true,50)
tspawn(function()
local t=sound.TimePosition
local z=random(-50,50)
local x=random(-50,50)
local size=hhh*3
local hmm=size/7.5
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(z,hmm,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
block1("Out",2.5,v3(.5,.5,.5),v3(size,2.5,2.5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,hmm,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)

--[[sphere1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,0,rad(90)),true,pcolor.Value,true,15)
sphere1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,0,rad(90)),true,pcolor.Value,true,15)]]

block1("Out",2.5,v3(.5,.5,.5),v3(10,10,10),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)
block1("Out",1.25,v3(.5,.5,.5),v3(5,5,5),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),0),true,pcolor.Value,true,15)

square("Out",1.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(z,0,x)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)
square("Out",2.5,v3(.5,.1,.5),v3(lol2,.1,lol2),rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),scolor.Value,0,rootpart1.CFrame*cf(x,0,z)*angles(0,rad(rpos1),rad(0)),true,pcolor.Value,false,15)

end)
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")

local torso=Extras.Torso
block1("Out",5,v3(.1,.1,.1),v3(random(10,20),5,.1),torso.CFrame,scolor.Value,0,torso.CFrame*cf(random(-5,5),random(-5,5),random(-5,5))*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
block1("Out",5,v3(.1,.1,.1),v3(random(10,20),5,.1),torso.CFrame,scolor.Value,0,torso.CFrame*cf(random(-5,5),random(-5,5),random(-5,5))*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
sphere1("Out",1,v3(.1,.1,.1),v3(20,.1,.1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
sphere1("Out",1,v3(.1,.1,.1),v3(20,.1,.1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"Neon")

sphere1("Out",1,v3(0,0,0),v3(1,1,1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
sphere1("Out",.65,v3(0,0,0),v3(1.5,1.5,1.5),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,.3,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"Neon")

square("Out",1,v3(0,0,0),v3(5,.1,5),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
square("Out",.65,v3(0,0,0),v3(10,.1,.10),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,.3,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"Neon")


block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
elseif t>=79.7 then 
local f=PartFXFloor
local g=hhh/4
block1("In",1.5,v3(0,0,2.5),v3(hhh,2.5,5.5),f.CFrame*cf(30.5+g,g,0)*angles(0,rad(0),rad(45)),scolor.Value,0,f.CFrame*cf(30.5,0,0)*angles(0,rad(0),rad(45)),true,pcolor.Value,true,100,"Neon")
block1("In",1.5,v3(0,0,2.5),v3(hhh,2.5,5.5),f.CFrame*cf(-30.5-g,g,0)*angles(0,rad(0),rad(-45)),scolor.Value,0,f.CFrame*cf(-30.5,0,0)*angles(0,rad(0),rad(-45)),true,pcolor.Value,true,100,"Neon")

block1("In",2,v3(0,1,0),v3(1.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,20.5)*angles(0,rad(0),rad(0)),scolor.Value,0,f.CFrame*cf(0,0,20.5)*angles(0,rad(0),rad(0)),true,pcolor.Value,true,100,"Neon")
block1("In",2,v3(0,1,0),v3(1.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,-20.5)*angles(0,rad(0),rad(-0)),scolor.Value,0,f.CFrame*cf(0,0,-20.5)*angles(0,rad(0),rad(-0)),true,pcolor.Value,true,100,"Neon")

block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(0,0,0),true,pcolor.Value,true,15,"ForceField")
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(0,rad(0),0),true,scolor.Value,true,15,"ForceField")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(-30*sin(sine*1.5),0,0)*angles(0,rad(90),0),scolor.Value,0,f.CFrame*cf(-30,0,0)*angles(0,rad(45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
block1("Out",2.5,v3(50,.1,.1),v3(50,.1,.1),f.CFrame*cf(0,0,-30*sin(sine*1.5))*angles(0,rad(0),0),scolor.Value,0,f.CFrame*cf(0,0,-30)*angles(0,rad(-45),0),true,pcolor.Value,false,50)
end
--[[
7 
20.3
22 
34.9 
36.1 
79.7

]]


end)
end

repeat VFX3() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")