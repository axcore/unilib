---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    icecream
-- Code:    GPL-3.0
-- Media:   GPL-3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.food_icecream_banana = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.icecream.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.food_icecream_banana.init()

    return {
        description = "Banana-flavoured ice cream",
        depends = {"food_cone_icecream", "fruit_banana", "snow_ordinary"},
        suggested = {
            "food_icecream",                    -- group:food_icecream_base
        },
    }

end

function unilib.pkg.food_icecream_banana.exec()

    unilib.register_craftitem("unilib:food_icecream_banana", "icecream:banana", mode, {
        -- From icecream:banana
        description = S("Banana-Flavoured Ice Cream"),
        inventory_image = "unilib_food_icecream_banana.png",
        groups = {food_icecream = 1},

        on_use = unilib.cuisine_eat_on_use("unilib:food_icecream_banana", 8),
    })
    unilib.register_craft({
        -- From icecream:banana
        output = "unilib:food_icecream_banana",
        recipe = {
            {"unilib:snow_ordinary"},
            {"unilib:fruit_banana"},
            {"unilib:food_cone_icecream"},
        },
    })
    unilib.register_craft({
        -- Adapted from code in the "cheese" mod (in addition to, rather than replacing, the
        --      original craft recipe)
        output = "unilib:food_icecream_banana",
        recipe = {
            {"unilib:fruit_banana", "unilib:fruit_banana", "unilib:fruit_banana"},
            {"", "group:food_icecream_base", ""},
            {"", "unilib:food_cone_icecream", ""},
        },
    })

end
