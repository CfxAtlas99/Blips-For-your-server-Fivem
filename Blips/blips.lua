
	local blips = {
    {title="Chiesa", colour=21, id=305, x=-69.61,y=211.17,z=16.2},
    {title="SuperStar Cafe", colour=63, id=93, x=4.1,y=542.9,z=15.7},
    {title="Apple Store", colour=2, id=521, x=72.89,y=717.04,z=14.9},
    {title="Cluckin' Bell", colour=46, id=93, x=111.42,y=562.36,z=14.8},
    {title="Polizia", colour=29, id=137, x=683.95,y=617.34,z=11.05},
    --{title="Pista Go-Kart", colour=28, id=531, x=1166.85,y=-188.65,z=14.8},
    {title="Bowling", colour=43, id=515, x=1437.43,y=-164.69,z=22.13},
    {title="Honkers", colour=8, id=93, x=-1326.84,y=504.26,z=10.01},
    {title="Carcere", colour=1, id=252, x=-744.61,y=100.78,z=17.06},

    {title="The Triangolo Club", colour=8, id=93, x=1417.38,y=2185.68,z=16.72},

    {title="BurgerShot", colour=1, id=93, x=1346.82,y=2080.82,z=16.9},
    --{title="Police Station", colour=29, id=60, x=1300.3599853516,y=1363.6942138672,z=30.829166412354},
    
		}

Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.9)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)

Citizen.CreateThread( function()
while true do
Citizen.Wait(500)
ResetPlayerStamina(PlayerId())
end
end)
