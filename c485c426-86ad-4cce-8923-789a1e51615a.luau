local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "Just A Baseplate ",
   LoadingTitle = "Just a Baseplate",
   LoadingSubtitle = "by Theo/Paradigm",
   Theme = "Serenity",

ToggleUIKeybind = "U",

   ConfigurationSaving = {
      Enabled = True,
      FolderName = "JAB", -- Create a custom folder for your hub/game
      FileName = "Just A Baseplate"
   }
})


local HomeTab = Window:CreateTab("Home", nil) -- Title, Image
local HomeSection = HomeTab:CreateSection("Main")

local HomeParagraph = HomeTab:CreateParagraph({Title = "Just A Baseplate Hub By Theo/Paradigm", Content = "This Was Made on 05/13/25!"})
local Button = HomeTab:CreateButton({
   Name = "Sit",
   Callback = function()
       game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-sit")
   end,
})
local Button1 = HomeTab:CreateButton({
   Name = "Boost Fps",
   Callback = function()
 
   local ToDisable = {
    VisualEffects = true,
    Parts = true,
    Particles = true,
    Sky = true
}

local ToEnable = {
    FullBright = true
}

local Stuff = {}

for _, v in next, game:GetDescendants() do
    if ToDisable.Parts then
        if v:IsA("Part") or v:IsA("Union") or v:IsA("BasePart") then
            v.Material = Enum.Material.SmoothPlastic
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.Particles then
        if v:IsA("ParticleEmitter") or v:IsA("Smoke") or v:IsA("Explosion") or v:IsA("Sparkles") or v:IsA("Fire") then
            v.Enabled = false
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.VisualEffects then
        if v:IsA("BloomEffect") or v:IsA("BlurEffect") or v:IsA("DepthOfFieldEffect") or v:IsA("SunRaysEffect") then
            v.Enabled = false
            table.insert(Stuff, 1, v)
        end
    end

    if ToDisable.Sky then
        if v:IsA("Sky") then
            v.Parent = nil
            table.insert(Stuff, 1, v)
        end
    end
end

game:GetService("TestService"):Message("Effects Disabler Script: Successfully disabled "..#Stuff.." assets/effects. Settings:")

for i, v in next, ToDisable do
    print(tostring(i)..": "..tostring(v))
end

if ToEnable.FullBright then
    local Lighting = game:GetService("Lighting")

    Lighting.FogColor = Color3.fromRGB(255, 255, 255)
    Lighting.FogEnd = math.huge
    Lighting.FogStart = math.huge
    Lighting.Ambient = Color3.fromRGB(255, 255, 255)
    Lighting.Brightness = 5
    Lighting.ColorShift_Bottom = Color3.fromRGB(255, 255, 255)
    Lighting.ColorShift_Top = Color3.fromRGB(255, 255, 255)
    Lighting.OutdoorAmbient = Color3.fromRGB(255, 255, 255)
    Lighting.Outlines = true
end

   end,
})
local Button2 = HomeTab:CreateButton({
   Name = "Serverhop",
   Callback = function()
    --[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local PlaceID = game.PlaceId
local AllIDs = {}
local foundAnything = ""
local actualHour = os.date("!*t").hour
local Deleted = false
local File = pcall(function()
    AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
end)
if not File then
    table.insert(AllIDs, actualHour)
    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
end
function TPReturner()
    local Site;
    if foundAnything == "" then
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
    end
    local ID = ""
    if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
        foundAnything = Site.nextPageCursor
    end
    local num = 0;
    for i,v in pairs(Site.data) do
        local Possible = true
        ID = tostring(v.id)
        if tonumber(v.maxPlayers) > tonumber(v.playing) then
            for _,Existing in pairs(AllIDs) do
                if num ~= 0 then
                    if ID == tostring(Existing) then
                        Possible = false
                    end
                else
                    if tonumber(actualHour) ~= tonumber(Existing) then
                        local delFile = pcall(function()
                            delfile("NotSameServers.json")
                            AllIDs = {}
                            table.insert(AllIDs, actualHour)
                        end)
                    end
                end
                num = num + 1
            end
            if Possible == true then
                table.insert(AllIDs, ID)
                wait()
                pcall(function()
                    writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                    wait()
                    game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                end)
                wait(4)
            end
        end
    end
end

function Teleport()
    while wait() do
        pcall(function()
            TPReturner()
            if foundAnything ~= "" then
                TPReturner()
            end
        end)
    end
end

-- If you'd like to use a script before server hopping (Like a Automatic Chest collector you can put the Teleport() after it collected everything.
Teleport()
end,
})

local Slider = HomeTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = HomeTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {50, 400},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 50,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})
local Input = HomeTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local ThemesSection = HomeTab:CreateSection("Themes Section")
local Button2 = HomeTab:CreateButton({
   Name = "Ocean",
   Callback = function()
   Window.ModifyTheme('Ocean')
end,
})
local Button3 = HomeTab:CreateButton({
   Name = "Bloom",
   Callback = function()
   Window.ModifyTheme('Bloom')
end,
})
local Button4 = HomeTab:CreateButton({
   Name = "Dark Blue",
   Callback = function()
   Window.ModifyTheme('DarkBlue')
end,
})
local Button5 = HomeTab:CreateButton({
   Name = "Amethyst",
   Callback = function()
   Window.ModifyTheme('Amethyst')
end,
})
local Button6 = HomeTab:CreateButton({
   Name = "Serenity",
   Callback = function()
   Window.ModifyTheme('Serenity')
end,
})




-----==============-----
local MainTab = Window:CreateTab("Main", nil)


local KrystalDanceSection = MainTab:CreateSection("Krystal Dance V3")
local Input = MainTab:CreateInput({
   Name = "Dance Speed",
   PlaceholderText = "1-10",
   RemoveTextAfterFocusLost = false,
   Callback = function(Speed)
        
   end,
})
local Button1 = MainTab:CreateButton({
   Name = "Krystal Dance V3, Modded By Theo",
   Callback = function(A)
_G.Speed = (Speed)
loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Kdv3.luau"))()
   end,
})
local OtherSection = MainTab:CreateSection("Genesis")
local Button2 = MainTab:CreateButton({
   Name = "Genesis Neptunian V",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd") loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Neptunian%20V"))()  
   end,
})

local Button3 = MainTab:CreateButton({
   Name = "Genesis Sniper",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
        --[[
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = false --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = false --highlight fling
discharscripts = true --disable character scripts
flingchangestate = false--fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sniper"))()

--==========================================================================================================================--


   end,
})
local Button4 = MainTab:CreateButton({
   Name = "Genesis Sin Dragon",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
 --[[ Sin Dragon
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--===================================--
--=         Script Options          =--
--===================================--

transparent = true --toggle clientsided parts (dragon head, claws, etc)
effects = true --toggle clientsided effects (punch effect, laser effect, etc), set this to false if you use an emulator and you are lagging

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = false --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Sin%20Dragon"))()

--==========================================================================================================================--
   end,
})
local Button5 = MainTab:CreateButton({
   Name = "Genesis Goner",
   Callback = function(A)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
 --[[ Goner
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = true --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Goner"))()

--==========================================================================================================================--
   end,
})
local Button6 = MainTab:CreateButton({
   Name = "Genesis Ban Hammer",
   Callback = function(A) 
--[[ Banhammer 
_________                       _____            ___________________
__  ____/__________________________(_)_______    ___  ____/__  ____/
_  / __ _  _ \_  __ \  _ \_  ___/_  /__  ___/    __  /_   __  __/   
/ /_/ / /  __/  / / /  __/(__  )_  / _(__  )     _  __/   _  /___   
\____/  \___//_/ /_/\___//____/ /_/  /____/      /_/      /_____/   							

by rqz					
https://discord.com/invite/aEZpBEHgMT
]]--

--====================================--
--           FDless Options           --
--====================================--

permadeath = true --adds permanent death (no respawning), see #supported-executors channel for executors that work with this
fling = true --toggle fling
allowshiftlock = true --adds shiftlock to patchma rig
ctrltp = true --adds control click tp
placeholders = false --adds transparent parts showing your hats when you don't have real ones
clickfling = true --adds click flinging regardless of attacks
highlightflingtargets = false --highlight fling
discharscripts = true --disable character scripts
flingchangestate = true --fling with whole body
hidedeatheffect = true --hides the red damage border when you die (respawn)
respawntp = 3 --respawn tp mode
-- 0 - stay at spawn
-- 1 - randomtp close
-- 2 - behind fake character
-- 3 - hide body
breakjointsmethod = 1 --breakjoints mode
-- 1 - health+breakjoints (the most support)
-- 2 - health or breakjoints
-- 3 - breakjoints
simrad = true --sets simulation radius

--==========================================================================================================================--

loadstring(game:HttpGet("https://raw.githubusercontent.com/GenesisFE/Genesis/main/Obfuscations/Ban%20Hammer"))()

--==========================================================================================================================--
   end,
})
local MainSection = MainTab:CreateSection("Other")

local Button7 = MainTab:CreateButton({
   Name = "FE Neko",
   Callback = function(A) 
  loadstring(game:HttpGet("https://pastefy.app/gHRJrLLX/raw"))()
end,
})

local Button8 = MainTab:CreateButton({
   Name = "Achromoonic",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
task.wait(2.150)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/achromoonic edit.luau"))()
end,
})

local Button9 = MainTab:CreateButton({
   Name = "Achromatix",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
task.wait(2.150)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Achromatix_V6-1.lua"))()
end,
})

local Button10= MainTab:CreateButton({
   Name = "Encription Glitcher",
   Callback = function(A) 
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
task.wait(2.150)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Encription%20Glitcher.lua"))()
   end,
})

local Button11 = MainTab:CreateButton({
   Name = "Achromatic V5",
   Callback = function(A) 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/achromatic%20v5%20edited%20yes.luau"))()
end,
})











----================----
local ExecutorsTab = Window:CreateTab("Executors", nil) -- Title, Image

local Button1 = ExecutorsTab:CreateButton({
   Name = "Codex",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Codex.lua"))()
   end,
})

local Button2 = ExecutorsTab:CreateButton({
   Name = "Delta",
   Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Solary-3/Scripts/refs/heads/main/Delta.lua"))()
   end,
})
local Button3  = ExecutorsTab:CreateButton({
   Name = "Appleware",
   Callback = function() loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-AppleWare-Executor-Ui-33190"))()
   end,
})

local HatsTab = Window:CreateTab("Hats And Rigs", nil) -- Title, Image

local Button  = HatsTab:CreateButton({
   Name = "Genesis Rigs",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 138364679836274 82942681251131 140395948277978 102599402682100 90960046381276 13058406993") 
   end,
})
local Button1  = HatsTab:CreateButton({
   Name = "Neptunian V",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 5316479641 ")
   end,
})
local Button2 = HatsTab:CreateButton({
   Name = "Sniper",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 5168118559 4504231783")
   end,
})

local Button3 = HatsTab:CreateButton({
   Name = "Sin Dragon",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 117186631495734 99965319383570 132770514241770 3756389957 14864581977  150381051 4504231783")
   end,
})

local Button4 = HatsTab:CreateButton({
   Name = "Goner",
   Callback = function() 
  game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 17770317484 17822722698 17822749561 17772174303 17835236579")
   end,
})

local Button5 = HatsTab:CreateButton({
   Name = "Ban Hammer",
   Callback = function() 
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 15548314241")
   end,
})

local OthersSection = HatsTab:CreateSection("Others")

local Button6 = HatsTab:CreateButton({
   Name = "Neko",
   Callback = function() 
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 122032567288629 138802414732404 95786006544919 102002238417724 13483473711 17106982150 17764306653 124852036545066 109247574710501 73106949354869 72453363936733 13521847144")
   end,
})

local Button7 = HatsTab:CreateButton({
   Name = "Glitchers",
   Callback = function() 
   game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-gh 4820152700 4524991457 4794315940 4506945409 4458601937 4315489767 4623728953 5030789687 4773883146 4773932088 4855847190 4932541287")
task.wait(3.950)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-net")
task.wait(2.250)
game:GetService("TextChatService").TextChannels.RBXGeneral:SendAsync("-pd")
   end,
})








-----==============-----
local HubsTab = Window:CreateTab("Hubs", nil) -- Title, Image

local Button = HubsTab:CreateButton({
   Name = "Gelatek Hub",
   Callback = function() 
   -- https://scriptblox.com/script/Universal-Script-Gelatek-hub-26438l9cal

loadstring(game:HttpGet("https://raw.githubusercontent.com/Gelatekussy/GelatekHub/main/Main.lua"))()
   end,
})
local Button1 = HubsTab:CreateButton({
    Name = "Fire X Hub V2",
    Callback = function()
loadstring("\105\102\32\110\111\116\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\82\101\112\108\105\99\97\116\101\100\83\116\111\114\97\103\101\34\41\58\70\105\110\100\70\105\114\115\116\67\104\105\108\100\40\34\48\49\95\115\101\114\118\101\114\34\41\32\116\104\101\110\32\114\101\116\117\114\110\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\84\101\108\101\112\111\114\116\83\101\114\118\105\99\101\34\41\58\84\101\108\101\112\111\114\116\40\49\55\53\55\52\54\49\56\57\53\57\44\32\103\97\109\101\58\71\101\116\83\101\114\118\105\99\101\40\34\80\108\97\121\101\114\115\34\41\46\76\111\99\97\108\80\108\97\121\101\114\41\32\101\110\100\10\108\111\97\100\115\116\114\105\110\103\40\103\97\109\101\58\72\116\116\112\71\101\116\40\34\104\116\116\112\115\58\47\47\114\97\119\46\103\105\116\104\117\98\117\115\101\114\99\111\110\116\101\110\116\46\99\111\109\47\116\121\114\101\108\116\114\105\106\111\47\102\105\114\101\47\109\97\105\110\47\102\105\114\101\34\41\41\40\41\10")()
end,
})


-----==============-----
local OthersTab = Window:CreateTab("Others", nil) -- Title, Image

local Button = OthersTab:CreateButton({
   Name = "Pshade Ultimate",
   Callback = function() 
  loadstring(game:HttpGet('https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/cd.lua'))()
end,
})

local Button1 = OthersTab:CreateButton({
   Name = "Cat Bypasser",
   Callback = function() 
  loadstring(game:HttpGet("https://raw.githubusercontent.com/shadow62x/catbypass/main/upfix"))()
end,
})
