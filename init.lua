local path = minetest.get_modpath("biomes")

minetest.clear_registered_biomes()
minetest.clear_registered_decorations()

minetest.register_node("biomes:mud", {
	description = "Mud",
	tiles = {"biomes_mud.png"},
	liquid_viscosity = 8,
	liquidtype = "source",
	liquid_renewable = false,
	liquid_alternative_source = "biomes:mud",
	liquid_alternative_flowing = "biomes:mud",
	liquid_range = 0,
	post_effect_color = {r=115, g=61, b=31, a=255},
	drowning = 1,
	walkable = false,
	groups = {crumbly = 2},
	sounds = default.node_sound_dirt_defaults(),
})

dofile(path .. "/main_biomes.lua")
dofile(path .. "/beach_biomes.lua")
dofile(path .. "/sea_biomes.lua")
dofile(path .. "/decorations.lua")

minetest.register_biome({
	name = "underground",
	node_stone = "default:stone",
	y_min = -113,
	y_max = -31000,
	heat_point = 50,
	humidity_point = 50,
})
