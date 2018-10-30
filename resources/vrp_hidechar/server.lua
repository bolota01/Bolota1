local players = {}

function getIndex(source)
	local index = nil
	for i=1,#players do
		if source == players[i] then
			index = i
			break
		end
    end
    return index
end

function removePlayer(source)
    local index = getIndex(source)
    if index ~= nil then
        table.remove(players, index)
        TriggerClientEvent('characterInvisibleRemove', -1, source, players)
    end
end

RegisterServerEvent('stopHide')

AddEventHandler('hc:stopHide', function()
    TriggerClientEvent('stopHide', source)
end)

RegisterServerEvent("hc:hidePlayer")
AddEventHandler("hc:hidePlayer", function()
    local index = getIndex(source)
    if index == nil then
        table.insert(players, source)
        TriggerClientEvent('characterInvisible', -1, players)
    end
end)

RegisterServerEvent("hc:showPlayer")
AddEventHandler("hc:showPlayer", function()
    removePlayer(source)
end)

AddEventHandler('playerDropped', function()
    removePlayer(source)
    TriggerClientEvent("hc:RemoveEntity", -1, source)
end) 