commands.add_command("testing", "Run to enable testing without disabling achievements", function(event)
	game.players[event.player_index].cheat_mode = true
	game.players[event.player_index].force.research_all_technologies()
end)

script.on_event(defines.events.on_entity_died, function(e)
	local entity = e.entity
	local cause = e.cause
	local causeName = cause.name or "None"
	local causeForce = e.force
	local causeForceName = causeForce.name or "None"

	game.print("Something died: " .. entity.name .. " Caused by: " .. causeName .. " Force: " .. causeForceName)

	--Friendly fire - destroy your own building
	if cause and cause.type == "player" and entity.force == causeForce and entity.has_flag("player-creation") then
		cause.player.unlock_achievement("friendly-fire")
		return
	end
end)
