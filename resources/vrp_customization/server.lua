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
 
AddEventHandler('saveCharacter', function(superString, barber, charge)
	local user_id = vRP.getUserId({source})
	TriggerClientEvent('stopHide', source)

	if not barber then
		vRPclient.teleport(source,{-1037.7828369141,-2737.9025878906,20.169273376465})
	else
		if charge then 
			if vRP.tryPayment({user_id, 200}) then
				TriggerClientEvent('customizationPaid', source, true, superString)
				vRPclient.notify(source, {"Pago ~r~R$200"})
			else
				TriggerClientEvent('customizationPaid', source, false, superString)
				vRPclient.notify(source, {"~r~Você não tem dinheiro suficiente!"})
				return
			end
		end
	end

	vRP.setUData({user_id, "vRP:customization", superString})
end)
