---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    morebricks
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
local brick = {
	{"white", "White"},
	{"grey", "Grey"},
  {"copperaged", "Aged Copper"},  {"cyanaged", "Aged Cyan"},  {"greenaged", "Aged Green"},   {"magentaaged", "Aged Magenta"},   {"orangeaged", "Aged Orange"},   {"pinkaged", "Aged Pink"},  {"steelaged", "Aged Steel"},   {"whiteaged", "Aged White"},  {"yellowaged", "Aged Yellow"},	{"black", "Black"},

	{"yellow", "Yellow"},
	{"green", "Green"},
	{"cyan", "Cyan"},
	{"blue", "Blue"},
	{"magenta", "Magenta"},
	{"orange", "Orange"},
	{"violet", "Violet"},
	{"brown", "Brown"},
	{"pink", "Pink"},
	{"darkgrey", "Dark-Grey"},
	{"darkgreen", "Dark-Green"},     {"gold", "Gold"},     {"copper", "Copper"
},  {"steel", "Steel"} }

local stairs_mod = minetest.get_modpath("stairs")
local stairsplus_mod = minetest.get_modpath("moreblocks")
	and minetest.global_exists("stairsplus")

for _, brick in pairs(brick) do

	-- node definition

	minetest.register_node("morebricks:" .. brick[1], {
		description = brick[2] .. " Brick Block",
		tiles = {"morebricks_" .. brick[1] ..".png"},
		groups = {cracky = 3, bakedclay = 1},
		sounds = default.node_sound_stone_defaults(),
	})

   -- register stairsplus stairs if found
	if stairsplus_mod then

		stairsplus:register_all("morebricks", "morebricks_" .. brick[1], "morebricks:" .. brick[1], {
		
description = brick[2] .. " Brick Block",
			tiles = {"morebricks_" .. brick[1] .. ".png"},
			groups = {cracky = 3},
			sounds = default.node_sound_stone_defaults(),
		})

		stairsplus:register_alias_all("morebricks", brick[1], "morebricks", "morebricks_" .. brick[1])
		minetest.register_alias("stairs:slab_morebricks_".. brick[1], "morebricks:slab_brick_block_" .. brick[1])
		minetest.register_alias("stairs:stair_morebricks_".. brick[1], "morebricks:stair_brick_block_" .. brick[1])

	-- register all stair types for stairs redo
	elseif stairs_mod and stairs.mod then

		stairs.register_all("morebricks_" .. brick[1], "morebricks:" .. brick[1],
			{cracky = 3},
			{"morebricks_" .. brick[1] .. ".png"},
			brick[2] .. " Brick Block",
			default.node_sound_stone_defaults())

	    
stairs.register_stair_and_slab("morebricks_".. brick[1], "bakedclay:".. brick[1],
			{cracky = 3},
			{"morebricks_" .. brick[1] .. ".png"},
			brick[2] .. " Brick Block Stair",
			brick[2] .. " Brick Block Slab",
			default.node_sound_stone_defaults())
 end                          end
]]--
