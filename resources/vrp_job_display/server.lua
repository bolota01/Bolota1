local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_job_display")

local cfg = module("vrp_job_display", "cfg/display")

-- job display
AddEventHandler("vRP:playerSpawn",function(user_id, source, first_spawn)
  if first_spawn then
    -- add job display
    local job_name = vRP.getUserGroupByType({user_id,"job"})

    if job_name == nil or job_name == "" then
      job_name = "Nenhum"
    end

    vRPclient.setDiv(source,{"job",cfg.display_css,"<div class=\"icon-work\"> </div><div class=\"icon-inline\">  " ..job_name.. "</div>"})
  end
end)

-- update display
AddEventHandler("vRP:playerJoinGroup", function(user_id, group, gtype)
  local player = vRP.getUserSource({user_id})
  if gtype == "job" then 
	vRPclient.setDivContent(player,{"job","<div class=\"icon-work\"> </div><div class=\"icon-inline\">  " ..group.. "</div>"})
  end
end)