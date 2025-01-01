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
minetest.register_node("ethereal:lemon_leaves", {
	description = S("Lemon Tree Leaves"),
	drawtype = leaftype,
	visual_scale = leafscale,
	tiles = {"ethereal_lemon_leaves.png"},
	inventory_image = "ethereal_lemon_leaves.png",
	wield_image = "ethereal_lemon_leaves.png",
	paramtype = "light",
	walkable = ethereal.leafwalk,
	waving = 1,
	groups = {snappy = 3, leafdecay = 3, leaves = 1, flammable = 2},
	drop = {
		max_items = 1,
		items = {
			{items = {"ethereal:lemon_tree_sapling"}, rarity = 25},
			{items = {"ethereal:lemon_leaves"}}
		}
	},
	sounds = default.node_sound_leaves_defaults(),
	after_place_node = default.after_place_leaves
})

register_sapling("ethereal:lemon_tree", "Lemon", "ethereal_lemon_tree_sapling", 2, 7)
decay({"default:tree"}, {"default:apple", "default:leaves", "ethereal:orange",
		"ethereal:orange_leaves", "ethereal:lemon", "ethereal:lemon_leaves",
		"ethereal:vine"}, 3)
        
function ethereal.grow_lemon_tree(pos)
	add_tree(pos, ethereal.lemontree)
end

register_decoration(ethereal.mediterranean, {
	place_on = "ethereal:grove_dirt",
	fill_ratio = 0.004, y_min = 5, y_max = 50,
	biomes = {"mediterranean"},
	schematic = ethereal.lemontree})
]]--
