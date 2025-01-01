---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    glass_stained
-- Code:    MIT
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

unilib.pkg.glass_stained_jewel_red = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.glass_stained.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.glass_stained_jewel_red.init()

    return {
        description = "Red jewel stained glass",
        depends = "shared_glass_stained",
    }

end

function unilib.pkg.glass_stained_jewel_red.exec()

    unilib.pkg.shared_glass_stained.register_stained_glass({
        -- From glass_stained:glass_4_single, etc. Creates
        --      unilib:glass_stained_jewel_red_single, etc
        part_name = "jewel_red",
        description = S("Red Jewel Stained Glass"),

        replace_mode = mode,
        craft_list = {"yellow", "red", "red"},
        orig_num = 4,
    })

end
