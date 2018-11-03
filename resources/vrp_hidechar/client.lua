
local playersInvisible = {}
local running = false

function playersUpdate(players)
	if players ~= nil then
		playersInvisible = players
	end
end

RegisterNetEvent('stopHide')
AddEventHandler('stopHide', function()
    running = false
end)

RegisterNetEvent('characterInvisible')
AddEventHandler('characterInvisible', playersUpdate)

RegisterNetEvent('characterInvisibleRemove')
AddEventHandler('characterInvisibleRemove', function(player_t, players)
	playersUpdate(players)
	Citizen.CreateThread(function() 
		local player = GetPlayerFromServerId(player_t)
		local pped = GetPlayerPed(player)
		SetEntityVisible(pped, true)
		SetEntityCollision(pped, true)
		FreezeEntityPosition(pped, false)
		SetPlayerInvincible(player, false)
	end)
end)

RegisterNetEvent('hc:RemoveEntity')
AddEventHandler('hc:RemoveEntity', function(target)
    if running then
        Citizen.CreateThread(function()
            local player = GetPlayerFromServerId(target)
            local pped = GetPlayerPed(player)

            if DoesEntityExist(pped) then
                SetEntityCoords(pped, 99999, 99999, 99999)
                DeletePed(pped)
            end
        end)
    end
end)

function onHideUpdate()
    while running do
        local player = nil
        local pped = nil
        local playerOwner = GetPlayerPed(-1)

        for i=1,#playersInvisible do
            player = GetPlayerFromServerId(playersInvisible[i])
            pped = GetPlayerPed(player)
            if playerOwner ~= pped then
                SetEntityCollision(pped, false, false)
            end
        end

        if IsEntityVisible(playerOwner) then
            SetLocalPlayerVisibleLocally(1)
            SetPlayerInvincible(GetPlayerIndex(),true)
        end

        Citizen.Wait(100)
    end

    SetLocalPlayerVisibleLocally(0)
    SetPlayerInvincible(GetPlayerIndex(),false)
end
    

function runHidePlayers()
    running = true
    Citizen.CreateThread(onHideUpdate)
end

runHidePlayers()
