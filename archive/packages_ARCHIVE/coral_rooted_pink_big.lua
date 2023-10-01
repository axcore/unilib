---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    farlands
-- Code:    LGPL 2.1
-- Media:   CC-BY-SA 3.0 UNPORTED
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
minetest.register_node("mapgen:big_coral", {
	description = "Big Pink Coral",
	drawtype = "plantlike",
	visual_scale = 2,
	tiles = {"mapgen_big_coral.png"},
	paramtype = "light",
	is_ground_content = false,
	buildable_to = true,
	sunlight_propagates = true,
	waving = 1,
	inventory_image = "mapgen_big_coral.png",
	groups = {snappy=3, flammable=1, attached_node=1, sea=1},
	sounds = default.node_sound_leaves_defaults(),
	selection_box = {
		type = "fixed",
		fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5}
	},
	walkable = false,
})
]]--
