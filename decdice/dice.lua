RegisterCommand('roll', function(source, args, rawCommand)
    -- uses arguments stores info for use
	local die = args[2]
	local i = args[1]

    -- do math
   	local number = 0
	local number2 = 0
	local number3 = 0
	
		number = number + math.random(1,die)
		number2 = number2 + math.random(1,die)
		number3 = number3 + math.random(1,die)

    loadAnimDict("anim@mp_player_intcelebrationmale@wank")
    TaskPlayAnim(GetPlayerPed(-1), "anim@mp_player_intcelebrationmale@wank", "wank", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
    Citizen.Wait(1700)
    ClearPedTasks(GetPlayerPed(-1))	
	
	if i == "1" then
	TriggerServerEvent('3dme:shareDisplay', 'You Rolled ' .. number .. '/' .. die )
	else if i == "2" then
	TriggerServerEvent('3dme:shareDisplay', 'You Rolled ' .. number .. '/' .. die .. ' ' .. number2 .. '/' .. die )
	else if i == "3" then
	TriggerServerEvent('3dme:shareDisplay', 'You Rolled ' .. number .. '/' .. die .. ' ' .. number2 .. '/' .. die .. ' ' .. number3 .. '/' .. die )
	else
	exports['mythic_notify']:DoHudText('error', 'you only have 3 dice. dummie', { ['background-color'] = '#ffffff', ['color'] = '#000000' })
	end

	end
end

		end)

function loadAnimDict(dict)
    while not HasAnimDictLoaded(dict) do
        RequestAnimDict( dict )
        Citizen.Wait(5)
    end
end