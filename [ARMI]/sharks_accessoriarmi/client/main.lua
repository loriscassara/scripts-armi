-- ESX          = nil
local IsDead = false

-- Citizen.CreateThread(function()
-- 	while ESX == nil do
-- 		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
-- 		Citizen.Wait(0)
-- 	end
-- end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer 
end)

				local used = 0

RegisterNetEvent('eden_accesories:silenziatore')
AddEventHandler('eden_accesories:silenziatore', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local silenziatore = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'silenziatore' then
						silenziatore = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
					TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL", "suppressor")
				   
					used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...') 
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL50", "suppressor")
					  used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_COMBATPISTOL", "suppressor")
					used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...') 
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_APPISTOL", "suppressor")
			
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_HEAVYPISTOL", "suppressor")
		  		used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then 
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_VINTAGEPISTOL", "suppressor")
		  		used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...') 
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SMG", "suppressor")
		  		 	used = used + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				 exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				 TriggerServerEvent("accessori:registraLatoServer", "WEAPON_MICROSMG", "suppressor")
				    used = used + 1
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTSMG", "suppressor")
	                used = used + 1
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTRIFLE", "suppressor")
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then 
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_CARBINERIFLE", "suppressor") 
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ADVANCEDRIFLE", "suppressor")  
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SPECIALCARBINE", "suppressor")
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...') 
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_BULLPUPRIFLE", "suppressor")  
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTSHOTGUN", "suppressor")
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_HEAVYSHOTGUN", "suppressor") 
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...') 
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_BULLPUPSHOTGUN", "suppressor")  
	                used = used + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PUMPSHOTGUN", "suppressor") 
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_MARKSMANRIFLE", "suppressor") 
	                used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNIPERRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Avvitando silenziatore...')
				Citizen.Wait(5000)
				   exports['mythic_notify']:DoHudText('inform ', 'Hai appena avvitato un Silenziatore.')
				   TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SNIPERRIFLE", "suppressor")  
	                used = used + 1
		  		
		  	else 
				ESX.ShowNotification(("Non hai un'arma in mano o non puoi usare questo silenziatore sull'arma."))
				TriggerServerEvent('smontaggio:rimborso', 'silenziatore')
			end
end)

RegisterNetEvent('eden_accesories:caricatoreesteso')
AddEventHandler('eden_accesories:caricatoreesteso', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local silenziatore = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'caricatoreesteso' then
						silenziatore = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL", "clip_extended")
				used = used + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL_MK2", "clip_extended")
				used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL50", "clip_extended")
				used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_COMBATPISTOL", "clip_extended")
				used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_APPISTOL", "clip_extended")
				used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_HEAVYPISTOL", "clip_extended")
				used = used + 1
					  
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL", "clip_extended")
				used = used + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_MICROSMG", "clip_extended")
				used = used + 1
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTSMG", "clip_extended")
				used = used + 1
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTRIFLE", "clip_extended")
				used = used + 1
					
			elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_COMBATPDW", "clip_extended")
				used = used + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_CARBINERIFLE", "clip_extended")
				used = used + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_COMPACTRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_COMPACTRIFLE", "clip_extended")
				used = used + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ADVANCEDRIFLE", "clip_extended")
				used = used + 1
					  
			elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SPECIALCARBINE", "clip_extended")
				used = used + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando caricatore esteso...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un caricatore esteso.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_BULLPUPRIFLE", "clip_extended")
				used = used + 1
		  	else 
				ESX.ShowNotification("Non hai un'arma in mano o non puoi usare il caricatore esteso su quest'arma.")
				TriggerServerEvent('smontaggio:rimborso', 'caricatoreesteso')
			end
end)

RegisterNetEvent('eden_accesories:mirino')
AddEventHandler('eden_accesories:mirino', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local silenziatore = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'mirino' then
						silenziatore = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
				exports['progressBars']:avviaProg(5000, 'Montando mirino...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un mirino.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SPECIALCARBINE", "scope")
				used = used + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
				exports['progressBars']:avviaProg(5000, 'Montando mirino...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un mirino.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL_MK2", "scope")
				used = used + 1

			elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando mirino...')
				Citizen.Wait(5000)
				exports['mythic_notify']:DoHudText('inform ', 'Hai appena montato un mirino.')
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_CARBINERIFLE", "scope")
				used = used + 1

		  	else 
				ESX.ShowNotification("Non hai un'arma in mano o non puoi usare il mirino su quest'arma.")
				TriggerServerEvent('smontaggio:rimborso', 'mirino')
			end
end)

			local used2 = 0

RegisterNetEvent('eden_accesories:torciaarma')
AddEventHandler('eden_accesories:torciaarma', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local torcia = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'torciaarma' then
						torcia = inventory[i].count
					  end
					end
			local ped = PlayerPedId()
			local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL", "flashlight")  
		  		exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
		  		used2 = used2 + 1

			  elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL50", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
					Citizen.Wait(5000)
					TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL_MK2", "flashlight")  
					exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
					used2 = used2 + 1
		  		

			  elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_COMBATPISTOL", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
				
			  elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_APPISTOL", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		 
			  elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_HEAVYPISTOL", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SMG", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1


			  elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_MICROSMG", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
				

			  elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTSMG", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
				 
			  elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_COMBATPDW", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1

			  elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTRIFLE", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_CARBINERIFLE", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ADVANCEDRIFLE", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SPECIALCARBINE", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_BULLPUPRIFLE", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTSHOTGUN", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_HEAVYSHOTGUN", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_BULLPUPSHOTGUN", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		 
			  elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PUMPSHOTGUN", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Torcia...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_MARKSMANRIFLE", "flashlight")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato una Torcia nell\'arma.')
				used2 = used2 + 1
		  		
			else 
				ESX.ShowNotification("Non hai un'arma in mano o non puoi usare la torcia su quest'arma.")
				TriggerServerEvent('smontaggio:rimborso', 'torciaarma')
			end
end)
				local used3 = 0

RegisterNetEvent('eden_accesories:impugnatura')
AddEventHandler('eden_accesories:impugnatura', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local Impugnatura = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'impugnatura' then
						Impugnatura = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)

			
			if currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_COMBATPDW", "grip")  
		  		exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
		  		used3 = used3 + 1


			  elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTRIFLE", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_CARBINERIFLE", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SPECIALCARBINE", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_BULLPUPRIFLE", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTSHOTGUN", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_HEAVYSHOTGUN", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_BULLPUPSHOTGUN", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		 
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Montando Impugnatura...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_MARKSMANRIFLE", "grip")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai equipaggiato un\'Impugnatura nell\'arma.')
				used3 = used3 + 1
		  		
			else 
				ESX.ShowNotification("Non hai un'arma in mano o non puoi usare l'Impugnatura su quest'arma.")
				TriggerServerEvent('smontaggio:rimborso', 'impugnatura')
			end
end)

				local used4 = 0

RegisterNetEvent('eden_accesories:skin')
AddEventHandler('eden_accesories:skin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local Skin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skin' then
						Skin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
				
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1

			  elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_PISTOL50", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1
		  		
				
			  elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_APPISTOL", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1
		  		 
			  elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_HEAVYPISTOL", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1

			  elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_SMG", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1
		  		 

			  elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_MICROSMG", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1
				


			  elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ASSAULTRIFLE", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1
		  		
			  --[[elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
		  		 GiveWeaponComponentToPed(PlayerPedId(), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))  
		  		 exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
	used4 = used4 + 1--]]
		  		
			  elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
				exports['progressBars']:avviaProg(5000, 'Installando Mimetica...')
				Citizen.Wait(5000)
				TriggerServerEvent("accessori:registraLatoServer", "WEAPON_ADVANCEDRIFLE", "luxary_finish")  
				exports['mythic_notify']:DoHudText('inform ', 'Hai applicato una Mimetica sull\'arma.')
		  		used4 = used4 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification("Non hai un'arma in mano o non puoi usare la Mimetica su quest'arma.")
				TriggerServerEvent('smontaggio:rimborso', 'skin')
			end
end)



AddEventHandler('playerSpawned', function()
  used = 0
  used2 = 0
  used3 = 0
  used4 = 0
end)