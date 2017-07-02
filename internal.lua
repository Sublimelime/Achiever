data:extend{
	{
		type = "build-entity-achievement",
		name = "crafting-manually-is-too-slow",
		order = "a",
		to_build = "assembling-machine-1",
		icon = "__Achiever__/graphics/placeholder.png"
	},
	{
		type = "kill-achievement",
		name = "alien-contact",
		order = "b",
		type_to_kill = "unit",
		in_vehicle = false,
		personally = true,
		amount = 1,
		icon = "__Achiever__/graphics/placeholder.png"
	},
	{
		type = "player-damaged-achievement",
		name = "bitten",
		order = "c",
		type_of_dealer = "unit",
		minimum_damage = 1,
		should_survive = true,
		icon = "__Achiever__/graphics/placeholder.png"
	},
	{
		type = "produce-achievement",
		name = "the-essence-of-discovery",
		order = "d",
		item_product = "science-pack-1",
		amount = 1,
		icon = "__Achiever__/graphics/placeholder.png",
		limited_to_one_game = true
	},
	{
		type = "build-entity-achievement",
		name = "thomas-edison",
		order = "e",
		to_build = "small-lamp",
		icon = "__Achiever__/graphics/placeholder.png"
	},
	{
		type = "build-entity-achievement",
		name = "mathematical",
		order = "f",
		to_build = "arithmetic-combinator",
		icon = "__Achiever__/graphics/placeholder.png"
	},
	{
		type = "build-entity-achievement",
		name = "atom-smashing",
		order = "g",
		to_build = "nuclear-reactor",
		icon = "__Achiever__/graphics/placeholder.png"
	},
	{
		type = "build-entity-achievement",
		name = "accumulating",
		order = "i",
		to_build = "accumulator",
		icon = "__Achiever__/graphics/placeholder.png"
	},
	{
		type = "research-achievement",
		name = "efficient-miner",
		order = "h",
		technology = "mining-productivity-16",
		icon = "__Achiever__/graphics/placeholder.png"
	},
}

data:extend{
	{
		type = "finish-the-game-achievement",
		name = "a-brisk-walk",
	until_second = 3600 * 30, --30 hours
	allowed_in_peaceful_mode = false,
	order = "k",
	icon = "__Achiever__/graphics/placeholder.png",
},
}
