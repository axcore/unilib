---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    mtg_plus
-- Code:    MIT
-- Media:   CC-BY-SA 3.0/CC-BY 3.0/MIT
---------------------------------------------------------------------------------------------------

unilib.pkg.brick_stone_sandstone_gold = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.mtg_plus.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.brick_stone_sandstone_gold.init()

    return {
        description = "Sandstone bricks with gold edge",
        depends = {"metal_gold", "stone_sandstone_ordinary"},
    }

end

function unilib.pkg.brick_stone_sandstone_gold.exec()

    local c_stone_brick = "unilib:stone_sandstone_brick"

    unilib.register_node(
        -- From mtg_plus:sandstonebrick_gold
        "unilib:brick_stone_sandstone_gold",
        "mtg_plus:sandstonebrick_gold",
        mode,
        {
            description = S("Sandstone Bricks with Golden Edges"),
            tiles = {"unilib_brick_stone_sandstone_gold.png"},
            groups = {cracky = 2},
            sounds = unilib.sound_table.stone,

            is_ground_content = false,
        }
    )
    unilib.register_craft({
        -- From mtg_plus:sandstonebrick_gold
        output = "unilib:brick_stone_sandstone_gold 4",
        recipe = {
            {"", c_stone_brick, ""},
            {c_stone_brick, "unilib:metal_gold_ingot", c_stone_brick},
            {"", c_stone_brick, ""},
        },
    })
    unilib.set_auto_rotate("unilib:brick_stone_sandstone_gold", unilib.auto_rotate_brick_flag)

end
