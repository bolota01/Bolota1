
local cfg = {}

-- city hall position
cfg.city_hall = {-1037.7828369141,-2737.9025878906,20.169273376465}

-- cityhall blip {blipid,blipcolor}
cfg.blip = {409,46}

-- cost of a new identity
cfg.new_identity_cost = 30000

-- phone format (max: 20 chars, use D for a random digit)
cfg.phone_format = "D8D-DDD"
-- cfg.phone_format = "06DDDDDDDD" -- another example for cellphone in France


-- config the random name generation (first join identity)
-- (I know, it's a lot of names for a little feature)
-- (cf: http://names.mongabay.com/most_common_surnames.htm)
cfg.random_first_names = {
  "Sem"
}

cfg.random_last_names = {
  "Registro"
}

return cfg
