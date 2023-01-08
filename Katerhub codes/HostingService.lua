--[[
██╗  ██╗ █████╗ ████████╗███████╗██████╗     ██╗  ██╗██╗   ██╗██████╗ 
██║ ██╔╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗    ██║  ██║██║   ██║██╔══██╗
█████╔╝ ███████║   ██║   █████╗  ██████╔╝    ███████║██║   ██║██████╔╝
██╔═██╗ ██╔══██║   ██║   ██╔══╝  ██╔══██╗    ██╔══██║██║   ██║██╔══██╗
██║  ██╗██║  ██║   ██║   ███████╗██║  ██║    ██║  ██║╚██████╔╝██████╔╝
╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝   

https://discord.gg/XkTZbeH5M8
]]

local event312465123 = false

if event312465123 == true then
        local Sound = Instance.new("Sound",game:GetService("SoundService"))
        Sound.SoundId = "rbxassetid://4575953237"
        Sound.Volume = 10
        Sound:Play()
	wait(2)
	local id = 10874877700
	local skybox = Instance.new("Sky")
	skybox.Parent = game.Lighting
	skybox.SkyboxBk = "rbxassetid://" .. id
	skybox.SkyboxDn = "rbxassetid://" .. id
	skybox.SkyboxFt = "rbxassetid://" .. id
	skybox.SkyboxLf = "rbxassetid://" .. id
	skybox.SkyboxRt = "rbxassetid://" .. id
	skybox.SkyboxUp = "rbxassetid://" .. id
else
	warn("[Katerhub]: There is currently no active Event.")
end
