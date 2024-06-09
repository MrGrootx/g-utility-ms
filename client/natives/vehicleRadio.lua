if Config.settings.DisableVehicleRadios then
    CreateThread(function()
        while true do
            local waitTime = 500
            if IsPedInAnyVehicle(PlayerPedId(), false) then
                local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
                waitTime = 1
                SetVehicleRadioEnabled(vehicle, false)
            end
            Wait(waitTime)
        end
    end)
end
