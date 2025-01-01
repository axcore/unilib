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
local function add_shroom(name, desc, ad)

	minetest.register_node("ethereal:illumishroom" .. ad, {
		description = S(desc .. " Illumishroom"),
		drawtype = "plantlike",
		tiles = {"ethereal_illumishroom_" .. name .. ".png"},
		inventory_image = "ethereal_illumishroom_" .. name .. ".png",
		wield_image = "ethereal_illumishroom_" .. name .. ".png",
		paramtype = "light",
		light_source = 5,
		sunlight_propagates = true,
		walkable = false,
		groups = {dig_immediate = 3, attached_node = 1, flammable = 3},
		sounds = default.node_sound_leaves_defaults(),
		selection_box = {
			type = "fixed", fixed = {-6 / 16, -0.5, -6 / 16, 6 / 16, 0.47, 6 / 16}
		}
	})
end

-- add illuminated cave shrooms
add_shroom("red", "Red", "")
]]--
