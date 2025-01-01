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
minetest.register_node("ethereal:orange_leaves", {
	description = S("Orange Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_orange_leaves.png"},
	inventory_image = "ethereal_orange_leaves.png",
	wield_image = "ethereal_orange_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:orange_tree_sapling"}, rarity = 15},
			{items = {"ethereal:orange_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})
decay({"default:tree"}, {"default:apple", "default:leaves", "ethereal:orange",
		"ethereal:orange_leaves", "ethereal:lemon", "ethereal:lemon_leaves",
		"ethereal:vine"}, 3)
        
register_sapling("ethereal:orange_tree", "Orange", "ethereal_orange_tree_sapling", 2, 6)

function ethereal.grow_orange_tree(pos)
	add_tree(pos, ethereal.orangetree)
end

register_decoration(ethereal.prairie, {
	place_on = "ethereal:prairie_dirt",
	fill_ratio = 0.01,
	biomes = {"prairie"},
	schematic = ethereal.orangetree})
]]--
