local blips = {
    -- demostração
    {["x"] = 0, ["y"] = 0, ["z"] = 0, ["size"] = 1}
}

function drawBlipWithoutFill(x,y,z,size)
    local transG = 250
    local gunshotBlip = AddBlipForCoord(x, y, z)
    SetBlipSprite(gunshotBlip,  1)
    SetBlipColour(gunshotBlip,  1)
    SetBlipAlpha(gunshotBlip,  transG)
    SetBlipAsShortRange(gunshotBlip,  size)
end

function set_blips()
    Citizen.CreateThread(function()
        Citizen.Wait(0)
        for _, v in pairs(blips) do
            drawBlipWithoutFill(v["x"],v["y"],v["z"],v["size"])
        end
    end)
end

RegisterNetEvent("pvp:markers")
AddEventHandler("pvp:markers", function()
    set_blips()
end)
