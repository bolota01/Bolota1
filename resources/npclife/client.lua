-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

local generalLoaded = false
local PlayingAnim = false

-------------------------------------------------------------------------------------------------
----------------------------------- YOU CAN EDIT THIS LINES -------------------------------------
-------------------------------------------------------------------------------------------------

local ShopClerk = {
  -- ID: id of NPC | name: Name of Blip | BlipID: Icone of Blip | VoiceName: NPC Talk When near it | Ambiance: Ambiance of Shop | Weapon: Hash of Weapon | modelHash: Model | X: Position x | Y: Position Y | Z: Position Z | heading: Where Npc look
	{id = 1, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", modelHash = "mp_m_shopkeep_01", x = -2511.16479492188, y = 3616.90478515625, z = 13.6422147750854, heading = 245.000457763672}, 
	{id = 2, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", modelHash = "mp_m_shopkeep_01", x = 24.392505645752, y = -1345.41369628906, z = 29.4970207214355, heading = 264.900115966797},
	{id = 3, VoiceName = "SHOP_GREET", Ambiance = "AMMUCITY", modelHash = "mp_m_shopkeep_01", x = -47.3110542297363, y = -1758.62475585938, z = 29.4209995269775, heading = 48.1558074951172},
	{id = 4, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", modelHash = "s_m_y_ammucity_01", x = 841.843566894531, y = -1035.70556640625, z = 28.1948642730713, heading = 3.31448912620544},
	-- npc para pegar cartões clonáveis
	{id = 5, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", modelHash = "g_m_m_armboss_01", x = 261.61892700195, y = 204.29025268555, z = 110.28720855713, heading = 3.31448912620544},
	-- npc para clonar cartões
	{id = 6, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", modelHash = "g_m_m_armgoon_01", x = -1054.0205078125, y = -230.26893615723, z = 44.020957946777, heading = 220.000457763672},
	-- npc cocaina
	{id = 7, modelHash = "mp_f_cocaine_01", x = 1099.6342773438, y = -3194.3330078125, z = -38.993465423584, heading = 90.000457763672},
    -- npc para ammunation
	{id = 8, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", modelHash = "s_m_y_ammucity_01", x = 22.947477340698, y = -1105.4387207031, z = 29.797031402588, heading = 167.900115966797},
	-- npc sorveteria
	{id = 9, VoiceName = "GENERIC_HI", modelHash = "mp_m_shopkeep_01", x = 216.77665710449, y = -953.86437988281, z = 30.086933135986, heading = 245.000457763672},
	-- npc cocaina
	{id = 10, modelHash = "mp_f_cocaine_01", x = 1090.2777099609, y = -3196.6728515625, z = -38.993423461914, heading = 19.1558074951172},
	-- npc processamento de metanfetamina
	{id = 11, VoiceName = "GENERIC_HI", Ambiance = "AMMUCITY", modelHash = "ig_rashcosvki", x = 1208.3706054688, y = -3116.1745605469, z = 5.5403265953064, heading = 48.1558074951172},
}

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Blip For NPC
Citizen.CreateThread(function()
	for k,v in pairs(ShopClerk)do
		local blip = AddBlipForCoord(v.x, v.y, v.z)
		SetBlipSprite(blip, v.BlipID)
		SetBlipScale(blip, 0.8)
		SetBlipAsShortRange(blip, true)
		BeginTextCommandSetBlipName("STRING")
		AddTextComponentString(v.name)
		EndTextCommandSetBlipName(blip)
	end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Spawn NPC
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
	
	if (not generalLoaded) then
	  
	  for i=1, #ShopClerk do
        RequestModel(GetHashKey(ShopClerk[i].modelHash))
        while not HasModelLoaded(GetHashKey(ShopClerk[i].modelHash)) do
          Wait(1)
        end
		
        ShopClerk[i].id = CreatePed(2, ShopClerk[i].modelHash, ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, ShopClerk[i].heading, true, true)
        SetPedFleeAttributes(ShopClerk[i].id, 0, 0)
		SetAmbientVoiceName(ShopClerk[i].id, ShopClerk[i].Ambiance)
		SetPedDropsWeaponsWhenDead(ShopClerk[i].id, false)
		SetPedDiesWhenInjured(ShopClerk[i].id, false)
		GiveWeaponToPed(ShopClerk[i].id, ShopClerk[i].Weapon, 2800, false, true)
		
      end
      generalLoaded = true
		
    end
	
  end
end)

-------------------------------------------------------------------------------------------------
---------------------------------- DON'T EDIT THESES LINES --------------------------------------
-------------------------------------------------------------------------------------------------

-- Action when player Near NPC (or not)
Citizen.CreateThread(function()
  while true do
    Citizen.Wait(0)
		RequestAnimDict("random@shop_gunstore")
		while (not HasAnimDictLoaded("random@shop_gunstore")) do 
			Citizen.Wait(0) 
		end
		
		for i=1, #ShopClerk do
			distance = GetDistanceBetweenCoords(ShopClerk[i].x, ShopClerk[i].y, ShopClerk[i].z, GetEntityCoords(GetPlayerPed(-1)))
			if distance < 4 and PlayingAnim ~= true then
				TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_greeting", 1.0, -1.0, 4000, 0, 1, true, true, true)
				PlayAmbientSpeech1(ShopClerk[i].id, ShopClerk[i].VoiceName, "SPEECH_PARAMS_FORCE", 1)
				PlayingAnim = true
				Citizen.Wait(4000)
				if PlayingAnim == true then
					TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle_b", 1.0, -1.0, -1, 0, 1, true, true, true)
					Citizen.Wait(40000)
				end
			else
				--don't touch this
				--TaskPlayAnim(ShopClerk[i].id,"random@shop_gunstore","_idle", 1.0, -1.0, -1, 0, 1, true, true, true)
			end
			if distance > 5.5 and distance < 6 then
				PlayingAnim = false
			end


		end
  end
end)