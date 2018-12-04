-- more emotes available at https://pastebin.com/6mrYTdQv

vRP = Proxy.getInterface("vRP")

local emotes = {
    ['fumar1'] = "WORLD_HUMAN_SMOKING",
    ['fumar2'] = "WORLD_HUMAN_AA_SMOKE",
    ['fumar3'] = "WORLD_HUMAN_DRUG_DEALER_HARD",
    ['droga'] = "WORLD_HUMAN_SMOKING_POT",
    ['droga2'] = "WORLD_HUMAN_DRUG_DEALER",
    ['cop'] = "WORLD_HUMAN_COP_IDLES",
    ['encostar'] = "WORLD_HUMAN_LEANING",
    ['sentar1'] = "WORLD_HUMAN_PICNIC",
    ['sentar2'] = "WORLD_HUMAN_STUPOR",
    ['deitar'] = "WORLD_HUMAN_SUNBATHE_BACK",
    ['tomarsol'] = "WORLD_HUMAN_SUNBATHE",
    ['prancheta'] = "WORLD_HUMAN_CLIPBOARD",
    ['beber1'] = "WORLD_HUMAN_DRINKING",
    ['festa'] = "WORLD_HUMAN_PARTYING",
    ['examinar'] = "CODE_HUMAN_MEDIC_KNEEL",
    ['anotar'] = "CODE_HUMAN_MEDIC_TIME_OF_DEATH",
    ['impaciente'] = "WORLD_HUMAN_STAND_IMPATIENT",
    ['pescar'] = "WORLD_HUMAN_STAND_FISHING",
    ['soldar'] = "WORLD_HUMAN_WELDING",
    ['foto'] = "WORLD_HUMAN_PAPARAZZI",
    ['filmar'] = "WORLD_HUMAN_MOBILE_FILM_SHOCKING",
    ['palmas'] = "WORLD_HUMAN_CHEERING",
    ['musculo'] = "WORLD_HUMAN_MUSCLE_FLEX",
    ['pesos'] = "WORLD_HUMAN_MUSCLE_FREE_WEIGHTS",
    ['flexao'] = "WORLD_HUMAN_PUSH_UPS",
    ['abdominal'] = "WORLD_HUMAN_SIT_UPS",
    ['barras1'] = "PROP_HUMAN_MUSCLE_CHIN_UPS",
    ['barras2'] = "PROP_HUMAN_MUSCLE_CHIN_UPS_ARMY",
    ['yoga'] = "WORLD_HUMAN_YOGA",
    ['dormir'] = "WORLD_HUMAN_BUM_SLUMPED",
    ['bobo'] = "WORLD_HUMAN_BUM_STANDING",
    ['sinalizar'] = "WORLD_HUMAN_CAR_PARK_ATTENDANT",
    ['britadeira'] = "WORLD_HUMAN_CONST_DRILL",
    ['assoprador'] = "WORLD_HUMAN_GARDENER_LEAF_BLOWER",
    ['martelo'] = "WORLD_HUMAN_HAMMERING",
    ['estatua'] = "WORLD_HUMAN_HUMAN_STATUE",
    ['limpar'] = "WORLD_HUMAN_MAID_CLEAN",
    ['instrumento'] = "WORLD_HUMAN_MUSICIAN",
    ['aquecer'] = "WORLD_HUMAN_STAND_FIRE",
    ['dança1'] = "WORLD_HUMAN_STRIP_WATCH_STAND",
    ['tenis'] = "WORLD_HUMAN_TENNIS_PLAYER",
    ['mapa'] = "WORLD_HUMAN_TOURIST_MAP",
    ['motor1'] = "WORLD_HUMAN_VEHICLE_MECHANIC",
    ['motor2'] = "PROP_HUMAN_BUM_BIN",
    ['churrasco'] = "PROP_HUMAN_BBQ",
    ['cafe'] = "WORLD_HUMAN_AA_COFFEE",
    ["esperar"] = "WORLD_HUMAN_HANG_OUT_STREET",
    ["esperar2"] = "WORLD_HUMAN_HIKER_STANDING",
    ['implorar'] = "WORLD_HUMAN_BUM_FREEWAY",
    ['celular'] = "WORLD_HUMAN_STAND_MOBILE",
    ['dança2'] = {false,{{"mini@strip_club@lap_dance@ld_girl_a_song_a_p1","ld_girl_a_song_a_p1_f",1}},false}
}

--[[------------------------------------------------------------------------------------------------

                    DON'T TOUCH BELOW THIS UNLESS YOU KNOW WHAT YOU ARE DOING

------------------------------------------------------------------------------------------------]]--

-- Draws a simple notification
function drawNotification(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(false, false)
end

-- Registering all of the events called by the server
RegisterNetEvent("emote:invoke")
RegisterNetEvent("emote:cancelnow")
RegisterNetEvent("emote:display")

local emotePlaying = IsPedActiveInScenario(GetPlayerPed(-1)) -- Registering whether or not the player is in an active scenario


function cancelEmote() -- Cancels the emote slowly
    ClearPedTasks(GetPlayerPed(-1))
    vRP.stopAnim()
    emotePlaying = false
end
function cancelEmoteNow() -- Cancels the emote immediately
    ClearPedTasksImmediately(GetPlayerPed(-1))
    emotePlaying = false
end

function displayEmotes()
    local index = 0 -- Current index
    local display = "^7" -- Text to display

    for name, value in pairs(emotes) do -- Adding the emote names to the display var
        index = index + 1
        if index == 1 then
            display = display..name
        else
            display = display..", "..name
        end
    end

    TriggerEvent("chatMessage", "EMOTES", {255,0,0}, "") -- Saying "EMOTES:" in red
    TriggerEvent("chatMessage", "", {0,0,0}, display) -- Displaying the emotes in white
end
function playEmote(emoteDic) -- Plays an emote from the given name dictionary
    if not DoesEntityExist(GetPlayerPed(-1)) then -- Return of the ped doesn't exist
        return false
    end

    if IsPedInAnyVehicle(GetPlayerPed(-1)) then -- Returns if the player is in any vehicle
        drawNotification("~r~Você deve deixar o veículo primeiro")
        return false
    end

    local pedHoldingWeapon = IsPedArmed(GetPlayerPed(-1), 7)
    if pedHoldingWeapon then -- If the player is holding weapon, remove it
        SetCurrentPedWeapon(GetPlayerPed(-1), 0xA2719263, true)
        drawNotification("Por favor, coloque sua arma na próxima vez!")
    end

    TaskStartScenarioInPlace(GetPlayerPed(-1), emoteDic, 0, true) -- Start the scenario
    emotePlaying = true
    return true
end

AddEventHandler("emote:invoke", function(name)
    if emotes[name] ~= nil then -- Checking if the name is in the dictionary
        if type(emotes[name]) ~= "table" then
            if playEmote(emotes[name]) then -- Playing the emote from the dictionary
                drawNotification("Playing the emote \""..name.."\"")
            end
        else
            vRP.playAnim(emotes[name])
            emotePlaying = true
        end
    else
        TriggerEvent("chatMessage", "ERROR", {255,0,0}, "Comando emote inválido") -- Saying if the name wasn't in the dictionary
    end
end)
AddEventHandler("emote:display", function()
    displayEmotes() -- Displays all of the emotes
end)
AddEventHandler("emote:cancelnow", function()
    cancelEmoteNow() -- Cancels the emote immediately
end)

Citizen.CreateThread(function()
    while true do

        if emotePlaying then
            if (IsControlPressed(0, 32) or IsControlPressed(0, 33) or IsControlPressed(0, 34) or IsControlPressed(0, 35)) then
                cancelEmote() -- Cancels the emote if the player is moving
            end
        end

        Citizen.Wait(0)
    end
end)