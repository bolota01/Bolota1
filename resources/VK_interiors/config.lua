INTERIORS = {
    -- HOPITAL
    [1] = {id = 1, x = 253.95764160156, y = -1372.2917480469, z = 24.537784576416,  name = "Entrar no Hospital", destination = {2}},
	[2] = {id = 2, x = 343.51895141602, y = -1398.6724853516, z = 32.509265899658,  name = "Sair do Hospital", destination = {1}},
    
    -- SALA DE INTERROGATÓRIO FAE
    [3] = {id = 3, x = 452.13629150391, y = -984.14849853516, z = 26.67423248291,  name = "Sair da Sala", destination = {4}},
    [4] = {id = 4, x = 2047.9940185547, y = 2969.8229980469, z = -67.30184173584,  name = "Entrar na Sala", destination = {3}},

    -- Cofre Banco Central
    [6] = {id = 6, x = 253.90010070801, y = 225.1960144043, z = 101.87580108643, name = "Sair do cofre", destination = {7}},
    [7] = {id = 7, x = 253.31288146973, y = 223.3512878418, z = 101.68347167969, name = "Entrar no cofre", destination = {6}},

    -- BAHMAS MAMAS
    [8] = {id = 8, x = -1388.9272460938, y = -586.08123779297, z = 30.219741821289, h = 35.407787322998, name = "Sair", destination = {9}},
    [9] = {id = 9, x = -1394.5030517578, y = -596.09210205078, z = 30.319562911987, h = 205.4248046875, name = "Entrar", destination = {8}},

    -- LOJA DE CARROS ADDON
    [10] = {id = 10, x = 719.01446533203, y = -2991.3686523438, z = -38.999897003174, name = "Entrar na Elite Car", destination = {11}},
    [11] = {id = 11, x = -177.1608581543, y = -1158.3416748047, z = 23.813663482666, name = "Sair da Elite Car", destination = {10}},

    -- Telhado DP
    [12] = {id = 12, x = 463.59606933594, y = -984.10662841797, z = 43.691921234131, name = "Ir para o telhado", destination = {13}},
    [13] = {id = 13, x = 464.09829711914, y = -986.00158691406, z = 30.689599990845, name = "Voltar para a DP", destination = {12}},
		
	-- Business
    [18] = {id = 18, x =  3562.8259277344, y = 3690.3332519531, z = 28.121658325195,  name = "Entrar Empresa", destination = {19}},
    [19] = {id = 19, x = 3526.3579101563, y = 3673.7409667969, z = 28.121139526367,  name = "Sair da Empresa", destination = {18}},	
	
	-- Heliponto
	[20] = {id = 20, x = 279.75527954102, y = -1349.0079345703, z = 24.537794113159,  name = "Voltar ao Hospital", destination = {21}},
    [21] = {id = 21, x = 335.42684936523, y = -1431.8175048828, z = 46.511493682861,  name = "Ir para Heliponto SAMU", destination = {20}},	
	
	-- Veículos Emergenciais SAMU
	[22] = {id = 22, x = 275.24313354492, y = -1361.2371826172, z = 24.537805557251,  name = "Voltar para o Hospital", destination = {23}},
	[23] = {id = 23, x = 307.41171264648, y = -1433.6192626953, z = 29.932350158691,  name = "Ir para Veículos SAMU", destination = {22}},

    -- Lavagem de Dinheiro 
    [24] = {id = 24, x = 1138.3663330078, y = -3198.2087402344, z = -39.665725708008,   name = "Entrar na Lavagem", destination = {25}},
    [25] = {id = 25, x = 461.22024536133, y = -1573.7008056641, z = 32.792259216309,  name = "Sair da Lavagem", destination = {24}},

    -- Fabricação de Armas (Club de motos) 
    [26] = {id = 26, x = 1005.942565918, y = -114.39625549316, z = 73.968322753906,  name = "Entrar", destination = {27}},
    [27] = {id = 27, x = 1048.4796142578, y = -3097.0581054688, z = -38.999954223632,  name = "Sair", destination = {26}},

    -- StanUp 
    [28] = {id = 28, x = -430.08871459961, y = 261.48303222656, z = 83.005744934082,  name = "Sair", destination = {29}},
    [29] = {id = 29, x = -458.4206237793, y = 284.626953125, z = 78.521545410156,  name = "Entrar", destination = {28}},

    -- Coca 
    [30] = {id = 30, x = 2452.1115722656, y = 4969.0771484375, z = 46.57160949707,  name = "Sair", destination = {31}},
    [31] = {id = 31, x = 2453.318359375, y = 4970.6689453125, z = 46.810512542724,  name = "Entrar", destination = {30}},
    

    -- OAB
    [32] = {id = 32, x = -1902.6004638672, y = -573.19598388672, z = 19.097215652466,  name = "Entrar", destination = {33}},
    [33] = {id = 33, x = -1899.1215820313, y = -562.33374023438, z = 11.803235054016,  name = "Sair", destination = {32}},
	
    -- ESTAÇAO 1
    [500] = {id = 500, x = 275.54281616211, y = -1207.3439941406, z = 38.902141571045,  name = "ESTAÇÃO PRAÇA", destination = {501}},
    [501] = {id = 501, x = -1091.2283935547, y = -2718.8210449219, z = -7.4101343154907,  name = "ESTAÇÃO AEROPORTO", destination = {500}},

    -- ESTAÇAO 2
    [503] = {id = 503, x = 2614.5268554688, y = 2919.8256835938, z = 40.422649383545,  name = "ESTAÇÃO DESERTO ", destination = {504}},
    [504] = {id = 504, x = 282.10498046875, y = -1207.1538085938, z = 38.904987335205,  name = "ESTAÇÃO PRACA", destination = {503}},

    -- ESTAÇAO 3
    [505] = {id = 505, x = -76.226860046387, y = 6166.9545898438, z = 31.803823471069,  name = "ESTAÇÃO PALETO", destination = {506}},
    [506] = {id = 506, x = 2627.5339355469, y = 2942.2275390625, z = 40.422840118408,  name = "ESTAÇÃO DESERTO", destination = {505}},

    -- ESTAÇAO 4
    [507] = {id = 507, x = -1346.2064208984, y = -467.23532104492, z = 15.045384407043,  name = "ESTAÇÃO PRAIA", destination = {508}},
    [508] = {id = 508, x = -93.717315673828, y = 6150.77734375, z = 31.803810119629,  name = "ESTAÇÃO PALETO", destination = {507}},

    -- ESTAÇAO 5
    [509] = {id = 509, x = -1083.5686035156, y = -2709.6059570313, z = -7.4100751876831,  name = "ESTAÇÃO AEROPORTO", destination = {510}},
    [510] = {id = 510, x = -1354.2757568359, y = -452.35473632813, z = 15.045323371887,  name = "ESTAÇÃO PRAIA", destination = {509}},

}
