-- local ESX = nil

local PlayerData = {}

--################################################################--

Citizen.CreateThread(function()
	-- while ESX == nil do
	-- 	TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
	-- 	Citizen.Wait(0)
	-- end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(10)
	end

	PlayerData = ESX.GetPlayerData()
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  	PlayerData.job = job
end)

local stopAnimTime = -1
local delayWeaponEquip = -1
local delayWeaponHide = -1
local currentAnim = false

Enabled = true

local holstered = false

local currentWeapon = GetHashKey("WEAPON_UNARMED")

--################################################################--

local AnimazioneFondina = false -- Tenere disabilitato se l'animazione della fondina la devono avere solo i poliziotti

Citizen.CreateThread(function()
	while true do
		Wait(100)
		if PlayerData.job ~= nil then
			if PlayerData.job.name == 'lspd' then
				AnimazioneFondina = true
			else
				AnimazioneFondina = false
			end
		end
	end
end)

--################################################################--

local function playAnim(anim, speed, speedMulitplier, duration, flag, showWeapon, hideWeapon, last)
	currentAnim = anim
	Citizen.CreateThread(function()
		RequestAnimDict(anim.dict)
		while not HasAnimDictLoaded(anim.dict) do Wait(0) end
		--TaskPlayAnim(PlayerPedId(), anim.dict, anim.anim, speed, speedMultiplier, -1, 50, 2.0, 0, 0, 0)
		TaskPlayAnim(PlayerPedId(), anim.dict, anim.anim, speed, speedMulitplier, -1, flag, 0.2, 0, 0, 0)
		if hideWeapon and last then
			delayWeaponHide = hideWeapon
			GiveWeaponToPed(PlayerPedId(), last, 0, false, true)
		elseif showWeapon then
			SetPedCurrentWeaponVisible(PlayerPedId(), false, false, 0, 0)
			delayWeaponEquip = showWeapon
		end
		stopAnimTime = duration + GetGameTimer()
	end)
end

local function removeFromHolster()
	Citizen.CreateThread(function()
		currentWeapon = GetSelectedPedWeapon(PlayerPedId())
		playAnim(Config.copPistolAnim, 8.0, 2.0, 200, 50, 2.0)
		Wait(200)
		playAnim(Config.copPistolAnim2, 8.0, 2.0, 200, 48, 10.0)
	end)
end

local function checkMelee()
	for _,weapon in pairs(Config.melee) do
		if GetHashKey(weapon) == GetSelectedPedWeapon(PlayerPedId()) then
			playAnim(Config.meleeAnim, 8.0, 8.0, 1000, 50, 0.2)
			currentWeapon = GetSelectedPedWeapon(PlayerPedId())
			return true
		end
	end
	return false
end

local function checkPistol()
	for _,weapon in pairs(Config.pistols) do
		if GetHashKey(weapon) == GetSelectedPedWeapon(PlayerPedId()) then
			if AnimazioneFondina then
				removeFromHolster()
				Wait(50)

			else
				playAnim(Config.pistolAnim, 8.0, 8.0, 1800, 50, 0.325, 1200)
				currentWeapon = GetSelectedPedWeapon(PlayerPedId())
			end
			return true
		end
	end
	return false
end

--################################################################--

local function checkRifle()
	for _,weapon in pairs(Config.rifles) do
		if GetHashKey(weapon) == GetSelectedPedWeapon(PlayerPedId()) then
			playAnim(Config.rifleAnim, 8.0, 8.0, 600, 48, 0.5)
			currentWeapon = GetSelectedPedWeapon(PlayerPedId())
			return true
		end
	end
	return false
end

local function RunWeaponDraw()
	if not checkMelee() then
		if not checkPistol() then
			checkRifle()
		end
	end
end

local function RunWeaponHolster()
	local last = currentWeapon
	currentWeapon = GetSelectedPedWeapon(PlayerPedId())
	for _,weapon in pairs(Config.melee) do
		if GetHashKey(weapon) == last then
			playAnim(Config.meleeAnim, 8.0, 8.0, 1000, 50, 0.2)
			return
		end
	end
	for _,weapon in pairs(Config.pistols) do
		if GetHashKey(weapon) == last then
			if AnimazioneFondina then
				playAnim(Config.copPistolAnim, 8.0, 8.0, 400, 50, 0.2, false, 200, GetHashKey(weapon))

			else
				playAnim(Config.pistolAnim2, 8.0, 8.0, 1800, 50, 0.2, false, 1700, GetHashKey(weapon))
			end
			return
		end
	end
	for _,weapon in pairs(Config.rifles) do
		if GetHashKey(weapon) == last then
			playAnim(Config.rifleAnim, 8.0, 8.0, 600, 48, 0.5)
			return
		end
	end
end

--################################################################--

local function RunCopHolster()
	Citizen.CreateThread(function()
		if not IsEntityPlayingAnim(PlayerPedId(), "move_m@intimidation@cop@unarmed", "idle", 3) then
			RequestAnimDict("move_m@intimidation@cop@unarmed")
			while not HasAnimDictLoaded("move_m@intimidation@cop@unarmed") do Wait(0) end
			TaskPlayAnim(PlayerPedId(), "move_m@intimidation@cop@unarmed", "idle", 8.0, 2.5, -1, 49, 0.0, 0, 0, 0)
			holstered = true
		end

		if IsControlJustPressed(0, 25) then
			GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_COMBATPISTOL"), 0, false, true)
			holstered = false
		end
	end)
end

local function disableFireActions()
	DisableControlAction(0, 37, true) -- INPUT_SELECT_WEAPON(TAB)
	DisableControlAction(0, 24, true) -- INPUT_ATTACK (LEFT CLICK)
	DisableControlAction(0, 25, true) -- INPUT_AIM (RIGHT CLICK)
	DisablePlayerFiring(PlayerPedId(), true) -- Just disable the whole damn weapon
end

local function checkTimers()
	if delayWeaponEquip ~= -1 and delayWeaponEquip <= GetGameTimer() then
		SetPedCurrentWeaponVisible(PlayerPedId(), true, false, 0, 0)
		delayWeaponEquip = -1
	end
	if delayWeaponHide ~= -1 and delayWeaponHide <= GetGameTimer() then
		GiveWeaponToPed(PlayerPedId(), GetHashKey("WEAPON_UNARMED"), 0, false, true)
		delayWeaponHide = -1
	end
	if stopAnimTime ~= -1 and stopAnimTime <= GetGameTimer() then
		ClearPedTasks(PlayerPedId())
		--ClearPedSecondaryTask(PlayerPedId())
		stopAnimTime = -1
		currentAnim = false
	end
end

--################################################################--

Citizen.CreateThread(function()
	while true do
		Wait(0)
		if Enabled then
		    if GetPedParachuteState(PlayerPedId()) == -1 then
				if currentWeapon ~= GetSelectedPedWeapon(PlayerPedId()) and GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("WEAPON_UNARMED") and not IsPedInAnyVehicle(PlayerPedId(), true) and not currentAnim then
					RunWeaponHolster()
				elseif currentWeapon ~= GetSelectedPedWeapon(PlayerPedId()) and not IsPedInAnyVehicle(PlayerPedId(), true) and not currentAnim then
					RunWeaponDraw()
				elseif currentAnim ~= false then
					disableFireActions()
				end
				if AnimazioneFondina and IsControlPressed(0, 74) and not IsControlJustReleased(0, 74) and GetSelectedPedWeapon(PlayerPedId()) == GetHashKey("WEAPON_UNARMED") and not IsPedInAnyVehicle(PlayerPedId(), true) and HasPedGotWeapon(PlayerPedId(), GetHashKey("WEAPON_COMBATPISTOL")) then -- INPUT_VEH_HEADLIGHT (H)
					RunCopHolster()
				end
				if AnimazioneFondina and IsControlJustReleased(0, 74) and holstered then
					Wait(50)
					holstered = false
					ClearPedTasks(PlayerPedId())
				end

				if delayWeaponEquip ~= -1 or delayWeaponHide ~= -1 or stopAnimTime ~= -1 then
					checkTimers()
				end
			end
		else
			currentWeapon = GetSelectedPedWeapon(PlayerPedId())
		end
		
	
	end
end)

--################################################################--