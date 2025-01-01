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
minetest.register_node("ethereal:crystal_spike", {
	description = S("Crystal Spike"),
	drawtype = "plantlike",
	tiles = {"ethereal_crystal_spike.png"},
	inventory_image = "ethereal_crystal_spike.png",
	wield_image = "ethereal_crystal_spike.png",
	paramtype = "light",
	light_source = 7,
	sunlight_propagates = true,
	walkable = true,
	damage_per_second = 1,
	groups = {cracky = 1, falling_node = 1, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_glass_defaults(),
	selection_box = {
		type = "fixed", fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 0, 5 / 16}
	},
	node_box = {
		type = "fixed", fixed = {-5 / 16, -0.5, -5 / 16, 5 / 16, 0, 5 / 16}
	},

	dropped_step = function(self, pos, dtime) -- custom function for builtin_item use

		self.ctimer = (self.ctimer or 0) + dtime
		if self.ctimer < 5.0 then return end -- 5 second timer
		self.ctimer = 0

		if self.node_inside and self.node_inside.name ~= "default:water_source" then
			return
		end

		local objs = minetest.get_objects_inside_radius(pos, 0.8)

		if not objs or #objs ~= 2 then return end

		local crystal, mese, ent = nil, nil, nil

		for k, obj in pairs(objs) do

			ent = obj:get_luaentity()

			if ent and ent.name == "__builtin:item" then

				if ent.itemstring == "default:mese_crystal 2" and not mese then

					mese = obj

				elseif ent.itemstring == "ethereal:crystal_spike 2" and not crystal then

					crystal = obj
				end
			end
		end

		if mese and crystal then

			mese:remove()
			crystal:remove()

			minetest.add_item(pos, "ethereal:crystal_ingot")

			return false
		end
	end
})

minetest.register_craftitem("ethereal:crystal_ingot", {
	description = S("Crystal Ingot"),
	inventory_image = "ethereal_crystal_ingot.png",
	wield_image = "ethereal_crystal_ingot.png"
})
minetest.register_craft({
	output = "ethereal:crystal_ingot",
	recipe = {
		{"default:mese_crystal", "ethereal:crystal_spike"},
		{"ethereal:crystal_spike", "default:mese_crystal"},
		{"bucket:bucket_water", ""}
	},
	replacements = {{"bucket:bucket_water", "bucket:bucket_empty"}}
})
minetest.register_craft({
	output = "ethereal:crystal_ingot 9",
	recipe = {{"ethereal:crystal_block"}}
})

minetest.register_node("ethereal:crystal_block", {
	description = S("Crystal Block"),
	tiles = {"ethereal_crystal_block.png"},
	light_source = 9,
	is_ground_content = false,
	groups = {cracky = 1, level = 2, puts_out_fire = 1, cools_lava = 1},
	sounds = default.node_sound_glass_defaults()
minetest.register_craft({
	output = "ethereal:crystal_block",
	recipe = {
		{"ethereal:crystal_ingot", "ethereal:crystal_ingot", "ethereal:crystal_ingot"},
		{"ethereal:crystal_ingot", "ethereal:crystal_ingot", "ethereal:crystal_ingot"},
		{"ethereal:crystal_ingot", "ethereal:crystal_ingot", "ethereal:crystal_ingot"}
	}
})
do_stair(
	"Crystal Block", "crystal_block", "ethereal:crystal_block",
	{cracky = 1, level = 2, puts_out_fire = 1, cools_lava = 1},
	{"ethereal_crystal_block.png"},
	default.node_sound_glass_defaults())
]]--
