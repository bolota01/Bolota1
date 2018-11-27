
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
local Lang = module("vrp", "lib/Lang")
local cfg = module("vrp_basic_mission", "cfg/missions")

-- load global and local languages
local glang = Lang.new(module("vrp", "cfg/lang/"..cfg.lang) or {})
local lang = Lang.new(module("vrp_basic_mission", "cfg/lang/"..cfg.lang) or {})

vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP","vRP_basic_mission")
Mclient = Tunnel.getInterface("vRP_basic_mission","vRP_basic_mission")

local tasks_pendent = {}

function task_mission()
  -- REPAIR
  for k,v in pairs(cfg.repair) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = lang.repair({v.title})
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.title.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  if vRP.tryGetInventoryItem({user_id,"repairkit",1,false}) then
                    --vRPclient.playAnim(player,{false,{task="WORLD_HUMAN_WELDING"},false})
                    vRPclient.notify(player,{"Entregando as ferramentas, aguarde alguns segundos."})
                    tasks_pendent[user_id] = true
                    SetTimeout(8000, function()
                      tasks_pendent[user_id] = nil
                      vRP.nextMissionStep({player})
                      --vRP.giveInventoryItem({user_id,"repairkit",1,false})
                      vRPclient.stopAnim(player,{false})

                      -- last step
                      if i == v.steps then
                        vRP.giveMoney({user_id,v.reward})
                        vRPclient.notify(player,{glang.money.received({v.reward})})
                      end
                    end)
                  end
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end

   -- bankdriver
  for k,v in pairs(cfg.bankdriver) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.title.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  if vRP.tryGetInventoryItem({user_id,"bank_money",1,true}) then
                    tasks_pendent[user_id] = true
                    vRPclient.playAnim(player,{false,{task="CODE_HUMAN_POLICE_INVESTIGATE"},false})
                    SetTimeout(15000, function()
                      tasks_pendent[user_id] = nil
                      vRP.nextMissionStep({player})
                      vRPclient.stopAnim(player,{false})

                      -- last step
                      if i == v.steps then
                        vRP.giveMoney({user_id,v.reward})
                        vRPclient.notify(player,{glang.money.received({v.reward})})
                      end
                    end)
                  end
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end
 
  --GARI
  for k,v in pairs(cfg.gari) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player})  then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.text.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  Mclient.freezePedVehicle(player,{true})
                  vRPclient.notify(player,{"Coletando o lixo, aguarde alguns segundos."})
                  tasks_pendent[user_id] = true
                  SetTimeout(5000, function()
                    tasks_pendent[user_id] = nil
                    vRP.nextMissionStep({player})
					          Mclient.freezePedVehicle(player,{false})

                    -- last step
                    if i == v.steps then
                      vRP.giveInventoryItem({user_id,"saco_lixo",1,false})
                      vRPclient.notify(player,{"Acabou o lixo por aqui! ~n~Já, já terá mais, aguarde um minutinho"})
					          else
                      vRPclient.notify(player,{"Recolha o lixo."})
                    end
                  end)
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end
  -- Correios
  for k,v in pairs(cfg.correio) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.text.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  if vRP.tryGetInventoryItem({user_id,"encomenda",1,true}) then
                    tasks_pendent[user_id] = true
                    SetTimeout(4000, function()
                      tasks_pendent[user_id] = nil
                    vRPclient.notify(player,{"Entregando as encomendas, aguarde alguns segundos."})
                      vRP.nextMissionStep({player})
                      Mclient.freezePedVehicle(player,{false})

                      -- last step
                      if i == v.steps then
                        vRP.giveMoney({user_id,v.reward})
                        vRPclient.notify(player,{glang.money.received({v.reward})})
                        vRPclient.notify(player,{"Acabaram as encomendas por aqui! ~n~Já, já terá mais, aguarde alguns minutos"})
                      else
                        vRPclient.notify(player,{"Entregue as encomendas!"})
                      end
                    end)
                  end
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end
  -- DELIVERY
  for k,v in pairs(cfg.delivery) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = lang.delivery.title()

          -- generate items
          local todo = 0
          local delivery_items = {}
          for idname,data in pairs(v.items) do
           local amount = math.random(data[1],data[2])
            if amount > 0 then
              delivery_items[idname] = amount
              todo = todo+1
            end
          end

          local step = {
            text = "",
            onenter = function(player, area)
              for idname,amount in pairs(delivery_items) do
                if amount > 0 then -- check if not done
                  if vRP.tryGetInventoryItem({user_id,idname,amount,true}) then
                    local reward = v.items[idname][3]*amount
	                 if k == "mission.delivery.pot" or k == "entrega.tartaruga" or k== "mission.delivery.cartoes" or k=="mission.delivery.pot2" or k=="mission.delivery.weed" or k=="mission.delivery.cocaina" or k== "mission.delivery.metanfetamina" or k=="mission.delivery.pot3" or k == "mission.delivery.card" or k=="vender.drogas.maconha" or k=="vender.drogas.cocaina" or k=="vender.drogas.metanfetamina" then
					  vRP.giveInventoryItem({user_id,"dirty_money",reward,true})
                      vRPclient.notify(player,{"Você recebeu ~r~$ ".. reward .."~w~ de dinheiro sujo pelo seu trabalho."})
                      vRPclient.notify(player,{"~h~Aguarde um minuto para um novo serviço."})
					else
                      vRP.giveMoney({user_id,reward})
                      vRPclient.notify(player,{glang.money.received({reward})})
                      vRPclient.notify(player,{"~h~Aguarde um minuto para um novo serviço."})
					end
                    todo = todo-1
                    delivery_items[idname] = 0
                    if todo == 0 then -- all received, finish mission
                      vRP.nextMissionStep({player})
                    end
                  end
                end
              end
            end,
            position = v.positions[math.random(1,#v.positions)]
          }

          -- mission display
          for idname,amount in pairs(delivery_items) do
            local name = vRP.getItemName({idname})
            step.text = step.text..lang.delivery.item({name,amount}).."<br />"
          end

          mdata.steps = {step}

          if todo > 0 then
            vRP.startMission({player,mdata})
          end
        end
      end
    end
  end
  
  -- CARJACKER
  for k,v in pairs(cfg.carjack) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
	  local reward = math.random(v.min_reward,v.max_reward)
      local user_id = w
      local player = vRP.getUserSource({user_id})
	  	  
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.carjack().."<br />"..lang.reward({reward}),
              onenter = function(player, area)
			    Mclient.isInAnyVehicle(player,{},function(in_veh)
			      if in_veh then
				   Mclient.getVehiclePedIsInPlateText(player,{}, function(plate)
				    vRP.getUserIdentity({user_id, function(identity)
                      if string.find(plate, identity.registration) then
                        vRPclient.notify(player,{lang.own_veh()})
				      else
                        Mclient.freezePedVehicle(player,{true})
					    vRP.giveInventoryItem({user_id,"dirty_money",reward,true})
						vRPclient.notify(player,{"~r~~h~Saia do local com o dinheiro e aguarde um novo chamado, obrigado!"})
				        vRPclient.deleteVehiclePedIsIn(player,{})
                        vRP.nextMissionStep({player})
					  end
                    end})
				   end)
				  else
				    vRPclient.notify(player,{lang.no_veh()})
				  end
			    end)
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
		end
	  end
    end
  end
  
  -- GUNRUNNER
  for k,v in pairs(cfg.gunrunner) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      local pistol = math.random(0,2)
	  local shotgun = math.random(-1,2)
	  local smg = math.random(-2,2)
	  	  
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.shipment(),
              onenter = function(player, area)
				if pistol > 0 then
			      vRP.giveInventoryItem({user_id,"pistol_parts",pistol,true})
			      vRP.giveInventoryItem({user_id,"wammo|WEAPON_PISTOL",math.random(50,200)*pistol,true})
				end
				if shotgun > 0 then
			      vRP.giveInventoryItem({user_id,"shotgun_parts",shotgun,true})
			      vRP.giveInventoryItem({user_id,"wammo|WEAPON_PUMPSHOTGUN",math.random(50,100)*shotgun,true})
				end
				if smg > 0 then
			      vRP.giveInventoryItem({user_id,"smg_parts",smg,true})
			      vRP.giveInventoryItem({user_id,"wammo|WEAPON_SMG",math.random(100,200)*smg,true})
				end
                vRP.nextMissionStep({player})
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
		end
	  end
    end
  end
  
  -- EMERGENCY
  for k,v in pairs(cfg.emergency) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = lang.transfer().."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  if vRP.tryGetInventoryItem({user_id,"medkit",1,false}) then
                    tasks_pendent[user_id] = true
                    Mclient.freezePedVehicle(player,{true})
                    vRPclient.notify(player,{"Aguarde até que o paciente entre."})
                    SetTimeout(10000, function()
                      tasks_pendent[user_id] = nil
                      vRP.nextMissionStep({player})
                      vRP.giveInventoryItem({user_id,"medkit",1,false})
                      Mclient.freezePedVehicle(player,{false})

                      -- last step
                      if i == v.steps then
                        vRP.giveBankMoney({user_id,v.reward})
                        vRPclient.notify(player,{glang.money.received({v.reward})})
                        vRPclient.notify(player,{"Por enquanto é isso!"})
                      else
                        vRPclient.notify(player,{"Ele está dentro! Leve-o para o próximo hospital!"})
                      end
                    end)
                  end
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end
  
  -- POLICE
  for k,v in pairs(cfg.police) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.text.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  tasks_pendent[user_id] = true
                  Mclient.freezePedVehicle(player,{true})
                  vRPclient.notify(player,{"Aguarde alguns segundos."})
                  SetTimeout(10000, function()
                    tasks_pendent[user_id] = nil
                    vRP.nextMissionStep({player})
					          Mclient.freezePedVehicle(player,{false})

                    -- last step
                    if i == v.steps then
                      vRP.giveBankMoney({user_id,v.reward})
                      vRPclient.notify(player,{glang.money.received({v.reward})})
                      vRPclient.notify(player,{"Por enquanto é isso!"})
				          	else
                      vRPclient.notify(player,{"Tudo bom! Vá para o próximo local!"})
                    end
                  end)
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end
  
  -- DELEGADA
  for k,v in pairs(cfg.delegada) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.text.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  tasks_pendent[user_id] = true
                  Mclient.freezePedVehicle(player,{true})
                  vRPclient.notify(player,{"Recolhendo fichas criminais..."})
                  SetTimeout(10000, function()
                    tasks_pendent[user_id] = nil
                    vRP.nextMissionStep({player})
					          Mclient.freezePedVehicle(player,{false})

                    -- last step
                    if i == v.steps then
                      vRP.giveBankMoney({user_id,v.reward})
                      vRPclient.notify(player,{glang.money.received({v.reward})})
                      vRPclient.notify(player,{"Todas as fichas criminais foram coletadas!"})
				          	else
                      vRPclient.notify(player,{"Fichas criminais coletadas! Vá para o próximo local!"})
                    end
                  end)
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end

  -- JORNALISTA
  for k,v in pairs(cfg.jornal) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.text.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  tasks_pendent[user_id] = true
                  Mclient.freezePedVehicle(player,{true})
                  vRPclient.notify(player,{"Recolhendo informações para as matérias..."})
                  SetTimeout(10000, function()
                    tasks_pendent[user_id] = nil
                    vRP.nextMissionStep({player})
                    Mclient.freezePedVehicle(player,{false})

                    -- last step
                    if i == v.steps then
                      vRP.giveBankMoney({user_id,v.reward})
                      vRPclient.notify(player,{glang.money.received({v.reward})})
                      vRPclient.notify(player,{"Todas as informações para as matérias foram coletadas!"})
                    else
                      vRPclient.notify(player,{"Informações para as matérias coletadas! Vá para o próximo local!"})
                    end
                  end)
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end

  -- ADVOGADO
  for k,v in pairs(cfg.advogado) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player}) then
        if math.random(1,v.chance) == 1 then -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.text.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  tasks_pendent[user_id] = true
                  Mclient.freezePedVehicle(player,{true})
                  vRPclient.notify(player,{"Recolhendo os processos."})
                  SetTimeout(5000, function()
                    tasks_pendent[user_id] = nil
                    vRP.nextMissionStep({player})
                    Mclient.freezePedVehicle(player,{false})

                    -- last step
                    if i == v.steps then
                      vRP.giveBankMoney({user_id,v.reward})
                      vRPclient.notify(player,{glang.money.received({v.reward})})
                      vRPclient.notify(player,{"Todos os processos foram coletados!"})
                    else
                      vRPclient.notify(player,{"Processos coletados! Vá para o próximo local!"})
                    end
                  end)
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end
  
  -- UBER
  for k,v in pairs(cfg.UBER) do -- each repair perm def
    -- add missions to users
    local users = vRP.getUsersByPermission({k})
    for l,w in pairs(users) do
      local user_id = w
      local player = vRP.getUserSource({user_id})
      if not vRP.hasMission({player})  then
        if math.random(1,v.chance) == 1 then -- chance check -- chance check
          -- build mission
          local mdata = {}
          mdata.name = v.title
          mdata.steps = {}

          -- build steps
          for i=1,v.steps do
            local step = {
              text = v.text.."<br />"..lang.reward({v.reward}),
              onenter = function(player, area)
                if tasks_pendent[user_id] == nil then
                  tasks_pendent[user_id] = true
                  Mclient.freezePedVehicle(player,{true})
                  vRPclient.notify(player,{"~b~~h~Aguarde o passageiro..."})
                  SetTimeout(5000, function()
                    tasks_pendent[user_id] = nil
                    vRP.nextMissionStep({player})
					          Mclient.freezePedVehicle(player,{false})

                    -- last step
                    if i == v.steps then
                      vRP.giveInventoryItem({user_id,"recibo_corrida",1,false})
                      vRPclient.notify(player,{"~g~Por enquanto é isso!~n~~h~Aguarde um minuto para o próximo chamado"})
					          else
                      vRPclient.notify(player,{"~h~~y~Leve ao local indicado no GPS."})
                    end
                  end)
                else
                  vRPclient.notify(player, {"A tarefa ainda está em andamento!"})
                end
              end,
              position = v.positions[math.random(1,#v.positions)]
            }

            table.insert(mdata.steps, step)
          end

          vRP.startMission({player,mdata})
        end
      end
    end
  end
  SetTimeout(60000,task_mission)
end
task_mission()