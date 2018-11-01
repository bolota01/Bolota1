
description "RP module/framework"

dependency "vrp_mysql"

ui_page "gui/index.html"

-- server scripts
server_scripts{ 
  "lib/utils.lua",
  "base.lua",
  "modules/gui.lua",
  "modules/group.lua",
  "modules/admin.lua",
  "modules/survival.lua",
  "modules/player_state.lua",
  "modules/map.lua",
  "modules/money.lua",
  "modules/inventory.lua",
  "modules/identity.lua",
  "modules/business.lua",
  "modules/item_transformer.lua",
  "modules/emotes.lua",
  "modules/police.lua",
  "modules/home.lua",
  "modules/home_components.lua",
  "modules/mission.lua",
  "modules/aptitude.lua",

  -- basic implementations
  "modules/basic_phone.lua",
  "modules/basic_atm.lua",
  "modules/basic_market.lua",
  "modules/basic_gunshop.lua",
  "modules/basic_garage.lua",
  "modules/basic_items.lua",
  "modules/basic_skinshop.lua",
  "modules/basic_desbugskins.lua",
  "modules/cloakroom.lua"
}

-- client scripts
client_scripts{
  "lib/utils.lua",
  "client/Tunnel.lua",
  "client/Proxy.lua",
  "client/base.lua",
  "client/iplloader.lua",
  "client/gui.lua",
  "client/player_state.lua",
  "client/survival.lua",
  "client/map.lua",
  "client/identity.lua",
  "client/basic_garage.lua",
  "client/lockcar-client.lua",
  "client/police.lua",
  "client/admin.lua"
}

-- client files
files{
  "cfg/client.lua",

  "gui/index.html",

  "gui/css/design.css",
  -- js
  "gui/new/dist/bundle.js",

  -- images
  "gui/img/background.png",
  "gui/img/fundo.jpg",
  "gui/img/queijo.png",
  "gui/img/copo.png",
  --"gui/img/logo.png",
  "gui/img/work.png",
  "gui/img/money.png",

  "gui/fonts/bankgothic.ttf"
}
