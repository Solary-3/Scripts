
--//Options
local Global=(getgenv and getgenv()) or shared
local CAMERAFOCUS="BestFittingBlack"  -- Actual Accessory name
local INTROANIM=false -- set it to true if want an intro animation
local LEGACY=false -- set this to true if you the old anims on some modes






















local CollectionService = game:GetService("CollectionService");
local RENEGADES ={};
local plrgui=game.CoreGui
local gui=plrgui:FindFirstChild("Renegade Glitcher")
if gui then
gui:Destroy()
end
RENEGADES["Renegade Glitcher_1"]= Instance.new("ScreenGui",plrgui);
RENEGADES["Renegade Glitcher_1"]["Name"]=[[Renegade Glitcher]];
RENEGADES["Renegade Glitcher_1"]["ZIndexBehavior"]= Enum.ZIndexBehavior.Sibling;

CollectionService:AddTag(RENEGADES["Renegade Glitcher_1"],[[main]]);

RENEGADES["MainFrame_2"]= Instance.new("Frame", RENEGADES["Renegade Glitcher_1"]);
RENEGADES["MainFrame_2"]["BorderSizePixel"]= 0;
RENEGADES["MainFrame_2"]["BackgroundColor3"]= Color3.fromRGB(50, 50, 50);
RENEGADES["MainFrame_2"]["Size"]= UDim2.new(0, 340, 0, 216);
RENEGADES["MainFrame_2"]["Position"]= UDim2.new(0, 230, 0, 14);
RENEGADES["MainFrame_2"]["Name"]=[[MainFrame]];
RENEGADES["MainFrame_2"]["Draggable"]=true;
RENEGADES["MainFrame_2"]["Active"]=true;
RENEGADES["MainFrame_2"]["BackgroundTransparency"]= 0.5;


RENEGADES["Extras_3"]= Instance.new("UICorner", RENEGADES["MainFrame_2"]);
RENEGADES["Extras_3"]["Name"]=[[Extras]];


RENEGADES["Extras_4"]= Instance.new("UIStroke", RENEGADES["MainFrame_2"]);
RENEGADES["Extras_4"]["Transparency"]= 0.5;
RENEGADES["Extras_4"]["Name"]=[[Extras]];
RENEGADES["Extras_4"]["Thickness"]= 5;


RENEGADES["Reanimate/Run_5"]= Instance.new("TextButton", RENEGADES["MainFrame_2"]);
RENEGADES["Reanimate/Run_5"]["BorderSizePixel"]= 0;
RENEGADES["Reanimate/Run_5"]["TextXAlignment"]= Enum.TextXAlignment.Left;
RENEGADES["Reanimate/Run_5"]["TextSize"]= 18;
RENEGADES["Reanimate/Run_5"]["TextColor3"]= Color3.fromRGB(255, 255, 255);
RENEGADES["Reanimate/Run_5"]["BackgroundColor3"]= Color3.fromRGB(25, 25, 25);
RENEGADES["Reanimate/Run_5"]["FontFace"]= Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RENEGADES["Reanimate/Run_5"]["BackgroundTransparency"]= 0.5;
RENEGADES["Reanimate/Run_5"]["Size"]= UDim2.new(0, 92, 0, 34);
RENEGADES["Reanimate/Run_5"]["Text"]=[[Reanim/Run]];
RENEGADES["Reanimate/Run_5"]["Name"]=[[Reanimate/Run]];
RENEGADES["Reanimate/Run_5"]["Position"]= UDim2.new(0, 8, 0, 110);


RENEGADES["Extras_6"]= Instance.new("UICorner", RENEGADES["Reanimate/Run_5"]);
RENEGADES["Extras_6"]["Name"]=[[Extras]];


RENEGADES["Stop_7"]= Instance.new("TextButton", RENEGADES["MainFrame_2"]);
RENEGADES["Stop_7"]["BorderSizePixel"]= 0;
RENEGADES["Stop_7"]["TextXAlignment"]= Enum.TextXAlignment.Left;
RENEGADES["Stop_7"]["TextSize"]= 18;
RENEGADES["Stop_7"]["TextColor3"]= Color3.fromRGB(255, 255, 255);
RENEGADES["Stop_7"]["BackgroundColor3"]= Color3.fromRGB(25, 25, 25);
RENEGADES["Stop_7"]["FontFace"]= Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RENEGADES["Stop_7"]["BackgroundTransparency"]= 0.5;
RENEGADES["Stop_7"]["Size"]= UDim2.new(0, 42, 0, 34);
RENEGADES["Stop_7"]["Text"]=[[Stop]];
RENEGADES["Stop_7"]["Name"]=[[Stop]];
RENEGADES["Stop_7"]["Position"]= UDim2.new(0, 8, 0, 150);


RENEGADES["Extras_8"]= Instance.new("UICorner", RENEGADES["Stop_7"]);
RENEGADES["Extras_8"]["Name"]=[[Extras]];


RENEGADES["About_9"]= Instance.new("TextLabel", RENEGADES["MainFrame_2"]);
RENEGADES["About_9"]["TextWrapped"]= true;
RENEGADES["About_9"]["BorderSizePixel"]= 0;
RENEGADES["About_9"]["TextSize"]= 15;
RENEGADES["About_9"]["TextXAlignment"]= Enum.TextXAlignment.Left;
RENEGADES["About_9"]["TextYAlignment"]= Enum.TextYAlignment.Top;
RENEGADES["About_9"]["BackgroundColor3"]= Color3.fromRGB(25, 25, 25);
RENEGADES["About_9"]["FontFace"]= Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RENEGADES["About_9"]["TextColor3"]= Color3.fromRGB(255, 255, 255);
RENEGADES["About_9"]["BackgroundTransparency"]= 0.5;
RENEGADES["About_9"]["Size"]= UDim2.new(0, 214, 0, 100);
RENEGADES["About_9"]["BorderColor3"]= Color3.fromRGB(13, 20, 25);
RENEGADES["About_9"]["Text"]=[[Hello There! this script is made by Theo! I got bored and decided to make  this script. The script is in early development, and there will be modes in the future!]];
RENEGADES["About_9"]["Name"]=[[About]];
RENEGADES["About_9"]["Position"]= UDim2.new(0, 118, 0, 4);


RENEGADES["Extras_a"]= Instance.new("UICorner", RENEGADES["About_9"]);
RENEGADES["Extras_a"]["Name"]=[[Extras]];


RENEGADES["Title_b"]= Instance.new("TextLabel", RENEGADES["MainFrame_2"]);
RENEGADES["Title_b"]["TextWrapped"]= true;
RENEGADES["Title_b"]["BorderSizePixel"]= 0;
RENEGADES["Title_b"]["TextSize"]= 24;
RENEGADES["Title_b"]["BackgroundColor3"]= Color3.fromRGB(25, 25, 25);
RENEGADES["Title_b"]["FontFace"]= Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
RENEGADES["Title_b"]["TextColor3"]= Color3.fromRGB(255, 255, 255);
RENEGADES["Title_b"]["BackgroundTransparency"]= 0.5;
RENEGADES["Title_b"]["Size"]= UDim2.new(0, 212, 0, 44);
RENEGADES["Title_b"]["BorderColor3"]= Color3.fromRGB(13, 20, 25);
RENEGADES["Title_b"]["Text"]=[[Renegade Glitcher ]];
RENEGADES["Title_b"]["Name"]=[[Title]];
RENEGADES["Title_b"]["Position"]= UDim2.new(0, 120, 0, 108);


RENEGADES["Extras_c"]= Instance.new("UICorner", RENEGADES["Title_b"]);
RENEGADES["Extras_c"]["Name"]=[[Extras]];


RENEGADES["OpenGui_d"]= Instance.new("TextButton", RENEGADES["Renegade Glitcher_1"]);
RENEGADES["OpenGui_d"]["BorderSizePixel"]= 0;
RENEGADES["OpenGui_d"]["BackgroundColor3"]= Color3.fromRGB(50, 50, 50);
RENEGADES["OpenGui_d"]["BackgroundTransparency"]= 0.65;
RENEGADES["OpenGui_d"]["Size"]= UDim2.new(0, 25, 0, 25);
RENEGADES["OpenGui_d"]["Text"]=[[]];
RENEGADES["OpenGui_d"]["Name"]=[[OpenGui]];
RENEGADES["OpenGui_d"]["Position"]= UDim2.new(0, 0, 0, 150);


RENEGADES["Extras_e"]= Instance.new("UICorner", RENEGADES["OpenGui_d"]);
RENEGADES["Extras_e"]["Name"]=[[Extras]];
RENEGADES["Extras_e"]["CornerRadius"]= UDim.new(0, 50);


local RunScript=RENEGADES["Reanimate/Run_5"]
local StopRunningScript=RENEGADES["Stop_7"]
local opengui=RENEGADES["OpenGui_d"]
local mainframe=RENEGADES["MainFrame_2"]
local uis=game.UserInputService
mainframe.Draggable=true
Global.RigHead=CAMERAFOCUS

if isfolder and not isfolder("Renegade Audios") then 
makefolder("Renegade Audios")
end


--// Variables
local osclock=os.clock
local char=game.Players.LocalPlayer.Character
local tspawn=task.spawn
local twait=task.wait
local schar=string.char
local ssub=string.sub
local sfind=string.find
local supper=string.upper
local mrandom=math.random
local sin=math.sin
local cos=math.cos
local abs=math.abs
local rad=math.rad
local min=math.min
local clamp=math.clamp
local tinsert=table.insert
local tclear=table.clear
local tclone=table.clone
local tfind=table.find
local tunpack=table.unpack
local next=next
local pcall=pcall
local xpcall=xpcall
local type=type
local typeof=typeof
local game=game
local i=Instance.new 
local v2=Vector2.new 
local v3=Vector3.new
local c3=Color3.new 
local cf=CFrame.new
local cfl=CFrame.lookAt
local angles=CFrame.Angles
local u2=UDim2.new 
local e=Enum 
local rp=RaycastParams.new 
local cs=ColorSequence.new 
local csk=ColorSequenceKeypoint.new 
local sine=osclock()
local v3_0=v3(0,0,0)
local v3_101=v3(1,0,1)
local v3_010=v3(0,1,0)
local v3_001=v3(0,0,1)
local cf_0=cf(0,0,0)
local v3_xz=v3_101*10
local v3_xzL=v3_101*250.1
local v3_net=v3_010*25.01
local function rs(l)
l=l or mrandom(8,15)
local s=""
for i=1,l do 
if mrandom(1,2)==1 then 
s=s..schar(mrandom(65,90))
else 
s=s..schar(mrandom(97,122))
end 
end 
return s 
end
local function getMetamethodFromErrorStack(userdata,f,test)
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
local cfAdd=getMetamethodFromErrorStack(cf_0,function(a,b) return a+b end,function(f) return cf(1,2,3)+v3(1,2,3)==f(cf(1,2,3),v3(1,2,3)) end)
local v3Get=getMetamethodFromErrorStack(v3_0,function(a,b) return a[b] end,function(f) return v3(1,2,3).Unit==f(v3(1,2,3),"Unit") end)
local Clone=insGet(game,"Clone")
local ClearAllChildren=insGet(game,"ClearAllChildren")
local IsA=insGet(game,"IsA")
local FindFirstChildOfClass=insGet(game,"FindFirstChildOfClass")
local FindFirstChildWhichIsA=insGet(game,"FindFirstChildWhichIsA")
local GetChildren=insGet(game,"GetChildren")
local GetDescendants=insGet(game,"GetDescendants")
local IsDescendantOf=insGet(game,"IsDescendantOf")
local GetPropertyChangedSignal=insGet(game,"GetPropertyChangedSignal")
local plrs=FindFirstChildOfClass(game,"Players")
local rus=FindFirstChildOfClass(game,"RunService")
local ws=FindFirstChildOfClass(game,"Workspace")
local uis=FindFirstChildOfClass(game,"UserInputService")
local gs=FindFirstChildOfClass(game,"GuiService")
local lp=insGet(plrs,"LocalPlayer")
local pg=FindFirstChildOfClass(lp,"PlayerGui")
local mouse=insGet(lp,"GetMouse")(lp)
local stepped=insGet(rus,"Stepped")
local heartbeat=insGet(rus,"Heartbeat")
local renderstepped=insGet(rus,"RenderStepped")
local GetPlayers=insGet(plrs,"GetPlayers")
local Raycast=insGet(ws,"Raycast")
local Connect=heartbeat.Connect
local Disconnect=Connect(GetPropertyChangedSignal(game,"CreatorId"),type).Disconnect
local Wait=heartbeat.Wait
local GetMouseLocation=insGet(uis,"GetMouseLocation")
local GetFocusedTextBox=insGet(uis,"GetFocusedTextBox")
local GetMouseDelta=insGet(uis,"GetMouseDelta")
local IsMouseButtonPressed=insGet(uis,"IsMouseButtonPressed")
local IsKeyDown=insGet(uis,"IsKeyDown")
local Inverse=cfGet(cf_0,"Inverse")
local Lerp=cfGet(cf_0,"Lerp")
local function Chat(Message)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync(Message)
end

--// Reanimate
local FOLDER="Patchma Reanimate"
if isfolder and not isfolder(FOLDER) then
makefolder(FOLDER)
end
local FILE="Reanimate.lua"
local PatchmaRenimUrl ="https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/PatchmaRenim.lua"
if isfile and not isfile(FOLDER.."/"..FILE) then
writefile(FOLDER.."/"..FILE,game:HttpGet(PatchmaRenimUrl))
end
writefile(FOLDER.."/"..FILE,game:HttpGet(PatchmaRenimUrl))
local PatchmaSuccess, Patchma = pcall(function()
 return loadstring(readfile(FOLDER.."/"..FILE))()
end)

if not PatchmaSuccess then
 Patchma ={
 Reanim = function()
 return {
 cframes ={},
 joints ={},
 fling = function() end,
 predictionfling = function() end,
 refreshjoints = function() end,
 raycastlegs = function() return 0, 0 end,
 velbycfrvec = function() return 0, 0 end,
 velchgbycfrvec = function() return 0, 0 end,
 velYchg = function() return 0 end,
 addmode = function() end,
 getPart = function() return nil end,
 getPartFromMesh = function() return nil end,
 getAccWeldFromMesh = function() return nil end,
 getJoint = function() return {C0 = CFrame.new(), C1 = CFrame.new()} end,
 getPartJoint = function() return {C0 = CFrame.new()} end,
 rotToMouse = function() end,
 glitchJoint = function() return 0 end,
 setWalkSpeed = function() end,
 setJumpPower = function() end,
 setGravity = function() end,
 setCfr = function() end,
 getVel = function() return Vector3.new() end,
 getCamCF = function() return CFrame.new() end,
 isFirstPerson = function() return false end,
 IsWalking = function() return false end
}
 end,
 stopreanimate = function() end
}
end

--// Misc
local reanimate = Patchma.Reanim
local stopreanimate = Patchma.stopreanimate
local Running=false
local IsRendering=nil
local IsRendering1=nil
local IsKeys=nil
local deltaTime=.25
local GuiOpened=true
local Mode="None"
local ClockTicky=0
local Constant=1
local Boost=1
Weld = nil
Animate1 = nil
Weld1=nil

MainWeld=nil
MainWeld1=nil
 plr=game.Players.LocalPlayer
 PanoramaWeldUpdater = nil
if game.SoundService:FindFirstChild("GlitcherAudioPlayer") then
game.SoundService.GlitcherAudioPlayer:Destroy()
end

--// Main Script
function MainScript()
if Running then print("Already Running.") return end 
Running=true
local t=reanimate()
if type(t)~="table" then  
print("Script Already Running")
return 
end
--// Necessary Variables
local getPart=t.getPart
local idle=true 
local velYchg=t.velYchg 
local raycastlegs=t.raycastlegs
local velbycfrvec=t.velbycfrvec
local setWalkSpeed=t.setWalkSpeed
local walking=false
local rgb=Color3.fromRGB
local Player=game.Players.LocalPlayer
local getVel = t.getVel
local IsWalking=t.IsWalking
local getJoint=t.getJoint
local setCfr=t.setCfr
local getPart=t.getPart
local onnewcamera=t.onnewcamera
local SoundService=game.SoundService
if game.SoundService:FindFirstChild("GlitcherAudioPlayer") then
game.SoundService.GlitcherAudioPlayer:Destroy()
end


--// Spinny thing and interface
local basgui = Instance.new("GuiMain")
basgui.Parent = plr.PlayerGui
basgui.Name = "VISgui"
local FSCREEN = Instance.new("Frame")
FSCREEN.Parent = basgui
FSCREEN.BackgroundColor3 = Color3.new(255, 255, 255)
FSCREEN.BackgroundTransparency = 1
FSCREEN.BorderColor3 = Color3.new(17, 17, 17)
FSCREEN.Size = UDim2.new(1, 0, 1, 0)
FSCREEN.Position = UDim2.new(0, 0, 0, 0)
local imag1 = Instance.new("ImageLabel",FSCREEN)
imag1.BackgroundTransparency = 1
imag1.BorderSizePixel = 0
imag1.ImageTransparency = 0.5
imag1.ImageColor3 = Color3.new(1,1,1)
imag1.Position = UDim2.new(.75,25,.55,25)
imag1.Size = UDim2.new(0,550,0,550)
imag1.Image = "rbxassetid://2076519836"
local imag2 = imag1:Clone()
imag2.Parent = FSCREEN
imag2.ImageTransparency = 0
imag2.Size = UDim2.new(0,800,0,800)
imag2.Position = UDim2.new(0.75,-100,0.55,-100)
imag2.ImageColor3 = Color3.new(1,1,1)
imag2.Image = "rbxassetid://2076458450"
local imag3 = imag2:Clone()
imag3.Parent = FSCREEN
imag3.ImageTransparency = 0
imag3.Size = UDim2.new(0,900,0,900)
imag3.Position = UDim2.new(0.75,-150,0.55,-155)
imag3.ImageColor3 = Color3.new(0,0,0)
imag3.Image = "rbxassetid://2092248396"
local imag4 = imag2:Clone()
imag4.Parent = FSCREEN
imag4.ImageTransparency = 0
imag4.Size = UDim2.new(0,700,0,700)
imag4.Position = UDim2.new(0.75,-50,0.55,-50)
imag4.ImageColor3 = Color3.new(1,1,1)
imag4.Image = "rbxassetid://2076519836"



--// Interface 
local GLITCHERAUDIO = {};
GLITCHERAUDIO["MainGui_1"] = Instance.new("ScreenGui", FSCREEN);
GLITCHERAUDIO["MainGui_1"]["Name"] = [[MainGui]];
GLITCHERAUDIO["MainGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

CollectionService:AddTag(GLITCHERAUDIO["MainGui_1"], [[main]]);

GLITCHERAUDIO["TopFrame_2"] = Instance.new("Frame", GLITCHERAUDIO["MainGui_1"]);
GLITCHERAUDIO["TopFrame_2"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["TopFrame_2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["TopFrame_2"]["Size"] = UDim2.new(0, 212, 0, 98);
GLITCHERAUDIO["TopFrame_2"]["Position"] = UDim2.new(0, 650, 0, -70);
GLITCHERAUDIO["TopFrame_2"]["Name"] = [[TopFrame]];
GLITCHERAUDIO["TopFrame_2"]["Rotation"] = 45;


GLITCHERAUDIO["TopFrame_3"] = Instance.new("UIStroke", GLITCHERAUDIO["TopFrame_2"]);
GLITCHERAUDIO["TopFrame_3"]["Transparency"] = 0.5;
GLITCHERAUDIO["TopFrame_3"]["Name"] = [[TopFrame]];
GLITCHERAUDIO["TopFrame_3"]["Thickness"] = 5;


GLITCHERAUDIO["MusicFrame_4"] = Instance.new("Frame", GLITCHERAUDIO["MainGui_1"]);
GLITCHERAUDIO["MusicFrame_4"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["MusicFrame_4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["MusicFrame_4"]["Size"] = UDim2.new(0, 330, 0, 16);
GLITCHERAUDIO["MusicFrame_4"]["Position"] = UDim2.new(0, 2, 0, 258);
GLITCHERAUDIO["MusicFrame_4"]["Name"] = [[MusicFrame]];
GLITCHERAUDIO["MusicFrame_4"]["BackgroundTransparency"] = 0.25;


GLITCHERAUDIO["AudioDur_5"] = Instance.new("UIStroke", GLITCHERAUDIO["MusicFrame_4"]);
GLITCHERAUDIO["AudioDur_5"]["Transparency"] = 0.5;
GLITCHERAUDIO["AudioDur_5"]["Name"] = [[AudioDur]];
GLITCHERAUDIO["AudioDur_5"]["Thickness"] = 2.5;


GLITCHERAUDIO["MusicName_6"] = Instance.new("TextLabel", GLITCHERAUDIO["MusicFrame_4"]);
GLITCHERAUDIO["MusicName_6"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["MusicName_6"]["TextSize"] = 24;
GLITCHERAUDIO["MusicName_6"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GLITCHERAUDIO["MusicName_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["MusicName_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
GLITCHERAUDIO["MusicName_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["MusicName_6"]["BackgroundTransparency"] = 1;
GLITCHERAUDIO["MusicName_6"]["Size"] = UDim2.new(0, 68, 0, 22);
GLITCHERAUDIO["MusicName_6"]["Text"] = [[N/A]];
GLITCHERAUDIO["MusicName_6"]["AutomaticSize"] = Enum.AutomaticSize.X;
GLITCHERAUDIO["MusicName_6"]["Name"] = [[MusicName]];
GLITCHERAUDIO["MusicName_6"]["Position"] = UDim2.new(0,0,0,-90);


GLITCHERAUDIO["MusicDuration_7"] = Instance.new("TextLabel", GLITCHERAUDIO["MusicFrame_4"]);
GLITCHERAUDIO["MusicDuration_7"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["MusicDuration_7"]["TextSize"] = 24;
GLITCHERAUDIO["MusicDuration_7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GLITCHERAUDIO["MusicDuration_7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["MusicDuration_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
GLITCHERAUDIO["MusicDuration_7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["MusicDuration_7"]["BackgroundTransparency"] = 1;
GLITCHERAUDIO["MusicDuration_7"]["Size"] = UDim2.new(0, 80, 0, 22);
GLITCHERAUDIO["MusicDuration_7"]["Text"] = [[0 / ----]];
GLITCHERAUDIO["MusicDuration_7"]["AutomaticSize"] = Enum.AutomaticSize.X;
GLITCHERAUDIO["MusicDuration_7"]["Name"] = [[MusicDuration]];
GLITCHERAUDIO["MusicDuration_7"]["Position"] = UDim2.new(0, 2, 0, -26);


GLITCHERAUDIO["Lol_8"] = Instance.new("ImageLabel", GLITCHERAUDIO["MusicFrame_4"]);
GLITCHERAUDIO["Lol_8"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["Lol_8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- GLITCHERAUDIO["Lol_8"]["ImageContent"] = ;
GLITCHERAUDIO["Lol_8"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
GLITCHERAUDIO["Lol_8"]["Image"] = [[rbxassetid://2076519836]];
GLITCHERAUDIO["Lol_8"]["Size"] = UDim2.new(0, 15, 0, 15);
GLITCHERAUDIO["Lol_8"]["BackgroundTransparency"] = 1;
GLITCHERAUDIO["Lol_8"]["Name"] = [[Lol]];


GLITCHERAUDIO["Lol1_9"] = Instance.new("ImageLabel", GLITCHERAUDIO["MusicFrame_4"]);
GLITCHERAUDIO["Lol1_9"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["Lol1_9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- GLITCHERAUDIO["Lol1_9"]["ImageContent"] = ;
GLITCHERAUDIO["Lol1_9"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
GLITCHERAUDIO["Lol1_9"]["Image"] = [[rbxassetid://2076458450]];
GLITCHERAUDIO["Lol1_9"]["Size"] = UDim2.new(0, 20, 0, 20);
GLITCHERAUDIO["Lol1_9"]["BackgroundTransparency"] = 1;
GLITCHERAUDIO["Lol1_9"]["Name"] = [[Lol1]];
GLITCHERAUDIO["Lol1_9"]["Position"] = UDim2.new(0, -2, 0, -2);


GLITCHERAUDIO["MusicDur_a"] = Instance.new("Frame", GLITCHERAUDIO["MusicFrame_4"]);
GLITCHERAUDIO["MusicDur_a"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["MusicDur_a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
GLITCHERAUDIO["MusicDur_a"]["Size"] = UDim2.new(0, 5, 0, 5);
GLITCHERAUDIO["MusicDur_a"]["Position"] = UDim2.new(0, 5, 0, 5);
GLITCHERAUDIO["MusicDur_a"]["Name"] = [[MusicDur]];
GLITCHERAUDIO["MusicDur_a"]["BackgroundTransparency"] = 0.25;


GLITCHERAUDIO["UICorner_b"] = Instance.new("UICorner", GLITCHERAUDIO["MusicDur_a"]);
GLITCHERAUDIO["UICorner_b"]["CornerRadius"] = UDim.new(0, 50);


GLITCHERAUDIO["ModeInfoFrame_c"] = Instance.new("Frame", GLITCHERAUDIO["MainGui_1"]);
GLITCHERAUDIO["ModeInfoFrame_c"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["ModeInfoFrame_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["ModeInfoFrame_c"]["Size"] = UDim2.new(0, 216, 0, 30);
GLITCHERAUDIO["ModeInfoFrame_c"]["Position"] = UDim2.new(0, 2, 0, 194);
GLITCHERAUDIO["ModeInfoFrame_c"]["Name"] = [[ModeInfoFrame]];
GLITCHERAUDIO["ModeInfoFrame_c"]["BackgroundTransparency"] = 0.25;


GLITCHERAUDIO["UIGradient_d"] = Instance.new("UIGradient", GLITCHERAUDIO["ModeInfoFrame_c"]);
GLITCHERAUDIO["UIGradient_d"]["Rotation"] = 180;
GLITCHERAUDIO["UIGradient_d"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 2.35713),NumberSequenceKeypoint.new(1.000, 0)};
GLITCHERAUDIO["UIGradient_d"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.698, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


GLITCHERAUDIO["UIStroke_e"] = Instance.new("UIStroke", GLITCHERAUDIO["ModeInfoFrame_c"]);
GLITCHERAUDIO["UIStroke_e"]["Transparency"] = 0.75;
GLITCHERAUDIO["UIStroke_e"]["Thickness"] = 1.5;


GLITCHERAUDIO["TextLabel_f"] = Instance.new("TextLabel", GLITCHERAUDIO["ModeInfoFrame_c"]);
GLITCHERAUDIO["TextLabel_f"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["TextLabel_f"]["TextSize"] = 24;
GLITCHERAUDIO["TextLabel_f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GLITCHERAUDIO["TextLabel_f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["TextLabel_f"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
GLITCHERAUDIO["TextLabel_f"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["TextLabel_f"]["BackgroundTransparency"] = 1;
GLITCHERAUDIO["TextLabel_f"]["Size"] = UDim2.new(0, 200, 0, 30);
GLITCHERAUDIO["TextLabel_f"]["Text"] = [[N/A]];


GLITCHERAUDIO["Glitcher Title_10"] = Instance.new("Frame", GLITCHERAUDIO["MainGui_1"]);
GLITCHERAUDIO["Glitcher Title_10"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["Glitcher Title_10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["Glitcher Title_10"]["Size"] = UDim2.new(0, 230, 0, 30);
GLITCHERAUDIO["Glitcher Title_10"]["Position"] = UDim2.new(0, 2, 0, 282);
GLITCHERAUDIO["Glitcher Title_10"]["Name"] = [[Glitcher Title]];
GLITCHERAUDIO["Glitcher Title_10"]["BackgroundTransparency"] = 0.25;


GLITCHERAUDIO["UIGradient_11"] = Instance.new("UIGradient", GLITCHERAUDIO["Glitcher Title_10"]);
GLITCHERAUDIO["UIGradient_11"]["Rotation"] = 180;
GLITCHERAUDIO["UIGradient_11"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 2.35713),NumberSequenceKeypoint.new(1.000, 0)};
GLITCHERAUDIO["UIGradient_11"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.698, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))};


GLITCHERAUDIO["UIStroke_12"] = Instance.new("UIStroke", GLITCHERAUDIO["Glitcher Title_10"]);
GLITCHERAUDIO["UIStroke_12"]["Transparency"] = 0.75;
GLITCHERAUDIO["UIStroke_12"]["Thickness"] = 1.5;


GLITCHERAUDIO["TextLabel_13"] = Instance.new("TextLabel", GLITCHERAUDIO["Glitcher Title_10"]);
GLITCHERAUDIO["TextLabel_13"]["BorderSizePixel"] = 0;
GLITCHERAUDIO["TextLabel_13"]["TextSize"] = 24;
GLITCHERAUDIO["TextLabel_13"]["TextXAlignment"] = Enum.TextXAlignment.Left;
GLITCHERAUDIO["TextLabel_13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["TextLabel_13"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
GLITCHERAUDIO["TextLabel_13"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
GLITCHERAUDIO["TextLabel_13"]["BackgroundTransparency"] = 1;
GLITCHERAUDIO["TextLabel_13"]["Size"] = UDim2.new(0, 216, 0, 30);
GLITCHERAUDIO["TextLabel_13"]["Text"] = [[Renegade Glitcher]];
GLITCHERAUDIO["TextLabel_13"]["Position"] = UDim2.new(0, 2, 0, 0);




--// Make the Audio Visualizer
local frame=Instance.new("Frame",FSCREEN)
frame.Name="Container"
frame.AnchorPoint=Vector2.new(.5,.5)
frame.Position=UDim2.new(0,285,1,2.5)
frame.Size=UDim2.new(.75,0,.15,25)
frame.Transparency=1
frame.Rotation=0
local fr1=Instance.new("Frame",frame)
fr1.Name="Bar"
fr1.Size=UDim2.new(0,5,0,5)
fr1.BackgroundColor3=Color3.fromRGB(255,255,255)
fr1.Transparency=0
local stroke=Instance.new("UIStroke",fr1)
stroke.Thickness=2.5
stroke.Transparency=.75
local grad=Instance.new("UIGradient",fr1)
grad.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 1.5),NumberSequenceKeypoint.new(1.000, 0)}
grad.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(0.698, Color3.fromRGB(255, 255, 255)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
grad.Rotation=90

local listlay=Instance.new("UIListLayout",frame)
listlay.Padding=UDim.new(0,1.5)
listlay.FillDirection="Horizontal"
listlay.HorizontalAlignment="Left"
listlay.SortOrder="LayoutOrder"
listlay.VerticalAlignment="Center"

local analyzer=Instance.new("AudioAnalyzer")
analyzer.Name="Analyzer"
analyzer.WindowSize="Medium"

local AudioPlayer=Instance.new("AudioPlayer",SoundService)
AudioPlayer.Looping=true
AudioPlayer.Volume=1
AudioPlayer.Name="GlitcherAudioPlayer"
AudioPlayer.TimePosition=0
analyzer.Parent = AudioPlayer

local sound=Instance.new("Sound",AudioPlayer)
sound.Looped=true 
sound.Volume=0 --// Set this to 0 to avoid interference
sound.Name="Sound2"

local output=Instance.new("AudioDeviceOutput",AudioPlayer)
local wire=Instance.new("Wire",AudioPlayer)
wire.SourceInstance=AudioPlayer
wire.TargetInstance=output
wire.Name="Output"

local wire2=Instance.new("Wire",AudioPlayer)
wire2.SourceInstance=AudioPlayer
wire2.TargetInstance=analyzer
wire2.Name="WireAnalyzer"


--// Tween function 
function fine(obj, speed, whattype, anim)
local Tinfo=TweenInfo.new
local TweenService=game.TweenService
local hii = Tinfo(speed, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
if whattype =="pos" then
return TweenService:Create(obj, hii,{Position = anim})
elseif whattype =="size" then
return TweenService:Create(obj, hii,{Size = anim})
elseif whattype =="bt" then
return TweenService:Create(obj, hii,{BackgroundTransparency = anim})
elseif whattype =="trans" then
return TweenService:Create(obj, hii,{Transparency = anim})
elseif whattype=="rot" then
return TweenService:Create(obj, hii,{Rotation = anim})
end
end



--// Load the Visualizer
local container=FSCREEN:WaitForChild("Container")
local Bar=container.Bar
local MusicPlayer=SoundService:WaitForChild("GlitcherAudioPlayer")
Bar.Parent=nil
local marker=15
local startfreq=25
local endfreq=100
for i = 1, marker do
local bar=Bar:Clone()
local freq = startfreq + (i-1) * (endfreq - startfreq) / (marker - 1)
bar.LayoutOrder=i 
bar.Name="Bar_"..i
bar.Parent=container
bar.Transparency=.75
fine(bar,1.5,"size",UDim2.new(0,50,.25,0)):Play()
wait(.01)
end 
fr1.Size=UDim2.new(0,50,.25,0)




local sin=math.sin
function This(dt)
if MusicPlayer.TimePosition==0 then return end
local spectrum=MusicPlayer.Analyzer:GetSpectrum()
for i, bar in ipairs(container:GetChildren()) do
if bar:IsA("Frame") then
local spectrumIndex = math.floor((bar.LayoutOrder / marker) * #spectrum) + 1
spectrumIndex = math.clamp(spectrumIndex, 1, #spectrum)
local magnitude = spectrum[spectrumIndex] or 0
local scale = math.min(magnitude / 0.0010 * 2, 550)
local targetSize = UDim2.new(
Bar.Size.X.Scale, 
Bar.Size.X.Offset,
math.min(Bar.Size.Y.Scale * scale, 5.5), 
Bar.Size.Y.Offset
)
bar.Size = bar.Size:Lerp(targetSize, math.min(250, dt * 15))
end
end
end


local function timeFormat(seconds)
seconds = math.floor(seconds or 0)
local minutes = math.floor(seconds / 60)
local secs = seconds % 60
return string.format("%d:%02d", minutes, secs)
end


--[[
local imgl2b = imgl2:Clone()
imgl2b.Parent = FSCREEN
imgl2b.ImageTransparency = 0
imgl2b.Size = UDim2.new(0,800,0,800)
imgl2b.Position = UDim2.new(0.75,-100,0.55,-100)
imgl2b.ImageColor3 = Color3.new(0,0,0)
]]



function Asset(filename)
if isfile("Renegade Audios/"..filename) then
return getcustomasset("Renegade Audios/"..filename)
else
warn("Downloading Audio File "..filename)
writefile("Renegade Audios/"..filename, game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/"..filename.."?raw=true"))
MusicPlayer.TimePosition=0 
MusicPlayer.Asset=Asset(filename)
MusicPlayer:Play()
sound.SoundId=Asset(filename)
sound.TimePosition=0 
sound:Play()
  return ""
end
end




--// Body Parts
local RootJoint=getJoint("RootJoint")
local RightShoulder=getJoint("Right Shoulder")
local LeftShoulder=getJoint("Left Shoulder")
local RightHip=getJoint("Right Hip")
local LeftHip=getJoint("Left Hip")
local Neck=getJoint("Neck")
local hed=getPart("Neck")

--// Rename accessories if they have the same name but different texture
local char=game.Players.LocalPlayer.Character
char.Humanoid.Health=math.huge
local count=0
for _,v in ipairs(char:GetChildren()) do
if v.Name=="RainbowGodSword" then
count+=1
v.Name="RainbowGodSword_"..count
end
end

--// Parts 
local Rarm=ws:FindFirstChild(lp.Name):WaitForChild("Accessory (RArm)").Handle
local Larm=ws:FindFirstChild(lp.Name):WaitForChild("Accessory (LArm)").Handle
local Torso=ws:FindFirstChild(lp.Name):WaitForChild("Accessory (Black)").Handle
local Head=ws:FindFirstChild(lp.Name):WaitForChild(CAMERAFOCUS).Handle
local sword1_1=ws:FindFirstChild(lp.Name):FindFirstChild("DemonGodSword").Handle
local sword1_2=ws:FindFirstChild(lp.Name):WaitForChild("RainbowGodSword_2").Handle
sword1_1.Massless=true
sword1_2.Massless=true
sword1_1.CanCollide=false
sword1_2.CanCollide=false
local m=Instance.new("Model",Torso)
local m1=Instance.new("Model", Torso)





local righead=ws:FindFirstChild(game.Players.LocalPlayer.Name):FindFirstChild(CAMERAFOCUS).Handle
--// Focus The Camera On The Rigs heads
ws.CurrentCamera.CameraSubject=righead




--// Main Swords
local getPartFromMesh=t.getPartFromMesh
local getPartJoint=t.getPartJoint
local sword = getPartFromMesh(5254583415, 5268538095)
local s1_1 = sword and getPartJoint(sword) or {C0 = cf_0} -- VoidLord Sword
local sword2 = getPartFromMesh(5278721954, 5692006383)
local s1_2 = sword2 and getPartJoint(sword2) or {C0 = cf_0} -- Halloween Sword
local sword3 = getPartFromMesh(5278721954, 5316510551)
local s1_3 = sword3 and getPartJoint(sword3) or {C0 = cf_0} -- Rainbow Sword
local sword4 = getPartFromMesh(5278721954, 5278777022)
local s1_4 = sword4 and getPartJoint(sword4) or {C0 = cf_0} -- Demon God Sword

 --// Other Variables
local WingAnimations={}
local sp=0
local AnimType="Renegades"

function CreateWeld(parent,part0,part1,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za)
local weld = Instance.new("Motor6D")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.Name="What Weld"
weld.C1 = cf(C1X,C1Y,C1Z)*angles(C1Xa,C1Ya,C1Za)
weld.C0 = cf(C0X,C0Y,C0Z)*angles(C0Xa,C0Ya,C0Za)
return weld
end

function CreateWeld1(parent,part0,part1,C0X,C0Y,C0Z,C0Xa,C0Ya,C0Za,C1X,C1Y,C1Z,C1Xa,C1Ya,C1Za)
local weld = Instance.new("Weld")
weld.Parent = parent
weld.Part0 = part0
weld.Part1 = part1
weld.Name="What Weld"
weld.C1 = cf(C1X,C1Y,C1Z)*angles(C1Xa,C1Ya,C1Za)
weld.C0 = cf(C0X,C0Y,C0Z)*angles(C0Xa,C0Ya,C0Za)
return weld
end

function CreatePart(parent,transparency,reflectance,material,col,size)
local p = Instance.new("Part")
p.TopSurface = 0
p.BottomSurface = 0
p.Parent = parent
p.Size = size
p.Transparency = transparency
p.Reflectance = reflectance
p.CanCollide = false
p.Locked = true 
p.Massless = true 
p.Anchored=false
p.Color = col 
p.Material = material
return p
end




--// Modes Container
local Modes={
  {Name="Renegades",WingAnim="Renegades",MusicTitle="Team Grimoire - Grimoire of Blue",Music="Grimoire of Blue"},
  {Name="Overseer",WingAnim="Overseer",MusicTitle="Frums - of Ambrosia",Music="Ambrosia"},
  {Name="Mayhem",WingAnim="Mayhem",MusicTitle="D-Mode-D - Shriek",Music="Shriek"},
  {Name="Chaos",WingAnim="Chaos",MusicTitle="Frums - HALL",Music="HALL"},
  {Name="Subsequent",WingAnim="Subsequent",MusicTitle="Derpcat - Throwback",Music="Throwback"},
  {Name="Fracture",WingAnim="Fracture",MusicTitle="「Hard NRG」[Yooh] Backwards - cold kiss sound",Music="Hard NRG"},
  {Name="Kronos",WingAnim="Kronos",MusicTitle="Camellia - Body F10ating in the Zero Gravity Space",Music="Zero Grav"},
  {Name="Equinox",WingAnim="Equinox",MusicTitle="Sols rng - Equinox",Music="EQUINOX"},
  {Name="Mayhem - No Hope",WingAnim="Mayhem2",MusicTitle="Team Grimoire - Kathastrophe",Music="Kathastrophe"},
  {Name="Shard Surfer",WingAnim="Shard",MusicTitle="Tidal Wave - Shiawase (VIP Remix)",Music="Shiawase"},
  {Name="Luminosity",WingAnim="Luminosity",MusicTitle="t+pazolite & Getty - Twisted Drop Party - HARDCORE TANOC",Music="TANOC"},
  {Name="Censored",WingAnim="Censored",MusicTitle="t+pazolite - CENSORED!!!",Music="Censored"},
  {Name="Fragmentation",WingAnim="Fragmentation",MusicTitle="Camellia - Dance With Silence",Music="Dance With Silence"},
  {Name="Panorama",WingAnim="Panorama",MusicTitle="Arctcore - Panorama",Music="Panorama"},
}



--[[
local LarmPart=CreatePart(m,.5,0,"Neon",Color3.new(1,1,1),v3(1,1,1))
local RarmPart=CreatePart(m1,.5,0,"Neon",Color3.new(1,1,1),v3(1,1,1))
local when=CreateWeld(RarmPart,Rarm,RarmPart,0,0,0,rad(0),rad(0),rad(0),0,0,0,rad(0),rad(0),rad(0))
local when1=CreateWeld(LarmPart,Larm,LarmPart,0,0,0,rad(0),rad(0),rad(0),0,0,0,rad(0),rad(0),rad(0))

coroutine.resume(coroutine.create(function()
if RarmPart and LarmPart then
while game.RunService.Heartbeat:Wait(.01) do 
if not RarmPart and LarmPart then
when:Destroy()
when1:Destroy()
break 
end
when.C1=cf(0,0,0)*angles(0,0,0)
when1.C1=cf(0,0,0)*angles(0,0,0)
end
end
end))
]]




--// BillboardGui 
local bilguit = Instance.new("BillboardGui", ws:FindFirstChild(lp.Name):FindFirstChild(CAMERAFOCUS))
bilguit.Adornee = nil
bilguit.Name = "ModeName"
bilguit.Size = UDim2.new(4, 0, 1.2, 0)
bilguit.StudsOffset = Vector3.new(-8, 8/1.5, 0)
local modet = Instance.new("TextLabel", bilguit)
modet.Size = UDim2.new(10/2, 0, 7/2, 0)
modet.FontSize = "Size8"
modet.TextScaled = true
modet.TextTransparency = 0
modet.BackgroundTransparency = 1 
modet.TextTransparency = 0
modet.TextStrokeTransparency = 0
modet.FontFace=Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic)
modet.TextStrokeColor3 = Color3.new(0,1,1)
modet.TextColor3 = Color3.new(1,1,1)
modet.Text = ""


--// Get the PlaybackLoudness 
local Loudness=sound.PlaybackLoudness


--// Recolor And Rename Function 
function ChangeAndRecolor(txt, usefontface, font, col1, col2, usergb)
  
--// Important Things For Changing Colors
local TopFrame=GLITCHERAUDIO["TopFrame_2"]
local TopFrameStroke=GLITCHERAUDIO["TopFrame_3"]
local MusicFrame=GLITCHERAUDIO["MusicFrame_4"]
local MusicFrameStroke=GLITCHERAUDIO["AudioDur_5"]
local MusicTimeLabel=GLITCHERAUDIO["MusicDuration_7"]
local MusicNameLabel=GLITCHERAUDIO["MusicName_6"]
local MusicLengthFrame=GLITCHERAUDIO["MusicDur_a"]
local MusicImag1=GLITCHERAUDIO["Lol1_9"]
local MusicImag2=GLITCHERAUDIO["Lol_8"]
local ModeInfoFrame=GLITCHERAUDIO["ModeInfoFrame_c"]
local ModeInfoGrad=GLITCHERAUDIO["UIGradient_d"]
local ModeInfoStroke=GLITCHERAUDIO["UIStroke_e"]
local ModeInfoLabel=GLITCHERAUDIO["TextLabel_f"]
local GlitcherTitleFrame=GLITCHERAUDIO["Glitcher Title_10"]
local GlitcherTitleGrad=GLITCHERAUDIO["UIGradient_11"]
local GlitcherTitleStroke=GLITCHERAUDIO["UIStroke_12"]
local GlitcherTitleLabel=GLITCHERAUDIO["TextLabel_13"]
local spin1=imag1
local spin2=imag2 
local spin3=imag3 
local spin4=imag4

modet.Text = string.upper(txt)
ModeInfoLabel.Text = string.upper(txt)


if usefontface then
modet.FontFace=font
ModeInfoLabel.FontFace=font
MusicNameLabel.FontFace=font
MusicTimeLabel.FontFace=font
GlitcherTitleLabel.FontFace=font
else
modet.Font=font
ModeInfoLabel.Font=font
MusicNameLabel.Font=font
MusicTimeLabel.Font=font
GlitcherTitleLabel.Font=font
end



--// Disconnect Things
if IsRendering1 then
IsRendering1:Disconnect()
IsRendering1=nil
end

--// RGB 
local r = 255
local g = 0
local b = 0
local stage = 1
if usergb then
IsRendering1=game:GetService("RunService").RenderStepped:Connect(function()

--// RGB 
if stage == 1 then
g = g + 2.5
if g >= 255 then
g = 255
stage = 2
end
elseif stage == 2 then
r = r - 2.5
if r <= 0 then
r = 0
stage = 3
end
elseif stage == 3 then
b = b + 2.5
if b >= 255 then
b = 255
stage = 4
end
elseif stage == 4 then
g = g - 2.5
if g <= 0 then
g = 0
stage = 5
end
elseif stage == 5 then
r = r + 2.5
if r >= 255 then
r = 255
stage = 6
end
elseif stage == 6 then
b = b - 2.5
if b <= 0 then
b = 0
stage = 1
end
end

--// Apply Color
local currentrgb=rgb(r,g,b)
TopFrame.BackgroundColor3=col1
TopFrameStroke.Color=currentrgb
MusicFrameStroke.Color=currentrgb
MusicImag2.ImageColor3=currentrgb
MusicImag1.ImageColor3=currentrgb
ModeInfoGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, currentrgb),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
MusicNameLabel.TextColor3=col1
ModeInfoStroke.Color=currentrgb
ModeInfoLabel.TextColor3=currentrgb
GlitcherTitleGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, currentrgb),ColorSequenceKeypoint.new(0.698, col1),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
GlitcherTitleStroke.Color=currentrgb
spin1.ImageColor3=col1
MusicFrame.BackgroundColor3=col1
modet.TextColor3=col1
modet.TextStrokeColor3=currentrgb
spin2.ImageColor3=currentrgb
spin3.ImageColor3=col1
spin4.ImageColor3=currentrgb
MusicTimeLabel.TextColor3=col1
MusicLengthFrame.BackgroundColor3=currentrgb
GlitcherTitleLabel.TextColor3=currentrgb

if basgui:FindFirstChild(FSCREEN.Name) then 

for _,v in ipairs(FSCREEN:WaitForChild("Container"):GetDescendants()) do
if v:IsA("UIGradient") and usergb==true then
  
v.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, currentrgb),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
end
end

for _,v in ipairs(FSCREEN:WaitForChild("Container"):GetDescendants()) do
if v:IsA("UIStroke") and usergb==true then
v.Color=currentrgb
end
end 
else 
return
end

end)

else

--// Use Normal Colors if set tot false
if IsRendering1 then
IsRendering1:Disconnect()
IsRendering1=nil
end

MusicNameLabel.TextColor3=col2
modet.TextStrokeColor3 = col2
modet.TextColor3 = col1
TopFrame.BackgroundColor3=col1
TopFrameStroke.Color=col2
MusicFrame.BackgroundColor3=col2
MusicFrameStroke.Color=col1
MusicLengthFrame.BackgroundColor3=col1
MusicImag2.ImageColor3=col1
MusicImag1.ImageColor3=col1
ModeInfoFrame.BackgroundColor3=col1
ModeInfoGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, col1),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
ModeInfoStroke.Color=col2
ModeInfoLabel.TextColor3=col1
GlitcherTitleFrame.BackgroundColor3=col2
GlitcherTitleLabel.TextColor3=col1
GlitcherTitleGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, col1),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
MusicTimeLabel.TextColor3=col1
GlitcherTitleStroke.Color=col1
spin1.ImageColor3=col2
spin2.ImageColor3=col2
spin3.ImageColor3=col1
spin4.ImageColor3=col1

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIGradient") then
v.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, col1),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
end
end

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIStroke") then
v.Color=col2
end
end

end



--// Custom Color Glitch 
--[[if usecustomcolglitch then
if RGB then
RGB:Disconnect()
RHB=nil
end
if COLGLITCH then
COLGLITCH:Disconnect()
COLGLITCH=nil
end
COLGLITCH=game:GetService("RunService").RenderStepped:Connect(function()

local colorglitchtype=math.random(1,3)
if colorglitchtype==1 then 
modet.TextStrokeColor3 = c1
modet.TextColor3 = c2
MusicNameLabel.TextColor3=c2
TopFrame.BackgroundColor3=c1
TopFrameStroke.Color=c2
MusicFrame.BackgroundColor3=c2
MusicFrameStroke.Color=c1
MusicLengthFrame.BackgroundColor3=c2
MusicImag2.ImageColor3=c2
MusicImag1.ImageColor3=c1
ModeInfoFrame.BackgroundColor3=c1
MusicTimeLabel.TextColor3=c1
ModeInfoGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c2),ColorSequenceKeypoint.new(0.698, c1),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
ModeInfoStroke.Color=c2
ModeInfoLabel.TextColor3=c1
GlitcherTitleFrame.BackgroundColor3=c2
GlitcherTitleLabel.TextColor3=c1
GlitcherTitleGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c1),ColorSequenceKeypoint.new(0.698, c2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
GlitcherTitleStroke.Color=c1
spin1.ImageColor3=c2
spin2.ImageColor3=c2
spin3.ImageColor3=c1
spin4.ImageColor3=c1

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIGradient") then
v.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c1),ColorSequenceKeypoint.new(0.698, c2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
end
end

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIStroke") then
v.Color=col2
end
end


elseif colorglitchtype==2 then
modet.TextStrokeColor3 = c2
MusicNameLabel.TextColor3=c1
modet.TextColor3 = c1
TopFrame.BackgroundColor3=c2
TopFrameStroke.Color=c1
MusicFrame.BackgroundColor3=c1
MusicFrameStroke.Color=c2
MusicLengthFrame.BackgroundColor3=c1
MusicImag2.ImageColor3=c1
MusicImag1.ImageColor3=c2
MusicTimeLabel.TextColor3=c2
ModeInfoFrame.BackgroundColor3=c2
ModeInfoGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c1),ColorSequenceKeypoint.new(0.698, c2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
ModeInfoStroke.Color=c1
ModeInfoLabel.TextColor3=c2
GlitcherTitleFrame.BackgroundColor3=c1
GlitcherTitleLabel.TextColor3=c2
GlitcherTitleGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c2),ColorSequenceKeypoint.new(0.698, c1),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
GlitcherTitleStroke.Color=c2
spin1.ImageColor3=c1
spin2.ImageColor3=c2
spin3.ImageColor3=c1
spin4.ImageColor3=c2

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIGradient") then
v.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c1),ColorSequenceKeypoint.new(0.698, c2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
end
end

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIStroke") then
v.Color=col2
end
end


elseif colorglitchtype == 3 then 
  MusicNameLabel.TextColor3=c2
modet.TextStrokeColor3 = c1
modet.TextColor3 = c2
TopFrame.BackgroundColor3=c1
TopFrameStroke.Color=c2
MusicFrame.BackgroundColor3=c2
MusicFrameStroke.Color=c1
MusicLengthFrame.BackgroundColor3=c2
MusicImag2.ImageColor3=c2
MusicImag1.ImageColor3=c1
MusicTimeLabel.TextColor3=c1
ModeInfoFrame.BackgroundColor3=c1
ModeInfoGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c2),ColorSequenceKeypoint.new(0.698, c1),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
ModeInfoStroke.Color=c2
ModeInfoLabel.TextColor3=c1
GlitcherTitleFrame.BackgroundColor3=c2
GlitcherTitleLabel.TextColor3=c1
GlitcherTitleGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c1),ColorSequenceKeypoint.new(0.698, c2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
GlitcherTitleStroke.Color=c1
spin1.ImageColor3=c2
spin2.ImageColor3=c1
spin3.ImageColor3=c2
spin4.ImageColor3=c1

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIGradient") then
v.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, c2),ColorSequenceKeypoint.new(0.698, c1),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
end
end

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIStroke") then
v.Color=col2
end
end


end
end)


else


-- // Apply Normal color if set to false 
if RGB then
RGB:Disconnect()
RHB=nil
end
if COLGLITCH then
COLGLITCH:Disconnect()
COLGLITCH=nil
end
MusicNameLabel.TextColor3=col2
modet.TextStrokeColor3 = col2
modet.TextColor3 = col1
TopFrame.BackgroundColor3=col1
TopFrameStroke.Color=col2
MusicFrame.BackgroundColor3=col2
MusicFrameStroke.Color=col1
MusicLengthFrame.BackgroundColor3=col1
MusicImag2.ImageColor3=col1
MusicImag1.ImageColor3=col1
ModeInfoFrame.BackgroundColor3=col1
ModeInfoGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, col1),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
ModeInfoStroke.Color=col2
ModeInfoLabel.TextColor3=col1
GlitcherTitleFrame.BackgroundColor3=col2
GlitcherTitleLabel.TextColor3=col1
GlitcherTitleGrad.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, col1),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
GlitcherTitleStroke.Color=col1
spin1.ImageColor3=col2
spin2.ImageColor3=col2
spin3.ImageColor3=col1
spin4.ImageColor3=col1

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIGradient") then
v.Color=ColorSequence.new{ColorSequenceKeypoint.new(0.000, col1),ColorSequenceKeypoint.new(0.698, col2),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(0, 0, 0))}
end
end

for _,v in ipairs(FSCREEN:FindFirstChild("Container"):GetDescendants()) do
if v:IsA("UIStroke") then
v.Color=col2
end
end

end]]

end



--// Fetch Modes
function getMode(modeName)
for i,v in next, Modes do
if(v.Name==modeName)then
return v
end
end
return Modes[1]
end 


function changeMode(modeName)
local info = getMode(modeName)
Mode=info.Name;
GLITCHERAUDIO["MusicName_6"]["Text"] = info.MusicTitle
AnimType=info.WingAnim or "Renegades"
MusicPlayer.TimePosition=0 
MusicPlayer.Asset=Asset(info.Music..".mp3")
MusicPlayer:Play()
sound.SoundId=Asset(info.Music..".mp3")
sound.TimePosition=0 
sound:Play()

end

function swait(num)
if num==0 or num==nil then
game:service'RunService'.Stepped:wait(0)
else
for i=0,num do
game:service'RunService'.Stepped:wait(0)
end
end
end


--// Intro Animation 
function Introduction()
local alpha=.250
--// First Anim
for i=0,2,.1 do
swait()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
end
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5,-0.5),angles(0,0,-0.8726646259971648)),alpha)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,-0.5),angles(0.3490658503988659,1.5707963267948966,0)),alpha)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,200,0),angles(-1.9198621771937625,0,3.141592653589793)),alpha)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.5,-0.5),angles(0,0,0.8726646259971648)),alpha)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,-0.5),angles(-0.3490658503988659,-1.5707963267948966,0)),alpha)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295,0,3.141592653589793)),alpha)  
end
wait(1)
--// Second Anim
for i=0,5,.1 do
swait()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),alpha)  
end
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-2,0.5,-1.25),angles(1.2217304763960306,0,-0.5235987755982988)),alpha)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,0,-0.5),angles(1.361356816555577,1.5707963267948966,0)),alpha)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-1,0),angles(-2.6179938779914944,0,3.141592653589793)),alpha)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.25,-0.5),angles(0,0,0.8726646259971648)),alpha)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1.25,-0.5),angles(-0.08726646259971647,-1.5707963267948966,0)),alpha)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295,0,3.141592653589793)),alpha)  
end

--// Third Anim
for i=0,3.125,.1 do 
swait()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,4.5,-3.25),angles(0,1.5707963267948966,1.5707963267948966)),alpha)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,4.5,-3.75),angles(0,1.5707963267948966,-1.5707963267948966)),alpha)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,2.75,-5.1),angles(0,1.5707963267948966,3.141592653589793)),alpha)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,3.25,-5),angles(0,1.5707963267948966,0)),alpha)  
end
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.75,-0.15,0),angles(-1.2217304763960306,0,-0.8726646259971648)),alpha)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,0,-0.5),angles(1.361356816555577,1.5707963267948966,0)),alpha)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-1,0),angles(-2.6179938779914944,0,3.141592653589793)),alpha)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.75,-0.25,0),angles(-1.2217304763960306,0,0.8726646259971648)),alpha)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1.25,-0.5),angles(-0.08726646259971647,-1.5707963267948966,0)),alpha)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295,0,3.141592653589793)),alpha)  

end

--// Fourth Anim
for i=0,3,.1 do 
swait()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,4.5,-3.25),angles(0,1.5707963267948966,1.5707963267948966)),alpha)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,4.5,-3.75),angles(0,1.5707963267948966,-1.5707963267948966)),alpha)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,2.75,-5.1),angles(0,1.5707963267948966,3.141592653589793)),alpha)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,3.25,-5),angles(0,1.5707963267948966,0)),alpha)  
end
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.75,0.5,-1),angles(1.2217304763960306,0,0.3490658503988659)),alpha)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5,-0.5),angles(0,0,-0.8726646259971648)),alpha)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,0,-0.5),angles(1.361356816555577,1.5707963267948966,0)),alpha)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-1,0),angles(-2.6179938779914944,0,3.141592653589793)),alpha)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1.25,-0.5),angles(-0.08726646259971647,-1.5707963267948966,0)),alpha)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295,0,3.141592653589793)),alpha)  

end

--// Fifth Anim
for i=0,2,.1 do 
swait()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,4.5,-3.25),angles(0,1.5707963267948966,1.5707963267948966)),alpha)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,4.5,-3.75),angles(0,1.5707963267948966,-1.5707963267948966)),alpha)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,2.75,-5.1),angles(0,1.5707963267948966,3.141592653589793)),alpha)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,3.25,-5),angles(0,1.5707963267948966,0)),alpha)  
end
LeftShoulder.C0=Lerp(LeftShoulder.C0,cf(-1.5,0.5,-0.5),alpha)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,0),angles(0,1.5707963267948966,0)),alpha) RootJoint.C0=Lerp(RootJoint.C0,angles(-1.5707963267948966,0,3.6651914291880923),alpha)  RightShoulder.C0=Lerp(RightShoulder.C0,cf(1.5,0.5,-0.5),alpha)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,0),angles(0,-1.5707963267948966,0)),alpha)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295,0,2.530727415391778)),alpha) 
end
modet.Text = ""
--// Sixth Anim
for i=0,2.5,.1 do 
swait()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,4.5,-3.25),angles(0,1.5707963267948966,1.5707963267948966)),alpha)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,4.5,-3.75),angles(0,1.5707963267948966,-1.5707963267948966)),alpha)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,2.75,-5.1),angles(0,1.5707963267948966,3.141592653589793)),alpha)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,3.25,-5),angles(0,1.5707963267948966,0)),alpha)  
end
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5,-0.5),angles(0,0,-0.3490658503988659)),alpha)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,-0.15),angles(0,1.5707963267948966,-0.2617993877991494)),alpha)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,12,0),angles(-1.5707963267948966,-0.08726646259971647,3.6651914291880923)),alpha)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,1,0.15),angles(2.775073510670984,0,-0.5235987755982988)),alpha)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75,-0.5),angles(0,-1.5707963267948966,0.3490658503988659)),alpha)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295,0,2.530727415391778)),alpha)  
end
changeMode("Fracture")
ChangeAndRecolor("Fracture",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,69,95),rgb(182,235,255))
end

--// Special Anims

function SpecialAnim(start,dur,change,ret,current,color1)
if current >=start then
Mode=change 
end
if current >= dur then
Mode=ret
if Mode=="Overseer" then
ChangeAndRecolor("Overseer",true,Font.new([[rbxasset://fonts/families/Michroma.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(39,252,69),rgb(255,255,255))
elseif Mode=="Censored" then
ChangeAndRecolor("Censored",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,0,0),rgb(rgb(61,255,77)))
end
end
end







if INTROANIM then
wait(1) -- Wait for the reanimation to load properly
Introduction()
else
wait(.5) -- Wait for the reanimation to load properly
changeMode("Fracture")
ChangeAndRecolor("Fracture",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,69,95),rgb(182,235,255))
end

















--// Keybinds and etc...
IsKeys=uis.InputBegan:Connect(function(io,gpe)
if gpe then return end

if io.KeyCode==Enum.KeyCode.One and Mode~="Renegades"then
changeMode("Renegades")
ChangeAndRecolor("Renegades",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(255,255,255),rgb(0,160,200))

elseif io.KeyCode==Enum.KeyCode.Two and Mode~="Overseer" then
changeMode("Overseer")
ChangeAndRecolor("Overseer",true,Font.new([[rbxasset://fonts/families/Michroma.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(39,252,69),rgb(255,255,255))

elseif io.KeyCode==Enum.KeyCode.Three and Mode~="Mayhem" then
changeMode("Mayhem")
ChangeAndRecolor("Mayhem",false,"Antique",rgb(0,0,0),rgb(224,0,0))


elseif io.KeyCode==Enum.KeyCode.Four and Mode~="Chaos" then
changeMode("Chaos")


elseif io.KeyCode==Enum.KeyCode.Five and Mode~="Subsequent" then
changeMode("Subsequent")
ChangeAndRecolor("Subsequent",true,Font.new([[rbxasset://fonts/families/PermanentMarker.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,151,89),rgb(171,255,220))


elseif io.KeyCode==Enum.KeyCode.Six and Mode~="Fracture" then
changeMode("Fracture")
ChangeAndRecolor("Fracture",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,69,95),rgb(182,235,255))


elseif io.KeyCode==Enum.KeyCode.Seven and Mode~="Kronos" then
changeMode("Kronos")
ChangeAndRecolor("Kronos",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Italic),rgb(255,247,138),rgb(254,251,209))


elseif io.KeyCode==Enum.KeyCode.Eight and Mode~="Equinox" then
changeMode("Equinox")
ChangeAndRecolor("Equinox",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal),rgb(255,255,255),rgb(0,0,0))


elseif io.KeyCode==Enum.KeyCode.Nine and Mode~="Shard Surfer" then
changeMode("Shard Surfer")
ChangeAndRecolor("Shard | Surfer",true,Font.new([[rbxasset://fonts/families/Michroma.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(93,228,255),rgb(255,233,93))


elseif io.KeyCode==Enum.KeyCode.M and Mode=="Mayhem" then
changeMode("Mayhem - No Hope")
ChangeAndRecolor("Mayhem - No Hope",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(255,0,0),rgb(0,0,0))

elseif io.KeyCode==Enum.KeyCode.M and Mode=="Overseer" then
changeMode("Luminosity")
ChangeAndRecolor("Luminosity",true,Font.new([[rbxasset://fonts/families/Fondamento.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(213,246,255),rgb(175,238,255))

elseif io.KeyCode==Enum.KeyCode.M and Mode=="Subsequent" then
changeMode("Censored")
ChangeAndRecolor("Censored",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,0,0),rgb(61,255,77))

elseif io.KeyCode==Enum.KeyCode.M and Mode=="Renegades" then
changeMode("Fragmentation")
ChangeAndRecolor("Fragmentation",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(71,71,71),rgb(223,90,0))

elseif io.KeyCode==Enum.KeyCode.M and Mode=="Fracture" then
changeMode("Panorama")
ChangeAndRecolor("Panorama",true,Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,0,0),rgb(255,0,0), true)


end
end)

--// Misc Function, either for debugging
game.Players.LocalPlayer.Chatted:Connect(function(m)
if m:sub(1,6)==".mode/"then
changeMode(m:sub(7))
end
end)





--// Wing Animation Container
WingAnimations.Renegades=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
if LEGACY then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(0,7.5,5.5),angles(0,1.5707963267948966,-1.5707963267948966+0.3490658503988659*sin((sine+0.35)*3.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(0,12.5-1.5*sin((sine+1.5)*3.5),2.5),angles(0,1.5707963267948966,-2.007128639793479+0.3490658503988659*sin((sine+.25)*3.5))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(0,-3.5,-12.5+1.5*sin((sine+1.5)*3.5)),angles(0,1.5707963267948966,0.4363323129985824-0.3490658503988659*sin((sine+.25)*3.5))),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(0,-6,-7.5),angles(0,1.5707963267948966,-0.3490658503988659*sin((sine+0.35)*3.5))),deltaTime)
else 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,9-2.25*sin((sine+0.15)*1.5),0.6+2*sin((sine+0.75)*1.5)),angles(-1.1344640137963142+0.3490658503988659*sin((sine+0.95)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,5-2.5*sin((sine+0.5)*1.5),2.1-1*sin((sine+0.35)*1.5)),angles(-0.5235987755982988+0.4363323129985824*sin((sine+0.95)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,-2.5+1.25*sin((sine+0.35)*1.5),-4+2.5*sin((sine+0.5)*1.5)),angles(0.5235987755982988-0.4363323129985824*sin((sine+0.9)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,-2.5-2*sin((sine+0.75)*1.5),-8+2.25*sin((sine+0.15)*1.5)),angles(1.1344640137963142-0.3490658503988659*sin((sine+0.95)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
end
end
end


WingAnimations.Overseer=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,-2+10.5*sin(sine*.15),2+10.5*sin(sine*.15)),angles(0+sp/15+Boost/45,1.5707963267948966,2.2689280275926285)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,-2+10.5*sin(sine*.15),2+10.5*sin(sine*.15)),angles(0+sp/15+Boost/45,1.5707963267948966,3.839724354387525)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,-1.35+10.5*sin(sine*.15),2+10.5*sin(sine*.15)),angles(0+sp/15+Boost/45,1.5707963267948966,0.6981317007977318)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,-1.35+10.5*sin(sine*.15),2+10.5*sin(sine*.15)),angles(0+sp/15+Boost/45,1.5707963267948966,-0.8726646259971648)),deltaTime)  
end
end


WingAnimations.Mayhem=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1.5,1.5,1.5),angles(0,1.5707963267948966,-0.8726646259971648-0.17453292519943295*sin((sine+1)*2.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1.5,1.5,8),angles(0,1.5707963267948966,-0.8726646259971648-0.4363323129985824*sin((sine+1)*2.5))),deltaTime) 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1.5,-0.15 * sin((sine+0.75)*3.5),0.15 * sin((sine+0.75)*3.5)),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1.5,2,4.5),angles(0,1.5707963267948966,-0.8726646259971648-0.2617993877991494*sin((sine+1)*2.5))),deltaTime) 
end
end


WingAnimations.Chaos=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,-2+sound.PlaybackLoudness/50,2+sound.PlaybackLoudness/100),angles(0,1.5707963267948966,2.2689280275926285+sp/15+Boost/20)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,-2+sound.PlaybackLoudness/50,2+sound.PlaybackLoudness/100),angles(0,1.5707963267948966,3.839724354387525+sp/15+Boost/20)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,-1.35+sound.PlaybackLoudness/50,2+sound.PlaybackLoudness/100),angles(0,1.5707963267948966,0.6981317007977318+sp/15+Boost/20)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,-1.35+sound.PlaybackLoudness/50,2+sound.PlaybackLoudness/100),angles(0,1.5707963267948966,-0.8726646259971648+sp/15+Boost/20)),deltaTime)  
end
end



WingAnimations.Subsequent=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,3.75-2.5*sin(sine*1.5),-3.35+2.5*sin((sine+0.5)*1.5)),angles(0,1.5707963267948966,-2.443460952792061)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,3.415-2.5*sin(sine*1.5),-4.5+2.5*sin((sine+0.5)*1.5)),angles(0,1.5707963267948966,2.2689280275926285)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,2.55-2.5*sin(sine*1.5),-2.85+2.5*sin((sine+0.5)*1.5)),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,2.25-2.5*sin(sine*1.5),-4+2.5*sin((sine+0.5)*1.5)),angles(0,1.5707963267948966,0.6981317007977318)),deltaTime)  
end
end


WingAnimations.Fracture=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,4.25-2.5*sin((sine+0.45)*1.5),-8+2.5*sin((sine+0.65)*1.5)),angles(0,1.5707963267948966,3.141592653589793-0.2617993877991494*sin((sine+0.25)*1.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,8-2.5*sin((sine+0.65)*1.5),-4.5+2.5*sin((sine+0.45)*1.5)),angles(0,1.5707963267948966,1.3562634015954636+0.3490658503988659*sin((sine+0.25)*1.5))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,7.55-2.5*sin((sine+0.65)*1.5),-4.55+2.5*sin((sine+0.5)*1.5)),angles(0,1.5707963267948966,-1.9198621771937625+0.3490658503988659*sin((sine+0.25)*1.5))),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,3.75-2.5*sin((sine+0.45)*1.5),-8.5+2.5*sin((sine+0.65)*1.5)),angles(0,1.5707963267948966,-0.3490658503988659*sin((sine+0.25)*1.5))),deltaTime)  
end
end


WingAnimations.Kronos=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
--[[
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,4.5+0.1*sin((sine+0.15)*1.5),-7.515-2.5*sin((sine+0.5)*1.5)),angles(0,1.5707963267948966,-0.2617993877991494*sin((sine+1)*1.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,7+2.5*sin((sine+0.5)*1.5),-3.55+0.15*sin((sine+0.25)*1.5)),angles(0,1.5707963267948966,1.4835298641951802+0.2617993877991494*sin((sine+1)*1.5))),deltaTime)  
]]
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,4.25-2.5*sin((sine+0.45)*1.5),-8+2.5*sin((sine+0.65)*1.5)),angles(0,1.5707963267948966,3.141592653589793-0.2617993877991494*sin((sine+0.25)*1.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,8-2.5*sin((sine+0.65)*1.5),-4.5+2.5*sin((sine+0.45)*1.5)),angles(0,1.5707963267948966,1.3562634015954636+0.3490658503988659*sin((sine+0.25)*1.5))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-.5,3.1,-3.55),angles(0,1.5707963267948966,-0.8726646259971648+ClockTicky/5.25)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-.5,2.85,-3.55),angles(0,1.5707963267948966,2.2689280275926285+ClockTicky/3.25)),deltaTime)  
end
end


WingAnimations.Equinox=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1,0-sound.PlaybackLoudness/100,0-sound.PlaybackLoudness/100),angles(0.6981317007977318,-1.5707963267948966,0-sp/15+Boost/20)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,0+sound.PlaybackLoudness/100,0+sound.PlaybackLoudness/100),angles(0.6981317007977318,1.5707963267948966,0-sp/15+Boost/20)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-10-sound.PlaybackLoudness/100,0,0),angles(4.014257279586958+sp/10,0+sp/15+Boost/75,0)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(10+sound.PlaybackLoudness/100,0,0),angles(0.8726646259971648+sp/10,0+sp/15+Boost/75,0)),deltaTime)  
end
end


WingAnimations.Mayhem2=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,3,-3.45),angles(0,1.5707963267948966+0.3490658503988659*sin((sine+0.5)*2.5),0.17453292519943295*sin((sine+0.5)*2.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,3,-3.45),angles(0,1.5707963267948966-0.3490658503988659*sin((sine+1)*2.5),1.2217304763960306-0.3490658503988659*sin((sine+1)*2.5))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1,3,-3.45),angles(0,4.71238898038469-0.3490658503988659*sin((sine+0.5)*2.5),-0.3490658503988659*sin((sine+0.5)*2.5))),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1,3,-3.45),angles(0,4.71238898038469+0.3490658503988659*sin((sine+1)*2.5),-1.2217304763960306+0.17453292519943295*sin((sine+1)*2.5))),deltaTime)  
end
end


WingAnimations.Shard=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-2.8,3,-4),angles(1.0471975511965976+sp/5,-0.2617993877991494,1.5707963267948966)),deltaTime) 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-2.8,2.55,-3.55),angles(-0.5235987755982988+sp/5,-0.2617993877991494,1.5707963267948966)),deltaTime) 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-2.8,3.4,-3.6),angles(2.6179938779914944+sp/5,-0.2617993877991494,1.5707963267948966)),deltaTime) 
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-2.8,2.9,-3.1),angles(-2.0943951023931953+sp/5,-0.2617993877991494,1.5707963267948966)),deltaTime) 
end
end


WingAnimations.Luminosity=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
--[[
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,-10 * sin(sine*0.5),10 * sin(sine*0.5)),angles(0,1.5707963267948966,0.6981317007977318+sp/15+Boost/25)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,10 * sin(sine*0.5),-10 * sin(sine*0.5)),angles(0,1.5707963267948966,-0.8726646259971648+sp/15+Boost/25)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,-10 * sin(sine*0.5),10 * sin(sine*0.5)),angles(0,1.5707963267948966,3.839724354387525+sp/15+Boost/25)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,10 * sin(sine*0.5),-10 * sin(sine*0.5)),angles(0,1.5707963267948966,2.2689280275926285+sp/15+Boost/25)),deltaTime)  
]]
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,-0 -sound.PlaybackLoudness/50),angles(0,1.5707963267948966,0.6981317007977318-sp/15-Boost/35)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,-10 +sound.PlaybackLoudness/50,10 -sound.PlaybackLoudness/50),angles(0,1.5707963267948966,-0.8726646259971648+sp/15+Boost/35)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,-0 -sound.PlaybackLoudness/50),angles(0,1.5707963267948966,3.839724354387525-sp/15-Boost/35)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,-10 +sound.PlaybackLoudness/50,10 -sound.PlaybackLoudness/50),angles(0,1.5707963267948966,2.2689280275926285+sp/15+Boost/35)),deltaTime)  
end
end


WingAnimations.Censored=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,5.5 * sin(sine*1),-5.5 * sin(sine*1)),angles(0,1.5707963267948966,2.2689280275926285+sp/45+Boost/15)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,5.5 * sin(sine*1),-5.5 * sin(sine*1)),angles(0,1.5707963267948966,-0.8726646259971648+sp/45+Boost/15)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,0 +sound.PlaybackLoudness/50),angles(0-sp/45-Boost/15,1.5707963267948966,0.6981317007977318)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,0 +sound.PlaybackLoudness/50),angles(0-sp/45-Boost/15,1.5707963267948966,-2.443460952792061)),deltaTime)  
end
end


WingAnimations.Fragmentation=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,-2+1.5*sin((sine+0.5)*1.5),-8+1.5*sin((sine+0.95)*1.5)),angles(0.8726646259971648+0.4363323129985824*sin((sine+0.1)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,-3+1.5*sin((sine+0.45)*1.5),-4+1.25*sin((sine+0.75)*1.5)),angles(0.2617993877991494+0.4363323129985824*sin((sine+0.1)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,8-1.5*sin((sine+0.95)*1.5),0.75-1.5*sin((sine+0.5)*1.5)),angles(-0.8726646259971648-0.4363323129985824*sin((sine+0.1)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,4.15-1.25*sin((sine+0.75)*1.5),2.45-1.5*sin((sine+0.45)*1.5)),angles(-0.2617993877991494-0.4363323129985824*sin((sine+0.1)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
end
end


WingAnimations.Panorama=function()
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(1 * sin((sine+0.85)*2),3+1*sin((sine+0.45)*2),-5.55-1*sin((sine+0.5)*2)),angles(0,1.5707963267948966+0.5235987755982988*sin((sine+0.45)*2),0.7853981633974483+0.17453292519943295*sin((sine+0.55)*2))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1 * sin((sine+0.75)*2),3+1*sin((sine+0.65)*2),-6.55-1*sin((sine+0.5)*2)),angles(0,-1.5707963267948966-0.5235987755982988*sin((sine+0.15)*2),-0.08726646259971647-0.3490658503988659*sin((sine+0.35)*2))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1 * sin((sine+0.75)*2),3+1*sin((sine+0.45)*2),-5.55-1*sin((sine+0.5)*2)),angles(0,-1.5707963267948966-0.5235987755982988*sin((sine+0.45)*2),-0.7853981633974483-0.17453292519943295*sin((sine+0.55)*2))),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1 * sin((sine+0.75)*2),3+1*sin((sine+0.65)*2),-6.55-1*sin((sine+0.5)*2)),angles(0,1.5707963267948966+0.5235987755982988*sin((sine+0.15)*2),0.08726646259971647+0.3490658503988659*sin((sine+0.35)*2))),deltaTime)  
end
end





--//Main Animations Function 
function MainAnimations()
if not Running then return end
if MusicPlayer.Volume==0 then return end
if Mode=="Chaos"then
ChangeAndRecolor("Chaos",true,Font.new([[rbxasset://fonts/families/PressStart2P.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,0,0),BrickColor.random().Color)
end
sp=sp+1
if Mode=="Kronos" or Mode=="Panorama" then
Constant+=1 
if Constant >=60 then
Constant=1 
ClockTicky+=6.25
end
end
Boost+=1*sound.PlaybackLoudness/50
onnewcamera()
ws.CurrentCamera.CameraSubject=righead
--sound.TimePosition=MusicPlayer.TimePosition
--// Music Length Visualizer 
local current = MusicPlayer.TimePosition
local total = MusicPlayer.TimeLength
GLITCHERAUDIO["MusicDuration_7"].Text = string.format("%s / %s", timeFormat(current), total > 0 and timeFormat(total) or "----")

--// Special Anims
if Mode=="Overseer" or Mode=="Overseer1" then
SpecialAnim(98,155,"Overseer1","Overseer",current)
end

if Mode=="Censored" or Mode=="Censored1" then 
SpecialAnim(49,69,"Censored1","Censored",current)
SpecialAnim(128,148,"Censored1","Censored",current)
end
if Mode=="Censored" or Mode=="Censored2" then
SpecialAnim(187,212,"Censored2","Censored",current)
end





if total > 0 then
local progress = math.clamp(current / total, 0, 1)
local maxWidth = 320
GLITCHERAUDIO["MusicDur_a"].Size = UDim2.new(0, progress * maxWidth, 0, 5)
GLITCHERAUDIO["Lol1_9"].Position=UDim2.new(-.015, progress * maxWidth, 0, -2)
GLITCHERAUDIO["Lol_8"].Position=UDim2.new(-.01, progress * maxWidth, 0, 0)
GLITCHERAUDIO["Lol_8"].Rotation =sp
GLITCHERAUDIO["Lol1_9"].Rotation =sp
else
GLITCHERAUDIO["MusicDur_a"].Size = UDim2.new(0, 5, 0, 5)
end





if Mode=="Chaos" then
GLITCHERAUDIO["TextLabel_f"].Position=UDim2.new(0,math.random(-1,1),0,math.random(-1,1))
modet.Position = UDim2.new(0,math.random(-1,1),0,math.random(-1,1))
modet.Rotation = -2 * math.cos(sine / 1) + math.random(-3,3)
imag1.Rotation+=-1 + math.random(-5,5)
imag2.Rotation+=1+sound.PlaybackLoudness/50 + math.random(-5,5)
imag3.Rotation+=1+sound.PlaybackLoudness/25 + math.random(-5,5)
imag4.Rotation+=-1-sound.PlaybackLoudness/10 + math.random(-5,5)
else
modet.Position = UDim2.new(0,0,0,0)
modet.Rotation = -5 * math.cos(sp / 32)
GLITCHERAUDIO["TextLabel_f"].Position=UDim2.new(0,0,0,0)
imag1.Rotation+=-1
imag2.Rotation+=1+sound.PlaybackLoudness/75
imag3.Rotation+=1+sound.PlaybackLoudness/50
imag4.Rotation+=-1-sound.PlaybackLoudness/25
end




game.Players.LocalPlayer.PlayerGui.TouchGui.TouchControlFrame.DynamicThumbstickFrame.Active=false
ws.CurrentCamera.CameraSubject=righead





sine=osclock()
local walking = IsWalking()
idle = not walking
local getVel= getVel()
local ray,ray2=raycastlegs()
local velY=velYchg()
local velXZ=velbycfrvec(v3_xz)
local velXZ2=velbycfrvec(v3_xzL)
local velNet=velbycfrvec(v3_net)
local IsOnGround=(ray==0)
local Fall=velY>5
local Jump=velY<-20




--// Every Animations
--[[if IsOnGround then
end]]
if Fall then
if Mode=="Renegades" or Mode=="Mayhem" or Mode=="Chaos" or Mode=="Mayhem - No Hope" then
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.6580627893946132,0,3.141592653589793)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5,-0.5),angles(0,0,-0.6108652381980153)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75,-0.55),angles(0,-1.5707963267948966,0)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,-0.5),angles(0,1.5707963267948966,-0.4363323129985824)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,angles(-1.7453292519943295,0,3.141592653589793),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.5,-0.5),angles(0,0,0.6108652381980153)),deltaTime)
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
end
end


elseif Jump then
if (velY==0 or velY>0)then return end
if Mode=="Renegades" or Mode=="Mayhem" or Mode=="Chaos" or Mode=="Mayhem - No Hope" then
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.4835298641951802,0,3.141592653589793)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5,-0.5),angles(0,0,-0.4363323129985824)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75,-0.75),angles(0,-1.5707963267948966,0.5235987755982988)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1,-0.5),angles(0,1.5707963267948966,-0.4363323129985824)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,angles(-1.4835298641951802,0,3.141592653589793),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.5,-0.5),angles(0,0,0.4363323129985824)),deltaTime)  
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
end
end


elseif walking then 
if Mode=="Renegades" or Mode=="Mayhem" or Mode=="Chaos" or Mode=="Sub-Sonic" or Mode=="Mayhem - No Hope" then
setWalkSpeed(12)
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5,0),angles(-0.8726646259971648*sin(sine*5.5),1.5707963267948966,0)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,0),angles(0.8726646259971648*sin(sine*5.5),-1.5707963267948966,0)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.15*sin((sine+1.5)*5.5),-0.25+0.75*sin((sine+0.75)*5.5)),angles(0,1.5707963267948966,-0.2617993877991494-0.6981317007977318*sin((sine+0.5)*5.5))),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,angles(-1.8325957145940461,0,3.141592653589793+0.1832595714594046*sin(sine*5.5)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.3962634015954636,-0.04363323129985824*sin(sine*5.5),3.141592653589793-0.09599310885968812*sin(sine*5.5))),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1-0.15*sin((sine+1.5)*5.5),-0.25-0.75*sin((sine+0.75)*5.5)),angles(0,-1.5707963267948966,0.2617993877991494-0.6981317007977318*sin((sine+0.5)*5.5))),deltaTime) 
if Mode=="Renegades" then
if s1_1 and s1_2 and s1_3 and s1_4 then 
if LEGACY then 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(0,7.5,5.5),angles(0,1.5707963267948966,-1.5707963267948966+0.3490658503988659*sin((sine+0.35)*3.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(0,12.5-1.5*sin((sine+1.5)*3.5),2.5),angles(0,1.5707963267948966,-2.007128639793479+0.3490658503988659*sin((sine+.25)*3.5))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(0,-3.5,-12.5+1.5*sin((sine+1.5)*3.5)),angles(0,1.5707963267948966,0.4363323129985824-0.3490658503988659*sin((sine+.25)*3.5))),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(0,-6,-7.5),angles(0,1.5707963267948966,-0.3490658503988659*sin((sine+0.35)*3.5))),deltaTime)
else 
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,9-2.25*sin((sine+0.15)*1.5),0.6+2*sin((sine+0.75)*1.5)),angles(-1.1344640137963142+0.3490658503988659*sin((sine+0.95)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,5-2.5*sin((sine+0.5)*1.5),2.1-1*sin((sine+0.35)*1.5)),angles(-0.5235987755982988+0.4363323129985824*sin((sine+0.95)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,-2.5+1.25*sin((sine+0.35)*1.5),-4+2.5*sin((sine+0.5)*1.5)),angles(0.5235987755982988-0.4363323129985824*sin((sine+0.9)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,-2.5-2*sin((sine+0.75)*1.5),-8+2.25*sin((sine+0.15)*1.5)),angles(1.1344640137963142-0.3490658503988659*sin((sine+0.95)*1.5),1.5707963267948966,-0.8726646259971648)),deltaTime)  
end
end
elseif Mode=="Mayhem" then
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1.5,1.5,1.5),angles(0,1.5707963267948966,-0.8726646259971648-0.17453292519943295*sin((sine+1)*2.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1.5,1.5,8),angles(0,1.5707963267948966,-0.8726646259971648-0.4363323129985824*sin((sine+1)*2.5))),deltaTime) 
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1.5,-0.15 * sin((sine+0.75)*3.5),0.15 * sin((sine+0.75)*3.5)),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1.5,2,4.5),angles(0,1.5707963267948966,-0.8726646259971648-0.2617993877991494*sin((sine+1)*2.5))),deltaTime) 
end
elseif Mode=="Mayhem - No Hope" then 
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,3,-3.45),angles(0,1.5707963267948966+0.3490658503988659*sin((sine+0.5)*2.5),0.17453292519943295*sin((sine+0.5)*2.5))),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,3,-3.45),angles(0,1.5707963267948966-0.3490658503988659*sin((sine+1)*2.5),1.2217304763960306-0.3490658503988659*sin((sine+1)*2.5))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(1,3,-3.45),angles(0,4.71238898038469-0.3490658503988659*sin((sine+0.5)*2.5),-0.3490658503988659*sin((sine+0.5)*2.5))),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(1,3,-3.45),angles(0,4.71238898038469+0.3490658503988659*sin((sine+1)*2.5),-1.2217304763960306+0.17453292519943295*sin((sine+1)*2.5))),deltaTime)  
end
else
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0,0),angles(0,1.5707963267948966,-0.8726646259971648)),deltaTime) 
end
else
setWalkSpeed(20)
end



else



if WingAnimations[AnimType] then
WingAnimations[AnimType]()
end


--// Body Anima
if Mode=="Renegades" then
if LEGACY then 
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.75-0.095*sin((sine+0.25)*5),0.95,0.35-0.15*sin((sine+0.25)*5)),angles(1.5707963267948966+0.17453292519943295*sin((sine+0.75)*5),0,2.2689280275926285+0.09599310885968812*sin((sine+0.5)*5))),deltaTime) 
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.25,0.5,-1.35),angles(-0.5235987755982988+0.08726646259971647*sin((sine+1)*5),0,2.0943951023931953+0.09773843811168245*sin((sine+5)*5))),deltaTime) 
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.25,-1+0.1*sin(sine*5),0.65),angles(-0.2617993877991494-0.17453292519943295*sin(sine*5),0.3490658503988659,-0.01590658503988659-0.04363323129985824*sin((sine+0.5)*5))),deltaTime) 
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-0.25+0.175*sin(sine*5),-0.5+0.175*sin(sine*5)),angles(0.8726646259971648-0.08726646259971647*sin((sine+0.1)*5),0,-0.2617993877991494-0.04363323129985824*sin((sine+0.5)*5))),deltaTime) 
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-1.025-0.175*sin(sine*5),0),angles(-2.2689280275926285,-0.3490658503988659+0.08726646259971647*sin((sine+1)*5),3.141592653589793)),deltaTime)
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-2.007128639793479+0.09599310885968812*sin((sine+1)*5),0,3.3161255787892263)),deltaTime) 
else 
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.75-0.095*sin((sine+0.25)*3.5),0.95,0.35-0.15*sin((sine+0.25)*3.5)),angles(1.5707963267948966+0.17453292519943295*sin((sine+0.75)*3.5),0,2.2689280275926285+0.09599310885968812*sin((sine+0.5)*3.5))),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-1.025-0.175*sin(sine*3.5),0),angles(-2.2689280275926285,-0.3490658503988659+0.08726646259971647*sin((sine+1)*3.5),3.141592653589793)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-2.007128639793479+0.09599310885968812*sin((sine+1)*3.5),0,3.3161255787892263)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.25,-1+0.1*sin(sine*3.5),0.65),angles(-0.2617993877991494-0.17453292519943295*sin(sine*3.5),0.3490658503988659,-0.3490658503988659-0.1308996938995747*sin((sine+0.35)*3.5))),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-0.25+0.175*sin(sine*3.5),-0.5+0.175*sin(sine*3.5)),angles(0.8726646259971648-0.08726646259971647*sin((sine+0.1)*3.5),0,-0.2617993877991494-0.07853981633974483*sin((sine+0.4)*3.5))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.75,0.5+0.25*sin((sine+0.25)*3.5),-1-0.15*sin((sine+0.5)*3.5)),angles(0.8726646259971648+0.08726646259971647*sin((sine+1)*3.5),0,-0.5235987755982988-0.09599310885968812*sin((sine+0.5)*3.5))),deltaTime)  
end

elseif Mode=="Overseer" then
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75+0.15*sin((sine+1)*4.5),-1.015),angles(0,-1.5707963267948966,0.5235987755982988+0.2617993877991494*sin((sine+0.5)*4.5))),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.9198621771937625-0.17453292519943295*sin((sine+0.5)*4.5),0,2.443460952792061-0.09599310885968812*sin((sine+0.5)*4.5))),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.75+0.15*sin((sine+1)*4.5),-0.5),angles(0,1.5707963267948966,-0.6981317007977318+0.3490658503988659*sin(sine*4.5))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-0.5,0.25+0.15*sin((sine+1)*4.5),-0.25),angles(2.0943951023931953,0,1.5707963267948966)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,15+0.75*sin(sine*4.5),0),angles(-1.4835298641951802+0.09599310885968812*sin((sine+1)*4.5),0,2.8797932657906435+0.09599310885968812*sin((sine+0.5)*4.5))),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(0.5,0.65+0.15*sin((sine+1)*4.5),-0.5),angles(2.0943951023931953,-0.17453292519943295,-1.5707963267948966)),deltaTime)

elseif Mode=="Mayhem" then
if LEGACY==true then 
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-1-0.15*sin(sine*3.5),0.35-0.1*sin(sine*3.5)),angles(-0.4363323129985824+0.09599310885968812*sin(sine*3.5),0,0.17453292519943295)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.045*sin((sine+0.5)*3.5),0),angles(-1.7453292519943295,0,3.7524578917878086)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,0.15 * sin(sine*3.5),0),angles(-1.7453292519943295,0,2.530727415391778)),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-0.95-0.15*sin(sine*3.5),-0.25+0.15*sin(sine*3.5)),angles(0.17453292519943295,0,-0.17453292519943295)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.25,1.25+0.15*sin(sine*3.5),0.5),angles(2.6179938779914944,-0.3490658503988659,0.5235987755982988)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.35,0.5-0.1*sin((sine+0.75)*3.5),-0.5),angles(0,0.3490658503988659,0.5235987755982988+0.09599310885968812*sin((sine+1)*3.5))),deltaTime) 
else
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.01*sin((sine+0.2)*2),-0.1),angles(-0.17453292519943295,1.3962634015954636+0.08726646259971647*sin(sine*1),0.19198621771937624-0.08726646259971647*sin(sine*1.4))),deltaTime) LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-0.7,0.35+0.2*sin((sine+0.7)*1.2),-0.6+0.04*sin((sine+0.1)*1.8)),angles(0.4537856055185257+0.024434609527920613*sin((sine+0.1)*90),-2.443460952792061+0.022689280275926284*sin((sine+0.1)*90),-2.6179938779914944-0.05235987755982989*sin((sine+0.4)*2))),deltaTime) RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.4-0.2*sin((sine+0.6)*1.2),0.01),angles(0.3490658503988659,1.2217304763960306+0.08726646259971647*sin((sine+0.1)*1.6),-0.17453292519943295+0.08726646259971647*sin((sine+0.2)*1.2))),deltaTime) Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.8675022996339325+0.17453292519943295*sin(sine*90),-0.08726646259971647*sin(sine*90),3.246312408709453)),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1-0.05*sin((sine+0.1)*2),-0.16),angles(0,-1.2217304763960306+0.06981317007977318*sin((sine+0.4)*1.4),-0.22689280275926285+0.03490658503988659*sin((sine+0.4)*1.4))),deltaTime) RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.04+0.08*sin((sine+0.2)*1.2),0),angles(-1.7802358370342162-0.08726646259971647*sin((sine+0.5)*1.1),0,2.9670597283903604)),deltaTime) 
end

elseif Mode=="Chaos" then
RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.5+0.15*sin((sine+1)*3.5),-1-0.095*sin((sine+0.5)*3.5)),angles(0,0,-2.0943951023931953)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,0.25-0.15*sin(sine*3.5),-0.75-0.15*sin(sine*3.5)),angles(0.8726646259971648,1.5707963267948966,0)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-1+0.25*sin(sine*3.5),0),angles(-2.2689280275926285,0,3.141592653589793)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.055*sin((sine+1)*3.5),0),angles(-2.0943951023931953+mrandom(-1.5,1.5),0,3.141592653589793+mrandom(-1.5,1.5))),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1,-0.25-0.15*sin(sine*3.5)),angles(0,-1.5707963267948966,0.4363323129985824)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5+0.15*sin((sine+1)*3.5),-1.5-0.095*sin((sine+0.5)*3.5)),angles(0,0,2.2689280275926285)),deltaTime) 

elseif Mode=="Subsequent" then
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.2217304763960306-0.17453292519943295*sin((sine+0.5)*1.5),0,3.141592653589793)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.25+0.15*sin(sine*1.5),-0.25-0.15*sin(sine*1.5)),angles(-0.6108652381980153,0,-0.2617993877991494+0.17453292519943295*sin((sine+0.5)*1.5))),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.15 * sin(sine*1.5),-0.5-0.15*sin(sine*1.5)),angles(-0.8726646259971648,0,0.3490658503988659-0.17453292519943295*sin((sine+0.5)*1.5))),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1+0.15*sin((sine+0.25)*1.5),-0.5),angles(0,-1.5707963267948966,0.6108652381980153+0.2617993877991494*sin((sine+0.75)*1.5))),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.15*sin((sine+0.5)*1.5),-0.25),angles(0,1.5707963267948966,-1.1344640137963142-0.2617993877991494*sin((sine+0.5)*1.5))),deltaTime)   RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,10+0.75*sin(sine*1.5),0),angles(-0.8726646259971648+0.09599310885968812*sin((sine+0.5)*1.5),0,3.141592653589793)),deltaTime)  

elseif Mode=="Fracture" then
LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75+0.25*sin((sine+0.5)*2.5),-1.015),angles(0,-1.5707963267948966,0.5235987755982988+0.3490658503988659*sin((sine+1)*2.5))),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,1.25+0.25*sin((sine+1)*2.5),0.25),angles(2.530727415391778,0,-0.5235987755982988)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5+0.25*sin((sine+0.5)*2.5),-0.5),angles(0.17453292519943295,0,-0.3490658503988659+0.2617993877991494*sin((sine+0.5)*2.5))),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,12.5+1.5*sin(sine*2.5),0),angles(-1.4835298641951802+0.17453292519943295*sin((sine+0.5)*2.5),0,3.490658503988659)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.055*sin((sine+0.5)*2.5),0),angles(-1.9198621771937625-0.09599310885968812*sin((sine+0.25)*2.5),0,2.6179938779914944)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.15*sin((sine+0.5)*2.5),-0.25),angles(0,1.5707963267948966,-0.3490658503988659-0.17453292519943295*sin((sine+1)*2.5))),deltaTime)  

elseif Mode=="Kronos" then
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.35+0.25*sin((sine+0.45)*2.5),-0.5),angles(0,0,-0.3490658503988659-0.09599310885968812*sin((sine+0.75)*2.5))),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.055*sin((sine+0.15)*2.5),0),angles(-1.9198621771937625-0.09599310885968812*sin((sine+0.5)*2.5),0,2.6179938779914944)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,7.5+1.25*sin(sine*2.5),0),angles(-1.3962634015954636+0.17453292519943295*sin((sine+0.25)*2.5),0,3.141592653589793)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.5-0.15*sin((sine+0.25)*2.5),-1),angles(-0.4363323129985824+0.17453292519943295*sin((sine+0.75)*2.5),-1.5707963267948966,0)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.35+0.25*sin((sine+0.5)*2.5),-1.25),angles(0,0,-2.0943951023931953)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.95+0.25*sin((sine+0.15)*2.5),-0.25),angles(-0.4363323129985824+0.2617993877991494*sin((sine+0.35)*2.5),1.5707963267948966,0)),deltaTime)  

elseif Mode=="Equinox" then
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.3+0.1*sin((sine+0.75)*2.5),-0.5+0.25*sin((sine+0.75)*2.5),-0.25-0.1*sin((sine+0.45)*2.5)),angles(-0.6981317007977318,0,-2.356194490192345-0.17453292519943295*sin((sine+0.35)*2.5))),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.075*sin((sine+0.35)*2.5),0),angles(-2.007128639793479+0.09599310885968812*sin((sine+0.5)*2.5),-0.09599310885968812*sin((sine+0.2)*2.5),4.1887902047863905)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.35,0.15 * sin((sine+0.85)*2.5),-0.25),angles(-0.5235987755982988-0.09599310885968812*sin((sine+0.5)*2.5),0,2.530727415391778-0.1832595714594046*sin((sine+0.25)*2.5))),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.35,-0.15+0.2*sin((sine+0.5)*2.5),-0.5),angles(-0.5235987755982988-0.17453292519943295*sin((sine+0.55)*2.5),0.3490658503988659,0)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.6,-0.75+0.25*sin((sine+0.75)*2.5),0.25-0.1*sin((sine+0.25)*2.5)),angles(-0.3490658503988659+0.1832595714594046*sin((sine+0.25)*2.5),0.3490658503988659,0)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(1.5 * sin((sine+0.15)*2.5),7+0.75*sin((sine+0.75)*2.5),1 * sin((sine+0.85)*2.5)),angles(-1.4835298641951802+0.2617993877991494*sin((sine+0.2)*2.5),-0.17453292519943295,2.443460952792061)),deltaTime)  

elseif Mode=="Mayhem - No Hope" then
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,-0.5+0.15*sin(sine*2.5),0),angles(-2.0943951023931953-0.09599310885968812*sin((sine+0.75)*2.5),0,3.7524578917878086+0.17453292519943295*sin((sine+0.5)*2.5))),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.75+0.15*sin((sine+0.5)*2.5),-0.5),angles(0.3490658503988659+0.3490658503988659*sin((sine+0.5)*2.5),0,0.5235987755982988+0.17453292519943295*sin((sine+0.75)*2.5))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-2-0.15*sin((sine+0.5)*2.5),1+0.15*sin((sine+0.5)*2.5),-0.5-0.25*sin((sine+0.15)*2.5)),angles(1.2217304763960306,0,-0.8726646259971648-0.09599310885968812*sin((sine+0.15)*2.5))),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.65,-1.5-0.1*sin(sine*2.5),0.5-0.25*sin((sine+0.5)*2.5)),angles(-0.4363323129985824+0.17453292519943295*sin((sine+0.75)*2.5),0,-0.3490658503988659+0.17453292519943295*sin((sine+0.75)*2.5))),deltaTime) RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-0.25-0.15*sin((sine+0.25)*2.5),-0.5+0.15*sin((sine+0.5)*2.5)),angles(0,0,0.3490658503988659+0.17453292519943295*sin((sine+0.5)*2.5))),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.2217304763960306-0.1308996938995747*sin((sine+0.25)*2.5),0,2.443460952792061-0.1308996938995747*sin((sine+0.5)*2.5))),deltaTime) 

elseif Mode=="Shard Surfer" then
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.3,0.4,-0.4),angles(-0.17453292519943295-0.17453292519943295*sin(sine*2),-0.3490658503988659+0.08726646259971647*sin(sine*6),-1.5707963267948966-0.17453292519943295*sin(sine*1))),deltaTime) RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(3 * sin(sine*2),6,0),angles(-1.7802358370342162,-0.5585053606381855*sin((sine+0.5)*2),4.363323129985824)),deltaTime) RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.2,0.4,-0.4),angles(-0.17453292519943295-0.17453292519943295*sin(sine*2),0.3490658503988659+0.08726646259971647*sin(sine*6),1.5707963267948966)),deltaTime) RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1.1,-0.5-0.2*sin(sine*1),-0.7),angles(-0.5235987755982988,1.3962634015954636+0.17453292519943295*sin(sine*3),0.47123889803846897+0.3490658503988659*sin(sine*2.3))),deltaTime) Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.5009831567151235+0.3490658503988659*sin(sine*2),0,2.0943951023931953)),deltaTime) LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.9,-0.7+0.2*sin(sine*2),-0.3),angles(-0.6981317007977318+0.03490658503988659*sin(sine*3),-1.0471975511965976,-0.6981317007977318-0.17453292519943295*sin(sine*2.3))),deltaTime) 

elseif Mode=="Luminosity" then
RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,15+1*sin(sine*2.5),0),angles(-1.5707963267948966,0.08726646259971647+0.09599310885968812*sin((sine+0.5)*2.5),2.530727415391778)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.65,-1.075+0.25*sin((sine+0.25)*2.5),0),angles(-0.3490658503988659-0.1832595714594046*sin((sine+0.75)*2.5),0.3490658503988659,0.3490658503988659+0.09599310885968812*sin((sine+0.5)*2.5))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.85,0.85+0.1*sin((sine+0.5)*2.5),-0.16),angles(1.5707963267948966-0.09599310885968812*sin((sine+0.5)*2.5),0.1308996938995747*sin((sine+0.5)*2.5),-1.2217304763960306-0.04363323129985824*sin((sine+0.75)*2.5))),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0.25+0.175*sin((sine+0.45)*2.5),0),angles(2.0943951023931953+0.1832595714594046*sin((sine+0.5)*2.5),0.3490658503988659,0)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.75,-0.25+0.25*sin((sine+0.25)*2.5),-0.5),angles(-0.17453292519943295-0.27052603405912107*sin((sine+0.75)*2.5),0.3490658503988659,0.17453292519943295+0.09599310885968812*sin((sine+0.5)*2.5))),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.055*sin((sine+0.5)*2.5),0),angles(-1.9198621771937625-0.09599310885968812*sin((sine+0.5)*2.5),0,4.1887902047863905)),deltaTime)  

elseif Mode=="Censored" then
local colg=mrandom(1,5)
if colg==1 then
ChangeAndRecolor("C#N##R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,255,6),rgb(rgb(0,0,0)))
elseif colg==2 then
ChangeAndRecolor("#E##ORE#",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,10,0),rgb(rgb(0,190,0)))
elseif colg==3 then
ChangeAndRecolor("C#N##R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,100,0),rgb(rgb(0,50,0)))
elseif colg==4 then
ChangeAndRecolor("###SO#ED",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,125,0),rgb(rgb(0,255,0)))
elseif colg==5 then
ChangeAndRecolor("##NS#R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,10,0),rgb(rgb(0,50,0)))
end


RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,10+1*sin((sine+0.5)*2.5),0),angles(-1.3962634015954636-0.09599310885968812*sin(sine*2.5),0,3.141592653589793)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1+0.055*sin((sine+0.5)*2.5),0),angles(-1.9198621771937625+0.09599310885968812*sin(sine*2.5),0,3.141592653589793)),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5+0.15*sin((sine+0.5)*2.5),-0.25),angles(0.6108652381980153+0.17453292519943295*sin((sine+0.65)*2.5),0,-0.4363323129985824+0.09599310885968812*sin((sine+0.5)*2.5))),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(0.5,-0.5+0.15*sin((sine+0.75)*2.5),-0.5),angles(-0.7853981633974483+0.1832595714594046*sin((sine+0.45)*2.5),0,0)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-0.5,-0.25-0.15*sin((sine+0.25)*2.5),-0.5),angles(-0.3490658503988659+0.1832595714594046*sin((sine+0.75)*2.5),0,0)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.5+0.15*sin((sine+0.5)*2.5),-0.15),angles(0.6108652381980153+0.17453292519943295*sin((sine+0.65)*2.5),0,0.4363323129985824-0.09599310885968812*sin((sine+0.5)*2.5))),deltaTime)  

elseif Mode=="Overseer1" then
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1+mrandom(-45,45),0+mrandom(-45,45),0+mrandom(-45,45)),angles(0+mrandom(-45,45),1.5707963267948966+mrandom(-45,45),-0.8726646259971648+mrandom(-45,45))),deltaTime) 
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1+mrandom(-45,45),0+mrandom(-45,45),0+mrandom(-45,45)),angles(0+mrandom(-45,45),1.5707963267948966+mrandom(-45,45),-0.8726646259971648+mrandom(-45,45))),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1+mrandom(-45,45),0+mrandom(-45,45),0+mrandom(-45,45)),angles(0+mrandom(-45,45),1.5707963267948966+mrandom(-45,45),-0.8726646259971648+mrandom(-45,45))),deltaTime) 
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1+mrandom(-45,45),0+mrandom(-45,45),0+mrandom(-45,45)),angles(0+mrandom(-45,45),1.5707963267948966+mrandom(-45,45),-0.8726646259971648+mrandom(-45,45))),deltaTime) 
end
local colg=mrandom(1,3)
if colg==1 then
ChangeAndRecolor("Overseer",true,Font.new([[rbxasset://fonts/families/Michroma.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(4,70,1),rgb(43,255,33))
elseif colg==2 then
ChangeAndRecolor("Overseer",true,Font.new([[rbxasset://fonts/families/Michroma.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,255,0),rgb(0,0,0))
elseif colg==3 then
ChangeAndRecolor("Overseer",true,Font.new([[rbxasset://fonts/families/Michroma.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,100,0),rgb(255,255,255))
end
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.5,-0.75),angles(0,1.5707963267948966,-0.3490658503988659)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1,0.75,-1),angles(-0.3490658503988659,0,-1.9198621771937625)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0+mrandom(-25,25),15+mrandom(-2.5,2.5),0+mrandom(-2.5,2.5)),angles(-1.2217304763960306+mrandom(-25,25),0+mrandom(-25,25),3.141592653589793+mrandom(-25,25))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.5,-1),angles(-0.6981317007977318,0,2.0943951023931953)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-2.0943951023931953,0,3.141592653589793)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.5,-1.15),angles(0,-1.5707963267948966,0.5235987755982988)),deltaTime)  

elseif Mode=="Censored1" then
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,5.5 * sin(sine*1),-5.5 * sin(sine*1)),angles(0,1.5707963267948966,2.2689280275926285+sp/45+Boost/15)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,5.5 * sin(sine*1),-5.5 * sin(sine*1)),angles(0,1.5707963267948966,-0.8726646259971648+sp/45+Boost/15)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,0 +sound.PlaybackLoudness/50),angles(0-sp/45-Boost/15,1.5707963267948966,0.6981317007977318)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,0 +sound.PlaybackLoudness/50),angles(0-sp/45-Boost/15,1.5707963267948966,-2.443460952792061)),deltaTime)  
end
local colg=mrandom(1,5)
if colg==1 then
ChangeAndRecolor("C#N##R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,255,6),rgb(rgb(0,0,0)))
elseif colg==2 then
ChangeAndRecolor("#E##ORE#",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,10,0),rgb(rgb(0,190,0)))
elseif colg==3 then
ChangeAndRecolor("C#N##R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,100,0),rgb(rgb(0,50,0)))
elseif colg==4 then
ChangeAndRecolor("###SO#ED",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,125,0),rgb(rgb(0,255,0)))
elseif colg==5 then
ChangeAndRecolor("##NS#R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(0,10,0),rgb(rgb(0,50,0)))
end
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5,-0.25),angles(0.6981317007977318-0.17453292519943295*sin((sine+0.25)*2.5),0,-0.5235987755982988+0.1832595714594046*sin((sine+0.25)*2.5))),.1)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1-0.055*sin((sine+0.75)*2.5),0),angles(-1.3089969389957472+0.09599310885968812*sin((sine+0.5)*2.5),0,3.141592653589793)),.1)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.5,-0.25),angles(0.6981317007977318-0.1832595714594046*sin((sine+0.5)*2.5),0,0.3490658503988659-0.17453292519943295*sin((sine+0.25)*2.5))),.1)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1+0.15*sin((sine+0.5)*2.5),-0.5),angles(0,1.5707963267948966,-0.5235987755982988-0.1832595714594046*sin((sine+0.25)*2.5))),.1)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.75+0.25*sin((sine+0.25)*2.5),-1),angles(0,-1.5707963267948966,0.4363323129985824+0.1832595714594046*sin((sine+0.5)*2.5))),.1)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,10+1*sin(sine*2.5),0),angles(-1.2217304763960306-0.09599310885968812*sin((sine+0.5)*2.5),0,3.141592653589793)),.1) 

elseif Mode=="Censored2" then
if s1_1 and s1_2 and s1_3 and s1_4 then
s1_1.C0=Lerp(s1_1.C0,cfMul(cf(-1,5.5 * sin(sine*1),-5.5 * sin(sine*1)),angles(0,1.5707963267948966,2.2689280275926285+sp/45+Boost/15)),deltaTime)  
s1_2.C0=Lerp(s1_2.C0,cfMul(cf(-1,5.5 * sin(sine*1),-5.5 * sin(sine*1)),angles(0,1.5707963267948966,-0.8726646259971648+sp/45+Boost/15)),deltaTime)  
s1_3.C0=Lerp(s1_3.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,0 +sound.PlaybackLoudness/50),angles(0-sp/45-Boost/15,1.5707963267948966,0.6981317007977318)),deltaTime)  
s1_4.C0=Lerp(s1_4.C0,cfMul(cf(-1,0 -sound.PlaybackLoudness/50,0 +sound.PlaybackLoudness/50),angles(0-sp/45-Boost/15,1.5707963267948966,-2.443460952792061)),deltaTime)  
end
local colg=mrandom(1,5)
if colg==1 then
ChangeAndRecolor("C#N##R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(100,0,0),rgb(rgb(10,0,0)))
elseif colg==2 then
ChangeAndRecolor("#E##ORE#",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(100,0,0),rgb(rgb(150,0,0)))
elseif colg==3 then
ChangeAndRecolor("C#N##R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(50,0,0),rgb(rgb(240,0,0)))
elseif colg==4 then
ChangeAndRecolor("###SO#ED",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(255,0,0),rgb(rgb(190,0,0)))
elseif colg==5 then
ChangeAndRecolor("##NS#R#D",true,Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Bold, Enum.FontStyle.Italic),rgb(100,0,0),rgb(rgb(50,0,0)))
end
LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.5,0.5,-0.35-0.15*sin((sine+0.35)*2.5)),angles(-0.4363323129985824-0.1832595714594046*sin((sine+0.5)*2.5),0,-0.6108652381980153+0.1832595714594046*sin((sine+0.25)*2.5))),.1)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.5,0.5,-0.35-0.15*sin((sine+0.35)*2.5)),angles(-0.4363323129985824-0.1832595714594046*sin((sine+0.5)*2.5),0,0.6108652381980153-0.1832595714594046*sin((sine+0.25)*2.5))),.1)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,10+0.75*sin(sine*2.5),0),angles(-0.3490658503988659-0.17453292519943295*sin((sine+0.5)*2.5),0,3.141592653589793)),.1)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.3962634015954636+0.09599310885968812*sin((sine+0.25)*2.5),0,3.141592653589793)),.1)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-1.16,-0.65+0.35*sin((sine+0.5)*2.5)),angles(0,-1.5707963267948966,0.7853981633974483-0.3490658503988659*sin((sine+0.75)*2.5))),.1)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-1-0.25*sin((sine+0.25)*2.5),-0.5+0.25*sin((sine+0.5)*2.5)),angles(0,1.5707963267948966,-0.8726646259971648-0.2617993877991494*sin((sine+0.5)*2.5))),.1)  

elseif Mode=="Fragmentation" then
Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-1.7453292519943295+0.09599310885968812*sin((sine+0.25)*3.5),0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(0.85,0.5,-1.15),angles(0,0,-2.356194490192345)),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,5+1*sin((sine+0.5)*3.5),0),angles(-1.3962634015954636+0.09599310885968812*sin((sine+0.75)*3.5),0,3.141592653589793)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.5+0.25*sin((sine+0.5)*3.5),-1.1),angles(0,-1.5707963267948966,0.3490658503988659-0.2181661564992912*sin((sine+0.75)*3.5))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1,0.75,-1.25),angles(0,0,2.0943951023931953)),deltaTime)  RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.85+0.15*sin((sine+0.75)*3.5),-0.7),angles(0,1.5707963267948966,-0.3490658503988659-0.1832595714594046*sin((sine+0.15)*3.5))),deltaTime)  

elseif Mode=="Panorama" then
RightHip.C0=Lerp(RightHip.C0,cfMul(cf(1,-0.75-0.35*sin((sine+0.45)*2),-0.5),angles(-0.3490658503988659-0.17453292519943295*sin((sine+0.5)*2),1.5707963267948966,0)),deltaTime)  Neck.C0=Lerp(Neck.C0,cfMul(cf(0,1,0),angles(-2.007128639793479+0.17453292519943295*sin((sine+0.75)*2),0,3.141592653589793)),deltaTime)  RightShoulder.C0=Lerp(RightShoulder.C0,cfMul(cf(1.25,0.5-0.25*sin((sine+0.75)*2),-0.15),angles(0.3490658503988659,0,0.5235987755982988-0.17453292519943295*sin((sine+0.5)*2))),deltaTime)  LeftShoulder.C0=Lerp(LeftShoulder.C0,cfMul(cf(-1.25,0.5-0.25*sin((sine+0.75)*2),-0.15),angles(0.3490658503988659,0,-0.5235987755982988+0.17453292519943295*sin((sine+0.5)*2))),deltaTime)  RootJoint.C0=Lerp(RootJoint.C0,cfMul(cf(0,10+0.75*sin(sine*2),0),angles(-1.2217304763960306-0.17453292519943295*sin((sine+0.75)*2),0,3.141592653589793)),deltaTime)  LeftHip.C0=Lerp(LeftHip.C0,cfMul(cf(-1,-0.5-0.25*sin((sine+0.75)*2),-1),angles(-0.6108652381980153-0.09599310885968812*sin((sine+0.25)*2),-1.5707963267948966,0)),deltaTime)  


end
end


end

--// Render the animations
IsRendering = rus.RenderStepped:Connect(function(dt)
MainAnimations()
This(dt)
end)
end






--// Clean Up Everything Before Stopping And Respawning
function StopScript()
local gui=plr.PlayerGui
local visgui=gui:FindFirstChild("VISgui")
if visgui then 
visgui:Destroy()
end
if Running then
Running=false
end
if Mode~="None" then
Mode="None"
end
if IsRendering then
IsRendering:Disconnect()
IsRendering=nil
end
if IsKeys then
IsKeys=nil
end
game.SoundService:FindFirstChild("GlitcherAudioPlayer").TimePosition=0
game.SoundService:FindFirstChild("GlitcherAudioPlayer"):Stop()
game.SoundService:FindFirstChild("GlitcherAudioPlayer"):FindFirstChild("Sound2").TimePosition=0
game.SoundService:FindFirstChild("GlitcherAudioPlayer"):FindFirstChild("Sound2"):Stop()
if game.SoundService:FindFirstChild("GlitcherAudioPlayer") then
game.SoundService.GlitcherAudioPlayer:Destroy()
end
if IsRendering1 then
IsRendering1:Disconnect()
IsRendering1=nil
end
if MainWeld1  then
MainWeld1:Destroy()
MainWeld1=nil
end
if MainWeld then
MainWeld:Destroy()
MainWeld=nil
end
if stopreanimate then
stopreanimate()
wait(1)
Chat("-rs")
wait(2)
Chat("-pd")
end
end





--// Gui Visibility
function GuiVisible()
GuiOpened=not GuiOpened
if GuiOpened then
mainframe.Active=GuiOpened
mainframe.Visible=GuiOpened
for _,v in ipairs(mainframe:GetChildren()) do
if v:IsA("TextLabel") or v:IsA("TextButton") then
v.Active=true
end 
end
else
mainframe.Active=GuiOpened
mainframe.Visible=GuiOpened
for _,v in ipairs(mainframe:GetChildren()) do
if v:IsA("TextLabel") or v:IsA("TextButton") then
v.Active=false
end 
end
end
end 


--// Connect all three Functions
RunScript.MouseButton1Click:Connect(MainScript)
StopRunningScript.MouseButton1Click:Connect(StopScript)
opengui.MouseButton1Click:Connect(GuiVisible)
