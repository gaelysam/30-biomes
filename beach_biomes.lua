-- 1
minetest.register_biome({
	name = "gravel_beach",
	node_top = "default:gravel",
	depth_top = 1,
	node_filler = "default:gravel",
	depth_filler = 3,
	node_stone = "default:stone",
	y_min = -7,
	y_max = 6,
	heat_point = 19,
	humidity_point = 19,
})

-- 2
minetest.register_biome({
	name = "sand_dunes",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_stone = "default:stone",
	y_min = -5,
	y_max = 5,
	heat_point = 21,
	humidity_point = 61,
})

-- 3
minetest.register_biome({
	name = "mangrove",
	node_top = "default:dirt",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 4,
	node_stone = "default:stone",
	y_min = -4,
	y_max = 0,
	heat_point = 96,
	humidity_point = 106,
})

-- 4
minetest.register_biome({
	name = "desert_dunes",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = -5,
	y_max = 6,
	heat_point = 70,
	humidity_point = 6,
})

-- 5
minetest.register_biome({
	name = "hot_sand_dunes",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 3,
	node_stone = "default:stone",
	y_min = -5,
	y_max = 5,
	heat_point = 106,
	humidity_point = 49,
})

-- 6
minetest.register_biome({
	name = "tundra_dunes",
	node_dust = "default:snow",
	node_top = "default:sand",
	depth_top = 2,
	node_filler = "default:gravel",
	depth_filler = 1,
	node_stone = "default:stone",
	y_min = -5,
	y_max = 2,
	heat_point = 5,
	humidity_point = 21,
})

-- Glacier 2 without snow
minetest.register_biome({
	name = "glacier_2_shore",
	node_dust = "default:snowblock",
	node_top = "default:ice",
	depth_top = 4,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 6,
	node_river_water = "default:ice",
	y_min = -4,
	y_max = 0,
	heat_point = -19,
	humidity_point = 40,
})

-- Glacier 3 without snow
minetest.register_biome({
	name = "glacier_3_shore",
	node_dust = "default:snowblock",
	node_top = "default:ice",
	depth_top = 12,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 6,
	node_river_water = "default:ice",
	y_min = -4,
	y_max = 0,
	heat_point = -27,
	humidity_point = 80,
})

-- Swamp without grass
minetest.register_biome({
	name = "swamp_shore",
	node_top = "default:dirt",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:stone",
	y_min = -3,
	y_max = 0,
	heat_point = 30,
	humidity_point = 114,
})

-- Icy swamp without snow
minetest.register_biome({
	name = "icy_swamp_shore",
	node_dust = "default:snow",
	node_top = "default:dirt",
	depth_top = 3,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 1,
	node_river_water = "default:ice",
	y_min = -4,
	y_max = 0,
	heat_point = -10,
	humidity_point = 107,
})

-- Hot swamp without grass
minetest.register_biome({
	name = "hot_swamp_shore",
	node_top = "default:dirt",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 4,
	node_stone = "default:stone",
	y_min = -3,
	y_max = 0,
	heat_point = 83,
	humidity_point = 116,
})
