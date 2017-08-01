script.on_init(function(e)
	global.trees_destroyed = 0
end
)

function treeDestroyed(e)
	if e.entity.type == "tree" then
		global.trees_destroyed = global.trees_destroyed + 1 --increment the number of trees destroyed
		if global.trees_destroyed >= 100000 then
			for index, player in pairs(game.players) do --give the achievement to every player
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
	if not cause then return end
	local causeName = cause.name or "None"
	local causeForce = e.force
	local causeForceName = causeForce.name or "None"

	--Friendly fire - destroy your own building
	if cause and causeForce and cause.type == "player"
		and entity.force == causeForce and entity.has_flag("player-creation") then

		cause.player.unlock_achievement("friendly-fire")
		--tango down - have a turret kill a biter
	elseif cause and causeForce and cause.name == "gun-turret" and entity.type == "unit" then
		for index, player in pairs(causeForce.players) do
			player.unlock_achievement("tango-down")
		end
		-- Deforestation
	elseif entity.type == "tree" then
		treeDestroyed(e)
	end
end
script.on_event(defines.events.on_entity_died, onEntityDied)

-- Determines if the area provided is a zero size area.
function isZeroSizeArea(area)
	return (area.left_top.x == area.right_bottom.x) and (area.left_top.y == area.right_bottom.y)
end

function onBlueprint(e)
	local player = game.players[e.player_index]
	if not player then return end
	player.unlock_achievement("blueprinted")
	if not isZeroSizeArea(e.area) and player.surface.count_entities_filtered{type = "splitter", area = e.area} >= 10 then
		player.unlock_achievement("well-balanced")
	end
end
script.on_event(defines.events.on_player_setup_blueprint, onBlueprint)

function onItemPickup(e)
	local player = game.players[e.player_index]
	if not player then return end
	player.unlock_achievement("looted")
end
script.on_event(defines.events.on_picked_up_item, onItemPickup)

function onResourceDepleted(e)
	local entity = e.entity.surface.find_entities_filtered{type="mining-drill", position = e.entity.position}
	if not entity or not entity[1] then return end
	for index, player in pairs(entity[1].force.players) do
		player.unlock_achievement("depleted")
	end
end
script.on_event(defines.events.on_resource_depleted, onResourceDepleted)

function onSettingsPasted(e)
	local player = game.players[e.player_index]
	if player then
		player.unlock_achievement("copy-and-pasted")
	end
end
script.on_event(defines.events.on_entity_settings_pasted, onSettingsPasted)

function onConsoleChat(e)
	local player = game.players[e.player_index]
	if player then
		player.unlock_achievement("hello-world")
	end
end
script.on_event(defines.events.on_console_chat, onConsoleChat)

function onPlayerCrafted(e)
	local item = e.item_stack.name
	local player = game.players[e.player_index]
	if item == "submachine-gun" then
		player.unlock_achievement("fully-automatic")
	elseif item == "rocket-launcher" then
		player.unlock_achievement("maggots")
	elseif item == "flamethrower" then
		player.unlock_achievement("we-didnt-start-the-fire")
	end
end
script.on_event(defines.events.on_player_crafted_item, onPlayerCrafted)

function onPlaced(e)
	if e.created_entity.type == "entity-ghost" and game.players[e.player_index] then
		game.players[e.player_index].unlock_achievement("ghosted")
	end
end
script.on_event(defines.events.on_built_entity, onPlaced)
script.on_event(defines.events.on_robot_built_entity, onPlaced)

function onResearch(e)
	local research = e.research
	local force = research.force
	if research.name:find("-50") then --A level 50 research
		for index, player in pairs(force.players) do
			player.unlock_achievement("dedication")
		end
	end
end
script.on_event(defines.events.on_research_finished, onResearch)

function onRocketLaunched(event)
	local force = event.rocket.force
	-- if they launch a rocket containing no satellite and no fish
	if event.rocket.get_item_count("satellite") == 0 and event.rocket.get_item_count("raw-fish") == 0 then
		for index, player in pairs(force.players) do
			player.unlock_achievement("you-forgot-something")
		end
	end
end
script.on_event(defines.events.on_rocket_launched, onRocketLaunched)

function onTick(e)
	if e.tick % 8000 == 0 then
		if game.surfaces[1].count_entities_filtered{name = "small-lamp"} >= 200 then
			for index, player in pairs(game.players) do
				player.unlock_achievement("let-there-be-light")
			end
		end
		if game.surfaces[1].count_entities_filtered{name = "solar-panel"} >= 10000 then
			for index, player in pairs(game.players) do
				player.unlock_achievement("praise-the-sun")
			end
		end
	end
	if e.tick % 16000 == 0 then
		if game.surfaces[1].count_entities_filtered{type = "transport-belt"} >= 10000 then
			for index, player in pairs(game.players) do
				player.unlock_achievement("convey-your-ideas")
			end
		end
	end
end
script.on_event(defines.events.on_tick, onTick)
