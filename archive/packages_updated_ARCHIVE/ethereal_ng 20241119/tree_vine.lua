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
register_decoration(ethereal.swamp, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.02,
	biomes = {"swamp"},
	schematic = ethereal.vinetree})

decay({"default:tree"}, {"default:apple", "default:leaves", "ethereal:orange",
		"ethereal:orange_leaves", "ethereal:lemon", "ethereal:lemon_leaves",
		"ethereal:vine"}, 3)
]]--
