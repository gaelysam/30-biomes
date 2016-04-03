-- 30 main biomes

-- 1
minetest.register_biome({
	name = "glacier_1",
	node_dust = "default:snowblock",
	node_top = "default:ice",
	depth_top = 2,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 2,
	node_river_water = "default:ice",
	y_min = -6,
	y_max = 31000,
	heat_point = -11,
	humidity_point = 20,
})

-- 2
minetest.register_biome({
	name = "glacier_2",
	node_dust = "default:snowblock",
	node_top = "default:snowblock",
	depth_top = 3,
	node_filler = "default:ice",
	depth_filler = 4,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 6,
	node_river_water = "default:ice",
	y_min = 1,
	y_max = 31000,
	heat_point = -19,
	humidity_point = 40,
})

-- 3
minetest.register_biome({
	name = "glacier_3",
	node_dust = "default:snowblock",
	node_top = "default:snowblock",
	depth_top = 5,
	node_filler = "default:ice",
	depth_filler = 12,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 10,
	node_river_water = "default:ice",
	y_min = 1,
	y_max = 31000,
	heat_point = -27,
	humidity_point = 80,
})

-- 4
minetest.register_biome({
	name = "taiga",
	node_dust = "default:snow",
	node_top = "default:dirt_with_snow",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 5,
	node_stone = "default:stone",
	y_min = 4,
	y_max = 31000,
	heat_point = 11,
	humidity_point = 67,
})

-- 5
minetest.register_biome({
	name = "tundra",
	node_top = "default:dirt_with_snow",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 3,
	y_max = 31000,
	heat_point = 4,
	humidity_point = 32,
})

-- 6
minetest.register_biome({
	name = "coniferous_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 5,
	y_max = 31000,
	heat_point = 22,
	humidity_point = 71,
})

-- 7
minetest.register_biome({
	name = "cold_gravel_desert",
	node_dust = "default:snow",
	node_top = "default:gravel",
	depth_top = 1,
	node_filler = "default:gravel",
	depth_filler = 1,
	node_stone = "default:stone",
	y_min = -6,
	y_max = 31000,
	heat_point = -2,
	humidity_point = 2,
})

-- 8
minetest.register_biome({
	name = "gravel_desert",
	node_top = "default:gravel",
	depth_top = 1,
	node_filler = "default:gravel",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 2,
	y_max = 31000,
	heat_point = 20,
	humidity_point = -2,
})

-- 9
minetest.register_biome({
	name = "dry_tundra",
	node_top = "default:dirt_with_snow",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 2,
	y_max = 31000,
	heat_point = 4,
	humidity_point = 12,
})

-- 10
minetest.register_biome({
	name = "cold_desert",
	node_stone = "default:stone",
	y_min = 3,
	y_max = 31000,
	heat_point = 32,
	humidity_point = -3,
})

-- 11
minetest.register_biome({
	name = "swamp",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:stone",
	y_min = 1,
	y_max = 31000,
	heat_point = 30,
	humidity_point = 114,
})

-- 12
minetest.register_biome({
	name = "icy_swamp",
	node_dust = "default:snow",
	node_top = "default:dirt_with_snow",
	depth_top = 3,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 1,
	node_river_water = "default:ice",
	y_min = 1,
	y_max = 31000,
	heat_point = -10,
	humidity_point = 107,
})

-- 13
minetest.register_biome({
	name = "stone_grasslands",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_stone = "default:stone",
	y_min = 4,
	y_max = 31000,
	heat_point = 29,
	humidity_point = 22,
})

-- 14
minetest.register_biome({
	name = "mixed_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 5,
	y_max = 31000,
	heat_point = 24,
	humidity_point = 56,
})

-- 15
minetest.register_biome({
	name = "cold_deciduous_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 4,
	y_max = 31000,
	heat_point = 31,
	humidity_point = 48,
})

-- 16
minetest.register_biome({
	name = "deciduous_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:stone",
	y_min = 5,
	y_max = 31000,
	heat_point = 45,
	humidity_point = 65,
})

-- 17
minetest.register_biome({
	name = "bushes",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_stone = "default:stone",
	y_min = 7,
	y_max = 31000,
	heat_point = 43,
	humidity_point = 30,
})

-- 18
minetest.register_biome({
	name = "scrub",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_stone = "default:stone",
	y_min = 8,
	y_max = 31000,
	heat_point = 57,
	humidity_point = 25,
})

-- 19
minetest.register_biome({
	name = "hot_pine_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_stone = "default:stone",
	y_min = 6,
	y_max = 31000,
	heat_point = 65,
	humidity_point = 35,
})

-- 20
minetest.register_biome({
	name = "desert",
	node_top = "default:desert_sand",
	depth_top = 1,
	node_filler = "default:desert_sand",
	depth_filler = 3,
	node_stone = "default:desert_stone",
	y_min = 7,
	y_max = 31000,
	heat_point = 89,
	humidity_point = 9,
})

-- 21
minetest.register_biome({
	name = "sandstone_grasslands",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:sandstone",
	y_min = 3,
	y_max = 31000,
	heat_point = 55,
	humidity_point = 15,
})

-- 22
minetest.register_biome({
	name = "savanna",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_stone = "default:stone",
	y_min = 6,
	y_max = 31000,
	heat_point = 80,
	humidity_point = 24,
})

-- 23
minetest.register_biome({
	name = "desert_stone_grasslands",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_stone = "default:desert_stone",
	y_min = 4,
	y_max = 31000,
	heat_point = 90,
	humidity_point = 41,
})

-- 24
minetest.register_biome({
	name = "red_savanna",
	node_top = "default:dirt_with_dry_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 1,
	node_stone = "default:desert_stone",
	y_min = 5,
	y_max = 31000,
	heat_point = 90,
	humidity_point = 31,
})

-- 25
minetest.register_biome({
	name = "semi-tropical_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 3,
	node_stone = "default:stone",
	y_min = 4,
	y_max = 31000,
	heat_point = 72,
	humidity_point = 61,
})

-- 26
minetest.register_biome({
	name = "rainforest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 4,
	node_stone = "default:stone",
	y_min = 1,
	y_max = 31000,
	heat_point = 89,
	humidity_point = 76,
})

-- 27
minetest.register_biome({
	name = "sandstone_desert",
	node_top = "default:desert_sand",
	depth_top = 1,
	node_filler = "default:desert_sand",
	depth_filler = 1,
	node_stone = "default:sandstone",
	y_min = 6,
	y_max = 31000,
	heat_point = 60,
	humidity_point = 0,
})

-- 28
minetest.register_biome({
	name = "low_deciduous_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 6,
	y_max = 31000,
	heat_point = 40,
	humidity_point = 40,
})

-- 29
minetest.register_biome({
	name = "hot_deciduous_forest",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = 5,
	y_max = 31000,
	heat_point = 61,
	humidity_point = 58,
})

-- 30
minetest.register_biome({
	name = "hot_swamp",
	node_top = "default:dirt_with_grass",
	depth_top = 1,
	node_filler = "default:dirt",
	depth_filler = 4,
	node_stone = "default:stone",
	y_min = 1,
	y_max = 31000,
	heat_point = 83,
	humidity_point = 116,
})
