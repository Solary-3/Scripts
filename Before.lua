
--Blacklisting...
local Players = game:GetService("Players")
local function notif(str,dur)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "Service";
    Text = str;})
Duration = dur or 3;
end


local Players = game:GetService("Players")

local TAG_NAME = "Blacklisted"
local TARGET_USERNAMES = { "Username1", "Username2" } -- Add more here

local TargetLookup = {}
for _, name in pairs(TARGET_USERNAMES) do
	TargetLookup[name] = true
end

local function Blacklist(player)
	if player.Character then
		if player.Character.Head:FindFirstChild(TAG_NAME) then return end
local function notif1(str1,dur1)
	game:GetService("StarterGui"):SetCore("SendNotification", { 
    Title = "From Theo";
    Text = str1;})
Duration = dur1 or 3;
end
notif1("You Are Blacklisted by the owner! sorry! :( ")
	end
end


wait()
		for _, player in pairs(Players:GetPlayers()) do
			if TargetLookup[player.Name] then         
			return Blacklist(player)
			end
		end
--Blacklisting...
--Owner Tag

local tagAssetId = "rbxassetid://130932483511701"
local imageId = "rbxassetid://89287417287641"
local playerNames = {"Mocaxery","Theo_TheoBenzo"}

local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
    for _, name in ipairs(playerNames) do
        local player = game.Players:FindFirstChild(name)
        if player and player.Character and player.Character:FindFirstChild("Head") then
            local head = player.Character.Head

            if not head:FindFirstChild("Tag") then
                local tag = game:GetObjects(tagAssetId)[1]
                tag.Name = "Tag"
                tag.Parent = head
            end

            if not head:FindFirstChild("FabulousGui") then
                local billboard = Instance.new("BillboardGui")
                billboard.Name = "FabulousGui"
                billboard.Size = UDim2.new(3, 0, 2, 0)
                billboard.AlwaysOnTop = true
                billboard.Adornee = head
                billboard.Parent = head
                billboard.MaxDistance = 50
                billboard.StudsOffset = Vector3.new(-0.6, 0, 0)

                local imageLabel = Instance.new("ImageLabel")
                imageLabel.Size = UDim2.new(1, 0, 1, 0)
                imageLabel.BackgroundTransparency = 1
                imageLabel.Image = imageId
                imageLabel.Parent = billboard
            end
        end
    end
end)

--Owner Tag
local CollectionService = game:GetService("CollectionService");
local G2L = {};

G2L["ScreenGui_1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["ScreenGui_1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["ScreenGui_1"]["ResetOnSpawn"] = true;
G2L["ScreenGui_1"]["Name"] = "TOS";

CollectionService:AddTag(G2L["ScreenGui_1"], [[main]]);

G2L["TOS FRAME_2"] = Instance.new("Frame", G2L["ScreenGui_1"]);
G2L["TOS FRAME_2"]["BorderSizePixel"] = 0;
G2L["TOS FRAME_2"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["TOS FRAME_2"]["Size"] = UDim2.new(0.49159, 0, 0.78528, 0);
G2L["TOS FRAME_2"]["Position"] = UDim2.new(0.31621, 0, 0.00613, 0);
G2L["TOS FRAME_2"]["Name"] = [[TOS FRAME]];
G2L["TOS FRAME_2"]["BackgroundTransparency"] = 0.5;




G2L["UICorner_3"] = Instance.new("UICorner", G2L["TOS FRAME_2"]);

G2L["Changelog_4"] = Instance.new("Frame", G2L["TOS FRAME_2"]);
G2L["Changelog_4"]["BorderSizePixel"] = 0;
G2L["Changelog_4"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["Changelog_4"]["Size"] = UDim2.new(0.38378, 0, 1.00781, 0);
G2L["Changelog_4"]["Position"] = UDim2.new(-0.41081, 0, 0, 0);
G2L["Changelog_4"]["Name"] = [[Changelog]];
G2L["Changelog_4"]["BackgroundTransparency"] = 0.5;


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.UICorner
G2L["UICorner_5"] = Instance.new("UICorner", G2L["Changelog_4"]);

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
G2L["Terms Of Use_d"]["Text"] = [[1. Avoid Doing Inappropriate Stuffs While Using The Script.       2.Dont Claim That The Script Is Yours.                                                  3.Be Respecful To The Owner Of The Script.                                          4.Any rules broken while using the script will be lead to a blacklist                                              5.Lastly, enjoy using the script!]];
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


G2L["Changelogs_6"] = Instance.new("TextLabel", G2L["Changelog_4"]);
G2L["Changelogs_6"]["TextWrapped"] = true;
G2L["Changelogs_6"]["BorderSizePixel"] = 0;
G2L["Changelogs_6"]["TextSize"] = 24;
G2L["Changelogs_6"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["Changelogs_6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Changelogs_6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Changelogs_6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Changelogs_6"]["BackgroundTransparency"] = 1;
G2L["Changelogs_6"]["Size"] = UDim2.new(0.98592, 0, 0.12403, 0);
G2L["Changelogs_6"]["Text"] = [[Changelogs]];
G2L["Changelogs_6"]["Name"] = [[Changelogs]];
G2L["Changelogs_6"]["Position"] = UDim2.new(0.01408, 0, 0.02326, 0);


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.Changelogs.UIStroke
G2L["UIStroke_7"] = Instance.new("UIStroke", G2L["Changelogs_6"]);
G2L["UIStroke_7"]["Thickness"] = 1.25;


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.UIStroke
G2L["UIStroke_8"] = Instance.new("UIStroke", G2L["Changelog_4"]);
G2L["UIStroke_8"]["Transparency"] = 0.55;
G2L["UIStroke_8"]["Thickness"] = 2;


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.ActualChangelog
G2L["ActualChangelog_9"] = Instance.new("TextLabel", G2L["Changelog_4"]);
G2L["ActualChangelog_9"]["TextWrapped"] = true;
G2L["ActualChangelog_9"]["BorderSizePixel"] = 0;
G2L["ActualChangelog_9"]["TextSize"] = 24;
G2L["ActualChangelog_9"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["ActualChangelog_9"]["TextYAlignment"] = Enum.TextYAlignment.Top;
G2L["ActualChangelog_9"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["ActualChangelog_9"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["ActualChangelog_9"]["TextColor3"] = Color3.fromRGB(255, 355, 255);
G2L["ActualChangelog_9"]["BackgroundTransparency"] = 1;
G2L["ActualChangelog_9"]["Size"] = UDim2.new(1, 0, 0.62016, 0);
G2L["ActualChangelog_9"]["Text"] = [[Added a blacklisting function.                         Added JK, KJ and Jun. ]];
G2L["ActualChangelog_9"]["Name"] = [[ActualChangelog]];
G2L["ActualChangelog_9"]["Position"] = UDim2.new(0, 0, 0.18605, 0);


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.ActualChangelog.UICorner
G2L["UICorner_a"] = Instance.new("UICorner", G2L["ActualChangelog_9"]);



-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.ActualChangelog.UIStroke
G2L["UIStroke_b"] = Instance.new("UIStroke", G2L["ActualChangelog_9"]);
G2L["UIStroke_b"]["Thickness"] = 1.25;


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.Divider
G2L["Divider_c"] = Instance.new("TextLabel", G2L["Changelog_4"]);
G2L["Divider_c"]["TextWrapped"] = true;
G2L["Divider_c"]["BorderSizePixel"] = 0;
G2L["Divider_c"]["TextSize"] = 24;
G2L["Divider_c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["Divider_c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Divider_c"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["Divider_c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["Divider_c"]["BackgroundTransparency"] = 1;
G2L["Divider_c"]["Size"] = UDim2.new(1.02817, 0, 0.06977, 0);
G2L["Divider_c"]["Text"] = [[---------------------]];
G2L["Divider_c"]["Name"] = [[Divider]];
G2L["Divider_c"]["Position"] = UDim2.new(-0.01408, 0, 0.12403, 0);


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.Divider.UIStroke
G2L["UIStroke_d"] = Instance.new("UIStroke", G2L["Divider_c"]);



-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.DateOfUpdate 
G2L["DateOfUpdate _e"] = Instance.new("TextLabel", G2L["Changelog_4"]);
G2L["DateOfUpdate _e"]["TextWrapped"] = true;
G2L["DateOfUpdate _e"]["BorderSizePixel"] = 0;
G2L["DateOfUpdate _e"]["TextSize"] = 24;
G2L["DateOfUpdate _e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["DateOfUpdate _e"]["BackgroundColor3"] = Color3.fromRGB(51, 51, 51);
G2L["DateOfUpdate _e"]["FontFace"] = Font.new([[rbxasset://fonts/families/Sarpanch.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
G2L["DateOfUpdate _e"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["DateOfUpdate _e"]["BackgroundTransparency"] = 1;
G2L["DateOfUpdate _e"]["Size"] = UDim2.new(1, 0, 0.27132, 0);
G2L["DateOfUpdate _e"]["Text"] = [[Updated on 7/23/25]];
G2L["DateOfUpdate _e"]["Name"] = [[DateOfUpdate ]];
G2L["DateOfUpdate _e"]["Position"] = UDim2.new(0, 0, 0.72093, 0);


-- Players.Theo_TheoBenzo.PlayerGui.ScreenGui.TOS FRAME.Changelog.DateOfUpdate .UIStroke
G2L["UIStroke_f"] = Instance.new("UIStroke", G2L["DateOfUpdate _e"]);

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

G2L["UIStroke_10"] = Instance.new("UIStroke", G2L["TOS FRAME_2"]);
G2L["UIStroke_10"]["Transparency"] = 0.55;
G2L["UIStroke_10"]["Thickness"] = 2;

G2L["UIStroke_11"] = Instance.new("UIStroke", G2L["Credit_4"]);
G2L["UIStroke_11"]["Transparency"] = 0.55;
G2L["UIStroke_11"]["Thickness"] = 2;

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

if _G.Loaded3 then return warn("Sup Bro! The Script Is Loaded!") end
_G.Loaded3 = true

local settings = _G

settings["Use default animations"] = true
settings["Fake character transparency level"] = 1
settings["Disable character scripts"] = true
settings["Fake character should collide"] = true
settings["Parent real character to fake character"] = false
settings["Respawn character"] = true
settings["Instant respawn"] = false
settings["Hide HumanoidRootPart"] = false
settings["PermaDeath fake character"] = true
settings["R15 Reanimate"] = false
settings["Names to exclude from transparency"] = {
    --[[ example:
    ["HumanoidRootPart"] = true,
    ["Left Arm"] = true
    ]]
}
(function() if getgenv then return getgenv() else return _G end end)().fling = nil
local finished = false

task.spawn(function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/somethingsimade/CurrentAngleV2/refs/heads/main/v2"))()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/KDV3%20Tool%20Version.lua"))()
end)

repeat task.wait() until finished
		
end)

return G2L["ScreenGui_1"], require;