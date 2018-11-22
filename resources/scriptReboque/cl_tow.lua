local currentlyTowedVehicle = nil

local cars = {
	GetHashKey('flatbed')
}

RegisterNetEvent('pv:tow')
AddEventHandler('pv:tow', function()
	
	local playerped = GetPlayerPed(-1)
	local vehicle = GetVehiclePedIsIn(playerped, true)
	local isVehicleTow = false
	
	for i = 1, #cars do
		if IsVehicleModel(vehicle, cars[i]) then
			isVehicleTow = true
			break
		end
	end

	if isVehicleTow then
	
		local coordA = GetEntityCoords(playerped, 1)
		local coordB = GetOffsetFromEntityInWorldCoords(playerped, 0.0, 5.0, 0.0)
		local targetVehicle = getVehicleInDirection(coordA, coordB)
		
		if currentlyTowedVehicle == nil then
			if targetVehicle ~= 0 then
				if not IsPedInAnyVehicle(playerped, true) then
					if vehicle ~= targetVehicle then
						AttachEntityToEntity(targetVehicle, vehicle, 20, 0.0, -5.0, 0.7, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
						currentlyTowedVehicle = targetVehicle
						TriggerEvent("chatMessage", "[Servico]", {255, 255, 0}, "Veículo rebocado com Sucesso")
					else
						TriggerEvent("chatMessage", "[Servico]", {255, 255, 0}, "Você não pode rebocar seu próprio caminhão de Reboque")
					end
				end
			else
				TriggerEvent("chatMessage", "[Servico]", {255, 255, 0}, "Você não está perto de um Veículo")
			end
		else
			AttachEntityToEntity(currentlyTowedVehicle, vehicle, 20, -0.5, -12.0, 1.0, 0.0, 0.0, 0.0, false, false, false, false, 20, true)
			DetachEntity(currentlyTowedVehicle, true, true)
			currentlyTowedVehicle = nil
			TriggerEvent("chatMessage", "[Servico]", {255, 255, 0}, "Veículo retirado do reboque com Sucesso")
		end
	end
end)

function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end
