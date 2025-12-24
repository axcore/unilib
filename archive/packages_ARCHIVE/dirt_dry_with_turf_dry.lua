---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    default
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("default:dry_dirt_with_dry_grass", {
	description = S("Savanna Dirt with Savanna Grass"),
	tiles = {"default_dry_grass.png", "default_dry_dirt.png",
		{name = "default_dry_dirt.png^default_dry_grass_side.png",
			tileable_vertical = false}},
	groups = {crumbly = 3, soil = 1},
	drop = "default:dry_dirt",
	sounds = default.node_sound_dirt_defaults({
		footstep = {name = "default_grass_footstep", gain = 0.4},
	}),
})
minetest.override_item("default:dry_dirt_with_dry_grass", {
	soil = {
		base = "default:dry_dirt_with_dry_grass",
		dry = "farming:dry_soil",
		wet = "farming:dry_soil_wet"
	}
})
]]--
