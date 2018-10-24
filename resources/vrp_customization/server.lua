local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

RegisterServerEvent('selectCharacter')
RegisterServerEvent('saveCharacter')

AddEventHandler('selectCharacter', function(args)
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
 
AddEventHandler('saveCharacter', function(superString)
	local user_id = vRP.getUserId({source})
	vRP.setUData({user_id, "vRP:customization", superString})
end)
