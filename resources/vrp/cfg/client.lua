-- client-side vRP configuration

local cfg = {}

cfg.iplload = true

cfg.voice_proximity = 4 -- default voice proximity (outside)
cfg.voice_proximity_vehicle = 3
cfg.voice_proximity_inside = 3

cfg.gui = {
  anchor_minimap_width = 186,
  anchor_minimap_left = 30,
  anchor_minimap_bottom = 170
}

-- gui controls (see https://wiki.fivem.net/wiki/Controls)
-- recommended to keep the default values and ask players to change their keys
cfg.controls = {
  phone = {
    -- PHONE CONTROLS
    up = {3,172},
    down = {3,173},
    left = {3,174},
    right = {3,175},
    select = {3,176},
    cancel = {3,177},
    open = {3,311}, -- K to open the menu
  },
  request = {
    yes = {1,166}, -- F5
    no = {1,167} -- F6
  }
}

-- disable menu if handcuffed
cfg.handcuff_disable_menu = true

-- when health is under the threshold, player is in coma
-- set to 0 to disable coma
cfg.coma_threshold = 100

-- maximum duration of the coma in minutes
cfg.coma_duration = 15

-- if true, a player in coma will not be able to open the main menu
cfg.coma_disable_menu = true

-- see https://wiki.fivem.net/wiki/Screen_Effects
cfg.coma_effect = "DeathFailMPDark"

-- if true, vehicles can be controlled by others, but this might corrupts the vehicles id and prevent players from interacting with their vehicles
cfg.vehicle_migration = false

return cfg