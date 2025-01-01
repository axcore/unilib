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

--[[ (from ethereal-ng circa 2021)
if minetest.registered_nodes["farming:cotton_wild"] then

	minetest.register_decoration({
		name = "farming:cotton_wild",
		deco_type = "simple",
		place_on = {"default:dry_dirt_with_dry_grass"},
		sidelen = 16,
		noise_params = {
			offset = -0.1,
			scale = 0.1,
			spread = {x = 50, y = 50, z = 50},
			seed = 4242,
			octaves = 3,
			persist = 0.7
		},
		biomes = {"savanna"},
		y_max = 31000,
		y_min = 1,
		decoration = "farming:cotton_wild"
	})
end
]]--

--[[ (from farming_redo circa 2024)
local spawn_on = {
	"default:dry_dirt_with_dry_grass", "default:dirt_with_dry_grass",
	"mcl_core:dirt_with_grass"
}

if farming.mapgen == "v6" then
	spawn_on = {"default:dirt_with_grass"}
end

minetest.register_decoration({
	name = "farming:cotton_wild",
	deco_type = "simple",
	place_on = spawn_on,
	sidelen = 16,
	noise_params = {
		offset = 0,
		scale = farming.cotton,
		spread = {x = 100, y = 100, z = 100},
		seed = 4242,
		octaves = 3,
		persist = 0.6
	},
	y_min = 1, y_max = 120,
	decoration = "farming:cotton_wild"
})
]]--
