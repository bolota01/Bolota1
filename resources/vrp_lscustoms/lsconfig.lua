--[[
Los Santos Customs V1.1 
Credits - MythicalBro
/////License/////
Do not reupload/re release any part of this script without my permission
]]
local colors = {
{name = "Preto", colorindex = 0},{name = "Carbon Preto", colorindex = 147},
{name = "Grafite", colorindex = 1},{name = "Anhracite Preto", colorindex = 11},
{name = "Aço Preto", colorindex = 2},{name = "Aço Escuro", colorindex = 3},
{name = "Prata", colorindex = 4},{name = "Prata Azulada", colorindex = 5},
{name = "Alo laminado", colorindex = 6},{name = "Sombra Prata", colorindex = 7},
{name = "Pedra Prata", colorindex = 8},{name = "Prata da meia-noite", colorindex = 9},
{name = "Prata do ferro fundido", colorindex = 10},{name = "Vermelho", colorindex = 27},
{name = "Torino Vermelho", colorindex = 28},{name = "Fórmula Vermelha", colorindex = 29},
{name = "Lava Vermelha", colorindex = 150},{name = "Chama Vermelha", colorindex = 30},
{name = "Vermelho Graça", colorindex = 31},{name = "Granada Vermelha", colorindex = 32},
{name = "Pôr do Sol Vermelho", colorindex = 33},{name = "Cabernet Vermelho", colorindex = 34},
{name = "Vinho Vermelho", colorindex = 143},{name = "Doce Vermelho", colorindex = 35},
{name = "Rosa Quente", colorindex = 135},{name = "Pfsiter Rosa", colorindex = 137},
{name = "Rosa Salmão", colorindex = 136},{name = "Laranja do Nascer do Sol", colorindex = 36},
{name = "Laranja", colorindex = 38},{name = "Laranja Brilhante", colorindex = 138},
{name = "Ouro", colorindex = 99},{name = "Bronze", colorindex = 90},
{name = "Amarelo", colorindex = 88},{name = "Amarelo Corrida", colorindex = 89},
{name = "Orvalho Amarelo", colorindex = 91},{name = "Verde Escuro", colorindex = 49},
{name = "Verde Corrida", colorindex = 50},{name = "Verde Mar", colorindex = 51},
{name = "Verde Oliva", colorindex = 52},{name = "Verde Brilhante", colorindex = 53},
{name = "Verde Gasolina", colorindex = 54},{name = "Verde Limãp", colorindex = 92},
{name = "Azul da Meia Noite", colorindex = 141},
{name = "Azul Galáxia", colorindex = 61},{name = "Azul Escuro", colorindex = 62},
{name = "Azul saxão", colorindex = 63},{name = "Azul", colorindex = 64},
{name = "Azul Marinho", colorindex = 65},{name = "Azul do Porto", colorindex = 66},
{name = "Diamante Azul", colorindex = 67},{name = "Surf Azul", colorindex = 68},
{name = "Azul náutico", colorindex = 69},{name = "Azul Corrida", colorindex = 73},
{name = "Ultra Azul", colorindex = 70},{name = "Azul Claro", colorindex = 74},
{name = "Chocolate Marrom", colorindex = 96},{name = "Bison Castanho", colorindex = 101},
{name = "Creeen Marrom", colorindex = 95},{name = "Feltzer Marrom", colorindex = 94},
{name = "Feltzer Marrom", colorindex = 97},{name = "Madeira Marrom", colorindex = 103},
{name = "Sienna Marrom", colorindex = 104},{name = "Marrom Selin", colorindex = 98},
{name = "Musgo Marrom", colorindex = 100},{name = "Faia de Madeira Marrom", colorindex = 102},
{name = "Marrom Palha", colorindex = 99},{name = "Marrom Areia", colorindex = 105},
{name = "Marrom descorado", colorindex = 106},{name = "Schafter Roxo", colorindex = 71},
{name = "Spinnaker Roxo", colorindex = 72},{name = "Roxo meia-noite", colorindex = 142},
{name = "Roxo Claro", colorindex = 145},{name = "Creme", colorindex = 107},
{name = "Branco Gelo", colorindex = 111},{name = "Brando Geada", colorindex = 112}}
local metalcolors = {
{name = "Aço Escovado",colorindex = 117},
{name = "Preto Escovado",colorindex = 118},
{name = "Aluminio Escovado",colorindex = 119},
{name = "Ouro Puro",colorindex = 158},
{name = "Ouro Escovado",colorindex = 159}
}
local mattecolors = {
{name = "Preto", colorindex = 12},
{name = "Cinza", colorindex = 13},
{name = "Cinza Claro", colorindex = 14},
{name = "Branco Gelo", colorindex = 131},
{name = "Azul", colorindex = 83},
{name = "Azul Escuro", colorindex = 82},
{name = "Azul da meia-noite", colorindex = 84},
{name = "Roxo da meia-noite", colorindex = 149},
{name = "Schafter Roxo", colorindex = 148},
{name = "Vermelho", colorindex = 39},
{name = "Vermelho Escuro", colorindex = 40},
{name = "Laranja", colorindex = 41},
{name = "Amarelo", colorindex = 42},
{name = "Verde Limão", colorindex = 55},
{name = "Verde", colorindex = 128},
{name = "Verde Geada", colorindex = 151},
{name = "Verde Folhagem", colorindex = 155},
{name = "Oliva", colorindex = 152},
{name = "Terra escura", colorindex = 153},
{name = "Tan do Deserto", colorindex = 154}
}



LSC_Config = {}
LSC_Config.prices = {}

--------Prices---------
LSC_Config.prices = {

------Window tint------
	windowtint = {
		{ name = "Preto Puro", tint = 1, price = 1500},
		{ name = "Fumaça escura", tint = 2, price = 1000},
		{ name = "Fumaça Clara", tint = 3, price = 750},
		{ name = "Limusine", tint = 4, price = 500},
		{ name = "Verde", tint = 5, price = 250}
	},

-------Respray--------
----Primary color---
	--Chrome 
	chrome = {
		colors = {
			{name = "Cromado", colorindex = 120}
		},
		price = 1000
	},
	--Classic 
	classic = {
		colors = colors,
		price = 200
	},
	--Matte 
	matte = {
		colors = mattecolors,
		price = 500
	},
	--Metallic 
	metallic = {
		colors = colors,
		price = 300
	},
	--Metals 
	metal = {
		colors = metalcolors,
		price = 300
	},

----Secondary color---
	--Chrome 
	chrome2 = {
		colors = {
			{name = "Cromado", colorindex = 120}
		},
		price = 1000
	},
	--Classic 
	classic2 = {
		colors = colors,
		price = 200
	},
	--Matte 
	matte2 = {
		colors = mattecolors,
		price = 500
	},
	--Metallic 
	metallic2 = {
		colors = colors,
		price = 300
	},
	--Metals 
	metal2 = {
		colors = metalcolors,
		price = 300
	},

------Neon layout------
	neonlayout = {
		{name = "Frente, Verso e Lados", price = 2000},
	},
	--Neon color
	neoncolor = {
		{ name = "Branco", neon = {255,255,255}, price = 1000},
		{ name = "Azul", neon = {0,0,255}, price = 1000},
		{ name = "Azul Eletrico", neon = {0,150,255}, price = 1000},
		{ name = "Verde Menta", neon = {50,255,155}, price = 1000},
		{ name = "Verde Limão", neon = {0,255,0}, price = 1000},
		{ name = "Amarelo", neon = {255,255,0}, price = 1000},
		{ name = "Chuva Dourada", neon = {204,204,0}, price = 1000},
		{ name = "Laranja", neon = {255,128,0}, price = 1000},
		{ name = "Vermelho", neon = {255,0,0}, price = 1000},
		{ name = "Rosa Pónei", neon = {255,102,255}, price = 1000},
		{ name = "Rosa Quente",neon = {255,0,255}, price = 1000},
		{ name = "Roxo", neon = {153,0,153}, price = 1000},
		{ name = "Marrom", neon = {139,69,19}, price = 1000}
	},
	
--------Plates---------
	plates = {
		{ name = "Azul no Branco 1", plateindex = 0, price = 200},
		{ name = "Azul no Branco 2", plateindex = 3, price = 200},
		{ name = "Azul no Branco 3", plateindex = 4, price = 200},
		{ name = "Amarelo no Azul", plateindex = 2, price = 300},
		{ name = "Preto no Preto", plateindex = 1, price = 600}
	},
	
--------Wheels--------
----Wheel accessories----
	wheelaccessories = {
		{ name = "Pneus estoque", price = 1000},
		{ name = "Pneus Personalizados", price = 1250},
		{ name = "Fumaça Branca nos Pneus",smokecolor = {254,254,254}, price = 3000},
		{ name = "Fumaça Preta nos Pneus", smokecolor = {1,1,1}, price = 3000},
		{ name = "Fumaça Azul nos Pneus", smokecolor = {0,150,255}, price = 3000},
		{ name = "Fumaça Amarelo nos Pneus", smokecolor = {255,255,50}, price = 3000},
		{ name = "Fumaça Laranja nos Pneus", smokecolor = {255,153,51}, price = 3000},
		{ name = "Fumaça Vermelho nos Pneus", smokecolor = {255,10,10}, price = 3000},
		{ name = "Fumaça Verde nos Pneus", smokecolor = {10,255,10}, price = 3000},
		{ name = "Fumaça Roxo nos Pneus", smokecolor = {153,10,153}, price = 3000},
		{ name = "Fumaça Rosa nos Pneus", smokecolor = {255,102,178}, price = 3000},
		{ name = "Fumaça Cinza nos Pneus",smokecolor = {128,128,128}, price = 3000}
	},

----Wheel color----
	wheelcolor = {
		colors = colors,
		price = 1000
	},

----Front wheel (Bikes)----
	frontwheel = {
		{name = "Padrao", wtype = 6, mod = -1, price = 1000},
		{name = "Speedway", wtype = 6, mod = 0, price = 1000},
		{name = "Especial de rua", wtype = 6, mod = 1, price = 1000},
		{name = "Corrida", wtype = 6, mod = 2, price = 1000},
		{name = "Roda de Trilha", wtype = 6, mod = 3, price = 1000},
		{name = "Overlord", wtype = 6, mod = 4, price = 1000},
		{name = "Tridente", wtype = 6, mod = 5, price = 1000},
		{name = "Ameaça Tripla", wtype = 6, mod = 6, price = 1000},
		{name = "Estilete", wtype = 6, mod = 7, price = 1000},
		{name = "Fios", wtype = 6, mod = 8, price = 1000},
		{name = "Bobber", wtype = 6, mod = 9, price = 1000},
		{name = "Solidus", wtype = 6, mod = 10, price = 1000},
		{name = "Escudo de Gelo", wtype = 6, mod = 11, price = 1000},
		{name = "Rotaçao", wtype = 6, mod = 12, price = 1000}
	},

----Back wheel (Bikes)-----
	backwheel = {
		{name = "Padrao", wtype = 6, mod = -1, price = 1000},
		{name = "Speedway", wtype = 6, mod = 0, price = 1000},
		{name = "Especial de rua", wtype = 6, mod = 1, price = 1000},
		{name = "Corrida", wtype = 6, mod = 2, price = 1000},
		{name = "Roda de Trilha", wtype = 6, mod = 3, price = 1000},
		{name = "Overlord", wtype = 6, mod = 4, price = 1000},
		{name = "Tridente", wtype = 6, mod = 5, price = 1000},
		{name = "Ameaça Tripla", wtype = 6, mod = 6, price = 1000},
		{name = "Estilete", wtype = 6, mod = 7, price = 1000},
		{name = "Fios", wtype = 6, mod = 8, price = 1000},
		{name = "Bobber", wtype = 6, mod = 9, price = 1000},
		{name = "Solidus", wtype = 6, mod = 10, price = 1000},
		{name = "Escudo de Gelo", wtype = 6, mod = 11, price = 1000},
		{name = "Rotaçao", wtype = 6, mod = 12, price = 1000}
	},

----Sport wheels-----
	sportwheels = {
		{name = "Padrao", wtype = 0, mod = -1, price = 1000},
		{name = "Inferno", wtype = 0, mod = 0, price = 1000},
		{name = "Deepfive", wtype = 0, mod = 1, price = 1000},
		{name = "Lozspeed", wtype = 0, mod = 2, price = 1000},
		{name = "Diamondcut", wtype = 0, mod = 3, price = 1000},
		{name = "Chrono", wtype = 0, mod = 4, price = 1000},
		{name = "Feroccirr", wtype = 0, mod = 5, price = 1000},
		{name = "Fiftynine", wtype = 0, mod = 6, price = 1000},
		{name = "Mercie", wtype = 0, mod = 7, price = 1000},
		{name = "Syntheticz", wtype = 0, mod = 8, price = 1000},
		{name = "Organictyped", wtype = 0, mod = 9, price = 1000},
		{name = "Endov1", wtype = 0, mod = 10, price = 1000},
		{name = "Duper7", wtype = 0, mod = 11, price = 1000},
		{name = "Uzer", wtype = 0, mod = 12, price = 1000},
		{name = "Groundride", wtype = 0, mod = 13, price = 1000},
		{name = "Spacer", wtype = 0, mod = 14, price = 1000},
		{name = "Venum", wtype = 0, mod = 15, price = 1000},
		{name = "Cosmo", wtype = 0, mod = 16, price = 1000},
		{name = "Dashvip", wtype = 0, mod = 17, price = 1000},
		{name = "Icekid", wtype = 0, mod = 18, price = 1000},
		{name = "Ruffeld", wtype = 0, mod = 19, price = 1000},
		{name = "Wangenmaster", wtype = 0, mod = 20, price = 1000},
		{name = "Superfive", wtype = 0, mod = 21, price = 1000},
		{name = "Endov2", wtype = 0, mod = 22, price = 1000},
		{name = "Slitsix", wtype = 0, mod = 23, price = 1000}
	},
-----Suv wheels------
	suvwheels = {
		{name = "Padrao", wtype = 3, mod = -1, price = 1000},
		{name = "Vip", wtype = 3, mod = 0, price = 1000},
		{name = "Benefactor", wtype = 3, mod = 1, price = 1000},
		{name = "Cosmo", wtype = 3, mod = 2, price = 1000},
		{name = "Bippu", wtype = 3, mod = 3, price = 1000},
		{name = "Royalsix", wtype = 3, mod = 4, price = 1000},
		{name = "Fagorme", wtype = 3, mod = 5, price = 1000},
		{name = "Deluxe", wtype = 3, mod = 6, price = 1000},
		{name = "Icedout", wtype = 3, mod = 7, price = 1000},
		{name = "Cognscenti", wtype = 3, mod = 8, price = 1000},
		{name = "Lozspeedten", wtype = 3, mod = 9, price = 1000},
		{name = "Supernova", wtype = 3, mod = 10, price = 1000},
		{name = "Obeyrs", wtype = 3, mod = 11, price = 1000},
		{name = "Lozspeedballer", wtype = 3, mod = 12, price = 1000},
		{name = "Extra vaganzo", wtype = 3, mod = 13, price = 1000},
		{name = "Splitsix", wtype = 3, mod = 14, price = 1000},
		{name = "Empowered", wtype = 3, mod = 15, price = 1000},
		{name = "Sunrise", wtype = 3, mod = 16, price = 1000},
		{name = "Dashvip", wtype = 3, mod = 17, price = 1000},
		{name = "Cutter", wtype = 3, mod = 18, price = 1000}
	},
-----Offroad wheels-----
	offroadwheels = {
		{name = "Padrao", wtype = 4, mod = -1, price = 1000},
		{name = "Raider", wtype = 4, mod = 0, price = 1000},
		{name = "Mudslinger", wtype = 4, modtype = 23, wtype = 4, mod = 1, price = 1000},
		{name = "Nevis", wtype = 4, mod = 2, price = 1000},
		{name = "Cairngorm", wtype = 4, mod = 3, price = 1000},
		{name = "Amazon", wtype = 4, mod = 4, price = 1000},
		{name = "Challenger", wtype = 4, mod = 5, price = 1000},
		{name = "Dunebasher", wtype = 4, mod = 6, price = 1000},
		{name = "Fivestar", wtype = 4, mod = 7, price = 1000},
		{name = "Rockcrawler", wtype = 4, mod = 8, price = 1000},
		{name = "MilspecAçoie", wtype = 4, mod = 9, price = 1000}
	},
-----Tuner wheels------
	tunerwheels = {
		{name = "Padrao", wtype = 5, mod = -1, price = 1000},
		{name = "Cosmo", wtype = 5, mod = 0, price = 1000},
		{name = "Supermesh", wtype = 5, mod = 1, price = 1000},
		{name = "Outsider", wtype = 5, mod = 2, price = 1000},
		{name = "Rollas", wtype = 5, mod = 3, price = 1000},
		{name = "Driffmeister", wtype = 5, mod = 4, price = 1000},
		{name = "Slicer", wtype = 5, mod = 5, price = 1000},
		{name = "Elquatro", wtype = 5, mod = 6, price = 1000},
		{name = "Dubbed", wtype = 5, mod = 7, price = 1000},
		{name = "Fivestar", wtype = 5, mod = 8, price = 1000},
		{name = "Slideways", wtype = 5, mod = 9, price = 1000},
		{name = "Apex", wtype = 5, mod = 10, price = 1000},
		{name = "Stancedeg", wtype = 5, mod = 11, price = 1000},
		{name = "Countersteer", wtype = 5, mod = 12, price = 1000},
		{name = "Endov1", wtype = 5, mod = 13, price = 1000},
		{name = "Endov2dish", wtype = 5, mod = 14, price = 1000},
		{name = "Guppez", wtype = 5, mod = 15, price = 1000},
		{name = "Chokadori", wtype = 5, mod = 16, price = 1000},
		{name = "Chicane", wtype = 5, mod = 17, price = 1000},
		{name = "Saisoku", wtype = 5, mod = 18, price = 1000},
		{name = "Dishedeight", wtype = 5, mod = 19, price = 1000},
		{name = "Fujiwara", wtype = 5, mod = 20, price = 1000},
		{name = "Zokusha", wtype = 5, mod = 21, price = 1000},
		{name = "Battlevill", wtype = 5, mod = 22, price = 1000},
		{name = "Rallymaster", wtype = 5, mod = 23, price = 1000}
	},
-----Highend wheels------
	highendwheels = {
		{name = "Padrao", wtype = 7, mod = -1, price = 1000},
		{name = "Shadow", wtype = 7, mod = 0, price = 1000},
		{name = "Hyper", wtype = 7, mod = 1, price = 1000},
		{name = "Blade", wtype = 7, mod = 2, price = 1000},
		{name = "Diamond", wtype = 7, mod = 3, price = 1000},
		{name = "Supagee", wtype = 7, mod = 4, price = 1000},
		{name = "Chromaticz", wtype = 7, mod = 5, price = 1000},
		{name = "Merciechlip", wtype = 7, mod = 6, price = 1000},
		{name = "Obeyrs", wtype = 7, mod = 7, price = 1000},
		{name = "Gtchrome", wtype = 7, mod = 8, price = 1000},
		{name = "Cheetahr", wtype = 7, mod = 9, price = 1000},
		{name = "Solar", wtype = 7, mod = 10, price = 1000},
		{name = "Splitten", wtype = 7, mod = 11, price = 1000},
		{name = "Dashvip", wtype = 7, mod = 12, price = 1000},
		{name = "Lozspeedten", wtype = 7, mod = 13, price = 1000},
		{name = "CarbonInferno", wtype = 7, mod = 14, price = 1000},
		{name = "Carbonshadow", wtype = 7, mod = 15, price = 1000},
		{name = "Carbonz", wtype = 7, mod = 16, price = 1000},
		{name = "Carbonsolar", wtype = 7, mod = 17, price = 1000},
		{name = "Carboncheetahr", wtype = 7, mod = 18, price = 1000},
		{name = "CarbonsCorrida", wtype = 7, mod = 19, price = 1000}
	},
-----Lowrider wheels------
	lowriderwheels = {
		{name = "Padrao", wtype = 2, mod = -1, price = 1000},
		{name = "Flare", wtype = 2, mod = 0, price = 1000},
		{name = "Wired", wtype = 2, mod = 1, price = 1000},
		{name = "Triplegolds", wtype = 2, mod = 2, price = 1000},
		{name = "Bigworm", wtype = 2, mod = 3, price = 1000},
		{name = "Sevenfives", wtype = 2, mod = 4, price = 1000},
		{name = "Splitsix", wtype = 2, mod = 5, price = 1000},
		{name = "Freshmesh", wtype = 2, mod = 6, price = 1000},
		{name = "Leadsled", wtype = 2, mod = 7, price = 1000},
		{name = "Turbine", wtype = 2, mod = 8, price = 1000},
		{name = "Superfin", wtype = 2, mod = 9, price = 1000},
		{name = "Classicrod", wtype = 2, mod = 10, price = 1000},
		{name = "Dollar", wtype = 2, mod = 11, price = 1000},
		{name = "Dukes", wtype = 2, mod = 12, price = 1000},
		{name = "Lowfive", wtype = 2, mod = 13, price = 1000},
		{name = "Gooch", wtype = 2, mod = 14, price = 1000}
	},
-----Muscle wheels-----
	musclewheels = {
		{name = "Padrao", wtype = 1, mod = -1, price = 1000},
		{name = "Classicfive", wtype = 1, mod = 0, price = 1000},
		{name = "Dukes", wtype = 1, mod = 1, price = 1000},
		{name = "Musclefreak", wtype = 1, mod = 2, price = 1000},
		{name = "Kracka", wtype = 1, mod = 3, price = 1000},
		{name = "Azrea", wtype = 1, mod = 4, price = 1000},
		{name = "Mecha", wtype = 1, mod = 5, price = 1000},
		{name = "Pretotop", wtype = 1, mod = 6, price = 1000},
		{name = "Dragspl", wtype = 1, mod = 7, price = 1000},
		{name = "Revolver", wtype = 1, mod = 8, price = 1000},
		{name = "Classicrod", wtype = 1, mod = 9, price = 1000},
		{name = "Spooner", wtype = 1, mod = 10, price = 1000},
		{name = "Fivestar", wtype = 1, mod = 11, price = 1000},
		{name = "Oldschool", wtype = 1, mod = 12, price = 1000},
		{name = "Eljefe", wtype = 1, mod = 13, price = 1000},
		{name = "Dodman", wtype = 1, mod = 14, price = 1000},
		{name = "Sixgun", wtype = 1, mod = 15, price = 1000},
		{name = "Mercenary", wtype = 1, mod = 16, price = 1000}
	},
	
---------Trim color--------
	trim = {
		colors = colors,
		price = 1000
	},
	
----------Mods-----------
	mods = {
	
----------Liveries--------
	[48] = {
		startprice = 15000,
		increaseby = 2500
	},
	
----------Windows--------
	[46] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Tank--------
	[45] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Trim--------
	[44] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Aerials--------
	[43] = {
		startprice = 5000,
		increaseby = 1250
	},

----------Arch cover--------
	[42] = {
		startprice = 5000,
		increaseby = 1250
	},

----------Struts--------
	[41] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Air filter--------
	[40] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Engine block--------
	[39] = {
		startprice = 5000,
		increaseby = 1250
	},

----------Hydraulics--------
	[38] = {
		startprice = 15000,
		increaseby = 2500
	},
	
----------Trunk--------
	[37] = {
		startprice = 5000,
		increaseby = 1250
	},

----------Speakers--------
	[36] = {
		startprice = 5000,
		increaseby = 1250
	},

----------Plaques--------
	[35] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Shift leavers--------
	[34] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Steeringwheel--------
	[33] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Seats--------
	[32] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Door speaker--------
	[31] = {
		startprice = 5000,
		increaseby = 1250
	},

----------Dial--------
	[30] = {
		startprice = 5000,
		increaseby = 1250
	},
----------Dashboard--------
	[29] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Ornaments--------
	[28] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Trim--------
	[27] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Vanity plates--------
	[26] = {
		startprice = 5000,
		increaseby = 1250
	},
	
----------Plate holder--------
	[25] = {
		startprice = 5000,
		increaseby = 1250
	},
	
---------Headlights---------
	[22] = {
		{name = "Luzes Padrao", mod = 0, price = 0},
		{name = "Luzes de Xenon", mod = 1, price = 1625},
	},
	
----------Turbo---------
	[18] = {
		{ name = "None", mod = 0, price = 0},
		{ name = "Turbo Tuning", mod = 1, price = 3000},
	},
	
-----------Armor-------------
	[16] = {
		{name = "Atualização de armadura 20%",modtype = 16, mod = 0, price = 2500},
		{name = "Atualização de armadura 40%",modtype = 16, mod = 1, price = 5000},
		{name = "Atualização de armadura 60%",modtype = 16, mod = 2, price = 7500},
		{name = "Atualização de armadura 80%",modtype = 16, mod = 3, price = 10000},
		{name = "Atualização de armadura 100%",modtype = 16, mod = 4, price = 12500},
	},

---------Suspension-----------
	[15] = {
		{name = "Suspensão Rebaixada",mod = 0, price = 1000},
		{name = "Suspensão de Rua",mod = 1, price = 2000},
		{name = "Suspensão Sport",mod = 2, price = 3500},
		{name = "Suspensão de Competição",mod = 3, price = 4000},
	},

-----------Buzina----------
	[14] = {
		{name = "Buzina de Caminhao", mod = 0, price = 500},
		{name = "Buzina Policial", mod = 1, price = 5000},
		{name = "Buzina de Palhaço", mod = 2, price = 500},
		{name = "Musical Buzina 1", mod = 3, price = 1000},
		{name = "Musical Buzina 2", mod = 4, price = 1000},
		{name = "Musical Buzina 3", mod = 5, price = 1000},
		{name = "Musical Buzina 4", mod = 6, price = 1000},
		{name = "Musical Buzina 5", mod = 7, price = 1000},
		{name = "Buzina Trombone Triste", mod = 8, price = 1000},
		{name = "Classica Buzina 1", mod = 9, price = 1000},
		{name = "Classica Buzina 2", mod = 10, price = 1000},
		{name = "Classica Buzina 3", mod = 11, price = 1000},
		{name = "Classica Buzina 4", mod = 12, price = 1000},
		{name = "Classica Buzina 5", mod = 13, price = 1000},
		{name = "Classica Buzina 6", mod = 14, price = 1000},
		{name = "Classica Buzina 7", mod = 15, price = 1000},
		{name = "Scaledo Buzina", mod = 16, price = 1000},
		{name = "Scalere Buzina", mod = 17, price = 1000},
		{name = "Scalemi Buzina", mod = 18, price = 1000},
		{name = "Scalefa Buzina", mod = 19, price = 1000},
		{name = "Scalesol Buzina", mod = 20, price = 1000},
		{name = "Scalela Buzina", mod = 21, price = 1000},
		{name = "Scaleti Buzina", mod = 22, price = 1000},
		{name = "Scaledo Buzina High", mod = 23, price = 1000},
		{name = "Jazz Buzina 1", mod = 25, price = 1000},
		{name = "Jazz Buzina 2", mod = 26, price = 1000},
		{name = "Jazz Buzina 3", mod = 27, price = 1000},
		{name = "Jazzloop Buzina", mod = 28, price = 1000},
		{name = "Starspangban Buzina 1", mod = 29, price = 1000},
		{name = "Starspangban Buzina 2", mod = 30, price = 1000},
		{name = "Starspangban Buzina 3", mod = 31, price = 1000},
		{name = "Starspangban Buzina 4", mod = 32, price = 1000},
		{name = "Classicalloop Buzina 1", mod = 33, price = 1000},
		{name = "Classicalloop Buzina 2", mod = 34, price = 1000},
		{name = "Classicalloop Buzina 3", mod = 35, price = 1000},
	},

----------Transmission---------
	[13] = {
		{name = "Trasmissão de Rua", mod = 0, price = 5000},
		{name = "Trasmissão Sport", mod = 1, price = 7500},
		{name = "Trasmissão de Corrida", mod = 2, price = 10000},
	},
	
-----------Brakes-------------
	[12] = {
		{name = "Freios de Rua", mod = 0, price = 4000},
		{name = "Freios Sport", mod = 1, price = 6000},
		{name = "Freios de Corrida", mod = 2, price = 8000},
	},
	
------------Engine----------
	[11] = {
		{name = "Upgrade EMS, Level 2", mod = 0, price = 4500},
		{name = "Upgrade EMS, Level 3", mod = 1, price = 8000},
		{name = "Upgrade EMS, Level 4", mod = 2, price = 10500},
	},
	
-------------Roof----------
	[10] = {
		startprice = 1250,
		increaseby = 400
	},
	
------------Fenders---------
	[8] = {
		startprice = 1500,
		increaseby = 400
	},
	
------------Hood----------
	[7] = {
		startprice = 1500,
		increaseby = 400
	},
	
----------Grille----------
	[6] = {
		startprice = 1250,
		increaseby = 400
	},
	
----------Roll cage----------
	[5] = {
		startprice = 1250,
		increaseby = 400
	},
	
----------Exhaust----------
	[4] = {
		startprice = 1000,
		increaseby = 400
	},
	
----------Skirts----------
	[3] = {
		startprice = 1250,
		increaseby = 400
	},
	
-----------Rear bumpers----------
	[2] = {
		startprice = 2500,
		increaseby = 500
	},
	
----------Front bumpers----------
	[1] = {
		startprice = 2500,
		increaseby = 500
	},
	
----------Spoiler----------
	[0] = {
		startprice = 2500,
		increaseby = 400
	},
	}
	
}

------Model Pretolist--------
--Does'nt allow specific vehicles to be upgraded
LSC_Config.ModelBlacklist = {
	"Policia",
}

--Sets if garage will be locked if someone is inside it already
LSC_Config.lock = false

--Enable/disable old entering way
LSC_Config.oldenter = false

--Menu settings
LSC_Config.menu = {

-------Controls--------
	controls = {
		menu_up = 27,
		menu_down = 173,
		menu_left = 174,
		menu_right = 175,
		menu_select = 201,
		menu_back = 177
	},

-------Menu position-----
	--Possible positions:
	--Left
	--Right
	--Custom position, example: position = {x = 0.2, y = 0.2}
	position = "esquerda",

-------Menu theme--------
	--Possible themes: light, darkred, bluish, greenish
	--Custom example:
	--[[theme = {
		text_color = { r = 255,g = 255, b = 255, a = 255},
		bg_color = { r = 0,g = 0, b = 0, a = 155},
		--Colors when button is selected
		stext_color = { r = 0,g = 0, b = 0, a = 255},
		sbg_color = { r = 255,g = 255, b = 0, a = 200},
	},]]
	theme = "luzes",
	
--------Max buttons------
	--Default: 10
	maxbuttons = 10,

-------Size---------
	--[[
	Default:
	width = 0.24
	height = 0.36
	]]
	width = 0.24,
	height = 0.36

}
