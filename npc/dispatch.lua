-- Disable PNJ policemen | Désactivation des policiers PNJ

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        local myCoords = GetEntityCoords(GetPlayerPed(-1))
        ClearAreaOfCops(myCoords.x, myCoords.y, myCoords.z, 1000.0, 0)
    end
end)
--[[local dispatchTypes =
{
	DT_PoliceAutomobile = { ID = 1, ACTIVE = false },
	DT_PoliceHelicopter = { ID = 2, ACTIVE = false },
	DT_FireDepartment = { ID = 3, ACTIVE = false },
	DT_SwatAutomobile = { ID = 4, ACTIVE = false },
	DT_AmbulanceDepartment = { ID = 5, ACTIVE = false },
	DT_PoliceRiders = { ID = 6, ACTIVE = false },
	DT_PoliceVehicleRequest = { ID = 7, ACTIVE = false },
	DT_PoliceRoadBlock = { ID = 8, ACTIVE = false},
	DT_PoliceAutomobileWaitPulledOver = { ID = 9, ACTIVE = false },
	DT_PoliceAutomobileWaitCruising = { ID = 10, ACTIVE = false },
	DT_Gangs = { ID = 11, ACTIVE = true },
	DT_SwatHelicopter = { ID = 12, ACTIVE = false },
	DT_PoliceBoat = { ID = 13, ACTIVE = false },
	DT_ArmyVehicle = { ID = 14, ACTIVE = false },
	DT_BikerBackup = { ID = 15, ACTIVE = true }
};

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		if NetworkIsPlayerActive(PlayerId()) then
			for k,v in pairs(dispatchTypes) do
				EnableDispatchService(dispatchTypes[k].ID, dispatchTypes[k].ACTIVE)
			end
			SetMaxWantedLevel(0)
			break;
		end
	end
end)]]