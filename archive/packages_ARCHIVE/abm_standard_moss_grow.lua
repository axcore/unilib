---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    default
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
--
-- From:    underch
-- Code:    CC0
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
local moss_correspondences = {
	["default:cobble"] = "default:mossycobble",
	["stairs:slab_cobble"] = "stairs:slab_mossycobble",
	["stairs:stair_cobble"] = "stairs:stair_mossycobble",
	["stairs:stair_inner_cobble"] = "stairs:stair_inner_mossycobble",
	["stairs:stair_outer_cobble"] = "stairs:stair_outer_mossycobble",
	["walls:cobble"] = "walls:mossycobble",
}
minetest.register_abm({
	label = "Moss growth",
	nodenames = {"default:cobble", "stairs:slab_cobble", "stairs:stair_cobble",
		"stairs:stair_inner_cobble", "stairs:stair_outer_cobble",
		"walls:cobble"},
	neighbors = {"group:water"},
	interval = 16,
	chance = 200,
	catch_up = false,
	action = function(pos, node)
		node.name = moss_correspondences[node.name]
		if node.name then
			minetest.set_node(pos, node)
		end
	end
})
]]--

--[[
minetest.register_abm({
	label = "Moss growth",
	nodenames = {"group:cobble", "group:cobblestairs", "group:wall"},
	neighbors = {"group:water"},
	interval = 16,
	chance = 200,
	catch_up = false,
	action = function(pos, node)
		for id, s in pairs(underch.stone.defs) do
			if s.mossy_variant then
				if node.name == "underch:" .. id .. "_cobble" then
					minetest.set_node(pos, {name = "underch:" .. id .. "_mossy_cobble"})
				elseif node.name == "stairs:slab_" .. id .. "_cobble" then
					minetest.set_node(pos, {name = "stairs:slab_" .. id .. "_mossy_cobble", param2 = node.param2})
				elseif node.name == "stairs:stair_" .. id .. "_cobble" then
					minetest.set_node(pos, {name = "stairs:stair_" .. id .. "_mossy_cobble", param2 = node.param2})
				elseif node.name == "underch:" .. id .. "_cobble_wall" then
					minetest.set_node(pos, {name = "underch:" .. id .. "_mossy_cobble_wall", param2 = node.param2})
				end
			end
		end
	end
})
]]--
