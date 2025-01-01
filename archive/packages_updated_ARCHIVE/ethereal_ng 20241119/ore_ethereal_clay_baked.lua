---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
local function add_stratum(y_min, y_max, node)

	minetest.register_ore({
		ore_type = "stratum",
		ore = node,
		wherein = {"bakedclay:orange"},
		clust_scarcity = 1,
		y_max = y_max,
		y_min = y_min,
		biomes = {"mesa"}
	})
end

-- add baked clay layers (mesa biome is between 20 and 71)

for n = 0, 5 do

	add_stratum(20 + (n * 9), 21 + (n * 9), "bakedclay:brown")
	add_stratum(22 + (n * 9), 23 + (n * 9), "bakedclay:grey")
	add_stratum(25 + (n * 9), 26 + (n * 9), "bakedclay:red")
end
]]--
