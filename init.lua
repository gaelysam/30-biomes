local path = minetest.get_modpath("30biomes")

minetest.clear_registered_decorations()
minetest.clear_registered_biomes()

local file = io.open(path .. "/biomes.csv", "r")
for line in file:lines() do
	local attribs = line:split(",", true)
	local name, stone, fill, top, dust, sea, river, riverbed, ymin, ymax, heat, humidity = unpack(attribs)

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

		if riverbed and #riverbed > 0 then
			riverbed = riverbed:split("%s", false, 1, true)
			biome.node_riverbed = riverbed[1]
			biome.depth_riverbed = tonumber(riverbed[2] or 1)
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

dofile(path .. "/nodes.lua")

--dofile(path .. "/main_biomes.lua")
--dofile(path .. "/beach_biomes.lua")
--dofile(path .. "/sea_biomes.lua")
dofile(path .. "/decorations.lua")
