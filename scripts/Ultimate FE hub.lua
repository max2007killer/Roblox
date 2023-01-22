AdminIDS = {
    4090608328,
    2959795174,
   }


    Owners = {
    2392979691,
    3932155354,
    }



function katerhubnames()
	for _,Player in pairs(game:GetService('Players'):GetChildren()) do
		if table.find(AdminIDS, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]' .. Player.DisplayName)
				end
			end
		elseif
			table.find(Owners, Player.UserId) then
			if Player.Character then
				if Player.Character.Parent.Name == 'Players' then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]' .. Player.DisplayName)
				end
			end
		if
			Player.Character then
			if Player.Character.Parent.Name == 'Players' then
				if not Player.Character.UpperTorso:FindFirstChild('OriginalSize') then
					Player.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💊]' .. Player.DisplayName)
				end
			end
		end
	end
	end
	end
local success,err = pcall(katerhubnames)
return AdminIDS
