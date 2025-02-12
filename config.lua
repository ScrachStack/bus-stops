-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support

Settings = {}

Settings.BusStops = {
    {
        name = "Sandy Shores Bus Stop",
        location = vector3(2021.00,3814.26,31.37),
        fare = 15,
        promptText = "You're at the Sandy Shores Bus! Pay to travel.",
        blip = { id = 4, color = 3, scale = 0.8 } -- (id, color, scale)
    },
    {
        name = "Grove Street Bus Stop",
        location = vector3(-94.24, -1756.20, 29.59),
        fare = 8,
        promptText = "You're at the Grove Street Bus! Pay to travel.",
        blip = { id = 9, color = 5, scale = 0.8 } -- (id, color, scale)
    },
    {
        name = "Mirror Park Bus Stop",
        location = vector3(1043.99, -764.70, 57.78),
        fare = 8,
        promptText = "You're at the Mirror Park Bus! Pay to travel.",
        blip = { id = 9, color = 5, scale = 0.8 } -- (id, color, scale)
    }
}

Settings.Messages = {
    notEnoughMoney = "You don't have enough money to travel!",
    paySuccess = "You have successfully paid for your travel.",
    payFailed = "There was an error with your payment.",
}
Settings.Framework = "standalone" -- Change this based on the framework being used.
-- Options are: "standalone", "qb-core", "esx", "nd-core"

Settings.TravelTime = 10 -- Time in seconds for a player to travel.
Settings.EnableTravelCutscene = true -- [true/false]

Settings.Debug = true -- [Debugging Console Spam]
