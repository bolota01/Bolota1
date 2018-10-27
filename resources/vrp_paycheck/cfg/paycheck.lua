
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
  ["recruta.paycheck"] = 3000,
  ["soldado.paycheck"] = 4000,
  ["cabo.paycheck"] = 5000,
  ["sargento.paycheck"] = 6000,
  --["subtenente.paycheck"] = 2000,
  ["tenente.paycheck"] = 7000,
  ["capitao.paycheck"] = 8000,
  --["major.paycheck"] = 2000,
  --["tenentecoronel.paycheck"] = 2000,
  ["coronel.paycheck"] = 9000,
  ["comandantegeral.paycheck"] = 11000,
  --["coronelrota.paycheck"] = 2000,
  ["soldadorota.paycheck"] = 2000,
  ["policiafederal.paycheck"] = 15000,
  ["aguia.paycheck"] = 10000,
  --samu
  --["samuchefe.paycheck"] = 2000,
  ["doutor.paycheck"] = 11000,
  ["medicochefe.paycheck"] = 8000,
  ["medico.paycheck"] = 6000,
  ["paramedico.paycheck"] = 5000,
  ["socorrista.paycheck"] = 3000,
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
  ["subtenente.paycheck"] = 200,
  ["tenente.paycheck"] = 200,
  ["capitao.paycheck"] = 200,
  ["major.paycheck"] = 200,
  ["tenentecoronel.paycheck"] = 200,
  ["coronel.paycheck"] = 200,
  ["comandantegeral.paycheck"] = 200,
  ["coronelrota.paycheck"] = 200,
  ["soldadorota.paycheck"] = 200,
  ["policiafederal.paycheck"] = 200,
  ["aguia.paycheck"] = 200,
  --samu
  --["samuchefe.paycheck"] = 2000,
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

