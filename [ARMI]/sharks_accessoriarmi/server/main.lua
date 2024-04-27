-- ESX = nil

-- TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent("accessori:registraLatoServer")
AddEventHandler("accessori:registraLatoServer", function(arma, componente)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.addWeaponComponent(arma, componente)
end)

ESX.RegisterUsableItem('silenziatore', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('eden_accesories:silenziatore', source)

    xPlayer.removeInventoryItem('silenziatore', 1)
end)

ESX.RegisterUsableItem('torciaarma', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)	
    TriggerClientEvent('eden_accesories:torciaarma', source)
    
    xPlayer.removeInventoryItem('torciaarma', 1)
    
end)

ESX.RegisterUsableItem('impugnatura', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('eden_accesories:impugnatura', source)

    xPlayer.removeInventoryItem('impugnatura', 1)
	
end)

ESX.RegisterUsableItem('skin', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('eden_accesories:skin', source)

    xPlayer.removeInventoryItem('skin', 1)

end)

ESX.RegisterUsableItem('caricatoreesteso', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('eden_accesories:caricatoreesteso', source)

    xPlayer.removeInventoryItem('caricatoreesteso', 1)

end)

ESX.RegisterUsableItem('mirino', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    TriggerClientEvent('eden_accesories:mirino', source)

    xPlayer.removeInventoryItem('mirino', 1)

end)
