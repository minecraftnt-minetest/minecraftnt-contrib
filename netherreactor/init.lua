
minetest.register_node("netherreactor:nether_reactor", {
	description = "Nether Reactor",
	tiles = {"nether_reactor.png"},
	groups = {cracky=3},
	on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
		correct_structure = true

		if  minetest.get_node({ x = pos.x - 1, y = pos.y - 1, z = pos.z - 1 }).name ~= "minecraft:gold_block"
		or	minetest.get_node({ x = pos.x, y = pos.y - 1, z = pos.z - 1 }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y - 1, z = pos.z - 1 }).name ~= "minecraft:gold_block"
		or	minetest.get_node({ x = pos.x - 1, y = pos.y - 1, z = pos.z }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x, y = pos.y - 1, z = pos.z }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y - 1, z = pos.z }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x - 1, y = pos.y - 1, z = pos.z + 1 }).name ~= "minecraft:gold_block"
		or	minetest.get_node({ x = pos.x, y = pos.y - 1, z = pos.z + 1 }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y - 1, z = pos.z + 1 }).name ~= "minecraft:gold_block"

		or	minetest.get_node({ x = pos.x - 1, y = pos.y, z = pos.z - 1 }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x, y = pos.y, z = pos.z - 1 }).name ~= "air"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y, z = pos.z - 1 }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x - 1, y = pos.y, z = pos.z }).name ~= "air"
		or	minetest.get_node({ x = pos.x, y = pos.y, z = pos.z }).name ~= "netherreactor:nether_reactor"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y, z = pos.z }).name ~= "air"
		or	minetest.get_node({ x = pos.x - 1, y = pos.y, z = pos.z + 1 }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x, y = pos.y, z = pos.z + 1 }).name ~= "air"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y, z = pos.z + 1 }).name ~= "minecraft:cobble"

		or	minetest.get_node({ x = pos.x - 1, y = pos.y + 1, z = pos.z - 1 }).name ~= "air"
		or	minetest.get_node({ x = pos.x, y = pos.y + 1, z = pos.z - 1 }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y + 1, z = pos.z - 1 }).name ~= "air"
		or	minetest.get_node({ x = pos.x - 1, y = pos.y + 1, z = pos.z }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x, y = pos.y + 1, z = pos.z }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y + 1, z = pos.z }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x - 1, y = pos.y + 1, z = pos.z + 1 }).name ~= "air"
		or	minetest.get_node({ x = pos.x, y = pos.y + 1, z = pos.z + 1 }).name ~= "minecraft:cobble"
		or	minetest.get_node({ x = pos.x + 1, y = pos.y + 1, z = pos.z + 1 }).name ~= "air"
		then
			correct_structure = false
		end

		if correct_structure then
			minetest.log("Active!")
		else
			minetest.log("Not the correct pattern!")
		end
	end
})