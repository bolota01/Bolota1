local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_customization")

RegisterServerEvent('selectCharacter')
RegisterServerEvent('saveCharacter')

AddEventHandler('selectCharacter', function()
	local user_id = vRP.getUserId({source})
	local mySource = source

	vRP.getUData({user_id, "vRP:customization", function(value_t)
		if value_t ~= "" then
			TriggerClientEvent('loadCharacter', mySource, value_t)
		else
			TriggerClientEvent('createCharacter', mySource)
		end
	end})
end)
 
AddEventHandler('saveCharacter', function(superString, barber)
	local user_id = vRP.getUserId({source})
	TriggerClientEvent('stopHide', source)
	vRP.setUData({user_id, "vRP:customization", superString})

	if not barber then
		vRPclient.teleport(source,{-1037.7828369141,-2737.9025878906,20.169273376465})
	end
end)
