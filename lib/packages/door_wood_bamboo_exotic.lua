---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    farlands
-- Code:    LGPL 2.1
-- Media:   CC-BY-SA 3.0 UNPORTED
---------------------------------------------------------------------------------------------------

unilib.pkg.door_wood_bamboo_exotic = {}

local S = unilib.intllib
local mode = unilib.global.imported_mod_table.farlands.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.door_wood_bamboo_exotic.init()

    return {
        description = "Exotic bamboo wood door",
        depends = "tree_bamboo_exotic",
    }

end

function unilib.pkg.door_wood_bamboo_exotic.exec()

    unilib.register_door({
        -- From farlands, doors:door_bamboo. Creates unilib:door_wood_bamboo_exotic_closed_left, etc
        part_name = "wood_bamboo_exotic",
        orig_name_list = {nil, nil, nil, nil},
        def_table = {
            description = S("Exotic Bamboo Wood Door"),
            tiles = {{name = "unilib_door_wood_bamboo_exotic.png", backface_culling = true}},
            -- N.B. switched door = 1 to node = 1 for consistency with other packages
            groups = {choppy = 2, flammable = 2, node = 1, oddly_breakable_by_hand = 2},
            -- (no sounds)

            inventory_image = "unilib_door_wood_bamboo_exotic_inv.png",
            recipe = {
                {"unilib:tree_bamboo_exotic_wood", "unilib:tree_bamboo_exotic_wood"},
                {"unilib:tree_bamboo_exotic_wood", "unilib:tree_bamboo_exotic_wood"},
                {"unilib:tree_bamboo_exotic_wood", "unilib:tree_bamboo_exotic_wood"},
            },
        },

        replace_mode = mode,
        orig_craftitem_name = nil,
    })

end
