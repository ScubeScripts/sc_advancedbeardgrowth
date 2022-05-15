
Citizen.CreateThread(function()
    while true do 
        Citizen.Wait(Config.Delay)
        TriggerEvent('skinchanger:getSkin', function(skinData)
            if skinData ~= nil then
                if skinData['beard_2'] > 0 and SkinData['beard_2'] < 10 then
                    skinData['beard_2'] = skinData['beard_2'] + 1
                    TriggerEvent('skinchanger:loadSkin', skinData)
                    TriggerServerEvent('esx_skin:save', skinData)
                end
            end            
        end)
    end
end)

RegisterNetEvent('AdvancedBeardGrowth:shave')
AddEventHandler('AdvancedBeardGrowth:shave', function()
    TriggerEvent('skinchanger:getSkin', function(skinData)
        if skinData ~= nil then
            if skinData['beard_2'] > 1 and skinData['beard_2'] < 10 then
                skinData['beard_2'] = 1
                TriggerEvent('skinchanger:loadSkin', skinData)
                TriggerServerEvent('esx_skin:save', skinData)
            end
        end
    end)
end)