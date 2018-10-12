local cfg = {}

-- start wallet/bank values
cfg.open_wallet = 5000
cfg.open_bank = 10000

-- money display css
cfg.display_css = [[
.div_money{
  padding: 10px;
  position: absolute;
  left: 21.4%;
  bottom: 2.5%;
  font-family: "pcdown";
  font-size: 1.1em;
  color: white;
  text-shadow:
    -1px -1px 0 #000,
    1px -1px 0 #000,
    -1px 1px 0 #000,
    1px 1px 0 #000;
}

.div_money .symbol{
  font-size: 1.1em;
}

.div_bankmoney{
  display: none;
  position: absolute;
  top: 115px;
  right: 20px;
  font-family: "pcdown";
  font-size: 1.6em;
  font-weight: bold;
  color: white;
  text-shadow:
    -1px -1px 0 #000,
    1px -1px 0 #000,
    -1px 1px 0 #000,
    1px 1px 0 #000;
}

/*.div_bankmoney .symbol{
  font-size: 1.2em;
  content: url('https://i.imgur.com/ZNFMaoO.png');
}*/
]]

return cfg
