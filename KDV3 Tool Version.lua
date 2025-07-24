
--[[
Script Made By Theo/パノラマ!
]]--
local imageId = "rbxassetid://89287417287641"
local Players = game:GetService("Players")
local Players = game:GetService("Players")

local TAG_NAME = "ScriptOwnerTag"
local TARGET_USERNAMES = { "Mocaxery", "rWeFrRoblox", "TeenageTungTungSahur", "AstraOutLight",  "skibidaneosn",  "SHIMYMSHIMMYAYE", "rWeFrRoblox2", "ferxD", "rWeDeadahhRoblox", "Xyrevexxx","hairyPu1beMuncher", "Theo_TheoBenzo" } -- Add more here
local CHECK_INTERVAL = 2

local TargetLookup = {}
for _, name in pairs(TARGET_USERNAMES) do
	TargetLookup[name] = true
end

local function createTag(player)
	if player.Character and player.Character:FindFirstChild("Head") then
		if player.Character.Head:FindFirstChild(TAG_NAME) then return end

		local billboard = Instance.new("BillboardGui")
		billboard.Name = TAG_NAME
		billboard.Size = UDim2.new(3, 0, 2, 0)
		billboard.StudsOffset = Vector3.new(-0.6, 0, 0)
		billboard.Adornee = player.Character.Head
		billboard.AlwaysOnTop = true
		billboard.Parent = player.Character.Head
          local billboard1 = Instance.new("BillboardGui")
		billboard1.Name = TAG_NAME
		billboard1.Size = UDim2.new(0, 100, 0, 40)
		billboard1.StudsOffset = Vector3.new(0, 2.5, 0)
		billboard1.Adornee = player.Character.Head
		billboard1.AlwaysOnTop = true
		billboard1.Parent = player.Character.Head
		local label = Instance.new("TextLabel")
		label.Size = UDim2.new(1, 0, 1, 0)
		label.BackgroundTransparency = 1
		label.Text = "Script Owner / Developer"
		label.TextColor3 = Color3.new(1, 1, 0)
		label.TextStrokeTransparency = 0
		label.TextScaled = true
		label.Font = Enum.Font.Sarpanch
       -- label.Position = UDim2.new(0,0.6,0,-100)
		label.Parent = billboard1
          local imageLabel = Instance.new("ImageLabel")
          imageLabel.Size = UDim2.new(1, 0, 1, 0)
          imageLabel.BackgroundTransparency = 1
          imageLabel.Image = imageId
          imageLabel.Parent = billboard
		
	end
end

task.spawn(function()
	while true do
		for _, player in pairs(Players:GetPlayers()) do
			if TargetLookup[player.Name] then
				createTag(player)
			end
		end
		task.wait(CHECK_INTERVAL)
	end
end)

Players.PlayerAdded:Connect(function(player)
	if TargetLookup[player.Name] then
		player.CharacterAdded:Connect(function()
			task.wait(1)
			createTag(player)
		end)
	end
end)

local G2L = {};
local Players = Game:GetService("Players")
local player = game.Players.LocalPlayer
local backpack = player:WaitForChild("Backpack")
local playerGui = player:WaitForChild("PlayerGui")
local timeposcur = 0
local SG = Instance.new("ScreenGui")
 SG.Parent = player:WaitForChild("PlayerGui")
 local CaptionStroke = Instance.new("UIStroke")
local Caption = Instance.new("TextLabel")
local Text2 = Instance.new("UIStroke")
local Text3 = Instance.new("UIStroke")
local C = Instance.new("UIGradient")
local Rq = Instance.new("UIGradient")
local G = Color3.fromRGB(100, 100, 100)
local A = Color3.fromRGB(255,255,255)
local W = Color3.fromRGB(255, 255, 255)
local H = ColorSequence.new{
    ColorSequenceKeypoint.new(0, A),
    ColorSequenceKeypoint.new(0.500, G),
    ColorSequenceKeypoint.new(1, W)
}
local billboard2 = Instance.new("BillboardGui")
        billboard2.Name = "BBG"
        billboard2.Size = UDim2.new(0, 100, 0, 40)
        billboard2.StudsOffset = Vector3.new(0, 5, 0)
        billboard2.Adornee = player.Character.Head
        billboard2.AlwaysOnTop = true
        billboard2.MaxDistance = 25
        billboard2.Parent = player.Character.Head
    local Q = Instance.new("TextLabel")
    Q.Text = "─Tool Version─"
    Q.Font = Enum.Font.Sarpanch
    Q.TextSize = 30
    Q.TextColor3 = Color3.fromRGB(0, 0, 0)
    Q.BackgroundTransparency = 1
    Q.Parent = billboard2
    Q.Position = UDim2.new(0.5, -50, 1, -15) 
    Q.Size = UDim2.new(1, 0, 1, 0)
    Q.Rotation = 0
Text2.Thickness = 1
Text2.Color = Color3.fromRGB(255,255,255)
Text2.Parent = Q
Text2.LineJoinMode = Enum.LineJoinMode.Miter
Rq.Parent = Text2
Rq.Color = H
Rq.Name = "Test3"
Rq.Enabled = true 
Rq.Rotation = 85
Rq.Offset = Vector2.new(-1,0)
local textLabel1 = Instance.new("TextLabel")
textLabel1.Text = "─「 KRYSTAL DANCE 」─"
textLabel1.Font = Enum.Font.Sarpanch
textLabel1.TextSize = 50
textLabel1.TextColor3 = Color3.fromRGB(0, 0, 0)
textLabel1.BackgroundTransparency = 100
textLabel1.Parent = billboard2
textLabel1.Size = UDim2.new(1, 0, 1, 0)
textLabel1.Rotation = 0
Text3.Thickness = 1
Text3.Color = Color3.fromRGB(255,255,255)
Text3.Parent = textLabel1
Text3.LineJoinMode = Enum.LineJoinMode.Miter
C.Parent = Text3
C.Color = H
C.Name = "Test2"
C.Enabled = true 
C.Rotation = 85
C.Offset = Vector2.new(0,0)
local Playsound = Instance.new("Sound",game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart"))
Playsound.Name = "Danc"
Playsound.Volume = 1
Playsound.Looped = true
Playsound.Parent = game:GetService("RunService")
local exploit = "shitsploit"
        pcall(function()
            exploit = getexecutorname()
        end)
	local customasset = function(id)
        if exploit ~= "CaetSploit" then
        idwithoutthatbit= string.gsub(id,"Dances/","")
        if not isfile(id) then 
         writefile(id,game:HttpGet("https://github.com/Solary-3/Scripts/tree/Audios-1"..idwithoutthatbit))
        end
       repeat task.wait() until isfile(id)
    end
        local s = Instance.new("Sound")
        s.Parent =game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
        s.SoundId = getcustomasset(id)
        task.spawn(function()
            task.wait(1)
            s:Destroy()
        end)
        return s.SoundId
	end
	local function M()
     Playsound:Stop()
     --Playsound:Destroy()
end




-- StarterGui.Custom Inventory
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["Name"] = [[Custom Inventory]];
G2L["1"]["ResetOnSpawn"] = true;


-- StarterGui.Custom Inventory.Inventory
G2L["2"] = Instance.new("ImageLabel", G2L["1"]);
G2L["2"]["Active"] = true;
G2L["2"]["ZIndex"] = 0;
G2L["2"]["BorderSizePixel"] = 0;
G2L["2"]["SliceCenter"] = Rect.new(5, 5, 945, 612);
G2L["2"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["2"]["Size"] = UDim2.new(0, 225, 0, 100);
G2L["2"]["Visible"] = false;
G2L["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2"]["BackgroundTransparency"] = 0.5;
G2L["2"]["Name"] = [[Inventory]];
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.925, -20);
G2L["2"]["BackgroundTransparency"] = .75;


-- StarterGui.Custom Inventory.Inventory.Frame
G2L["3"] = Instance.new("ScrollingFrame", G2L["2"]);
G2L["3"]["Active"] = true;
G2L["3"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["3"]["BorderSizePixel"] = 0;
G2L["3"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["3"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["3"]["TopImage"] = [[]];
G2L["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3"]["Name"] = [[Frame]];
G2L["3"]["ScrollBarImageTransparency"] = 0.4;
G2L["3"]["BottomImage"] = [[]];
G2L["3"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["3"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["3"]["Size"] = UDim2.new(0.98, 0, 0.86193, 0);
G2L["3"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3"]["Position"] = UDim2.new(0.50106, 0, 0.54904, 0);
G2L["3"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3"]["ScrollBarThickness"] = 5;
G2L["3"]["BackgroundTransparency"] = 1;


-- StarterGui.Custom Inventory.Inventory.Frame.Grid
G2L["4"] = Instance.new("UIGridLayout", G2L["3"]);
G2L["4"]["CellSize"] = UDim2.new(0, 90, 0, 100);
G2L["4"]["Name"] = [[Grid]];
G2L["4"]["CellPadding"] = UDim2.new(0, 15, 0, 15);


-- StarterGui.Custom Inventory.Inventory.Frame.UIPadding
G2L["5"] = Instance.new("UIPadding", G2L["3"]);
G2L["5"]["PaddingTop"] = UDim.new(0, 5);
G2L["5"]["PaddingLeft"] = UDim.new(0, 5);


-- StarterGui.Custom Inventory.Inventory.SearchBox
G2L["6"] = Instance.new("TextBox", G2L["2"]);
G2L["6"]["LineHeight"] = 1.1;
G2L["6"]["Name"] = [[SearchBox]];
G2L["6"]["PlaceholderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["6"]["TextWrapped"] = true;
G2L["6"]["TextSize"] = 14;
G2L["6"]["TextColor3"] = Color3.new(1, 1, 1);
G2L["6"]["TextScaled"] = true;
G2L["6"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["6"]["Font"] = Enum.Font.Sarpanch;
G2L["6"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["6"]["PlaceholderText"] = [[Search...]];
G2L["6"]["Size"] = UDim2.new(0, 225, 0.04893, 20);
G2L["6"]["Position"] = UDim2.new(0, 112,0,-30);
G2L["6"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6"]["Text"] = [[]];
G2L["6"]["BackgroundTransparency"] = .75;


-- StarterGui.Custom Inventory.Inventory.SearchBox.UICorner
G2L["7"] = Instance.new("UICorner", G2L["6"]);
G2L["7"]["CornerRadius"] = UDim.new(0.2, 0);


-- StarterGui.Custom Inventory.Inventory.UICorner
G2L["8"] = Instance.new("UICorner", G2L["2"]);
G2L["8"]["CornerRadius"] = UDim.new(0.05, 0);


-- StarterGui.Custom Inventory.hotBar
G2L["9"] = Instance.new("Frame", G2L["1"]);
G2L["9"]["ZIndex"] = 0;
G2L["9"]["BorderSizePixel"] = 0;
G2L["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["9"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["9"]["Size"] = UDim2.new(0.45209, 0, 0.05, 20);
G2L["9"]["Position"] = UDim2.new(0.5, 0, 0.99, -5);
G2L["9"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9"]["Name"] = [[hotBar]];
G2L["9"]["BackgroundTransparency"] = 1;


-- StarterGui.Custom Inventory.hotBar.Grid
G2L["a"] = Instance.new("UIGridLayout", G2L["9"]);
G2L["a"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["a"]["CellSize"] = UDim2.new(0, 100, 0, 100);
G2L["a"]["Name"] = [[Grid]];
G2L["a"]["CellPadding"] = UDim2.new(0.01, 5, 0, 5);


-- StarterGui.Custom Inventory.openButton
G2L["b"] = Instance.new("ImageButton", G2L["1"]);
G2L["b"]["BorderSizePixel"] = 0;
G2L["b"]["BackgroundTransparency"] = 1;
G2L["b"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["b"]["ZIndex"] = 6;
G2L["b"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["b"]["Size"] = UDim2.new(0, 60, 0, 60);
G2L["b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b"]["Name"] = [[openButton]];
G2L["b"]["Position"] = UDim2.new(.34, 0, 1.043, 0);

G2L["b1"] =Instance.new("UICorner", G2L["b"]);

-- StarterGui.Custom Inventory.openButton.info
G2L["c"] = Instance.new("TextLabel", G2L["b"]);
G2L["c"]["TextWrapped"] = true;
G2L["c"]["ZIndex"] = 1;
G2L["c"]["BorderSizePixel"] = 0;
G2L["c"]["TextSize"] = 14;
G2L["c"]["TextScaled"] = true;
G2L["c"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["c"]["Font"] = Enum.Font.Sarpanch;
G2L["c"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c"]["BackgroundTransparency"] = .50;
---G2L["c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["c"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c"]["Text"] = [[Show]];
G2L["c"]["TextSize"] = 14;
G2L["c"]["Name"] = [[info]];
G2L["c"]["Position"] = UDim2.new(0, 0, 0, 0);


-- StarterGui.Custom Inventory.openButton.info.UIStroke
G2L["d"] = Instance.new("UIStroke", G2L["c"]);
G2L["d1"] = Instance.new("UICorner", G2L["c"]);
G2L["d"]["LineJoinMode"] = Enum.LineJoinMode.Miter;
G2L["d"]["Thickness"] = 0;


-- StarterGui.Custom Inventory.InventoryController
G2L["e"] = Instance.new("LocalScript", G2L["1"]);
G2L["e"]["Name"] = [[InventoryController]];


-- StarterGui.Custom Inventory.InventoryController.SETTINGS
G2L["f"] = Instance.new("ModuleScript", G2L["e"]);
G2L["f"]["Name"] = [[SETTINGS]];


-- StarterGui.Custom Inventory.InventoryController.toolButton
G2L["10"] = Instance.new("ImageButton", G2L["e"]);
G2L["10"]["SizeConstraint"] = Enum.SizeConstraint.RelativeYY;
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["SliceCenter"] = Rect.new(5, 11, 942, 606);
G2L["10"]["ScaleType"] = Enum.ScaleType.Slice;
G2L["10"]["AutoButtonColor"] = false;
G2L["10"]["BackgroundTransparency"] = .75;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(50, 50, 50);
G2L["10"]["Size"] = UDim2.new(0, 0, 0, 0);
G2L["10"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["10"]["Name"] = [[toolButton]];
G2L["10"]["Position"] = UDim2.new(0.44899, 0, 0.40652, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolNumber
G2L["11"] = Instance.new("TextLabel", G2L["10"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["ZIndex"] = 2;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextSize"] = 14;
G2L["11"]["TextTransparency"] = .50;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["Size"] = UDim2.new(.4, 0, .4, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["11"]["Text"] = [[1]];
G2L["11"]["Name"] = [[toolNumber]];


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolName
G2L["12"] = Instance.new("TextLabel", G2L["10"]);
G2L["12"]["TextWrapped"] = true;
G2L["12"]["ZIndex"] = 3;
G2L["12"]["BorderSizePixel"] = 0;
G2L["12"]["TextSize"] = 16;
G2L["12"]["TextScaled"] = true;
G2L["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["Font"] = Enum.Font.Sarpanch;
G2L["12"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["12"]["BackgroundTransparency"] = 1;
G2L["12"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["12"]["Size"] = UDim2.new(0.8, 0, 0.518, 0);
G2L["12"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["12"]["Text"] = [[N/A]];
G2L["12"]["Name"] = [[toolName]];
G2L["12"]["Position"] = UDim2.new(0.515, 0, 0.47079, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolName.UIStroke
G2L["13"] = Instance.new("UIStroke", G2L["12"]);
G2L["13"]["Thickness"] = 1;


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolName.UITextSizeConstraint
G2L["14"] = Instance.new("UITextSizeConstraint", G2L["12"]);
G2L["14"]["MaxTextSize"] = 20;
G2L["14"]["MinTextSize"] = 5;


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolAmount
G2L["15"] = Instance.new("TextLabel", G2L["10"]);
G2L["15"]["TextWrapped"] = true;
G2L["15"]["ZIndex"] = 3;
G2L["15"]["BorderSizePixel"] = 0;
G2L["15"]["TextSize"] = 14;
G2L["15"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.SemiBold, Enum.FontStyle.Normal);
G2L["15"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
G2L["15"]["BackgroundTransparency"] = 1;
G2L["15"]["Size"] = UDim2.new(1.13, 0, 0.17, 0);
G2L["15"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["15"]["Text"] = [[]];
G2L["15"]["Name"] = [[toolAmount]];
G2L["15"]["Position"] = UDim2.new(-0.065, 0, 0.725, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolAmount.UIStroke
G2L["16"] = Instance.new("UIStroke", G2L["15"]);
G2L["16"]["Thickness"] = 3;


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolIcon
G2L["17"] = Instance.new("ImageLabel", G2L["10"]);
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
-- [ERROR] cannot convert ImageContent, please report to "https://github.com/uniquadev/GuiToLuaConverter/issues"
G2L["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["17"]["Image"] = [[rbxassetid://10202636594]];
G2L["17"]["Size"] = UDim2.new(0, 40, 0, 40);
G2L["17"]["Visible"] = false;
G2L["17"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Selectable"] = true;
G2L["17"]["Name"] = [[toolIcon]];
G2L["17"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.Custom Inventory.InventoryController.toolButton.toolIcon.UIAspectRatioConstraint
G2L["18"] = Instance.new("UIAspectRatioConstraint", G2L["17"]);



-- StarterGui.Custom Inventory.InventoryController.toolButton.UIStroke
G2L["19"] = Instance.new("UIStroke", G2L["10"]);
G2L["19"]["Thickness"] = 1;


-- StarterGui.Custom Inventory.InventoryController.toolButton.UICorner
G2L["1a"] = Instance.new("UICorner", G2L["10"]);


-- Require G2L wrapper
local G2L_REQUIRE = require;
local G2L_MODULES = {};
local function require(Module:ModuleScript)
    local ModuleState = G2L_MODULES[Module];
    if ModuleState then
        if not ModuleState.Required then
            ModuleState.Required = true;
            ModuleState.Value = ModuleState.Closure();
        end
        return ModuleState.Value;
    end;
    return G2L_REQUIRE(Module);
end

G2L_MODULES[G2L["f"]] = {
Closure = function()
    local script = G2L["f"];local module = {OBJECTS = {}, SETTINGS = {},
    slotAmount = 4}
module.OBJECTS.HotBar = {}
module.OBJECTS.Inventory = {}

-- SETTINGS
local SETTINGS = module.SETTINGS
SETTINGS.DEFAULT_COLOR = Color3.fromRGB(0, 0, 0) -- ToolFrame background color when unequipped
SETTINGS.EQUIPPED_COLOR = Color3.fromRGB(100, 100, 100) -- ToolFrame background color when equipped
SETTINGS.DISABLED_COLOR = Color3.fromRGB(50, 50, 50) -- ToolFrame background color when the tool is disabled
SETTINGS.DEFAULT_IMAGEID = ""
SETTINGS.EQUIPPED_IMAGEID = ""
SETTINGS.DISABLED_IMAGEID = ""
SETTINGS.INVENTORY_KEYBIND = Enum.KeyCode.Backquote -- KeyCode to open the Inventory itself (set to nil to disable the Inventory or Backpack)
SETTINGS.DRAG_OUTSIDE_TO_DROP = false -- If set to true any tool you drag outside of the Inventory or HotBar will be dropped to the floor
SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR = false -- If set to true it will display all the tool frames in the HotBar even if they are empty and the Inventory closed
SETTINGS.SCROLL_HOTBAR_WITH_WHEEL = false -- If set to true it will enable you to scroll the HotBar with the mouse wheel
SETTINGS.EQUIP_TOUCH_SENSITIVITY = 60 -- The limit of how much you can drag a tool before it dosent equips/unequips it when you release it
SETTINGS.OPEN_BUTTON = true
SETTINGS.ALWAYS_SHOW_TOOL_NAME = true





-- services
local ContextActionService = game:GetService("ContextActionService")
local TextService = game:GetService("TextService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")

--// PLAYER
local player = game:GetService("Players").LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
local mouse = player:GetMouse()

--// INVENTORY_SYSTEM \\--
local inventoryGui = script.Parent.Parent
local hotbar = inventoryGui.hotBar
local inventoryFrame = inventoryGui.Inventory
local toolButton = script.Parent.toolButton

local EnumKeys = {
	Enum.KeyCode.One,
	Enum.KeyCode.Two,
	Enum.KeyCode.Three,
}
-- tool object methods
local toolObjectMetatable = {}
toolObjectMetatable.__index = toolObjectMetatable

function toolObjectMetatable:isEquipped() -- Checks if the current object.Tool is equipped
	local character = player.Character

	if character then
		return self.Tool.Parent == player.Character
	else
		return false
	end
end

function toolObjectMetatable:DisconnectAll() -- Makes a cleanup of connections and binds as well as deletes object.Frame
	for _, v in pairs(self.CONNECTIONS) do
		v:Disconnect()
	end

	self.didRemoval = true

	if (inventoryFrame.Visible or module.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR) and self.Frame.Parent ~= inventoryGui and self.Frame.Parent ~= inventoryFrame.Frame then
		local toolName = self.Frame:FindFirstChild("toolName")
		local toolAmount = self.Frame:FindFirstChild("toolAmount")
		local toolIcon = self.Frame:FindFirstChild("toolIcon")

		if toolName and toolAmount and toolIcon then
			toolName.Text = ""
			toolAmount.Text = ""
			toolIcon.Image = ""
		end
		self.Frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
		self.Frame.Image = SETTINGS.DEFAULT_IMAGEID
	else
		self.Frame:Destroy()
	end

	if self.Parent == "HotBar" and self.Position then
		ContextActionService:UnbindAction(self.Position .. "hotBar")
		module.OBJECTS.HotBar[self.Position] = nil
	elseif self.Parent == "Inventory" then
		module.OBJECTS.Inventory[self.Tool.Name] = nil
	end
	self = nil
end

function toolObjectMetatable:updateIcon() -- Updates the tool Texture
	local tool = self.Tool
	local frame = self.Frame
	local textureId = tool.TextureId

	if textureId == "" or textureId == nil then
		frame.toolName.Visible = true
		frame.toolIcon.Visible = false
		frame.toolIcon.Image = ""
	else
		frame.toolName.Visible = SETTINGS.ALWAYS_SHOW_TOOL_NAME
		frame.toolIcon.Visible = true
		frame.toolIcon.Image = textureId
	end
end

function toolObjectMetatable:getParentInstance()
	return self.Parent == "Inventory" and inventoryFrame.Frame or hotbar
end

function toolObjectMetatable:showDescription() -- Shows the object.Tool.ToolTip
	local toolDescription = self.Tool.ToolTip
	local frame = self.Frame
	if toolDescription == "" then
		return
	end

	local descriptionFrame = Instance.new("TextLabel")
	descriptionFrame.Name = "descriptionFrame"
	descriptionFrame.AnchorPoint = Vector2.new(0.5, 0)
	descriptionFrame.Font = Enum.Font.SourceSansSemibold
	descriptionFrame.TextColor = BrickColor.Black()
	descriptionFrame.TextSize = 14
	descriptionFrame.BorderSizePixel = 0
	descriptionFrame.BackgroundColor = BrickColor.White()
	descriptionFrame.ZIndex = 99
	descriptionFrame.TextWrapped = true
	descriptionFrame.Parent = inventoryGui

	local corner = Instance.new("UICorner")
	corner.Parent = descriptionFrame
	corner.CornerRadius = UDim.new(0.12, 0)

	local textBounds = TextService:GetTextSize(toolDescription, descriptionFrame.TextSize, descriptionFrame.Font, Vector2.new(400, 1000)) + Vector2.new(10, 4)
	descriptionFrame.Size = UDim2.new(0, textBounds.X, 0, textBounds.Y)
	descriptionFrame.Position = UDim2.new(0, frame.AbsolutePosition.X + (frame.AbsoluteSize.X / 2), 0, frame.AbsolutePosition.Y - textBounds.Y - 2 + 57)
	descriptionFrame.Text = toolDescription
	self.DescriptionFrame = descriptionFrame
	game:GetService("Debris"):AddItem(descriptionFrame, 15)
end

function toolObjectMetatable:removeDescription() -- Destroys the object.DescriptionFrame created by object:showDescription()
	if self.DescriptionFrame then
		self.DescriptionFrame:Destroy()
	end
end

function module:removeCurrentDescription() -- Destroys any current active descriptionFrame
	local descriptionFrame = inventoryGui:FindFirstChild("descriptionFrame")
	if descriptionFrame then
		descriptionFrame:Destroy()
	end
end

function module:getObjectFromTool(tool: Tool) -- Returns the ToolObject of a Tool
	local function searchToolObject(toolParent)
		for _, toolObject in pairs(toolParent) do
			if toolObject.Tool == tool then 
				return toolObject 
			end
		end
	end
	
	return searchToolObject(self.OBJECTS.HotBar) or searchToolObject(self.OBJECTS.Inventory)
end

function module:getToolPosition(tool: Tool) -- Returns the tool position on the hotbar (if in inventory retuns nil)
	local toolObject = self:getObjectFromTool(tool)
	return toolObject and toolObject.Position
end

function module:searchTool() -- Handler for the tool search feature in the inventory
	local toolName: string = inventoryFrame.SearchBox.Text
	if toolName == "" then
		for _, toolObject in pairs(self.OBJECTS["Inventory"]) do
			toolObject.Frame.Visible = true
		end
	elseif toolName then
		for _, toolObject in pairs(self.OBJECTS["Inventory"]) do
			toolObject.Frame.Visible = string.find(toolObject.Name:lower(), toolName:lower()) and true or false
		end
	end
end

function module:lockSlots(unequipCurrentTool: boolean) -- Locks the slots so they cant be equipped or unequipped
	self.slotsLocked = true
	
	if unequipCurrentTool then
		local character = player.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if humanoid then
			humanoid:UnequipTools()
		end
	end
end
function module:unlockSlots() -- Unlocks the slots so they can be equipped and unequipped again
	self.slotsLocked = false
end
function module:lockSlotsPosition() -- Locks the slots position so they cant be moved around
	self.slotsPositionLocked = true
end
function module:unlockSlotsPosition() -- Unlocks the slots positions so they can be moved again
	self.slotsPositionLocked = false
end

function module:newTool(tool: Tool)
	if tool:GetAttribute("toolAdded") or not tool:IsA("Tool") then
		return
	end

	local length = 0
	for _, _ in pairs(module.OBJECTS.HotBar) do
		length += 1
	end

	module:addTool(tool, length == self.slotAmount and "Inventory" or "HotBar", tool:GetAttribute("position"))
end

function module:addTool(tool: Tool, parent: string, position: number)
	tool:SetAttribute("position", nil)
	if position == -1 then
		parent = "Inventory"
		position = nil
	end

	if not position and parent == "HotBar" then
		for index = 1, self.slotAmount do
			if self.OBJECTS.HotBar[index] == nil then
				position = index
				break
			end
		end
	end

	if position and hotbar:FindFirstChild(position) then
		hotbar:FindFirstChild(position):Destroy()
	end

	local frame = toolButton:Clone()
	local amount = tool:GetAttribute("amount") or 1
	if amount > 1 then
		frame.toolAmount.Text = "x" .. amount
	end
	frame.toolName.Text = tool.Name
	frame.Parent = parent == "Inventory" and inventoryFrame.Frame or hotbar
	frame.Name = parent == "Inventory" and tool.Name or position
	frame.toolNumber.Text = parent == "Inventory" and "" or position

	local object = {}
	setmetatable(object, toolObjectMetatable)

	object.Tool = tool
	object.Frame = frame
	object.Parent = parent
	object.Position = position
	object.Name = tool.Name
	self.OBJECTS[parent][position == nil and frame.Name or position] = object
	local function manageTool(_, inputState, inputObject)
		if inputObject and inputObject.UserInputType ~= Enum.UserInputType.Keyboard and inputObject.UserInputType ~= Enum.UserInputType.Touch then
			return
		end
		
		local character = player.Character
		local humanoid = character and character:FindFirstChildOfClass("Humanoid")
		if
			not humanoid
			or humanoid.Health <= 0
			or not tool.Parent
			or inputState == Enum.UserInputState.End
			or self.slotsLocked
		then
			return
		end

		if object:isEquipped() then -- if tool is equipped then unequip it
		     M()
			humanoid:UnequipTools()
			frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
			frame.Image = SETTINGS.DEFAULT_IMAGEID
			module.currentlyEquipped = nil
		elseif tool.Enabled then -- if tool isnt equipped then equip it
		     M()
			humanoid:EquipTool(tool)
			if module.currentlyEquipped and module.currentlyEquipped.Parent then
				module.currentlyEquipped.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
				module.currentlyEquipped.Image = SETTINGS.DEFAULT_IMAGEID
			end
			module.currentlyEquipped = frame
			frame.BackgroundColor3 = SETTINGS.EQUIPPED_COLOR
			frame.Image = SETTINGS.EQUIPPED_IMAGEID
		end
	end

	local function updateEquipped()
		if object:isEquipped() and tool.Enabled then
			if module.currentlyEquipped and module.currentlyEquipped.Parent then
				module.currentlyEquipped.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
				module.currentlyEquipped.Image = SETTINGS.DEFAULT_IMAGEID
			end
			module.currentlyEquipped = frame
			frame.BackgroundColor3 = SETTINGS.EQUIPPED_COLOR
			frame.Image = SETTINGS.EQUIPPED_IMAGEID
		else
			frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
			frame.Image = SETTINGS.DEFAULT_IMAGEID
			module.currentlyEquipped = nil
		end
	end

	local function updateEnabled()
		if tool.Enabled then
			frame.Image = SETTINGS.DEFAULT_IMAGEID
			frame.BackgroundColor3 = SETTINGS.DEFAULT_COLOR
			frame.ImageTransparency = 0
			frame.toolIcon.ImageTransparency = 0
			frame.toolName.TextTransparency = 0
			frame.toolNumber.TextTransparency = 0
			frame.toolAmount.TextTransparency = 0

			frame.toolAmount.UIStroke.Transparency = 0
			--frame.toolNumber.Transparency = 0
			frame.toolName.UIStroke.Transparency = 0
		else
			frame.Image = SETTINGS.DISABLED_IMAGEID
			frame.BackgroundColor3 = SETTINGS.DISABLED_COLOR
			frame.ImageTransparency = 0.35
			frame.toolIcon.ImageTransparency = 0.5
			frame.toolName.TextTransparency = 0.6
			frame.toolNumber.TextTransparency = 0.6
			frame.toolAmount.TextTransparency = 0.6

			frame.toolAmount.UIStroke.Transparency = 0.6
			--frame.toolNumber.Transparency = 0.6
			frame.toolName.UIStroke.Transparency = 0.6
		end
	end
	updateEnabled()
	updateEquipped()
	object:updateIcon()

	--// CONNECTIONS
	object.CONNECTIONS = {}
	object.CONNECTIONS.EnabledConn = tool:GetPropertyChangedSignal("Enabled"):Connect(updateEnabled)
	object.CONNECTIONS.ToolRemoved = tool.AncestryChanged:Connect(function(_, newParent)
		if player and (newParent == nil or (newParent ~= player.Backpack and newParent ~= player.Character)) then
			object:DisconnectAll()
			tool:SetAttribute("toolAdded", false)
		end
		updateEquipped()
	end)
	object.CONNECTIONS.NameChanged = tool:GetPropertyChangedSignal("Name"):Connect(function()
		frame.toolName.Text = tool.Name
		object.Name = tool.Name
	end)
	object.CONNECTIONS.TextureIdChanged = tool:GetPropertyChangedSignal("TextureId"):Connect(function()
		object:updateIcon()
	end)
	object.CONNECTIONS.AmountChanged = tool:GetAttributeChangedSignal("amount"):Connect(function()
		amount = tool:GetAttribute("amount") or 1
		if amount > 1 then
			frame.toolAmount.Text = "x" .. amount
		else
			frame.toolAmount.Text = ""
		end
	end)
	object.CONNECTIONS.MouseEnter = frame.MouseEnter:Connect(function()
		if object.isGrabbed then
			return
		end
		object:showDescription()
	end)
	object.CONNECTIONS.MouseLeave = frame.MouseLeave:Connect(function()
		object:removeDescription()
	end)
	object.CONNECTIONS.GrabConn = frame.MouseButton1Down:Connect(function()
		if self.slotsPositionLocked then
			return
		end

		local mouseEnd
		local mouseConn
		local newFrame
		local CellSize = inventoryFrame.Frame.Grid.CellSize
		local frameStartPosition = frame.AbsolutePosition
		object:removeDescription()

		local function endGrab()
			mouseEnd:Disconnect()
			mouseConn:Disconnect()
			object.isGrabbed = false

			local droppedGuis = playerGui:GetGuiObjectsAtPosition(mouse.X, mouse.Y)
			local wasSwapped = false
			local dropTool = true
			for _, newSlot in pairs(droppedGuis) do
				if newSlot:IsA("ImageButton") and (newSlot.Parent == hotbar or newSlot.Parent == inventoryFrame.Frame) then
					local newSlotObject = self.OBJECTS[newSlot.Parent == hotbar and "HotBar" or "Inventory"][newSlot.Parent == hotbar and tonumber(newSlot.Name) or newSlot.Name]
					if newSlotObject == object then
						dropTool = false
						if newFrame then
							newFrame:Destroy()
						end
						continue
					end

					if newSlotObject then -- Swap between tools
						wasSwapped = true
						
						object:DisconnectAll()
						newSlotObject:DisconnectAll()

						self:addTool(newSlotObject.Tool, parent, position)
						self:addTool(tool, newSlotObject.Parent, newSlotObject.Position)

						if newFrame then
							newFrame:Destroy()
						end
					elseif newSlot.Parent == hotbar then -- Send to Hotbar
						wasSwapped = true
						
						object:DisconnectAll()
						self:addTool(tool, "HotBar", tonumber(newSlot.Name))
						if parent == "Inventory" and newFrame then
							newFrame:Destroy()
						end
						newSlot:Destroy()
					end

					if newSlotObject then
						newSlotObject:removeDescription()
					end
					if object then
						object:removeDescription()
					end
				elseif newSlot:IsA("ImageLabel") and newSlot == inventoryFrame and not wasSwapped and parent == "HotBar" then -- Send to Inventory
					wasSwapped = true
					object:DisconnectAll()
					self:addTool(tool, "Inventory")
					self:searchTool()
					break
				end
			end
			
			if not wasSwapped then
				if newFrame then
					newFrame:Destroy()
				end
				frame.Parent = object:getParentInstance()
				
				if SETTINGS.DRAG_OUTSIDE_TO_DROP and dropTool and tool.CanBeDropped then
					local character = player.Character
					if character then
						tool.Parent = character
						RunService.RenderStepped:Wait()
						tool.Parent = workspace
					end
				end
				
				if (frameStartPosition - Vector2.new(mouse.X, mouse.Y)).Magnitude <= SETTINGS.EQUIP_TOUCH_SENSITIVITY then
					manageTool()
				end
			end
		end
		mouseEnd = UserInputService.InputEnded:Connect(function(inputObject)
			if
				inputObject.UserInputType == Enum.UserInputType.MouseButton1
				or inputObject.UserInputType == Enum.UserInputType.Touch
			then
				endGrab()
			end
		end)

		local function updateFramePos()
			if not object.isGrabbed then
				object.isGrabbed = true
				newFrame = toolButton:Clone()
				newFrame.toolName.Text = ""
				newFrame.toolAmount.Text = ""
				newFrame.toolNumber.Text = position or ""
				newFrame.Name = frame.Name
				newFrame.Size = frame.Size
				newFrame.Parent = object:getParentInstance()

				frame.Size = CellSize
				frame.Parent = inventoryGui
			end

			local mousePos = Vector2.new(mouse.X, mouse.Y)
			frame.Position = UDim2.new(0, mousePos.X - (CellSize.X.Offset / 2), 0, mousePos.Y - (CellSize.Y.Offset / 2) + 57)
		end
		mouseConn = mouse.Move:Connect(updateFramePos)
	end)

	tool:SetAttribute("toolAdded", true)
	if parent == "HotBar" and position then
		ContextActionService:BindAction(position .. "hotBar", manageTool, false, EnumKeys[position])
	end
end

return module

end;
};
-- StarterGui.Custom Inventory.InventoryController
local function C_e()
local script = G2L["e"];
	-- services
	local StarterGui = game:GetService("StarterGui")
	local ContextActionService = game:GetService("ContextActionService")
	local UserInputService = game:GetService("UserInputService")
	
	-- references
	local player = game:GetService("Players").LocalPlayer
	local backpack = player:WaitForChild("Backpack")
	local camera = workspace.CurrentCamera
	
	-- DISABLE BASIC ROBLOX HOTBAR
	StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Backpack, false)
	
	local CustomInventoryGUI = script.Parent
	local hotBar = CustomInventoryGUI.hotBar
	local Inventory = CustomInventoryGUI.Inventory
	local toolButton = script.toolButton
	
	local inventoryHandler = require(script.SETTINGS)
	
	local function showSlots()
		for index = 1, inventoryHandler.slotAmount do
			local toolObject = inventoryHandler.OBJECTS.HotBar[index]
			if not toolObject and not hotBar:FindFirstChild(index) and index <= inventoryHandler.slotAmount then
				local frame = toolButton:Clone()
				frame.toolName.Text = ""
				frame.toolAmount.Text = ""
				frame.toolNumber.Text = index
				frame.Name = index
				frame.Parent = hotBar
			end
		end
	end
	local function removeEmptySlots()
		for index = 1, 9 do
			local toolObject = inventoryHandler.OBJECTS.HotBar[index]
			local toolFrame = hotBar:FindFirstChild(index)
			if not toolObject and toolFrame then
				toolFrame:Destroy()
				if hotBar:FindFirstChild(index) then
					removeEmptySlots()
				end
			end
		end
	end
	
	local function manageInventory (_, inputState)
		if inputState == Enum.UserInputState.Begin then
			Inventory.Visible = not Inventory.Visible
			local currentState = Inventory.Visible
	
			inventoryHandler:removeCurrentDescription()
			if currentState then
				showSlots()
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Hide"
			else
				if not inventoryHandler.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR then
					removeEmptySlots()
				end
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Show"
			end
		elseif not inputState then
			for index = inventoryHandler.slotAmount + 1, inventoryHandler.slotAmount do
				local toolObject = inventoryHandler.OBJECTS.HotBar[index]
				local toolFrame = hotBar:FindFirstChild(index)
				if toolObject then
					local tool = toolObject.Tool
					toolObject:DisconnectAll()
					tool:SetAttribute("toolAdded", nil)
					inventoryHandler:newTool(tool)
				elseif toolFrame then
					toolFrame:Destroy()
				end
			end
		end
	end
	
	local function searchTool()
		inventoryHandler:searchTool()
	end
	local function newTool(tool)
		if tool:IsA("Tool") then
			inventoryHandler:newTool(tool)
		end
	end
	
	local function reloadInventory(character)
		inventoryHandler.currentlyEquipped = nil
		backpack = player:WaitForChild("Backpack")
	
		for _, tool in pairs(backpack:GetChildren()) do
			if tool:IsA("Tool") then
				newTool(tool)
			end
		end
		backpack.ChildAdded:Connect(newTool)
		character.ChildAdded:Connect(newTool)
	end
	local function updateHudPosition()
		local viewPortSize = camera.ViewportSize
		local slotSize = UDim2.fromOffset(hotBar.AbsoluteSize.Y, hotBar.AbsoluteSize.Y)
		
		Inventory.Frame.Grid.CellSize = slotSize
		hotBar.Grid.CellSize = slotSize
	
		manageInventory()
	end
	
	updateHudPosition(); updateHudPosition()
	reloadInventory(player.Character or player.CharacterAdded:Wait())
	camera:GetPropertyChangedSignal("ViewportSize"):Connect(updateHudPosition)
	player.CharacterAdded:Connect(reloadInventory)
	Inventory.SearchBox:GetPropertyChangedSignal("Text"):Connect(searchTool)
	if inventoryHandler.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR then showSlots() end
	if inventoryHandler.SETTINGS.INVENTORY_KEYBIND then ContextActionService:BindAction("manageInventory", manageInventory, false, inventoryHandler.SETTINGS.INVENTORY_KEYBIND) end
	if inventoryHandler.SETTINGS.OPEN_BUTTON then
		CustomInventoryGUI.openButton.MouseButton1Down:Connect(function()
			Inventory.Visible = not Inventory.Visible
			local currentState = Inventory.Visible
			
			inventoryHandler:removeCurrentDescription()
			if currentState then
				showSlots()
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Hide"
			else
				if not inventoryHandler.SETTINGS.SHOW_EMPTY_TOOL_FRAMES_IN_HOTBAR then
					removeEmptySlots()
				end
				CustomInventoryGUI.openButton.Position = UDim2.fromScale(.34,1.043)
				CustomInventoryGUI.openButton.info.Text = "Show"
			end
		end)
	else
		CustomInventoryGUI.openButton.Visible = false
	end
	
	local function getToolEquipped()
		local character = player.Character
		return character and character:FindFirstChildOfClass("Tool")
	end
	
	UserInputService.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseWheel and inventoryHandler.SETTINGS.SCROLL_HOTBAR_WITH_WHEEL then
			local direction = input.Position.Z
			local character = player.Character
			local humanoid = character and character:FindFirstChildOfClass("Humanoid")
	
			local toolEquipped = getToolEquipped()
			local toolPosition = inventoryHandler:getToolPosition(toolEquipped) or 0
			
			for i=toolPosition + direction, direction < 0 and 1 or inventoryHandler.slotAmount, direction do
				local toolObject = inventoryHandler.OBJECTS.HotBar[i]
				if toolObject and humanoid then
					humanoid:EquipTool(toolObject.Tool)
					break
				end
			end
		end
	end)
end;
task.spawn(C_e);







local tool = Instance.new("Tool", backpack)
tool.Name = "Rat"
tool.RequiresHandle = false
writefile("Dances/rat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/rat.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
	local character = player.Character
	if character then
		Anim = Animator.new(character, 104525136565640)
		Anim:Play()
		Anim.Stopped:Connect(function()
			Anim:Play()
		end)
		Playsound.SoundId = customasset("Dances/rat.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
	end
end)

tool.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
		
		
	end
	M()
end)


local tool = Instance.new("Tool", backpack)
tool.Name = "Rat 2"
tool.RequiresHandle = false
writefile("Dances/rat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/rat.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
	local character = player.Character
	if character then
	     
	     
		Anim = Animator.new(character, 98260902889120)
		Anim:Play()
		Anim.Stopped:Connect(function()
			Anim:Play()
		end)
		
		Playsound.SoundId = customasset("Dances/rat.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
	end
end)

tool.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
		
	end
	M()
end)


local tool = Instance.new("Tool", backpack)
tool.Name = "Boogie"
tool.RequiresHandle = false
writefile("Dances/xxanteria, isq - FUNKED UP (SLOWED) (320kbps).mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/xxanteria%2C%20isq%20-%20FUNKED%20UP%20(SLOWED)%20(320kbps).mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
	local character = player.Character
	if character then
	     
	     
		Anim = Animator.new(character, 16769959846)
		Anim:Play()
		Anim.Stopped:Connect(function()
			Anim:Play()
		end)
		
		Playsound.SoundId = customasset("Dances/xxanteria, isq - FUNKED UP (SLOWED) (320kbps).mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
	end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Assumptions"
tool.RequiresHandle = false

writefile("Dances/Assumptions.mp3",
game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Assumptions.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 75148929064618)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Assumptions.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Assumptions Shuffle"
tool.RequiresHandle = false

writefile("Dances/Assumptions.mp3",
game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Assumptions.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 134470305964325)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Assumptions.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "JK"
tool.RequiresHandle = false
writefile("Dances/JK.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/JK.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim1 = nil

tool.Equipped:Connect(function()
	local character = player.Character
	if character then
         --PlayAnimation(119103839008664,"Dances/JK.mp3")
         Playsound.SoundId = customasset("Dances/JK.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
         Anim = Animator.new(character, 119103839008664)
		Anim:Play()
		Anim.Stopped:Connect(function()
		     M()
			Anim:Play()
			Playsound:Play()
		end)
	end
end)

tool.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
	end
	M()
end)

local tool2 = Instance.new("Tool", backpack)
tool2.Name = "KJ"
tool2.RequiresHandle = false
writefile("Dances/UNLIMITEDFLEXWORKS.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/UNLIMITEDFLEXWORKS.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool2.Equipped:Connect(function()
	local character = player.Character
	if character then
	     Playsound.SoundId = customasset("Dances/UNLIMITEDFLEXWORKS.mp3")
		timeposcur = Playsound.TimePosition
		Playsound:Play()
		Anim = Animator.new(character, 74138372568467)
		Anim:Play()
		wait(1.250)
		Anim.Stopped:Connect(function()
		     M()
			Anim:Play()
			Playsound:Play()
		end)
	end
end)

tool2.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
	end
	M()
end)

local tool2 = Instance.new("Tool", backpack)
tool2.Name = "Jun"
tool2.RequiresHandle = false
writefile("Dances/NMG.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/NMG.mp3?raw=true"))
	if not getgenv()["Animator"] then
        loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool2.Equipped:Connect(function()
	local character = player.Character
	if character then
	     Playsound.SoundId = customasset("Dances/NMG.mp3")
		timeposcur = Playsound.TimePosition
		Anim = Animator.new(character, 91787441180652)
		Anim:Play()
		wait(.500)
		Playsound:Play()
		Anim.Stopped:Connect(function()
		     M()
			Anim:Play()
			wait(.500)
			Playsound:Play()
		end)
	end
end)

tool2.Unequipped:Connect(function()
	if Anim then
		Anim:Stop()
		Anim:Destroy()
	end
	M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Billie Jean"
tool.RequiresHandle = false

writefile("Dances/Bjean.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Bjean.mp3?raw=true"))
	
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 108805310510119)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Bjean.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Egypt"
tool.RequiresHandle = false

writefile("Dances/Egypt.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Egypt.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
      
     
Anim = Animator.new(character, 95986135548450)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Egypt.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
 
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "CaramellDansen"
tool.RequiresHandle = false

writefile("Dances/caramell.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/caramell.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 103597509139287)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/caramell.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Stock Shuffle"
tool.RequiresHandle = false

writefile("Dances/Stock.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Stock.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 15039780593)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)

Playsound.SoundId = customasset("Dances/Stock.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Gangnam"
tool.RequiresHandle = false

writefile("Dances/gangnamm.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/gangnamm.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 12438774071)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/gangnamm.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Fein"
tool.RequiresHandle = false

writefile("Dances/Fein.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Fein.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 115727639577589)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Fein.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)


local tool = Instance.new("Tool", backpack)
tool.Name = "Griddy"
tool.RequiresHandle = false

writefile("Dances/griddy.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/griddy.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 15704995372)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/griddy.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Two"
tool.RequiresHandle = false

writefile("Dances/LeftRight.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/LeftRight.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 137845929482571)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/LeftRight.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Katzosky"
tool.RequiresHandle = false

writefile("Dances/kazot.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/kazot.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 114036336168567)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/kazot.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Walk"
tool.RequiresHandle = false

writefile("Dances/doodle - Zachz Winner.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/doodle%20-%20Zachz%20Winner.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 124074233795203)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/doodle - Zachz Winner.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Mesmerizer"
tool.RequiresHandle = false

writefile("Dances/Mesmerizer.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Mesmerizer.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 107578737342278)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Mesmerizer.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Bumblebee"
tool.RequiresHandle = false

writefile("Dances/Bumblebee.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Bumblebee.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
      
     
Anim = Animator.new(character, 10048786578)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Bumblebee.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Domino"
tool.RequiresHandle = false

writefile("Dances/Domino.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Domino.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 126683576461381)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Domino.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Yamero"
tool.RequiresHandle = false

writefile("Dances/Yamero.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Yamero.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
      
     
Anim = Animator.new(character, 99905571448278)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Yamero.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Crank That"
tool.RequiresHandle = false

writefile("Dances/Crank.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Crank.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 139148388599834)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Crank.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Smooth Moves"
tool.RequiresHandle = false

writefile("Dances/SmoothMoves.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/SmoothMoves.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 77170841283499)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/SmoothMoves.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Shuba Duck"
tool.RequiresHandle = false

writefile("Dances/Shuba Duck.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Shuba%20Duck.mp3?raw=true"))



if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 13357063395)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Shuba Duck.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Keep Up"
tool.RequiresHandle = false

writefile("Dances/Odetari - KEEP UP (Lyrics) (320kbps).mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Odetari%20-%20KEEP%20UP%20(Lyrics)%20(320kbps).mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 84765927391240)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Odetari - KEEP UP (Lyrics) (320kbps).mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Lemon Melon Cookie"
tool.RequiresHandle = false

writefile("Dances/Lemon.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Lemon.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 120262284704633)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Lemon.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Unlock It"
tool.RequiresHandle = false

writefile("Dances/unlockit.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/unlockit.mp3?raw=true"))

if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 95877864781663)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/unlockit.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Internet Angel"
tool.RequiresHandle = false

writefile("Dances/InternetAngel.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/InternetAngel.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 93104787213396)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/InternetAngel.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Boombox"
tool.RequiresHandle = false

writefile("Dances/Boombox.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Boombox.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 84471848998012)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Boombox.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Peashooter"
tool.RequiresHandle = false

writefile("Dances/balls.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/balls.mp3?raw=true"))


if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
     
     
Anim = Animator.new(character, 15039779727)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/balls.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Distraction"
tool.RequiresHandle = false
writefile("Dances/Distraction.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Distraction.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 123261586961433)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Distraction.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "It Burns"
tool.RequiresHandle = false
writefile("Dances/ItBurns.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/ItBurns.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 78270528768822)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/ItBurns.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Chronos Shift"
tool.RequiresHandle = false
writefile("Dances/chronoshift.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/chronoshift.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 136302258505787)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/chronoshift.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Million"
tool.RequiresHandle = false
writefile("Dances/Million.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Million.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 109123683211464)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Million.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "I Wanna Runaway"
tool.RequiresHandle = false
writefile("Dances/Runaway.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Runaway.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 119147810948063)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Runaway.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Headlock"
tool.RequiresHandle = false
writefile("Dances/Headlock.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Headlock.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 80641587562132)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Headlock.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Bloodpop"
tool.RequiresHandle = false
writefile("Dances/bloodpop.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/bloodpop.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 132026285699359)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/bloodpop.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Heavy Love"
tool.RequiresHandle = false
writefile("Dances/heavylove.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/heavylove.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 85856686932206)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/heavylove.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Smug Dance"
tool.RequiresHandle = false
writefile("Dances/Smug.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Smug.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 8360493405)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Smug.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Hakari"
tool.RequiresHandle = false
writefile("Dances/TUCA DONKA.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/TUCA%20DONKA.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 114322394064953)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/TUCA DONKA.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Flop"
tool.RequiresHandle = false
writefile("Dances/DO THE FLOP.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/DO%20THE%20FLOP.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 122878040721056)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/DO THE FLOP.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Doodle"
tool.RequiresHandle = false
writefile("Dances/Doodle.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Doodle.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 137721173051346)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Doodle.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Club Penguin"
tool.RequiresHandle = false
writefile("Dances/CLUB PENGUIN DANCE.mp3",
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/CLUB%20PENGUIN%20DANCE.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 89761302048916)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/CLUB PENGUIN DANCE.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Miohonda"
tool.RequiresHandle = false
writefile("Dances/MioHonda.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/MioHonda.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 97072681531610)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/MioHonda.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Liar Dance"
tool.RequiresHandle = false
writefile("Dances/Liar.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Liar.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 83070385097572)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Liar.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Firework"
tool.RequiresHandle = false
writefile("Dances/Firework.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Firework.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 89935837869234)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Firework.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Monster"
tool.RequiresHandle = false
writefile("Dances/Monster.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Monster.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 81782595704176)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Monster.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Love For You"
tool.RequiresHandle = false
writefile("Dances/LoveForU.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/LoveForU.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 74560719461868)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/LoveForU.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "C14"
tool.RequiresHandle = false
writefile("Dances/C14.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/C14.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 118452043589079)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/C14.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Dance If Your A Goat"
tool.RequiresHandle = false
writefile("Dances/Goat.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Goat.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 88802480011454)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Goat.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Spooky Month"
tool.RequiresHandle = false
writefile("Dances/Spooky.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Spooky.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 15231364673)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Spooky.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool52 = Instance.new("Tool", backpack)
tool52.Name = "Silly Billy"
tool52.RequiresHandle = false
writefile("Dances/Billy.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Billy.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool52.Equipped:Connect(function()
local character = player.Character
if character then
Playsound.SoundId = customasset("Dances/Billy.mp3")
timeposcur = Playsound.TimePosition
Anim = Animator.new(character, 108058940444935)
Anim:Play()
wait(.250)
Playsound:Play()
Anim.Stopped:Connect(function()
M()
Anim:Play()
wait(.255)
Playsound:Play()
end)
end
end)

tool52.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Slickback"
tool.RequiresHandle = false
writefile("Dances/SlickBack.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/SlickBack.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 18986357892)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/SlickBack.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Static"
tool.RequiresHandle = false
writefile("Dances/Static.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Static.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 139065991651723)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Static.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Heel Toe Hop"
tool.RequiresHandle = false
writefile("Dances/Heel.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Heel.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 98256622649150)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Heel.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Yippee"
tool.RequiresHandle = false
writefile("Dances/Yippie.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Yippie.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 91260130273371)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Yippie.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Pick Up The Phone"
tool.RequiresHandle = false
writefile("Dances/Pickup.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Pickup.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 92187683724153)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Pickup.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Kemusan"
tool.RequiresHandle = false
writefile("Dances/Chinese.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Chinese.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 124210157097622)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Chinese.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Box Swing"
tool.RequiresHandle = false
writefile("Dances/Box.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Box.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 75405139558088)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Box.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Bomb Monkey"
tool.RequiresHandle = false
writefile("Dances/Monkey.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Monkey.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 75616586799217)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Monkey.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Commercial Break"
tool.RequiresHandle = false
writefile("Dances/Break.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Break.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 74653637870288)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Break.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool62 = Instance.new("Tool", backpack)
tool62.Name = "Popipo"
tool62.RequiresHandle = false
writefile("Dances/Popipo.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Popipo.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool62.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 115465103089127)
timeposcur = Playsound.TimePosition
Playsound.SoundId = customasset("Dances/Popipo.mp3")
Playsound:Play()
Anim:Play()
Anim.Stopped:Connect(function()
     M()
Anim:Play()
wait(.100)
Playsound:Play()
end)
end
end)

tool62.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "BirdBrain"
tool.RequiresHandle = false
writefile("Dances/Birdbrain.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Birdbrain.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 122216349954401)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Birdbrain.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "XO"
tool.RequiresHandle = false
writefile("Dances/XO.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/XO.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 73559770055600)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/XO.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Roar"
tool.RequiresHandle = false
writefile("Dances/Roar.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Roar.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 114610231812511)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Roar.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Savor The W"
tool.RequiresHandle = false
writefile("Dances/Savor.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Savor.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 82123030025988)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Savor.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Prism Shuffle"
tool.RequiresHandle = false
writefile("Dances/Prism.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Prism.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 132979558739339)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Prism.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Rambunctious"
tool.RequiresHandle = false
writefile("Dances/Rambunctious.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Rambunctious.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 112645644540728)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Rambunctious.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Take Down"
tool.RequiresHandle = false
writefile("Dances/TakeDown.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/TakeDown.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 70380478678297)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/TakeDown.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool = Instance.new("Tool", backpack)
tool.Name = "Insanity"
tool.RequiresHandle = false

writefile("Dances/Insanity.mp3", 
     game:HttpGet("https://github.com/gObl00x/Epik-Musics/raw/refs/heads/main/Insanity.mp3"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 139483347792972)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Insanity.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()
end
M()
end)

local tool70 = Instance.new("Tool", backpack)
tool70.Name = "Soda Pop"
tool70.RequiresHandle = false
writefile("Dances/Soda.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Soda.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool70.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 77909248721162)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Soda.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool70.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)

local tool71 = Instance.new("Tool", backpack)
tool71.Name = "Jennie"
tool71.RequiresHandle = false
writefile("Dances/Jennie.mp3", 
	game:HttpGet("https://github.com/Solary-3/Scripts/blob/Audios-1/Jennie.mp3?raw=true"))
if not getgenv()["Animator"] then
loadstring(game:HttpGet("https://raw.githubusercontent.com/xhayper/Animator/main/Source/Main.lua"))()
end
local Anim = nil

tool71.Equipped:Connect(function()
local character = player.Character
if character then
Anim = Animator.new(character, 123466582577669)
Anim:Play()
Anim.Stopped:Connect(function()
Anim:Play()
end)
Playsound.SoundId = customasset("Dances/Jennie.mp3")
timeposcur = Playsound.TimePosition
Playsound:Play()
end
end)

tool71.Unequipped:Connect(function()
if Anim then
Anim:Stop()
Anim:Destroy()

end
M()
end)


return G2L["1"], require;