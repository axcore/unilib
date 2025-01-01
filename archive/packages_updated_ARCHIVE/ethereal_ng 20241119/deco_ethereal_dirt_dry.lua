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
	place_on = {"default:dry_dirt_with_dry_grass"},
	sidelen = 4,
	noise_params = {offset = -1.5, scale = -1.5, spread = {x = 200, y = 200, z = 200},
			seed = 329, octaves = 4, persist = 1.0},
	biomes = {"savanna"},
	decoration = "default:dry_dirt", place_offset_y = -1,
	flags = "force_placement"
})
]]--
