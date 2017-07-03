data:extend{
	{
		type = "build-entity-achievement",
		name = "crafting-manually-is-too-slow",
		order = "a",
		to_build = "assembling-machine-1",
		icon = "__Achiever__/graphics/crafting-manually-is-too-slow.png"
	},
	{
		type = "kill-achievement",
		name = "alien-contact",
		order = "b",
		type_to_kill = "unit",
		in_vehicle = false,
		personally = true,
		amount = 1,
		icon = "__Achiever__/graphics/alien-contact.png"
	},
	{
		type = "player-damaged-achievement",
		name = "bitten",
		order = "c",
		type_of_dealer = "unit",
		minimum_damage = 1,
		should_survive = true,
		icon = "__Achiever__/graphics/bitten.png"
	},
	{
		type = "produce-achievement",
		name = "the-essence-of-discovery",
		order = "d",
		item_product = "science-pack-1",
		amount = 1,
		icon = "__Achiever__/graphics/the-essence-of-discovery.png",
		limited_to_one_game = true
	},
	{
		type = "build-entity-achievement",
		name = "thomas-edison",
		order = "e",
		to_build = "small-lamp",
		icon = "__Achiever__/graphics/thomas-edison.png"
	},
	{
		type = "build-entity-achievement",
		name = "mathematical",
		order = "f",
		to_build = "arithmetic-combinator",
		icon = "__Achiever__/graphics/mathematical.png"
	},
	{
		type = "build-entity-achievement",
		name = "atom-smashing",
		order = "g",
		to_build = "nuclear-reactor",
		icon = "__Achiever__/graphics/atom-smashing.png"
	},
	{
		type = "build-entity-achievement",
		name = "accumulating",
		order = "i",
		to_build = "accumulator",
		icon = "__Achiever__/graphics/accumulating.png"
	},
	{
		type = "research-achievement",
		name = "efficient-miner",
		order = "h",
		technology = "mining-productivity-16",
		icon = "__Achiever__/graphics/efficient-miner.png"
	},
}

data:extend{
	{
		type = "finish-the-game-achievement",
		name = "a-brisk-walk",
		until_second = 3600 * 24, --24 hours
		allowed_in_peaceful_mode = false,
		order = "k",
		icon = "__Achiever__/graphics/a-brisk-walk.png",
	},
	{
		type = "build-entity-achievement",
		name = "on-the-road-again",
		order = "r",
		to_build = "car",
		icon = "__Achiever__/graphics/on-the-road-again.png",
	},

}
