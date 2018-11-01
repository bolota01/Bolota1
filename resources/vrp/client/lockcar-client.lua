Citizen.CreateThread(function()
  while true do
    Citizen.Wait(1)
    local ped = GetPlayerPed(-1)
      if IsControlPressed(0,182) then -- ~ Key
        local result, v1, v2 = tvRP.getNearestOwnedVehicle(5)
        if result then
        local veh = "car"
        if not ok then -- prevent stealing detection on owned vehicle
          tvRP.vc_toggleLock(veh)
          tvRP.playSound("HUD_MINI_GAME_SOUNDSET","5_SEC_WARNING")
          print("attempt to lock/unlock made: "..veh)
          Citizen.Wait(500)
        else
          print("attempt to lock/unlock failed")
          Citizen.Wait(500)
        end
      end
    end
  end
end)