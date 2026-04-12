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
local random=function(a,b) return mrandom(a*1000,b*1000)/1000 end
local clamp=math.clamp

local tinsert=table.insert
local u2scale=UDim2.fromScale
local Name="Lexapriatic"



function Lexapriatic()
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
local att=i("Attachment",foldah)
att.Position=v3(0,0,.1)
att.Name="EyeShine"
local e19=Instance.new("ParticleEmitter",att)
e19.Name="EyeShine"
e19.Color=cs({
  csk(0,rgb(255,255,255)),
  csk(1,rgb(255,255,255))
})
e19.Brightness=10
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
e19.Enabled=false 
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



local l=1
local hhh=nil
i9=PostSimulation:Connect(function()
if not scriptfolder:FindFirstChild(Name.."Assets") then i9:Disconnect() att:Destroy() end
local t=sound.TimePosition
if not head:FindFirstChild("EyeShine") then 
att.Parent=head
end
local d=sound.TimeLength
local pcolor=scriptfolder1["Misc"]["PrimaryColor"]
local scolor=scriptfolder1["Misc"]["SecondaryColor"]
local p0=sound.PlaybackLoudness
e19:Emit(p0/950)
e19.Color=cs({
  csk(0,pcolor.Value),
  csk(1,scolor.Value)
})
l+=1
local lol=random(-50,50)
local lol1=random(50,75)
local lol2=random(10,20)
local ypos=random(10,30)
local rpos=random(-50,50)
local rpos1=random(-50,50)
if t>29.707 and t<=384.316 then
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"ForceField")
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"ForceField")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
sphere1("Out",1,v3(.1,.1,.1),v3(20,.1,.1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
sphere1("Out",1,v3(.1,.1,.1),v3(20,.1,.1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"Neon")

sphere1("Out",1,v3(0,0,0),v3(1,1,1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.25,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,15,"Neon")
sphere1("Out",.65,v3(0,0,0),v3(1.5,1.5,1.5),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,.3,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"Neon")

if sound.PlaybackLoudness>random(400,450) then
hhh=clamp(sound.PlaybackLoudness/25,0,math.random(5,25))
else
hhh=clamp(sound.PlaybackLoudness/50,0,math.random(1,15))
end
else
hhh=clamp(sound.PlaybackLoudness/50,0,math.random(10,30))
block1("Out",1.5,v3(10,10,10),v3(30,75,30),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),pcolor.Value,0,Floor.CFrame*cf(random(-50,50),lol1,random(-50,50))*angles(random(-50,50),rad(random(-50,50)),rad(random(-50,50))),true,scolor.Value,true,15,"ForceField")
block1("In",1,v3(1,1,1),v3(1,1,1),Floor.CFrame*cf(random(-50,50),1,random(-50,50))*angles(0,rad(0),rad(0)),scolor.Value,0,Floor.CFrame*cf(random(-50,50),ypos,random(-50,50))*angles(0,rad(0),rad(0)),true,pcolor.Value,true,1,"Neon")
sphere1("Out",1,v3(.1,.1,.1),v3(20,.1,.1),Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),scolor.Value,.5,Floor.CFrame*cf(rpos1,ypos,rpos)*angles(rad(random(-50,50)),rad(random(-50,50)),rad(random(-50,50))),true,pcolor.Value,true,0,"Neon")
end

--random(-50,50)
local f=PartFXFloor
local g=hhh/4
block1("In",1.5,v3(0,0,2.5),v3(hhh,1,2.5),f.CFrame*cf(30.5+g,g,0)*angles(0,rad(0),rad(45)),scolor.Value,0,f.CFrame*cf(30.5,0,0)*angles(0,rad(0),rad(45)),true,pcolor.Value,true,100,"Neon")
block1("In",1.5,v3(0,0,2.5),v3(hhh,1,2.5),f.CFrame*cf(-30.5-g,g,0)*angles(0,rad(0),rad(-45)),scolor.Value,0,f.CFrame*cf(-30.5,0,0)*angles(0,rad(0),rad(-45)),true,pcolor.Value,true,100,"Neon")

block1("In",2,v3(0,1,0),v3(2.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,20.5)*angles(0,rad(0),rad(0)),scolor.Value,0,f.CFrame*cf(0,0,20.5)*angles(0,rad(0),rad(0)),true,pcolor.Value,true,100,"Neon")
block1("In",2,v3(0,1,0),v3(1.5,1,hhh*1.5),f.CFrame*cf(-g/2,0,-20.5)*angles(0,rad(0),rad(-0)),scolor.Value,0,f.CFrame*cf(0,0,-20.5)*angles(0,rad(0),rad(-0)),true,pcolor.Value,true,100,"Neon")




li.Color=scolor.Value
li.Range=hhh
li.Brightness=hhh/5
if sound.PlaybackLoudness>=random(350,425) then 
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
end

wave2("Out",1,25,rootpart1.CFrame*cf(0,-.5,0)*angles(0,l,0),pcolor.Value,.5)
wave1("Out",1,.5,rootpart1.CFrame*cf(0,-.5,0)*angles(0,l,0),scolor.Value,.5)
local root=rootpart1
TweenFunction(Floor,.01,"pos",v3(root.Position.X,root.Position.Y+1,root.Position.Z)):Play()
TweenFunction(PartFXFloor,.01,"pos",v3(root.Position.X,root.Position.Y-1,root.Position.Z)):Play()
PartFXFloor.Rotation=v3(0,l*5,0)
end)
end
repeat Lexapriatic() task.wait() until not scriptfolder:FindFirstChild(Name.."Assets")