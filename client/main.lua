ESX          = nil
local IsDead = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer 
end)

local used = 0

RegisterNetEvent('esx_attachments_bleiker:extendedclip')
AddEventHandler('esx_attachments_bleiker:extendedclip', function(duration)
				local inventory = ESX.GetPlayerData().inventory
				local extendedclip = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'extendedclip' then
						extendedclip = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used <= extendedclip then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_CLIP_02"))  
				   ESX.ShowNotification(_U('equip'))
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
					  used = used + 1

					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL"), GetHashKey("COMPONENT_SNSPISTOL_CLIP_02"))  
						 ESX.ShowNotification(_U('equip')) 
						   used = used + 1

						elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
							GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CLIP_02"))  
							 ESX.ShowNotification(_U('equip')) 
							   used = used + 1		
							elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
								GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CLIP_02"))  
								 ESX.ShowNotification(_U('equip')) 
								   used = used + 1	   


		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_COMBATPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
					used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  		 	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
		  			used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_VINTAGEPISTOL_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
		  		  	used = used + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
		  		 	used = used + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
				

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_SPECIALCARBINE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPRIFLE"), GetHashKey("COMPONENT_BULLPUPRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSHOTGUN"), GetHashKey("COMPONENT_ASSAULTSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYSHOTGUN"), GetHashKey("COMPONENT_HEAVYSHOTGUN_CLIP_02"))  
				    ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_BULLPUPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_BULLPUPSHOTGUN"), GetHashKey("COMPONENT_BULLPUPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip'))  
	used = used + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_MARKSMANRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MARKSMANRIFLE"), GetHashKey("COMPONENT_MARKSMANRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNIPERRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNIPERRIFLE"), GetHashKey("COMPONENT_SNIPERRIFLE_CLIP_02"))  
		  		  ESX.ShowNotification(_U('equip')) 
	used = used + 1
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
			else
				ESX.ShowNotification(_U('error2'))  

		end
end)
				local used2 = 0

RegisterNetEvent('esx_attachments_bleiker:Compensator')
AddEventHandler('esx_attachments_bleiker:Compensator', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local Compensator = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'Compensator' then
						Compensator = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used2 <= Compensator then
						print('used2')

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP"))  
				   ESX.ShowNotification(_U('equip'))  
		  		 	used2 = used2 + 1
		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_COMP_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used2 = used2 + 1
		  		

		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)
				local used3 = 0

RegisterNetEvent('esx_attachments_bleiker:pistolscope')
AddEventHandler('esx_attachments_bleiker:pistolscope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local pistolscope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'pistolscope' then
						pistolscope = inventory[i].count
					  end
					end
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used3 <= pistolscope then

			
			if currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_RAIL"))  
				   ESX.ShowNotification(_U('equip')) 
		  				used3 = used3 + 1


		  	elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_PI_RAIL_02"))  
				   ESX.ShowNotification(_U('equip')) 
	used3 = used3 + 1
		  		
		  		
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  
		end
end)

				local used4 = 0

RegisterNetEvent('esx_attachments_bleiker:goldskin')
AddEventHandler('esx_attachments_bleiker:goldskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local goldskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'goldskin' then
						goldskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used4 <= goldskin then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_PISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
		  		 	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
				
		  	elseif currentWeaponHash == GetHashKey("WEAPON_APPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_APPISTOL"), GetHashKey("COMPONENT_APPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_SMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		 

		  	elseif currentWeaponHash == GetHashKey("WEAPON_MICROSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_MICROSMG"), GetHashKey("COMPONENT_MICROSMG_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
				


		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_ASSAULTRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_PUMPSHOTGUN_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip'))  
used4 = used4 + 1

elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
	GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_ASSAULTSMG_VARMOD_LOWRIDER"))  
	ESX.ShowNotification(_U('equip')) 
used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_CARBINERIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
	used4 = used4 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_ADVANCEDRIFLE_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip'))  
	used4 = used4 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used5 = 0

RegisterNetEvent('esx_attachments_bleiker:riflescope')
AddEventHandler('esx_attachments_bleiker:riflescope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local riflescope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'riflescope' then
						riflescope = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used5 <= riflescope then

			if currentWeaponHash == GetHashKey("WEAPON_SMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO_02"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip'))  
				   used5 = used5 + 1
				
		  		 
		  	elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MACRO"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1

		  	elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
		  		
		  	elseif currentWeaponHash == GetHashKey("WEAPON_ADVANCEDRIFLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ADVANCEDRIFLE"), GetHashKey("COMPONENT_AT_SCOPE_SMALL"))  
				   ESX.ShowNotification(_U('equip')) 
				   used5 = used5 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used5 = used5 + 1
		  		
		  	
		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used6 = 0

RegisterNetEvent('esx_attachments_bleiker:butterflyskin')
AddEventHandler('esx_attachments_bleiker:butterflyskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local butterflyskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'butterflyskin' then
						butterflyskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used6 <= butterflyskin then

			if currentWeaponHash == GetHashKey("WEAPON_SWITCHBLADE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SWITCHBLADE"), GetHashKey("COMPONENT_SWITCHBLADE_VARMOD_VAR1"))  
				   ESX.ShowNotification(_U('equip')) 
				   used6 = used6 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used7 = 0

RegisterNetEvent('esx_attachments_bleiker:loveknuckleskin')
AddEventHandler('esx_attachments_bleiker:loveknuckleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local loveknuckleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'loveknuckleskin' then
						loveknuckleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used7 <= loveknuckleskin then

			if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_LOVE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used7 = used7 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used8 = 0

RegisterNetEvent('esx_attachments_bleiker:mediumscope')
AddEventHandler('esx_attachments_bleiker:mediumscope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local mediumscope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'mediumscope' then
						mediumscope = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used8 <= mediumscope then

			if currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SCOPE_SMALL_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used8 = used8 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used9 = 0

RegisterNetEvent('esx_attachments_bleiker:largescope')
AddEventHandler('esx_attachments_bleiker:largescope', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local largescope = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'largescope' then
						largescope = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used9 <= largescope then

			if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
				   ESX.ShowNotification(_U('equip')) 
				   used9 = used9 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SCOPE_MEDIUM_MK2"))  
					ESX.ShowNotification(_U('equip')) 
					used9 = used9 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used10 = 0

RegisterNetEvent('esx_attachments_bleiker:holosight')
AddEventHandler('esx_attachments_bleiker:holosight', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local holosight = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'holosight' then
						holosight = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used10 <= holosight then

			if currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_SIGHTS_SMG"))  
				   ESX.ShowNotification(_U('equip')) 
				   used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip'))  
					used10 = used10 + 1

				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_SIGHTS"))  
					ESX.ShowNotification(_U('equip')) 
					used10 = used10 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used11 = 0

RegisterNetEvent('esx_attachments_bleiker:platinumpistolskin')
AddEventHandler('esx_attachments_bleiker:platinumpistolskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local platinumpistolskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'platinumpistolskin' then
						platinumpistolskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used11 <= platinumpistolskin then

			if currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_PISTOL50_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used11 = used11 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used12 = 0

RegisterNetEvent('esx_attachments_bleiker:woodheavypistolskin')
AddEventHandler('esx_attachments_bleiker:woodheavypistolskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local woodheavypistolskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'woodheavypistolskin' then
						woodheavypistolskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used12 <= woodheavypistolskin then

			if currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_HEAVYPISTOL_VARMOD_LUXE"))  
				   ESX.ShowNotification(_U('equip')) 
				   used12 = used12 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used13 = 0

RegisterNetEvent('esx_attachments_bleiker:woodrifleskin')
AddEventHandler('esx_attachments_bleiker:woodrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local woodrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'woodrifleskin' then
						woodrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used13 <= woodrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_03"))  
				   ESX.ShowNotification(_U('equip')) 
				   used13 = used13 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip'))  
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_03"))  
					ESX.ShowNotification(_U('equip')) 
					used13 = used13 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used14 = 0

RegisterNetEvent('esx_attachments_bleiker:skullrifleskin')
AddEventHandler('esx_attachments_bleiker:skullrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local skullrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'skullrifleskin' then
						skullrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used14 <= skullrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_04"))  
				   ESX.ShowNotification(_U('equip')) 
				   used14 = used14 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip'))  
					used14 = used14 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_04"))  
					ESX.ShowNotification(_U('equip')) 
					used14 = used14 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))   

		end
end)

local used15 = 0

RegisterNetEvent('esx_attachments_bleiker:zebrarifleskin')
AddEventHandler('esx_attachments_bleiker:zebrarifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local zebrarifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'zebrarifleskin' then
						zebrarifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used15 <= zebrarifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_08"))  
				   ESX.ShowNotification(_U('equip')) 
				   used15 = used15 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip'))  
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_08"))  
					ESX.ShowNotification(_U('equip')) 
					used15 = used15 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used16 = 0

RegisterNetEvent('esx_attachments_bleiker:boomrifleskin')
AddEventHandler('esx_attachments_bleiker:boomrifleskin', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local boomrifleskin = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'boomrifleskin' then
						boomrifleskin = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used16 <= boomrifleskin then

			if currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
		  		 GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_SNSPISTOL_MK2_CAMO_10"))  
				   ESX.ShowNotification(_U('equip')) 
				   used16 = used16 + 1

				   elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_PISTOL_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip'))  
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_SMG_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN_MK2"), GetHashKey("COMPONENT_PUMPSHOTGUN_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_SPECIALCARBINE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_ASSAULTRIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_CARBINERIFLE_MK2_CAMO_10"))  
					ESX.ShowNotification(_U('equip')) 
					used16 = used16 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used17 = 0

RegisterNetEvent('esx_attachments_bleiker:muzzlebrake')
AddEventHandler('esx_attachments_bleiker:muzzlebrake', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local muzzlebrake = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'muzzlebrake' then
						muzzlebrake = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used17 <= muzzlebrake then
				if currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1
				elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_MUZZLE_02"))  
					ESX.ShowNotification(_U('equip')) 
					used17 = used17 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used18 = 0

RegisterNetEvent('esx_attachments_bleiker:pimpknuckles')
AddEventHandler('esx_attachments_bleiker:pimpknuckles', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local pimpknuckles = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'pimpknuckles' then
						pimpknuckles = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used18 <= pimpknuckles then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PIMP"))  
					ESX.ShowNotification(_U('equip')) 
					used18 = used18 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used19 = 0

RegisterNetEvent('esx_attachments_bleiker:ballasknuckle')
AddEventHandler('esx_attachments_bleiker:ballasknuckle', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local ballasknuckle = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'ballasknuckle' then
						ballasknuckle = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used19 <= ballasknuckle then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_BALLAS"))  
					ESX.ShowNotification(_U('equip')) 
					used19 = used19 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used20 = 0

RegisterNetEvent('esx_attachments_bleiker:dollarknuckle')
AddEventHandler('esx_attachments_bleiker:dollarknuckle', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local dollarknuckle = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'dollarknuckle' then
						dollarknuckle = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used20 <= dollarknuckle then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DOLLAR"))  
					ESX.ShowNotification(_U('equip')) 
					used20 = used20 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used21 = 0

RegisterNetEvent('esx_attachments_bleiker:diamondknuckle')
AddEventHandler('esx_attachments_bleiker:diamondknuckle', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local diamondknuckle = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'diamondknuckle' then
						diamondknuckle = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used21 <= diamondknuckle then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_DIAMOND"))  
					ESX.ShowNotification(_U('equip')) 
					used21 = used21 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)



local used22 = 0

RegisterNetEvent('esx_attachments_bleiker:hateknuckles')
AddEventHandler('esx_attachments_bleiker:hateknuckles', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local hateknuckles = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'hateknuckles' then
						hateknuckles = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used22 <= hateknuckles then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_HATE"))  
					ESX.ShowNotification(_U('equip'))  
					used22 = used22 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used23 = 0

RegisterNetEvent('esx_attachments_bleiker:kastetplayer')
AddEventHandler('esx_attachments_bleiker:kastetplayer', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local kastetplayer = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'kastetplayer' then
						kastetplayer = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used23 <= kastetplayer then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_PLAYER"))  
					ESX.ShowNotification(_U('equip')) 
					used23 = used23 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)


local used24 = 0

RegisterNetEvent('esx_attachments_bleiker:vagosknuckles')
AddEventHandler('esx_attachments_bleiker:vagosknuckles', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local vagosknuckles = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'vagosknuckles' then
						vagosknuckles = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used24 <= vagosknuckles then
				if currentWeaponHash == GetHashKey("WEAPON_KNUCKLE") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_KNUCKLE"), GetHashKey("COMPONENT_KNUCKLE_VARMOD_VAGOS"))  
					ESX.ShowNotification(_U('equip')) 
					used24 = used24 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used25 = 0

RegisterNetEvent('esx_attachments_bleiker:grip')
AddEventHandler('esx_attachments_bleiker:grip', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local grip = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'grip' then
						grip = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used25 <= grip then
				if currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
					ESX.ShowNotification(_U('equip')) 
					used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_AFGRIP"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_AFGRIP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used25 = used25 + 1

		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used26 = 0

RegisterNetEvent('esx_attachments_bleiker:Suppressor')
AddEventHandler('esx_attachments_bleiker:Suppressor', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local Suppressor = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'Suppressor' then
						Suppressor = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used26 <= Suppressor then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
					ESX.ShowNotification(_U('equip')) 
					used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_VINTAGEPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_VINTAGEPISTOL"), GetHashKey("COMPONENT_AT_PI_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP_02"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_SUPP"))  
						ESX.ShowNotification(_U('equip')) 
						used26 = used26 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)

local used27 = 0

RegisterNetEvent('esx_attachments_bleiker:flashlight')
AddEventHandler('esx_attachments_bleiker:flashlight', function(duration)
					local inventory = ESX.GetPlayerData().inventory
				local flashlight = 0
					for i=1, #inventory, 1 do
					  if inventory[i].name == 'flashlight' then
						flashlight = inventory[i].count
					  end
					end
					
    local ped = PlayerPedId()
    local currentWeaponHash = GetSelectedPedWeapon(ped)
		if used27 <= flashlight then
				if currentWeaponHash == GetHashKey("WEAPON_PISTOL") then
					GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
					ESX.ShowNotification(_U('equip')) 
					used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL50") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL50"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_HEAVYPISTOL") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_HEAVYPISTOL"), GetHashKey("COMPONENT_AT_PI_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SNSPISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SNSPISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_03"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PISTOL_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PISTOL_MK2"), GetHashKey("COMPONENT_AT_PI_FLSH_02"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTSMG") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTSMG"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SMG_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SMG_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_COMBATPDW") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_COMBATPDW"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_PUMPSHOTGUN") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_PUMPSHOTGUN"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_SPECIALCARBINE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_SPECIALCARBINE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_ASSAULTRIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_ASSAULTRIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1
					elseif currentWeaponHash == GetHashKey("WEAPON_CARBINERIFLE_MK2") then
						GiveWeaponComponentToPed(GetPlayerPed(-1), GetHashKey("WEAPON_CARBINERIFLE_MK2"), GetHashKey("COMPONENT_AT_AR_FLSH"))  
						ESX.ShowNotification(_U('equip')) 
						used27 = used27 + 1


		  	else 
				ESX.ShowNotification(_U('error1')) 
		  		
			end
		else
			ESX.ShowNotification(_U('error2'))  

		end
end)
