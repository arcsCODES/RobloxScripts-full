-- Load ang Orion Library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua"))()

local Window = OrionLib:MakeWindow({
    Name = "Arc's Hub v1.0",
    HidePremium = false,
    SaveConfig = false,
    IntroEnabled = true,
    IntroText = "ARC'S HUB",
})

-- MO ABRI ANG UI KUNG MAG REJOIN O LEFT ANG USER
if queueonteleport then
    queueonteleport([[
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/Arc%20hub%20full.lua"))()
    ]])
end








local SATab = Window:MakeTab({
    Name = "SA",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


SATab:AddSection({
    Name = "SCRIPTS"
})

SATab:AddButton({
    Name = "ARC'S HUB",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/stands%20awakening/arc_hub.lua"))()
    end    
})

SATab:AddButton({
    Name = "AUTO BOSS",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/stands%20awakening/Boss%20autokill.txt"))()
    end    
})





local UNIVERSALTab = Window:MakeTab({
    Name = "Universal",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

UNIVERSALTab:AddButton({
    Name = "KEYBOARD (PARA SA MOBILE)",
    Callback = function()
        loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
    end    
})










local OTHERTab = Window:MakeTab({
    Name = "Hub Scripts",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OTHERTab:AddButton({
    Name = "DESTROY UI",
    Callback = function()
        OrionLib:Destroy()
    end    
})







OrionLib:Init()