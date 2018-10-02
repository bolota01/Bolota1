
local cfg = {}

-- paycheck and bill for users
cfg.message_paycheck = "Você recebeu seu salario: ~g~$" -- message that will show before payment of salary
cfg.message_bill = "Pagamento de contas: ~r~$" -- message that will show before payment of bill
cfg.post = "." -- message that will show after payment

cfg.bank = true -- if true money goes to bank, false goes to wallet

cfg.minutes_paycheck = 60 -- minutes between payment for paycheck
cfg.minutes_bill = 60 -- minutes between withdrawal for bill

cfg.paycheck_title_picture = "Banco do Brasil" -- define title for paycheck notification picture
cfg.paycheck_picture = "CHAR_BANK_MAZE" -- define paycheck notification picture want's to display
cfg.bill_title_picture = "Compania de Seguro" -- define title for bill notification picture
cfg.bill_picture = "CHAR_MP_MORS_MUTUAL" -- define bill notification picture want's to display

cfg.paycheck = { -- ["permission"] = paycheck
  ["soldado.paycheck"] = 2000,
  ["cabo.paycheck"] = 2000,
  ["sargento.paycheck"] = 2000,
  ["subtenente.paycheck"] = 2000,
  ["tenente.paycheck"] = 2000,
  ["capitao.paycheck"] = 2000,
  ["major.paycheck"] = 2000,
  ["tenentecoronel.paycheck"] = 2000,
  ["coronel.paycheck"] = 2000,
  ["comandantegeral.paycheck"] = 2000,
  ["coronelrota.paycheck"] = 2000,
  ["soldadorota.paycheck"] = 2000,
  ["policiafederal.paycheck"] = 15000,
  ["aguia.paycheck"] = 6000,
  ["samuchefe.paycheck"] = 2000,
  ["doutor.paycheck"] = 2000,
  ["medicochefe.paycheck"] = 2000,
  ["medico.paycheck"] = 2000,
  ["paramedico.paycheck"] = 2000,
  ["socorrista.paycheck"] = 2000,
--[""] = 0,
  ["taxi.paycheck"] = 800,
  ["repair.paycheck"] = 800,
  ["bankdriver.paycheck"] = 1200,
  ["diretorchefe.paycheck"] = 15000,
  ["delivery.paycheck"] = 500
}

cfg.bill = { -- ["permission"] = withdrawal
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
  ["policiafederal.paycheck"] = 1500,
  ["aguia.paycheck"] = 600,
  ["samuchefe.paycheck"] = 2000,
  ["doutor.paycheck"] = 2000,
  ["medicochefe.paycheck"] = 2000,
  ["medico.paycheck"] = 2000,
  ["paramedico.paycheck"] = 2000,
  ["socorrista.paycheck"] = 2000,
--[""] = 0,
  ["taxi.paycheck"] = 800,
  ["repair.paycheck"] = 800,
  ["bankdriver.paycheck"] = 120,
  ["diretorchefe.paycheck"] = 150,
  ["delivery.paycheck"] = 500
}

return cfg

