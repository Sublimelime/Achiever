function enableTesting(event)
	game.players[event.player_index].cheat_mode = true
	game.players[event.player_index].force.research_all_technologies()
end
commands.add_command("testing", "Run to enable testing without disabling achievements", enableTesting)

script.on_init(function(e)
	global.trees_destroyed = 0
end
)

function treeDestroyed(e)
	if e.entity.type == "tree" then
		global.trees_destroyed = global.trees_destroyed + 1 --increment the number of trees destroyed
		if global.trees_destroyed >= 100000 then
			for index, player in pairs(game.players) do
				player.unlock_achievement("deforestation")
			end
		end
	end
end
script.on_event(defines.events.on_player_mined_entity, treeDestroyed)
script.on_event(defines.events.on_robot_pre_mined, treeDestroyed)

function onEntityDied(e)
	local entity = e.entity
	local cause = e.cause
	local causeName = cause.name or "None"
	local causeForce = e.force
	local causeForceName = causeForce.name or "None"

	--game.print("Something died: " .. entity.name .. " Caused by: " .. causeName .. " Force: " .. causeForceName)

	--Friendly fire - destroy your own building
	if cause and cause.type == "player" and entity.force == causeForce and entity.has_flag("player-creation") then
		cause.player.unlock_achievement("friendly-fire")
	elseif cause and causeForce and cause.name == "gun-turret" and entity.type == "unit" then
		for index, player in pairs(causeForce.players) do
			player.unlock_achievement("tango-down")
		end
	elseif entity.type == "tree" then
		treeDestroyed(e)
	end
end
script.on_event(defines.events.on_entity_died, onEntityDied)

function onBlueprint(e)
	local player = game.players[e.player_index]
	player.unlock_achievement("blueprinted")
end
script.on_event(defines.events.on_player_setup_blueprint, onBlueprint)

function onItemPickup(e)
	local player = game.players[e.player_index]
	player.unlock_achievement("looted")
end
script.on_event(defines.event.on_picked_up_item, onItemPickup)

function onResourceDepleted(e)
	for index, player in pairs(e.entity.force.players) do
		player.unlock_achievement("depleted")
	end
end
script.on_event(defines.event.on_resource_depleted, onResourceDepleted)

function onSettingsPasted(e)
	local player = game.players[e.player_index] or return
	player.unlock_achievement("copy-and-pasted")
end
script.on_event(defines.events.on_entity_settings_pasted, onSettingsPasted)

function onConsoleChat(e)
	local player = game.players[e.player_index] or return
	player.unlock_achievement("hello-world")
end
script.on_event(defines.events.on_console_chat, onConsoleChat)

function onPlayerCrafted(e)
	if e.item_stack.name == "submachine-gun" then
		game.players[e.player_index].unlock_achievement("fully-automatic")
	end
end
script.on_event(defines.events.on_player_crafted_item, onPlayerCrafted)
