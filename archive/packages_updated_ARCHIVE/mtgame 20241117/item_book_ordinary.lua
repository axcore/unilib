---------------------------------------------------------------------------------------------------
-- unilib mod by A S Lewis, incorporating materials from many other mods
---------------------------------------------------------------------------------------------------
-- From:    default
-- Code:    LGPL 2.1
-- Media:   CC BY-SA 3.0
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- Original code
---------------------------------------------------------------------------------------------------
--[[
minetest.register_craftitem("default:book", {
	description = S("Book"),
	inventory_image = "default_book.png",
	groups = {book = 1, flammable = 3},
	on_use = book_on_use,
})
minetest.register_craft({
	output = "default:book",
	recipe = {
		{"default:paper"},
		{"default:paper"},
		{"default:paper"},
	}
})
minetest.register_craft({
	type = "fuel",
	recipe = "default:book",
	burntime = 3,
})

minetest.register_craftitem("default:book_written", {
	description = S("Book with Text"),
	inventory_image = "default_book_written.png",
	groups = {book = 1, not_in_creative_inventory = 1, flammable = 3},
	stack_max = 1,
	on_use = book_on_use,
})
default.register_craft_metadata_copy("default:book", "default:book_written")
minetest.register_craft({
	type = "fuel",
	recipe = "default:book_written",
	burntime = 3,
})
]]--
