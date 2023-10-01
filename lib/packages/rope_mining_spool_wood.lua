---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    ropes
-- Code:    MIT
-- Media:   unknown (textures), CC0 (sounds)
---------------------------------------------------------------------------------------------------

unilib.pkg.rope_mining_spool_wood = {}

local S = unilib.intllib
local mode = unilib.imported_mod_table.ropes.add_mode

---------------------------------------------------------------------------------------------------
-- New code
---------------------------------------------------------------------------------------------------

function unilib.pkg.rope_mining_spool_wood.init()

    return {
        description = "Wooden spool for mining rope",
        nodes = "Adds spools in varying lengths, which when placed in the world, lower ropes" ..
                " at one metre per second until the spool's limit is reached",
        depends = "shared_ropes",
    }

end

function unilib.pkg.rope_mining_spool_wood.exec()

    for i = 1, 2 do

        unilib.pkg.shared_ropes.register_spool({
            -- From ropes:wood1rope_block, etc. Creates unilib:rope_mining_spool_wood_50m etc
            part_name = "wood",
            orig_name = "ropes:wood" .. i .. "rope_block",
            description = S("Wooden Spool"),
            ingredient = "group:wood",
            tint = "#86683a",

            replace_mode = mode,
            flammable = 2,
            multiple = i,
        })

    end

end
