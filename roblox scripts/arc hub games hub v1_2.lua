-- Load OrionLib
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source"))()

-- Create the main window
local Window = OrionLib:MakeWindow({
    Name = "Arc's Hub | Games Hub (v1.2)",
    HidePremium = false,
    SaveConfig = true,
    ConfigFolder = "ExampleHubConfig"
})







-- Create a tab
local SATab = Window:MakeTab({
    Name = "SA",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

-- Create a section in the tab
SATab:AddSection({
    Name = "Stands Awakening"
})

-- Add a button
SATab:AddButton({
    Name = "ARC'S HUB",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Button Clicked",
            Content = "You clicked the button!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/stands%20awakening/arc_hub.lua"))()
    end
})

SATab:AddButton({
    Name = "AUTO BOSS",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Button Clicked",
            Content = "You clicked the button!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/arcsCODES/RobloxScripts-full/refs/heads/main/roblox%20scripts/stands%20awakening/Boss%20autokill.txt"))()
    end
})





local UniversalTab = Window:MakeTab({
    Name = "Universal",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

UniversalTab:AddSection({
    Name = "Universal Scripts"
})

UniversalTab:AddButton({
    Name = "KEYBOARD (FOR MOBILE)",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Button Clicked",
            Content = "You clicked the button!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        loadstring(game:HttpGet("https://gist.githubusercontent.com/RedZenXYZ/4d80bfd70ee27000660e4bfa7509c667/raw/da903c570249ab3c0c1a74f3467260972c3d87e6/KeyBoard%2520From%2520Ohio%2520Fr%2520Fr"))()
    end
})





local OtherTab = Window:MakeTab({
    Name = "Hub utilities",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

OtherTab:AddSection({
    Name = "Hub utilities"
})

OtherTab:AddButton({
    Name = "DESTROY GUI",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Button Clicked",
            Content = "You clicked the button!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        OrionLib:Destroy()
    end
})

OtherTab:AddButton({
    Name = "DESTROY GUI",
    Callback = function()
        OrionLib:MakeNotification({
            Name = "Button Clicked",
            Content = "You clicked the button!",
            Image = "rbxassetid://4483345998",
            Time = 5
        })
        loadstring(game:HttpGet("https://raw.githubusercontent.com/edgeiy/infiniteyield/master/source"))()
    end
})

-- HUMANON ANG MGA SCRIPT O GUI
OrionLib:Init()