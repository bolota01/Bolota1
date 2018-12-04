
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
local uniforme_random24 = { model = "S_M_M_STRPERF_01" }

local uniforme_prostituta01 = { model = "S_F_Y_BARTENDER_01"}
local uniforme_prostituta02 = { model = "U_F_Y_DANCEBURL_01"}
local uniforme_prostituta03 = { model = "CSB_STRIPPER_01"}
local uniforme_prostituta04 = { model = "CSB_STRIPPER_02"}
local uniforme_prostituta05 = { model = "MP_F_STRIPPERLITE"}
local uniforme_prostituta06 = { model = "S_F_Y_STRIPPER_01"}
local uniforme_prostituta07 = { model = "S_F_Y_STRIPPER_02"}
local uniforme_prostituta08 = { model = "S_F_Y_STRIPPERLITE"}


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
  ["Traje Sexy"] = {
    _config = { permissions = {"prostituta.cloakroom"} },
    ["Skin 01"] = uniforme_prostituta01,
    ["Skin 02"] = uniforme_prostituta02,
    ["Skin 03"] = uniforme_prostituta03,
    ["Skin 04"] = uniforme_prostituta04,
    ["Skin 05"] = uniforme_prostituta05,
    ["Skin 06"] = uniforme_prostituta06,
    ["Skin 07"] = uniforme_prostituta07,
    ["Skin 08"] = uniforme_prostituta08
  },
  ["Hospital"] = {
    _config = { permissions = {"medico.cloakroom"} },
    ["Paramédico"] = {
      [3] = {85,1,2},
      [4] = {96,0,2},
      [6] = {31,4,2},
      [7] = {126,0,2},
      [8] = {129,0,2},
      [11] = {250,0,2},
      ["p2"] = {2,0}
    },
    ["Paramédica"] = {
      [3] = {109,0,2},
      [4] = {23,0,2},
      [5] = {47,0,2},
      [6] = {50,1,2},
      [7] = {0,0,2},
      [8] = {38,0,2},
      [9] = {0,1,2},
      [11] = {58,7,2}
    },
    ["Médico 1"] = {
      [3] = {106,8,2},
      [4] = {20,0,2},
      [5] = {0,0,2},
      [6] = {20,3,2},
      [7] = {126,0,2},
      [8] = {57,0,2},
      [11] = {13,0,2}
    },
    ["Médico 2"] = {
      [3] = {99,8,2},
      [4] = {20,0,2},
      [5] = {0,0,2},
      [6] = {20,3,2},
      [7] = {126,0,2},
      [8] = {57,0,2},
      [11] = {242,2,2}
    },
  },
  ["Uniformes Masculino"] = {
    _config = { permissions = {"pm.cloakroom"} },
    ["Uniforme Recruta"] = {
      [1] = {121,0,2},
      [3] = {0,0,0},
      [4] = {33,0,2},
      [5] = {9,0,2},
      [6] = {24,0,2},
      [7] = {128,0,2},
      [8] = {58,0,2},
      [9] = {17,9,2},
      [11] = {242,0,2}
    },
    ["Uniforme 1"] = {
      [1] = {121,0,2},
      [3] = {52,0,2},
      [4] = {33,0,2},
      [5] = {9,0,2},
      [6] = {24,0,2},
      [7] = {125,0,2},
      [8] = {58,0,2},
      [9] = {17,9,2},
      [11] = {242,4,2}
    },
    ["Uniforme 2"] = {
      [1] = {121,0,2},
      [3] = {39,0,2},
      [4] = {33,0,2},
      [5] = {9,0,2},
      [6] = {24,0,2},
      [7] = {125,0,2},
      [8] = {58,0,2},
      [9] = {22,9,2},
      [11] = {49,0,2}
    },
    ["Uniforme 3"] = {
      [1] = {121,0,2},
      [3] = {48,0,0},
      [4] = {33,0,2},
      [5] = {9,0,2},
      [6] = {24,0,2},
      [7] = {125,0,2},
      [8] = {58,0,2},
      [9] = {17,9,2},
      [11] = {95,1,2}
    },
  },
  ["Uniformes Feminino"] = {
    _config = { permissions = {"pm.cloakroom"} },
    ["Uniforme Feminino 1"] = {
      [3] = {47,0},
      [4] = {102,0},
      [6] = {24,0},
      [7] = {95,0},
      [8] = {161,0},
      [9] = {0,0},
      [11] = {43,0}
    },
    ["Uniforme Feminino 2"] = {
      [3] = {44,0},
      [4] = {102,0},
      [6] = {24,0},
      [7] = {95,0},
      [8] = {161,0},
      [9] = {0,0},
      [11] = {48,0}
    },
    ["Uniforme Feminino 3"] = {
      [3] = {47,0},
      [4] = {102,0},
      [6] = {24,0},
      [7] = {95,0},
      [8] = {161,0},
      [9] = {0,0},
      [11] = {79,0}
    },
  },
  ["Uniforme Águia FAE"] = {
    _config = { permissions = {"aguia.cloakroom"} },
    ["Uniforme Águia"] = {
      [1] = {122,0,2},  
      [3] = {61,0,2},
      [4] = {92,19,2},
      [5] = {20,0,2},
      [6] = {25,0,2},
      [7] = {7,0,2},
      [8] = {57,0,2},
      [9] = {13,1,2},
      [11] = {228,19,2},
      ["p0"] = {115,0}
    },
  },  
  ["Escolher Sexo"] = {
    _config = { not_uniform = true },
    ["Homem"] = surgery_male,
    ["Mulher"] = surgery_female
  },
  ["Traje de Mergulho"] = {
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
  {"Traje de Mergulho",3846.2712402344,4446.5131835938,0.11954033374786},
  {"Uniforme Águia FAE",453.56817626954,-992.3851928711,30.689588546752},
  --{"Traje Sexy",108.26893615723,-1305.3421630859,28.768793106079},
  --{"Skins",423.07284545898,-799.64221191406,29.502632141113},
  --{"ROTA",459.47399902344,-993.30609130859,30.689599990845},
  --{"Hospital 2",269.77987670898,-1363.4407958984,24.537780761719},
  --{"Escolher Sexo",-1042.0029296875,-2735.2404785156,20.169273376465},
  --{"Escolher Sexo",429.92150878906,-803.10681152344,29.491142272949},
  {"Hospital",268.69360351563,-1361.4110107422,24.537803649902}
}

return cfg

