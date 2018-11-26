
-- gui config file
local cfg = {}

-- additional css loaded to customize the gui display (see gui/design.css to know the available css elements)
-- it is not recommended to modify the vRP core files outside the cfg/ directory, create a new resource instead
-- you can load external images/fonts/etc using the NUI absolute path: nui://my_resource/myfont.ttf
-- example, changing the gui font (suppose a vrp_mod resource containing a custom font)
cfg.css = [[
@font-face {
  font-family: "pcdown";
  src: url(nui://vrp/gui/fonts/pcdown.ttf) format("truetype");
}

@font-face {
  font-family: "bankgothic";
  src: url(nui://vrp/gui/fonts/bankgothic.ttf) format("truetype");
}

body{
  font-family: "Segoe UI";
  font-size: 0.9em;
}
]]

-- list of static menu types (map of name => {.title,.blipid,.blipcolor,.permissions (optional)})
-- static menus are menu with choices defined by vRP.addStaticMenuChoices(name, choices)
cfg.static_menu_types = {
   ["recruta_weapons"] = {
      title = "Arsenal", 
      blipcolor = 0,
	  permissions = {
	    "recruta.weapons"
	  }
	},
   ["police_weapons"] = {
      title = "Arsenal", 
      blipcolor = 0,
	  permissions = {
	    "pm.weapons"
	  }
	},
	["police_weapons_capitao"] = {
      title = "Arsenal", 
      blipcolor = 0,
	  permissions = {
	    "capitao.weapons"
	  }
	},
	["police_weapons_coronel"] = {
      title = "Arsenal", 
      blipcolor = 0,
	  permissions = {
	    "coronel.weapons"
	  }
	},
	["police_weapons_pilotoaguia"] = {
      title = "Arsenal Águia", 
      blipcolor = 0,
	  permissions = {
	    "pilotoaguia.weapons"
	  }
	},
	["police_weapons_atiradoraguia"] = {
      title = "Arsenal Águia", 
      blipcolor = 0,
	  permissions = {
	    "atiradoraguia.weapons"
	  }
	},
   ["emergency_heal"] = {
      title = "Atendimento Médico", 
      blipcolor = 0,
	  permissions = {
	    "emergency_heal"
	  }
	},
   ["emergency_medkit"] = {
      title = "Emergência", 
      blipcolor = 0,
	  permissions = {
	    "emergency.medkit"
	  }
	},
	["samu_emergency_medkit"] = {
      title = "Emergência", 
      blipcolor = 0,
	  permissions = {
	    "samuemergency.medkit"
	  }
	},
	["medico_emergency_medkit"] = {
      title = "Emergência", 
      blipcolor = 0,
	  permissions = {
	    "medicoemergency.medkit"
	  }
	}
}

-- list of static menu points
cfg.static_menus = {
  {"recruta_weapons",461.46166992188,-981.07891845703,30.689590454102},
  {"police_weapons", 461.46166992188,-981.07891845703,30.689590454102},
  {"police_weapons_coronel", 461.46166992188,-981.07891845703,30.689590454102},
  {"police_weapons_capitao", 461.46166992188,-981.07891845703,30.689590454102},
  {"police_weapons_pilotoaguia", 459.12884521484,-983.08721923828,30.689588546753},
  {"police_weapons_atiradoraguia", 459.12884521484,-983.08721923828,30.689588546753},
  {"samu_emergency_medkit", 266.36947631836,-1364.599609375,24.537786483765},
  {"medico_emergency_medkit", 266.36947631836,-1364.599609375,24.537786483765},
  {"emergency_medkit", 268.22784423828,-1364.8872070313,24.537782669067}
  --{"emergency_heal", 260.49597167969,-1358.4555664063,24.537788391113}
}


return cfg
