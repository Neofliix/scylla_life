-- Disable crohaire | Désactivé le croshaire
function ManageReticle()
    local ped = GetPlayerPed(-1)
    if ( DoesEntityExist(ped) and not IsEntityDead(ped)) then
        local _, hash = GetCurrentPedWeapon(ped, true)
        if (hash ~= 3342088282 and hash ~=205991906 and hash~=100416529) then
            HideHudComponentThisFrame(14)
        end 
    end 
end 

Citizen.CreateThread(function()
    while true do 
        ManageReticle()
        Citizen.Wait(0)
    end 
end)
