---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    plants
-- Code:    WTFPL
-- Media:   WTFPL
---------------------------------------------------------------------------------------------------

unilib.pkg.plant_corn_ancient_wild = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.plants.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.plant_corn_ancient_wild.init()

    return {
        description = "Ancient wild corn",
        notes = "Drops normal corn infrequently",
        depends = "produce_corn_normal",
    }

end

function unilib.pkg.plant_corn_ancient_wild.exec()

    unilib.register_node("unilib:plant_corn_ancient_wild", "plants:corn_wild", mode, {
        -- From plants:corn_wild
        description = unilib.annotate(S("Ancient Wild Corn"), "Zea mays"),
        tiles = {"unilib_plant_corn_ancient_wild.png"},
        -- N.B. flora = 1, not_in_creative_inventory = 1 not in original code
        groups = {
            attached_node = 1, flammable = 2, flora = 1, not_in_creative_inventory = 1, snappy = 3,
        },
        sounds = unilib.sound_table.leaves,

        buildable_to = true,
        drawtype = "plantlike",
        -- N.B. Modified from original code, to match the drop frequency of the
        --      "plant_cotton_ancient_wild" package
        drop = {
            items = {
                {items = {"unilib:produce_corn_normal_harvest"}, rarity = 5},
            },
        },
        inventory_image = "unilib_plant_corn_ancient_wild.png",
        paramtype = "light",
        selection_box = {
            type = "fixed",
            fixed = {-0.25, -0.5, -0.25, 0.25, -3/16, 0.25},
        },
        sunlight_propagates = true,
        visual_scale = 1.3,
        walkable = false,
    })
    -- (not compatible with flowerpots)

    unilib.register_decoration("plants_plant_corn_ancient_wild", {
        -- Original to unilib, based on decoration in "plant_cotton_wild" package
        deco_type = "simple",
        decoration = "unilib:plant_corn_ancient_wild",

        noise_params = {
            octaves = 3,
            offset = -0.1,
            persist = 0.7,
            scale = 0.1,
            seed = 23540,      -- New random seed, generated for unilib
            spread = {x = 50, y = 50, z = 50},
        },
        sidelen = 16,
    })

end
