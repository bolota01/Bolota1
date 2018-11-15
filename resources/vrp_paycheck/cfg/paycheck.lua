
local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salario: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Pagamento de contas: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 30 -- minutes between payment for paycheck
cfg.minutes_bill = 60 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Banco do Brasil" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Compania de Seguro" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  --pm
  ["recruta.paycheck"] = 4000,
  ["soldado.paycheck"] = 7000,
  ["cabo.paycheck"] = 9000,
  ["sargento.paycheck"] = 11000,
  ["tenente.paycheck"] = 13000,
  ["capitao.paycheck"] = 15000,
  ["coronel.paycheck"] = 17000,
  ["comandantegeral.paycheck"] = 19000,
  ["aguia.paycheck"] = 13000,
  --samu
  ["chefe.paycheck"] = 19000,
  ["doutor.paycheck"] = 17000,
  ["medicochefe.paycheck"] = 15000,
  ["medico.paycheck"] = 13000,
  ["paramedico.paycheck"] = 9000,
  ["socorrista.paycheck"] = 5000,
  --legal
  ["correios.paycheck"] = 1000,
  ["minerar.paycheck"] = 1000,
  ["delivery.paycheck"] = 1000,
  ["gari.paycheck"] = 1000,
  ["prostituta.paycheck"] = 1000,
  ["advogado.paycheck"] = 1000,
  ["taxi.paycheck"] = 1000,
  ["repair.paycheck"] = 1000,
  ["bankdriver.paycheck"] = 1000,
  ["diretorchefe.paycheck"] = 1000,
  ["delivery.paycheck"] = 1000
}

cfg.bill = { -- ["permission"] = withdrawal
  --pm
  ["recruta.paycheck"] = 200,
  ["soldado.paycheck"] = 200,
  ["cabo.paycheck"] = 200,
  ["sargento.paycheck"] = 200,
  ["tenente.paycheck"] = 200,
  ["capitao.paycheck"] = 200,
  ["coronel.paycheck"] = 200,
  ["comandantegeral.paycheck"] = 200,
  ["aguia.paycheck"] = 200,
  --samu
  ["chefe.paycheck"] = 200,
  ["doutor.paycheck"] = 200,
  ["medicochefe.paycheck"] = 200,
  ["medico.paycheck"] = 200,
  ["paramedico.paycheck"] = 200,
  ["socorrista.paycheck"] = 200,
  --legal
  ["correios.paycheck"] = 200,
  ["minerar.paycheck"] = 200,
  ["delivery.paycheck"] = 200,
  ["gari.paycheck"] = 200,
  ["prostituta.paycheck"] = 200,
  ["advogado.paycheck"] = 200,
  ["taxi.paycheck"] = 200,
  ["repair.paycheck"] = 200,
  ["bankdriver.paycheck"] = 200,
  ["diretorchefe.paycheck"] = 200,
  ["delivery.paycheck"] = 200
}

return cfg

