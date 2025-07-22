
local function notif(str,dur)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Service";
    Text = str;})
Duration = dur or 3;
end

local CollectionService = game:GetService("CollectionService");
local G2L = {};

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["ScreenGui_1"]["ResetOnSpawn"] = true;


CollectionService:AddTag(G2L["ScreenGui_1"], [[main]]);

G2L["TOS FRAME_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["TOS FRAME_2"]["BorderSizePixel"] = 0;
G2L["TOS FRAME_2"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["TOS FRAME_2"]["Size"] = UDim2.new(0.49159, 0, 0.78528, 0);
G2L["TOS FRAME_2"]["Position"] = UDim2.new(0.23649, 0, 0, 0);
G2L["TOS FRAME_2"]["Name"] = [[TOS FRAME]];
G2L["TOS FRAME_2"]["BackgroundTransparency"] = 0.5;



G2L["UICorner_3"] = Instance.new("UICorner", G2L["TOS FRAME_2"]);



G2L["Credit_4"] = Instance.new("TextLabel", G2L["TOS FRAME_2"]);
G2L["Credit_4"]["BorderSizePixel"] = 0;
G2L["Credit_4"]["TextSize"] = 20;
G2L["Credit_4"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["Credit_4"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Credit_4"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Credit_4"]["BackgroundTransparency"] = 0.5;
G2L["Credit_4"]["Size"] = UDim2.new(0.31892, 0, 0.23438, 0);
G2L["Credit_4"]["Text"] = [[Made By Theo]];
G2L["Credit_4"]["Name"] = [[Credit]];
G2L["Credit_4"]["Position"] = UDim2.new(0, 0, 1.02, 0);


G2L["UICorner_5"] = Instance.new("UICorner", G2L["Credit_4"]);



G2L["UIStroke_6"] = Instance.new("UIStroke", G2L["Credit_4"]);



G2L["Terms Of Service_7"] = Instance.new("TextLabel", G2L["TOS FRAME_2"]);
G2L["Terms Of Service_7"]["BorderSizePixel"] = 0;
G2L["Terms Of Service_7"]["TextSize"] = 42;
G2L["Terms Of Service_7"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["Terms Of Service_7"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Terms Of Service_7"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Terms Of Service_7"]["BackgroundTransparency"] = 0.5;
G2L["Terms Of Service_7"]["Size"] = UDim2.new(0.45405, 0, 0.22656, 0);
G2L["Terms Of Service_7"]["Text"] = [[--- TOS ---]];
G2L["Terms Of Service_7"]["Name"] = [[Terms Of Service]];
G2L["Terms Of Service_7"]["Position"] = UDim2.new(0.02162, 0, 0.03906, 0);


G2L["UICorner_8"] = Instance.new("UICorner", G2L["Terms Of Service_7"]);



G2L["UIStroke_9"] = Instance.new("UIStroke", G2L["Terms Of Service_7"]);
G2L["UIStroke_9"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["UIStroke_9"]["Thickness"] = 1.25;


local Run = Instance.new("TextButton", G2L["TOS FRAME_2"]);
Run.BorderSizePixel= 0
Run.TextSize = 18
Run.TextColor3 = Color3.fromRGB(255, 255, 255)
Run.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Run.FontFace = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Run.BackgroundTransparency = 0.5
Run.Size = UDim2.new(0.18919, 0, 0.28906, 0)
Run.Text = [[Run Script]]
Run.Name = [[Run Script]]
Run.Position = UDim2.new(0.76757, 0, 0.05469, 0)


G2L["UICorner_b"] = Instance.new("UICorner", Run);



G2L["UIStroke_c"] = Instance.new("UIStroke", Run);
G2L["UIStroke_c"]["Thickness"] = 1.25;


G2L["Terms Of Use_d"] = Instance.new("TextLabel", G2L["TOS FRAME_2"]);
G2L["Terms Of Use_d"]["TextWrapped"] = true;
G2L["Terms Of Use_d"]["SizeConstraint"] = Enum.SizeConstraint.RelativeXX;
G2L["Terms Of Use_d"]["BorderSizePixel"] = 0;
G2L["Terms Of Use_d"]["TextSize"] = 14;
G2L["Terms Of Use_d"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["Terms Of Use_d"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["Terms Of Use_d"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["Terms Of Use_d"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["Terms Of Use_d"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Terms Of Use_d"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Terms Of Use_d"]["BackgroundTransparency"] = 0.95;
G2L["Terms Of Use_d"]["Size"] = UDim2.new(0.45405, 0, 0.403, 0);
G2L["Terms Of Use_d"]["Text"] = [[1. Avoid Doing Inappropriate Stuffs While Using The Script.       2.Dont Claim That The Script Is Yours.                                                  3.Be Respective To The Owner Of The Script.                                          4.Lastly, Enjoy Using The Script!]];
G2L["Terms Of Use_d"]["Name"] = [[Terms Of Use]];
G2L["Terms Of Use_d"]["Position"] = UDim2.new(0.02703, 0, 0.27344, 0);


G2L["UIStroke_e"] = Instance.new("UIStroke", G2L["Terms Of Use_d"]);
G2L["UIStroke_e"]["Thickness"] = 1.25;


G2L["UICorner_f"] = Instance.new("UICorner", G2L["Terms Of Use_d"]);



G2L["UIGradient_10"] = Instance.new("UIGradient", G2L["Terms Of Use_d"]);
G2L["UIGradient_10"]["Rotation"] = 80;


G2L["BeforeRunningScript_11"] = Instance.new("TextLabel", G2L["TOS FRAME_2"]);
G2L["BeforeRunningScript_11"]["TextWrapped"] = true;
G2L["BeforeRunningScript_11"]["BorderSizePixel"] = 0;
G2L["BeforeRunningScript_11"]["TextSize"] = 10;
G2L["BeforeRunningScript_11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["BeforeRunningScript_11"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["BeforeRunningScript_11"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["BeforeRunningScript_11"]["TextDirection"] = Enum.TextDirection.LeftToRight;
G2L["BeforeRunningScript_11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["BeforeRunningScript_11"]["BackgroundTransparency"] = 0.95;
G2L["BeforeRunningScript_11"]["Size"] = UDim2.new(0.45946, 0, 0.57813, 0);
G2L["BeforeRunningScript_11"]["Text"] = [[To avoid FPS Drop, the script MUST remove all of the accessory that are on you so you can experience less lag issues. If you wish to allow your hats to be reanimated, then click the "Allow Hats" button above.  Laggy...]];
G2L["BeforeRunningScript_11"]["Name"] = [[BeforeRunningScript]];
G2L["BeforeRunningScript_11"]["Position"] = UDim2.new(0.51351, 0, 0.39063, 0);


G2L["UICorner_12"] = Instance.new("UICorner", G2L["BeforeRunningScript_11"]);



G2L["UIStroke_13"] = Instance.new("UIStroke", G2L["BeforeRunningScript_11"]);
G2L["UIStroke_13"]["Thickness"] = 1.25;


local Hats = Instance.new("TextButton", G2L["TOS FRAME_2"]);
Hats.BorderSizePixel= 0
Hats.TextSize = 18
Hats.TextColor3 = Color3.fromRGB(255, 255, 255)
Hats.BackgroundColor3 = Color3.fromRGB(51, 51, 51)
Hats.FontFace = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal)
Hats.BackgroundTransparency = 0.5
Hats.Size = UDim2.new(0.18919, 0, 0.28906, 0)
Hats.Text = [[Allow Hats]]
Hats.Name = [[Allow Hats For Reanimate]]
Hats.Position = UDim2.new(0.55135, 0, 0.05469, 0)
Hats.TextWrapped = true
local HatsAllowed = false

G2L["UICorner_15"] = Instance.new("UICorner", Hats);



G2L["UIStroke_16"] = Instance.new("UIStroke",Hats);
G2L["UIStroke_16"]["Thickness"] = 1.25;
G2L["TOS FRAME_2"]["Draggable"] = true;




Hats.MouseButton1Click:Connect(function()
HatsAllowed = not HatsAllowed
if HatsAllowed then
Hats.Text = "Dont Allow Hats"
else
Hats.Text = "Allow Hats"
end
end)


local H = " ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------"
Run.MouseButton1Click:Connect(function()
if HatsAllowed == true then
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-ch"..tostring(H))
notif("Hats Removed!")
G2L["TOS FRAME_2"]:Destroy()
wait(2.250)
end
if HatsAllowed == false then
notif("Hats Isnt Removed.. Lag Issue!")
end
notif("Forcing To R6...")
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-r6"..tostring(H))
G2L["TOS FRAME_2"]:Destroy()
notif("Now Loading Krystal Tool Dance V3")
wait(1.150)

end)



return G2L["ScreenGui_1"], require; 
