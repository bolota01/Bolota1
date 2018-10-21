local cfg = {}

-- start wallet/bank values
cfg.open_wallet = 35000
cfg.open_bank = 10000

-- money display css
cfg.display_css = [[
.div_money{
  position: absolute;
  left: 21.7%;
  bottom: 7%;
  font-size: 1.0em;
  color: white;
  border-radius: 10px;
  background: #373435;
  padding: 10px;
  opacity: 0.8;
  box-shadow: 2px 1px 3px rgba(0,0,0,0.3);
}

.div_money .symbol{
  font-size: 1.0em;
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
