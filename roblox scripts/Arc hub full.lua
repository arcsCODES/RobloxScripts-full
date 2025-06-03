-- Load ang Orion Library
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/Giangplay/Script/main/Orion_Library_PE_V2.lua"))()

local Window = OrionLib:MakeWindow({
    Name = "Example UI",
    HidePremium = false,
    SaveConfig = false,
    IntroEnabled = true,
    IntroText = "Welcome to Example UI!",
})







local SATab = Window:MakeTab({
    Name = "Stands Awakening",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})


SATab:AddSection({
    Name = "MGA LIST UG SCRIPTS SA STANDS AWAKENING"
})

SATab:AddButton({
    Name = "ARC'S HUB",
    Callback = function()
        print("Button was clicked!")
    end    
})

SATab:AddButton({
    Name = "AUTO BOSS",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/stands%20awakening/Boss%20autokill.txt"))()
    end    
})