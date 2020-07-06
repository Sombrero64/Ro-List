local Settings = require(script:WaitForChild("Settings"))

game.Players.PlayerAdded:Connect(function(player)
	if Settings["Whitelisted"] then
		for i, v in pairs(Settings["Whitelist"]) do
			if player.Name ~= v then
				player:Kick(Settings["Whitelist Kick"])
			end
		end
	else
		for i, v in pairs(Settings["Blacklist"]) do
			if player.Name == v then
				player:Kick(Settings["Blacklist Kick"])
			end
		end
	end
end)
