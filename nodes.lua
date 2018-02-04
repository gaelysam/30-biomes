-- Mud for swamps
minetest.register_node("30biomes:mud", {
	description = "Mud",
	tiles = {"biomes_mud.png"},
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_renewable = false,
	liquid_alternative_source = "30biomes:mud",
	liquid_alternative_flowing = "30biomes:mud",
	liquid_range = 0,
	post_effect_color = {r=115, g=61, b=31, a=255},
	drowning = 1,
	walkable = false,
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
})

-- Fir tree
minetest.register_node("30biomes:fir_tree", {
	description = "Fir Tree",
	tiles = {"biomes_fir_tree_top.png", "biomes_fir_tree_top.png", "biomes_fir_tree.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {tree = 1, choppy = 2, oddly_breakable_by_hand = 1, flammable = 2},
	sounds = default.node_sound_wood_defaults(),

	on_place = minetest.rotate_node
})

-- Fir needles
minetest.register_node("30biomes:fir_needles", {
	description = "Fir Needles",
	drawtype = "allfaces_optional",
	waving = 1,
	tiles = {"biomes_fir_leaves.png"},
	paramtype = "light",
	is_ground_content = false,
	groups = {snappy = 3, leafdecay = 3, flammable = 2, leaves = 1},
	--[[drop = {
		max_items = 1,
		items = {
			{
				-- player will get sapling with 1/20 chance
				items = {'default:sapling'},
				rarity = 20,
			},
			{
				-- player will get leaves only if he get no saplings,
				-- this is because max_items is 1
				items = {'default:leaves'},
			}
		}
	},]]
	sounds = default.node_sound_leaves_defaults(),

	after_place_node = default.after_place_leaves,
})

minetest.register_alias("30biomes:fir_needles", "fir_needles")
