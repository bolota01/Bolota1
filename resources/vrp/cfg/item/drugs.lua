
local items = {}

local function play_drink(player)
  local seq = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills_choices = {}
pills_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"bezetacil",1) then
      vRPclient.varyHealth(player,{100})
      vRPclient.notify(player,{"~g~ Injetando bezetacil."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq2 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills2_choices = {}
pills2_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"tylenol",1) then
      vRPclient.varyHealth(player,{60})
      vRPclient.notify(player,{"~g~ Tomando tylenol."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq3 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills3_choices = {}
pills3_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"omeprazol",1) then
      vRPclient.varyHealth(player,{60})
      vRPclient.notify(player,{"~g~ Tomando omeprazol."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq4 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills4_choices = {}
pills4_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"toxrilax",1) then
      vRPclient.varyHealth(player,{60})
      vRPclient.notify(player,{"~g~ Tomando toxrilax."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq5 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills5_choices = {}
pills5_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"bandagens",1) then
      vRPclient.varyHealth(player,{40})
      vRPclient.notify(player,{"~g~ Usando bandagens."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq6 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills6_choices = {}
pills6_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"dipirona",1) then
      vRPclient.varyHealth(player,{25})
      vRPclient.notify(player,{"~g~ Tomando Dipirona."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq7 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills7_choices = {}
pills7_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"ibuprofeno",1) then
      vRPclient.varyHealth(player,{50})
      vRPclient.notify(player,{"~g~ Tomando ibuprofeno."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq8 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills8_choices = {}
pills8_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"nimesulida",1) then
      vRPclient.varyHealth(player,{50})
      vRPclient.notify(player,{"~g~ Tomando Nimesulida."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq9 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills9_choices = {}
pills9_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"paracetamol",1) then
      vRPclient.varyHealth(player,{50})
      vRPclient.notify(player,{"~g~ Tomando paracetamol."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}

local function play_drink(player)
  local seq10 = {
    {"mp_player_intdrink","intro_bottle",1},
    {"mp_player_intdrink","loop_bottle",1},
    {"mp_player_intdrink","outro_bottle",1}
  }

  vRPclient.playAnim(player,{true,seq,false})
end

local pills10_choices = {}
pills10_choices["Take"] = {function(player,choice)
  local user_id = vRP.getUserId(player)
  if user_id ~= nil then
    if vRP.tryGetInventoryItem(user_id,"bandaid",1) then
      vRPclient.varyHealth(player,{40})
      vRPclient.notify(player,{"~g~ Usando Band-Aid."})
      play_drink(player)
      vRP.closeMenu(player)
    end
  end
end}


items["bezetacil"] = {"Bezetacil","Uma medicação forte.",function(args) return pills_choices end,0.01}
items["tylenol"] = {"Tylenol","",function(args) return pills2_choices end,0.01}
items["omeprazol"] = {"Omeprazol","",function(args) return pills3_choices end,0.01}
items["toxrilax"] = {"Toxrilax","",function(args) return pills4_choices end,0.01}
items["bandagens"] = {"Bandagens","",function(args) return pills5_choices end,0.01}
items["dipirona"] = {"Dipirona","",function(args) return pills6_choices end,0.4}
items["ibuprofeno"] = {"Ibuprofeno","",function(args) return pills7_choices end,0.4}
items["nimesulida"] = {"Nimesulida","",function(args) return pills8_choices end,0.4}
items["paracetamol"] = {"Paracetamol","",function(args) return pills9_choices end,0.4}
items["bandaid"] = {"Band-Aid","",function(args) return pills10_choices end,0.2}

return items