--[[
░██████╗███████╗░█████╗░██╗░░░██╗██████╗░███████╗██╗░░██╗██╗░░░██╗██████╗░  ██╗░░██╗
██╔════╝██╔════╝██╔══██╗██║░░░██║██╔══██╗██╔════╝██║░░██║██║░░░██║██╔══██╗  ╚██╗██╔╝
╚█████╗░█████╗░░██║░░╚═╝██║░░░██║██████╔╝█████╗░░███████║██║░░░██║██████╦╝  ░╚███╔╝░
░╚═══██╗██╔══╝░░██║░░██╗██║░░░██║██╔══██╗██╔══╝░░██╔══██║██║░░░██║██╔══██╗  ░██╔██╗░
██████╔╝███████╗╚█████╔╝╚██████╔╝██║░░██║███████╗██║░░██║╚██████╔╝██████╦╝  ██╔╝╚██╗
╚═════╝░╚══════╝░╚════╝░░╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝░╚═════╝░╚═════╝░  ╚═╝░░╚═╝
]]     
              
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local UI = Material.Load({
	Style = 1,
	SizeX = 500,
	SizeY = 300,
	Theme = "Aqua"
})

local games = {
    ["rebirth champions x"] = 8540346411,
    ["Clicker Simulator"] = 7560156054,
}

for k,v in next, games do 
    if game.PlaceId == v then
    	print(k)
        loadstring(game:HttpGet("https://raw.githubusercontent.com/SecureHubX/Main/main/SecureHubX" .. k))();
    end
end


pcall(function() -- anti afk
	local Players = game:GetService("Players")
	local GC = getconnections or get_signal_cons
	if GC then
		for i,v in pairs(GC(Players.LocalPlayer.Idled)) do
			if v["Disable"] then
				v["Disable"](v)
			elseif v["Disconnect"] then
				v["Disconnect"](v)
				else
				print("")
			end
		end
	end
end)