
local cfg = {}

-- define the first spawn position/radius of the player (very first spawn on the server, or after death)
cfg.spawn_enabled = false -- set to false to disable the feature
cfg.spawn_position = {-1037.7828369141,-2737.9025878906,20.169273376465}
cfg.spawn_death = {278.52886962891,-1336.1520996094,24.5378074646} -- x,y,z for death location
cfg.spawn_radius = 1


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

cfg.clear_phone_directory_on_death = false
cfg.lose_aptitudes_on_death = true

return cfg
