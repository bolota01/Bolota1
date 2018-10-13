
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.2 -- 10% of the original price if a rent //20% DO VALOR DE COMPRA
cfg.sell_factor = 0.5 -- sell for 75% of the original price //70% DO VALOR DE COMPRA

cfg.garage_types = {
	["GARAGEM"] = {
		_config = {vtype="car",blipid=369,blipcolor=47,radius=5.1},
		["rocoto"] = {"Fiat Toro",150000,"<img src='https://i.imgur.com/RLAsvHa.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["jetta"] = {"VW Jetta 1.8 T",110000,"<img src='https://i.imgur.com/oiS8Wk9.png' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:190 km/h"},
		["dune"] = {"Kart",40000,"<img src='https://i.imgur.com/vRcNB9c.png' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["hondacivictr"] = {"Honda Civic Type R",200000,"<img src='https://i.imgur.com/4WF6DO1.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["passat"] = {"Volkswagen Passat",120000,"<img src='https://i.imgur.com/rTVNwEO.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["mobilete"] = {"Mobilete",3000,"<img src='https://i.imgur.com/ytQZcNc.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:N/A km/h"},
		["150"] = {"CG150",9000,"<img src='https://i.imgur.com/KSQX8QW.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:180 km/h"},
		["206"] = {"Peugeot 206",18000,"<img src='https://i.imgur.com/v9jaYSp.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:180 km/h"},
		["clio"] = {"Renault Clio",3500,"<img src='https://i.imgur.com/My4wots.png' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:180 km/h"},
		["fusca"] = {"Volkswagen Fusca 1969",6706,"<img src='https://i.imgur.com/698tdTs.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:110 km/h"},
		["zl12017"] = {"Chevrolet Camaro ZL1",320000,"<img src='https://i.imgur.com/n0E3raO.jpg' /><img src='' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300 km/h"},
		["r8ppi"] = {"Audi R8",2170000,"<img src='https://i.imgur.com/ecnrN4c.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:265 km/h"},
		["x6m"] = {"BMW X6M",529000,"<img src='https://i.imgur.com/lzIKE4V.jpg' /><br/>CAPACIDADE:200kg<br/>VEL MÁX:300+ km/h"},
		["bmci"] = {"BMW M5 2018",525000,"<img src='https://i.imgur.com/Hj9KgX4.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"},
		["440i"] = {"BMW 440i M Sport",225925,"<img src='https://i.imgur.com/EDtk9n8.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["r1"] = {"Yamaha R1",79415,"<img src='https://i.imgur.com/BDZPAiI.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:230 km/h"},
		["f4rr"] = {"Agusta",230130,"<img src='https://i.imgur.com/9ZveCPd.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:335+ km/h"},
		["gtr"] = {"Nissan GTR",900000,"<img src='https://i.imgur.com/GDzLE9i.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"},
		["hcbr17"] = {"Honda CBR",129290,"<img src='https://i.imgur.com/pqcwo0s.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:290 km/h"},
		["chevette"] = {"Chevrolet Chevette",8000,"<img src='https://i.imgur.com/lfvYU8f.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:110 km/h"},
		["ds4"] = {"Citroen DS4",49000,"<img src='https://i.imgur.com/GiwlAzj.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:120 km/h"},
		["c7"] = {"Chevrolet Corvette",699000,"<img src='https://i.imgur.com/lirMkKp.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"},
		["fatboy"] = {"Harley Davidson Fat Boy",95000,"<img src='https://i.imgur.com/vA4doXK.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:160 km/h"},
		["hayabusa"] = {"Suzuki Hayabusa",397000,"<img src='https://i.imgur.com/rFKTNbD.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:400+ km/h"},
		["biz25"] = {"Honda Biz 125cc",8500,"<img src='https://i.imgur.com/BHk3rYg.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:130 km/h"},
		["nh2r"] = {"Kawasaki Ninja",230000,"<img src='https://i.imgur.com/JO7I2VC.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:270 km/h"},
		["ttrs"] = {"Audi TT",178000,"<img src='https://i.imgur.com/mDAwPcA.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:270 km/h"},
		["zx10r"] = {"Kawasaki zx10r",113000,"<img src='https://i.imgur.com/GhENUhd.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:160 km/h"},
		["amarok"] = {"Amarok",100000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["fusiont"] = {"Fusion",78000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["gms10"] = {"S10",120000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["titan17"] = {"Nissan Titan",220000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["zentorno"] = {"zentorno", 0}
	},
	["VENDA"] = {
		_config = {vtype="car",blipid=369,blipcolor=47,radius=5.1,buy=true},
		["rocoto"] = {"Fiat Toro",150000,"<img src='https://i.imgur.com/RLAsvHa.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["jetta"] = {"VW Jetta 1.8 T",110000,"<img src='https://i.imgur.com/oiS8Wk9.png' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:190 km/h"},
		["dune"] = {"Kart",40000,"<img src='https://i.imgur.com/vRcNB9c.png' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["hondacivictr"] = {"Honda Civic Type R",200000,"<img src='https://i.imgur.com/4WF6DO1.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["passat"] = {"Volkswagen Passat",120000,"<img src='https://i.imgur.com/rTVNwEO.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["mobilete"] = {"Mobilete",3000,"<img src='https://i.imgur.com/ytQZcNc.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:N/A km/h"},
		["150"] = {"CG150",9000,"<img src='https://i.imgur.com/KSQX8QW.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:180 km/h"},
		["206"] = {"Peugeot 206",18000,"<img src='https://i.imgur.com/v9jaYSp.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:180 km/h"},
		["clio"] = {"Renault Clio",3500,"<img src='https://i.imgur.com/My4wots.png' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:180 km/h"},
		["fusca"] = {"Volkswagen Fusca 1969",6706,"<img src='https://i.imgur.com/698tdTs.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:110 km/h"},
		["zl12017"] = {"Chevrolet Camaro ZL1",320000,"<img src='https://i.imgur.com/n0E3raO.jpg' /><img src='' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300 km/h"},
		["r8ppi"] = {"Audi R8",2170000,"<img src='https://i.imgur.com/ecnrN4c.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:265 km/h"},
		["x6m"] = {"BMW X6M",529000,"<img src='https://i.imgur.com/lzIKE4V.jpg' /><br/>CAPACIDADE:200kg<br/>VEL MÁX:300+ km/h"},
		["bmci"] = {"BMW M5 2018",525000,"<img src='https://i.imgur.com/Hj9KgX4.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"},
		["440i"] = {"BMW 440i M Sport",225925,"<img src='https://i.imgur.com/EDtk9n8.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:290 km/h"},
		["r1"] = {"Yamaha R1",79415,"<img src='https://i.imgur.com/BDZPAiI.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:230 km/h"},
		["f4rr"] = {"Agusta",230130,"<img src='https://i.imgur.com/9ZveCPd.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:335+ km/h"},
		["gtr"] = {"Nissan GTR",900000,"<img src='https://i.imgur.com/GDzLE9i.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"},
		["hcbr17"] = {"Honda CBR",129290,"<img src='https://i.imgur.com/pqcwo0s.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:290 km/h"},
		["chevette"] = {"Chevrolet Chevette",8000,"<img src='https://i.imgur.com/lfvYU8f.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:110 km/h"},
		["ds4"] = {"Citroen DS4",49000,"<img src='https://i.imgur.com/GiwlAzj.jpg' /><br/>CAPACIDADE:50kg<br/>VEL MÁX:120 km/h"},
		["c7"] = {"Chevrolet Corvette",699000,"<img src='https://i.imgur.com/lirMkKp.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"},
		["fatboy"] = {"Harley Davidson Fat Boy",95000,"<img src='https://i.imgur.com/vA4doXK.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:160 km/h"},
		["hayabusa"] = {"Suzuki Hayabusa",397000,"<img src='https://i.imgur.com/rFKTNbD.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:400+ km/h"},
		["biz25"] = {"Honda Biz 125cc",8500,"<img src='https://i.imgur.com/BHk3rYg.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:130 km/h"},
		["nh2r"] = {"Kawasaki Ninja",230000,"<img src='https://i.imgur.com/JO7I2VC.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:270 km/h"},
		["ttrs"] = {"Audi TT",178000,"<img src='https://i.imgur.com/mDAwPcA.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:270 km/h"},
		["zx10r"] = {"Kawasaki zx10r",113000,"<img src='https://i.imgur.com/GhENUhd.jpg' /><br/>CAPACIDADE:30kg<br/>VEL MÁX:160 km/h"},
		["amarok"] = {"Amarok",100000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["fusiont"] = {"Fusion",78000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["gms10"] = {"S10",120000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["titan17"] = {"Nissan Titan",220000,"<img src='https://i.imgur.com/qWPpDv3.png' /><br/>CAPACIDADE:XXXkg<br/>VEL MÁX:XXX km/h"},
		["zentorno"] = {"zentorno", 0}
	},
	["REVENDA"] = {
		_config = {vtype="car",blipid=431,blipcolor=47,radius=5.1, permissions={"empresarioC.revenda"},buy=true},
		["rocoto"] = {"Fiat Toro",75000,""},
		["dune"] = {"Kart",200000,""},
		["hondacivictr"] = {"Honda Civic Type R",100000,""},
		["passat"] = {"Volkswagen Passat",60000,""},
		["mobilete"] = {"Mobilete",1500,""},
		["clio"] = {"Renault Clio",2000,""},
		["150"] = {"CG150",4500,""},
		["206"] = {"Peugeot 206",9000,""},
		["fusca"] = {"Volkswagen Fusca 1969",3500,""},
		["zl12017"] = {"Chevrolet Camaro ZL1",160000,""},
		["r8ppi"] = {"Audi R8",1050000,""},
		["x6m"] = {"BMW X6M",214000,""},
		["bmci"] = {"BMW M5 2018",525000,""},
		["440i"] = {"BMW 440i M Sport",112000,""},
		["r1"] = {"Yamaha R1",39000,""},
		["f4rr"] = {"Agusta",115000,""},
		["gtr"] = {"Nissan GTR",450000,""},
		["hcbr17"] = {"Honda CBR",64000,""},
		["chevette"] = {"Chevrolet Chevette",4000,""},
		["ds4"] = {"Citroen DS4",24000,""},
		["c7"] = {"Chevrolet Corvette",699000,""},
		["fatboy"] = {"Harley Davidson Fat Boy",50000,""},
		["hayabusa"] = {"Suzuki Hayabusa",198500,""},
		["biz25"] = {"Honda Biz 125cc",8500,""},
		["nh2r"] = {"Kawasaki Ninja",115000,""},
		["ttrs"] = {"Audi TT",89000,""},
		["zx10r"] = {"Kawasaki zx10r",56500,""}
	},
	["Transportador de Valores"] = {
		_config = {blipid=67,blipcolor=3,vtype="car",permissions={"bankdriver.vehicle"},buy=true},
		["stockade"] = {"Carro Forte",0, ""}
	},
	["Caminhoneiro"] = {
		_config = {blipid=318,blipcolor=47,vtype="car",buy=true},
		["mule"] = {"Mercedes-Benz Actros",500000, "<img src='https://i.imgur.com/AaSTXRK.jpg' <br/>CAPACIDADE: 120KG>"}
	},
	["VIP BRONZE"] = {
		_config = {vtype="car",permissions={"garagem.vipbronze"},buy=true},
		["italia458"] = {"Ferrari Italia 458",1399000,"<img src='https://i.imgur.com/5apchYI.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"}
	},
	["VIP PRATA"] = {
		_config = {vtype="car",permissions={"garagem.vipprata"},buy=true},
		["fc15"] = {"Ferrari California T 2015",1680000,"<img src='https://i.imgur.com/3Q7Qlfc.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:310+ km/h"}
	},
	["VIP GOLD"] = {
		_config = {vtype="car",permissions={"garagem.vipgold"},buy=true},
		["aventadors"] = {"Lamborghini Aventador S",0, "<img src='blob:https://imgur.com/55ab981e-3f16-465c-a39f-e54d70a5707b' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"}
	},
	["VIP DIAMANTE"] = {
		_config = {vtype="car",permissions={"garagem.vipdima"},buy=true},
		["aperta"] = {"La Ferrari",10000000,"<img src='https://i.imgur.com/0CDv4Ex.jpg' /><br/>CAPACIDADE:100kg<br/>VEL MÁX:300+ km/h"}
	}, 
	["Veículos PM"] = {
    _config = {vtype="car",blipcolor=4,permissions={"pm.garagem"},buy=true},
    	["police2"] = {"Lexus",0, ""},
		["sheriff"] = {"Evoque",0, ""},
		["tigerrocam"] = {"Moto Polícia",0, ""}
	},
	["Bicicletário"] = {
    _config = {vtype="bike",blipid=455,blipcolor=6,buy=true},
    	["bmx"] = {"Bmx",0, ""},
		["cruiser"] = {"Cruiser",0, ""},
		["fixter"] = {"Fixter",0, ""},
		["scorcher"] = {"Scorcher",0, ""},
		["triBike"] = {"TriBike Verde",0, ""},
		["triBike2"] = {"TriBike Vermelha",0, ""},
		["triBike3"] = {"TriBike Azul",0, ""}
	},  
	["Veículos Federal"] = {
    _config = {vtype="car",blipcolor=4,permissions={"federal.garagem"},buy=true},
    	["sheriff2"] = {"Porsche",0, ""},
    	["CHARGERPF"] = {"Charger",0, ""}
	},
  	["heliponto PM"] = {
    	_config = {vtype="helicopters",blipcolor=4,permissions={"aguia.garagem"},buy=true},
    	["as350"] = {"Águia PMESP",0, ""}
	}, 
  	["Barco de Pesca"] = {  
    	_config = {blipid=427,blipcolor=59,vtype="boats",blipid=455,blipcolor=6,permissions={"tartaruga.garagem"},buy=true},
    	["Dinghy"] = {"Barco de Pesca",100, ""},
    	["Dinghy2"] = {"Barco de Pesca 2",100, ""}
	},
	["UBER"] = {
		_config = {vtype="car",permissions={"UBER.garagem"},buy=true},
		["felon"] = {"C4 Pallas|UBER",2785, ""}
	},
	["RECICLAGEM S/A"] = {
		_config = {vtype="car",permissions={"gari.veiculo"},buy=true},
		["trash"] = {"Caminhão de Lixo",15000, ""}
	},
	["heliponto SAMU"] = {
    	_config = {vtype="helicopters",blipcolor=4,permissions={"hospital.garagem"},buy=true},
    	["samumav"] = {"Helicóptero Samu",0, ""}
	},
	["hospital"] = {
    	_config = {vtype="car",blipcolor=4,permissions={"hospital.garagem"},buy=true},
	  	["sw4samu"] = {"SW4 Samu",0, ""},
		["ur"] = {"Ambulancia",0, ""},
		["Samu2"] = {"L200 Samu",0, ""},
		["motosamu"] = {"Moto Samu",0, ""}
	},
	["CORREIOS S/A"] = {
		_config = {vtype="car",permissions={"correios.veiculo"},buy=true},
		["boxville2"] = {"Caminhão Correios 01", 0, ""},
		["boxville4"] = {"Caminhão Correios 02", 0, ""}
	},  	
	["UberEATS"] = {
		_config = {blipid=493,blipcolor=3,vtype="bike",permissions={"delivery.garagem"},buy=true},
		["enduro"] = {"Moto Enduro",0, ""}
	},
	["HELIPORTO"] = {
		_config = {blipid=370,blipcolor=47,vtype="helicopters",buy=true},
		["havok"] = {"Nagasaki Havok",2300900, "<img src='' /><br/>CAPACIDADE: 300kg|LOTAÇÃO: APENAS O PILOTO"},
		["volatus"] = {"Buckingham Volatus",19106603, "<img src='' /><br/>CAPACIDADE: 1000kg|LOTAÇÃO: PILOTO + 3 PASSAGEIROS"},
		["supervolito"] = {"Buckingham SuperVolito",11362333, "<img src='' /><br/>CAPACIDADE: 750kg|LOTAÇÃO: PILOTO + 3 PASSAGEIROS"}
	},
	["AEROPORTO"] = {
		_config = {blipid=372,blipcolor=47,vtype="airplane",buy=true},
		["luxor"] = {"Buckingham Luxor",50000000, "<img src='' /><br/>CAPACIDADE: 3000kg|LOTAÇÃO: PILOTO + 9 PASSAGEIROS"},
		["mammatus"] = {"JoBuilt Mammatus",15000000, "<img src='' /><br/>CAPACIDADE: 1000kg|LOTAÇÃO: PILOTO + 3 PASSAGEIROS"},
		["microlight"] = {"Nagasaki Ultralight",750000, "<img src='' /><br/>CAPACIDADE: 100kg|LOTAÇÃO: PILOTO APENAS"},
		["cuban800"] = {"Western Cuban 800 ",5000000, "<img src='' /><br/>CAPACIDADE: 500kg|LOTAÇÃO: PILOTO + 1 PASSAGEIRO"}
	},
	["MARINA"] = {
		_config = {blipid=371,blipcolor=47,vtype="airplane",buy=true},
		["seashark"] = {"Speedophile Seashark <br/>JetSki",55000, "<img src='' /><br/>CAPACIDADE: 50kg|LOTAÇÃO: PILOTO + PASSAGEIRO"},
		["jetmax"] = {"Shitzu Jetmax",230000, "<img src='' /><br/>CAPACIDADE: 300kg|LOTAÇÃO: PILOTO + PASSAGEIRO"}
  	},
  	["heliponto SAMU"] = {
        _config = {vtype="helicopters",blipcolor=4,permissions={"hospital.garagem"},buy=true},
    	["samumav"] = {"Helicóptero Samu",0, ""}
  	},   
  	["Taxi"] = {
   	 	_config = {vtype="car",blipid=198,blipcolor=5,permissions={"taxi.garagem"},buy=true},
    	["taxi"] = {"Taxi",0, ""}
  	},  
  	["Mecânico"] = {
   		 _config = {vtype="bike",blipid=85,blipcolor=31,permissions={"repair.garagem"},buy=true},
    	["flatbed"] = {"Reboque",0, ""},
		["towtruck2"] = {"Guincho",0, ""}
  	},   
  	["Delivery"] = {
    	_config = {vtype="bike",blipid=355,blipcolor=4,permissions={"delivery.garagem"},buy=true},
    	["enduro"] = {"Enduro",8000, ""}
  }
}

cfg.garages = {
	--{"Caminhoneiro",219.18501281738,-780.86364746094,30.802562713623},
	{"VIP GOLD",-45.049365997314,-1112.65234375,26.435815811157},
	{"VIP PRATA",-45.049365997314,-1112.65234375,26.435815811157},
	{"VIP BRONZE",-45.049365997314,-1112.65234375,26.435815811157},
	{"VIP DIAMANTE",-45.049365997314,-1112.65234375,26.435815811157},
	{"REVENDA",-58.326511383057,-1113.7546386719,26.435815811157},
	{"VENDA",-57.328285217285,-1110.650390625,26.435396194458},--CONCESSIONÁRIA
	{"GARAGEM",-2530.109375,2334.3012695313,33.059906005859},
	{"GARAGEM",2576.7629394531,403.1061706543,108.45693206787},
	{"GARAGEM",-378.77001953125,-110.93278503418,38.697410583496},
	{"GARAGEM",-580.55767822266,316.67123413086,84.783363342285}, -- M.C
	{"GARAGEM",1404.8968505859,1118.7971191406,114.83769226074},
	{"GARAGEM",151.99737548828,-1309.5081787109,29.202308654785}, -- GARAGEM PABLETE
	{"GARAGEM",497.71151733398,-1335.3879394531,29.327247619629}, -- GARAGEM CARRIJO
	{"GARAGEM",1220.6368408203,2710.6381835938,38.005794525146},
	{"GARAGEM",1930.3410644531,3745.3630371094,32.30867767334},
	{"GARAGEM",-138.35879516602,6353.3129882813,31.487783432007},
	{"GARAGEM",-829.64593505859,158.36608886719,68.864730834961}, -- Casa Michael
	{"GARAGEM",-297.95516967773,-991.01470947266,31.080604553223},
	{"GARAGEM",212.30700683594,-798.68682861328,30.877960205078},
	{"GARAGEM",1376.1893310547,-740.61248779297,67.232833862305},
	{"GARAGEM",764.24114990234,-306.45928955078,59.946491241455},-- Garagem Favela 
	{"GARAGEM",446.3591003418,-1783.3962402344,28.566579818726}, -- Garagem Favela
	--{"GARAGEM",894.30828857422,-51.476318359375,78.764373779297}, Base da ROTA
	{"GARAGEM",-797.47314453125,600.15716552734,127.32711791992},
	{"GARAGEM",-795.96862792969,304.84030151367,85.700485229492},
	{"GARAGEM",1728.5637207031,3313.8908691406,41.223480224609},
	{"GARAGEM",-51.9446144104,-786.52667236328,44.074012756348}, -- TMBR
	{"GARAGEM",-836.31384277344,114.28999328613,55.355060577393}, -- Garagem
	{"GARAGEM",11.120021820068,548.63977050781,175.96977233887}, -- Garagem Mansão Franklin
	{"RECICLAGEM S/A",179.07063293457,-2210.9807128906,5.9991369247437},
	{"CORREIOS S/A",-289.3962097168,-890.03399658203,31.080615997314},
	{"MADEIRA & CIA",-805.62573242188,5409.2807617188,33.991455078125},
	{"UBER",-339.94155883789,-1023.3903198242,30.400903244019},
	{"UberEATS",-337.74453735352,-1014.83984375,30.384658813477},
	{"Mecânico",407.83251953125,-1634.0269775391,29.291940689087},
	{"Transportador de Valores",-5.2033176422119,-670.98248291016,32.338073730469},
	{"FAZENDEIRO",1432.5661621094,1107.0783691406,114.24201965332},
	{"MOTO CLUBE",970.89477539063,-122.97027587891,74.353141784668},
	--{"EMPRESARIO",-44.977939605713,-1113.3082275391,26.435800552368},
	--{"Bicicletário",1640, 3236, 40.4},
	--{"planes",2123, 4805, 41.19},
	--{"planes",-1348, -2230, 13.9},
	--{"helicopters",1750, 3260, 41.37},
	--{"helicopters",-1233, -2269, 13.9},
	--{"helicopters",-745, -1468, 5},
	--{"boats",-849.5, -1368.64, 1.6},
	--{"boats",1538, 3902, 30.35}
	{"Veículos PM",453.24819946289,-1019.3926391602,28.396326065063},
  --{"Veículos ROTA",452.79330444336,-1015.3021240234,28.460147857666},
  	{"Veículos Federal",452.83148193359,-1011.642578125,28.47452545166},
 	{"heliponto PM",449.32727050781,-981.21728515625,43.691673278809},
  	{"heliponto SAMU",313.24923706055,-1465.1434326172,46.509502410889},
  	{"Barco de Pesca",3846.2712402344,4446.5131835938,0.11954033374786},
	{"hospital",299.75296020508,-1442.3692626953,29.79154586792}
}

return cfg