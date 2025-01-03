---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    bakedclay
-- Code:    MIT
-- Media:   CC
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
-- Baked Clay by TenPlus1

local clay = {
	{"natural", "Natural"},
	{"white", "White"},
	{"grey", "Grey"},
	{"black", "Black"},
	{"red", "Red"},
	{"yellow", "Yellow"},
	{"green", "Green"},
	{"cyan", "Cyan"},
	{"blue", "Blue"},
	{"magenta", "Magenta"},
	{"orange", "Orange"},
	{"violet", "Violet"},
	{"brown", "Brown"},
	{"pink", "Pink"},
	{"dark_grey", "Dark Grey"},
	{"dark_green", "Dark Green"}
}

local techcnc_mod = minetest.get_modpath("technic_cnc")
local stairs_mod = minetest.get_modpath("stairs")
local stairsplus_mod = minetest.get_modpath("moreblocks")
	and minetest.global_exists("stairsplus")

for _, clay in pairs(clay) do

	-- node

	minetest.register_node("bakedclay:" .. clay[1], {
		description = clay[2] .. " Baked Clay",
		tiles = {"baked_clay_" .. clay[1] ..".png"},
		groups = {cracky = 3, bakedclay = 1},
		sounds = default.node_sound_stone_defaults()
	})

	-- craft recipe

	if clay[1] ~= "natural" then

		minetest.register_craft({
			output = "bakedclay:" .. clay[1] .. " 8",
			recipe = {
				{"group:bakedclay", "group:bakedclay", "group:bakedclay"},
				{"group:bakedclay", "dye:" .. clay[1], "group:bakedclay"},
				{"group:bakedclay", "group:bakedclay", "group:bakedclay"}
			}
		})
	end

	-- stairs plus
	if stairsplus_mod then

		stairsplus:register_all("bakedclay", "baked_clay_" .. clay[1],
				"bakedclay:" .. clay[1], {
			description = clay[2] .. " Baked Clay",
			tiles = {"baked_clay_" .. clay[1] .. ".png"},
			groups = {cracky = 3},
			sounds = default.node_sound_stone_defaults()
		})

		stairsplus:register_alias_all("bakedclay", clay[1],
				"bakedclay", "baked_clay_" .. clay[1])

		minetest.register_alias("stairs:slab_bakedclay_".. clay[1],
				"bakedclay:slab_baked_clay_" .. clay[1])

		minetest.register_alias("stairs:stair_bakedclay_".. clay[1],
				"bakedclay:stair_baked_clay_" .. clay[1])

	-- stairs redo
	elseif stairs_mod and stairs.mod then

		stairs.register_all("bakedclay_" .. clay[1], "bakedclay:" .. clay[1],
			{cracky = 3},
			{"baked_clay_" .. clay[1] .. ".png"},
			clay[2] .. " Baked Clay",
			default.node_sound_stone_defaults())

	-- default stairs
	elseif stairs_mod then

		stairs.register_stair_and_slab("bakedclay_".. clay[1], "bakedclay:".. clay[1],
			{cracky = 3},
			{"baked_clay_" .. clay[1] .. ".png"},
			clay[2] .. " Baked Clay Stair",
			clay[2] .. " Baked Clay Slab",
			default.node_sound_stone_defaults())
	end

	-- register bakedclay for use in technic_cnc mod
	if techcnc_mod then

		technic_cnc.register_all("bakedclay:" .. clay[1],
		{cracky = 3, not_in_creative_inventory = 1},
		{"baked_clay_" .. clay[1] .. ".png"},
		clay[2] .. " Baked Clay")
	end
end

-- Terracotta blocks (textures by D3monPixel, thanks for use :)
for _, clay in pairs(clay) do

	if clay[1] ~= "natural" then

		local texture = "baked_clay_terracotta_" .. clay[1] ..".png"

		minetest.register_node("bakedclay:terracotta_" .. clay[1], {
			description = clay[2] .. " Glazed Terracotta",
			tiles = {
				texture .. "",
				texture .. "",
				texture .. "^[transformR180",
				texture .. "",
				texture .. "^[transformR270",
				texture .. "^[transformR90",
			},
			paramtype2 = "facedir",
			groups = {cracky = 3, terracotta = 1},
			sounds = default.node_sound_stone_defaults(),
			on_place = minetest.rotate_node
		})

		minetest.register_craft({
			type = "cooking",
			output = "bakedclay:terracotta_" .. clay[1],
			recipe = "bakedclay:" .. clay[1]
		})
	end
end

minetest.register_alias("bakedclay:terracotta_light_blue", "bakedclay:terracotta_cyan")

-- cook clay block into white baked clay

minetest.register_craft({
	type = "cooking",
	output = "bakedclay:natural",
	recipe = "default:clay",
})

-- 2x2 red baked clay makes 16x clay brick
minetest.register_craft( {
	output = "default:clay_brick 16",
	recipe = {
		{"bakedclay:red", "bakedclay:red"},
		{"bakedclay:red", "bakedclay:red"},
	}
})
]]--
