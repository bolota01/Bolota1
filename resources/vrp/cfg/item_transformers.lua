
local cfg = {}

-- define static item transformers
-- see https://github.com/ImagicTheCat/vRP to understand the item transformer concept/definition

cfg.item_transformers = {
  -- example of harvest item transformer
  {
    name="Trash Can", -- menu name
    -- permissions = {"harvest.water_bottle_tacos"}, -- you can add permissions
    r=0,g=125,b=255, -- color
    max_units=10,
    units_per_minute=1,
    x=231.40283203125,y=-1507.09191894531,z=29.2916603088379, -- pos
    radius=5, height=1.5, -- area
    recipes = {
      ["Harvest water"] = { -- action name
        description="Harvest some water bottles.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["water"] = 1
        }
      },
      ["Harvest tacos"] = { -- action name
        description="Harvest some tacos.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["tacos"] = 1
        }
      }
    }
    --, onstart = function(player,recipe) end, -- optional start callback
    -- onstep = function(player,recipe) end, -- optional step callback
    -- onstop = function(player,recipe) end -- optional stop callback
  },
  {
    name="Academia", -- menu name
    r=255,g=125,b=0, -- color
    max_units=1000,
    units_per_minute=1000,
    x=-1202.96252441406,y=-1566.14086914063,z=4.61040639877319, -- pos
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Força"] = { -- action name
        description="Aumente sua força e stamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={}, -- items given per unit
        aptitudes={ -- optional
          ["physical.strength"] = 1 -- "group.aptitude", give 1 exp per unit
        }
      }
    }
  },
  {
    name="Campo de Ervas", -- menu name
    permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=200,
    units_per_minute=10,
    x=1840.6926269532,y=5034.16015625,z=56.69303894043, -- pos
    radius=3, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  },
  -- CAMPO DE METANFETAMINA    
  {
    name="Campo de Metanfetamina", -- Nome do menu
    permissions = {"harvest.metanfetamina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=10,
    x=2746.0993652344,y=1579.2513427734,z=50.68684387207, -- Localização
    radius=3, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher Crystal Melamine.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["crystalmelamine"] = 1
        }
      }
    }
  },  
  -- PROCESSADOR DE METANFETAMINA
  {
    name="Processamento de Meta", -- menu name
    permissions = {"process.metanfetamina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=10, -- unidades que o transformador ganha de volta por minuto
    x=416.17538452148,y=-1833.5423583984,z=28.101583480834, -- pos
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Metanfetamina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["crystalmelamine"] = 1
	      },
        products={ -- items given per unit
          ["metanfetamina"] = 2,
        }
      }
    }
  },
  -- CAMPO DE COCAINA    
  {
    name="Campo de Cocaina", -- Nome do menu
    permissions = {"harvest.cocaina"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=10,
    x=2432.3635253906,y=4970.9584960938,z=42.347606658936,
    radius=3, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- Nome da ação
        description="Colher folha de Coca.", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["folhadecoca"] = 1
        }
      }
    }
  },
  -- PROCESSADOR DE COCAINA
  {
    name="Processamento de cocaina", -- menu name
    permissions = {"process.cocaina"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=10, -- unidades que o transformador ganha de volta por minuto
    x=3606.49609375,y=3713.669921875,z=29.689399719238, -- pos
    radius=3, height=1.5, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar cocaina.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["folhadecoca"] = 1
	    },
        products={ -- items given per unit
          ["cocaina"] = 2
        }
      }
    }
  },
  -- PESCADOR DE TARTARUGA
  {
    name="Pescador de Tartaruga", -- menu name
    permissions = {"harvest.tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=4287.8818359375,y=4515.2158203125,z=-13.030641555786, -- pos
    radius=5.5, height=2.5, -- area
    recipes = { -- items do menu
      ["Pescar"] = { -- action name
        description="Pescar Tartaruga com Rede.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["rede"] = 1
        },
        products={ -- items given per unit
          ["Tartaruga"] = 2
        }
      }
    }
  },
  -- LIMPAR TARTARUGA
  {
    name="Limpar Tartaruga", -- menu name
    permissions = {"process.Tartaruga"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=20, -- unidades que o transformador ganha de volta por minuto
    x=985.18585205078,y=-2122.2233886719,z=30.475374221802, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=3, height=3, -- area
    recipes = { -- items do menu
      ["Limpar Tartaruga"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["Tartaruga"] = 1
        },
        products={ -- items given per unit
          ["carne_tartaruga"] = 3,
          ["casco_tartaruga"] = 1
        }
      }
    }
  },
  
  -- Lavagem de dinheiro
  {
    name="Lavagem de Dinheiro",
    r=0,g=200,b=0, ---cores
    max_units=1000,
    units_per_minute=100,
    x=1122.6433105469,y=-3195.1062011719,z=-40.402393341064, -- coordenas mudas aqui
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Lavar Dinheiro"] = { -- action name
        description="Lavagem de Dinheiro", -- action description
        in_money=0, -- money taken per unit
        out_money=600, -- money earned per unit
        reagents={
          ["dirty_money"] = 1000
        }, -- items taken per unit
        products={}, -- items given per unit
      }
    }
  },
   -- Receita Médica
  {
    name="Receita Médica",
    permissions = {"medico.receita"},
    r=0,g=200,b=0, ---cores
    max_units=10,
    units_per_minute=2,
    x=229.24058532714,y=-1368.681274414,z=39.534378051758, -- coordenas mudas aqui
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Receita Médica"] = { -- action name
       description="Preenchendo Receita Médica.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["receitam"] = 1,
        } -- items given per unit
      }
    }
  },
   -- Correios
  {
    name="Pegar Encomendas", -- menu name
    permissions = {"encomenda.correio"},
    r=255,g=125,b=0, -- color
    max_units=200,
    units_per_minute=35,
    x=64.544059753418,y=125.55610656738,z=79.173439025879,
    radius=2, height=1.0, -- area
    recipes = {
      ["Encomenda"] = { -- action name
       description="Pegar Encomendas.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={
          ["encomenda"] = 1,
        } -- items given per unit
      }
    }
  },
-- Lixeiro
  {
    name="Reciclagem",
    permissions = {"lixeiro.saco"},
    r=0,g=200,b=0, ---cores
    max_units=1000,
    units_per_minute=100,
    x=1048.7095947266,y=-2427.921875,z=30.304559707642, -- coordenas mudas aqui
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Reciclar Lixo"] = { -- action name
        description="Reciclando o Lixo", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={
          ["saco_lixo"] = 1
        }, -- items taken per unit
        products={}, -- items given per unit
      }
    }
  },
-- Taxi
  {
    name="Central do Taxista",
    permissions = {"taxi.recibo"},
    r=0,g=200,b=0, ---cores
    max_units=1000,
    units_per_minute=100,
    x=895.34832763672,y=-179.32203674316,z=74.700332641602, -- coordenas mudas aqui
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Receber pagamento de recibos"] = { -- action name
        description="Pagando Recibos", -- action description
        in_money=0, -- money taken per unit
        out_money=1500, -- money earned per unit
        reagents={
          ["recibo_corrida"] = 1
        }, -- items taken per unit
        products={}, -- items given per unit
      }
    }
  },
    -- Cartões clonáveis
  {
    name="Cartões Clonáveis", -- Nome do menu
    permissions = {"pick.toclonecards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor
    max_units=200,
    units_per_minute=25,
    x=261.61892700195,y=204.29025268555,z=110.28720855713, -- Localização    
    radius=2.5, height=1.5, -- area
    recipes = {
      ["Pegar"] = { -- Nome da ação
        description="Pegar cartões clonáveis", -- Descrição do produto a se colher
        in_money=75, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={}, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["toclonecards"] = 1,
        }
      }
    }
  },
    -- CLONAR CARTÕES
  {
    name="Clonagem de Cartões", -- menu name
    permissions = {"clone.cards"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=25, -- unidades que o transformador ganha de volta por minuto
    x=-1054.0205078125,y=-230.26893615723,z=44.020957946777, -- pos -119.17678833008,-1486.1040039063,36.98205947876
    radius=2.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Clonar cartões"] = { -- action name
        description="", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["toclonecards"] = 1
        },
        products={ -- items given per unit
          ["clonedcards"] = 1
        }
      }
    }
  },
  {
    name="Cofre", -- menu name
    permissions = {"bankdriver.money"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=200,
    units_per_minute=200,
    x=250.2346496582, y = 219.19931030273, z = 101.68336486816, -- pos
    radius=3, height=1.5, -- area
    recipes = {
      ["Coletar Malote"] = { -- action name
        description="Coletar Malote.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["bank_money"] = 1
        }
      }
    }
  },
  --MINERADOR COMEÇO--   
  {
    name="Mina de Diamantes", -- Nome do menu
    permissions = {"minerar.diamante"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=500,
    units_per_minute=50,
    x=-445.04028320313,y=2013.8580322266,z=123.57197570801, -- Localização
    radius=7.5, height=1.5, -- area
    recipes = {
      ["Minerar"] = { -- Nome da ação
        description="Minerar", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
          ["picareta"] = 1
        }, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
          ["diamante_bruto"] = 2
        }
      }
    }
  },  
  {
    name="Lapidação", -- Nome do menu
    permissions = {"lapidar.diamante"}, -- Você pode adicionar permissões
    r=0,g=200,b=0, -- cor
    max_units=500,
    units_per_minute=50,
    x=-1035.3331298828,y=-1146.3178710938,z=2.1585986614227, -- Localização
    radius=3.5, height=1.5, -- area
    recipes = {
      ["Lapidar Diamante Bruto"] = { -- Nome da ação
        description="Lapidando Diamante", -- Descrição do produto a se colher
        in_money=0, -- Dinheiro dado por unidade
        out_money=0, -- Dinheiro ganho por unidade
        reagents={
          ["diamante_bruto"] = 1
        }, -- Itens colhidos por unidade
        products={ -- Nome do produto fornecido por unidade
        ["diamante"] = 1
        }
      }
    }
  },  
  {
    name="OAB", -- menu name
    permissions = {"carteira.oab"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=1, -- unidades maximas do item
    units_per_minute=1, -- unidades que o transformador ganha de volta por minuto
    x=-1911.6207275391,y=-573.35174560547,z=19.097230911255, -- pos
    radius=1.5, height=1.5, -- area
    recipes = { -- items do menu
      ["Pegar Carteira OAB"] = { -- action name
        description="Carteira OAB.", -- action description
        in_money=2000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
        },
        products={ -- items given per unit
          ["oab"] = 1
        }
      }
    }
  },  
  {
    name="Processamento de Ervas", -- menu name
    permissions = {"process.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- cor do menu
    max_units=200, -- unidades maximas do item
    units_per_minute=10, -- unidades que o transformador ganha de volta por minuto
    x=443.82019042969,y=-1737.138671875,z=29.220277786255, -- pos
    radius=5, height=3, -- area
    recipes = { -- items do menu
      ["Processar"] = { -- action name
        description="Processar Maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={  -- items taken per unit
          ["weed"] = 1
		    },
        products={ -- items given per unit
		      ["cannabis"] = 2
        }
      }
    }
  }
}



-- define multiple static transformers with postions list
local weedplants = {
  {1873.36901855469,3658.46215820313,33.8029747009277},
  {1856.33776855469,3635.12109375,34.1897926330566},
  {1830.75390625,3621.44140625,33.8487205505371},
  {1784.70251464844,3579.93798828125,34.7956123352051},
  {182.644317626953,3315.75537109375,41.4806938171387},
  {1764.65661621094,3642.916015625,34.5866050720215},
  {1512.91027832031,1673.76025390625,111.531875610352}
}
for k,v in pairs(weedplants) do
  local plant = {
    name="Planta de Maconha", -- menu name
    --permissions = {"harvest.weed"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=1,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Colher"] = { -- action name
        description="Colher maconha.", -- action description
        in_money=0, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={}, -- items taken per unit
        products={ -- items given per unit
          ["weed"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, plant)
end

local warehouses = {
  {-1111.2841796875,4937.4052734375,218.386306762695},
  {1539.01794433594,1704.29174804688,109.659622192383},
  {981.412841796875,-1805.70349121094,35.4845695495605}
}
for k,v in pairs(warehouses) do
  local warehouse = {
    name="Oficina de armas", -- menu name
    permissions = {"build.gun"}, -- you can add permissions
    r=0,g=200,b=0, -- color
    max_units=10,
    units_per_minute=1,
    x=v[1],y=v[2],z=v[3], -- pos
    radius=5.0, height=1.5, -- area
    recipes = {
      ["Build Pistol"] = { -- action name
        description="Construir pistola.", -- action description
        in_money=1500, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["pistol_parts"] = 1
        }, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PISTOL"] = 1
        }
      },
      ["Build Shotgun"] = { -- action name
        description="Construir shotgun.", -- action description
        in_money=3000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["shotgun_parts"] = 1
        }, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_PUMPSHOTGUN"] = 1
        }
      },
      ["Build SMG"] = { -- action name
        description="Construir submachinegun.", -- action description
        in_money=5000, -- money taken per unit
        out_money=0, -- money earned per unit
        reagents={
          ["smg_parts"] = 1
        }, -- items taken per unit
        products={ -- items given per unit
          ["wbody|WEAPON_SMG"] = 1
        }
      }
    }
  }
  table.insert(cfg.item_transformers, warehouse)
end

-- define transformers randomly placed on the map
cfg.hidden_transformers = {
  ["weed plant"] = {
    def = {
      name="Weed Plant", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {}
    },
    positions = weedplants
  },
  ["gun warehouse"] = {
    def = {
      name="Gun Warehouse", -- menu name
      r=0,g=200,b=0, -- color
      max_units=50,
      units_per_minute=0,
      x=0,y=0,z=0, -- pos
      radius=0, height=0, -- area
      recipes = {}
    },
    positions = warehouses
  }
}

-- time in minutes before hidden transformers are relocated (min is 5 minutes)
cfg.hidden_transformer_duration = 30-- 12 hours -- 5*24*60 -- 5 days

-- configure the information reseller (can sell hidden transformers positions)
cfg.informer = {
  infos = {
    ["weed plant"] = 10000000,
    ["gun warehouse"] = 250000000
  },
  positions = {
    {1821.12390136719,3685.9736328125,34.2769317626953},
    {1804.2958984375,3684.12280273438,34.217945098877}
  },
  interval = 900, -- interval in minutes for the reseller respawn
  duration = 1, -- duration in minutes of the spawned reseller
  blipid = 133,
  blipcolor = 2
}

return cfg
