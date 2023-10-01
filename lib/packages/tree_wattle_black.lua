---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.tree_wattle_black = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.tree_wattle_black.init()

    return {
        description = "Black wattle tree",
    }

end

function unilib.pkg.tree_wattle_black.exec()

    -- (no burnlevel)
    local sci_name = "Acacia mearnsii"

    unilib.register_tree({
        -- Original to unilib
        part_name = "wattle_black",
        description = S("Black Wattle Wood"),
    })

    unilib.register_node("unilib:tree_wattle_black_trunk", "australia:black_wattle_tree", mode, {
        -- From australia:black_wattle_tree
        description = unilib.annotate(S("Black Wattle Tree Trunk"), sci_name),
        tiles = {
            "unilib_tree_wattle_black_trunk_top.png",
            "unilib_tree_wattle_black_trunk_top.png",
            "unilib_tree_wattle_black_trunk.png",
        },
        groups = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 1, tree = 1},
        sounds = unilib.sound_table.wood,

        drawtype = "nodebox",
        is_ground_content = false,
        node_box = {
            type = "fixed",
            fixed = {-0.375, -0.5, -0.375, 0.375, 0.5, 0.375},
        },
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {-0.375, -0.5, -0.375, 0.375, 0.5, 0.375},
        },

        on_place = minetest.rotate_node,
    })

    unilib.register_tree_wood({
        -- From australia:black_wattle_wood. Creates unilib:tree_wattle_black_wood
        part_name = "wattle_black",
        orig_name = "australia:black_wattle_wood",

        replace_mode = mode,
        description = S("Black Wattle Wood Planks"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2, wood = 1},
    })

    unilib.register_tree_leaves({
        -- From australia:black_wattle_leaves. Creates unilib:tree_wattle_black_leaves
        part_name = "wattle_black",
        orig_name = "australia:black_wattle_leaves",

        replace_mode = mode,
        description = S("Black Wattle Tree Leaves"),
        sapling_rarity = 50,
        sci_name = sci_name,
        visual_scale = 1.3,
    })
    unilib.register_quick_tree_leafdecay("wattle_black")

    unilib.register_tree_sapling({
        -- From australia:black_wattle_sapling. Creates unilib:tree_wattle_black_sapling
        part_name = "wattle_black",
        orig_name = "australia:black_wattle_sapling",

        replace_mode = mode,
        common_group = 2,
        description = S("Black Wattle Tree Sapling"),
        max_volume = 4,
        maxp_table = {x = 6, y = 22, z = 6},
        minp_table = {x = -6, y = 1, z = -6},
        schem_list = {
            {"unilib_tree_wattle_black_1", 5, 1, 5},
            {"unilib_tree_wattle_black_2", 6, 1, 6},
        },
        sci_name = sci_name,
        select_table = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3},
    })

    unilib.register_fence_quick({
        -- From australia:fence_wattle_black_wood. Creates unilib:tree_wattle_black_wood_fence
        part_name = "wattle_black",
        orig_name = "australia:fence_wattle_black_wood",

        replace_mode = mode,
        base_img = "unilib_tree_wattle_black_wood.png",
        description = S("Black Wattle Wood Fence"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_rail_quick({
        -- Original to unilib. Creates unilib:tree_wattle_black_wood_fence_rail
        part_name = "wattle_black",
        orig_name = nil,

        replace_mode = mode,
        base_img = "unilib_tree_wattle_black_wood.png",
        description = S("Black Wattle Wood Fence Rail"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_gate_quick({
        -- Original to unilib. Creates unilib:gate_wattle_black_closed
        part_name = "wattle_black",
        orig_name = {nil, nil},

        replace_mode = mode,
        description = S("Black Wattle Wood Fence Gate"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2},
    })

    for i = 1, 2 do

        unilib.register_decoration("australia_tree_wattle_black_in_eastern_" .. i, {
            -- From australia/biome_eastern_coasts.lua
            deco_type = "schematic",
            schematic = unilib.path_mod .. "/mts/unilib_tree_wattle_black_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 15000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 2 do

        unilib.register_decoration("australia_tree_wattle_black_in_flinders_" .. i, {
            -- From australia/biome_flinders_lofty.lua
            deco_type = "schematic",
            schematic = unilib.path_mod .. "/mts/unilib_tree_wattle_black_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 15000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 2 do

        unilib.register_decoration("australia_tree_wattle_black_in_murray_" .. i, {
            -- From australia/biome_murray_darling_basin.lua
            deco_type = "schematic",
            schematic = unilib.path_mod .. "/mts/unilib_tree_wattle_black_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 15000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 2 do

        unilib.register_decoration("australia_tree_wattle_black_in_range_" .. i, {
            -- From australia/biome_great_dividing_range.lua
            deco_type = "schematic",
            schematic = unilib.path_mod .. "/mts/unilib_tree_wattle_black_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 15000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 2 do

        unilib.register_decoration("australia_tree_wattle_black_in_victoria_" .. i, {
            -- From australia/biome_victorian_forests.lua
            deco_type = "schematic",
            schematic = unilib.path_mod .. "/mts/unilib_tree_wattle_black_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 12000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end

end
