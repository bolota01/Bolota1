local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vrp_dvcar")

AddEventHandler('chatMessage', function(source, name, msg)
	if msg == "/dv" then
	  local user_id = vRP.getUserId({source})
	  local player = vRP.getUserSource({user_id})
	  if vRP.hasGroup({user_id,"superadmin849516203"}) then
		CancelEvent();
		TriggerClientEvent('wk:deleteVehicle', source);
	  elseif vRP.hasGroup({user_id,"admin849516203"}) then
		CancelEvent();
		TriggerClientEvent('wk:deleteVehicle', source);
	  elseif vRP.hasGroup({user_id,"moderador849516203"}) then
		CancelEvent();
		TriggerClientEvent('wk:deleteVehicle', source);
		elseif vRP.hasGroup({user_id,"Capitão"}) then
		CancelEvent();
		TriggerClientEvent('wk:deleteVehicle', source);
		elseif vRP.hasGroup({user_id,"Coronel"}) then
		CancelEvent();
		TriggerClientEvent('wk:deleteVehicle', source);
		elseif vRP.hasGroup({user_id,"Comandante Geral"}) then
		CancelEvent();
		TriggerClientEvent('wk:deleteVehicle', source);
	  end
	end
end)