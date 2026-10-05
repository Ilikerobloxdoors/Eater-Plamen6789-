local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

-- Create entity
local entity = Creator.createEntity({
    CustomName = "Eater",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/Eater-Plamen6789-/main/Eaters.rbxm",

    Speed = 420,
    DelayTime = 2.3,
    HeightOffset = 1,

    CanKill = true,
    KillRange = 45,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        1,
    },

    Cycles = {
        Min = 3,
        Max = 7,
        WaitTime = 0.1,
    },

    CamShake = {
        true,
        {15, 17.5, 0.1, 0.7},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11360803115",
            Image2 = "rbxassetid://11360803115",

            Shake = true,

            Sound1 = {
                116282238939992,
                {Volume = 0.5},
            },

            Sound2 = {
                116282238939992,
                {Volume = 0.5},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 255, 255),
            },

            Tease = {
                false,
                Min = 0,
                Max = 0,
            },
        },
    },

    CustomDialog = {
        "You died to Eater...",
        "Eater found you.",
        "There was nowhere left to hide."
    },
})

-----[[ Advanced ]]-----

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Eater has spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Eater has despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Eater has started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Eater has finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Eater entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Eater:", entityTable.Model)
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player has died to Eater.")
end

------------------------

-- Run the created entity
Creator.runEntity(entity)
