---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.tree_gum_river_red = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.tree_gum_river_red.init()

    return {
        description = "River red gum tree",
        optional = "mushroom_brown",
    }

end

function unilib.pkg.tree_gum_river_red.exec()

    local burnlevel = 3
    local sci_name = "Eucalyptus camaldulensis"

    unilib.register_tree({
        -- Original to unilib
        part_name = "gum_river_red",
        description = S("River Red Gum Wood"),
    })

    unilib.register_tree_trunk({
        -- From australia:river_red_gum_tree. Creates unilib:tree_gum_river_red_trunk
        part_name = "gum_river_red",
        orig_name = "australia:river_red_gum_tree",

        replace_mode = mode,
        common_group = 2,
        description = S("River Red Gum Tree Trunk"),
        sci_name = sci_name,
    })

    unilib.register_tree_wood({
        -- From australia:river_red_gum_wood. Creates unilib:tree_gum_river_red_wood
        part_name = "gum_river_red",
        orig_name = "australia:river_red_gum_wood",

        replace_mode = mode,
        description = S("River Red Gum Wood Planks"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2, wood = 1},
    })

    unilib.register_tree_leaves({
        -- From australia:river_red_gum_leaves. Creates unilib:tree_gum_river_red_leaves
        part_name = "gum_river_red",
        orig_name = "australia:river_red_gum_leaves",

        replace_mode = mode,
        description = S("River Red Gum Tree Leaves"),
        sapling_rarity = 50,
        sci_name = sci_name,
        visual_scale = 1.3,
    })
    unilib.register_quick_tree_leafdecay("gum_river_red")

    unilib.register_tree_sapling({
        -- From australia:river_red_gum_sapling. Creates unilib:tree_gum_river_red_sapling
        part_name = "gum_river_red",
        orig_name = "australia:river_red_gum_sapling",

        replace_mode = mode,
        common_group = 2,
        description = S("River Red Gum Tree Sapling"),
        max_volume = 4,
        maxp_table = {x = 13, y = 35, z = 13},
        minp_table = {x = -13, y = 1, z = -13},
        schem_list = {
            {"unilib_tree_gum_river_red_1", 10, 1, 10},
            {"unilib_tree_gum_river_red_2", 11, 1, 11},
            {"unilib_tree_gum_river_red_3", 12, 1, 12},
            {"unilib_tree_gum_river_red_4", 13, 1, 13},
        },
        sci_name = sci_name,
        select_table = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3},
    })

    unilib.register_fence_quick({
        -- From australia:fence_gum_river_red_wood. Creates unilib:tree_gum_river_red_wood_fence
        part_name = "gum_river_red",
        orig_name = "australia:fence_gum_river_red_wood",

        replace_mode = mode,
        base_img = "unilib_tree_gum_river_red_wood.png",
        description = S("River Red Gum Wood Fence"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_rail_quick({
        -- Original to unilib. Creates unilib:tree_gum_river_red_wood_fence_rail
        part_name = "gum_river_red",
        orig_name = nil,

        replace_mode = mode,
        base_img = "unilib_tree_gum_river_red_wood.png",
        description = S("River Red Gum Wood Fence Rail"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_gate_quick({
        -- Original to unilib. Creates unilib:gate_gum_river_red_closed, etc
        part_name = "gum_river_red",
        orig_name = {nil, nil},

        replace_mode = mode,
        description = S("River Red Gum Wood Fence Gate"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2},
    })

    -- N.B. Tweaked these schematics to remove a rogue tree trunk node at the top
    for i = 1, 4 do

        unilib.register_decoration_generic("australia_tree_gum_river_red_in_central_" .. i, {
            -- From australia/biome_central_australia.lua
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_" .. i .. ".mts",

            fill_ratio = (4 - i + 1) / 20000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 4 do

        unilib.register_decoration_generic("australia_tree_gum_river_red_in_eastern_" .. i, {
            -- From australia/biome_eastern_coasts.lua
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_" .. i .. ".mts",

            fill_ratio = (4 - i + 1) / 20000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 4 do

        unilib.register_decoration_generic("australia_tree_gum_river_red_in_flinders_" .. i, {
            -- From australia/biome_flinders_lofty.lua
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_" .. i .. ".mts",

            fill_ratio = (4 - i + 1) / 20000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 4 do

        unilib.register_decoration_generic("australia_tree_gum_river_red_in_mulga_lands_" .. i, {
            -- From australia/biome_mulga_lands.lua
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_" .. i .. ".mts",

            fill_ratio = (4 - i + 1) / 20000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 4 do

        unilib.register_decoration_generic("australia_tree_gum_river_red_in_murray_" .. i, {
            -- From australia/biome_murray_darling_basin.lua
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_" .. i .. ".mts",

            fill_ratio = (4 - i + 1) / 10000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 4 do

        unilib.register_decoration_generic("australia_tree_gum_river_red_in_range_" .. i, {
            -- From australia/biome_great_dividing_range.lua
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_" .. i .. ".mts",

            fill_ratio = (4 - i + 1) / 15000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 4 do

        unilib.register_decoration_generic("australia_tree_gum_river_red_in_victoria_" .. i, {
            -- From australia/biome_victorian_forests.lua
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_" .. i .. ".mts",

            fill_ratio = (4 - i + 1) / 20000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end

    if unilib.global.pkg_executed_table["mushroom_brown"] ~= nil then

        unilib.register_decoration_generic("australia_tree_gum_river_red_log", {
            -- From australia/biome_flinders_lofty.lua, etc
            deco_type = "schematic",
            schematic = unilib.core.path_mod .. "/mts/unilib_tree_gum_river_red_log.mts",

            flags = "place_center_x",
            noise_params = {
                octaves = 3,
                offset = 0.0018,
                persist = 0.66,
                scale = 0.0011,
                seed = 33,
                spread = {x = 250, y = 250, z = 250},
            },
            rotation = "random",
            sidelen = 16,
        })

    end

end
