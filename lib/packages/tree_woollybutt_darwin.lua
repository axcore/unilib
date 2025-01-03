---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.tree_woollybutt_darwin = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.tree_woollybutt_darwin.init()

    return {
        description = "Darwin woollybutt tree",
    }

end

function unilib.pkg.tree_woollybutt_darwin.exec()

    local burnlevel = 2
    local sci_name = "Eucalyptus miniata"

    unilib.register_tree({
        -- Original to unilib
        part_name = "woollybutt_darwin",
        description = S("Darwin Woollybutt Wood"),
    })

    unilib.register_tree_trunk({
        -- From australia:darwin_woollybutt_tree. Creates unilib:tree_woollybutt_darwin_trunk
        part_name = "woollybutt_darwin",
        orig_name = "australia:darwin_woollybutt_tree",

        replace_mode = mode,
        common_group = 2,
        description = S("Darwin Woollybutt Tree Trunk"),
        sci_name = sci_name,
    })

    unilib.register_tree_wood({
        -- From australia:darwin_woollybutt_wood. Creates unilib:tree_woollybutt_darwin_wood
        part_name = "woollybutt_darwin",
        orig_name = "australia:darwin_woollybutt_wood",

        replace_mode = mode,
        description = S("Darwin Woollybutt Wood Planks"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2, wood = 1},
    })

    unilib.register_tree_leaves({
        -- From australia:darwin_woollybutt_leaves. Creates unilib:tree_woollybutt_darwin_leaves
        part_name = "woollybutt_darwin",
        orig_name = "australia:darwin_woollybutt_leaves",

        replace_mode = mode,
        description = S("Darwin Woollybutt Tree Leaves"),
        sapling_rarity = 50,
        sci_name = sci_name,
        visual_scale = 1.3,
    })
    unilib.register_quick_tree_leafdecay("woollybutt_darwin")

    unilib.register_tree_sapling({
        -- From australia:darwin_woollybutt_sapling. Creates unilib:tree_woollybutt_darwin_sapling
        part_name = "woollybutt_darwin",
        orig_name = "australia:darwin_woollybutt_sapling",

        replace_mode = mode,
        common_group = 2,
        description = S("Darwin Woollybutt Tree Sapling"),
        max_volume = 4,
        maxp_table = {x = 4, y = 18, z = 4},
        minp_table = {x = -4, y = 1, z = -4},
        schem_list = {
            {"unilib_tree_woollybutt_darwin_1", 3, 1, 3},
            {"unilib_tree_woollybutt_darwin_2", 4, 1, 4},
        },
        sci_name = sci_name,
        select_table = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3},
    })

    unilib.register_fence_quick({
        -- From australia:fence_darwin_woollybutt_wood. Creates
        --      unilib:tree_woollybutt_darwin_wood_fence
        part_name = "woollybutt_darwin",
        orig_name = "australia:fence_darwin_woollybutt_wood",

        replace_mode = mode,
        base_img = "unilib_tree_woollybutt_darwin_wood.png",
        description = S("Darwin Woollybutt Wood Fence"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_rail_quick({
        -- Original to unilib. Creates unilib:tree_woollybutt_darwin_wood_fence_rail
        part_name = "woollybutt_darwin",
        orig_name = nil,

        replace_mode = mode,
        base_img = "unilib_tree_woollybutt_darwin_wood.png",
        description = S("Darwin Woollybutt Wood Fence Rail"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_gate_quick({
        -- Original to unilib. Creates unilib:gate_woollybutt_darwin_closed, etc
        part_name = "woollybutt_darwin",
        orig_name = {nil, nil},

        replace_mode = mode,
        description = S("Darwin Woollybutt Wood Fence Gate"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2},
    })

    for i = 1, 2 do

        unilib.register_decoration_generic("australia_tree_woollybutt_darwin_in_arnhem_" .. i, {
            -- From australia/biome_arnhem_land.lua
            deco_type = "schematic",
            schematic =
                    unilib.core.path_mod .. "/mts/unilib_tree_woollybutt_darwin_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 10000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 2 do

        unilib.register_decoration_generic("australia_tree_woollybutt_darwin_in_gulf_" .. i, {
            -- From australia/biome_gulf_of_carpentaria.lua
            deco_type = "schematic",
            schematic =
                    unilib.core.path_mod .. "/mts/unilib_tree_woollybutt_darwin_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 12000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 2 do

        unilib.register_decoration_generic("australia_tree_woollybutt_darwin_in_kimberley_" .. i, {
            -- From australia/biome_kimberley.lua
            deco_type = "schematic",
            schematic =
                    unilib.core.path_mod .. "/mts/unilib_tree_woollybutt_darwin_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 15000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end
    for i = 1, 2 do

        unilib.register_decoration_generic("australia_tree_woollybutt_darwin_in_queensland_" .. i, {
            -- From australia/biome_far_north_queensland.lua
            deco_type = "schematic",
            schematic =
                    unilib.core.path_mod .. "/mts/unilib_tree_woollybutt_darwin_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 12000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end

end
