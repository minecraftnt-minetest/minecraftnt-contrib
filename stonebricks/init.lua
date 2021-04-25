--- stone bricks! :)

minetest.register_node("stonebricks:stone_bricks", {
	description = "Stone Bricks",
	tiles = {"stonebrick.png"},
	groups = {cracky=3}
})

minetest.register_node("stonebricks:cracked_stone_bricks", {
	description = "Cracked Stone Bricks",
	tiles = {"stonebrick_cracked.png"},
	groups = {cracky=3}
})

minetest.register_node("stonebricks:mossy_stone_bricks", {
	description = "Mossy Stone Bricks",
	tiles = {"stonebrick_mossy.png"},
	groups = {cracky=3}
})

minetest.register_craft({
	output = "stonebricks:stone_bricks",
	recipe = {
		{"minecraft:stone", "minecraft:stone"},
		{"minecraft:stone", "minecraft:stone"},
	}
})

minetest.register_craft({
	output = "stonebricks:mossy_stone_bricks",
	recipe = {
		{"stonebricks:stone_bricks", "minecraft:water_bucket"},
	}
})

minetest.register_craft({
	type = "cooking",
	output = "stonebricks:cracked_stone_bricks",
	recipe = "stonebricks:stone_bricks",
	cooktime = 10,
})