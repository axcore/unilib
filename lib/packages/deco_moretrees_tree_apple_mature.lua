---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    moretrees
-- Code:    LGPL 3.0
-- Media:   CC-by-SA 4.0
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_moretrees_tree_apple_mature = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.moretrees.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_moretrees_tree_apple_mature.init()

    return {
        description = "Mature apple tree as decoration",
        depends = {"dirt_ordinary", "tree_apple_mature"},
    }

end

function unilib.pkg.deco_moretrees_tree_apple_mature.post()

    unilib.register_decoration_complete("convert_tree_apple_mature", nil, {
        -- From moretrees/init.lua
        -- Completes decoration in package "tree_apple_mature"
        place_on = "unilib:dirt_ordinary_with_turf",
        y_max = 10,
        y_min = 1,
    })

end
