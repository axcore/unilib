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
register_decoration(ethereal.savanna, {
	place_on = {"default:dry_dirt_with_dry_grass", "default:dirt_with_dry_grass"},
	fill_ratio = 0.25,
	biomes = {"savanna"},
	decoration = {"default:dry_grass_2", "default:dry_grass_3", "default:dry_grass_4",
			"default:dry_grass_5"}})

register_decoration(ethereal.mesa, {
	place_on = {"default:dirt_with_dry_grass"},
	fill_ratio = 0.10,
	biomes = {"mesa_redwood"},
	decoration = {"default:dry_grass_2", "default:dry_grass_3", "default:dry_grass_4",
			"default:dry_grass_5"}})

register_decoration(ethereal.caves, {
	place_on = {"default:desert_stone"},
	fill_ratio = 0.005, y_min = 5, y_max = 42,
	biomes = {"caves"},
	decoration = {"default:dry_grass_2", "default:dry_grass_3", "default:dry_shrub"}})
]]--
