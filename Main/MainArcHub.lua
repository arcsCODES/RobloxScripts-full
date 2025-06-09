-- HUB CREATED BY @ARCTURUSZZ
-- THIS IS THE MAIN GAMES HUB FOR ARC HUB
-- SUBSCRIBE TO arcturuszz IN YT


-- =============================================
-- I-LOAD ANG LIBRARY
-- =============================================
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/orionlib.lua')))()


------------------------
-- MAG CREATE UG WINDOW
------------------------
local Window = OrionLib:MakeWindow({
    Name = "Arc's Hub | Games Hub ver 2.0",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "archub" 
})





-- =============================================
-- SA TAB
-- =============================================
local SATab = Window:MakeTab({
    Name = "SA",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local SASection = SATab:AddSection({
    Name = "Stands Awakening",
})

SASection:AddButton({
    Name = "Arc's Hub | Main",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/stands%20awakening/arc%20hub%20private%20ver.lua"))()
    end
})

SASection:AddButton({
    Name = "Auto boss",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/stands%20awakening/Boss%20autokill.txt"))()
    end
})




-- =============================================
-- UNIVERSAL TAB
-- =============================================
local UniversalTab = Window:MakeTab({
    Name = "Universal",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local UniversalSection = UniversalTab:AddSection({
    Name = "Universal scripts",
})

UniversalSection:AddButton({
    Name = "Keyboard (for mobile only)",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
    end
})






-- =============================================
-- Hub Utilities
-- =============================================
local UtilsTab = Window:MakeTab({
    Name = "Hub utilities",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

local UtilsSection = UtilsTab:AddSection({
    Name = "Utilities",
})

UtilsSection:AddButton({
    Name = "Destroy GUI",
    Callback = function()
        OrionLib:Destroy()
    end
})

UtilsSection:AddButton({
    Name = "Infinite yield",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
    end
})

UtilsSection:AddButton({
    Name = "Nameless admin",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ltseverydayyou/Nameless-Admin/main/Source.lua"))()
    end
})