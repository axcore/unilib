---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    australia
-- Code:    GPLv3/LGPL 2.1/BSD
-- Media:   CC by 3.0/CC BY-SA 3.0/WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.fruit_berry_lilly_pilly = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.australia.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.fruit_berry_lilly_pilly.init()

    return {
        description = "Lilly pilly berries",
        optional = "dye_basic",
    }

end

function unilib.pkg.fruit_berry_lilly_pilly.exec()

    unilib.register_node("unilib:fruit_berry_lilly_pilly", "australia:lilly_pilly_berries", mode, {
        -- From australia:lilly_pilly_berries
        description = S("Lilly Pilly Berries"),
        tiles = {"unilib_fruit_berry_lilly_pilly.png"},
        -- N.B. no food_lilly_pilly in original code
        groups = {
            dig_immediate = 3, flammable = 2, fleshy = 3, food_lilly_pilly = 1, leafdecay = 3,
            leafdecay_drop = 1,
        },
        sounds = unilib.global.sound_table.leaves,

        drawtype = "plantlike",
        inventory_image = "unilib_fruit_berry_lilly_pilly.png",
        is_ground_content = false,
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {-0.1, -0.5, -0.1, 0.1, -0.25, 0.1},
        },
        sunlight_propagates = true,
        visual_scale = 0.67,
        walkable = false,
        wield_image = "unilib_fruit_berry_lilly_pilly.png",

        after_place_node = function(pos, placer, itemstack)

            if placer:is_player() then
                core.set_node(pos, {name = "unilib:fruit_berry_lilly_pilly", param2 = 1})
            end

        end,

        on_use = unilib.cuisine.eat_on_use("unilib:fruit_berry_lilly_pilly", 1),
    })
    if unilib.setting.dye_from_fruit_flag and
            unilib.global.pkg_executed_table["dye_basic"] ~= nil then

        unilib.register_craft({
            -- Original to unilib
            output = "unilib:dye_magenta",
            recipe = {
                {"unilib:fruit_berry_lilly_pilly"},
            },
        })

    end

    unilib.register_juice({
        ingredient = "unilib:fruit_berry_lilly_pilly",
        juice_description = S("Lilly Pilly Berry"),
        juice_type = "lilly_pilly",
        rgb = "#be3aa6",

        orig_flag = false,
    })

end

function unilib.pkg.fruit_berry_lilly_pilly.post()

    unilib.register_regrowing_fruit({
        fruit_name = "unilib:fruit_berry_lilly_pilly",

        replace_mode = mode,
        leaves_list = {"unilib:tree_lilly_pilly_leaves"},
        pkg_list = {"tree_lilly_pilly"},
    })

end
