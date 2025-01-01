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
-- default large pine tree for lower elevation
register_decoration(ethereal.snowy, {
	place_on = {"default:dirt_with_coniferous_litter"},
	fill_ratio = 0.025, y_min = 4, y_max = 50,
	biomes = {"coniferous_forest"},
	schematic = dpath .. "pine_tree.mts"})
    
-- default small pine tree for higher elevation
register_decoration(ethereal.snowy, {
	place_on = {"default:dirt_with_coniferous_litter"},
	fill_ratio = 0.025, y_min = 50, y_max = 140,
	biomes = {"coniferous_forest"},
	schematic = dpath .. "small_pine_tree.mts"})--ethereal.pinetree})

-- default large snowy pine tree for lower elevation
register_decoration(ethereal.alpine, {
	place_on = {"default:dirt_with_snow"},
	fill_ratio = 0.025, y_min = 4, y_max = 50,
	biomes = {"taiga"},
	schematic = dpath .. "snowy_pine_tree_from_sapling.mts"})

-- default small snowy pine for higher elevation
register_decoration(ethereal.snowy, {
	place_on = {"default:dirt_with_snow"},
	fill_ratio = 0.025, y_min = 50, y_max = 140,
	biomes = {"taiga"},
	schematic = dpath .. "snowy_small_pine_tree_from_sapling.mts"})--ethereal.pinetree})
]]--
