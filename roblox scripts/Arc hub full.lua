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