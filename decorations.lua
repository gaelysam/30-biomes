-- Mud in swamps
minetest.register_ore({ 
	ore_type = "blob",
	ore = "biomes:mud",
	wherein = {"default:dirt", "default:dirt_with_grass"},
	clust_scarcity = 12*12*12,
	clust_size = 10,
	y_min = -8,
	y_max = 31000,
	noise_threshold = 0.0,
	noise_params = {
		offset = 0.5,
		scale = 0.5,
		spread = {x=4, y=4, z=4},
		seed = 1662,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"swamp", "hot_swamp", "swamp_shore", "hot_swamp_shore"},
})

-- Ice in cold swamps
minetest.register_ore({ 
	ore_type = "blob",
	ore = "default:ice",
	wherein = {"default:dirt", "default:dirt_with_snow"},
	clust_scarcity = 8*8*8,
	clust_size = 6,
	y_min = -8,
	y_max = 31000,
	noise_threshold = 0.0,
	noise_params = {
		offset = 0.5,
		scale = 1,
		spread = {x=4, y=4, z=4},
		seed = 1662,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"icy_swamp", "icy_swamp_shore"},
})

-- Jungle grass
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:dirt_with_grass", "biomes:mud"},
	sidelen = 16,
	noise_params = {
		offset = 0.15,
		scale = -0.1,
		spread = {x = 200, y = 200, z = 200},
		seed = 329,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"rainforest", "desert_stone_grasslands", "semi-tropical_forest", "hot_swamp"},
	y_min = 1,
	y_max = 31000,
	decoration = "default:junglegrass",
})

for length = 5, 1, -1 do
	-- Dense grass on grasslands
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.12 - 0.02 * length,
			scale = 0.05,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"stone_grasslands", "sandstone_grasslands"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})

	-- Grass (mostly on forests)
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.03 - 0.01 * length,
			scale = 0.05,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"coniferous_forest", "deciduous_forest", "mixed_forest", "cold_deciduous_forest", "low_deciduous_forest", "hot_deciduous_forest", "bushes", "hot_pine_forest", "desert_stone_grasslands"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})

	-- Dry grass
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = 0.06 - 0.01 * length,
			scale = 0.05,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 3,
			persist = 0.6
		},
		biomes = {"savanna", "red_savanna", "scrub"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:dry_grass_"..length,
	})

	-- Rare grass
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_grass", "default:dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.01 * length,
			scale = 0.03 + 0.005 * length,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 1,
			persist = 1
		},
		biomes = {"scrub", "tundra", "semi-tropical_forest"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:grass_"..length,
	})

	-- Rare dry grass
	minetest.register_decoration({
		deco_type = "simple",
		place_on = {"default:dirt_with_dry_grass", "default:dirt_with_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.01 * length,
			scale = 0.03 + 0.005 * length,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 1,
			persist = 1
		},
		biomes = {"bushes", "sandstone_grasslands"},
		y_min = 1,
		y_max = 31000,
		decoration = "default:dry_grass_"..length,
	})
end

-- Apple tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.036,
		scale = 0.022,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"deciduous_forest", "cold_deciduous_forest", "low_deciduous_forest", "hot_deciduous_forest"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/apple_tree.mts",
	flags = "place_center_x, place_center_z",
})

-- Rarer apple tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.02,
		scale = 0.02,
		spread = {x = 250, y = 250, z = 250},
		seed = 45,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"semi-tropical_forest", "mixed_forest"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/apple_tree.mts",
	flags = "place_center_x, place_center_z",
})

-- Jungle tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass", "default:dirt"},
	sidelen = 16,
	noise_params = {
		offset = 0.09,
		scale = -0.04,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"rainforest", "mangrove"},
	y_min = 0,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- Rarer jungle tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass", "default:dirt"},
	sidelen = 16,
	noise_params = {
		offset = 0.03,
		scale = -0.02,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"semi-tropical_forest"},
	y_min = 0,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/jungle_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- Pine tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_snow", "default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.036,
		scale = 0.022,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"taiga", "coniferous_forest"},
	y_min = 2,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/pine_tree.mts",
	flags = "place_center_x, place_center_z",
})

-- Rarer pine tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_snow", "default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.020,
		scale = -0.020,
		spread = {x = 250, y = 250, z = 250},
		seed = 45,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"mixed_forest"},
	y_min = 2,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/pine_tree.mts",
	flags = "place_center_x, place_center_z",
})

-- Acacia tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_dry_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.002,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"savanna", "red_savanna"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/acacia_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- Aspen tree
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt_with_grass"},
	sidelen = 16,
	noise_params = {
		offset = 0.0,
		scale = -0.015,
		spread = {x = 250, y = 250, z = 250},
		seed = 2,
		octaves = 3,
		persist = 0.66
	},
	biomes = {"cold_deciduous_forest", "mixed_forest"},
	y_min = 1,
	y_max = 31000,
	schematic = minetest.get_modpath("default").."/schematics/aspen_tree.mts",
	flags = "place_center_x, place_center_z",
	rotation = "random",
})

-- Papyrus
minetest.register_decoration({
	deco_type = "schematic",
	place_on = {"default:dirt"},
	sidelen = 16,
	noise_params = {
		offset = -0.1,
		scale = 0.25,
		spread = {x = 200, y = 200, z = 200},
		seed = 354,
		octaves = 3,
		persist = 0.7
	},
	biomes = {"swamp_shore", "hot_swamp_shore", "mangrove"},
	y_min = 0,
	y_max = 0,
	schematic = minetest.get_modpath("default").."/schematics/papyrus.mts",
})

-- Cactus
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand", "default:sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.0003,
		scale = 0.0009,
		spread = {x = 200, y = 200, z = 200},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"desert", "sandstone_desert"},
	y_min = 5,
	y_max = 31000,
	decoration = "default:cactus",
	height = 2,
	height_max = 5,
})

-- Large cactus
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand"},
	sidelen = 16,
	noise_params = {
		offset = -0.0001,
		scale = 0.0003,
		spread = {x = 200, y = 200, z = 200},
		seed = 230,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"desert"},
	y_min = 5,
	y_max = 31000,
	decoration = "default:cactus",
	height = 2,
	height_max = 5,
})

-- Dry shrub
minetest.register_decoration({
	deco_type = "simple",
	place_on = {"default:desert_sand", "default:dirt_with_snow"},
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = 0.02,
		spread = {x = 200, y = 200, z = 200},
		seed = 7448,
		octaves = 3,
		persist = 0.6
	},
	biomes = {"gravel_desert", "tundra", "dry_tundra", "sandstone_desert", "desert", "savanna", "red_savanna", "scrub"},
	y_min = 2,
	y_max = 31000,
	decoration = "default:dry_shrub",
})
