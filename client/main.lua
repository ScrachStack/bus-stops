local busstopsmenu = {}
for index, stop in ipairs(Settings.BusStops) do
    table.insert(busstopsmenu, {label = stop.name, value = stop.promptText, args = {id = stop.name, coords = stop.location}, close = false, icon = 'car'})
    if Settings.Debug then 
    print("[DEBUG] ".. index)
    end
end

lib.registerMenu({
    id = 's_bus-stops_menu-0000',
    title = 'Bus Stops',
    position = 'top-right',
    options = busstopsmenu
}, function(selected, scrollIndex, args)
    if args.id then
        local selectedStop = nil
        for _, stop in ipairs(Settings.BusStops) do
            if stop.name == args.id then
                selectedStop = stop
                break
            end
        end

        if selectedStop then
            SetEntityCoords(cache.ped, selectedStop.location.x, selectedStop.location.y, selectedStop.location.z, false, false, false, true)
            lib.notify({
                title = 'Bus Driver',
                description = 'You have completed your travel to '.. selectedStop.name,
                type = 'info'
            })
        end
    end
end)

for _, stop in ipairs(Settings.BusStops) do
    local point = lib.points.new({
        coords = stop.location,
        distance = 5,
        name = stop.name,
        fare = stop.fare,
        promptText = stop.promptText
    })

    function point:onEnter()
        if Settings.Debug then 
            print("[DEBUG] ".."Entered bus stop:", self.name)
        end
            lib.showTextUI(self.promptText)
    end

    function point:onExit()
        lib.hideTextUI()
        if Settings.Debug then 
        print("[DEBUG] ".."Left bus stop:", self.name)
        end
    end

    function point:nearby()
        DrawMarker(36, self.coords.x, self.coords.y, self.coords.z, 0.0, 0.0, 0.0, 0.0, 180.0, 0.0, 1.0, 1.0, 1.0, 200, 20, 20, 50, false, true, 2, false, nil, nil, false)

        if self.currentDistance < 5 and IsControlJustReleased(0, 38) then -- E key (default)
            lib.showMenu('s_bus-stops_menu-0000') 
        end
    end
end
