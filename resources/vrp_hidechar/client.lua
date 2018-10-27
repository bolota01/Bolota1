
local playersInvisible = {}
local running = false

function playersUpdate(players)
	if players ~= nil then
		playersInvisible = players
	end
end

function onStop()
    running = false
    print("stop edit")
end

RegisterNetEvent('stopHide')
AddEventHandler('stopHide', onStop)

RegisterNetEvent('showPlayer')
AddEventHandler('showPlayer', function()
    TriggerServerEvent("hc:showPlayer")
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
            SetEntityCoords(pped, 99999, 99999, 99999)
            DeletePed(pped)
        end)
    end
end)

function runHidePlayers()
    running = true
    Citizen.CreateThread(function()
        while running do
            local playerOwner = GetPlayerPed(-1)
            for i=1,#playersInvisible do
                local player = GetPlayerFromServerId(playersInvisible[i])
                local pped = GetPlayerPed(player)
                if playerOwner ~= pped then
                    SetEntityVisible(pped, false)
                    SetEntityCollision(pped, false)
                    FreezeEntityPosition(pped, true)
                    SetPlayerInvincible(player, true)
                end
            end
            Citizen.Wait(0)
        end
    end)
end

runHidePlayers()
