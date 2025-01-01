---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng (20241119 update)
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
if not minetest.get_modpath("xanadu") then

	minetest.register_node(":xanadu:poppy", {
		description = S("Poppy"),
		tiles = {"ethereal_poppy.png"},
		inventory_image = "ethereal_poppy.png",
		wield_image = "ethereal_poppy.png",
		sunlight_propagates = true,
		buildable_to = true,
		waving = 1,
		drawtype = "plantlike",
		paramtype = "light",
		walkable = false,
		groups = {flower = 1, flora = 1, snappy = 3, attached_node = 1, flammable = 3},
		selection_box = {
			type = "fixed", fixed = {-0.5, -0.5, -0.5, 0.5, -5/16, 0.5}
		},
		sounds = default.node_sound_leaves_defaults(),
	})
	-- craft dye from plant
	minetest.register_craft({
		output = "dye:red 4",
		recipe = {{"xanadu:poppy"}}
	})
end
]]--
