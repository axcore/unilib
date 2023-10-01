---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.tree_box_cloncurry = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.tree_box_cloncurry.init()

    return {
        description = "Cloncurry box tree",
    }

end

function unilib.pkg.tree_box_cloncurry.exec()

    -- (no burnlevel)
    local sci_name = "Eucalyptus leucophylla"

    unilib.register_tree({
        -- Original to unilib
        part_name = "box_cloncurry",
        description = S("Cloncurry Box Tree Wood"),
    })

    unilib.register_tree_trunk({
        -- From australia:cloncurry_box_tree. Creates unilib:tree_box_cloncurry_trunk
        part_name = "box_cloncurry",
        orig_name = "australia:cloncurry_box_tree",

        replace_mode = mode,
        common_group = 2,
        description = S("Cloncurry Box Tree Trunk"),
        sci_name = sci_name,
    })

    unilib.register_tree_wood({
        -- From australia:cloncurry_box_wood. Creates unilib:tree_box_cloncurry_wood
        part_name = "box_cloncurry",
        orig_name = "australia:cloncurry_box_wood",

        replace_mode = mode,
        description = S("Cloncurry Box Tree Wood Planks"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2, wood = 1},
    })

    unilib.register_tree_leaves({
        -- From australia:cloncurry_box_leaves. Creates unilib:tree_box_cloncurry_leaves
        part_name = "box_cloncurry",
        orig_name = "australia:cloncurry_box_leaves",

        replace_mode = mode,
        description = S("Cloncurry Box Tree Leaves"),
        sapling_rarity = 50,
        sci_name = sci_name,
        visual_scale = 1.3,
    })
    unilib.register_quick_tree_leafdecay("box_cloncurry")

    unilib.register_tree_sapling({
        -- From australia:cloncurry_box_sapling. Creates unilib:tree_box_cloncurry_sapling
        part_name = "box_cloncurry",
        orig_name = "australia:cloncurry_box_sapling",

        replace_mode = mode,
        common_group = 2,
        description = S("Cloncurry Box Tree Sapling"),
        max_volume = 4,
        maxp_table = {x = 6, y = 13, z = 6},
        minp_table = {x = -6, y = 1, z = -6},
        schem_list = {
            {"unilib_tree_box_cloncurry_1", 5, 1, 5},
            {"unilib_tree_box_cloncurry_2", 6, 1, 6},
        },
        sci_name = sci_name,
        select_table = {-0.3, -0.5, -0.3, 0.3, 0.35, 0.3},
    })

    unilib.register_fence_quick({
        -- From australia:fence_box_cloncurry_wood. Creates unilib:tree_box_cloncurry_wood_fence
        part_name = "box_cloncurry",
        orig_name = "australia:fence_box_cloncurry_wood",

        replace_mode = mode,
        base_img = "unilib_tree_box_cloncurry_wood.png",
        description = S("Cloncurry Box Tree Wood Fence"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_rail_quick({
        -- Original to unilib. Creates unilib:tree_box_cloncurry_wood_fence_rail
        part_name = "box_cloncurry",
        orig_name = nil,

        replace_mode = mode,
        base_img = "unilib_tree_box_cloncurry_wood.png",
        description = S("Cloncurry Box Tree Wood Fence Rail"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 2},
    })

    unilib.register_fence_gate_quick({
        -- Original to unilib. Creates unilib:gate_box_cloncurry_closed
        part_name = "box_cloncurry",
        orig_name = {nil, nil},

        replace_mode = mode,
        description = S("Cloncurry Box Tree Wood Fence Gate"),
        group_table = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 2},
    })

    for i = 1, 2 do

        unilib.register_decoration("australia_tree_box_cloncurry_in_gulf_" .. i, {
            -- From australia/biome_gulf_of_carpentaria.lua
            deco_type = "schematic",
            schematic = unilib.path_mod .. "/mts/unilib_tree_box_cloncurry_" .. i .. ".mts",

            fill_ratio = (2 - i + 1) / 10000,
            flags = "place_center_x, place_center_z",
            rotation = "random",
            sidelen = 80,
        })

    end

end
