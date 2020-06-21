local Settings = require(script.Parent.Settings)

game.Players.PlayerAdded:Connect(function(player)
	if Settings["Only Whitelisted"] == true then
		for i, v in pairs(Settings["Whitelisted Users"]) do
			if player.Name ~= v then
				player:Kick(Settings["Whitelist Kick"])
			end
		end
	else
		for i, v in pairs(Settings["Blacklisted Users"]) do
			if player.Name == v then
				player:Kick(Settings["Blacklist Kick"])
			end
		end
	end
end)
