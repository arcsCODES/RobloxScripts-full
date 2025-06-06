-- STANDS AWAKENING SOUNDS MADE BY @arcturuszz
-- SUBSCRIBE IN YT

-- UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- Window
local Window = Rayfield:CreateWindow({
    Name = "SOUNDS",
    LoadingTitle = "made by @arcturuszz",
    LoadingSubtitle = "subscribe to arcturuszz in yt",
    ConfigurationSaving = { Enabled = true }
})

-- Tabs
local SoundTab = Window:CreateTab("Main")

SoundTab:CreateSection("Create random sounds")

local sounds = {}
local lastPlayedSound
local soundLoopActive = false
local soundCount = 1
local soundLoopConnection

local function getSounds(loc)
    if loc:IsA("Sound") then
        table.insert(sounds, loc)
    end
    for _, obj in pairs(loc:GetChildren()) do
        getSounds(obj)
    end
end

getSounds(game)

game.DescendantAdded:Connect(function(obj)
    if obj:IsA("Sound") then
        table.insert(sounds, obj)
    end
end)

local function getRandomSound()
    if #sounds == 0 then return nil end

    local randomSound
    local attempt = 0
    repeat
        local randomIndex = math.random(1, #sounds)
        randomSound = sounds[randomIndex]
        attempt = attempt + 1
    until randomSound ~= lastPlayedSound or attempt > 10

    if attempt > 10 then return nil end
    lastPlayedSound = randomSound
    return randomSound
end

SoundTab:CreateToggle({
    Name = "SOUNDS",
    CurrentValue = false,
    Callback = function(state)
        soundLoopActive = state
        
        if state then
            if not soundLoopConnection then
                soundLoopConnection = game:GetService("RunService").Heartbeat:Connect(function()
                    if soundLoopActive and #sounds > 0 then
                        for i = 1, soundCount do
                            local soundToPlay = getRandomSound()
                            if soundToPlay then
                                pcall(function()
                                    soundToPlay:Stop()
                                    soundToPlay:Play()
                                end)
                            end
                        end
                    end
                end)
            end
            print("Sound loop enabled")
        else
            if soundLoopConnection then
                soundLoopConnection:Disconnect()
                soundLoopConnection = nil
            end
            print("Sound loop disabled")
        end
    end
})

SoundTab:CreateSlider({
    Name = "Sound Count",
    Range = {1, 100}, -- Adjusted min to 1 to avoid 0 sounds
    Increment = 1,
    Suffix = "Sounds",
    CurrentValue = 1, -- Starting with 1 sound
    Flag = "SoundCountSlider",
    Callback = function(Value) -- Capital 'V' matches Rayfield convention
        soundCount = Value
    end
})