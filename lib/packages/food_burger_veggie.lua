---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    unilib
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.food_burger_veggie = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.unilib.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.food_burger_veggie.init()

    return {
        description = "Veggie burger",
        depends = {"food_bread_ordinary", "food_meat_imitation"},
        suggested = {
            "food_cheese_vegan",                -- group:food_cheese
            "produce_cucumber_normal",          -- group:food_cucumber
            "produce_lettuce",                  -- group:food_lettuce
            "produce_onion_normal",             -- group:food_onion
            "produce_tomato_salad",             -- group:food_tomato
        },
    }

end

function unilib.pkg.food_burger_veggie.exec()

    unilib.register_craftitem("unilib:food_burger_veggie", nil, mode, {
        -- Original to unilib
        description = S("Veggie Burger"),
        inventory_image = "unilib_food_burger_veggie.png",
        groups = {food_burger = 1},

        on_use = unilib.cuisine.eat_on_use("unilib:food_burger_veggie", 16),
    })
    unilib.register_craft({
        -- Original to unilib
        output = "unilib:food_burger_veggie",
        recipe = {
            {"unilib:food_bread_ordinary", "unilib:food_meat_imitation", "group:food_cheese"},
            {"group:food_tomato", "group:food_cucumber", "group:food_onion"},
            {"group:food_lettuce", "", ""},
        },
    })

end