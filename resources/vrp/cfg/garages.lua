
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
	_config = {vtype="car",blipid=357,blipcolor=67,radius=5.1},
	["Blista"] = {"Blista",0,"<img src='https://i.imgur.com/wUW0wkG.png'/><br/>CAPACIDADE:60kg<br/>"},
        ["Brioso"] = {"Brioso",0,"<img src='https://i.imgur.com/XnS2Fxn.png'/><br/>CAPACIDADE:30kg<br/>"},
        ["Issi3"] = {"Issi3",0,"<img src='https://i.imgur.com/V4qmekr.jpg'/><br/>CAPACIDADE:30kg<br/>"},
        ["CogCabrio"] = {"CogCabrio",0,"<img src='https://i.imgur.com/ye3cure.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["F620"] = {"F620",0,"<img src='https://i.imgur.com/PpzVeAa.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Jackal"] = {"Jackal",0,"<img src='https://i.imgur.com/IxZ6KoV.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Windsor2"] = {"Windsor",0,"<img src='https://i.imgur.com/tAnyEYV.png'/><br/>CAPACIDADE:60kg<br/>"},
        ["Buccaneer2"] = {"Buccaneer",0,"<img src='https://i.imgur.com/5F1piV6.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Dominator"] = {"Dominator",0,"<img src='https://i.imgur.com/Omhc2hP.png'/><br/>CAPACIDADE:40kg<br/>"},
        ["Dominator3"] = {"Dominator",0,"<img src='https://i.imgur.com/28yBKCt.jpg'/><br/>CAPACIDADE:40kg<br/>"},
        ["Ellie"] = {"Ellie",0,"<img src='https://i.imgur.com/CWYD4i2.jpg'/><br/>CAPACIDADE:50kg<br/>"},
        ["Hermes"] = {"Hermes",0,"<img src='https://i.imgur.com/8EZmE5w.jpg'/><br/>CAPACIDADE:50kg<br/>"},
        ["Hotknife"] = {"Hotknife",0,"<img src='https://i.imgur.com/fNOTfpH.png'/><br/>CAPACIDADE:30kg<br/>"},
        ["Hustler"] = {"Hustler",0,"<img src='https://i.imgur.com/BWwJPy3.jpg'/><br/>CAPACIDADE:40kg<br/>"},
        ["Moonbeam"] = {"Moonbeam",0,"<img src='https://i.imgur.com/uW7pC3s.png'/><br/>CAPACIDADE:70kg<br/>"},
        ["Picador"] = {"Picador",0,"<img src='https://i.imgur.com/y5A1rhN.png'/><br/>CAPACIDADE:70kg<br/>"},
        ["RatLoader2"] = {"RatLoader",0,"<img src='https://i.imgur.com/53nPMHQ.png'/><br/>CAPACIDADE:70kg<br/>"},
        ["SabreGT2"] = {"SabreGT",0,"<img src='https://i.imgur.com/xh0J92f.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["SlamVan"] = {"SlamVan",0,"<img src='https://i.imgur.com/TXW6xxe.png'/><br/>CAPACIDADE:80kg<br/>"},
        ["Voodoo"] = {"Voodoo",0,"<img src='https://i.imgur.com/so1WIsO.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Yosemite"] = {"Yosemite",0,"<img src='https://i.imgur.com/NMhJ7Sr.jpg'/><br/>CAPACIDADE:80kg<br/>"},
        ["Burrito3"] = {"Burrito",0,"<img src='https://i.imgur.com/TvHja5W.png'/><br/>CAPACIDADE:100kg<br/>"},
        ["Surfer"] = {"Surfer",0,"<img src='https://i.imgur.com/rEIMdsa.png'/><br/>CAPACIDADE:100kg<br/>"},
        ["Sanctus"] = {"Sanctus",0,"<img src='https://i.imgur.com/khAWYVh.jpg'/><br/>CAPACIDADE:10kg<br/>"},
        ["Avarus"] = {"Avarus",0,"<img src='https://i.imgur.com/1IYaVHy.png'/><br/>CAPACIDADE:10kg<br/>"},
        ["Daemon"] = {"Daemon",0,"<img src='https://i.imgur.com/a3S2uy2.png'/><br/>CAPACIDADE:10kg<br/>"},
        ["Faggio2"] = {"Faggio",0,"<img src='https://i.imgur.com/XI42R6F.png'/><br/>CAPACIDADE:10kg<br/>"},
        ["Esskey"] = {"Esskey",0,"<img src='https://i.imgur.com/HoYJjFf.png'/><br/>CAPACIDADE:10kg<br/>"},
        ["Wolfsbane"] = {"Wolfsbane",0,"<img src='https://i.imgur.com/1wfkCsn.jpg'/><br/>CAPACIDADE:10kg<br/>"},
        ["Zombiea"] = {"Zombie A",0,"<img src='https://i.imgur.com/hc32dGE.jpg'/><br/>CAPACIDADE:10kg<br/>"},
        ["Zombieb"] = {"Zombie B",0,"<img src='https://i.imgur.com/D6Bho3H.jpg'/><br/>CAPACIDADE:10kg<br/>"},
        ["Chimera"] = {"Chimera",0,"<img src='https://i.imgur.com/F4djEOW.png'/><br/>CAPACIDADE:10kg<br/>"},
        ["Faggio"] = {"Faggio",0,"<img src='https://i.imgur.com/60hcZVp.jpg'/><br/>CAPACIDADE:10kg<br/>"},
        ["Comet5"] = {"Comet",0,"<img src='https://i.imgur.com/JShYEmG.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Coquette"] = {"Coquette",0,"<img src='https://i.imgur.com/RT4WE3O.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Lynx"] = {"Lynx",0,"<img src='https://i.imgur.com/D3of0OP.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Elegy"] = {"Elegy",0,"<img src='https://i.imgur.com/WSoPgGu.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Cheburek"] = {"Cheburek",0,"<img src='https://i.imgur.com/SUMHXHs.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Mamba"] = {"Mamba",0,"<img src='https://i.imgur.com/3pxiAKD.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Tornado5"] = {"Tornado",0,"<img src='https://i.imgur.com/hUbzhUa.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Raiden"] = {"Raiden",0,"<img src='https://i.imgur.com/F6E8gjZ.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Entity2"] = {"Entity",0,"<img src='https://i.imgur.com/MghMpcH.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Nero"] = {"Nero",0,"<img src='https://i.imgur.com/6GOnqqn.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Reaper"] = {"Reaper",0,"<img src='https://i.imgur.com/zOvvUT1.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["SultanRS"] = {"SultanRS",0,"<img src='https://i.imgur.com/mnHPeUv.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Italigtb"] = {"Ialigtb",0,"<img src='https://i.imgur.com/tmj7h1z.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Bifta"] = {"Bifta",0,"<img src='https://i.imgur.com/7I5jXvp.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Blazer"] = {"Blazer",0,"<img src='https://i.imgur.com/yPJxBsW.png'/<br/>CAPACIDADE:10kg<br/>"},
        ["Blazer4"] = {"Blazer",0,"<img src='https://i.imgur.com/e53F7nP.png'/<br/>CAPACIDADE:10kg<br/>"},
        ["Kamacho"] = {"Kamacho",0,"<img src='https://i.imgur.com/TlZaofn.png'/<br/>CAPACIDADE:150kg<br/>"},
        ["Mesa"] = {"Mesa",0,"<img src='https://i.imgur.com/mYkP17K.png'/<br/>CAPACIDADE:80kg<br/>"},
        ["Sandking"] = {"Sandking",0,"<img src='https://i.imgur.com/3b6MTw3.png'/<br/>CAPACIDADE:180kg<br/>"},
        ["Baller3"] = {"Baller3",0,"<img src='https://i.imgur.com/ewzTjqR.png'/<br/>CAPACIDADE:70kg<br/>"},
        ["Dubsta"] = {"Dubsta",0,"<img src='https://i.imgur.com/ewzTjqR.png'/<br/>CAPACIDADE:70kg<br/>"},
        ["Asea"] = {"Asea",0,"<img src='https://i.imgur.com/XdDeLxU.png'/<br/>CAPACIDADE:50kg<br/>"},
        ["Cog55"] = {"Cog 55",0,"<img src='https://i.imgur.com/m7SQqHd.jpg'/<br/>CAPACIDADE:50kg<br/>"},
        ["Primo2"] = {"Primo",0,"<img src='https://i.imgur.com/w02Lic9.png'/<br/>CAPACIDADE:50kg<br/>"},
        ["Stretch"] = {"Stretch",0,"<img src='https://i.imgur.com/myp6b1Z.png'/<br/>CAPACIDADE:50kg<br/>"}
	},
	["VENDA CARROS"] = {
	_config = {vtype="car",blipid=225,blipcolor=47,radius=5.1,buy=true},
	["Blista"] = {"Blista",30000,"<img src='https://i.imgur.com/wUW0wkG.png'/><br/>CAPACIDADE:60kg<br/>"},
        ["Brioso"] = {"Brioso",45000,"<img src='https://i.imgur.com/XnS2Fxn.png'/><br/>CAPACIDADE:30kg<br/>"},
        ["Issi3"] = {"Issi3",25000,"<img src='https://i.imgur.com/V4qmekr.jpg'/><br/>CAPACIDADE:30kg<br/>"},
        ["CogCabrio"] = {"CogCabrio",50000,"<img src='https://i.imgur.com/ye3cure.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["F620"] = {"F620",70000,"<img src='https://i.imgur.com/PpzVeAa.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Jackal"] = {"Jackal",73000,"<img src='https://i.imgur.com/IxZ6KoV.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Windsor2"] = {"Windsor",90000,"<img src='https://i.imgur.com/tAnyEYV.png'/><br/>CAPACIDADE:60kg<br/>"},
        ["Buccaneer2"] = {"Buccaneer",120000,"<img src='https://i.imgur.com/5F1piV6.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Dominator"] = {"Dominator",150000,"<img src='https://i.imgur.com/Omhc2hP.png'/><br/>CAPACIDADE:40kg<br/>"},
        ["Dominator3"] = {"Dominator",170000,"<img src='https://i.imgur.com/28yBKCt.jpg'/><br/>CAPACIDADE:40kg<br/>"},
        ["Ellie"] = {"Ellie",140000,"<img src='https://i.imgur.com/CWYD4i2.jpg'/><br/>CAPACIDADE:50kg<br/>"},
        ["Hermes"] = {"Hermes",200000,"<img src='https://i.imgur.com/8EZmE5w.jpg'/><br/>CAPACIDADE:50kg<br/>"},
        ["Hotknife"] = {"Hotknife",200000,"<img src='https://i.imgur.com/fNOTfpH.png'/><br/>CAPACIDADE:30kg<br/>"},
        ["Hustler"] = {"Hustler",200000,"<img src='https://i.imgur.com/BWwJPy3.jpg'/><br/>CAPACIDADE:40kg<br/>"},
        ["Moonbeam"] = {"Moonbeam",100000,"<img src='https://i.imgur.com/uW7pC3s.png'/><br/>CAPACIDADE:70kg<br/>"},
        ["Picador"] = {"Picador",100000,"<img src='https://i.imgur.com/y5A1rhN.png'/><br/>CAPACIDADE:70kg<br/>"},
        ["RatLoader2"] = {"RatLoader",140000,"<img src='https://i.imgur.com/53nPMHQ.png'/><br/>CAPACIDADE:70kg<br/>"},
        ["SabreGT2"] = {"SabreGT",150000,"<img src='https://i.imgur.com/xh0J92f.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["SlamVan"] = {"SlamVan",150000,"<img src='https://i.imgur.com/TXW6xxe.png'/><br/>CAPACIDADE:80kg<br/>"},
        ["Voodoo"] = {"Voodoo",140000,"<img src='https://i.imgur.com/so1WIsO.png'/><br/>CAPACIDADE:50kg<br/>"},
        ["Yosemite"] = {"Yosemite",150000,"<img src='https://i.imgur.com/NMhJ7Sr.jpg'/><br/>CAPACIDADE:80kg<br/>"},
        ["Burrito3"] = {"Burrito",100000,"<img src='https://i.imgur.com/TvHja5W.png'/><br/>CAPACIDADE:100kg<br/>"},
        ["Surfer"] = {"Surfer",50000,"<img src='https://i.imgur.com/rEIMdsa.png'/><br/>CAPACIDADE:60kg<br/>"},
        ["Comet5"] = {"Comet",270000,"<img src='https://i.imgur.com/JShYEmG.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Coquette"] = {"Coquette",255000,"<img src='https://i.imgur.com/RT4WE3O.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Lynx"] = {"Lynx",240000,"<img src='https://i.imgur.com/D3of0OP.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Elegy"] = {"Elegy",250000,"<img src='https://i.imgur.com/WSoPgGu.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Cheburek"] = {"Cheburek",26000,"<img src='https://i.imgur.com/SUMHXHs.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Mamba"] = {"Mamba",220000,"<img src='https://i.imgur.com/3pxiAKD.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Tornado5"] = {"Tornado",130000,"<img src='https://i.imgur.com/hUbzhUa.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Raiden"] = {"Raiden",200000,"<img src='https://i.imgur.com/F6E8gjZ.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Entity2"] = {"Entity",500000,"<img src='https://i.imgur.com/MghMpcH.jpg'/<br/>CAPACIDADE:30kg<br/>"},
        ["Nero"] = {"Nero",700000,"<img src='https://i.imgur.com/6GOnqqn.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Reaper"] = {"Reaper",600000,"<img src='https://i.imgur.com/zOvvUT1.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["SultanRS"] = {"SultanRS",280000,"<img src='https://i.imgur.com/mnHPeUv.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Italigtb"] = {"Ialigtb",600000,"<img src='https://i.imgur.com/tmj7h1z.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Bifta"] = {"Bifta",180000,"<img src='https://i.imgur.com/7I5jXvp.png'/<br/>CAPACIDADE:30kg<br/>"},
        ["Kamacho"] = {"Kamacho",300000,"<img src='https://i.imgur.com/TlZaofn.png'/<br/>CAPACIDADE:150kg<br/>"},
        ["Mesa"] = {"Mesa",190000,"<img src='https://i.imgur.com/mYkP17K.png'/<br/>CAPACIDADE:80kg<br/>"},
        ["Sandking"] = {"Sandking",390000,"<img src='https://i.imgur.com/3b6MTw3.png'/<br/>CAPACIDADE:180kg<br/>"},
        ["Baller3"] = {"Baller",310000,"<img src='https://i.imgur.com/ewzTjqR.png'/<br/>CAPACIDADE:70kg<br/>"},
        ["Dubsta"] = {"Dubsta",245000,"<img src='https://i.imgur.com/ewzTjqR.png'/<br/>CAPACIDADE:70kg<br/>"},
        ["Asea"] = {"Asea",47000,"<img src='https://i.imgur.com/XdDeLxU.png'/<br/>CAPACIDADE:50kg<br/>"},
        ["Cog55"] = {"Cog 55",148000,"<img src='https://i.imgur.com/m7SQqHd.jpg'/<br/>CAPACIDADE:50kg<br/>"},
        ["Primo2"] = {"Primo",142500,"<img src='https://i.imgur.com/w02Lic9.png'/<br/>CAPACIDADE:50kg<br/>"},
        ["Stretch"] = {"Stretch",251075,"<img src='https://i.imgur.com/myp6b1Z.png'/<br/>CAPACIDADE:50kg<br/>"}
	},
	["VENDA MOTOS"] = {
	_config = {vtype="car",blipid=226,blipcolor=47,radius=5.1,buy=true},
	["Sanctus"] = {"Sanctus",300000,"<img src='https://i.imgur.com/khAWYVh.jpg'/><br/>CAPACIDADE:10kg<br/>"},
	["Avarus"] = {"Avarus",210000,"<img src='https://i.imgur.com/1IYaVHy.png'/><br/>CAPACIDADE:10kg<br/>"},
	["Daemon"] = {"Daemon",120000,"<img src='https://i.imgur.com/a3S2uy2.png'/><br/>CAPACIDADE:10kg<br/>"},
        ["Blazer"] = {"Blazer",200000,"<img src='https://i.imgur.com/yPJxBsW.png'/<br/>CAPACIDADE:10kg<br/>"},
        ["Blazer4"] = {"Blazer",200000,"<img src='https://i.imgur.com/e53F7nP.png'/<br/>CAPACIDADE:10kg<br/>"},
	["Faggio2"] = {"Faggio",8000,"<img src='https://i.imgur.com/XI42R6F.png'/><br/>CAPACIDADE:10kg<br/>"},
	["Esskey"] = {"Esskey",27000,"<img src='https://i.imgur.com/HoYJjFf.png'/><br/>CAPACIDADE:10kg<br/>"},
	["Wolfsbane"] = {"Wolfsbane",160000,"<img src='https://i.imgur.com/1wfkCsn.jpg'/><br/>CAPACIDADE:10kg<br/>"},
	["Zombiea"] = {"Zombie A",220000,"<img src='https://i.imgur.com/hc32dGE.jpg'/><br/>CAPACIDADE:10kg<br/>"},
	["Zombieb"] = {"Zombie B",220000,"<img src='https://i.imgur.com/D6Bho3H.jpg'/><br/>CAPACIDADE:10kg<br/>"},
	["Chimera"] = {"Chimera",234000,"<img src='https://i.imgur.com/F4djEOW.png'/><br/>CAPACIDADE:10kg<br/>"},
	["Faggio"] = {"Faggio",12000,"<img src='https://i.imgur.com/60hcZVp.jpg'/><br/>CAPACIDADE:10kg<br/>"}
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
	["stockade"] = {"Carro Forte",0,"<img src='https://i.imgur.com/T2coJe2.png'/><br/"}
	},
	["VIP BRONZE"] = {
	_config = {vtype="car",permissions={"garagem.vipbronze"},buy=true},
	["italia458"] = {"Ferrari Italia 458",1399000,"<img src='https://i.imgur.com/5apchYI.jpg' /><br/>CAPACIDADE:100kg<br/>h"}
	},
	["VIP PRATA"] = {
	_config = {vtype="car",permissions={"garagem.vipprata"},buy=true},
	["fc15"] = {"Ferrari California T 2015",1680000,"<img src='https://i.imgur.com/3Q7Qlfc.jpg' /><br/>CAPACIDADE:100kg<br/>h"}
	},
	["VIP GOLD"] = {
	_config = {vtype="car",permissions={"garagem.vipgold"},buy=true},
	["aventadors"] = {"Lamborghini Aventador S",0, "<img src='blob:https://imgur.com/55ab981e-3f16-465c-a39f-e54d70a5707b' /><br/>CAPACIDADE:100kg<br/>h"}
	},
	["VIP DIAMANTE"] = {
	_config = {vtype="car",permissions={"garagem.vipdima"},buy=true},
	["aperta"] = {"La Ferrari",10000000,"<img src='https://i.imgur.com/0CDv4Ex.jpg' /><br/>CAPACIDADE:100kg<br/>h"}
	}, 
	["Bicicletário"] = {
        _config = {vtype="bike",blipid=376,blipcolor=24,radius=5.1,buy=true},
    	["bmx"] = {"Bmx",0, ""},
	["cruiser"] = {"Cruiser",0, ""},
	["fixter"] = {"Fixter",0, ""},
	["scorcher"] = {"Scorcher",0, ""},
	["triBike"] = {"TriBike Verde",0, ""},
	["triBike2"] = {"TriBike Vermelha",0, ""},
	["triBike3"] = {"TriBike Azul",0, ""}
	},
	["Veículos FAE"] = {
        _config = {vtype="car",blipcolor=4,permissions={"pm.garagem"},buy=true},
    	["RS03"] = {"Audi",0, "<img src='https://i.imgur.com/awpgZ64.png'/><br/"},
	["police2"] = {"Charger",0, "<img src='https://i.imgur.com/d77pILO.png'/><br/"},
	["police3"] = {"Ford",0, "<img src='https://i.imgur.com/ShDFECx.png'/><br/"},
	["sheriff2"] = {"Tahoe",0, "<img src='https://i.imgur.com/BTiIm8i.png'/><br/"},
	["policeb"] = {"Moto FAE",0, "<img src='https://i.imgur.com/jouWJyn.png'/><br/"}
	},  
  	["Heliponto FAE"] = {
    	_config = {vtype="helicopters",blipcolor=4,permissions={"aguia.garagem"},buy=true},
    	["polmav"] = {"Águia FAE",0, "<img src='https://i.imgur.com/faxY7BN.png'/><br/"}
	}, 
  	["Barco de Pesca"] = {  
    	_config = {blipid=427,blipcolor=59,vtype="boats",permissions={"tartaruga.garagem"},buy=true},
    	["Dinghy"] = {"Barco de Pesca",100, "<img src='https://i.imgur.com/Wc1yIRb.png'/><br/"},
    	["Dinghy2"] = {"Barco de Pesca 2",100, "<img src='https://i.imgur.com/fpT0DWB.png'/><br/"}
	},
	["Lixão"] = {
	_config = {vtype="car",permissions={"gari.veiculo"},buy=true},
	["trash"] = {"Caminhão de Lixo",150, "<img src=''/><br/"}
	},
	["Heliponto Hospital"] = {
    	_config = {vtype="helicopters",blipcolor=4,permissions={"hospital.garagem"},buy=true},
    	["supervolito2"] = {"Helicóptero Emergência",0, "<img src='https://i.imgur.com/XJ1SbP6.png'/><br/"}
	},
	["Hospital"] = {
    	_config = {vtype="car",blipcolor=4,permissions={"hospital.garagem"},buy=true},
  	["sheriff"] = {"SUV Emergência",0, "<img src='https://i.imgur.com/u3gXrKH.png'/><br/"},
	["ambulance"] = {"Ambulância",0, "<img src='https://i.imgur.com/OFCBAtJ.png'/><br/"}
	},
	["CORREIOS S/A"] = {
	_config = {vtype="car",permissions={"correios.veiculo"},buy=true},
	["boxville2"] = {"Caminhão Correios 01", 0, ""},
	["boxville4"] = {"Caminhão Correios 02", 0, ""}
	},  	
	["HELIPORTO"] = {
	_config = {blipid=370,blipcolor=47,vtype="helicopters",buy=true},
	["havok"] = {"Nagasaki Havok",5000000, "<img src='' /><br/>CAPACIDADE: 300kg|LOTAÇÃO: APENAS O PILOTO"},
	["volatus"] = {"Buckingham Volatus",12000000, "<img src='' /><br/>CAPACIDADE: 1000kg|LOTAÇÃO: PILOTO + 3 PASSAGEIROS"},
	["supervolito"] = {"Buckingham SuperVolito",7000000, "<img src='' /><br/>CAPACIDADE: 750kg|LOTAÇÃO: PILOTO + 3 PASSAGEIROS"}
	},
	["AEROPORTO"] = {
	_config = {blipid=372,blipcolor=47,vtype="airplane",buy=true},
	["luxor"] = {"Buckingham Luxor",8500000, "<img src='' /><br/>CAPACIDADE: 3000kg|LOTAÇÃO: PILOTO + 9 PASSAGEIROS"},
	["mammatus"] = {"JoBuilt Mammatus",5000000, "<img src='' /><br/>CAPACIDADE: 1000kg|LOTAÇÃO: PILOTO + 3 PASSAGEIROS"},
	["microlight"] = {"Nagasaki Ultralight",2000000, "<img src='' /><br/>CAPACIDADE: 100kg|LOTAÇÃO: PILOTO APENAS"},
	["cuban800"] = {"Western Cuban 800 ",4000000, "<img src='' /><br/>CAPACIDADE: 500kg|LOTAÇÃO: PILOTO + 1 PASSAGEIRO"}
	},
	["MARINA"] = {
	_config = {blipid=371,blipcolor=47,vtype="airplane",buy=true},
	["seashark"] = {"Speedophile Seashark <br/>JetSki",12000, "<img src='' /><br/>CAPACIDADE: 50kg|LOTAÇÃO: PILOTO + PASSAGEIRO"},
	["jetmax"] = {"Shitzu Jetmax",200000, "<img src='' /><br/>CAPACIDADE: 300kg|LOTAÇÃO: PILOTO + PASSAGEIRO"}
  	},  
  	["Táxi"] = {
    	_config = {vtype="car",blipid=198,blipcolor=5,permissions={"taxi.garagem"},buy=true},
    	["taxi"] = {"Táxi",0, "<img src='https://i.imgur.com/xre8r75.png'/><br/"}
  	},  
  	["Mecânico"] = {
   	_config = {vtype="bike",blipid=85,blipcolor=31,permissions={"repair.garagem"},buy=true},
    	["flatbed"] = {"Reboque",0, "<img src='https://i.imgur.com/5kybacN.png'/><br/"},
	["towtruck2"] = {"Guincho",0, "<img src='https://i.imgur.com/QPRYEEE.png'/><br/"}
  	},   
  	["Motoboy"] = {
    	_config = {vtype="bike",blipid=355,blipcolor=4,permissions={"delivery.garagem"},buy=true},
    	["enduro"] = {"Enduro",0, ""}
  }
}

cfg.garages = {
	--{"Caminhoneiro",219.18501281738,-780.86364746094,30.802562713623},
	{"VIP GOLD",-45.049365997314,-1112.65234375,26.435815811157},
	{"VIP PRATA",-45.049365997314,-1112.65234375,26.435815811157},
	{"VIP BRONZE",-45.049365997314,-1112.65234375,26.435815811157},
	{"VIP DIAMANTE",-45.049365997314,-1112.65234375,26.435815811157},
	--{"REVENDA",-58.326511383057,-1113.7546386719,26.435815811157},
	{"VENDA CARROS",-48.059623718262,-1096.3872070313,26.422353744507},--CONCESSIONÁRIA
	{"VENDA MOTOS",-43.407386779785,-1097.8394775391,26.422336578369},
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
	{"Lixão",179.07063293457,-2210.9807128906,5.9991369247437},
	--{"CORREIOS S/A",-289.3962097168,-890.03399658203,31.080615997314},
	--{"MADEIRA & CIA",-805.62573242188,5409.2807617188,33.991455078125},
	{"Táxi",-339.94155883789,-1023.3903198242,30.400903244019},
	{"Motoboy",118.25058746338,-1485.9897460938,29.141597747803},
	{"Mecânico",407.83251953125,-1634.0269775391,29.291940689087},
	{"Transportador de Valores",-5.2033176422119,-670.98248291016,32.338073730469},
	--{"FAZENDEIRO",1432.5661621094,1107.0783691406,114.24201965332},
	--{"MOTO CLUBE",970.89477539063,-122.97027587891,74.353141784668},
	--{"EMPRESARIO",-44.977939605713,-1113.3082275391,26.435800552368},
	{"Bicicletário",-1188.5541992188,-1572.1044921875,4.3242697715759},
	--{"planes",2123, 4805, 41.19},
	--{"planes",-1348, -2230, 13.9},
	--{"helicopters",1750, 3260, 41.37},
	--{"helicopters",-1233, -2269, 13.9},
	--{"helicopters",-745, -1468, 5},
	--{"boats",-849.5, -1368.64, 1.6},
	--{"boats",1538, 3902, 30.35}
	{"Veículos FAE",453.24819946289,-1019.3926391602,28.396326065063},
    --{"Veículos ROTA",452.79330444336,-1015.3021240234,28.460147857666},
  	--{"Veículos Federal",452.83148193359,-1011.642578125,28.47452545166},
 	{"Heliponto FAE",449.32727050781,-981.21728515625,43.691673278809},
  	{"Heliponto Hospital",313.24923706055,-1465.1434326172,46.509502410889},
  	{"Barco de Pesca",3846.2712402344,4446.5131835938,0.11954033374786},
	{"Hospital",299.75296020508,-1442.3692626953,29.79154586792}
}

return cfg