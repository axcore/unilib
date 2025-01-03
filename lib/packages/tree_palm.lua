---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ethereal-ng
-- Code:    MIT
-- Media:   MIT/CC0
---------------------------------------------------------------------------------------------------

unilib.pkg.tree_palm = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.ethereal.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.tree_palm.init()

    return {
        description = "Palm tree",
        notes = "Produces coconuts",
        depends = "fruit_coconut",
        optional = "sand_ordinary",
    }

end

function unilib.pkg.tree_palm.exec()

    local burnlevel = 3
    -- (no sci_name)

    unilib.register_tree({
        -- Original to unilib
        part_name = "palm",
        description = S("Palm Tree Wood"),

        burnlevel = burnlevel,
    })

    unilib.register_node("unilib:tree_palm_trunk", "ethereal:palm_trunk", mode, {
        -- From ethereal:palm_trunk
        description = S("Palm Tree Trunk"),
        tiles = {
            "unilib_tree_palm_trunk_top.png",
            "unilib_tree_palm_trunk_top.png",
            "unilib_tree_palm_trunk.png",
        },
        groups = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 1, tree = 1},
        sounds = unilib.global.sound_table.wood,

        -- N.B. no .is_ground_content in original code
        is_ground_content = false,
        paramtype2 = "facedir",

        on_place = core.rotate_node,
    })

    unilib.register_tree_trunk_stripped({
        -- From ethereal:palm_trunk. Creates unilib:tree_palm_trunk_stripped
        part_name = "palm",
        orig_name = "ethereal:palm_trunk",

        replace_mode = mode,
        description = S("Palm Tree Trunk"),
        group_table = {choppy = 2, flammable = 2, oddly_breakable_by_hand = 1, tree = 1},
    })

    local on_place, place_param2
    if not unilib.setting.auto_rotate_wood_flag then
        on_place = core.rotate_node
    else
        place_param2 = 0
    end

    unilib.register_node("unilib:tree_palm_wood", "ethereal:palm_wood", mode, {
        -- From ethereal:palm_wood
        description = S("Palm Tree Wood Planks"),
        tiles = {"unilib_tree_palm_wood.png"},
        groups = {choppy = 2, flammable = 3, oddly_breakable_by_hand = 1, wood = 1},
        sounds = unilib.global.sound_table.wood,

        is_ground_content = false,
        paramtype2 = "facedir",
        -- N.B. no .place_param2 in original code
        place_param2 = place_param2,

        -- N.B. no .on_place in original code
        on_place = on_place,
    })
    unilib.register_craft({
        -- From ethereal:palm_wood
        output = "unilib:tree_palm_wood 4",
        recipe = {
            {"unilib:tree_palm_trunk"},
        },
    })
    unilib.register_tree_wood_cuttings("palm")

    local inv_img = unilib.flora.filter_leaves_img("unilib_tree_palm_leaves.png")
    unilib.register_node("unilib:tree_palm_leaves", "ethereal:palmleaves", mode, {
        -- From ethereal:palmleaves
        description = S("Palm Tree Leaves"),
        tiles = {"unilib_tree_palm_leaves.png"},
        groups = {flammable = 2, leafdecay = 3, leaves = 1, snappy = 3},
        sounds = unilib.global.sound_table.leaves,

        drawtype = unilib.global.leaves_drawtype,
        drop = {
            max_items = 1,
            items = {
                {items = {"unilib:tree_palm_sapling"}, rarity = 10},
                {items = {"unilib:tree_palm_leaves"}},
            },
        },
        inventory_image = inv_img,
        -- N.B. is_ground_content = false not in original code; added to match other leaves
        is_ground_content = false,
        paramtype = "light",
        visual_scale = unilib.global.leaves_visual_scale,
        walkable = unilib.setting.walkable_leaves_flag,
        waving = 1,
        wield_img = inv_img,

        after_place_node = unilib.flora.after_place_leaves,
    })
    unilib.register_leafdecay({
        -- From ethereal:palmleaves
        trunk_type = "palm",
        trunks = {"unilib:tree_palm_trunk"},
        leaves = {"unilib:tree_palm_leaves"},
        others = {"unilib:fruit_coconut"},
        -- N.B. 3 in original code, but these leaves are re-used by the "tree_palm_exposed" package,
        --      which requires a radius of 10
        radius = 10,
    })
    unilib.register_tree_leaves_compacted("unilib:tree_palm_leaves", mode)

    unilib.register_tree_sapling({
        -- From ethereal:palm_sapling. Creates unilib:tree_palm_sapling
        part_name = "palm",
        orig_name = "ethereal:palm_sapling",

        replace_mode = mode,
        burnlevel = burnlevel,
        common_group = 2,
        description = S("Palm Tree Sapling"),
--      max_volume = 4,         -- For ethereal-ng trees, use default value
        maxp_table = {x = 4, y = 9, z = 4},
        minp_table = {x = -4, y = 1, z = -4},
        offset_list = {4, 0, 4},
        select_table = {-4 / 16, -0.5, -4 / 16, 4 / 16, 7 / 16, 4 / 16},
        under_list = {"unilib:sand_ordinary", "default:sand"},
    })

    unilib.register_fence_quick({
        -- From ethereal:fence_palm. Creates unilib:tree_palm_wood_fence
        part_name = "palm",
        orig_name = "ethereal:fence_palm",

        replace_mode = mode,
        base_img = "unilib_tree_palm_wood.png",
        burnlevel = burnlevel,
        description = S("Palm Tree Wood Fence"),
    })

    unilib.register_fence_rail_quick({
        -- From ethereal:fence_rail_palm. Creates unilib:tree_palm_wood_fence_rail
        part_name = "palm",
        orig_name = "ethereal:fence_rail_palm",

        replace_mode = mode,
        burnlevel = burnlevel,
        base_img = "unilib_tree_palm_wood.png",
        description = S("Palm Tree Wood Fence Rail"),
    })

    unilib.register_fence_gate_quick({
        -- From ethereal:fencegate_palm_closed, etc. Creates unilib:gate_palm_closed, etc
        part_name = "palm",
        orig_name = {"ethereal:fencegate_palm_closed", "ethereal:fencegate_palm_open"},

        replace_mode = mode,
        burnlevel = burnlevel,
        description = S("Palm Tree Wood Fence Gate"),
    })

    unilib.register_decoration_generic("ethereal_tree_palm", {
        -- From ethereal-ng/schems.lua
        deco_type = "schematic",
        schematic = unilib.core.path_mod .. "/mts/unilib_tree_palm.mts",

        fill_ratio = 0.0025,
        flags = "place_center_x, place_center_z",
        sidelen = 80,
    })

end
