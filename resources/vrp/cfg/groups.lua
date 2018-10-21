
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
    "police.handcuff",
    "emergency.revive",
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
    "police.handcuff",
    "emergency.revive",
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
	"venda.todos",
	"venda.weed",
	"venda.cocaina",
	"venda.metanfetamina",
    "player.store_money",
    "player.store_weapons",
    "player.check",
    "player.calladmin",
	"emergency_heal",
    "police.seizable" -- can be seized
  }, 
  -- Polícia  
  ["Coronel ROTA"] = {
    _config = { 
      gtype = "job",
      onjoin = function(player) vRPclient.setCop(player,{true}) end,
      onspawn = function(player) vRPclient.setCop(player,{true}) end,
      onleave = function(player) vRPclient.setCop(player,{false}) end
    },
    "player.list",
    "police.easy_jail",
    "police.easy_unjail",
    "coronel.door",
    "police.easy_fine",
    "police.easy_cuff",
    "police.drag",
    "police.menu_interaction",
    "mission.police.patrol",
    "police.door",
    "police.menu",
    "coronel.cloakroom",
    "police.weapon_search",
    "police.pc",
    "radar.pass",
    "holdup.police",
    "rota.garagem",
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
    "coronelrota.paycheck",
    "coronel.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
    ["Soldado ROTA"] = {
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
    "police.door",
    "police.menu",
    "rota.cloakroom",
    "police.weapon_search",
    "police.pc",
    "radar.pass",
    "holdup.police",
    "rota.garagem",
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
    "soldadorota.paycheck",
    "pm.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Policia Federal"] = {
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
    "police.door",
    "boss_lspd.pc",
    "police.menu",
    "federal.cloakroom",
    "police.weapon_search",
    "police.pc",
    "radar.pass",
    "holdup.police",
    "federal.garagem",
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
    "policiafederal.paycheck",
    "policiafederal.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
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
    "pm.paycheck",
    "sargento.paycheck",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Subtenente"] = {
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
    "pm.paycheck",
    "subtenente.paycheck",
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
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
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
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
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
  ["Major"] = {
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
    "boss_lspd.pc",
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
    "major.paycheck",
    "capitao.weapons",
    "-police.store_weapons",
    "-police.seizable" -- negative permission, police can't seize itself, even if another group add the permission
  },
  ["Tenente-Coronel"] = {
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
    "tenentecoronel.paycheck",
    "coronel.weapons",
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
    "coronel.door",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
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
    "coronel.door",
    "police.menu_interaction",
    "mission.police.patrol",
    "mission.police.transfer",
    "police.door",
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
  ["Policia Militar Águia"] = {
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
  ["Samu Chefe"] = {
    _config = { gtype = "job" },
    "emergency.revive",
    "mission.emergency.transfer",
    "emergency.shop",
    "emergency_heal",
    "emergency.service",
    "bossemergency.service",
    "emergency.service",
    "hospital.garagem",
    "medicoemergency.medkit",
    "emergency.medkit",
    "samuchefe.paycheck",
    "radar.pass",
    "chefe.cloakroom"
  },
    ["Doutor"] = {
    _config = { gtype = "job" },
    "emergency.revive",
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
    "chefe.cloakroom"
  },
  ["Médico Chefe"] = {
    _config = { gtype = "job" },
    "emergency.revive",
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
    "chefe.cloakroom"
  },
  ["Médico"] = {
    _config = { gtype = "job" },
    "emergency.revive",
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
    "medico.cloakroom"
  },
  ["Paramédico"] = {
    _config = { gtype = "job" },
    "emergency.revive",
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
    "medico.cloakroom"
  },
  ["Socorrista"] = {
    _config = { gtype = "job" },
    "emergency.revive",
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
    "medico.cloakroom"
  },
  -- Empregos Legais
  ["Mecânico"] = {
    _config = { gtype = "job" },
    "vehicle.repair",
    "vehicle.replace",
	"repair.paycheck",
	"mission.repair.satellite_dishes",
    "repair.service",
    "shop.mecanico",
	"repair.garagem"
  }, 
  --Minerador de Diamante  
  ["Minerador de Diamante"] = {
    _config = { gtype = "job" },
    "minerar.diamante",
    "lapidar.diamante",
    "vender.diamante",
    "shop.diamante"
  },
  --GARI
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
    "missao.correios.coleta",
    "correios.veiculo",
    "sedex.permissao",
    "correios.paycheck",
    "delivery.gopostal",
    "correios.pacote",
    "correios.uniforme"
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
    "carteira.oab"
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
	"process.weed",
	"mission.delivery.weed",
	"mission.delivery.pot"
  },
  ["Traficante de Metanfetamina"] = {
    _config = { gtype = "job" },
	"harvest.metanfetamina",
	"process.metanfetamina",
	"mission.delivery.metanfetamina",
	"mission.delivery.pot3"
  },  
  ["Traficante de Cocaina"] = {
    _config = { gtype = "job" },
	"process.cocaina",
	"harvest.cocaina",
	"mission.delivery.cocaina",
	"mission.delivery.pot2"
  },  
  ["Traficante de Tartaruga"] = {
    _config = { gtype = "job" },
    "harvest.tartaruga",
    "tartaruga.garagem",
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
     "Minerador de Diamante",
     "Lixeiro",
     --"Correios",
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

