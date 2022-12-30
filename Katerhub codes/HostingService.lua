--[[
██╗  ██╗ █████╗ ████████╗███████╗██████╗     ██╗  ██╗██╗   ██╗██████╗ 
██║ ██╔╝██╔══██╗╚══██╔══╝██╔════╝██╔══██╗    ██║  ██║██║   ██║██╔══██╗
█████╔╝ ███████║   ██║   █████╗  ██████╔╝    ███████║██║   ██║██████╔╝
██╔═██╗ ██╔══██║   ██║   ██╔══╝  ██╔══██╗    ██╔══██║██║   ██║██╔══██╗
██║  ██╗██║  ██║   ██║   ███████╗██║  ██║    ██║  ██║╚██████╔╝██████╔╝
╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚══════╝╚═╝  ╚═╝    ╚═╝  ╚═╝ ╚═════╝ ╚═════╝   

https://discord.gg/XkTZbeH5M8
]]

local scripthost = {
 201454243,
}

local mainloader = game:GetService("Players").LocalPlayer

for l, c in pairs(game.Players:GetPlayers()) do
    if table.find(scripthost,c.UserId) then
        
    end
end
game.Players.PlayerAdded:Connect(function(plr)
    if table.find(scripthost,plr.UserId) then
        
    end
end)
