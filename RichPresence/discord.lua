Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(735023723077304320)

        --Here you will have to put the image name for the "large" icon.
		SetDiscordRichPresenceAsset('normalna-slika')
        
        --(11-11-2018) New Natives:

        --Here you can add hover text for the "large" icon.
        SetDiscordRichPresenceAssetText('https://discord.gg/VZMw5PC')
       
        --Here you will have to put the image name for the "small" icon.
        SetDiscordRichPresenceAssetSmall('discord')

        --Here you can add hover text for the "small" icon.
        SetDiscordRichPresenceAssetSmallText("ID: "..GetPlayerServerId(PlayerId()))

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)

--Citizen.CreateThread(function()
--	while true do
--		local VehName = GetLabelText(GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))))
--		if VehName == "NULL" then VehName = GetDisplayNameFromVehicleModel(GetEntityModel(GetVehiclePedIsUsing(PlayerPedId()))) end
--		local x,y,z = table.unpack(GetEntityCoords(PlayerPedId(),true))
--		local StreetHash = GetStreetNameAtCoord(x, y, z)
--		local pId = GetPlayerServerId(PlayerId())
--		local pName = GetPlayerName(PlayerId())
--		Citizen.Wait(15000)
--		if StreetHash ~= nil then
--			StreetName = GetStreetNameFromHashKey(StreetHash)
--			if IsPedOnFoot(PlayerPedId()) and not IsEntityInWater(PlayerPedId()) then
--				if IsPedSprinting(PlayerPedId()) then
--					SetRichPresence("ID: "..pId.." | "..pName.." Trci "..StreetName)
--				elseif IsPedRunning(PlayerPedId()) then
--					SetRichPresence("ID: "..pId.." | "..pName.." Ponestaje "..StreetName)
--				elseif IsPedWalking(PlayerPedId()) then
--					SetRichPresence("ID: "..pId.." | "..pName.." Hoda  "..StreetName)
---				elseif IsPedStill(PlayerPedId()) then
	--				SetRichPresence("ID: "..pId.." | "..pName.." Stoji na "..StreetName.."")
	--			end
--			elseif GetVehiclePedIsUsing(PlayerPedId()) ~= nil and not IsPedInAnyHeli(PlayerPedId()) and not IsPedInAnyPlane(PlayerPedId()) and not IsPedOnFoot(PlayerPedId()) and not IsPedInAnySub(PlayerPedId()) and not IsPedInAnyBoat(PlayerPedId()) then
---				local MPH = math.ceil(GetEntitySpeed(GetVehiclePedIsUsing(PlayerPedId())) * 2.236936)
--				if MPH > 50 then
--					SetRichPresence("ID: "..pId.." | "..pName.." Ubrzava prema "..StreetName.." Vozi brzinom od "..MPH.."KM/H sa vozilom marke "..VehName)
--				elseif MPH <= 50 and MPH > 0 then
--					SetRichPresence("ID: "..pId.." | "..pName.." Putuje prema "..StreetName.." Vozi brzinom od  "..MPH.."KM/H sa vozilom marke "..VehName)
--				elseif MPH == 0 then
--					SetRichPresence("ID: "..pId.." | "..pName.." je parkiran u ulici "..StreetName.." sa vozilom marke " ..VehName)
--				end
--			elseif IsPedInAnyHeli(PlayerPedId()) or IsPedInAnyPlane(PlayerPedId()) then
--				if IsEntityInAir(GetVehiclePedIsUsing(PlayerPedId())) or GetEntityHeightAboveGround(GetVehiclePedIsUsing(PlayerPedId())) > 5.0 then
--					SetRichPresence("ID: "..pId.." | "..pName.." leti preko "..StreetName.." dans un(e) "..VehName)
--				else
--					SetRichPresence("ID: "..pId.." | "..pName.." da sleti "..StreetName.." dans un(e) "..VehName)
--				end
--			elseif IsEntityInWater(PlayerPedId()) then
--				SetRichPresence("ID: "..pId.." | "..pName.." je umro i lezi mrtav")
--			elseif IsPedInAnyBoat(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
--				SetRichPresence("ID: "..pId.." | "..pName.." plovi u "..VehName)
--			elseif IsPedInAnySub(PlayerPedId()) and IsEntityInWater(GetVehiclePedIsUsing(PlayerPedId())) then
--				SetRichPresence("ID: "..pId.." | "..pName.." je u zutoj podmornici")
--			end
--		end
--	end
--end)