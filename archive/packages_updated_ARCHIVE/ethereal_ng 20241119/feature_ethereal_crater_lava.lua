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
-- large lava crater
register_decoration(ethereal.fiery, {
	place_on = "ethereal:fiery_dirt",
	fill_ratio = 0.003,
	biomes = {"fiery"},
	schematic = ethereal.volcanol,
	spawn_by = "ethereal:fiery_dirt", num_spawn_by = 4,
	rotation = "random"})

-- small lava crater
register_decoration(ethereal.fiery, {
	place_on = "ethereal:fiery_dirt",
	fill_ratio = 0.01,
	biomes = {"fiery"},
	schematic = ethereal.volcanom,
	spawn_by = "ethereal:fiery_dirt", num_spawn_by = 6})
]]--
