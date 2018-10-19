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
		
	-- Business
    [18] = {id = 18, x =  3562.8259277344, y = 3690.3332519531, z = 28.121658325195,  name = "Entrar Empresa", destination = {19}},
    [19] = {id = 19, x = 3526.3579101563, y = 3673.7409667969, z = 28.121139526367,  name = "Sair da Empresa", destination = {18}},	
	
	-- Heliponto
	[20] = {id = 20, x = 279.75527954102, y = -1349.0079345703, z = 24.537794113159,  name = "Voltar ao Hospital", destination = {21}},
    [21] = {id = 21, x = 335.42684936523, y = -1431.8175048828, z = 46.511493682861,  name = "Ir para Heliponto SAMU", destination = {20}},	
	
	-- Veículos Emergenciais SAMU
	[22] = {id = 22, x = 275.24313354492, y = -1361.2371826172, z = 24.537805557251,  name = "Voltar para o Hospital", destination = {23}},
	[23] = {id = 23, x = 307.41171264648, y = -1433.6192626953, z = 29.932350158691,  name = "Ir para Veículos SAMU", destination = {22}},
	
}
