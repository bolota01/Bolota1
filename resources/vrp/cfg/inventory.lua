
local cfg = {}

cfg.inventory_weight_per_strength = 10 -- weight for an user inventory per strength level (no unit, but thinking in "kg" is a good norm)

-- default chest weight for vehicle trunks
cfg.default_vehicle_chest_weight = 50

-- define vehicle chest weight by model in lower case
cfg.vehicle_chest_weights = {
  ["monster"] = 250,
  ["brioso"] = 30,
  ["issi3"] = 30,
  ["windsor2"] = 60,
  ["dominator"] = 40,
  ["dominator3"] = 40,
  ["hotknife"] = 30,
  ["hustler"] = 40,
  ["moonbeam"] = 70,
  ["picador"] = 70,
  ["ratLoader2"] = 70,
  ["slamVan"] = 80,
  ["yosemite"] = 80,
  ["bifta"] = 30,
  ["blazer"] = 10,
  ["blazer4"] = 10,
  ["kamacho"] = 150,
  ["mesa"] = 80,
  ["sandking"] = 180,
  ["baller3"] = 70,
  ["dubsta"] = 70,
  ["comet5"] = 30,
  ["coquette"] = 30,
  ["lynx"] = 30,
  ["cheburek"] = 30,
  ["mamba"] = 30,
  ["tornado5"] = 40,
  ["raiden"] = 30,
  ["entity2"] = 30,
  ["nero"] = 30,
  ["reaper"] = 30,
  ["sultanRS"] = 30,
  ["italigtb"] = 30,
  ["burrito3"] = 100,
  ["surfer"] = 60,
  ["sanctus"] = 10,
  ["avarus"] = 10,
  ["daemon"] = 10,
  ["faggio2"] = 10,
  ["esskey"] = 10,
  ["faggio"] = 10,
  ["wolfsbane"] = 10,
  ["zombiea"] = 10,
  ["zombieb"] = 10,
  ["chimera"] = 10,
  ["dinghy"] = 50,
  ["dinghy2"] = 50,
  ["supervolito"] = 750,
  ["volatus"] = 1000,
  ["havok"] = 300,
  ["luxor"] = 3000,
  ["mammatus"] = 1000,
  ["microlight"] = 100,
  ["cuban800"] = 500,
  ["enduro"] = 10,
  ["avent"] = 30,
  ["bmw3"] = 60,
  ["x5"] = 70,
  ["zl12017"] = 40,
  ["canry"] = 60,
  ["718caymans"] = 30,
  ["evoque1"] = 60,
  ["fct"] = 30,
  ["ferrari812"] = 30,
  ["beetle74"] = 40,
  ["italia458"] = 30,
  ["srt8"] = 80,
  ["lp700r"] = 30,
  ["lexus"] = 60,
  ["p1"] = 30,
  ["mgt"] = 30,
  ["gtr"] = 30,
  ["rs7"] = 60,
  ["urus2018"] = 60,
  ["z4"] = 45,
  ["agusta"] = 10,
  ["bmws"] = 10,
  ["bros60"] = 10,
  ["hcbr17"] = 10,
  ["nh2r"] = 10,
  ["hornet"] = 10,
  ["r6"] = 10,
  ["r1"] = 10,
  ["xj6"] = 10,
  ["hdfb"] = 10,
  ["hdkn"] = 10,
  ["ke400"] = 10,
  ["yss"] = 10,
  ["718"] = 30,
  ["taxi"] = 30,
  ["trash"] = 200,
  ["stockade"] = 150,
  ["boxville7"] = 140,
  ["blista"] = 60,
  ["acs8"] = 30,
  ["ar8lb"] = 30,
  ["bdivo"] = 30,
  ["cooperworks"] = 40,
  ["exc530"] = 10,
  ["mi8"] = 30,
  ["titan17"] = 230,
  ["jp12"] = 150,
  ["bbentayga"] = 80,
  ["hbb"] = 10,
  ["dk350z"] = 30,
  ["panigale"] = 10,
  ["sxfredbull"] = 10,
  ["sxfwilvo"] = 10,
  ["4c"] = 30,
  ["gt17"] = 30,
  ["rmz250"] = 10,
  ["senna"] = 30,
  ["sxfmarchetti"] = 10,
  ["twizy"] = 10,
  ["19ram"] = 200,
  ["laferrari"] = 30,
  ["chino2"] = 30,
  ["faction2"] = 30,
  ["moonbeam2"] = 70,
  ["slamvan3"] = 70,
  ["virgo2"] = 30
}

return cfg
