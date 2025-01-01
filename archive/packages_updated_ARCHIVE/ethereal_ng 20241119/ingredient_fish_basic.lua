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
-- fish and where they can be caught
local fish_items = {
	"ethereal:fish_bluefin",
	"ethereal:fish_blueram",
	"ethereal:fish_catfish",
	"ethereal:fish_plaice",
	"ethereal:fish_salmon",
	{"ethereal:fish_clownfish", "savanna"},
	{"ethereal:fish_pike", "grassland_ocean"},
	{"ethereal:fish_flathead", "rainforest"},
	{"ethereal:fish_pufferfish", "desert_ocean"},
	{"ethereal:fish_cichlid", "rainforest_ocean"},
	{"ethereal:fish_coy", "bamboo"},
	{"ethereal:fish_tilapia", "bamboo"},
	{"ethereal:fish_trevally", "bamboo"},
	{"ethereal:fish_angler", "ocean"},
	{"ethereal:fish_jellyfish", "ocean"},
	{"ethereal:fish_seahorse", "ocean"},
	{"ethereal:fish_seahorse_green", "rainforest_ocean"},
	{"ethereal:fish_seahorse_pink", "mushroom_ocean"},
	{"ethereal:fish_seahorse_blue", "coniferous_forest_ocean"},
	{"ethereal:fish_seahorse_yellow", "desert_ocean"},
	{"ethereal:fish_parrot", "desert"},
	{"ethereal:fish_piranha", "rainforest"},
	{"ethereal:fish_tuna", "rainforest"},
	{"ethereal:fish_trout", "ocean"},
	{"ethereal:fish_cod", "ocean"},
	{"ethereal:fish_flounder", "ocean"},
	{"ethereal:fish_redsnapper", "ocean"},
	{"ethereal:fish_squid", "ocean"},
	{"ethereal:fish_shrimp", "ocean"},
	{"ethereal:fish_carp", "swamp"},
	{"ethereal:fish_tetra", "grayness_ocean"},
	{"ethereal:fish_mackerel", "glacier"}
}

-- junk items to be found
local junk_items = {
	"ethereal:bowl",
	"default:stick",
	"farming:string",
	"default:papyrus",
	"dye:black",
	"flowers:waterlily",
	"default:paper",
	"flowers:mushroom_red",
	"vessels:glass_bottle",
	{"ethereal:bamboo", "bamboo"},
	mod_bonemeal and "bonemeal:bone" or "default:stick",
	mod_armor and "3d_armor:boots_wood 6000" or "default:stick"
}

-- bonus items to be found
local bonus_items = {
	mod_mobs and "mobs:nametag" or "fireflies:bug_net",
	mod_mobs and "mobs:net" or "default:sapling",
	"fireflies:firefly_bottle",
	mod_mobs and "mobs:saddle" or "farming:cotton_wild",
	"default:book",
	{"ethereal:firethorn", "glacier"},
	{"ethereal:crystal_spike", "frost"},
	{"ethereal:banana_bunch", "grove"},
	"tnt:tnt_stick",
	"bucket:bucket_empty",
	"default:sword_steel 12000",
	"ethereal:fishing_rod 9000"
}

-- global add item function
ethereal.add_item = function(fish, junk, bonus)

	if fish and fish ~= "" then table.insert(fish_items, fish) end

	if junk and junk ~= "" then table.insert(junk_items, junk) end

	if bonus and bonus ~= "" then table.insert(bonus_items, bonus) end
end

local fish = {
	{"Blue Fin", "bluefin", 2},
	{"Blue Ram", "blueram", 2},
	{"Catfish", "catfish", 2},
	{"Clownfish", "clownfish", 2},
	{"Pike", "pike", 2},
	{"Flathead", "flathead", 2},
	{"Plaice", "plaice", 2},
	{"Pufferfish", "pufferfish", -2},
	{"Coy", "coy", 2},
	{"Salmon", "salmon", 2},
	{"Cichlid", "cichlid", 2},
	{"Angler", "angler", 2},
	{"Jellyfish", "jellyfish", 0},
	{"Seahorse", "seahorse", 0},
	{"Piranha", "piranha", 2},
	{"Trout", "trout", 2}
}

for n = 1, #fish do

	local usage
	local groups

	if fish[n][3] > 0 then
		usage = minetest.item_eat(fish[n][3])
		groups = {food_fish_raw = 1, ethereal_fish = 1}
	end

	minetest.register_craftitem("ethereal:fish_" .. fish[n][2], {
		description = S(fish[n][1]),
		inventory_image = "ethereal_fish_" .. fish[n][2] .. ".png",
		on_use = usage,
		groups = groups
	})
end

local junk_items = {
	"ethereal:bowl",
	"default:stick",
	"farming:string",
	"default:papyrus",
	"dye:black",
	{"ethereal:bamboo", "bamboo"}
}

local bonus_items = {
	"mobs:nametag",
	"mobs:saddle",
	"flowers:waterlily",
	"default:book",
	{"ethereal:crystal_spike", "frost"},
	{"ethereal:banana_bunch", "grove"}
}

-- table of fish and edibility
local fish = {
	{"Blue Fin", "bluefin", 2},
	{"Blue Ram Chichlid", "blueram", 2},
	{"Common Carp", "carp", 2},
	{"Cod", "cod", 2},
	{"Redtail Catfish", "catfish", 2},
	{"Clownfish", "clownfish", 2},
	{"Northern Pike", "pike", 2},
	{"Dusky Flathead", "flathead", 2},
	{"Plaice", "plaice", 2},
	{"Tiger Pufferfish", "pufferfish", -2},
	{"Coy", "coy", 2},
	{"European Flounder", "flounder", 2},
	{"Atlantic Salmon", "salmon", 2},
	{"Iceblue Zebra Cichlid", "cichlid", 2},
	{"Angler", "angler", 2},
	{"Moon Jellyfish", "jellyfish", 0},
	{"Pacific Mackerel", "mackerel", 2},
	{"Piranha", "piranha", 2},
	{"Rainbow Trout", "trout", 2},
	{"Red Snapper", "redsnapper", 2},
	{"Red Seahorse", "seahorse", 0},
	{"Green Seahorse", "seahorse_green", 0},
	{"Pink Seahorse", "seahorse_pink", 0},
	{"Blue Seahorse", "seahorse_blue", 0},
	{"Yellow Seahorse", "seahorse_yellow", 0},
	{"Yellowfin Tuna", "tuna", 2},
	{"Humboldt Squid", "squid", 0},
	{"White Shrimp", "shrimp", 0},
	{"Neon Tetra", "tetra", 1},
	{"Tilapia", "tilapia", 2},
	{"Golden Trevally", "trevally", 2},
	{"Stoplight Parrotfish", "parrot", 2}
}

-- register above fish
for n = 1, #fish do

	local usage
	local groups = nil

	if fish[n][3] > 0 then
		usage = minetest.item_eat(fish[n][3])
		groups = {food_fish_raw = 1, ethereal_fish = 1}
	end

	minetest.register_craftitem("ethereal:fish_" .. fish[n][2], {
		description = S(fish[n][1]),
		inventory_image = "ethereal_fish_" .. fish[n][2] .. ".png",
		on_use = usage,
		groups = groups
	})

	if groups then
		ethereal.add_eatable("ethereal:fish_" .. fish[n][2], fish[n][3])
	end
end

-- Make Neon Tetra glow slightly
minetest.override_item("ethereal:fish_tetra", {light_source = 3})
]]--
