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
local function add_moss(typ, descr, texture, receipe_item)

	minetest.register_node("ethereal:" .. typ .. "_moss", {
		description = S(descr .. " Moss"),
		tiles = {texture},
		groups = {crumbly = 3},
		sounds = default.node_sound_dirt_defaults({
			footstep = {name = "default_grass_footstep", gain = 0.4}})
	})

	minetest.register_craft({
		output = "ethereal:" .. typ .. "_moss",
		recipe = {{"default:dirt", receipe_item}}
	})
end

add_moss("crystal", "Crystal", "ethereal_grass_crystal_top.png", "ethereal:frost_leaves")
]]--
