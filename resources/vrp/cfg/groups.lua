
local cfg = {}

-- define each group with a set of permissions
-- _config property:
--- gtype (optional): used to have only one group with the same gtype per player (example: a job gtype to only have one job)
--- onspawn (optional): function(player) (called when the player spawn with the group)
--- onjoin (optional): function(player) (called when the player join the group)
--- onleave (optional): function(player) (called when the player leave the group)
--- (you have direct access to vRP and vRPclient, the tunnel to client, in the config callbacks)

cfg.groups = {
  ["superadmin"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um SuperAdmin."}) end},
    "player.group.add",
    "player.group.remove",
    "police.pc",
    "boss_lspd.pc",
    "emergency.service",
    "bossemergency.service",
    "player.givemoney",
    "player.giveitem"
  },
  ["admin"] = {
    "player.group.add",
    "admin.tickets",
    "admin.announce",
    "player.list",
    "player.whitelist",
    "player.unwhitelist",
    "player.kick",
    "player.ban",
    "police.pc",
    "boss_lspd.pc",
    "emergency.service",
    "bossemergency.service",
    "player.unban",
    "player.noclip",
    "player.custom_emote",
	"armas.traficante",
    "player.custom_sound",
    "player.display_custom",
	"police.menu_interaction",
    "player.coords",
    "player.tptome",
	"admin.deleteveh",
	"admin.spawnveh",
	"admin.godmode",
	"player.tptowaypoint",
	"player.cmd_mask",
	"admin.easy_unjail",
	"police.door",
	"police.license",
	"police.licensearm",
	"admin.spikes",
    "player.tpto"
  },
  ["moderador"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um ~r~moderador."}) end},
    "player.group.add",
    "player.group.remove",
	"player.whitelist",
	"player.unwhitelist",
    "player.noclip",
    "bossemergency.service",
    "emergency.service",
    "player.tptome",
    "player.list",
    "player.kick",
    "player.tpto"
  },   
  -- the group user is auto added to all logged players
  ["user"] = {
    "player.phone",
	"player.loot",
	"player.store_armor",
	"player.fix_haircut",
    "player.player_menu",
	"venda.metanfetamina",
    "player.store_money",
    "player.store_weapons",
    "player.check",
    "coma.skipper",
    "coma.caller",
    "player.calladmin",
	"emergency_heal",
    "police.seizable" -- can be seized
  },
  ["galpaocannabis"] = {
    _config = {onjoin = function(player) vRPclient.notify(player,{"Você é agora o dono do ~r~Galpão de Maconha."}) end},
    "galpao.maconha"
  },
  ["galpaometannfetamina"] = {
    _config = {onjoin = function(player) vRPclient.notify(player,{"Você é agora o dono do ~r~Galpão de Metanfetamina."}) end},
    "galpao.meta"
  },
  ["galpaococainna"] = {
    _config = {onjoin = function(player) vRPclient.notify(player,{"Você é agora o dono do ~r~Galpão de Cocaina."}) end},
    "galpao.coca"
  },
  ["galpaodirtymoney"] = {
    _config = {onjoin = function(player) vRPclient.notify(player,{"Você é agora o dono do ~r~Galpão de Lavagem."}) end},
    "galpao.lavagem"
  },
  ["galpaofabricadearma"] = {
    _config = {onjoin = function(player) vRPclient.notify(player,{"Você é agora o dono do ~r~Galpão de Armas."}) end},
    "galpao.armas",
    "build.gun"
  },
  -- Polícia  
  ["Recruta"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "recruta.paycheck",
    "recruta.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission 
  }, 
  ["Soldado"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "soldado.paycheck",
    "pm.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Cabo"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "cabo.paycheck",
    "pm.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Sargento"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "pm.weapons",
    "pm.paycheck",
    "sargento.paycheck",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Tenente"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "player.group.add",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "coronel.door",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "tenente.paycheck",
    "capitao.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Capitão"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "player.group.add",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "coronel.door",
    "boss_lspd.pc",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "capitao.paycheck",
    "capitao.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Coronel"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "player.group.add",
    "coronel.door",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "boss_lspd.pc",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "coronel.paycheck",
    "coronel.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Comandante Geral"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "player.group.add",
    "coronel.door",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "boss_lspd.pc",
    "police.menu",
    "pm.cloakroom",
    "police.pc",
    "police.weapon_search",
    "radar.pass",
    "holdup.police",
    "pm.garagem",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "comandantegeral.paycheck",
    "coronel.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Águia FAE"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
    "apreender.veiculo",
    "police.multas",
    "police.cmd_plate",
    "police.menu",
    "aguia.cloakroom",
    "police.pc",
    "radar.pass",
    "holdup.police",
    "aguia.garagem",
    "police.weapon_search",
    "police.handcuff",
    "police.putinveh",
    "police.getoutveh",
    "police.check",
    "police.service",
    "police.wanted",
    "police.license",
    "police.licensearm",
    "bank.police",
    "police.seize.weapons",
    "police.seize.items",
    "police.jail",
    "police.fine",
    "police.announce",
    "police.askid",
    "aguia.paycheck",
    "aguia.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  -- Samu
    ["Doutor"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "ems.farmacia",
    "player.group.add",
    "mission.emergency.transfer",
    "emergency.shop",
    "emergency_heal",
    "emergency.service",
    "bossemergency.service",
    "emergency.service",
    "hospital.garagem",
    "medicoemergency.medkit",
    "emergency.medkit",
    "doutor.paycheck",
    "radar.pass",
    "coma.caller",
    "medico.cloakroom"
  },
  ["Médico Chefe"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "ems.farmacia",
    "player.group.add",
    "mission.emergency.transfer",
    "emergency.shop",
    "emergency_heal",
    "bossemergency.service",
    "emergency.service",
    "emergency.service",
    "hospital.garagem",
    "medicoemergency.medkit",
    "emergency.medkit",
    "medicochefe.paycheck",
    "radar.pass",
    "coma.caller",
    "medico.cloakroom"
  },
  ["Médico"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "ems.farmacia",
    "mission.emergency.transfer",
    "emergency.shop",
    "emergency_heal",
    "emergency.service",
    "emergency.service",
    "hospital.garagem",
    "samuemergency.medkit",
    "emergency.medkit",
    "medico.paycheck",
    "radar.pass",
    "coma.caller",
    "medico.cloakroom"
  },
  ["Paramédico"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "ems.farmacia",
    "mission.emergency.transfer",
    "emergency.shop",
    "emergency_heal",
    "emergency.service",
    "emergency.service",
    "hospital.garagem",
    "samuemergency.medkit",
    "emergency.medkit",
    "paramedico.paycheck",
    "radar.pass",
    "coma.caller",
    "medico.cloakroom"
  },
  ["Socorrista"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "ems.farmacia",
    "mission.emergency.transfer",
    "emergency.shop",
    "emergency_heal",
    "emergency.service",
    "emergency.service",
    "hospital.garagem",
    "samuemergency.medkit",
    "emergency.medkit",
    "socorrista.paycheck",
    "radar.pass",
    "coma.caller",
    "medico.cloakroom"
  },
  -- Empregos Legais
  ["Mecânico"] = {
    _config = { gtype = "job" },
    "vehicle.repair",
    "vehicle.replace",
	"repair.paycheck",
	"mission.repair.satellite_dishes",
    "mission.repair.wind_turbines",
    "repair.service",
    "shop.mecanico",
	"repair.garagem"
  }, 
  --Minerador de Diamante  
  ["Minerador de Diamante"] = {
    _config = { gtype = "job" },
    "minerar.diamante",
    "mission.delivery.diamante",
    "minerar.paycheck",
    "lapidar.diamante",
    "vender.diamante",
    "shop.diamante"
  },
  -- Motoboy
  ["Motoboy"] = {
    _config = { gtype = "job" },
    "mission.delivery.food",
    "delivery.paycheck",
    "delivery.garagem",
    "delivery.shop"
  },
  -- GARI
  ["Lixeiro"] = {
    _config = { gtype = "job" },
    "missao.gari.coleta",
    "gari.veiculo",
    "gari.paycheck",
    "gari.uniforme",
    "gari.coleta",
    "gari.reciclagem"
  },
  --CORREIOS
  ["Correios"] = {
    _config = { gtype = "job" },
    "missao.correio.encomendas",
    "correios.veiculo",
    "encomenda.correio",
    "correios.paycheck"
  },
  --UBER
  ["Táxi"] = {
    _config = { gtype = "job" },
    "taxi.service",
    "taxi.paycheck",
    "mission.UBER.passenger",
    "taxi.garagem",
    "taxi.paycheck"
  },
  --Advogado  
  ["Advogado"] = {
    _config = { gtype = "job" },
    "carteira.oab",
    "advogado.paycheck",
    "advogado.entrega"
  },
  ["Garota de Programa"] = {
    _config = { gtype = "job" },
    "mission.prostituta",
    "prostituta.paycheck",
    "prostituta.cloakroom",
    "puta.service"
  },
  --Transporte de Valores  
  ["Transportador de Valores"] = {
    _config = { gtype = "job" },
    "mission.bankdriver.moneybank",
    "bankdriver.vehicle",
    "bankdriver.paycheck",
    "tvalores.uniforme",
    "bankdriver.money"
  },
  -- Empregos Ilegais
  ["Ladrão de Carros"] = {
    _config = { gtype = "job" },
    "mission.carjack.vehicle"
  },
  ["Traficante de Maconha"] = {
    _config = { gtype = "job" },
	"harvest.weed",
    "venda.weed",
	"process.weed",
	"mission.delivery.weed",
	"mission.delivery.pot"
  },
  ["Traficante de Metanfetamina"] = {
    _config = { gtype = "job" },
	"harvest.metanfetamina",
	"process.metanfetamina",
    "venda.todos",
	"mission.delivery.metanfetamina",
	"mission.delivery.pot3"
  },  
  ["Traficante de Cocaina"] = {
    _config = { gtype = "job" },
	"process.cocaina",
	"harvest.cocaina",
    "venda.cocaina",
	"mission.delivery.cocaina",
	"mission.delivery.pot2"
  },  
  ["Traficante de Tartaruga"] = {
    _config = { gtype = "job" },
    "harvest.tartaruga",
    "tartaruga.cloakroom",
    "shop.tartaruga",
    "entrega.tartaruga",
	"process.Tartaruga"
  },
  ["Traficante de Armas"] = {
    _config = { gtype = "job" },
	"build.gun",
	"mission.delivery.pistol",
	"mission.delivery.shotgun",
	"mission.delivery.smg",
	"mission.gunrunner.shipment"
  },
  ["Assassino Profissional"] = {
    _config = { gtype = "job" },
	"hitman.takebounty",
    "-hitman.addbounty",
	"-player.blips",
	"mission.hitman"
  },
  ["Hacker"] = {
    _config = { gtype = "job" },
	"-player.blips",
	"sell.clonedcards",
    "mission.delivery.cartoes",
	"pick.toclonecards",
	"clone.cards",
	"hacker.hack"
  },
  ["mugger"] = {
    _config = { gtype = "job" },
	"-player.blips",
	"mugger.mug"
  },
  -- Desemprego  
  ["Desempregado"] = {
    _config = { gtype = "job" },
	"player.paycheck"
  },
  -- VIP
  ["vipdima"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um ~b~VIP Dima."}) end},
  "garagem.vipdima",
  },
  ["vipgold"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um ~y~VIP Gold."}) end},
  "garagem.vipgold",
  },   
  ["vipprata"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um ~h~VIP Prata."}) end},
  "garagem.vipprata",
  },   
  ["vipbronze"] = {
    _config = {onspawn = function(player) vRPclient.notify(player,{"Você é um ~o~VIP Bronze."}) end},
  "garagem.vipbronze",
  }
}

-- groups are added dynamically using the API or the menu, but you can add group when an user join here
cfg.users = {
  [1] = { -- give superadmin and admin group to the first created user on the database
    "superadmin",
    "admin"
  }
}

-- group selectors
-- _config
--- x,y,z, blipid, blipcolor, permissions (optional)

cfg.selectors = {
  ["Agencia de Empregos"] = {
    _config = {x = -268.363739013672, y = -957.255126953125, z = 31.22313880920410, blipid = 351, blipcolor = 47},
	 "Mecânico",
     "Motoboy",
     "Minerador de Diamante",
     "Lixeiro",
     "Correios",
     "Garota de Programa",
     "Táxi",
     "Advogado",
     "Transportador de Valores",
     "Desempregado"
  },
  ["Empregos Ilegais"] = {
    _config = {x = 707.324462890625, y = -966.986511230469, z = 30.4128551483154, blipid = 351, blipcolor = 49},
	 --"Ladrão de Carros",
	 "Traficante de Metanfetamina",
	 "Traficante de Maconha",
	 "Traficante de Tartaruga",
	 "Traficante de Cocaina",	
	 "Hacker"
  } 
}

return cfg

