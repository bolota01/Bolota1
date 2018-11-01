
local cfg = {}

-- example of study transformer
local itemtr_study = {
	name="Biblioteca", -- menu name
	r=0,g=255,b=0, -- color
	max_units=20,
	units_per_minute=20,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {
    ["Livro de Quimica"] = { -- action name
        description = "Leia o livro de Quimica", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["science.chemicals"] = 1 -- "group.aptitude", give 1 exp per unit
        }
    },
    ["Livro de matemática"] = { -- action name
        description="Leia o livro de matemática", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["science.mathematics"] = 1 -- "group.aptitude", give 1 exp per unit
        }
    }
	}
}

local itemtr_laboratory = {
	name="Laboratório", -- menu name
	r=0,g=255,b=0, -- color
	max_units=20,
	units_per_minute=10,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {}
}

local itemtr_laboratorycannabis = {
	name="Laboratório", -- menu name
	permissions = {"galpao.maconha"},
	r=0,g=255,b=0, -- color
	max_units=180,
	units_per_minute=6,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {
	["Coletar Maconha"] = { -- action name
        description = "Coletando Maconha", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["cannabis"] = 1
        }
    }
    }
}

local itemtr_laboratorymetanfetamina = {
	name="Laboratório", -- menu name
	permissions = {"galpao.meta"},
	r=0,g=255,b=0, -- color
	max_units=180,
	units_per_minute=6,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {
	["Coletar Metanfetamina"] = { -- action name
        description = "Coletando Metanfetamina", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["metanfetamina"] = 1
        }
    }
    }
}

local itemtr_laboratorycocaina = {
	name="Laboratório", -- menu name
	permissions = {"galpao.coca"},
	r=0,g=255,b=0, -- color
	max_units=180,
	units_per_minute=6,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {
	["Coletar Cocaina"] = { -- action name
        description = "Coletando Cocaina", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["cocaina"] = 1
        }
    }
    }
}

local itemtr_laboratorydirtymoney = {
	name="Laboratório", -- menu name
	permissions = {"galpao.lavagem"},
	r=0,g=255,b=0, -- color
	max_units=180,
	units_per_minute=6,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {
    ["Lavar Dinheiro Sujo"] = { -- action name
        description="Lavando Dinheiro Sujo", -- action description
        in_money=0, -- money taken per unit
        out_money=1000, -- money earned per unit
        reagents={
          ["dirty_money"] = 1000
        }, -- items taken per unit
        products={}, -- items given per unit
    }
    }
}

local itemtr_laboratoryarmas = {
	name="Laboratório", -- menu name
	permissions = {"galpao.armas"},
	r=0,g=255,b=0, -- color
	max_units=20,
	units_per_minute=1,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {
	["Coletar peça Rifle"] = { -- action name
        description = "Coletando peça", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["assaultrifle_parts"] = 1
        }
    }
    }
}

local itemtr_laboratoryarmasfinal = {
    name="Oficina de armas", -- menu name
    permissions = {"build.gun"}, -- you can add permissions
    r=0,g=255,b=0, -- color
    max_units=10,
	units_per_minute=1,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {
      ["Fabricar Arma"] = { -- action name
        description="Contruindo arma.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["assaultrifle_parts"] = 1
        }, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_ASSAULTRIFLE"] = 1
        }
    },
    ["Fabricar Munição de pistola"] = { -- action name
        description = "Fabricando munição.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["wammo|WEAPON_PISTOL"] = 10
        }
    },
    ["Fabricar Munição de SMG"] = { -- action name
        description = "Fabricando munição.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["wammo|WEAPON_MICROSMG"] = 10
        }
    },
    ["Fabricar Munição de rifle"] = { -- action name
        description = "Fabricando munição.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["wammo|WEAPON_ASSAULTRIFLE"] = 10
        }
    }
	}
}

local itemtr_hacker = {
	name="Hacker", -- menu name
	r=0,g=255,b=0, -- color
	max_units=20,
	units_per_minute=10,
	x=0,y=0,z=0, -- pos (doesn't matter as home component)
	radius=1.1, height=1.5, -- area
	recipes = {}
}

-- default flats positions from https://github.com/Nadochima/HomeGTAV/blob/master/List

-- define the home slots (each entry coordinate should be unique for ALL types)
-- each slots is a list of home components
--- {component,x,y,z} (optional _config)
--- the entry component is required
cfg.slot_types = {
  ["trevor_trailer"] = {
    {
      {"entry",1972.5347900391,3817.2524414063,33.428737640381},
      {"chest",1972.7764892578,3819.447265625,33.428737640381, _config = {weight=200}},
      {"wardrobe",1969.2116699219,3814.6779785156,33.428745269775}
      --{"gametable",1975.8670654297,3821.0249023438,33.44958114624},
      --{"itemtr", _config = itemtr_study, 1970.9127197266,3818.9682617188,33.428722381592}
    }
  },
  ["franklin_house"] = {
    {
      {"entry",-13.934011459351,-1438.681640625,31.101552963257},
      {"chest",-16.165374755859,-1430.3123779297,31.101528167725, _config = {weight=450}},
      {"wardrobe",-18.420257568359,-1438.7086181641,31.101554870605},
      --{"gametable",-9.8388214111328,-1433.0078125,31.10181427002},
      {"itemtr", _config = itemtr_study, -9.6672973632813,-1439.2152099609,31.101551055908}
    }
  },
  ["basic_Home2"] = {
    {
      {"entry",346.53167724609,-1012.852722168,-99.196258544922},
      {"chest",351.61978149414,-998.80029296875,-99.196258544922, _config = {weight=450}},
      {"wardrobe",351.22573852539,-993.52227783203,-99.19620513916},
      {"gametable",340.52719116211,-996.14672851563,-99.196235656738},
      {"itemtr", _config = itemtr_study, 345.3010559082,-994.58178710938,-99.196235656738}
    }
  },
  ["basic_Home3"] = {
    {
      {"entry",578.73425292969,4734.6098632813,-59.196243286133},
      {"chest",583.91571044922,4748.6020507813,-59.196212768555, _config = {weight=450}},
      {"wardrobe",583.47814941406,4753.783203125,-59.196212768555},
      {"gametable",572.69842529297,4751.2124023438,-59.196197509766},
      {"itemtr", _config = itemtr_study, 577.17779541016,4751.7026367188,-59.196216583252}
    }
  },
  ["basic_Home4"] = {
    {
      {"entry",605.69586181641,4740.3095703125,-60.985874176025},
      {"chest",605.56286621094,4748.046875,-59.008598327637, _config = {weight=450}},
      {"wardrobe",599.60540771484,4743.5849609375,-59.008640289307},
      {"gametable",598.69055175781,4750.0327148438,-59.008640289307},
      {"itemtr", _config = itemtr_study, 601.40606689453,4752.1669921875,-59.008640289307}
    }
  },
  ["basic_Home5"] = {
    {
      {"entry",151.3465423584,-1007.8140869141,-99.000007629395},
      {"chest",151.59342956543,-1003.1584472656,-99.000007629395, _config = {weight=450}},
      {"wardrobe",151.8910369873,-1001.1786499023,-99.000007629395},
      --{"gametable",340.52719116211,-996.14672851563,-99.196235656738},
      {"itemtr", _config = itemtr_study, 153.85394287109,-1006.4562988281,-99.000007629395}
    }
  },
  ["rail_flat"] = {
    {
      {"entry",671.78186035156,-723.59460449219,29.986223220825},
      {"chest",658.15179443359,-727.44494628906,37.337562561035, _config = {weight=4000}},
      {"wardrobe",664.96478271484,-726.07250976563,37.351558685303},
      {"gametable",670.20166015625,-704.70776367188,37.341278076172},
      {"itemtr", _config = itemtr_study, 671.78515625,-714.57501220703,37.339923858643}
    }
  },
  ["luxo2"] = {
    {
      {"entry",373.48266601563,423.67391967773,145.90786743164},
      {"chest",377.33291625977,429.44717407227,138.30012512207, _config = {weight=800}},
      {"wardrobe",374.47830200195,411.65759277344,142.10014343262},
      --{"gametable",-569.17297363281,643.48223876953,145.43829345703},
      {"itemtr", _config = itemtr_study, 371.64526367188,426.52490234375,138.30014038086}
    --{"itemtr", _config = itemtr_laboratory, -568.20037841797,667.91174316406,138.23193359375}
    }
  },
  ["luxo3"] = {
    {
      {"entry",342.09436035156,437.70755004883,149.38090515137},
      {"chest",336.33837890625,437.5446472168,141.77073669434, _config = {weight=800}},
      {"wardrobe",334.24133300781,428.49658203125,145.57084655762},
      {"gametable",338.20697021484,-996.49377441406,-99.196235656738},
      {"itemtr", _config = itemtr_study, 337.28085327148,431.64654541016,141.77075195313}
    --{"itemtr", _config = itemtr_laboratory, 345.30130004883,-996.15911865234,-99.196235656738}
    }
  },
  ["luxo4"] = {
    {
      {"entry",373.50216674805,423.4658203125,145.90788269043},
      {"chest",377.44128417969,429.73034667969,138.30012512207, _config = {weight=800}},
      {"wardrobe",374.38299560547,411.60913085938,142.10014343262},
      {"gametable",373.95629882813,406.78009033203,145.52767944336},
      {"itemtr", _config = itemtr_study, 372.12225341797,426.80780029297,138.30012512207}
    --{"itemtr", _config = itemtr_laboratory, 345.30130004883,-996.15911865234,-99.196235656738}
    }
  },
  ["luxo"] = {
    {
      {"entry",-174.25415039063,497.68032836914,137.66606140137},
      {"chest",-175.73112487793,492.45120239258,130.0436706543, _config = {weight=800}},
      {"wardrobe",-167.41249084473,487.58786010742,133.84375},
      {"gametable",-165.14164733887,485.2194519043,137.24421691895},
      {"itemtr", _config = itemtr_study, -172.68685913086,500.36532592773,130.04022216797}
    --{"itemtr", _config = itemtr_laboratory, -72.008094787598,-814.43493652344,243.38598632813}
    }
  },
  ["mansion"] = {
    {
      {"entry",-815.5,178.78350830078,72.153137207031},
      {"chest",-808.51202392578,175.12515258789,76.740737915039, _config = {weight=1000}},
      {"wardrobe",-811.91864013672,175.12641906738,76.745376586914},
      {"gametable",-802.62530517578,173.50367736816,72.844650268555},
      {"itemtr", _config = itemtr_study, -811.89361572266,182.51545715332,76.740768432617}
      --{"itemtr", _config = itemtr_laboratory, -799.93286132813,187.0225982666,72.605445861816}
    }
  },
  ["mansion2"] = {
    {
      {"entry",7.6293659210205,537.90026855469,176.02813720703},
      {"chest",-11.527637481689,516.53375244141,174.62814331055, _config = {weight=1250}},
      {"wardrobe",8.900839805603,528.54754638672,170.63502502441},
      --{"gametable",0.80820995569229,534.32055664063,175.34242248535},
      {"itemtr", _config = itemtr_study, 2.0338447093964,526.91583251953,174.62788391113}
      --{"itemtr", _config = itemtr_laboratory, 4.887170791626,525.84631347656,170.61726379395}
    }
  },
  ["mansao1_house"] = {
    {
      {"entry",-470.647,-689.459,53.402},
      {"chest",-469.077453613281,-697.664672851563,53.4144515991211, _config = {weight=1250}},
      {"wardrobe",-468.939910888672,-710.398986816406,47.2093048095703},
      {"gametable",-475.543884277344,-716.226867675781,52.0241050720215},
      {"itemtr", _config = itemtr_study, -479.113037109375,-712.874938964844,52.0032043457031}
    --{"itemtr", _config = itemtr_laboratory, -465.526031494141,-699.133666992188,53.4103393554688}
    }
  },
  ["mansao2_house"] = {
    {
      {"entry",-921.124,-381.099,85.480},
      {"chest",-915.268737792969,-375.818084716797,85.4891815185547, _config = {weight=1250}},
      {"wardrobe",-904.0673828125,-369.910552978516,79.2839508056641},
      {"gametable",-895.890075683594,-373.167846679688,84.0987701416016},
      {"itemtr", _config = itemtr_study, -897.224792480469,-377.828887939453,84.0779266357422}
    --{"itemtr", _config = itemtr_laboratory, -915.567504882813,-371.905731201172,85.4850234985352}
    },
  },
  ["mansao3_house"] = {
    {
      {"entry",-464.453,-708.617,77.086},
      {"chest",-466.566558837891,-700.528991699219,77.0956268310547, _config = {weight=1250}},
      {"wardrobe",-466.892852783203,-687.88720703125,70.8903503417969},
      {"gametable",-459.870513916016,-682.054565429688,75.7051773071289},
      {"itemtr", _config = itemtr_study, -456.510467529297,-685.274841308594,75.6842498779297}
    --{"itemtr", _config = itemtr_laboratory, -470.110504150391,-699.137634277344,77.0915145874023}
    },
  },
  ["beach_bungalo"] = {
    {
      {"entry",1247.0024414063,-2683.8708496094,2.8763480186462},
      {"chest",1241.4798583984,-2672.8369140625,2.8671495914459, _config = {weight=450}},
      {"wardrobe",1252.1770019531,-2678.8491210938,2.8671703338623},
      {"gametable",1240.0080566406,-2679.7204589844,2.8671700954437},
      {"itemtr", _config = itemtr_study, 1250.3914794922,-2672.564453125,2.8671674728394}
    }
  },
  ["beach2_bungalo"] = {
    {
      {"entry",1382.3488769531,-2711.6906738281,3.9191546440125},
      {"chest",1376.5187988281,-2703.6372070313,3.9186007976532, _config = {weight=450}},
      {"wardrobe",1387.3958740234,-2708.1040039063,3.9186007976532},
      --{"gametable",1240.0080566406,-2679.7204589844,2.8671700954437},
      {"itemtr", _config = itemtr_study, 1382.6911621094,-2703.6774902344,3.9186005592346}
    }
  },
  ["plantation_flat_2"] = {
    {
      {"entry",2453.3798828125,4970.5024414063,46.810581207275},
      {"chest",2432.1650390625,4963.0649414063,46.936447143555, _config = {weight=3000}},
      {"wardrobe",2442.6887207031,4971.50390625,46.810600280762}
      --{"gametable",2456.3798828125,4982.4672851563,46.810009002686}
      --{"itemtr", _config = itemtr_laboratory, 2433.2919921875,4968.62109375,42.347625732422}
    }
  },
  ["Rich_Home"] = {
    {
      {"entry",1400.6745605469,1159.5922851563,114.33366394043},
      {"chest",1399.9816894531,1139.6080322266,114.33364868164, _config = {weight=2000}},
      {"wardrobe",1397.8403320313,1164.0817871094,114.3335723877},
      {"gametable",1397.1832275391,1132.1680908203,114.33358001709},
      {"itemtr", _config = itemtr_study, 1400.2811279297,1158.7615966797,114.33364868164}
    --{"itemtr", _config = itemtr_laboratory, 1399.5760498047,1147.2416992188,114.33366394043}
    }
  },
  ["Beach_Home"] = {
    {
      {"entry",-1151.330078125,-1520.3634033203,10.632718086243},
      {"chest",-1153.2681884766,-1516.7121582031,10.632726669312, _config = {weight=300}},
      {"wardrobe",-1144.6002197266,-1515.4534912109,10.632726669312},
      {"gametable",-1409.3668212891,-1011.7996826172,24.063997268677},
      {"itemtr", _config = itemtr_study, -1156.6875,-1517.3475341797,10.632729530334}
    }
  },
  ["other_flat"] = {
    {
      {"entry",-784.363,323.792,211.996},
      {"chest",-766.744384765625,328.375,211.396545410156, _config = {weight=1000}},
      {"wardrobe",-793.502136230469,326.861846923828,210.796630859375},
      {"gametable",-781.973083496094,338.788482666016,211.231979370117},
      {"itemtr", _config = itemtr_study, -778.560241699219,333.439453125,211.197128295898}
      --{"itemtr", _config = itemtr_laboratory, -763.146362304688,326.994598388672,211.396560668945},
      --{"itemtr", _config = itemtr_hacker, -762.913757324219,332.328216552734,211.396484375}
    },
    {
      {"entry",-603.997,58.954,98.200},
      {"chest",-621.323669433594,54.2074241638184,97.5995330810547, _config = {weight=1000}},
      {"wardrobe",-594.668823242188,55.5750961303711,96.9996185302734},
      {"gametable",-606.140441894531,43.8849754333496,97.4350128173828},
      {"itemtr", _config = itemtr_study, -608.968322753906,49.1769981384277,97.4001312255859}
      --{"itemtr", _config = itemtr_laboratory, -624.831909179688,55.5965461730957,97.5995635986328},
      --{"itemtr", _config = itemtr_hacker, -625.2353515625,50.4472694396973,97.5995254516602}
    },
    {
      {"entry",-1453.013,-539.629,74.044},
      {"chest",-1466.57763671875,-528.339294433594,73.4436492919922, _config = {weight=1000}},
      {"wardrobe",-1449.85034179688,-549.231323242188,72.8437194824219},
      {"gametable",-1466.37182617188,-546.663757324219,73.279052734375},
      {"itemtr", _config = itemtr_study, -1463.84411621094,-541.1962890625,73.2442169189453}
      --{"itemtr", _config = itemtr_laboratory, -1467.62377929688,-524.550842285156,73.4436492919922},
      --{"itemtr", _config = itemtr_hacker, -1472.04296875,-527.374267578125,73.4436416625977}
    },
    {
      {"entry",-912.547,-364.706,114.274},
      {"chest",-926.693176269531,-377.596130371094,113.674102783203, _config = {weight=1000}},
      {"wardrobe",-903.66650390625,-364.023223876953,113.074157714844},
      {"gametable",-908.407165527344,-379.825714111328,113.509590148926},
      {"itemtr", _config = itemtr_study, -913.553588867188,-376.692016601563,113.474617004395}
      --{"itemtr", _config = itemtr_laboratory, -930.571899414063,-378.051239013672,113.674072265625},
      --{"itemtr", _config = itemtr_hacker, -928.425598144531,-382.820159912109,113.67407989502}
    }
  },
  ["basic_flat"] = {
    {
      {"entry",-782.171,324.589,223.258},
      {"chest",-773.718078613281,325.144409179688,223.266357421875, _config = {weight=1250}},
      {"wardrobe",-760.885437011719,325.457153320313,217.061080932617},
      {"gametable",-755.40185546875,318.263214111328,221.875823974609},
      {"itemtr", _config = itemtr_study, -758.670104980469,315.048156738281,221.854904174805}
    --{"itemtr", _config = itemtr_laboratory, -772.294372558594,328.913177490234,223.261581420898}
    },
    {
      {"entry",-774.171,333.589,207.621},
      {"chest",-782.118591308594,332.147399902344,207.629608154297, _config = {weight=1250}},
      {"wardrobe",-795.118469238281,331.631256103516,201.42431640625},
      {"gametable",-800.763427734375,338.574951171875,206.239105224609},
      {"itemtr", _config = itemtr_study, -797.283447265625,342.134338378906,206.21842956543}
    --{"itemtr", _config = itemtr_laboratory, -783.788635253906,328.553985595703,207.625396728516}
    },
    {
      {"entry",-774.171,333.589,159.998},
      {"chest",-782.66015625,332.523284912109,160.010223388672, _config = {weight=1250}},
      {"wardrobe",-795.550964355469,332.229614257813,153.804931640625},
      {"gametable",-801.228942871094,339.106231689453,158.619750976563},
      {"itemtr", _config = itemtr_study, -797.896728515625,342.543273925781,158.599044799805}
    --{"itemtr", _config = itemtr_laboratory, -784.178588867188,328.916839599609,160.006057739258}
    },
    {
      {"entry",-596.689,59.139,108.030},
      {"chest",-604.427001953125,57.0807762145996,108.035743713379, _config = {weight=1250}},
      {"wardrobe",-617.180358886719,56.9536590576172,101.830520629883},
      {"gametable",-623.078796386719,63.688045501709,106.645317077637},
      {"itemtr", _config = itemtr_study, -619.724853515625,67.1367950439453,106.624366760254}
    --{"itemtr", _config = itemtr_laboratory, -605.9560546875,53.3968696594238,108.031196594238}
    },
    {
      {"entry",-1451.557,-523.546,69.556},
      {"chest",-1457.28601074219,-529.699523925781,69.565315246582, _config = {weight=1250}},
      {"wardrobe",-1467.07995605469,-536.98583984375,63.3601188659668},
      {"gametable",-1476.12658691406,-534.873474121094,68.1748962402344},
      {"itemtr", _config = itemtr_study, -1475.36840820313,-530.117126464844,68.1540756225586}
    --{"itemtr", _config = itemtr_laboratory, -1456.35876464844,-533.55029296875,69.5607528686523}
    },
    {
      {"entry",-1452.185,-522.640,56.929},
      {"chest",-1457.3740234375,-529.737854003906,56.9376449584961, _config = {weight=1250}},
      {"wardrobe",-1467.7158203125,-537.308349609375,50.732494354248},
      {"gametable",-1476.12670898438,-534.895751953125,55.547306060791},
      {"itemtr", _config = itemtr_study, -1475.39453125,-530.135192871094,55.5264129638672}
    --{"itemtr", _config = itemtr_laboratory, -1456.32409667969,-533.43701171875,56.9333839416504}
    },
    {
      {"entry",-907.900,-370.608,109.440},
      {"chest",-914.79296875,-375.26416015625,109.448974609375, _config = {weight=1250}},
      {"wardrobe",-926.047912597656,-381.470153808594,103.243774414063},
      {"gametable",-934.216979980469,-378.082336425781,108.05859375},
      {"itemtr", _config = itemtr_study, -932.810302734375,-373.413330078125,108.03776550293}
    --{"itemtr", _config = itemtr_laboratory, -914.430541992188,-379.17333984375,109.444869995117}
    }
  },
  ["beach_house"] = {
    {
      {"entry",-1396.5289306641,-1000.8833007813,24.704557418823},
      {"chest",-1405.3687744141,-1016.725769043,24.704586029053, _config = {weight=800}},
      {"wardrobe",-1401.7725830078,-1014.5983886719,24.740036010742},
      {"gametable",-1408.185546875,-1010.6528930664,24.064044952393},
      {"itemtr", _config = itemtr_study, -1403.8331298828,-1013.1638793945,24.064046859741}
    }
  },
  ["Modern_Apt"] = {
    {
      {"entry",-262.89743041992,-713.50500488281,71.032737731934},
      {"chest",-260.3044128418,-710.51483154297,71.03263092041, _config = {weight=2000}},
      {"wardrobe",-268.35028076172,-711.14282226563,74.130767822266},
      {"gametable",-261.54336547852,-705.24145507813,69.073661804199},
      {"itemtr", _config = itemtr_study, -271.51849365234,-699.15698242188,74.129493713379}
    --{"itemtr", _config = itemtr_laboratory, -277.80133056641,-706.42468261719,71.034538269043}
    }
  },
  ["galpaoMETA"] = {
    {
      {"entry",997.58605957031,-3200.5446777344,-36.393684387207},
      {"chest",998.51953125,-3201.1098632813,-38.993125915527, _config = {weight=10000}},
      {"itemtr", _config = itemtr_study, 1002.0233154297,-3194.8701171875,-38.993156433105},
    {"itemtr", _config = itemtr_laboratorymetanfetamina, 1016.647644043,-3200.3547363281,-38.993225097656}
    }
  },
  ["galpaoMACONHA"] = {
    {
      {"entry",1065.3881835938,-3183.4870605469,-39.163551330566},
      {"chest",1043.0834960938,-3192.6547851563,-37.905155181885, _config = {weight=10000}},
      {"itemtr", _config = itemtr_study, 1060.2242431641,-3181.9777832031,-39.164844512939},
    {"itemtr", _config = itemtr_laboratorycannabis, 1034.650390625,-3205.5732421875,-38.17663192749}
    }
  },
  ["galpaoCOMUM1"] = {
    {
      {"entry",1049.3609619141,-3097.0930175781,-38.99995803833},
      {"chest",1057.7144775391,-3100.5285644531,-38.999935150146, _config = {weight=10000}},
      {"itemtr", _config = itemtr_study, 1049.0549316406,-3100.5158691406,-38.999935150146}
    --{"itemtr", _config = itemtr_laboratory, 1087.8421630859,-3198.7846679688,-38.993469238281}
    }
  },
  ["galpaoARMAS"] = {
    {
      {"entry",992.91564941406,-3097.7041015625,-38.995861053467},
      {"chest",1013.3209838867,-3104.93359375,-38.999862670898, _config = {weight=10000}},
      {"itemtr", _config = itemtr_study, 993.76452636719,-3102.9438476563,-38.995849609375},
    {"itemtr", _config = itemtr_laboratoryarmas, 999.10992431641,-3111.8117675781,-38.99987411499},
    {"itemtr", _config = itemtr_laboratoryarmasfinal, 1003.7243652344,-3111.826171875,-38.999904632568}
    }
  },
  ["galpaoCOCA"] = {
    {
      {"entry",1088.0946044922,-3099.3171386719,-38.99995803833},
      {"chest",1095.1428222656,-3098.7829589844,-38.99995803833, _config = {weight=10000}},
      {"itemtr", _config = itemtr_study, 1088.3505859375,-3101.4594726563,-38.99995803833},
    {"itemtr", _config = itemtr_laboratorycocaina, 1100.9782714844,-3101.7268066406,-38.99995803833}
    }
  },
  ["galpaoLAVAGEM"] = {
    {
      {"entry",756.70123291016,-914.62567138672,25.42293548584},
      {"chest",742.8193359375,-915.62170410156,25.02338218689, _config = {weight=10000}},
      {"itemtr", _config = itemtr_study, 756.84790039063,-918.20611572266,25.42293548584},
    {"itemtr", _config = itemtr_laboratorydirtymoney, 742.68078613281,-926.21789550781,24.979751586914}
    }
  }
}
  --["Expensive_flat"] = {
    --{
      --{"entry",-174.25415039063,497.68032836914,137.66606140137},
      --{"chest",-170.91767883301,486.65267944336,137.44346618652, _config = {weight=2000}},
      --{"wardrobe",-167.52639770508,488.09219360352,133.84378051758},
      --{"gametable",-165.25064086914,481.94122314453,137.26547241211},
      --{"itemtr", _config = itemtr_study, -170.125,491.10211181641,130.04365539551},
	  --{"itemtr", _config = itemtr_laboratory, -168.01805114746,493.77416992188,137.65361022949}
     --}
	--},
   --["Rich_flat"] = {
	--{
      --{"entry",117.25834655762,560.08666992188,184.30490112305},
      --{"chest",118.02893829346,548.17034912109,184.09687805176, _config = {weight=2000}},
      --{"wardrobe",122.19967651367,549.14868164063,180.49728393555},
      --{"gametable",123.65795898438,542.46752929688,183.92469787598},
      --{"itemtr", _config = itemtr_study, 113.8675994873,569.33721923828,176.69714355469},
	  --{"itemtr", _config = itemtr_laboratory, 122.04703521729,554.95385742188,184.29711914063}
	  --}
    --},
	--["Normal_flat"] = {
	--{
      --{"entry",342.23474121094,437.68603515625,149.380859375},
      --{"chest",334.65530395508,428.56219482422,145.57086181641, _config = {weight=2000}},
      --{"wardrobe",-167.52639770508,488.09219360352,133.84378051758},
      --{"gametable",1396.9838867188,1132.2958984375,114.33364868164},
      --{"itemtr", _config = itemtr_study, 671.78515625,-714.57501220703,37.339923858643},
	  --{"itemtr", _config = itemtr_laboratory, 339.99038696289,430.75555419922,149.38067626953}
	  --}
    --},
  --["plantation_flat"] = {
    --{
      --{"entry",1393.0272216797,3612.8176269531,34.980930328369},
      --{"chest",1396.7132568359,3604.9682617188,38.941928863525, _config = {weight=2500}},
      --{"wardrobe",1395.5855712891,3616.0346679688,38.941928863525},
      --{"gametable",1394.2917480469,3610.3530273438,38.941928863525},
      --{"itemtr", _config = itemtr_laboratory, 1391.9298095703,3603.7819824219,38.941928863525}
    --}
  --},


-- define home clusters
cfg.homes = {
  ["Trailer"] = {
    slot = "trevor_trailer",
    entry_point = {1980.0181884766,3816.54296875,32.275169372559},
    buy_price = 120000,
    sell_price = 84000,
    max = 1
  },
  ["Casa 01"] = {
    slot = "franklin_house",
    entry_point = {-13.843012809753,-1444.6134033203,30.646482467651},
    buy_price = 600000,
    sell_price = 420000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Casa 02"] = {
    slot = "basic_Home2",
    entry_point = {1367.1881103516,-605.59997558594,74.710922241211},
    buy_price = 600000,
    sell_price = 420000,
    max = 1,
    blipid=374, 
    blipcolor=11
  },
  ["Casa 03"] = {
    slot = "basic_Home3",
    entry_point = {1388.0894775391,-569.76208496094,74.496520996094},
    buy_price = 600000,
    sell_price = 420000,
    max = 1,
    blipid=374, 
    blipcolor=11
  },
  ["Casa 04"] = {
    slot = "basic_Home4",
    entry_point = {1385.3676757813,-592.92138671875,74.485282897949},
    buy_price = 450000,
    sell_price = 315000,
    max = 1,
    blipid=374, 
    blipcolor=11
  },
  ["Casa 05"] = {
    slot = "basic_Home5",
    entry_point = {1323.6943359375,-582.35314941406,73.246368408203},
    buy_price = 300000,
    sell_price = 210000,
    max = 1,
    blipid=374, 
    blipcolor=11
  },
  ["Casa Deposito"] = {
    slot = "rail_flat",
    entry_point = {673.96185302734,-724.09637451172,30.730808258057},
    buy_price = 3500000,
    sell_price = 2450000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Casa De Luxo 01"] = {
    slot = "luxo2",
    entry_point = {373.62869262695,428.08715820313,145.68450927734},
    buy_price = 1500000,
    sell_price = 1050000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Casa de Luxo 02"] = {
    slot = "luxo3",
    entry_point = {346.44821166992,440.65277099609,147.71784973145},
    buy_price = 1500000,
    sell_price = 1050000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Casa de Luxo 03"] = {
    slot = "luxo4",
    entry_point = {-518.88470458984,594.56689453125,120.83657073975},
    buy_price = 2000000,
    sell_price = 1400000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Casa de Luxo 04"] = {
    slot = "luxo",
    entry_point = {-189.07504272461,501.27435302734,134.52746582031},
    buy_price = 2000000,
    sell_price = 1400000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Mansão #01"] = {
    slot = "mansion",
    entry_point = {-818.27014160156,177.49227905273,72.222503662109},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Mansão #02"] = {
    slot = "mansion2",
    entry_point = {8.5883893966675,541.60162353516,176.02816772461},
    buy_price = 7000000,
    sell_price = 4900000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Mansão #03"] = {
    slot = "mansao1_house",
    entry_point = {-1808.3256835938,333.95721435547,89.371543884277},
    buy_price = 7000000,
    sell_price = 4900000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Mansão #04"] = {
    slot = "mansao2_house",
    entry_point = {-2588.2351074219,1911.9346923828,167.49890136719},
    buy_price = 7000000,
    sell_price = 4900000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Mansão do Lago"] = {
    slot = "mansao3_house",
    entry_point = {-114.08793640137,985.46826171875,235.7541809082},
    buy_price = 7000000,
    sell_price = 4900000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Barraco da Praia 01"] = {
    slot = "beach_bungalo",
    entry_point = {1245.6123046875,-2686.2346191406,2.4227623939514},
    buy_price = 350000,
    sell_price = 30000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Barraco da Praia 02"] = {
    slot = "beach2_bungalo",
    entry_point = {1382.2614746094,-2713.9211425781,3.5199046134949},
    buy_price = 350000,
    sell_price = 30000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Fazenda"] = {
    slot = "plantation_flat_2",
    entry_point = {2452.4807128906,4961.3364257813,45.502922058105},
    buy_price = 2000000,
    sell_price = 1400000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Fazenda de Luxo"] = {
    slot = "Rich_Home",
    entry_point = {1394.4956054688,1152.6457519531,114.41397857666},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Apartamento Básico na Praia"] = {
    slot = "Beach_Home",
    entry_point = {-1149.7276611328,-1522.0582275391,10.628049850464},
    buy_price = 400000,
    sell_price = 280000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  ["Apartamento Básico 01"] = {
    slot = "other_flat",
    entry_point = {-770.921,312.537,85.698},
    buy_price = 1000000,
    sell_price = 700000,
    max = 4,
    blipid=374,
    blipcolor=11
  },
  ["Apartamento de Luxo 01"] = {
    slot = "basic_flat",
    entry_point = {-635.665,44.155,42.697},
    buy_price = 2000000,
    sell_price = 1400000,
    max = 4,
    blipid=374,
    blipcolor=11
  },
  ["Apartamento de Luxo 02"] = {
    slot = "basic_flat",
    entry_point = {-1446.769,-538.531,34.740},
    buy_price = 2000000,
    sell_price = 1400000,
    max = 3,
    blipid=374,
    blipcolor=11
  },
  ["Apartamento de Luxo Praia"] = {
    slot = "beach_house",
    entry_point = {-1384.8225097656,-975.95910644531,8.9470081329346},
    buy_price = 2000000,
    sell_price = 1400000,
    max = 1,
    blipid=374,
    blipcolor=11
  },
  --["Casa #01"] = {
    --slot = "Rich_flat",
    --entry_point = {-175.16819763184,502.37973022461,137.42015075684},
    --buy_price = 480000,
    --sell_price = 300000,
    --max = 1,
    --blipid=374,
    --blipcolor=11
  --},
  --["Casa #03"] = {
    --slot = "Expensive_flat",
    --entry_point = {-66.644836425781,490.34689331055,144.69012451172},
    --buy_price = 400000,
    --sell_price = 300000,
    --max = 1,
    --blipid=374,
    --blipcolor=11
  --},
  ["Galpao 01"] = { --Metafetamina
    slot = "galpaoMETA",
    entry_point = {1454.4614257813,-1651.6026611328,66.99479675293},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1,
    add_group = "galpaocannabis"
  },
  ["Galpao 02"] = { --Maconha
    slot = "galpaoMACONHA",
    entry_point = {2846.6674804688,4449.4375,48.518280029297},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1,
    add_group = "galpaometannfetamina"
  },
  ["Galpao 03"] = { --Cocaina
    slot = "galpaoCOCA",
    entry_point = {-1461.5863037109,-382.83508300781,38.745960235596},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1,
    add_group = "galpaococainna"
  },
  ["Galpao 04"] = {
    slot = "galpaoARMAS",
    entry_point = {939.76989746094,-1490.833984375,30.092649459839},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1,
    add_group = "galpaodirtymoney"
  },
  ["Galpao 05"] = {
    slot = "galpaoCOMUM1",
    entry_point = {759.47930908203,-909.537109375,25.280485153198},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1
  },
  ["Galpao 06"] = {
    slot = "galpaoLAVAGEM",
    entry_point = {758.97644042969,-914.66522216797,25.432731628418},
    buy_price = 5000000,
    sell_price = 3500000,
    max = 1,
    add_group = "galpaodirtymoney"
  }
}

return cfg
