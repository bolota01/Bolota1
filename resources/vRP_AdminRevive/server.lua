--#####################################################--
--               SCRIPT MADE BY TERBIUM                --
--#####################################################--

local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_AdminRevive")

local groups = {"super8495admin", "8495admin"};

AddEventHandler('chatMessage', function(source, name, msg)
	if msg == "/revive" or msg == "/REVIVE" or msg == "/heal" or msg == "/HEAL" then
	  local user_id = vRP.getUserId({source})
	  local player = vRP.getUserSource({user_id})
	  for k,v in ipairs(groups) do
		if vRP.hasGroup({user_id,v}) then
	  		vRPclient.varyHealth(player,{100})
         end
	  end
	end
end)