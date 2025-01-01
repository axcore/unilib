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
minetest.register_node("mapgen:stalagtite", {
	description = "Stalagtite",
	drawtype = "plantlike",
	tiles = {"mapgen_stalagmite0.png"},
	inventory_image = "mapgen_stalagmite0.png",
	is_ground_content = false,
	sunlight_propagates = true,
	paramtype = "light",
	selection_box = {
	type = "fixed",
	fixed = {{-0.3, -0.2, -0.3, 0.3, 0.5, 0.3}}
	},
	walkable = false,
	groups = {crumbly=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mapgen:stalagtite1", {
	description = "Stalagtite",
	drawtype = "plantlike",
	tiles = {"mapgen_stalagmite1.png"},
	inventory_image = "mapgen_stalagmite1.png",
	is_ground_content = false,
	sunlight_propagates = true,
	paramtype = "light",
	selection_box = {
	type = "fixed",
	fixed = {{-0.3, -0.2, -0.3, 0.3, 0.5, 0.3}}
	},
	walkable = false,
	groups = {crumbly=1, oddly_breakable_by_hand=1},
})

minetest.register_node("mapgen:stalagtite2", {
	description = "Stalagtite",
	drawtype = "plantlike",
	tiles = {"mapgen_stalagmite2.png"},
	inventory_image = "mapgen_stalagmite2.png",
	is_ground_content = false,
	sunlight_propagates = true,
	paramtype = "light",
	selection_box = {
	type = "fixed",
	fixed = {{-0.3, -0.2, -0.3, 0.3, 0.5, 0.3}}
	},
	walkable = false,
	groups = {crumbly=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_stone_defaults()
})

minetest.register_node("mapgen:stalagtite3", {
	description = "Stalagtite",
	drawtype = "plantlike",
	tiles = {"mapgen_stalagmite3.png"},
	inventory_image = "mapgen_stalagmite3.png",
	is_ground_content = false,
	sunlight_propagates = true,
	paramtype = "light",
	selection_box = {
	type = "fixed",
	fixed = {{-0.3, -0.2, -0.3, 0.3, 0.5, 0.3}}
	},
	walkable = false,
	groups = {crumbly=1, oddly_breakable_by_hand=1},
	sounds = default.node_sound_stone_defaults()
})
]]--
