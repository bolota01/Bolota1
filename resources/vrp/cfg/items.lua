-- define items, see the Inventory API on github

local cfg = {}

-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["weed"] = {"Planta de maconha", "Planta de maconha.", nil, 1.00}, -- no choices
  ["folhadecoca"] = {"Folha de Coca", "Folha de Coca.", nil, 1.00}, -- no choices
  ["cocaina"] = {"Cocaina", "Cocaina em po.", nil, 1.00}, -- no choices
  ["crystalmelamine"] = {"Crystal Melamine", "Crystal Melamine.", nil, 1.00}, -- no choices
  ["metanfetamina"] = {"Metanfetamina", "Cristal de Metanfetamina.", nil, 1.00}, -- no choices  
  ["toclonecards"] = {"Cartão Clonável", "Para clonar.", nil, 0.50}, -- no choices
  ["clonedcards"] = {"Cartão clonado", "Para vender.", nil, 0.50}, -- no choices
  ["cannabis"] = {"Maconha", "Processada.", nil, 1.00}, -- no choices
  -- Tartaruga
  ["rede"] = {"Rede", "Para pescar Tartaruga", nil, 0.50},
  ["Tartaruga"] = {"Tartaruga", ".", nil, 5.00},
  ["carne_tartaruga"] = {"Carne de Tartaruga", "Carne pronta para a venda.", nil, 1.00},
  ["casco_tartaruga"] = {"Casco de Tartaruga", "", nil, 2.00},
  -- Advogado
  ["oab"] = {"OAB", "Carteira de Advogado.", nil, 0.01}, -- no choices
  --Chave da Polícia
  ["key_pd_boss"] = {"🔑 Captain room", "", nil, 0.01},
  ["key_lspd"] = {"🔑 LSPD", "", nil, 0.01},
  --ITENS USADOS NA MINERAÇÃO
  ["picareta"] = {"Picareta", "Para minerar.", nil, 0.50},
  ["pedra"] = {"Pedra", "Pedra bruta.", nil, 1.000}, -- no choices
  ["diamante_bruto"] = {"Diamante Bruto", "Diamante para ser lapidado.", nil, 1.000}, -- no choices
  ["diamante"] = {"Diamante", "Diamante pronto para a venda.", nil, 1.000}, -- no choices
  --ITENS GARI
  ["papelao"] = {"Pedaço de Papelão", "Papelão velho para reciclagem.", nil, 10.000}, -- no choices
  ["latinha_vazia"] = {"Latinha de Alumínio", "Lata de alumínio para reciclagem.", nil, 0.0145}, -- no choices
  ["pet_vazia"] = {"Garrafa PET 2L", "Garrafa pet vazia para reciclagem.", nil, 0.047}, -- no choices
  ["saco_lixo"] = {"Saco de Lixo", "Saco para embalar lixo.", nil, 0.000}, -- no choices
  ["bank_money"] = {"Malote de Dinheiro", "$.", nil, 1.000}, -- no choices
--CORREIOS
  ["encomenda"] = {"Encomendas", "Certamenta é alguma coisa comprada desses sites da china.", nil, 5.00}, -- no choices 
  --TRAFICANTE DE ÓRGÃOS
  ["orgaos"] = {"Órgãos Humanos","Órgão para transplante ilegal", nil, 1.000}, -- no choices 
  
}


-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[Brasil RP] Pacote de Itens ["..name.."] não encontrado")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")

return cfg
