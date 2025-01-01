---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- stairs_populate_tables.lua
--      Populate global tables for stairs
---------------------------------------------------------------------------------------------------

local S = unilib.intllib

---------------------------------------------------------------------------------------------------
-- Populate global tables for stairs
---------------------------------------------------------------------------------------------------

unilib.global.stair_cost_table = {
    _stair_simple = 6,
    _stair_inner = 7,
    _stair_outer = 5,
    _stair_slab = 4,
    _stair_simple_inverted = 6,
    _stair_simple_half = 3,
    _stair_simple_half_inverted = 3,
    _stair_simple_half_right = 3,
    _stair_simple_half_right_inverted = 3,
    _stair_corner = 6,
    _stair_corner_half = 3,
    _stair_corner_half_inverted = 3,
    _stair_inner_inverted = 7,
    _stair_outer_inverted = 5,
    _stair_slab_inverted = 4,
    _stair_slab_quarter = 2,
    _stair_slab_quarter_inverted = 2,
    _stair_slab_three_quarter = 6,
    _stair_slab_three_quarter_inverted = 6,
    _stair_tile = 4,
    _stair_tile_quarter = 2,
    _stair_tile_three_quarter = 6,
    _stair_panel_bottom = 2,
    _stair_panel_top = 2,
    _stair_panel_vertical = 2,
    _stair_micro_bottom = 1,
    _stair_micro_top = 1,
    _stair_micro_bottom_cut_eighth = 1,
    _stair_micro_bottom_cut_quarter = 1,
    _stair_micro_bottom_cut_half = 1,
    _stair_panel_vertical_sliced_eighth = 2,
    _stair_panel_vertical_sliced_quarter = 2,
    _stair_panel_vertical_sliced_half = 2,
    _stair_panel_bottom_cut_eighth = 1,
    _stair_panel_bottom_cut_quarter = 1,
    _stair_panel_bottom_cut_half = 1,
    _stair_tile_sliced_eighth = 4,
    _stair_tile_sliced_quarter = 4,
    _stair_tile_sliced_half = 3,
    _stair_slab_cut_eighth = 1,
    _stair_slab_cut_quarter = 1,
    _stair_slab_cut_half = 2,
    _stair_slab_sliced_eighth = 8,
    _stair_slab_sliced_quarter = 7,
    _stair_slab_sliced_half = 6,
    _stair_box_sided_two = 1,
    _stair_box_sided_three_corner = 2,
    _stair_box_sided_three = 2,
    _stair_slope = 4,
    _stair_slope_half = 2,
    _stair_slope_half_raised = 6,
    _stair_slope_inner = 7,
    _stair_slope_inner_half = 3,
    _stair_slope_inner_half_raised = 7,
    _stair_slope_inner_cut = 7,
    _stair_slope_inner_cut_half = 4,
    _stair_slope_inner_cut_half_raised = 8,
    _stair_slope_outer = 3,
    _stair_slope_outer_half = 2,
    _stair_slope_outer_half_raised = 6,
    _stair_slope_outer_cut = 2,
    _stair_slope_outer_cut_half = 1,
    _stair_slope_outer_cut_half_raised = 3,
    _stair_slope_cut = 4,
    _stair_steps = 4,
    _stair_steps_sliced_eighth = 1,
    _stair_steps_sliced_quarter = 1,
    _stair_steps_sliced_half = 2,
    _stair_corner_roof = 2,
    _stair_corner_roof_inverted = 2,
    _stair_hole_murder = 4,
    _stair_hole_machicolation = 4,
    _stair_pillar_bottom = 5,
    _stair_pillar_bottom_half = 2,
    _stair_pillar_top = 5,
    _stair_pillar_top_half = 2,
    _stair_pillar_middle = 6,
    _stair_pillar_middle_half = 3,
    _stair_pillar_crossbrace = 5,
    _stair_pillar_crossbrace_ext = 5,
    _stair_slit = 3,
    _stair_slit_cross = 3,
    _stair_slit_hole = 3,
    _stair_slit_embrasure = 3,
    _stair_arch_simple = 5,
    _stair_arch_outer = 7,
    _stair_arch_inner = 3,
}

unilib.global.stair_ordered_table = {
    -- The Mark I saw, everything from minetest_game/stairs
    {"_stair_simple", "_stair_inner", "_stair_outer", "_stair_slab"},
    -- The Mark II saw, everything from stairs_redo
    {
        "_stair_simple",
        "_stair_inner",
        "_stair_outer",
        "_stair_slab",
        "_stair_slope",
        "_stair_slope_inner",
        "_stair_slope_outer",
    },
    -- The Mark III saw, everything from stairsplus
    {
        "_stair_simple",
        "_stair_inner",
        "_stair_outer",
        "_stair_slab",
        "_stair_simple_inverted",
        "_stair_simple_half",
        "_stair_simple_half_inverted",
        "_stair_simple_half_right",
        "_stair_simple_half_right_inverted",
        "_stair_corner",
        "_stair_corner_half",
        "_stair_corner_half_inverted",
        "_stair_inner_inverted",
        "_stair_outer_inverted",
        "_stair_slab_inverted",
        "_stair_slab_quarter",
        "_stair_slab_quarter_inverted",
        "_stair_slab_three_quarter",
        "_stair_slab_three_quarter_inverted",
        "_stair_tile",
        "_stair_tile_quarter",
        "_stair_tile_three_quarter",
        "_stair_panel_bottom",
        "_stair_panel_top",
        "_stair_panel_vertical",
        "_stair_micro_bottom",
        "_stair_micro_top",
    },
    -- The Mark IV saw, everything from moreblocks
    {
        "_stair_micro_bottom_cut_eighth",
        "_stair_panel_bottom_cut_eighth",
        "_stair_micro_bottom_cut_quarter",
        "_stair_panel_bottom_cut_quarter",
        "_stair_micro_bottom_cut_half",
        "_stair_panel_bottom_cut_half",
        "_stair_micro_bottom",
        "_stair_panel_bottom",

        "_stair_panel_vertical_sliced_half",
        "_stair_tile_sliced_half",
        "_stair_panel_vertical_sliced_quarter",
        "_stair_tile_sliced_quarter",
        "_stair_panel_vertical_sliced_eighth",
        "_stair_tile_sliced_eighth",
        "_stair_outer",
        "_stair_simple",

        "_stair_inner",
        "_stair_slab_cut_eighth",
        "_stair_slab_cut_quarter",
        "_stair_slab_cut_half",
        "_stair_slab",
        "_stair_slab_sliced_half",
        "_stair_slab_sliced_quarter",
        "_stair_slab_sliced_eighth",

        "_stair_box_sided_two",
        "_stair_box_sided_three_corner",
        "_stair_box_sided_three",
        "_stair_simple_half",
        "_stair_steps_sliced_eighth",
        "_stair_steps_sliced_quarter",
        "_stair_steps_sliced_half",
        "_stair_steps",

        "_stair_slope",
        "_stair_slope_half",
        "_stair_slope_half_raised",
        "_stair_slope_inner",
        "_stair_slope_inner_half",
        "_stair_slope_inner_half_raised",
        "_stair_slope_inner_cut",
        "_stair_slope_inner_cut_half",

        "_stair_slope_inner_cut_half_raised",
        "_stair_slope_outer",
        "_stair_slope_outer_half",
        "_stair_slope_outer_half_raised",
        "_stair_slope_outer_cut",
        "_stair_slope_outer_cut_half",
        "_stair_slope_outer_cut_half_raised",
        "_stair_slope_cut",
    },
    -- A hypothetical Mark V saw, containing all stair types not produced by one of the machines
    --      above (note that they all have an individual craft recipe, so a saw is not a
    --      requirement in these cases)
    --[[
    {
        -- From plantlife/trunks
        "_stair_corner_roof",
        "_stair_corner_roof_inverted",
        -- From castle/castle_masonry/
        "_stair_hole_murder",
        "_stair_hole_machicolation",
        "_stair_pillar_bottom",
        "_stair_pillar_bottom_half",
        "_stair_pillar_top",
        "_stair_pillar_top_half",
        "_stair_pillar_middle",
        "_stair_pillar_middle_half",
        "_stair_pillar_crossbrace",
        "_stair_pillar_crossbrace_ext",
        "_stair_slit",
        "_stair_slit_cross",
        "_stair_slit_hole",
        "_stair_slit_embrasure",
        -- From pkarcs/pkarcs
        "_stair_arch_simple",
        "_stair_arch_outer",
        "_stair_arch_inner",
    },
    ]]--
}
