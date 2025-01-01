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
minetest.register_node("decoblocks:sandstone_pillar", {
	description = "Sandstone Pillar",
	tiles = {
	"decoblocks_sandstone_pillar_top.png",
	"decoblocks_sandstone_pillar_top.png",
	"decoblocks_sandstone_pillar.png",
	},
	paramtype2 = "facedir",
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
	on_place = minetest.rotate_node
})

minetest.register_node("decoblocks:sandstone_pillar_base", {
	description = "Sandstone Pillar Base",
	tiles = {
	"decoblocks_sandstone_pillar_top.png",
	"decoblocks_sandstone_pillar_top.png",
	"decoblocks_sandstone_pillar.png",
	},
	paramtype2 = "facedir",
	groups = {cracky = 3, stone = 2},
	sounds = default.node_sound_stone_defaults(),
	drawtype = "nodebox",
	paramtype = "light",
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, -0.5, -0.5, 0.5, 0.5, 0.5}, -- NodeBox1
			{-0.5625, -0.5, -0.5625, 0.5625, -0.3125, 0.5625}, -- NodeBox2
			{-0.625, -0.5, -0.625, 0.625, -0.4375, 0.625}, -- NodeBox3
		}
	},
	on_place = minetest.rotate_node
})
]]--
