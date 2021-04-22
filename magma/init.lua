--- Magma block!

magma_texture = {{
	name = "magma.png",
	animation = {
		type = "vertical_frames",
		aspect_w = 16,
		aspect_h = 16,
		length = 8,
	},
	backface_culling = false,
}}

minetest.register_node("magma:magma", {
	description = "Magma",
	tiles = magma_texture,
	special_tiles = magma_texture,
	is_ground_content = false,
	damage_per_second = 2,
	light_source = 8,
	groups = { cracky = 3 },
})

minetest.register_abm({
	label = "Generate magma",
	nodenames = {"minecraft:cobble"},
	neighbors = {"minecraft:lava_source", "minecraft:lava_flowing"},
	interval = 1.0,
	chance = 1,
	action = function(pos, node, active_object_count, active_object_count_wider)
		minetest.set_node(pos, { name = "magma:magma" })
	end
})