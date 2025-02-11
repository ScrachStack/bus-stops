-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support
-- JOIN https://discord.gg/Uwg95JfwYT for support

Settings = {}

Settings.BusStops = {
    {
        name = "1",
        location = vector3(0,0,0),
        fare = 15,
        promptText = "You're at the 1! Pay to travel.",
        blip = { id = 4, color = 3, scale = 0.8 } -- (id, color, scale)
    },
    {
        name = "2",
        location = vector3(0, 0, 0),
        fare = 8,
        promptText = "You're at the 2! Pay to travel.",
        blip = { id = 9, color = 5, scale = 0.8 } -- (id, color, scale)
    }
}

Settings.Messages = {
    notEnoughMoney = "You don't have enough money to travel!",
    paySuccess = "You have successfully paid for your travel.",
    payFailed = "There was an error with your payment.",
}

Settings.TravelTime = 10 -- Time in seconds for a player to travel.
Settings.EnableTravelCutscene = true -- [true/false]
