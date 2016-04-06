local path = minetest.get_modpath("biomes")

minetest.clear_registered_decorations()
minetest.clear_registered_biomes()

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

local file = io.open(path .. "/biomes.csv", "r")
for line in file:lines() do
	local attribs = line:split(",", true)
	local name, stone, fill, top, dust, sea, river, ymin, ymax, heat, humidity = unpack(attribs)

	if #name > 0 and name:sub(1,1) ~= "#" then
		-- Register biome
		local biome = {name=name}

		if stone and #stone > 0 then
			biome.node_stone = stone
		end

		if fill and #fill > 0 then
			fill = fill:split("%s", false, 1, true)
			biome.node_filler = fill[1]
			biome.depth_filler = tonumber(fill[2] or 1)
		end

		if top and #top > 0 then
			top = top:split("%s", false, 1, true)
			biome.node_top = top[1]
			biome.depth_top = tonumber(top[2] or 1)
		end

		if dust and #dust > 0 then
			biome.node_dust = dust
		end

		if sea and #sea > 0 then
			sea = sea:split("%s", false, 1, true)
			biome.node_water_top = sea[1]
			biome.depth_water_top = tonumber(sea[2] or 1)
		end

		if river and #river > 0 then
			biome.node_river_water = river
		end

		biome.y_min = tonumber(ymin) or -31000
		biome.y_max = tonumber(ymax) or 31000
		biome.heat_point = tonumber(heat) or 50
		biome.humidity_point = tonumber(humidity) or 50

		local id = minetest.register_biome(biome)
		
		print("Biome \"" .. name .. "\" registered with ID=" .. id .. ", temperature " .. biome.heat_point .. ", humidity " .. biome.humidity_point .. ".")
	end
end

file:close()

--dofile(path .. "/main_biomes.lua")
--dofile(path .. "/beach_biomes.lua")
--dofile(path .. "/sea_biomes.lua")
dofile(path .. "/decorations.lua")
