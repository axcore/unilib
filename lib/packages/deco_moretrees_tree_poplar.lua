---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    moretrees
-- Code:    LGPL 3.0
-- Media:   CC-by-SA 4.0
---------------------------------------------------------------------------------------------------

unilib.pkg.deco_moretrees_tree_poplar = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.moretrees.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.deco_moretrees_tree_poplar.init()

    return {
        description = "Poplar tree as decoration",
        depends = {"dirt_ordinary", "liquid_water_ordinary", "tree_poplar"},
    }

end

function unilib.pkg.deco_moretrees_tree_poplar.post()

    -- N.B. Here, we use only the first of several similar biome_lib decorations
    unilib.register_decoration_complete("convert_tree_poplar", nil, {
        -- From moretrees/init.lua
        -- Completes decoration in package "tree_poplar"
        place_on = "unilib:dirt_ordinary_with_turf",
        spawn_by = "unilib:liquid_water_ordinary_source",
        y_max = 50,
        y_min = 0,
    })

end

