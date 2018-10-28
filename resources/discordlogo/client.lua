Citizen.CreateThread(function()
	while true do
        --This is the Application ID (Replace this with you own)
		SetDiscordAppId(505528990220681226)

        --Here you will have to put the image name.
		SetDiscordRichPresenceAsset('logoserverelite')

        --It updates every one minute just in case.
		Citizen.Wait(60000)
	end
end)