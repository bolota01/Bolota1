
local cfg = {}

cfg.lang = "en"

-- REPAIR

-- map of permission -> repair config
-- (multiple repair permissions can work)
--- chance: chance factor per minute (1 => everytime, 10 => 1/10)
--- title
--- positions
--- reward: money reward
--- steps: number of things to fix
cfg.repair = {
  ["mission.repair.satellite_dishes"] = { -- permissao
    chance = 1, -- quantidade de lados do dado 1
    title = "Antenas parabólicas", -- nome
    steps = 2,
    positions = {
      {1985.55017089844,2929.42211914063,46.5480003356934},
      {1965.38012695313,2917.47241210938,56.1684608459473},
      {1963.78540039063,2923.09497070313,58.674430847168},
      {2000.7314453125,2930.4404296875,56.9706687927246},
      {2008.03125,2933.06591796875,59.4772453308105},
      {2021.29052734375,2945.23486328125,47.3697547912598},
      {2046.88366699219,2944.65673828125,51.0216827392578},
      {2048.24487304688,2950.81567382813,57.5155029296875},
      {2049.64965820313,2945.82641601563,57.5173225402832},
      {2043.96203613281,2945.04541015625,60.0233764648438},
      {2063.26318359375,2954.65551757813,47.1244201660156},
      {2078.7734375,2945.44653320313,56.4166870117188},
      {2084.89599609375,2949.8955078125,58.922477722168},
      {2075.71948242188,2950.55688476563,58.9233741760254},
      {2098.6142578125,2939.935546875,47.3400077819824},
      {2106.00659179688,2926.54125976563,50.9320068359375},
      {2106.63671875,2923.71069335938,57.4270858764648},
      {2106.38110351563,2929.37817382813,59.9300575256348},
      {2114.44677734375,2924.77514648438,59.933162689209},
      {2127.35888671875,2918.94116210938,47.7327079772949},
      {2137.28881835938,2900.53442382813,57.263298034668},
      {2137.61767578125,2906.61645507813,59.770336151123},
      {2144.6728515625,2900.85595703125,59.7593727111816}
    },
    reward = 1500
  },
  ["mission.repair.wind_turbines"] = {
    chance = 1,
    steps = 2,
    title = "Turbinas eólicas",
    positions = {
      {2363.77880859375,2288.63891601563,94.252693176269},
      {2347.873046875,2237.5771484375,99.3171691894531},
      {2330.4150390625,2114.89965820313,108.288673400879},
      {2331.23291015625,2054.52392578125,103.90625},
      {2287.10668945313,2075.57153320313,122.888381958008},
      {2271.43725585938,1996.4248046875,132.123352050781},
      {2307.3681640625,1972.44323730469,131.318496704102},
      {2267.27758789063,1917.859375,123.269912719727},
      {2299.90209960938,1857.3779296875,106.976081848145},
      {2356.48413085938,1836.69982910156,102.337211608887}
    },
    reward = 1500
  }
}
cfg.correio = {
  ["missao.correio.encomendas"] = { -- permissao
    chance = 1, -- quantidade de lados do dado 1
    title = "Entrega de encomendas", -- nome
    text = "Entregue todas as encomendas.",
    steps = 2,
    positions = {
      {307.379272460938,-1085.22058105469,29.0052438354492},
      {-47.2743873596191,-762.72216796875,32.6001669616699},
      {-274.226348876953,-564.568237304688,29.9009448242188},
      {-307.191253662109,-712.606811523438,28.250624786377},
      {-267.318206787109,-831.868835449219,31.5606645965576},
      {-292.107818603516,-988.930786132813,23.9009479827881},
      {-47.6948432922363,-785.235900878906,43.9002542114258},
      {66.4006576538086,-734.228820800781,43.9004421386719},
      {105.720031738281,-624.741760253906,43.9001212158203},
      {495.365661621094,-778.442321777344,24.6009834442139},
      {851.067077636719,-950.545227050781,25.9003152008057},
      {849.662719726563,-1053.74816894531,27.8008584747314},
      {902.838317871094,-142.258270263672,76.5008240356445},
      {970.883605957031,-117.029663085938,74.3000769042969},
      {945.690185546875,-255.781066894531,67.4004653930664},
      {868.21728515625,-208.389022827148,70.5005111083984},
      {768.811462402344,-156.665115356445,74.4002396850586},
      {1203.64440917969,-454.903961181641,66.5506821289063},
      {-264.137969970703,198.03092956543,85.2004312133789},
      {-177.637008666992,213.771255493164,88.7002062988281},
      {-182.930419921875,316.721832275391,97.7007632446289},
      {-127.102439880371,177.254760742188,85.600044128418},
      {-74.2093200683594,145.735504150391,81.3008872680664},
      {88.2836380004883,184.7744140625,104.460156494141},
      {78.4332656860352,168.985961914063,104.480487365723},
      {46.8197975158691,6300.17236328125,30.6521873474121},
      {-274.786987304688,6248.19873046875,30.9308879394531},
      {-356.575744628906,6328.09326171875,29.4004118347168},
      {-296.947021484375,6340.74755859375,31.3607152252197},
      {-263.952667236328,6370.515625,30.9007071990967},
      {-361.863677978516,6275.29541015625,30.2000919494629},
      {-394.516265869141,6309.8251953125,28.6805697631836},
      {-437.205017089844,6202.87890625,29.1200762329102},
      {-347.462097167969,6215.3486328125,31.000576965332},
      {-358.095367431641,6066.47216796875,31.0005104370117},
      {959.550048828125,-2372.13989257813,30.3007827606201},
      {1050.63415527344,-2366.83447265625,30.3007411346436},
      {1088.68811035156,-2289.53930664063,29.9003636322021},
      {1041.94897460938,-2178.07690429688,31.1802428283691},
      {934.963134765625,-1964.57470703125,30.1504727325439},
      {924.246398925781,-2020.62280273438,30.0009743499756},
      {967.231506347656,-1816.20007324219,30.8005784912109},
      {946.368469238281,-1697.91320800781,29.7906724700928},
      {943.090209960938,-1455.56103515625,30.9805959014893},
      {1158.44934082031,-1316.01293945313,34.5007903137207},
      {1122.14929199219,-1516.86755371094,34.4002297668457},
      {1144.16955566406,-1406.31457519531,34.3505534057617},
      {-1468.36853027344,-925.037353515625,9.70011583709717},
      {-1297.83459472656,-787.924682617188,17.2306410522461},
      {-1268.61389160156,-818.876708984375,16.8003114471436},
      {-1407.99182128906,-735.800415039063,23.2007184143066},
      {-1377.88793945313,-652.622497558594,28.4000058746338},
      {-1642.96533203125,-993.046203613281,12.6808237915039},
      {-1691.28979492188,-1068.29382324219,12.7002171936035},
      {-1818.53234863281,-1210.51550292969,12.7007179336548},
      {-1540.11462402344,-582.15087890625,33.4005423278809},
      {-1526.26147460938,-281.718872070313,48.8207893676758},
      {-1570.37072753906,-288.545227050781,47.8205915222168}
    },
    reward = 1500
  }
}
cfg.bankdriver = {
  ["mission.bankdriver.moneybank"] = {
    chance = 1,
    title = "Reabasteça Caixas Eletrônicos",
    steps = 1,
    positions = {
      {89.577018737793,2.16031360626221,68.322021484375},
      {-1390.6767578125,-590.72039794922,30.319551467896},
      {-526.497131347656,-1222.79455566406,18.4549674987793},
      {-2072.48413085938,-317.190521240234,13.315972328186},
      {-821.565551757813,-1081.90270996094,11.1324348449707},
      {1686.74694824219,4815.8828125,42.0085678100586},
      {-386.899444580078,6045.78466796875,31.5001239776611},
      {1171.52319335938,2702.44897460938,38.1754684448242},
      {1968.11157226563,3743.56860351563,32.3437271118164},
      {2558.85815429688,351.045166015625,108.621520996094},
      {1153.75634765625,-326.805023193359,69.2050704956055},
      {-56.9172439575195,-1752.17590332031,29.4210166931152},
      {-3241.02856445313,997.587158203125,12.5503988265991},
      {-1827.1884765625,784.907104492188,138.302581787109},
      {-1091.54748535156,2708.55786132813,18.9437484741211},
      {112.45637512207,-819.25048828125,31.3392715454102},
      {-256.173187255859,-716.031921386719,33.5202751159668},
      {174.227737426758,6637.88623046875,31.5730476379395},
      {-660.727661132813,-853.970336914063,24.484073638916},
      {-1109.6724853516,-1690.8194580078,4.3749823570251},
      {119.64133453369,-883.93212890625,31.123065948486},
      {149.85278320313,-1040.2709960938,29.374071121216},
      {-1212.9780273438,-330.24380493164,37.787014007568},
      {1167.0463867188,-456.21408081055,66.789077758789},
      {380.94128417969,323.74688720703,103.56638336182},
      {-165.12379455566,232.64437866211,94.921928405762},
      {-2963.0163574219,482.77261352539,15.703097343445},
      {-1827.2380371094,784.98699951172,138.30239868164},
      {2559.1220703125,351.04205322266,108.62149810791},
      {-351.00192260742,-49.45735168457,49.042579650879},
      {89.557388305664,2.1400310993195,68.323554992676},
      {314.24465942383,-278.61502075195,54.170776367188},
      {112.77411651611,-819.00274658203,31.337894439697},
      {111.07933807373,-775.91485595703,31.4378490448},
      {-301.73983764648,-830.50561523438,32.396545410156},
      {-821.32684326172,-1082.4553222656,11.132417678833},
      {-710.00799560547,-819.57690429688,23.647678375244},
      {-660.74298095703,-853.62835693359,24.480230331421},
      {526.46704101563,-160.64918518066,57.066177368164},
      {-845.22045898438,-340.73037719727,38.680240631104}
    },
    reward = 1500
  },
  ["mission.bankdriver.moneybank2"] = {
    chance = 1,
    title = "Transferencia de Dinheiro",
    steps = 1,
    positions = {
    {150.266,-1040.203,29.374},
    {-1212.980,-330.841,37.787},
    {-2962.582,482.627,15.703},
    {-112.202,6469.295,31.626},
    {314.187,-278.621,54.170},
    {-351.534,-49.529,49.042},
    {241.727,220.706,106.286}
    },
    reward = 1500
  }  
}

cfg.prostituta = {
  ["mission.prostituta"] = {
    title = "Prostituição",
    text = "Todos desejam seu corpo, mas apenas um por vez.",
    chance = 3,
    steps = 1,
    positions = {
    {-107.135391235352, -610.504272460938, 35.6777610778809},
    {-563.979919433594, 268.038635253906, 82.521728515625},
    {-597.918762207031, -307.878479003906, 34.4432411193848},
    {-1150.85693359375, -1594.68334960938, 3.86077857017517},
    {-230.550277709961, -2048.74340820313, 27.2381439208984},
    {-1040.90148925781, -2718.84204101563, 13.2963371276855},
    {-938.132873535156, -2324.90307617188, 6.32498407363892},
    {-1416.60266113281, -527.608276367188, 31.2453346252441},
    {-647.495849609375, 41.0316467285156, 39.6100006103516}
    },
    reward = 1500
  }
}


-- DELIVERY

local common_delivery_positions = {
	{-107.135391235352,-610.504272460938,35.6777610778809},
  {-563.979919433594,268.038635253906,82.521728515625},
  {-597.918762207031,-307.878479003906,34.4432411193848},
  {-1150.85693359375,-1594.68334960938,3.86077857017517},
  {-230.550277709961,-2048.74340820313,27.2381439208984},
  {-1040.90148925781,-2718.84204101563,13.2963371276855},
  {-938.132873535156,-2324.90307617188,6.32498407363892},
  {-1416.60266113281,-527.608276367188,31.2453346252441},
  {-647.495849609375,41.0316467285156,39.6100006103516},
  {-783.066528320313,292.72216796875,85.3055648803711},
  {296.820739746094,175.705184936523,103.650566101074},
  {256.210906982422,-377.495727539063,44.1429252624512},
  {-1610.41137695313,-937.259094238281,8.25015354156494},
  {-797.591735839844,-115.627426147461,37.4747085571289},
  {-1087.20959472656,479.4970703125,81.5277786254883},
  {-1215.48083496094,457.809478759766,91.9756546020508},
  {-1277.36901855469,496.794769287109,97.8074340820313},
  {-1380.82360839844,474.517272949219,105.052627563477},
  {-1063.642578125,-1054.95007324219,2.15036153793335},
  {-1113.640625,-1068.970703125,2.15036201477051},
  {-1161.85144042969,-1099.05871582031,2.17665767669678},
  {-1179.275390625,-1776.3752441406,3.436785697937},--coordenadas de casas e lojas
  {-1098.9913330078,-1678.7537841797,3.8918850421906},
  {-1098.7995605469,-1673.3793945313,7.709174156189},
  {-1110.5769042969,-1660.3981933594,4.4392099380493},
  {-1118.3840332031,-1651.3850097656,4.6623749732971},
  {-1143.4381103516,-1597.9063720703,4.3900289535522},
  {-1114.716796875,-1579.2846679688,8.6795349121094},
  {-1122.7572021484,-1557.4039306641,5.4042816162109},
  {-1134.7158203125,-1568.796875,4.4075818061829},
  {-1155.8372802734,-1574.0561523438,8.3441514968872},
  {-1163.3654785156,-1585.2761230469,4.405170917511},
  {-1165.2023925781,-1583.0980224609,4.4004716873169},
  {-1168.5437011719,-1577.279296875,4.4055428504944},
  {-1171.7009277344,-1572.3723144531,4.663622379303},
  {-1174.9899902344,-1568.353515625,4.4982738494873},
  {-1180.8482666016,-1559.6276855469,5.0350799560547},
  {-1183.0793457031,-1556.6636962891,5.047022819519},
  {-1184.7138671875,-1553.4166259766,5.0345053672791},
  {-1150.7563476563,-1519.5572509766,4.3595952987671},
  {-1148.4196777344,-1523.6197509766,10.628052711487},
  {-1150.0552978516,-1521.9172363281,10.628057479858},
  {-1142.77734375,-1520.9625244141,4.3560581207275},
  {-1161.6456298828,-1532.3664550781,4.5020685195923},
  {-1203.2443847656,-1524.1942138672,4.3823099136353},
  {-1218.6791992188,-1516.5404052734,4.3785653114319},
  {-1215.8016357422,-1498.8472900391,4.3344511985779},
  {-1219.4567871094,-1493.3840332031,4.3348150253296},
  {-1224.7199707031,-1486.8990478516,4.334098815918},
  {-1221.72265625,-1469.4212646484,4.3210735321045},
  {-1210.8543701172,-1461.7919921875,4.3315687179565},
  {-1218.8624267578,-1433.7994384766,4.3377237319946},
  {-1221.3308105469,-1438.0799560547,4.330502986908},
  {-1226.9415283203,-1438.6324462891,4.3354721069336},
  {-1251.6578369141,-1449.4455566406,4.3494415283203},
  {-1256.7299804688,-1441.5383300781,4.3481307029724},
  {-1259.3529052734,-1438.7965087891,4.3490447998047},
  {-1268.53125,-1421.7551269531,4.3421068191528},
  {-1276.2021484375,-1410.9426269531,4.3202114105225},
  {-1273.6860351563,-1382.2254638672,4.3222503662109},
  {-1298.8232421875,-1378.1949462891,4.4891510009766},
  {-1332.6951904297,-1215.2950439453,5.9405398368835},
  {-1321.3074951172,-1169.5921630859,4.8270592689514},
  {-1289.1127929688,-1116.654296875,6.9442219734192},
  {-1275.6193847656,-1139.5482177734,6.7936925888062},
  {-1270.9265136719,-1148.5579833984,6.7879672050476},
  {-1241.7322998047,-1208.1784667969,8.5188751220703},
  {-1244.0725097656,-1240.0897216797,11.029970169067},
  {-1168.3913574219,-1267.1702880859,6.1994562149048},
  {-1038.8020019531,-1397.6472167969,5.5530786514282},
  {-5.5931277275085,30.472146987915,71.290237426758},
  {-51.203475952148,52.563575744629,72.273704528809},
  {-101.674949646,45.806491851807,71.622909545898},
  {-81.196197509766,91.376350402832,71.563804626465},
  {-212.27130126953,133.35479736328,69.634857177734},
  {-303.94778442383,103.36706542969,67.918502807617},
  {-313.84085083008,105.63285064697,67.604949951172},
  {-389.55889892578,139.00106811523,65.625579833984},
  {-806.66589355469,-97.080467224121,37.577674865723},
  {-355.53048706055,-28.177108764648,47.260974884033},
  {-237.87940979004,-974.73333740234,29.287618637085},
  {-201.90727233887,-1151.9307861328,23.039079666138},
  {-79.408142089844,-1265.9979248047,29.180999755859},
  {-139.20317077637,-1362.3520507813,29.31297492981},
  {-100.09307861328,-1580.5336914063,31.672981262207},
  {6.5931119918823,-1612.4836425781,29.298873901367},
  {117.42864227295,-1463.5263671875,29.296209335327},
  {252.46432495117,-1820.6134033203,26.857620239258},
  {76.934303283691,-1930.3057861328,20.82145690918},
  {902.34967041016,-2095.2346191406,30.681238174438},
  {913.29675292969,-2179.5063476563,30.492324829102},
  {908.17175292969,-2265.3039550781,30.648712158203},
  {1048.7138671875,-2423.849609375,30.304557800293},
  {1005.9425048828,-2067.3005371094,31.135705947876},
  {894.48852539063,-1730.0991210938,30.336740493774},
  {787.04089355469,-1324.0341796875,26.070913314819},
  {775.82202148438,-1054.8942871094,27.03183555603},
  {760.25903320313,-732.10583496094,27.760643005371},
  {522.34643554688,-162.59382629395,56.142776489258},
  {617.49945068359,70.490814208984,90.735885620117},
  {446.3330078125,131.26504516602,99.765075683594},
  {-216.42041015625,276.42004394531,92.04972076416},
  {-518.22473144531,270.36117553711,83.053016662598},
  {-1249.9647216797,459.96115112305,93.492774963379},
  {-1146.8166503906,-1379.5469970703,4.8663425445557},
  {-1076.4300537109,-1499.5428466797,5.1044082641602},
  {-1025.4714355469,-1589.3721923828,5.1629476547241},
  {-1090.0910644531,-1538.908203125,4.5225472450256},
  {-1132.0848388672,-1502.3901367188,4.3828539848328},
  {-1251.6639404297,-1280.1063232422,3.9907057285309},
  {-1324.0141601563,-1086.3227539063,6.9503483772278},
  {-1816.515625,-626.13336181641,11.020712852478},
  {-2951.9562988281,59.842193603516,11.608496665955},
  {-2954.8229980469,378.92074584961,15.030703544617},
  {-267.15936279297,-849.79943847656,31.603193283081},
  {-1055.9271240234,-768.40393066406,19.281757354736},
  {-1237.7604980469,-555.04742431641,28.8708152771},
  {-1259.7027587891,-482.9719543457,33.384490966797},
  {-1280.0135498047,-642.26599121094,26.726886749268},
  {-1237.5496826172,-555.11627197266,28.857942581177},
  {-1304.8505859375,-317.67440795898,37.005340576172},
  {-1388.6917724609,-271.16567993164,43.119396209717},
  {-768.64758300781,313.0451965332,85.699295043945},
  {-634.50494384766,139.82879638672,57.234710693359},
  {-623.54699707031,-201.87763977051,37.459041595459},
  {-617.12872314453,-439.37744140625,34.761535644531},
  {-162.29479980469,-873.28112792969,29.230476379395},
  {-766.75134277344,296.88458251953,85.666297912598},
  {308.27822875977,171.07548522949,103.94713592529},
  {425.90914916992,99.609199523926,100.21244049072},
  {142.54904174805,-823.80755615234,31.145090103149},
  {115.45185089111,-929.64025878906,29.843223571777},
  {245.75765991211,-1065.4337158203,29.293273925781},
  {296.63003540039,-1072.4526367188,29.403522491455},
  {392.63146972656,-972.23095703125,29.440799713135},
  {433.24426269531,-983.10040283203,30.710023880005},
  {379.89016723633,-683.63214111328,29.259269714355},
  {294.75534057617,-807.74493408203,29.443786621094},
  {-188.8832244873,-1425.626953125,31.500455856323},
  {-1168.0122070313,-1478.4069824219,4.3794441223145},
  {-1294.2022705078,-1163.0859375,4.9911098480225},
  {-1366.1063232422,-685.89453125,25.102724075317}
}


local gunshop_positions = {
  {1692.41, 3758.22, 34.7053},
  {252.696, -48.2487, 69.941},
  {844.299, -1033.26, 28.1949},
  {-331.624, 6082.46, 31.4548},
  {-664.147, -935.119, 21.8292},
  {-1305.45056152344,-394.0068359375,36.6957740783691},
  {-1119.48803710938,2697.08666992188,18.5541591644287},
  {2569.62, 294.453, 108.735},
  {-3172.60375976563,1085.74816894531,20.8387603759766},
  {21.70, -1107.41, 29.79},
  {810.15, -2156.88, 29.61}
}

local vendapeixe_position = {
  {128.1410369873, -1286.1120605469, 29.281036376953},
  {-47.522762298584,-1756.85717773438,29.4210109710693},
  {25.7454013824463,-1345.26232910156,29.4970207214355}, 
  {1135.57678222656,-981.78125,46.4157981872559}, 
  {1163.53820800781,-323.541320800781,69.2050552368164}, 
  {374.190032958984,327.506713867188,103.566368103027}, 
  {2555.35766601563,382.16845703125,108.622947692871}, 
  {2676.76733398438,3281.57788085938,55.2411231994629}, 
  {1960.50793457031,3741.84008789063,32.3437385559082},
  {1393.23828125,3605.171875,34.9809303283691},
  {1166.18151855469,2709.35327148438,38.15771484375}, 
  {547.987609863281,2669.7568359375,42.1565132141113}, 
  {1698.30737304688,4924.37939453125,42.0636749267578}, 
  {1729.54443359375,6415.76513671875,35.0372200012207}, 
  {-3243.9013671875,1001.40405273438,12.8307056427002}, 
  {-2967.8818359375,390.78662109375,15.0433149337769}, 
  {-3041.17456054688,585.166198730469,7.90893363952637}, 
  {-1820.55725097656,792.770568847656,138.113250732422}, 
  {-1486.76574707031,-379.553985595703,40.163387298584}, 
  {-1223.18127441406,-907.385681152344,12.3263463973999},  
  {-707.408996582031,-913.681701660156,19.2155857086182}
}

local diamantesveda_position = {
  {-905.09790039062,587.02142333984,101.00085998536},
  {-1253.5981445312,-1192.1677246094,7.2207159461976},
  {951.16314697266,-251.4662475586,67.700950561524},
  {-1539.8935546875,421.76443481446,110.20098468018},
  {63.2505569458,-80.091011047364,62.70098034668},
  {-884.9642944336,-1071.5681152344,2.3008777980804},
  {-1667.2891845704,-441.4132385254,40.490899810792},
  {-698.54620361328,46.2643699646,44.200828735352},
  {-1341.8388671875,-872.02587890625,16.980462020874},
  {-632.80596923828,-238.79309082032,38.220545166016},
  {-116.90155792236,-606.16143798828,36.390727386474},
  {-697.80895996094,45.641052246094,44.200076690674,},
  {-1467.0889892578,36.209774017334,54.700028686524},
  {-2796.912109375,1433.0462646484,101.02037524414},
  {-2587.7841796875,1912.7614746094,167.60093188476},
  {-1277.4822998046,630.0307006836,143.39058361816},
  {-3017.8645019532,746.8013305664,27.700602615356},
  {-2014.6943359375,499.75622558594,107.30077581788},
  {-1932.4482421875,362.27615356446,93.920466308594}
}

local drogas_delivery_positions = {
  {-606.10943603516,672.51556396484,151.59687805176},
  {-3047.3220214844,483.89724731445,6.7796421051025},
  {-1612.810546875,-1028.5090332031,13.153091430664},
  {1021.2337646484,-2434.5158691406,29.652471542358},
  {153.91184997559,-1335.1047363281,29.202306747437},
  {-59.107242584229,-91.847564697266,57.778335571289},
  {224.95199584961,337.60946655273,105.60416412354},
  {419.97283935547,-1924.3740234375,25.633546829224},
  {1203.94921875,-1671.6600341797,42.357978820801},
  {537.59344482422,-1651.3463134766,29.263208389282},
  {197.4140625,-161.08564758301,56.395709991455},
  {326.09707641602,537.71240234375,153.86880493164},
  {-1382.0583496094,-859.19647216797,15.694157600403},
  {340.67971801758,-1857.3255615234,27.320009231567},
  {338.00491333008,-1100.1362304688,29.406436920166},
  {-722.98504638672,-1112.2078857422,10.652400970459},
  {-1931.9937744141,362.28012084961,93.787727355957},
  {260.8166809082,-1988.6207275391,20.743192672729},
  {500.14346313477,-651.96575927734,24.909589767456},
  {-386.42962646484,505.0934753418,120.41268157959},
  {418.70581054688,-207.11865234375,59.91047668457},
  {25.015897750854,129.02516174316,97.210639953613},
  {-1113.0738525391,-503.52746582031,35.144905090332},
  {-657.51373291016,-678.83276367188,31.476736068726},
  {-45.263469696045,-1290.0994873047,29.197414398193},
  {864.13665771484,-2308.3520507813,30.587816238403},
  {1777.0314941406,3737.9819335938,34.655361175537},
  {2564.65625,4680.2299804688,34.078453063965},
  {-1961.1195068359,211.92858886719,86.802856445313},
  {-930.33184814453,19.405639648438,48.530750274658},
  {-72.949226379395,428.49438476563,113.03816986084},
  {315.77047729492,501.98361206055,153.17980957031},
  {-326.44189453125,-1300.6505126953,31.353591918945},
  {-1306.1507568359,-1228.7463378906,8.9804773330688},
  {-1422.2907714844,-640.63452148438,28.673389434814},
  {-1308.4104003906,-168.79289245605,44.136650085449},
  {-1828.1115722656,311.83477783203,89.711227416992},
  {136.46719360352,-2472.3388671875,6.0953369140625},
  {1054.2797851563,-1952.7261962891,32.094917297363},
  {1192.2779541016,-1248.8641357422,40.317523956299}
}

local clonecards_positions = {
  {-107.135391235352,-610.504272460938,35.7207610778809},
  {170.39501953125,-1799.1123046875,29.420117431641},
  {846.71240234375,-1050.7584228516,28.000329055786},
  {-1697.4471435547,-421.86810302734,46.200350830078},
  {49.525447845459,-1453.2924804688,29.400149047852},
  {909.74981689453,-1025.6475830078,38.250117584229},
  {-1107.5588378906,-1693.5511474609,4.4500773200989},
  {-1172.4366455078,-1572.0181884766,4.7006276245117},
  {-1185.2912597656,-1385.4647216797,4.7207231140137},
  {-104.65946960449,-69.359199523926,58.930993530273},
  {-707.83911132813,712.91809082031,162.18036657715},
  {-3213.8928222656,1136.2260742188,9.9304067230225},
  {-2969.4089355469,397.94332885742,15.250381965637},
  {342.26815795898,-1082.0184326172,29.56009312439},
  {467.53268432617,-1589.7524414063,32.900205810547},
  {-1563.8172607422,-406.70068359375,42.482975982666},
  {-1171.7009277344,-1572.3723144531,4.720622379303},
  {-1174.9899902344,-1568.353515625,4.5902738494873},
  {-1180.8482666016,-1559.6276855469,5.2000799560547},
  {-1183.0793457031,-1556.6636962891,5.150022819519},
  {-722.98504638672,-1112.2078857422,10.750400970459},
  {-1931.9937744141,362.28012084961,93.900727355957},
  {260.8166809082,-1988.6207275391,20.890192672729},
  {500.14346313477,-651.96575927734,25.000589767456},
  {-386.42962646484,505.0934753418,120.56068157959},
  {418.70581054688,-207.11865234375,60.02047668457}
}

-- map of permission => delivery config
--- items: map of idname => {min_amount,max_amount,reward_per_item}
--- positions
-- only one delivery permission can be used per player (no permission selection, only one will work)
cfg.delivery = {
  ["mission.delivery.food"] = {
    positions = common_delivery_positions,
    title = "Entrega de comida",
    chance = 1,
    items = {
      ["pizza"] = {7,20,60},
      ["gocagola"] = {7,20,30}
    }
  },
  ["mission.delivery.diamante"] ={
    positions = diamantesveda_position,
    title = "Venda os diamantes",
    chance = 1,
    items = {
      ["diamante"] = {7,20,170}
    }
  },    
  ["mission.delivery.weed"] = {
    chance = 3,
    title = "Entrega especial",
    items = {
      ["cannabis"] = {10,20,400}
    },
    positions = {
	    {-1172.09387207031,-1571.91198730469,4.66362237930298},
      {127.275039672852,-1283.83703613281,29.278923034668},
	    {-88.0348663330078,-83.0567474365234,57.8084182739258}
	  }
  },
  ["mission.delivery.cocaina"] = {
    chance = 3,
    title = "Entrega especial",
    items = {
      ["cocaina"] = {10,20,400}
    },
    positions = {
      {-1172.09387207031,-1571.91198730469,4.66362237930298},
      {127.275039672852,-1283.83703613281,29.278923034668},
      {-88.0348663330078,-83.0567474365234,57.8084182739258}
    }
  },
  ["mission.delivery.metanfetamina"] = {
    chance = 3,
    title = "Entrega especial",
    items = {
      ["metanfetamina"] = {10,20,400}
    },
    positions = {
      {-1172.09387207031,-1571.91198730469,4.66362237930298},
      {127.275039672852,-1283.83703613281,29.278923034668},
      {-88.0348663330078,-83.0567474365234,57.8084182739258}
    }
  },  
  ["mission.delivery.pot"] = {
    chance = 1,
    positions = drogas_delivery_positions,
    title = "Entrega de erva",
    items = {
      ["cannabis"] = {10,20,340}
    }
  },
  ["mission.delivery.pot2"] = {
    chance = 1,
    positions = drogas_delivery_positions,
    title = "Entrega de 'coca'",
    items = {
      ["cocaina"] = {10,20,340}
    }
  },
  ["mission.delivery.pot3"] = {
    chance = 1,
    positions = drogas_delivery_positions,
    title = "Entrega de cristal",
    items = {
      ["metanfetamina"] = {10,20,340}
    }
  },  
  ["entrega.tartaruga"] = {
    chance = 1,
    positions = drogas_delivery_positions,
    title = "Contrabando de tartaruga",
    items = {
      ["carne_tartaruga"] = {3,20,700},
      ["casco_tartaruga"] = {1,13,700}
    }
  },
  ["mission.delivery.cartoes"] = {
    chance = 1,
    positions = clonecards_positions,
    title = "Entrega de cartões clonados",
    items = {
      ["clonedcards"] = {10,20,390}
    }
  },
  ["mission.delivery.smg"] = {
    chance = 120,
    positions = gunshop_positions,
    items = {
      ["wbody|WEAPON_SMG"] = {1,2,15000},
      ["wammo|WEAPON_SMG"] = {100,300,30}
    }
  }
}

-- GUNRUNNER

local gun_shipment_positions = {
  {-280.666381835938,6634.96728515625,7.54050254821777},
  {3867.22045898438,4463.80859375,2.72471237182617},
  {713.653137207031,4093.04272460938,34.7278327941895}
}

cfg.gunrunner = {
  ["mission.gunrunner.shipment"] = {
    title = "Pacote de armas",
	chance = 15,
    steps = 1,
    positions = gun_shipment_positions
  }
}

-- CARJACKER

local common_carjack_positions = {
  {-429.316650390625,-2666.02978515625,6.00021457672119},
  {602.115905761719,-444.284271240234,24.7449131011963}
}

cfg.carjack = {
  ["mission.carjack.vehicle"] = {
    title = "Roubar Veículo",
	chance = 15,
    steps = 1,
    positions = common_carjack_positions,
    min_reward = 500,
    max_reward = 10000
  }
}

-- EMERGENCY
  cfg.emergency = {
  ["mission.emergency.transfer"] = {
    chance = 9,
    title = "Transferência de Paciente",
    steps = 2,
    positions = {
  {295.070617675781,-1440.15832519531,29.4633674621582},
  {1154.85144042969,-1515.47509765625,34.3529014587402},
  {359.166778564453,-594.0615234375,28.3070049285889},
  {-452.108215332031,-341.380340576172,34.0251846313477},
  {-868.521179199219,-297.945251464844,39.3625373840332},
  {-681.840637207031,292.777496337891,81.8317031860352}
    },
    reward = 1000
  }
}

-- UBER
cfg.UBER = {
  ["mission.UBER.passenger"] = {
    chance = 1,
    title = "Passageiro do Taxi",
    text = "Vá para o destino.",
    steps = 2,
    positions = {
    {293.476,-590.163,42.7371},
    {253.404,-375.86,44.0819},
    {120.808,-300.416,45.1399},
    {-38.4132,-381.576,38.3456},
    {-107.442,-614.377,35.6703},
    {-252.292,-856.474,30.5626},
    {-236.138,-988.382,28.7749},
    {-276.989,-1061.18,25.6853},
    {-576.451,-998.989,21.785},
    {-602.798,-952.63,21.6353},
    {-790.653,-961.855,14.8932},
    {-912.588,-864.756,15.0057},
    {-1069.77,-792.513,18.8075},
    {-1306.94,-854.085,15.0959},
    {-1468.51,-681.363,26.178},
    {-1380.89,-452.7,34.0843},
    {-1326.35,-394.81,36.0632},
    {-1383.68,-269.985,42.4878},
    {-1679.61,-457.339,39.4048},
    {-1812.45,-416.917,43.6734},
    {-2043.64,-268.291,22.9927},
    {-2186.45,-421.595,12.6776},
    {-1862.08,-586.528,11.1747},
    {-1859.5,-617.563,10.8788},
    {-1634.95,-988.302,12.6241},
    {-1283.99,-1154.16,5.30998},
    {-1126.47,-1338.08,4.63434},
    {-867.907,-1159.67,5.00795},
    {-847.55,-1141.38,6.27591},
    {-722.625,-1144.6,10.2176},
    {-575.503,-318.446,34.5273},
    {-592.309,-224.853,36.1209},
    {-559.594,-162.873,37.7547},
    {-534.992,-65.6695,40.634},
    {-758.234,-36.6906,37.2911},
    {-1375.88,20.9516,53.2255},
    {-1320.25,-128.018,48.097},
    {-1285.71,294.287,64.4619},
    {-1245.67,386.533,75.0908},
    {-760.355,285.015,85.0667},
    {-626.786,254.146,81.0964},
    {-563.609,267.962,82.5116},
    {-486.806,271.977,82.8187},
    {88.295,250.867,108.188},
    {234.087,344.678,105.018},
    {434.963,96.707,99.1713},
    {482.617,-142.533,58.1936},
    {762.651,-786.55,25.8915},
    {809.06,-1290.8,25.7946},
    {490.819,-1751.37,28.0987},
    {432.351,-1856.11,27.0352},
    {164.348,-1734.54,28.8982},
    {-57.6909,-1501.4,31.1084},
    {52.2241,-1566.65,29.006},
    {310.222,-1376.76,31.4442},
    {181.967,-1332.79,28.8773},
    {-74.6091,-1100.64,25.738},
    {-887.045,-2187.46,8.13248},
    {-749.584,-2296.59,12.4627},
    {-1064.83,-2560.66,19.6811},
    {-1033.44,-2730.24,19.6868},
    {-1018.67,-2732,13.2687}
  },
    reward = 1500
  }
}

--GARI
local gari_localizacoes = {
  {-5.5931277275085,30.472146987915,71.290237426758},
  {-51.203475952148,52.563575744629,72.273704528809},
  {-101.674949646,45.806491851807,71.622909545898},
  {-81.196197509766,91.376350402832,71.563804626465},
  {-212.27130126953,133.35479736328,69.634857177734},
  {-303.94778442383,103.36706542969,67.918502807617},
  {-313.84085083008,105.63285064697,67.604949951172},
  {-389.55889892578,139.00106811523,65.625579833984},
  {-806.66589355469,-97.080467224121,37.577674865723},
  {-355.53048706055,-28.177108764648,47.260974884033},
  {-237.87940979004,-974.73333740234,29.287618637085},
  {-201.90727233887,-1151.9307861328,23.039079666138},
  {-79.408142089844,-1265.9979248047,29.180999755859},
  {-139.20317077637,-1362.3520507813,29.31297492981},
  {-100.09307861328,-1580.5336914063,31.672981262207},
  {6.5931119918823,-1612.4836425781,29.298873901367},
  {117.42864227295,-1463.5263671875,29.296209335327},
  {252.46432495117,-1820.6134033203,26.857620239258},
  {76.934303283691,-1930.3057861328,20.82145690918},
  {902.34967041016,-2095.2346191406,30.681238174438},
  {913.29675292969,-2179.5063476563,30.492324829102},
  {908.17175292969,-2265.3039550781,30.648712158203},
  {1048.7138671875,-2423.849609375,30.304557800293},
  {1005.9425048828,-2067.3005371094,31.135705947876},
  {894.48852539063,-1730.0991210938,30.336740493774},
  {787.04089355469,-1324.0341796875,26.070913314819},
  {775.82202148438,-1054.8942871094,27.03183555603},
  {760.25903320313,-732.10583496094,27.760643005371},
  {522.34643554688,-162.59382629395,56.142776489258},
  {617.49945068359,70.490814208984,90.735885620117},
  {446.3330078125,131.26504516602,99.765075683594},
  {-216.42041015625,276.42004394531,92.04972076416},
  {-518.22473144531,270.36117553711,83.053016662598},
  {-1249.9647216797,459.96115112305,93.492774963379},
  {-1146.8166503906,-1379.5469970703,4.8663425445557},
  {-1076.4300537109,-1499.5428466797,5.1044082641602},
  {-1025.4714355469,-1589.3721923828,5.1629476547241},
  {-1090.0910644531,-1538.908203125,4.5225472450256},
  {-1132.0848388672,-1502.3901367188,4.3828539848328},
  {-1251.6639404297,-1280.1063232422,3.9907057285309},
  {-1324.0141601563,-1086.3227539063,6.9503483772278},
  {-1816.515625,-626.13336181641,11.020712852478},
  {-2951.9562988281,59.842193603516,11.608496665955},
  {-2954.8229980469,378.92074584961,15.030703544617},
  {-1950.6309814453,-519.09259033203,11.850666999817},
  {-1869.4407958984,-630.17138671875,11.100916862488},
  {-1432.1228027344,-444.83517456055,35.651691436768},
  {-816.25689697266,-843.50634765625,20.388940811157},
  {-818.07238769531,-955.59539794922,15.364303588867},
  {909.73333740234,-2217.6428222656,30.493169784546},
  {50.667449951172,-2631.7897949219,6.0410294532776},
  {100.61791992188,-1692.4769287109,29.205728530884},
  {-223.57829284668,-947.94842529297,29.288656234741},
  {-562.16253662109,-707.91540527344,33.003688812256},
  {164.03633117676,-452.26580810547,41.106269836426},
  {962.69708251953,-1532.9555664063,30.971546173096},
  {946.88928222656,-2172.7485351563,30.551574707031},
  {277.21133422852,-167.53561401367,60.133411407471},
  {1194.0865478516,2633.0759277344,37.812217712402},
  {-251.2053527832,6410.8032226563,31.16227722168},
  {325.64111328125,501.55249023438,152.21006774902},
  {395.72674560547,290.14199829102,102.9621887207},
  {-501.68420410156,-452.27163696289,34.201263427734},
  {-617.91528320313,-1608.2310791016,26.901014328003}
}
cfg.gari = {
  ["missao.gari.coleta"] = {
    chance = 1,
    title = "Coleta de Lixo",
    text = "Vá para a lixeira.",
    positions = gari_localizacoes,
    steps = 1,
    reward = 1500
  }  
}
  
-- POLICE 
cfg.police = {
  ["mission.police.transfer"] = {
    chance = 9,
    title = "Transferência de prisioneiro",
    text = "Transfira o prisioneiro.",
    steps = 2,
    positions = {
  {854.080261230469,-1280.93505859375,26.1412010192871},
  {452.274810791016,-996.933715820313,25.4266204833984}
    },
    reward = 1000
  },
  ["mission.police.patrol"] = {
    chance = 9,
    title = "Patrulha do Banco da cidade",
    text = "Patrulhe a área.",
    steps = 3,
    positions = {
  {317.441223144531,-267.669036865234,53.4438934326172},
  {-350.306091308594,-28.1077899932861,46.9482803344727},
  {-1221.21569824219,-318.985137939453,37.1684608459473},
  {-2974.0390625,482.675506591797,14.9218883514404},
  {219.737426757813,205.291076660156,105.063316345215},
  {152.946182250977,-1029.80944824219,28.8697566986084}
    },
    reward = 1500 
  }
}

--CORREIOS
cfg.advogado = {
  ["advogado.entrega"] = { -- permissao
    chance = 1, -- quantidade de lados do dado 1
    title = "Coleta de processos", -- nome
    text = "Vá até o local buscar os processos.",
    steps = 1,
    positions = {
      {-442.61990356445,6017.1538085938,31.712207794189},
      {1855.5880126953,3682.93359375,34.267528533936},
      {-1112.5096435547,-824.23675537109,19.316047668457},
      {339.00967407227,-1561.9876708984,30.29803276062},
      {825.91351318359,-1289.9317626953,28.240657806396},
      {640.17913818359,1.6039781570435,82.786430358887},
      {-310.49655151367,222.08554077148,87.927360534668},
      {-1314.0024414063,-1527.0487060547,4.4167251586914},
      {360.62353515625,-1583.8747558594,29.291946411133},
      {1846.3927001953,2585.8933105469,45.672046661377},
      {-1274.0245361328,315.95938110352,65.511795043945},
      {-1537.2874755859,130.35188293457,57.371322631836},
      {-1285.2077636719,-566.59869384766,31.712396621704},
      {-66.490364074707,-801.98461914063,44.22730255127},
      {224.53601074219,-441.89312744141,45.246925354004},
      {-2223.0473632813,304.02770996094,184.5983581543}
    },
    reward = 1500
  }
}    
return cfg