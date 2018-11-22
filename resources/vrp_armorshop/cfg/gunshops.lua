
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
  ["Loja de Armas 01"] = {
    _config = {blipid=110,blipcolor=75},
    --["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    --["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    --["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,30,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""}
    --["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },

  ["Loja de Armas 02"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,30,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_MICROSMG"] = {"Micro Uzi",60000,70,""}
  },

  ["Loja da Polícia"] = {
    _config = {blipid=110,blipcolor=75,permissions={"policiafederal.weapons"}},
    --["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    --["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    --["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    --["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    --["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    --["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    --["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    --["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    --["WEAPON_PISTOL"] = {"Pistola",30000,150,""},
    ["ARMOR"] = {"Colete",0,0,""}
    --["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },

  --[[["submachineguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,150,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },- ]]

  ["Loja de Armas 03"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    --["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    --["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    --["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    --["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    --["WEAPON_PISTOL"] = {"Pistola",30000,150,""},
    --["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_MICROSMG"] = {"Micro Uzi",60000,70,""}
  },

  --[[["heavymachineguns"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,150,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },

  ["snipers"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,150,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },

  ["carabines"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,150,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""},
    ["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },- ]]

  ["Loja de Armas 04"] = {
    _config = {blipid=110,blipcolor=75},
    ["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    ["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    ["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    --["WEAPON_PISTOL"] = {"Pistola",30000,150,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""}
    --["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },

  ["Loja de Armas 05"] = {
    _config = {blipid=110,blipcolor=75},
    --["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    --["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    --["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    --["ARMOR"] = {"Colete a prova de balas",10000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,30,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""}
    --["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  },

  ["Loja de Paraquedas"] = {
    _config = {blipid=94,blipcolor=50},
    ["GADGET_PARACHUTE"] = {"Paraquedas",250,0,""}
  },

  ["Loja de Armas 06"] = {
    _config = {blipid=110,blipcolor=75},
    --["WEAPON_BOTTLE"] = {"Garrafa Quebrada",600,0,""},
    --["WEAPON_BAT"] = {"Taco de Beisebol",1500,0,""},
    ["WEAPON_HAMMER"] = {"Martelo",1500,0,""},
    --["WEAPON_GOLFCLUB"] = {"Taco de Golf",1500,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Canivete",1500,0,""},
    ["WEAPON_WRENCH"] = {"Chave Inglesa",1000,0,""},
    ["WEAPON_KNUCKLE"] = {"Soco-Inglês",1000,0,""},
    ["WEAPON_KNIFE"] = {"Faca",1500,0,""},
    ["WEAPON_PISTOL"] = {"Pistola",30000,30,""},
    ["WEAPON_FLASHLIGHT"] = {"Lanterna",1000,0,""}
    --["WEAPON_MICROSMG"] = {"Micro Uzi",60000,300,""}
  }
}

-- list of gunshops positions

cfg.gunshops = {
  {"Loja de Armas 01", 1693.6977539063,3759.8000488281,34.70531463623},
  {"Loja de Armas 02", 251.91516113281,-49.788932800293,69.941070556641},
  {"Loja da Polícia", 459.84631347656,-979.43682861328,30.68959236145},
  --{"carabines", 844.299, -1033.26, 28.1949},
  {"Loja de Paraquedas", 501.35134887695,5595.5263671875,795.90059179688},
  {"Loja de Armas 03", -330.2470703125,6083.9926757813,31.454767227173},
  --{"submachineguns", -664.147, -935.119, 21.8292},
  --{"sidearms", -1305.45056152344,-394.0068359375,36.6957740783691},
  {"Loja de Armas 05", -1117.6557617188,2698.6552734375,18.554130554199},
  --{"heavymachineguns", 2569.62, 294.453, 108.735},
  --{"snipers", -3172.60375976563,1085.74816894531,20.8387603759766},
  {"Loja de Armas 04", 21.70, -1107.41, 29.90},
  {"Loja de Armas 06", 810.15, -2156.88, 29.89}
}

return cfg
