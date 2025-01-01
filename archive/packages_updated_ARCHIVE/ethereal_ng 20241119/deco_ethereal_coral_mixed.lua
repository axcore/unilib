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
register_decoration(1, {
	name = "default:corals",
	place_on = {"default:sand"},
	sidelen = 4, y_min = -8, y_max = -2,
	noise_params = {offset = -4, scale = 4, spread = {x = 50, y = 50, z = 50},
			seed = 7013, octaves = 3, persist = 0.7},
	biomes = {"desert_ocean", "savanna_ocean", "rainforest_ocean"},
	flags = "force_placement",
	decoration = {"default:coral_green", "default:coral_pink", "default:coral_cyan",
			"default:coral_brown", "default:coral_orange", "default:coral_skeleton"},
	place_offset_y = -1})

if ethereal.reefs == 1 then

	-- override corals so crystal shovel can pick them up intact
	minetest.override_item("default:coral_skeleton", {groups = {crumbly = 3}})
	minetest.override_item("default:coral_orange", {groups = {crumbly = 3}})
	minetest.override_item("default:coral_brown", {groups = {crumbly = 3}})

	register_decoration(1, {
		place_on = {"default:sand"},
		noise_params = {
			offset = -0.15, scale = 0.1, spread = {x = 100, y = 100, z = 100},
			seed = 7013, octaves = 3, persist = 1},
		biomes = {"desert_ocean", "grove_ocean"},
		y_min = -8, y_max = -2,
		schematic = path .. "corals.mts",
		rotation = "random"})
end
]]--
