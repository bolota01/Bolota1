
-- define all language properties

local lang = {
  common = {
    welcome = "Bem-vindo. Use a tecla K para usar o menu de Interação de Jogador.",
    no_player_near = "~r~Nenhum jogador perto de você.",
    invalid_value = "~r~Valor inválido.",
    invalid_name = "~r~Nome inválido.",
    not_found = "~r~Não encontrado.",
    request_refused = "~r~Pedido recusado.",
    wearing_uniform = "~r~Tenha cuidado, você está vestindo um uniforme.",
    not_allowed = "~r~Não permitido."
  },
  weapon = {
    pistol = "Pistol"
  },
  survival = {
    starving = "Atenção,Você está Morrendo de Fome",
    thirsty = "Atenção,Você está Morrendo de Sede"
  },
  money = {
    display = "<i class=\"icon-money\"></i> <div class=\"icon-inline\">R${1}</div> ",
    given = "Enviar ~r~{1}$.",
    received = "Recebido ~g~{1}$.",
    not_enough = "~r~Dinheiro Insuficiente.",
    paid = "Pago ~r~{1}$.",
    give = {
      title = "Enviar dinheiro",
      description = "Enviar dinheiro ao jogador mais proximo de você.",
      prompt = "Quantidade para enviar:"
    }
  },
  inventory = {
    title = "Inventário",
    description = "Abrir o inventário.",
    iteminfo = "({1})<br /><br />{2}<br /><em>{3} kg</em>",
    info_weight = "Peso no Inventário {1}/{2} kg",
    give = {
      title = "Enviar",
      description = "Enviar itens ao jogador mais próximo.",
      prompt = "Quantidade que você quer enviar (max {1}):",
      given = "Enviado ~r~{1} ~s~{2}.",
      received = "Recebido ~g~{1} ~s~{2}.",
    },
    trash = {
      title = "Lixo",
      description = "Destruir items.",
      prompt = "Quantidade que você quer destruir (max {1}):",
      done = "Destruido ~r~{1} ~s~{2}."
    },
    missing = "~r~Falta {2} {1}.",
    full = "~r~Inventário Cheio.",
    chest = {
      title = "Báu",
      already_opened = "~r~Este Báu já foi Aberto por outra pessoa.",
      full = "~r~Báu Cheio.",
      take = {
        title = "Pegar",
        prompt = "Quantidade para pegar (max {1}):"
      },
      put = {
        title = "Colocar",
        prompt = "Quantidade para Colocar (max {1}):"
      }
    }
  },
  atm = {
    display = "<span class=\"symbol\">ß</span> {1}",
	title = "Caixa Eletrônico",
    info = {
      title = "Saldo",
      bank = "banco: {1} $"
    },
    deposit = {
      title = "Depositar",
      description = "depositar no banco",
      prompt = "Insira a quantidade que você quer depositar:",
      deposited = "~r~{1}$~s~ depositado."
    },
    withdraw = {
      title = "Retirar",
      description = "retirar para sua carteira",
      prompt = "Insira a quantidade que você quer retirar:",
      withdrawn = "~g~{1}$ ~s~retirado.",
      not_enough = "~r~Você não tem dinheiro suficiente no banco."
    }
  },
  business = {
    title = "Câmara de Comércios",
    directory = {
      title = "Escritório",
      description = "Escritório de Negócios.",
      dprev = "> Voltar",
      dnext = "> Avançar",
      info = "<em>capital: </em>{1} $<br /><em>Proprietário: </em>{2} {3}<br /><em>registro n°: </em>{4}<br /><em>Telefone: </em>{5}"
    },
    info = {
      title = "Informações Comerciais",
      info = "<em>nome: </em>{1}<br /><em>capital: </em>{2} $<br /><em>transferir capital: </em>{3} $<br /><br/>Capital transfer is the amount of money transfered for a business economic period, the maximum is the business capital."
    },
    addcapital = {
      title = "Adicionar Capital",
      description = "Adiciona Capital na sua empresa",
      prompt = "quantidade para adicionar Capital na sua empresa:",
      added = "~r~{1}$ ~s~Adicionado a sua Capital Empresa."
    },
    launder = {
      title = "Lavagem de Dinheiro",
      description = "Use sua Empresa para Lavar Dinheiro Sujo e Lucrar Muito",
      prompt = "Quantidade de Dinheiro sujo para lavagem (max {1} $): ",
      laundered = "~g~{1}$ ~s~lavado.",
      not_enough = "~r~Não Há dinheiro Sujo suficiente."
    },
    open = {
      title = "Abrir Negócios",
      description = "Abra seu negócio, capital mínima é {1} $.",
      prompt_name = "Nome da Empresa (não é possível mudar novamente o nome da empresa depois de criado, máximo {1} chars):",
      prompt_capital = "Capital Inicial (min {1})",
      created = "~g~Negócios Criados."
      
    }
  },
  cityhall = {
    title = "Prefeitura",
    identity = {
      title = "Nova identidade",
      description = "Criar uma nova identidade, cost = {1} $.",
      prompt_name = "Coloque seu nome:",
      prompt_firstname = "Coloque seu sobrenome:",
      prompt_age = "Coloque sua idade:",
    },
    menu = {
      title = "Identidade",
      info = "<em>Nome: </em>{1}<br /><em>Sobrenome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>RG n°: </em>{4}<br /><em>Telefone: </em>{5}<br /><em>Endereço: </em>{7}, {6}"
    }
  },
  police = {
    title = "Polícia",
    wanted = "Nível de Procurado {1}",
    not_handcuffed = "~r~Não Algemado",
    cloakroom = {
      title = "Cloakroom",
      uniform = {
        title = "Uniforme",
        description = "Coloque o Uniforme."
      }
    },
    pc = {
      title = "PC",
      searchreg = {
        title = "Pesquisar (RGs)",
        description = "Procurar identidades pelo numero do (RG)",
        prompt = "Insira o numero do RG:"
      },
      closebusiness = {
        title = "Fechar Negócios",
        description = "Feche os negócios do jogador mais próximo de voce.",
        request = "Você tem certeza que deseja fechar os negócios {3} do(s) proprietário {1} {2} ?",
        closed = "~g~Negócios fechados."
      },
      trackveh = {
        title = "Rastrear veiculo",
        description = "Rastreie um veículo pelo número de Identificação.",
        prompt_reg = "Insira o Número de Registro:",
        prompt_note = "Insira uma nota de Rastreamento nota/rasão:",
        tracking = "~b~Rastreando....",
        track_failed = "~b~Rastreamento de {1}~s~ ({2}) ~n~~r~Falhou.",
        tracked = "Rastreado {1} ({2})"
      },
      records = {
        show = {
          title = "Verificar ficha criminal",
          description = "Mostrar a ficha criminal por RG."
        },
        delete = {
          title = "Limpar ficha criminal",
          description = "Apagar ficha criminal por número do RG",
          deleted = "~b~Registro excluído"
        }
      }
    },
    menu = {
      handcuff = {
        title = "Algemar suspeito",
        description = "Algemar/Desalgemar o jogador mais próximo de você."
      },
      putinveh = {
        title = "Colocar suspeito dentro do veículo",
        description = "Coloque o suspeito dentro de um veículo. Lembrete: Opcionalmente é possível você Colocar o(s) suspeito(s) Algemado(s) dentro do Veículo"
      },
      getoutveh = {
        title = "Tirar o suspeito dentro do veículo",
        description = "Tire o suspeito dentro do veículo."
      },
      askid = {
        title = "Pedir RG",
        description = "Peça o Número do RG ao suspeito.",
        request = "Cidadão, por gentileza, Preciso do número do seu RG",
        request_hide = "Pegar Número do RG",
        asked = "Solicitando RG..."
      },
      check = {
        title = "Revistar Jogador",
        description = "checar dinheiro, inventário e armas do jogador mais perto de você.",
        request_hide = "Fechar Relatório de checagem.",
        info = "<em>Dinheiro: </em>{1} $<br /><br /><em>inventário: </em>{2}<br /><br /><em>Armas: </em>{3}",
        checked = "Você está sendo Revistado por um jogador."
      },
	  license = {
        title = "Remover CNH",
        description = "Remover CNH do jogador."
      },
      licensearm = {
        title = "Remover Porte de Arma",
        description = "Remover o porte de arma do jogador."
      },
      seize = {
        seized = "Apreendido {2} ~r~{1}",
        weapons = {
          title = "Confiscar Armas do Suspeito",
          description = "Confiscar armas do jogador mais perto de Você",
          seized = "~b~Suas Armas foram Apreendidas."
        },
        items = {
          title = "Confiscar Itens ilegais do Jogador",
          description = "Prender Itens Ilegais, Portado pelo jogador",
          seized = "~b~Seus Itens Ilegais foram Apreendidos por policiais."
        }
      },
      jail = {
        title = "Prender Vagabundo",
        description = "(Colocar na prisão/Tirar da prisão) o jogador mais perto de você (Na Penitenciária mais próxima)",
        not_found = "~r~Nenhuma Cadeia Encontrada.",
        jailed = "~b~Preso.",
        unjailed = "~b~Tirado da Prisão.",
        notify_jailed = "~b~Você foi preso.",
        notify_unjailed = "~b~Liberdade Cantou, Voce está Livre da cadeia."
      },
      fine = {
        title = "Multar",
        description = "Multar Cidadão com condições erradas no trânsito.",
        fined = "~b~Multar ~s~{2} $ por ~b~{1}.",
        notify_fined = "~b~Você foi multado pelo policial ~s~ {2} $ por ~b~{1}.",
        record = "[Multas] {2} $ para {1}"
      },
      store_weapons = {
        title = "Enviar armas para o inventário",
        description = "Todas as armas disponíveis no seu inventário."
      }
    },
    identity = {
      info = "<em>Nome: </em>{1}<br /><em>Primeiro nome: </em>{2}<br /><em>Idade: </em>{3}<br /><em>RG n°: </em>{4}<br /><em>Telefone: </em>{5}<br /><em>Empresas: </em>{6}<br /><em>Capital comercial: </em>{7} $<br /><em>Endereço Residencial: </em>{9}, {8}"
    }
  },
  emergency = {
    menu = {
      revive = {
        title = "Reanimar",
        description = "Reanimar o jogador mais próximo.",
        not_in_coma = "~r~Não está em coma."
      }
    }
  },
  phone = {
    title = "Telefone",
    directory = {
      title = "Meus Contatos",
      description = "Abra a Lista de Contatos no seu Telefone.",
      add = {
        title = "> Add",
        prompt_number = "Digite o número de telefone para adicionar:",
        prompt_name = "Digite o nome do contato.",
        added = "~g~Número adicionado."
      },
      sendsms = {
        title = "Enviar SMS",
        prompt = "Digite a mensagem (max {1} chars):",
        sent = "~g~ Enviado para n°{1}.",
        not_sent = "~r~ n°{1} indisponível."
      },
      sendpos = {
        title = "Mandar Localização",
      },
      remove = {
        title = "Remover"
      }
    },
    sms = {
      title = "Histórico de SMS",
      description = "Ver o seu históricos de SMS.",
      info = "<em>{1}</em><br /><br />{2}",
      notify = "SMS~b~ {1}:~s~ ~n~{2}"
    },
    smspos = {
      notify = "SMS-Localização ~b~ {1}"
    },
    service = {
      title = "Serviços",
      description = "Ligue para um serviço ou um número de emergência.",
      prompt = "Se necessário, insira uma mensagem para os serviço:",
      ask_call = "Chamada Recebida de {1} você deseja aceitar? <em>{2}</em>",
      taken = "~r~Esta chamada já foi recebida."
    },
    announce = {
      title = "Anunciar",
      description = "Publique um anúncio visível para todos no servidor por alguns segundos.",
      item_desc = "{1} $<br /><br/>{2}",
      prompt = "Anunciar conteúdo (10-1000 caracteres): "
    }
  },
  emotes = {
    title = "Animações +18",
    clear = {
      title = "> Parar",
      description = "Parar todas as ações do personagem."
    }
  },
	 
  home = {
    buy = {
      title = "Comprar",
      description = "Compra uma propriedade nesse local, O preço é {1} $.",
      bought = "~g~Compra realizada com sucesso. Parabéns pela Sua Nova Conquista (Propriedade Particular)",
      full = "~r~O Lugar está cheio.",
      have_home = "~r~Você já possui uma propriedade."
    },
    sell = {
      title = "Vender",
      description = "Vende suas propriedade por {1} $",
      sold = "~g~Vendido.",
      no_home = "~r~Você não tem uma propriedade aqui."
    },
    intercom = {
      title = "Interfone",
      description = "Use o interfone visitar a casa de outro jogador.",
      prompt = "Número:",
      not_available = "~r~Não Disponível.",
      refused = "~r~Sua Entrada foi recusada.",
      prompt_who = "Diga quem você é:",
      asked = "Solicitando Entrada...",
      request = "Alguém está Tocando seu Interfone: <em>{1}</em>"
    },
    slot = {
      leave = {
        title = "Sair"
      },
      ejectall = {
        title = "Pedir que todos saiam",
        description = "Expulsar todos os visitantes na propriedade, incluindo você, e trancar a propriedade."
      }
    },
    wardrobe = {
      title = "Guarda Roupa",
      save = {
        title = "> Salvar",
        prompt = "Salvar nome:"
      }
    },
    gametable = {
      title = "Mesa de Jogos",
      bet = {
        title = "Iniciar Aposta",
        description = "Comece uma Aposta com jogadores perto de você, o vencedor será sorteado aleatoriamente",
        prompt = "Valor da Apósta:",
        request = "[APOSTA] Voce quer Apostar {1} Reais ?",
        started = "~g~A Aposta Começou."
      }
    }
  },
  garage = {
    title = " {1}",
    owned = {
      title = "Veículos Possuidos",
      description = "Veículos que você Possui."
    },
    buy = {
      title = "Comprar",
      description = "Comprar Veículos.",
      info = "{1} $<br /><br />{2}"
    },
    sell = {
      title = "Vender",
      description = "Vender veículos."
    },
    rent = {
      title = "Aluguel",
      description = "Alugue um veículo para a sessão (até você se desconectar)."
    },
    store = {
      title = "Guardar",
      description = "Coloque seu veículo atual na garagem."
    }
  },
  vehicle = {
    title = "Veículo",
    no_owned_near = "~r~Nenhum veículo seu perto de você.",
    trunk = {
      title = "Porta Malas",
      description = "Abra o porta malas do veículo."
    },
    detach_trailer = {
      title = "Desencaixar trailer",
      description = "Encaixar trailer."
    },
    detach_towtruck = {
      title = "Descartar Containers de caminhão",
      description = "Descarte Containers de reboque."
    },
    detach_cargobob = {
      title = "Desanexar cargabob",
      description = "Desanexar cargabob."
    },
    lock = {
      title = "Travar/Destravar",
      description = "Travar e Destravar o veículo."
    },
    engine = {
      title = "Motor Ligar/Desligar",
      description = "Ligue ou Desligue o Motor do Carro."
    },
    asktrunk = {
      title = "Solicitar Porta Malas",
      asked = "~g~Solicitando...",
      request = "Você quer aceitar o pedido de acesso ?"
    },
    replace = {
      title = "Trocar veículo",
      description = "Substituir o veículo mais proximo de você."
    },
       repair = {
      title = "Consertar Veículo",
      description = "Consertar o veículo mais perto de você."
    },
    sellTP = {
      title = "Vender veículo",
      description = "Vende seu veículo para um jogador proximo."
    }
  },
  gunshop = {
    title = "Loja de Arma",
    prompt_ammo = "Quantidade de Munição para comprar para {1}:",
    info = "<em>Corpo: </em> {1} $<br /><em>Munição: </em> {2} $/u<br /><br />{3}"
  },
  market = {
    title = "Mercado",
    prompt = "Quantidade {1} para comprar:",
    info = "{1} $<br /><br />{2}"
  },
  skinshop = {
    title = "Loja de Roupa"
  },
  desbugskins = {
    title = "Vestuário Militar"
    },
  cloakroom = {
    title = "Vestiário ({1})",
    undress = {
      title = ">Retirar Uniforme"
    }
  },
  itemtr = {
    informer = {
      title = "Illegal Informer",
      description = "{1} $",
      bought = "~g~Posição Enviada ao seu GPS."
    }
  },
  mission = {
    blip = "Missão ({1}) {2}/{3}",
    display = "<span class=\"name\">{1}</span> <span class=\"step\">{2}/{3}</span><br /><br />{4}",
    cancel = {
      title = "Cancelar Missão"
    }
  },
  aptitude = {
    title = "Capacidades, XP e Level",
    description = "Mostra suas Capacidades seu XP e Level.  <- Atenção para fechar Display so clickar Novamente",
    lose_exp = "XP ~b~{1}/{2} ~r~-{3} ~s~exp.",
    earn_exp = "XP ~b~{1}/{2} ~g~+{3} ~s~exp.",
    level_down = "XP ~b~{1}/{2} ~r~Level perdido ({3}). Atenção Você perdeu Level :(",
    level_up = "XP ~b~{1}/{2} ~g~Level Upado ({3}). Parabéns Voce Alcançou um novo Level",
    display = {
      group = "{1}: ",
      aptitude = "{1} LVL {3} EXP {2}"
    }
  }
}

return lang
