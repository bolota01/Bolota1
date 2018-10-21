
-- this file configure the cloakrooms on the map

local cfg = {}

-- prepare surgeries customizations
local surgery_male = { model = "mp_m_freemode_01" }
local surgery_female = { model = "mp_f_freemode_01" }

local surgery_mcop = { model = "s_m_m_doctor_01" }
local uniforme_samu = { model = "s_m_m_paramedic_01" }
local surgery_fcop = { model = "s_f_y_scrubs_01" }
local uniforme_pm01 = { model = "S_M_Y_Cop_01" }
local uniforme_pm02 = { model = "S_M_M_SnowCop_01" }
local uniforme_pm02 = { model = "S_M_M_SnowCop_01" }

local uniforme_random1 = { model = "a_m_m_tranvest_01" }
local uniforme_random2 = { model = "g_f_y_vagos_01" }
local uniforme_random3 = { model = "g_f_y_ballas_01" }
local uniforme_random4 = { model = "a_f_y_vinewood_02" }
local uniforme_random5 = { model = "s_m_y_winclean_01" }
local uniforme_random6 = { model = "a_f_y_topless_01" }
local uniforme_random7 = { model = "a_m_m_tourist_01" }
local uniforme_random8 = { model = "csb_stripper_02" }
local uniforme_random9 = { model = "cs_priest" }
local uniforme_random10 = { model = "ig_priest" }
local uniforme_random11 = { model = "a_m_y_musclbeac_01" }
local uniforme_random12 = { model = "a_m_y_musclbeac_02" }
local uniforme_random13 = { model = "s_m_y_mime" }
local uniforme_random14 = { model = "u_m_y_mani" }
local uniforme_random15 = { model = "a_m_y_juggalo_01" }
local uniforme_random16 = { model = "a_m_y_hipster_01" }
local uniforme_random17 = { model = "a_m_m_hillbilly_01" }
local uniforme_random18 = { model = "a_m_o_genstreet_01" }
local uniforme_random19 = { model = "s_m_y_dealer_01" }
local uniforme_random20 = { model = "s_m_y_clown_01" }
local uniforme_random21 = { model = "a_f_m_bodybuild_01" }
local uniforme_random22 = { model = "a_m_m_acult_01" }
local uniforme_random23 = { model = "a_f_m_downtown_01" }
local uniforme_random24 = { model = "StrPerf01SMM" }



-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
  ["Skins"] = {
    _config = { not_uniform = false },
    ["Skin 01"] = uniforme_random1,
    ["Skin 02"] = uniforme_random2,
    ["Skin 03"] = uniforme_random3,
    ["Skin 04"] = uniforme_random4,
    ["Skin 05"] = uniforme_random5,
    ["Skin 06"] = uniforme_random6,
    ["Skin 07"] = uniforme_random7,
    ["Skin 08"] = uniforme_random8,
    ["Skin 09"] = uniforme_random9,
    ["Skin 10"] = uniforme_random10,
    ["Skin 11"] = uniforme_random11,
    ["Skin 12"] = uniforme_random12,
    ["Skin 13"] = uniforme_random13,
    ["Skin 14"] = uniforme_random14,
    ["Skin 15"] = uniforme_random15,
    ["Skin 16"] = uniforme_random16,
    ["Skin 17"] = uniforme_random17,
    ["Skin 18"] = uniforme_random18,
    ["Skin 19"] = uniforme_random19,
    ["Skin 20"] = uniforme_random20,
    ["Skin 21"] = uniforme_random21,
    ["Skin 22"] = uniforme_random22,
    ["Skin 23"] = uniforme_random23,
    ["Skin 24"] = uniforme_random24
  },
  ["Hospital"] = {
    _config = { permissions = {"medico.cloakroom"} },
    ["Paramédico"] = {
      [3] = {85,0},
      [4] = {96,0},
      [6] = {31,4},
      [7] = {126,0},
      [8] = {129,0},
      [10] = {57,0},
      [11] = {250,0},
      ["p2"] = {2,0}
    },
    ["Paramédica"] = {
      [3] = {107,0},
      [4] = {99,0},
      [6] = {32,4},
      [7] = {126,0},
      [8] = {159,0},
      [10] = {57,0},
      [11] = {258,0},
      ["p2"] = {2,0}
    },
    ["Enfermeira"] = surgery_fcop,
    ["Paramédico Padrão"] = uniforme_samu
    },
  ["Hospital 2"] = {
    _config = { permissions = {"chefe.cloakroom"} },
    ["Uniforme"] = surgery_mcop
  },
  ["Uniformes Masculino"] = {
    _config = { permissions = {"pm.cloakroom"} },
    ["Recruta"] = {
      [1] = {121,0},
      [3] = {41,0},
      [4] = {33,0},
      [6] = {24,0},
      [7] = {125,0},
      [8] = {58,0},
      [9] = {1,1},
      [11] = {242,0},
      ["p0"] = {106,20}
    },
    ["Uniforme Masculino 1"] = {
      [1] = {121,0},
      [3] = {48,0},
      [4] = {33,0},
      [6] = {24,0},
      [7] = {125,0},
      [8] = {122,0},
      [9] = {2,1},
      [11] = {13,2},
      ["p0"] = {114,7}
    },
    ["Uniforme Masculino 2"] = {
      [1] = {121,0},
      [3] = {46,0},
      [4] = {33,0},
      [6] = {24,0},
      [7] = {125,0},
      [8] = {129,0},
      [9] = {1,1},
      [11] = {139,3},
      ["p0"] = {2,0}
    },
    ["Uniforme Masculino 3"] = {    
      [1] = {121,0},
      [3] = {46,0},
      [4] = {33,0},
      [6] = {24,0},
      [7] = {125,0},
      [8] = {129,0},
      [9] = {1,1},
      [11] = {139,3},
      ["p0"] = {2,0}     
    },
    ["Uniforme Masculino 4"] = {    
      [1] = {121,0},
      [3] = {41,0},
      [4] = {33,0},
      [6] = {24,0},
      [7] = {125,0},
      [8] = {129,0},
      [9] = {1,1},
      [11] = {242,4},
      ["p0"] = {114,3} 
    },
    ["Uniforme Masculino 5"] = {    
      [1] = {121,0},
      [3] = {49,0},
      [4] = {33,0},
      [6] = {24,0},
      [7] = {125,0},
      [8] = {21,0},
      [9] = {1,1},
      [11] = {142,0},
      ["p0"] = {114,7} 
    },
    ["Uniforme Masculino 6"] = {    
      [1] = {121,0},
      [3] = {49,0},
      [4] = {33,0},
      [6] = {24,0},
      [7] = {125,0},
      [8] = {21,0},
      [11] = {72,2},
      ["p0"] = {114,7} 
    },                          
    ["Uniforme Masculino 7"] = {
      [3] = {17,0},
      [4] = {4,0},
      [6] = {25,0},
      [7] = {125,0},
      [8] = {130,0},
      [9] = {1,1},
      [11] = {49,0},
      ["p0"] = {2,0},
      ["p2"] = {2,0}
    },
    ["Uniforme Padrão 1 M"] = uniforme_pm01,
    ["Uniforme Padrão 2 M"] = uniforme_pm02
  },
  ["Uniformes Feminino"] = {
    _config = { permissions = {"pm.cloakroom"} },
    ["Uniforme Feminino 1"] = {
      [3] = {47,0},
      [4] = {37,0},
      [6] = {25,0},
      [7] = {95,0},
      [8] = {161,0},
      [9] = {2,1},
      [11] = {43,0},
      ["p0"] = {105,20},
      ["p1"] = {11,0}
    },
    ["Uniforme Feminino 2"] = {
      [3] = {47,0},
      [4] = {37,0},
      [6] = {25,0},
      [7] = {95,0},
      [8] = {161,0},
      [9] = {2,1},
      [11] = {48,0},
      ["p1"] = {11,0}
    },
    ["Uniforme Feminino 3"] = {
      [3] = {47,0},
      [4] = {37,0},
      [6] = {25,0},
      [7] = {95,0},
      [8] = {161,0},
      [9] = {2,1},
      [11] = {43,0},
      ["p1"] = {11,0}
    },
    ["Uniforme Feminino 4"] = {
      [3] = {47,0},
      [4] = {37,0},
      [6] = {25,0},
      [7] = {95,0},
      [8] = {161,0},
      [9] = {2,1},
      [11] = {79,0},
      ["p1"] = {11,0}
    },
  },  
  ["Escolher Sexo"] = {
    _config = { not_uniform = true },
    ["Homem"] = surgery_male,
    ["Mulher"] = surgery_female
  },
  ["Tartaruga"] = {
    _config = { permissions = {"tartaruga.cloakroom"} },
    ["Roupa de Mergulho M"] = {
      [3] = {17,0,2},
      [4] = {94,0,2},
      [6] = {67,0,2},
      [7] = {40,0},
      [8] = {123,0,2},
      [11] = {148,1,2},
      [12] = {65792,0,0},
      ["p0"] = {120,0},
      ["p1"] = {26,0}
    },
    ["Roupa de Mergulho F"] = {
      [3] = {18,0,2},
      [4] = {97,0,2},
      [6] = {70,0,2},
      [7] = {16,0},
      [8] = {153,0,2},
      [11] = {251,0,2},
      [12] = {0,0,0},
      ["p0"] = {-1,0},
      ["p1"] = {28,0}
    }
  }   
}

cfg.cloakrooms = {
  {"Uniformes Masculino",457.47616577148,-993.30609130859,30.689603805542},
  {"Uniformes Feminino",456.07196044922,-988.55352783203,30.689605712891},
  {"Tartaruga",4327.6328125,4528.4877929688,-0.22433114051819},
  --{"Águia",455.47723388672,-993.35894775391,30.689599990845},
  {"Skins",423.07284545898,-799.64221191406,29.502632141113},
  --{"ROTA",459.47399902344,-993.30609130859,30.689599990845},
  {"Hospital 2",269.77987670898,-1363.4407958984,24.537780761719},
  {"Escolher Sexo",-1042.0029296875,-2735.2404785156,20.169273376465},
  {"Escolher Sexo",429.92150878906,-803.10681152344,29.491142272949},
  {"Hospital",269.77987670898,-1363.4407958984,24.537780761719}
}

return cfg

