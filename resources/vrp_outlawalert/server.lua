local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")

local permission = "police.menu_interaction"

function sendMessage(event, ...)
	local users = vRP.getUsersByPermission({permission})
	for l, w in pairs(users) do
		local player = vRP.getUserSource({w})
		TriggerClientEvent(event, player, ...)
	end
end

RegisterServerEvent('thiefInProgress')
AddEventHandler('thiefInProgress', function(street1, street2, veh, sex)
	if veh == "NULL" then
		sendMessage("outlawNotify", "~r~Roubo de carro por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
	else
		sendMessage("outlawNotify", "~r~Roubo de um Veiculo modelo ~w~"..veh.." ~r~por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
	end
end)

RegisterServerEvent('thiefInProgressS1')
AddEventHandler('thiefInProgressS1', function(street1, veh, sex)
	if veh == "NULL" then
		sendMessage("outlawNotify", "~r~Roubo de carro por um ~w~"..sex.." ~r~na ~w~"..street1)
	else
		sendMessage("outlawNotify", "~r~Roubo de um ~w~"..veh.." ~r~por um ~w~"..sex.." ~r~na ~w~"..street1)
	end
end)

RegisterServerEvent('meleeInProgress')
AddEventHandler('meleeInProgress', function(street1, street2, sex)
	sendMessage("outlawNotify", "~r~Briga iniciada por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
end)

RegisterServerEvent('meleeInProgressS1')
AddEventHandler('meleeInProgressS1', function(street1, sex)
	sendMessage("outlawNotify", "~r~Briga iniciada por um ~w~"..sex.." ~r~na ~w~"..street1)
end)


RegisterServerEvent('gunshotInProgress')
AddEventHandler('gunshotInProgress', function(street1, street2, sex)
	sendMessage("outlawNotify", "~r~Disparo de arma de fogo por um ~w~"..sex.." ~r~entre ~w~"..street1.."~r~ e ~w~"..street2)
end)

RegisterServerEvent('gunshotInProgressS1')
AddEventHandler('gunshotInProgressS1', function(street1, sex)
	sendMessage("outlawNotify", "~r~Disparo de arma de fogo por um ~w~"..sex.." ~r~na ~w~"..street1)
end)

RegisterServerEvent('thiefInProgressPos')
AddEventHandler('thiefInProgressPos', function(tx, ty, tz)
	sendMessage('thiefPlace', tx, ty, tz)
end)

RegisterServerEvent('gunshotInProgressPos')
AddEventHandler('gunshotInProgressPos', function(gx, gy, gz)
	sendMessage('gunshotPlace', gx, gy, gz)
end)

RegisterServerEvent('meleeInProgressPos')
AddEventHandler('meleeInProgressPos', function(mx, my, mz)
	sendMessage('meleePlace', mx, my, mz)
end)