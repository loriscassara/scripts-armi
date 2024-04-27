-- Citizen.CreateThread(function()
-- 	while ESX == nil do
-- 		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- 		Citizen.Wait(0)
-- 	end
-- end)

local citizen = false

RegisterNetEvent('LRP-Armour:Client:SetPlayerArmour')
AddEventHandler('LRP-Armour:Client:SetPlayerArmour', function(armour)
    Citizen.Wait(10000)  -- Give ESX time to load their stuff. Because some how ESX remove the armour when load the ped.
    SetPedArmour(PlayerPedId(), tonumber(armour))
    citizen = true
end)

local TimeFreshCurrentArmour = 100000  -- 60 seconds
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        if citizen == true then
            TriggerServerEvent('LRP-Armour:Server:RefreshCurrentArmour', GetPedArmour(PlayerPedId()))
            Citizen.Wait(TimeFreshCurrentArmour)
        end
    end
end)

--[[RegisterNetEvent('ff:refresha')
AddEventHandler('ff:refresha', function(armour)

    TriggerServerEvent('LRP-Armour:Server:RefreshCurrentArmour', GetPedArmour(PlayerPedId()))
    
end)--]]