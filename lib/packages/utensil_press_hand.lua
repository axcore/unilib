---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    farming_redo
-- Code:    MIT
-- Media:   CC BY-SA 3.0/CC0
---------------------------------------------------------------------------------------------------

unilib.pkg.utensil_press_hand = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.farming.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.utensil_press_hand.init()

    return {
        description = "Hand press",
    }

end

function unilib.pkg.utensil_press_hand.exec()

    unilib.register_craftitem("unilib:utensil_press_hand", "farming:juicer", mode, {
        -- From farming:juicer
        description = S("Hand Press"),
        inventory_image = "unilib_utensil_press_hand.png",
        groups = {flammable = 2, food_juicer = 1}
    })
    unilib.register_craft({
        -- From farming:juicer
        output = "unilib:utensil_press_hand",
        -- N.B. original code used "default:stone"
        recipe = {
            {"", "group:stone", ""},
            {"group:stone", "", "group:stone"},
        },
    })

end
