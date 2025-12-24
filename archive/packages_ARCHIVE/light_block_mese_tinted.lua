---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    colored-meselamps
-- Code:    MIT
-- Media:   MIT
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------

--[[
local dyes = {
    {"white",      "White",     true,  "#fff", default.LIGHT_MAX},
    {"grey",       "Grey",      true,  "#aaa", default.LIGHT_MAX * 0.7},
    {"black",      "Black",     true,  "#000", default.LIGHT_MAX * 0.2},
    {"red",        "Red",       true,  "#f44", default.LIGHT_MAX},
    {"yellow",     "Yellow",    true,  "#ff4", default.LIGHT_MAX},
    {"green",      "Green",     true,  "#4f4", default.LIGHT_MAX},
    {"cyan",       "Cyan",      true,  "#4ff", default.LIGHT_MAX},
    {"blue",       "Blue",      true,  "#44f", default.LIGHT_MAX},
    {"magenta",    "Magenta",   true,  "#f4f", default.LIGHT_MAX},
    {"orange",     "Orange",    true,  "#fa4", default.LIGHT_MAX},
    {"violet",     "Violet",    true,  "#a4f", default.LIGHT_MAX},
    {"brown",      "Brown",     true,  "#882", default.LIGHT_MAX * 0.5},
    {"pink",       "Pink",      true,  "#f48", default.LIGHT_MAX},
    {"dark_grey",  "Dark Grey", true,  "#444", default.LIGHT_MAX * 0.5},
    {"dark_green", "Dark Green",    true,  "#1a1", default.LIGHT_MAX * 0.6},
    {"dark_blue",  "Dark Blue", false, "#11a", default.LIGHT_MAX * 0.6},
    {"dark_red",   "Dark Red",  false, "#a11", default.LIGHT_MAX * 0.6},
    {"lime",       "Lime",      false, "#8f4", default.LIGHT_MAX},
    {"turquoise",  "Turquoise", false, "#4f8", default.LIGHT_MAX},
}

local stairsplus_mod = minetest.get_modpath("moreblocks")
        and minetest.global_exists("stairsplus")

for i = 1, #dyes do
    local name, desc, craft, color, l_value = unpack(dyes[i])

    local def = {
        description = desc .. " Mese Lamp",
        tiles = {"cmeselamp_color.png^[colorize:" .. color .. "^cmeselamp_overlay.png"},
        paramtype = "light",
        sunlight_propagates = true,
        is_ground_content = false,
        groups = {cracky = 3, oddly_breakable_by_hand = 3, colored_meselamps = 1},
        sounds = default.node_sound_glass_defaults(),
        light_source = l_value}

    minetest.register_node("colored_meselamps:" .. name .. "_meselamp", def )

    if (craft == true) then

        minetest.register_craft{
            type = "shapeless",
            output = "colored_meselamps:" .. name .. "_meselamp",
            recipe = {"group:dye,color_" .. name, "default:meselamp"},
        }

        minetest.register_craft{
            type = "shapeless",
            output = "colored_meselamps:" .. name .. "_meselamp",
            recipe = {"group:dye,color_" .. name, "group:colored_meselamps"},
        }


    end

    def.groups["colored_meselamps"] = 0
    -- slopes and slabs do _not_ get to be in the colored_meselamps group, because
    -- otherwise it would be possible to create a full cmeselamp out of a small slab

    if stairsplus_mod then
        stairsplus:register_all("colored_meselamps", "" .. name .. "_meselamp", "colored_meselamps:" .. name .. "_meselamp", def)
    end
end

minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:dark_blue_meselamp",
    recipe = {"group:dye,color_black", "group:dye,color_blue", "default:meselamp"},
}
minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:dark_red_meselamp",
    recipe = {"group:dye,color_black", "group:dye,color_red", "default:meselamp"},
}
minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:lime_meselamp",
    recipe = {"group:dye,color_yellow", "group:dye,color_green", "default:meselamp"},
}
minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:turquoise_meselamp",
    recipe = {"group:dye,color_green", "group:dye,color_cyan", "default:meselamp"},
}
minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:dark_blue_meselamp",
    recipe = {"group:dye,color_black", "group:dye,color_blue", "group:colored_meselamps"},
}
minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:dark_red_meselamp",
    recipe = {"group:dye,color_black", "group:dye,color_red", "group:colored_meselamps"},
}
minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:lime_meselamp",
    recipe = {"group:dye,color_yellow", "group:dye,color_green", "group:colored_meselamps"},
}
minetest.register_craft{
    type = "shapeless",
    output = "colored_meselamps:turquoise_meselamp",
    recipe = {"group:dye,color_green", "group:dye,color_cyan", "group:colored_meselamps"},
}
]]--
