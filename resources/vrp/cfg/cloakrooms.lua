
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



-- cloakroom types (_config, map of name => customization)
--- _config:
---- permissions (optional)
---- not_uniform (optional): if true, the cloakroom will take effect directly on the player, not as a uniform you can remove
cfg.cloakroom_types = {
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
  --{"Coronel ROTA",455.29699707031,-988.36389160156,30.689599990845},
  --{"ROTA",459.47399902344,-993.30609130859,30.689599990845},
  {"Hospital 2",269.77987670898,-1363.4407958984,24.537780761719},
  {"Escolher Sexo",-1042.0029296875,-2735.2404785156,20.169273376465},
  {"Escolher Sexo",429.92150878906,-803.10681152344,29.491142272949},
  {"Hospital",269.77987670898,-1363.4407958984,24.537780761719}
}

return cfg

