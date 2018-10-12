
-- define emotes
-- use the custom emotes admin action to test emotes on-the-fly
-- animation list: http://docs.ragepluginhook.net/html/62951c37-a440-478c-b389-c471230ddfc5.htm

local cfg = {}

-- map of emote_name => {upper,seq,looping}
-- seq can also be a task definition, check the examples below
cfg.emotes = {

  --["Saudação"] = {true,{{"mp_player_int_uppersalute","mp_player_int_salute",1}},false},
  --["Rock"] = {true,{{"mp_player_introck","mp_player_int_rock",1}},false},

 -- ["Sentar na cadeira"] = {false, {task="PROP_HUMAN_SEAT_CHAIR_MP_PLAYER"}, false},
  --["Teste Cop"] = {false, {task="WORLD_HUMAN_COP_IDLES"}, false},
  --["Olhar no Binoculo"] = {false, {task="WORLD_HUMAN_BINOCULARS"}, false},
  --["Bater palmas"] = {false, {task="WORLD_HUMAN_CHEERING"}, false},
  --["Beber"] = {false, {task="WORLD_HUMAN_DRINKING"}, false},
 -- ["Fumar"] = {false, {task="WORLD_HUMAN_SMOKING"}, false},
 -- ["Teste Filmar"] = {false, {task="WORLD_HUMAN_MOBILE_FILM_SHOCKING"}, false},
  --["Teste Plantar"] = {false, {task="WORLD_HUMAN_GARDENER_PLANT"}, false},
 -- ["Ficar de Guarda"] = {false, {task="WORLD_HUMAN_GUARD_STAND"}, false},
 -- ["Bater Prego"] = {false, {task="WORLD_HUMAN_HAMMERING"}, false},
  --["Teste Hangout"] = {false, {task="WORLD_HUMAN_HANG_OUT_STREET"}, false},
  --["Teste Hiker"] = {false, {task="WORLD_HUMAN_HIKER_STANDING"}, false},
 -- ["Ficar Estatua"] = {false, {task="WORLD_HUMAN_HUMAN_STATUE"}, false},
 -- ["Corrida"] = {false, {task="WORLD_HUMAN_JOG_STANDING"}, false},
 -- ["Inclinar-se"] = {false, {task="WORLD_HUMAN_LEANING"}, false},
 -- ["Alongar-se"] = {false, {task="WORLD_HUMAN_MUSCLE_FLEX"}, false},
 -- ["Camera"] = {false, {task="WORLD_HUMAN_PAPARAZZI"}, false},
 -- ["Sentar"] = {false, {task="WORLD_HUMAN_PICNIC"}, false},
 -- ["Prostituta 1"] = {false, {task="WORLD_HUMAN_PROSTITUTE_HIGH_CLASS"}, false},
 -- ["Prostituta 2"] = {false, {task="WORLD_HUMAN_PROSTITUTE_LOW_CLASS"}, false},
 -- ["Fazer Flexões"] = {false, {task="WORLD_HUMAN_PUSH_UPS"}, false},
 -- ["Fazer Abdominais"] = {false, {task="WORLD_HUMAN_SIT_UPS"}, false},
--  ["Anotar"] = {false, {task="CODE_HUMAN_MEDIC_TIME_OF_DEATH"}, false},
 -- ["Olhar Mapa"] = {false, {task="WORLD_HUMAN_TOURIST_MAP"}, false},
 -- ["Apoiar-se"] = {false, {task="PROP_HUMAN_BUM_SHOPPING_CART"}, false},
  --["TESTE 04"] = {false, {task="CODE_HUMAN_PARK_CAR"}, false},
  --["TESTE 05"] = {false, {task="PROP_HUMAN_MOVIE_STUDIO_LIGHT"}, false},
 -- ["Impaciente"] = {false, {task="WORLD_HUMAN_STAND_IMPATIENT"}, false},
 -- ["Mexer no celular"] = {false, {task="WORLD_HUMAN_STAND_MOBILE"}, false},
 -- ["Dançar 2"] = {false, {task="WORLD_HUMAN_STRIP_WATCH_STAND"}, false},
  --["Deitar 1"] = {false, {task="WORLD_HUMAN_SUNBATHE_BACK"}, false},
 -- ["Deitar 2"] = {false, {task="WORLD_HUMAN_SUNBATHE"}, false},
  --["Escutar coracao"] = {false,{{"mini@safe_cracking","idle_base",1}},false},
  --["Soldar"] = {false, {task="WORLD_HUMAN_WELDING"}, false},
 -- ["Examinar corpo"] = {false, {task="CODE_HUMAN_MEDIC_KNEEL"}, false},
 -- ["Controlar Multidão"] = {false, {task="CODE_HUMAN_POLICE_CROWD_CONTROL"}, false},
 -- ["Investigar"] = {false, {task="CODE_HUMAN_POLICE_INVESTIGATE"}, false},
 -- ["Fazer Yoga"] = {false, {task="WORLD_HUMAN_YOGA"}, false},
  ["Chupeta H Carro"] = {false,{{"oddjobs@towing","m_blow_job_loop",1}},false},
  ["Chupeta M Carro"] = {false,{{"oddjobs@towing","f_blow_job_loop",1}},false},
  ["Sexo H"] = {false,{{"mini@prostitutes@sexlow_veh","low_car_sex_loop_player",1}},false},
  ["Sexo M"] = {false,{{"mini@prostitutes@sexlow_veh","low_car_sex_loop_female",1}},false},
  ["Punheta"] = {true,{{"mp_player_int_upperwank","mp_player_int_wank_01",1}},false},
  ["Dar o cu"] = {false,{{"rcmpaparazzo_2","shag_loop_poppy",2}},true},
  ["Comer o cu"] = {false,{{"rcmpaparazzo_2","shag_loop_a",2}},true},
  ["Beijo Boca"] = {true,{{"mp_ped_interaction","kisses_guy_a",1}},false},
  ["Balançar peito"] = {false,{{"mini@strip_club@backroom@","stripper_b_backroom_idle_b",1}},false},
  --["Mecânico motor"] = {false,{task="PROP_HUMAN_BUM_BIN"},false},
  --["Mecanico abaixo"] = {false,{task="WORLD_HUMAN_VEHICLE_MECHANIC"},false},
  ["ADULTO | Strip de esquina"] = {false,{{"mini@strip_club@idles@stripper","stripper_idle_02",1}},false},
 -- ["Escutar coracao"] = {false,{{"mini@safe_cracking","idle_base",1}},false},
  ["BLZ"] = {true,{{"mp_action","thanks_male_06",1}},false},
  ["DJ"] = {false,{{"anim@mp_player_intcelebrationmale@dj","dj",1}},true}
}

return cfg
