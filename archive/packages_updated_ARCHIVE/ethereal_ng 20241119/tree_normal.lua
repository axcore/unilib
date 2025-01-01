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
register_sapling("ethereal:big_tree", "Big", "ethereal_big_tree_sapling", 4, 7)

function ethereal.grow_big_tree(pos)
	add_tree(pos, ethereal.bigtree)
end

minetest.register_craft({
	recipe = {{"default:sapling", "default:sapling", "default:sapling"}},
	output = "ethereal:big_tree_sapling"
})

register_decoration(ethereal.jumble, {
	place_on = "default:dirt_with_grass",
	fill_ratio = 0.001,
	biomes = {"jumble"},
	schematic = ethereal.bigtree,
	spawn_by = "default:dirt_with_grass", num_spawn_by = 8})
]]--
