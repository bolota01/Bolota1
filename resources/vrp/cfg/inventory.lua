
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
  ["surfer"] = 100,
  ["sanctus"] = 10,
  ["avarus"] = 10,
  ["daemon"] = 10,
  ["faggio2"] = 10,
  ["esskey"] = 10,
  ["faggio"] = 10,
  ["wolfsbane"] = 10,
  ["zombiea"] = 10,
  ["zombieb"] = 10,
  ["chimera"] = 10
}

return cfg
