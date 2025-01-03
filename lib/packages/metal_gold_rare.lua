---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    real_minerals
-- Code:    GPL 3.0
-- Media:   unknown
---------------------------------------------------------------------------------------------------

unilib.pkg.metal_gold_rare = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.real_minerals.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.metal_gold_rare.init()

    return {
        description = "Rare gold",
        depends = "mineral_gold_native",
    }

end

function unilib.pkg.metal_gold_rare.exec()

    unilib.register_metal({
        -- Original to unilib
        part_name = "gold_rare",
        description = S("Rare Gold"),

        hardness = 2,
    })

    unilib.register_metal_powder_from_mineral({
        -- Original to unilib. Creates unilib:metal_gold_rare_powder
        orig_name = nil,
        metal_part_name = "gold_rare",
        mineral_part_name = "gold_native",

        replace_mode = mode,
        description = S("Rare Gold Powder"),
    })

    unilib.register_craftitem("unilib:metal_gold_rare_ingot", "real_minerals:gold_ingot", mode, {
        -- From real_minerals:gold_ingot
        description = S("Rare Gold Ingot"),
        inventory_image = "unilib_metal_gold_rare_ingot.png",
        groups = {metal_ingot = 1},
    })
    unilib.register_craft({
        -- From real_minerals:gold_ingot
        type = "cooking",
        output = "unilib:metal_gold_rare_ingot",
        recipe = "unilib:mineral_gold_native_lump",

        cooktime = 5,
    })
    unilib.register_craft({
        -- Original to unilib
        output = "unilib:metal_gold_rare_ingot 9",
        recipe = {
            {"unilib:metal_gold_rare_block"},
        },
    })

    unilib.register_node("unilib:metal_gold_rare_block", "real_minerals:gold_block", mode, {
        -- From real_minerals:gold_block
        description = S("Rare Gold Block"),
        tiles = {"unilib_metal_gold_rare_block.png"},
        groups = {bendy = 2, cracky = 2, level = 2, melty = 2, snappy = 1},
        sounds = unilib.global.sound_table.metal,

        -- N.B. true in original code
        is_ground_content = false,
    })
    unilib.register_craft_3x3({
        -- From real_minerals:gold_block
        output = "unilib:metal_gold_rare_block",
        ingredient = "unilib:metal_gold_rare_ingot",
    })
    unilib.register_stairs("unilib:metal_gold_rare_block")
    unilib.register_carvings("unilib:metal_gold_rare_block", {
        millwork_flag = true,
    })

    if unilib.setting.squeezed_metal_flag then

        unilib.register_node("unilib:metal_gold_rare_block_compressed", nil, mode, {
            -- Original to unilib
            description = S("Compressed Rare Gold Block"),
            tiles = {"unilib_metal_gold_rare_block_compressed.png"},
            groups = {cracky = 1, level = 3},
            sounds = unilib.global.sound_table.metal,

            is_ground_content = false,
            stack_max = unilib.global.squeezed_stack_max,
        })
        unilib.misc.set_compressed_metal_recipes("gold_rare")

    end

end
