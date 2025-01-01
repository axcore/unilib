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
register_decoration(ethereal.glacier, {
	place_on = "default:snowblock",
	fill_ratio = 0.0005, y_min = 3, y_max = 30,
	biomes = {"glacier"},
	schematic = ethereal.igloo, place_offset_y = -1,
	spawn_by = "default:snowblock", num_spawn_by = 8,
	flags = "place_center_x, place_center_z, force_placement",
	rotation = "random"})
]]--
