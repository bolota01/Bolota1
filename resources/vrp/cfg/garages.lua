
local cfg = {}
-- define garage types with their associated vehicles
-- (vehicle list: https://wiki.fivem.net/wiki/Vehicles)

-- each garage type is an associated list of veh_name/veh_definition 
-- they need a _config property to define the blip and the vehicle type for the garage (each vtype allow one vehicle to be spawned at a time, the default vtype is "default")
-- this is used to let the player spawn a boat AND a car at the same time for example, and only despawn it in the correct garage
-- _config: vtype, blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.rent_factor = 0.2 -- 10% of the original price if a rent //20% DO VALOR DE COMPRA
cfg.sell_factor = 0.7 -- sell for 75% of the original price //70% DO VALOR DE COMPRA

cfg.garage_types = {
	["GARAGEM"] = {
	_config = {vtype="car",radius=5.1},
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
    ["aventadors"] = {"Lamborghini Aventador",0,"<img src=''/<br/>CAPACIDADE:50kg<br/>"},
    ["Cog55"] = {"Cog 55",0,"<img src='https://i.imgur.com/m7SQqHd.jpg'/<br/>CAPACIDADE:50kg<br/>"},
    ["Primo2"] = {"Primo",0,"<img src='https://i.imgur.com/w02Lic9.png'/<br/>CAPACIDADE:50kg<br/>"},
    ["Stretch"] = {"Stretch",0,"<img src='https://i.imgur.com/myp6b1Z.png'/<br/>CAPACIDADE:50kg<br/>"},
    ["agusta"] = {"Augusta",0,"<img src='https://i.imgur.com/TGUWOb5.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["bmw1000"] = {"Bmw 1000RR",0,"<img src='https://i.imgur.com/s6pPIkO.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["bros60"] = {"Bross 160",0,"<img src='https://i.imgur.com/sxH4kmd.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["hcbr17"] = {"CBR Fireblade",0,"<img src='https://i.imgur.com/knCR56r.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["nh2r"] = {"Kawasaki H2R",0,"<img src='https://i.imgur.com/CHG0vYj.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["hornet"] = {"Hornet",0,"<img src='https://i.imgur.com/M9lkoAT.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["r6"] = {"Yamaha R6",0,"<img src='https://i.imgur.com/jYdjtU5.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["r1"] = {"Yamaha r1",0,"<img src='https://i.imgur.com/9YHc2fw.png'/><br/>CAPACIDADE:10kg<br/>"},
    --["xj6"] = {"Yamaha XJ6",0,"<img src='https://i.imgur.com/9lta3M9.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["a45"] = {"Mercedes A45",0,"<img src='https://i.imgur.com/x3CqCzH.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["amg"] = {"Mercedes Amg",0,"<img src='https://i.imgur.com/UOcYBeT.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["avent"] = {"Lamborghini Aventador",0,"<img src='https://i.imgur.com/c4mLAh1.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["i8"] = {"Bmw i8",0,"<img src='https://i.imgur.com/0L8xNcr.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["bmw3"] = {"Bmw M3",0,"<img src='https://i.imgur.com/v7UmI94.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["x5"] = {"Bmw X5",0,"<img src='https://i.imgur.com/ChtObWq.png'/><br/>CAPACIDADE:70kg<br/>"},
    ["zl12017"] = {"Camaro ZL1",0,"<img src='https://i.imgur.com/Uhlc8S4.png'/><br/>CAPACIDADE:40kg<br/>"},
    ["canry"] = {"Toyota Camry",0,"<img src='https://i.imgur.com/ISIgtmK.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["718caymans"] = {"Porsche Cayman",0,"<img src='https://i.imgur.com/sJkXrIT.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["17cliofl"] = {"Renault Clio",0,"<img src='https://i.imgur.com/RjGr5EG.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["evoque1"] = {"Range Rover Evoque",0,"<img src='https://i.imgur.com/NT6lBCl.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["fct"] = {"Ferrari California",0,"<img src='https://i.imgur.com/Pwd0Q3a.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["ferrari812"] = {"Ferrari 812",0,"<img src='https://i.imgur.com/RkItz6g.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["beetle74"] = {"Volkswagen Fusca",0,"<img src='https://i.imgur.com/ic1qj3F.png'/><br/>CAPACIDADE:40kg<br/>"},
    ["golgti"] = {"Gol GTI",0,"<img src='https://i.imgur.com/fNKuTrC.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["italia458"] = {"Ferrari Italia",0,"<img src='https://i.imgur.com/zyL2e5X.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["srt8"] = {"Jeep Srt8",0,"<img src='https://i.imgur.com/tfHDWsK.png'/><br/>CAPACIDADE:80kg<br/>"},
    ["lp700r"] = {"Lamborghini Huracan",0,"<img src='https://i.imgur.com/muMW3TP.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["lexus"] = {"Lexus GS350",0,"<img src='https://i.imgur.com/7VzX8sg.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["440i"] = {"Bmw M4",0,"<img src='https://i.imgur.com/lorNyPO.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["p1"] = {"Mclaren P1",0,"<img src='https://i.imgur.com/KDVdqza.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["mgt"] = {"Mustang GT",0,"<img src='https://i.imgur.com/VojPIEC.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["gtr"] = {"Nissan GTR",0,"<img src='https://i.imgur.com/rad7qgp.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["206"] = {"Peugeot 206",0,"<img src='https://i.imgur.com/D0cTnjE.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["exemplar"] = {"Audi RS7",0,"<img src='https://i.imgur.com/gARIsvK.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["urus2018"] = {"Lamborghini Urus",0,"<img src='https://i.imgur.com/1FHViFb.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["z4"] = {"Bmw Z4",0,"<img src='https://i.imgur.com/7C0Qb4q.png'/><br/>CAPACIDADE:45kg<br/>"},
    ["hdfb"] = {"Harley Davidson Fat Boy Lo Vintage",0,"<img src='https://i.imgur.com/LDkSGxN.jpg'/><br/>CAPACIDADE:10kg<br/>"},
    ["hdkn"] = {"Harley-Davidson Knucklehead",0,"<img src='https://i.imgur.com/nKe5THQ.jpg'/><br/>CAPACIDADE:10kg<br/>"},
    ["ke400"] = {"Kawasaki Eliminator 400SE by gosuke",0,"<img src='https://i.imgur.com/PFXN8qE.jpg'/><br/>CAPACIDADE:10kg<br/>"},
    ["yss"] = {"Yamaha Star Stryker 2012 by MrKonDz",0,"<img src='https://i.imgur.com/TKpQImw.jpg'/><br/>CAPACIDADE:10kg<br/>"},
    ["718"] = {"Porsche 718 Boxster",0,"<img src='https://i.imgur.com/ZYce59W.jpg'/><br/>CAPACIDADE:30kg<br/>"},
    ["kuruma"] = {"Kuruma",0,"<img src='https://i.imgur.com/taW43qx.png'/<br/>CAPACIDADE:50kg<br/>"},
    ["elegy2"] = {"Elegy 2",0,"<img src='https://i.imgur.com/zCEFUWx.png'/<br/>CAPACIDADE:50kg<br/>"}
	},
	["VENDA CARROS"] = {
	_config = {vtype="car",radius=5.1,buy=true},
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
    ["Stretch"] = {"Stretch",251075,"<img src='https://i.imgur.com/myp6b1Z.png'/<br/>CAPACIDADE:50kg<br/>"},
    ["kuruma"] = {"Kuruma",300000,"<img src='https://i.imgur.com/taW43qx.png'/<br/>CAPACIDADE:50kg<br/>"},
    ["elegy2"] = {"Elegy 2",300000,"<img src='https://i.imgur.com/zCEFUWx.png'/<br/>CAPACIDADE:50kg<br/>"}
	},
	["VENDA MOTOS"] = {
	_config = {vtype="car",radius=5.1,buy=true},
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
    ["REVENDA CARROS"] = {
    _config = {vtype="car",radius=5.1,buy=true},
    ["a45"] = {"Mercedes A45",600000,"<img src='https://i.imgur.com/x3CqCzH.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["amg"] = {"Mercedes Amg",600000,"<img src='https://i.imgur.com/UOcYBeT.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["avent"] = {"Lamborghini Aventador",4000000,"<img src='https://i.imgur.com/c4mLAh1.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["i8"] = {"Bmw i8",2000000,"<img src='https://i.imgur.com/0L8xNcr.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["bmw3"] = {"Bmw M3",500000,"<img src='https://i.imgur.com/v7UmI94.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["x5"] = {"Bmw X5",650000,"<img src='https://i.imgur.com/ChtObWq.png'/><br/>CAPACIDADE:70kg<br/>"},
    ["zl12017"] = {"Camaro ZL1",800000,"<img src='https://i.imgur.com/Uhlc8S4.png'/><br/>CAPACIDADE:40kg<br/>"},
    ["canry"] = {"Toyota Camry",400000,"<img src='https://i.imgur.com/ISIgtmK.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["718caymans"] = {"Porsche Cayman",2500000,"<img src='https://i.imgur.com/sJkXrIT.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["17cliofl"] = {"Renault Clio",70000,"<img src='https://i.imgur.com/RjGr5EG.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["evoque1"] = {"Range Rover Evoque",700000,"<img src='https://i.imgur.com/NT6lBCl.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["fct"] = {"Ferrari California",3000000,"<img src='https://i.imgur.com/Pwd0Q3a.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["ferrari812"] = {"Ferrari 812",3000000,"<img src='https://i.imgur.com/RkItz6g.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["beetle74"] = {"Volkswagen Fusca",12500,"<img src='https://i.imgur.com/ic1qj3F.png'/><br/>CAPACIDADE:40kg<br/>"},
    ["golgti"] = {"Gol GTI",25000,"<img src='https://i.imgur.com/fNKuTrC.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["italia458"] = {"Ferrari Italia",2500000,"<img src='https://i.imgur.com/zyL2e5X.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["srt8"] = {"Jeep Srt8",450000,"<img src='https://i.imgur.com/tfHDWsK.png'/><br/>CAPACIDADE:80kg<br/>"},
    ["lp700r"] = {"Lamborghini Huracan",3500000,"<img src='https://i.imgur.com/muMW3TP.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["lexus"] = {"Lexus GS350",500000,"<img src='https://i.imgur.com/7VzX8sg.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["440i"] = {"Bmw M4",650000,"<img src='https://i.imgur.com/lorNyPO.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["p1"] = {"Mclaren P1",5000000,"<img src='https://i.imgur.com/KDVdqza.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["mgt"] = {"Mustang GT",750000,"<img src='https://i.imgur.com/VojPIEC.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["gtr"] = {"Nissan GTR",700000,"<img src='https://i.imgur.com/rad7qgp.png'/><br/>CAPACIDADE:30kg<br/>"},
    ["206"] = {"Peugeot 206",45000,"<img src='https://i.imgur.com/D0cTnjE.png'/><br/>CAPACIDADE:50kg<br/>"},
    ["exemplar"] = {"Audi RS7",600000,"<img src='https://i.imgur.com/gARIsvK.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["urus2018"] = {"Lamborghini Urus",1500000,"<img src='https://i.imgur.com/1FHViFb.png'/><br/>CAPACIDADE:60kg<br/>"},
    ["z4"] = {"Bmw Z4",550000,"<img src='https://i.imgur.com/7C0Qb4q.png'/><br/>CAPACIDADE:45kg<br/>"},
    ["718"] = {"Porsche 718 Boxster",1500000,"<img src='https://i.imgur.com/ZYce59W.jpg'/><br/>CAPACIDADE:30kg<br/>"}
    },
    ["REVENDA MOTOS"] = {
    _config = {vtype="car",radius=5.1,buy=true},
    ["agusta"] = {"Augusta",800000,"<img src='https://i.imgur.com/TGUWOb5.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["bmw1000"] = {"Bmw 1000RR",800000,"<img src='https://i.imgur.com/s6pPIkO.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["bros60"] = {"Bross 160",25000,"<img src='https://i.imgur.com/sxH4kmd.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["hcbr17"] = {"CBR Fireblade",400000,"<img src='https://i.imgur.com/knCR56r.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["nh2r"] = {"Kawasaki H2R",600000,"<img src='https://i.imgur.com/CHG0vYj.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["hornet"] = {"Hornet",120000,"<img src='https://i.imgur.com/M9lkoAT.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["r6"] = {"Yamaha R6",350000,"<img src='https://i.imgur.com/jYdjtU5.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["r1"] = {"Yamaha r1",550000,"<img src='https://i.imgur.com/9YHc2fw.png'/><br/>CAPACIDADE:10kg<br/>"},
    --["xj6"] = {"Yamaha XJ6",100000,"<img src='https://i.imgur.com/9lta3M9.png'/><br/>CAPACIDADE:10kg<br/>"},
    ["hdfb"] = {"Harley Davidson Fat Boy Lo Vintage",380000,"<img src='https://i.imgur.com/LDkSGxN.jpg'/><br/>CAPACIDADE:10kg<br/>"},
    ["hdkn"] = {"Harley-Davidson Knucklehead",350000,"<img src='https://i.imgur.com/nKe5THQ.jpg'/><br/>CAPACIDADE:10kg<br/>"},
    ["ke400"] = {"Kawasaki Eliminator 400SE by gosuke",300000,"<img src='https://i.imgur.com/PFXN8qE.jpg'/><br/>CAPACIDADE:10kg<br/>"},
    ["yss"] = {"Yamaha Star Stryker 2012 by MrKonDz",400000,"<img src='https://i.imgur.com/TKpQImw.jpg'/><br/>CAPACIDADE:10kg<br/>"}
    },
	["Transportador de Valores"] = {
	_config = {blipid=67,blipcolor=3,vtype="car",permissions={"bankdriver.vehicle"},buy=true},
	["stockade"] = {"Carro Forte",0,"<img src='https://i.imgur.com/T2coJe2.png'/><br/>CAPACIDADE:90kg<br/>"}
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
	["Lixão"] = {
	_config = {vtype="car",permissions={"gari.veiculo"},buy=true},
	["trash"] = {"Caminhão de Lixo",0, "<img src=''/><br/"}
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
	["boxville7"] = {"Caminhão Elite Postal", 0, ""}
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
	_config = {blipid=371,blipcolor=47,vtype="boats",buy=true},
	["seashark"] = {"Speedophile Seashark <br/>JetSki",12000, "<img src='' /><br/>CAPACIDADE: 50kg|LOTAÇÃO: PILOTO + PASSAGEIRO"},
	["jetmax"] = {"Shitzu Jetmax",200000, "<img src='' /><br/>CAPACIDADE: 300kg|LOTAÇÃO: PILOTO + PASSAGEIRO"}
  	},
    ["Aluguel Jetsky"] = {
    _config = {blipid=371,blipcolor=57,vtype="boats",buy=true},
    ["seashark"] = {"JetSky 1",15000, "<img src='https://i.imgur.com/IVZiWXW.png'/><br/>LOTAÇÃO: PILOTO + PASSAGEIRO"},
    ["seashark3"] = {"JetSky 3",15000, "<img src='https://i.imgur.com/MWwNoFe.png'/><br/>LOTAÇÃO: PILOTO + PASSAGEIRO"}
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
	_config = {vtype="bike",blipid=226,blipcolor=4,permissions={"delivery.garagem"},buy=true},
	["enduro"] = {"Honda CG Fan 150",0, "<img src=''/><br/"}
  }
}

cfg.garages = {
	--{"VIP GOLD",-45.049365997314,-1112.65234375,26.435815811157},
	--{"VIP PRATA",-45.049365997314,-1112.65234375,26.435815811157},
	--{"VIP BRONZE",-45.049365997314,-1112.65234375,26.435815811157},
	--{"VIP DIAMANTE",-45.049365997314,-1112.65234375,26.435815811157},
    {"REVENDA CARROS",727.74688720703,-2993.1923828125,-38.999897003174},
    {"REVENDA MOTOS",733.28344726563,-2992.7177734375,-38.999897003174},
	{"VENDA CARROS",-48.059623718262,-1096.3872070313,26.422353744507}, --CONCESSIONÁRIA PADRÃO
	{"VENDA MOTOS",-43.407386779785,-1097.8394775391,26.422336578369}, --CONCESSIONÁRIA PADRÃO
	{"GARAGEM",-2530.109375,2334.3012695313,33.059906005859},
	{"GARAGEM",2579.7250976563,428.08618164063,108.4556427002},
	{"GARAGEM",-378.77001953125,-110.93278503418,38.697410583496},
	{"GARAGEM",-580.55767822266,316.67123413086,84.783363342285},
	{"GARAGEM",1404.8968505859,1118.7971191406,114.83769226074}, -- GARAGEM FAZENDA DE LUXO
	--{"GARAGEM",151.99737548828,-1309.5081787109,29.202308654785}, -- GARAGEM PABLETE
	--{"GARAGEM",497.71151733398,-1335.3879394531,29.327247619629}, -- GARAGEM CARRIJO
	{"GARAGEM",1220.6368408203,2710.6381835938,38.005794525146},
    {"GARAGEM",459.01055908204,-1014.8786621094,28.22044998169}, -- GARAGEM DP
    {"GARAGEM",323.5057067871,-1478.1837158204,29.162942886352}, -- GARAGEM SAMU
	--{"GARAGEM",1930.3410644531,3745.3630371094,32.30867767334},
    {"GARAGEM",1046.4252929688,-789.7318725586,58.001654541016}, -- GARAGEM PRAÇA 2
	{"GARAGEM",-138.35879516602,6353.3129882813,31.487783432007},
	{"GARAGEM",-297.95516967773,-991.01470947266,31.080604553223},
	{"GARAGEM",41.892395019531,-869.02374267578,30.000281799316},
	{"GARAGEM",86.708839416504,-1970.326538086,20.747434616088},-- Garagem META
	{"GARAGEM",-142.0814819336,-1415.6501464844,30.510774612426},-- Garagem MACONHA 
	{"GARAGEM",331.3204650879,-2044.603149414,20.790550231934}, -- Garagem COCA
    {"GARAGEM",1360.0850830078,-601.21520996094,73.900733093262}, -- GARAGEM CASA 02
    {"GARAGEM",1388.3841552734,-577.38732910156,74.338790893555}, -- GARAGEM CASA 03
    {"GARAGEM",1379.0230712891,-597.26489257813,74.337959289551}, -- GARAGEM CASA 04
    {"GARAGEM",1313.0230712891,-587.90539550781,72.932426452637}, -- GARAGEM CASA 05
	{"GARAGEM",-820.27209472656,184.2173614502,72.116996765137}, -- GARAGEM MANSAO 01
    {"GARAGEM",15.120874404907,548.18365478516,176.30083898926}, -- GARAGEM MANSAO 02
    {"GARAGEM",391.19143676758,430.12271118164,143.68019104004}, -- GARAGEM CASA DE LUXO 01
    {"GARAGEM",353.00848388672,437.05804443359,147.0007800293}, -- GARAGEM CASA DE LUXO 02
    {"GARAGEM",-512.52532958984,577.53521728516,120.49979400635}, -- GARAGEM CASA DE LUXO 03
    {"GARAGEM",-189.07504272461,501.27435302734,134.52746582031}, -- GARAGEM CASA DE LUXO 04
    {"GARAGEM",1975.580078125,3826.1899414063,32.350559234619}, -- GARAGEM TRAILER TREVOR
    {"GARAGEM",2481.1765136719,4952.8603515625,45.015144348145}, -- GARAGEM FAZENDA
    {"GARAGEM",-1793.3991699219,347.33715820313,88.555068969727}, -- GARAGEM MANSÃO 3
    {"GARAGEM",-2588.7377929688,1930.7293701172,167.30267333984}, -- GARAGEM MANSÃO 4
    {"GARAGEM",-123.29553222656,1006.6544189453,235.73207092285}, -- GARAGEM MANSÃO DO LAGO
    {"GARAGEM",-25.089443206787,-1434.6949462891,30.653144836426},
    {"GARAGEM",-232.66966247559,-1166.4450683594,22.500797149658},
	{"GARAGEM",-795.96862792969,304.84030151367,85.700485229492},
	{"GARAGEM",1728.5637207031,3313.8908691406,41.223480224609},
    {"Aluguel Jetsky",1100.9748535156,-556.74517822266,56.100450195312}, -- Aluguel jetsky
	{"Bicicletário",-989.34674072266,-2751.9240722656,20.169269561768}, -- BICICLETÁRIO
	{"Lixão",1065.9232177734,-2468.2780761719,28.742719650269},
	{"CORREIOS S/A",68.724258422852,119.7261428833,79.242874084473},
    {"Bicicletário",1018.071472168,-697.19561767578,56.89158630371},
	{"Táxi",915.37152099609,-164.62077331543,74.55965423584},
	{"Motoboy",118.25058746338,-1485.9897460938,29.141597747803},
	{"Mecânico",407.83251953125,-1634.0269775391,29.291940689087},
	{"Transportador de Valores",-5.2033176422119,-670.98248291016,32.338073730469},
	{"Bicicletário",-1188.5541992188,-1572.1044921875,4.4352697715759},
	{"Veículos FAE",453.24819946289,-1019.3926391602,28.500326065063},
 	{"Heliponto FAE",449.32727050781,-981.21728515625,43.691673278809},
  	{"Heliponto Hospital",313.24923706055,-1465.1434326172,46.509502410889},
	{"Hospital",299.75296020508,-1442.3692626953,29.90054586792}
}

return cfg