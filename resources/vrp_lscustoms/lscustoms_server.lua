--[[
Los Santos Customs V1.1 
Credits - MythicalBro
/////License/////
Do not reupload/re release any part of this script without my permission
]]
MySQL = module("vrp_mysql", "MySQL")
local Proxy = module("vrp", "lib/Proxy")
local Tunnel = module("vrp", "lib/Tunnel")
--local json = module("vrp", "lib/dkjson")

local vRP = Proxy.getInterface("vRP")
local vRPclient = Tunnel.getInterface("vRP", "vrp_lscustoms")

MySQL.createCommand("vRP/ls_sveh", "UPDATE vrp_user_vehicles SET upgrades=@upgrades WHERE user_id=@id AND vehicle=@veh")

local tbl = {
	[1] = {locked = false, player = nil},
	[2] = {locked = false, player = nil},
	[3] = {locked = false, player = nil},
	[4] = {locked = false, player = nil},
	[5] = {locked = false, player = nil},
	[6] = {locked = false, player = nil},
}

RegisterServerEvent('lockGarage')
AddEventHandler('lockGarage', function(b,garage)
	tbl[tonumber(garage)].locked = b
	if not b then
		tbl[tonumber(garage)].player = nil
	else
		tbl[tonumber(garage)].player = source
	end
	TriggerClientEvent('lockGarage',-1,tbl)
	--print(json.encode(tbl))
end)

RegisterServerEvent('getGarageInfo')
AddEventHandler('getGarageInfo', function()
	TriggerClientEvent('lockGarage',-1,tbl)
	--print(json.encode(tbl))
end)

AddEventHandler('playerDropped', function()
	for i,g in pairs(tbl) do
		if g.player then
			if source == g.player then
				g.locked = false
				g.player = nil
				TriggerClientEvent('lockGarage',-1,tbl)
			end
		end
	end
end)

RegisterServerEvent("LSC:buttonSelected")
AddEventHandler("LSC:buttonSelected", function(name, button)
	local user_id = vRP.getUserId({source})

	if button.price then
		local paid = vRP.tryFullPayment({user_id, button.price})
		TriggerClientEvent(
			"LSC:buttonSelected", source, name, button, paid)
		if paid then
			vRPclient.notify(source, {"Pago ~r~R$"..button.price})
		end
	end
end)

RegisterServerEvent("LSC:finished")
AddEventHandler("LSC:finished", function(veh, vehModel)
	local user_id = vRP.getUserId({source})

	vRPclient.getNearestOwnedVehicle(source, {1}, function(vtype, result, name)
		--print(name)
		if result then
			MySQL.query(
				"vRP/ls_sveh", {id=user_id, upgrades=json.encode(veh), veh=name})
		end
	end)
end)
