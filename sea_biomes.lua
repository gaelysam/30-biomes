-- 1
minetest.register_biome({
	name = "pack_ice",
	node_dust = "default:snow",
	node_top = "default:gravel",
	depth_top = 1,
	node_stone = "default:stone",
	node_water_top = "default:ice",
	depth_water_top = 5,
	node_river_water = "default:ice",
	y_min = -112,
	y_max = -6,
	heat_point = -24,
	humidity_point = 41,
})

-- 2
minetest.register_biome({
	name = "cold_sea",
	node_top = "default:gravel",
	depth_top = 2,
	node_stone = "default:stone",
	y_min = -112,
	y_max = -6,
	heat_point = 20,
	humidity_point = 47,
})

-- 3
minetest.register_biome({
	name = "tempered_sea",
	node_top = "default:sand",
	depth_top = 2,
	node_stone = "default:stone",
	y_min = -112,
	y_max = -6,
	heat_point = 41,
	humidity_point = 48,
})

-- 4
minetest.register_biome({
	name = "hot_sea",
	node_top = "default:sand",
	depth_top = 1,
	node_filler = "default:sand",
	depth_filler = 2,
	node_stone = "default:stone",
	y_min = -112,
	y_max = -6,
	heat_point = 89,
	humidity_point = 51,
})
