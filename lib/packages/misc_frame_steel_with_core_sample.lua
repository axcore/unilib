---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    nbea
-- Code:    WTFPL
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.misc_frame_steel_with_core_sample = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.nbea.add_mode

local rules_table = {
    {x = 0, y = 0, z = -1},
    {x = 1, y = 0, z = 0},
    {x = -1, y = 0, z = 0},
    {x = 0, y = 0, z = 1},
    {x = 1, y = 1, z = 0},
    {x = 1, y = -1, z = 0},
    {x = -1, y = 1, z = 0},
    {x = -1, y = -1, z = 0},
    {x = 0, y = 1, z = 1},
    {x = 0, y = -1, z = 1},
    {x = 0, y = 1, z = -1},
    {x = 0, y = -1, z = -1},
    {x = 0, y = -1, z = 0},
}

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.misc_frame_steel_with_core_sample.init()

    return {
        description = "Steel frame with core sample",
        notes = "Displays flashing lights when connected to a live mesecon circuit",
        depends = {"metal_copper", "metal_steel", "mineral_mese"},
    }

end

function unilib.pkg.misc_frame_steel_with_core_sample.exec()

    local c_copper = "unilib:metal_copper_ingot"
    local c_steel = "unilib:metal_steel_ingot"

    local img = "unilib_misc_frame_steel_with_core.png^unilib_misc_frame_steel_ornate_overlay.png"

    unilib.register_node("unilib:misc_frame_steel_with_core_sample", "nbea:nbox_005", mode, {
        -- From nbea:nbox_005
        description = S("Steel Frame with Core Sample"),
        tiles = {
            {
                animation = {
                    type = "vertical_frames",
                    aspect_w = 16,
                    aspect_h = 16,
                    length = 2.0
                },
                backface_culling = false,
                image = "unilib_misc_frame_steel_with_core_sample_animated.png",
            },
        },
        groups = {cracky = 3},
        sounds = unilib.sound.generate_metal({
            footstep = {name = "unilib_glass_footstep", gain = 0.5},
            dug = {name = "unilib_break_glass", gain = 1.0},
        }),

        climbable = true,
        drawtype = "nodebox",
        -- N.B. inventory_image removed from original code
--      inventory_image = img,
        is_ground_content = false,
        light_source = 8,
        node_box = {
            type = "fixed",
            fixed = {
                -- Top (Y+)
                {-0.4375, 0.4375, 0.375, 0.4375, 0.5, 0.4375},
                {-0.4375, 0.4375, 0.25, 0.4375, 0.5, 0.3125},
                {-0.4375, 0.4375, -0.3125, 0.4375, 0.5, -0.25},
                {-0.4375, 0.4375, -0.4375, 0.4375, 0.5, -0.375},
                {-0.4375, 0.4375, -0.4375, -0.375, 0.5, 0.4375},
                {0.375, 0.4375, -0.4375, 0.4375, 0.5, 0.4375},
                {-0.3125, 0.4375, -0.375, -0.25, 0.5, 0.375},
                {0.25, 0.4375, -0.375, 0.3125, 0.5, 0.375},
                -- Bottom (Y-)
                {-0.4375, -0.5, 0.375, 0.4375, -0.4375, 0.4375},
                {-0.4375, -0.5, 0.25, 0.4375, -0.4375, 0.3125},
                {-0.4375, -0.5, -0.3125, 0.4375, -0.4375, -0.25},
                {-0.4375, -0.5, -0.4375, 0.4375, -0.4375, -0.375},
                {0.375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375},
                {-0.4375, -0.5, -0.4375, -0.375, -0.4375, 0.4375},
                {0.25, -0.5, -0.375, 0.3125, -0.4375, 0.375},
                {-0.3125, -0.5, -0.375, -0.25, -0.4375, 0.375},
                -- Right (X+)
                {0.4375, -0.4375, 0.375, 0.5, 0.4375, 0.4375},
                {0.4375, -0.4375, 0.25, 0.5, 0.4375, 0.3125},
                {0.4375, -0.4375, -0.3125, 0.5, 0.4375, -0.25},
                {0.4375, -0.4375, -0.4375, 0.5, 0.4375, -0.375},
                {0.4375, 0.375, -0.4375, 0.5, 0.4375, 0.4375},
                {0.4375, -0.4375, -0.4375, 0.5, -0.375, 0.4375},
                {0.4375, 0.25, -0.375, 0.5, 0.3125, 0.375},
                {0.4375, -0.3125, -0.375, 0.5, -0.25, 0.375},
                -- Left (X-)
                {-0.5, -0.4375, -0.4375, -0.4375, 0.4375, -0.375},
                {-0.5, -0.4375, -0.3125, -0.4375, 0.4375, -0.25},
                {-0.5, -0.4375, 0.25, -0.4375, 0.4375, 0.3125},
                {-0.5, -0.4375, 0.375, -0.4375, 0.4375, 0.4375},
                {-0.5, 0.375, -0.4375, -0.4375, 0.4375, 0.4375},
                {-0.5, -0.4375, -0.4375, -0.4375, -0.375, 0.4375},
                {-0.5, 0.25, -0.375, -0.4375, 0.3125, 0.375},
                {-0.5, -0.3125, -0.375, -0.4375, -0.25, 0.375},
                -- Back (Z+)
                {-0.4375, -0.4375, 0.4375, -0.375, 0.4375, 0.5},
                {-0.3125, -0.4375, 0.4375, -0.25, 0.4375, 0.5},
                {0.25, -0.4375, 0.4375, 0.3125, 0.4375, 0.5},
                {0.375, -0.4375, 0.4375, 0.4375, 0.4375, 0.5},
                {-0.4375, 0.375, 0.4375, 0.4375, 0.4375, 0.5},
                {-0.4375, -0.4375, 0.4375, 0.4375, -0.375, 0.5},
                {-0.375, 0.25, 0.4375, 0.375, 0.3125, 0.5},
                {-0.375, -0.3125, 0.4375, 0.375, -0.25, 0.5},
                -- Front (Z-)
                {0.375, -0.4375, -0.5, 0.4375, 0.4375, -0.4375},
                {0.25, -0.4375, -0.5, 0.3125, 0.4375, -0.4375},
                {-0.3125, -0.4375, -0.5, -0.25, 0.4375, -0.4375},
                {-0.4375, -0.4375, -0.5, -0.375, 0.4375, -0.4375},
                {-0.4375, 0.375, -0.5, 0.4375, 0.4375, -0.4375},
                {-0.4375, -0.4375, -0.5, 0.4375, -0.375, -0.4375},
                {-0.375, 0.25, -0.5, 0.375, 0.3125, -0.4375},
                {-0.375, -0.3125, -0.5, 0.375, -0.25, -0.4375},
                -- Corner frame
                {-0.4375, 0.4375, 0.4375, 0.4375, 0.5, 0.5},
                {-0.4375, -0.5, 0.4375, 0.4375, -0.4375, 0.5},
                {-0.5, -0.5, 0.4375, -0.4375, 0.5, 0.5},
                {0.4375, -0.5, 0.4375, 0.5, 0.5, 0.5},
                {-0.5, 0.4375, -0.4375, -0.4375, 0.5, 0.4375},
                {-0.5, -0.5, -0.4375, -0.4375, -0.4375, 0.4375},
                {0.4375, 0.4375, -0.4375, 0.5, 0.5, 0.4375},
                {0.4375, -0.5, -0.4375, 0.5, -0.4375, 0.4375},
                {-0.5, 0.4375, -0.5, 0.5, 0.5, -0.4375},
                {-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
                {0.4375, -0.4375, -0.5, 0.5, 0.4375, -0.4375},
                {-0.5, -0.4375, -0.5, -0.4375, 0.4375, -0.4375},
                --Animated BG
                {-0.4375, -0.4375, -0.4375, 0.4375, -0.375, -0.25},
                {-0.4375, -0.4375, 0.25, 0.4375, -0.375, 0.4375},
                {-0.4375, -0.4375, -0.4375, -0.375, 0.4375, -0.25},
                {-0.4375, -0.4375, 0.25, -0.375, 0.4375, 0.4375},
                {0.375, -0.4375, -0.4375, 0.4375, 0.4375, -0.25},
                {0.375, -0.4375, 0.25, 0.4375, 0.4375, 0.4375},
                {-0.4375, 0.375, 0.25, 0.4375, 0.4375, 0.4375},
                {-0.4375, 0.375, -0.4375, 0.4375, 0.4375, -0.25},
                {0.25, -0.4375, -0.4375, 0.4375, -0.375, 0.4375},
                {-0.4375, -0.4375, -0.4375, -0.25, -0.375, 0.4375},
                {0.25, -0.4375, -0.4375, 0.4375, 0.4375, -0.375},
                {-0.4375, -0.4375, -0.4375, -0.25, 0.4375, -0.375},
                {0.25, -0.4375, 0.375, 0.4375, 0.4375, 0.4375},
                {-0.4375, -0.4375, 0.375, -0.25, 0.4375, 0.4375},
                {-0.4375, 0.375, -0.4375, -0.25, 0.4375, 0.4375},
                {0.25, 0.375, -0.4375, 0.4375, 0.4375, 0.4375},
                {-0.4375, 0.25, 0.375, 0.4375, 0.4375, 0.4375},
                {-0.4375, -0.4375, 0.375, 0.4375, -0.25, 0.4375},
                {0.375, 0.25, -0.4375, 0.4375, 0.4375, 0.4375},
                {0.375, -0.4375, -0.4375, 0.4375, -0.25, 0.4375},
                {-0.4375, 0.25, -0.4375, -0.375, 0.4375, 0.4375},
                {-0.4375, -0.4375, -0.4375, -0.375, -0.25, 0.4375},
                {-0.4375, -0.4375, -0.4375, 0.4375, -0.25, -0.375},
                {-0.4375, 0.25, -0.4375, 0.4375, 0.4375, -0.375},
                -- Centre mass 2px--0.0625 / 4px--0.125 / 6px--0.1875
                {-0.0625, -0.0625, -0.0625, 0.0625, 0.0625, 0.0625},
            },
        },
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {
                {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
            },
        },
        sunlight_propagates = true,
        use_texture_alpha = "clip",
        wield_image = img,
    })
    unilib.register_craft({
        -- Original to unilib
        output = "unilib:misc_frame_steel_with_core_sample 2",
        recipe = {
            {c_steel, c_copper, c_steel},
            {c_copper, "unilib:mineral_mese_crystal", c_copper},
            {c_steel, c_copper, c_steel},
        },
    })

    if core.get_modpath("mesecons") then

        unilib.override_item("unilib:misc_frame_steel_with_core_sample", {

            groups = {cracky = 3, mesecon = 1, not_in_creative_inventory = 1},

            drop = "unilib:misc_frame_steel_with_core_sample_off",
            light_source = 8,
            mesecons = {
                effector = {
                    rules = rules_table,

                    action_off = function(pos, node)

                        core.swap_node(
                            pos,
                            {
                                name = "unilib:misc_frame_steel_with_core_sample_off",
                                param2 = node.param2,
                            }
                        )

                    end,
                },
            },
        })

        unilib.register_node(
            -- From nbea:nbox_005_off
            "unilib:misc_frame_steel_with_core_sample_off",
            "nbea:nbox_005_off",
            mode,
            {
                description = S("Steel Frame with Core Sample"),
                tiles = {
                    {
                        animation = {
                            type = "vertical_frames",
                            aspect_w = 16,
                            aspect_h = 16,
                            length = 4.0
                        },
                        backface_culling = false,
                        image = "unilib_misc_frame_steel_with_core_sample_off_animated.png",
                    },
                },
                groups = {cracky = 3, mesecon = 1, mesecon_effector_off = 1},
                sounds = unilib.sound.generate_metal({
                    footstep = {name = "unilib_glass_footstep", gain = 0.5},
                    dug = {name = "unilib_break_glass", gain = 1.0},
                }),

                climbable = true,
                drawtype = "nodebox",
                inventory_image = img,
                is_ground_content = false,
                light_source = 5,
                mesecons = {
                    effector = {
                        rules = rules_table,

                        action_on = function(pos, node)

                            core.swap_node(
                                pos,
                                {
                                    name = "unilib:misc_frame_steel_with_core_sample",
                                    param2 = node.param2,
                                }
                            )

                        end,
                    },
                },
                node_box = {
                    type = "fixed",
                    fixed = {
                        -- Top (Y+)
                        {-0.4375, 0.4375, 0.375, 0.4375, 0.5, 0.4375},
                        {-0.4375, 0.4375, 0.25, 0.4375, 0.5, 0.3125},
                        {-0.4375, 0.4375, -0.3125, 0.4375, 0.5, -0.25},
                        {-0.4375, 0.4375, -0.4375, 0.4375, 0.5, -0.375},
                        {-0.4375, 0.4375, -0.4375, -0.375, 0.5, 0.4375},
                        {0.375, 0.4375, -0.4375, 0.4375, 0.5, 0.4375},
                        {-0.3125, 0.4375, -0.375, -0.25, 0.5, 0.375},
                        {0.25, 0.4375, -0.375, 0.3125, 0.5, 0.375},
                        -- Bottom (Y-)
                        {-0.4375, -0.5, 0.375, 0.4375, -0.4375, 0.4375},
                        {-0.4375, -0.5, 0.25, 0.4375, -0.4375, 0.3125},
                        {-0.4375, -0.5, -0.3125, 0.4375, -0.4375, -0.25},
                        {-0.4375, -0.5, -0.4375, 0.4375, -0.4375, -0.375},
                        {0.375, -0.5, -0.4375, 0.4375, -0.4375, 0.4375},
                        {-0.4375, -0.5, -0.4375, -0.375, -0.4375, 0.4375},
                        {0.25, -0.5, -0.375, 0.3125, -0.4375, 0.375},
                        {-0.3125, -0.5, -0.375, -0.25, -0.4375, 0.375},
                        -- Right (X+)
                        {0.4375, -0.4375, 0.375, 0.5, 0.4375, 0.4375},
                        {0.4375, -0.4375, 0.25, 0.5, 0.4375, 0.3125},
                        {0.4375, -0.4375, -0.3125, 0.5, 0.4375, -0.25},
                        {0.4375, -0.4375, -0.4375, 0.5, 0.4375, -0.375},
                        {0.4375, 0.375, -0.4375, 0.5, 0.4375, 0.4375},
                        {0.4375, -0.4375, -0.4375, 0.5, -0.375, 0.4375},
                        {0.4375, 0.25, -0.375, 0.5, 0.3125, 0.375},
                        {0.4375, -0.3125, -0.375, 0.5, -0.25, 0.375},
                        -- Left (X-)
                        {-0.5, -0.4375, -0.4375, -0.4375, 0.4375, -0.375},
                        {-0.5, -0.4375, -0.3125, -0.4375, 0.4375, -0.25},
                        {-0.5, -0.4375, 0.25, -0.4375, 0.4375, 0.3125},
                        {-0.5, -0.4375, 0.375, -0.4375, 0.4375, 0.4375},
                        {-0.5, 0.375, -0.4375, -0.4375, 0.4375, 0.4375},
                        {-0.5, -0.4375, -0.4375, -0.4375, -0.375, 0.4375},
                        {-0.5, 0.25, -0.375, -0.4375, 0.3125, 0.375},
                        {-0.5, -0.3125, -0.375, -0.4375, -0.25, 0.375},
                        -- Back (Z+)
                        {-0.4375, -0.4375, 0.4375, -0.375, 0.4375, 0.5},
                        {-0.3125, -0.4375, 0.4375, -0.25, 0.4375, 0.5},
                        {0.25, -0.4375, 0.4375, 0.3125, 0.4375, 0.5},
                        {0.375, -0.4375, 0.4375, 0.4375, 0.4375, 0.5},
                        {-0.4375, 0.375, 0.4375, 0.4375, 0.4375, 0.5},
                        {-0.4375, -0.4375, 0.4375, 0.4375, -0.375, 0.5},
                        {-0.375, 0.25, 0.4375, 0.375, 0.3125, 0.5},
                        {-0.375, -0.3125, 0.4375, 0.375, -0.25, 0.5},
                        -- Front (Z-)
                        {0.375, -0.4375, -0.5, 0.4375, 0.4375, -0.4375},
                        {0.25, -0.4375, -0.5, 0.3125, 0.4375, -0.4375},
                        {-0.3125, -0.4375, -0.5, -0.25, 0.4375, -0.4375},
                        {-0.4375, -0.4375, -0.5, -0.375, 0.4375, -0.4375},
                        {-0.4375, 0.375, -0.5, 0.4375, 0.4375, -0.4375},
                        {-0.4375, -0.4375, -0.5, 0.4375, -0.375, -0.4375},
                        {-0.375, 0.25, -0.5, 0.375, 0.3125, -0.4375},
                        {-0.375, -0.3125, -0.5, 0.375, -0.25, -0.4375},
                        -- Corner frame
                        {-0.4375, 0.4375, 0.4375, 0.4375, 0.5, 0.5},
                        {-0.4375, -0.5, 0.4375, 0.4375, -0.4375, 0.5},
                        {-0.5, -0.5, 0.4375, -0.4375, 0.5, 0.5},
                        {0.4375, -0.5, 0.4375, 0.5, 0.5, 0.5},
                        {-0.5, 0.4375, -0.4375, -0.4375, 0.5, 0.4375},
                        {-0.5, -0.5, -0.4375, -0.4375, -0.4375, 0.4375},
                        {0.4375, 0.4375, -0.4375, 0.5, 0.5, 0.4375},
                        {0.4375, -0.5, -0.4375, 0.5, -0.4375, 0.4375},
                        {-0.5, 0.4375, -0.5, 0.5, 0.5, -0.4375},
                        {-0.5, -0.5, -0.5, 0.5, -0.4375, -0.4375},
                        {0.4375, -0.4375, -0.5, 0.5, 0.4375, -0.4375},
                        {-0.5, -0.4375, -0.5, -0.4375, 0.4375, -0.4375},
                        -- Centre mass 2px--0.0625 / 4px--0.125 / 6px--0.1875
                        {-0.125, -0.125, -0.125, 0.125, 0.125, 0.125},
                    },
                },
                paramtype = "light",
                selection_box = {
                    type = "fixed",
                    fixed = {
                        {-0.5, -0.5, -0.5, 0.5, 0.5, 0.5},
                    },
                },
                sunlight_propagates = true,
                use_texture_alpha = "clip",
                wield_image = img,
            }
        )

    end

end
