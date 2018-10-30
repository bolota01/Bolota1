local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_VehicleScrap")

local scrapprices = {
	{id = 0, price = 300}, --compacts
	{id = 1, price = 300}, --sedans
	{id = 2, price = 300}, --SUV's
	{id = 3, price = 300}, --coupes
	{id = 4, price = 300}, --muscle
	{id = 5, price = 300}, --sport classic
	{id = 6, price = 300}, --sport
	{id = 7, price = 300}, --super
	{id = 8, price = 200}, --motorcycle
	{id = 9, price = 300}, --offroad
	{id = 10, price = 300}, --industrial
	{id = 11, price = 300}, --utility
	{id = 12, price = 300}, --vans
	{id = 13, price = 100}, --bicycles
	{id = 14, price = 300}, --boats
	{id = 15, price = 300}, --helicopter
	{id = 16, price = 300}, --plane
	{id = 17, price = 300}, --service
	{id = 18, price = 400}, --emergency
	{id = 19, price = 400}, --military
	{id = 20, price = 300} --commercial
}



-- GROUPS
-- WHO HAVE ACCESS TO SCRAP VEHICLES
local groups = {"Mechanic"}


RegisterServerEvent("scrap:getVehPrice")
AddEventHandler("scrap:getVehPrice", function(class)
	for k, price in pairs(scrapprices) do
		if class == price.id then
			vehPrice = price.price
			TriggerClientEvent("setVehPrice", -1, vehPrice)
		end
	end
end)

RegisterServerEvent("scrap:SellVehicle")
AddEventHandler("scrap:SellVehicle", function(vehPrice, vehModel)
	local user_id = vRP.getUserId({source})
	local player = vRP.getUserSource({user_id})
    vRP.giveBankMoney({user_id,vehPrice})
end)

RegisterServerEvent('scrap:Mechanic')
AddEventHandler('scrap:Mechanic', function(triggerevent)
    local user_id = vRP.getUserId({source})
    local player = vRP.getUserSource({user_id})
    if vRP.hasPermission({user_id,"vehicle.repair"}) then
		TriggerClientEvent(triggerevent, source)
	else
		vRPclient.notify(player,{"Você não é um mecânico!"})
	end
end)
