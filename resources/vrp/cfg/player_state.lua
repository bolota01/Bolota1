
local cfg = {}

-- define the first spawn position/radius of the player (very first spawn on the server, or after death)
cfg.spawn_enabled = false -- set to false to disable the feature
cfg.spawn_position = {402.5164, -1002.847, -99.2587}
cfg.spawn_radius = 0

-- customization set when spawning for the first time
-- see https://wiki.fivem.net/wiki/Peds
-- mp_m_freemode_01 (male)
-- mp_f_freemode_01 (female)
cfg.default_customization = {
  model = "mp_m_freemode_01" 
}

local indexes = {1,3,4,5,6,7,8,9,11}--,12,13,14,15,16,17,18,19}
-- init default ped parts
for i=1,#indexes do
  cfg.default_customization[indexes[i]] = {0,0}
end
cfg.default_customization[4] = 21
cfg.default_customization[6] = 34
cfg.default_customization[8] = 15

cfg.clear_phone_directory_on_death = true
cfg.lose_aptitudes_on_death = true

return cfg
