data:extend{
	{
		type = "build-entity-achievement",
		name = "crafting-manually-is-too-slow",
		order = "a",
		to_build = "assembling-machine-1",
		icon = "__MoreAchievements__/graphics/crafting-manually-is-too-slow.png",
		icon_size = 128
	},
	{
		type = "kill-achievement",
		name = "alien-contact",
		order = "b",
		type_to_kill = "unit",
		in_vehicle = false,
		personally = true,
		amount = 1,
		icon = "__MoreAchievements__/graphics/alien-contact.png",
		icon_size = 128
	},
	{
		type = "player-damaged-achievement",
		name = "bitten",
		order = "c",
		type_of_dealer = "unit",
		minimum_damage = 1,
		should_survive = true,
		icon = "__MoreAchievements__/graphics/bitten.png",
		icon_size = 128
	},
	{
		type = "produce-achievement",
		name = "the-essence-of-discovery",
		order = "d",
		item_product = "science-pack-1",
		amount = 1,
		icon = "__MoreAchievements__/graphics/the-essence-of-discovery-old.png",
		limited_to_one_game = true,
		icon_size = 128
	},
	{
		type = "build-entity-achievement",
		name = "thomas-edison",
		order = "e",
		to_build = "small-lamp",
		icon = "__MoreAchievements__/graphics/thomas-edison.png",
		icon_size = 128
	},
	{
		type = "build-entity-achievement",
		name = "mathematical",
		order = "f",
		to_build = "arithmetic-combinator",
		icon = "__MoreAchievements__/graphics/mathematical.png",
		icon_size = 128
	},
	{
		type = "build-entity-achievement",
		name = "atom-smashing",
		order = "g",
		to_build = "nuclear-reactor",
		icon = "__MoreAchievements__/graphics/atom-smashing.png",
		icon_size = 128
	},
	{
		type = "build-entity-achievement",
		name = "accumulating",
		order = "i",
		to_build = "accumulator",
		icon = "__MoreAchievements__/graphics/accumulating.png",
		icon_size = 128
	},
	{
		type = "research-achievement",
		name = "efficient-miner",
		order = "h",
		technology = "mining-productivity-16",
		icon = "__MoreAchievements__/graphics/efficient-miner.png",
		icon_size = 128
	},
}

data:extend{
	{
		type = "finish-the-game-achievement",
		name = "a-brisk-walk",
		until_second = 3600 * 24, --24 hours,
		allowed_in_peaceful_mode = false,
		order = "k",
		icon = "__MoreAchievements__/graphics/a-brisk-walk.png",
		icon_size = 128
	},
	{
		type = "build-entity-achievement",
		name = "on-the-road-again",
		order = "r",
		to_build = "car",
		icon = "__MoreAchievements__/graphics/on-the-road-again.png",
		icon_size = 128
	},
	{
		type = "group-attack-achievement",
		name = "unending-assault",
		order = "o",
		amount = 100,
		icon = "__base__/graphics/achievement/it-stinks-and-they-dont-like-it.png",
		icon_size = 128
	},
	{
		type = "produce-per-hour-achievement",
		name = "one-rocket-per-minute",
		order = "p",
		item_product = "space-science-pack",
		amount = 60000,
		icon = "__MoreAchievements__/graphics/one-rocket-per-minute.png",
		icon_size = 128
	},
	{
		type = "produce-per-hour-achievement",
		name = "two-rockets-per-minute",
		order = "p",
		item_product = "space-science-pack",
		amount = 120000,
		icon = "__MoreAchievements__/graphics/two-rockets-per-minute.png",
		icon_size = 128
	},
	{
		type = "kill-achievement",
		name = "bulldozed",
		order = "x",
		type_to_kill = "tree",
		damage_type = "impact",
		in_vehicle = true,
		personally = true,
		amount = 500,
		icon = "__base__/graphics/achievement/run-forrest-run.png",
		icon_size = 128
	},
	{
		type = "produce-achievement",
		name = "gear-production-1",
		order = "u",
		item_product = "iron-gear-wheel",
		amount = 10000,
		limited_to_one_game = false,
		icon = "__MoreAchievements__/graphics/gear-production-1.png",
		icon_size = 128
	},
	{
		type = "produce-achievement",
		name = "gear-production-2",
		order = "u",
		item_product = "iron-gear-wheel",
		amount = 1000000,
		limited_to_one_game = false,
		icon = "__MoreAchievements__/graphics/gear-production-2.png",
		icon_size = 128
	},
	{
		type = "produce-achievement",
		name = "gear-production-3",
		order = "u",
		item_product = "iron-gear-wheel",
		amount = 20000000,
		limited_to_one_game = false,
		icon = "__MoreAchievements__/graphics/gear-production-3.png",
		icon_size = 128
	},
	{
		type = "dont-use-entity-in-energy-production-achievement",
		name = "steampunk",
		order = "i",
		last_hour_only = true,
		excluded = "solar-panel",
		included = {"steam-turbine", "steam-engine"},
		minimum_energy_produced = "200GJ",
		icon = "__MoreAchievements__/graphics/steampunk.png",
		icon_size = 128
	},
}

data:extend{
	{
		type = "dont-build-entity-achievement",
		name = "the-olden-days",
		order = "o",
		dont_build = "fluid-wagon",
		allowed_in_peaceful_mode = true,
		icon = "__MoreAchievements__/graphics/the-olden-days.png",
		icon_size = 128
	},
	{
		type = "dont-build-entity-achievement",
		name = "trains-are-too-hard",
		order = "t",
		dont_build = "straight-rail",
		allowed_in_peaceful_mode = true,
		icon = "__MoreAchievements__/graphics/trains-are-too-hard.png",
		icon_size = 128
	},
}
