
minetest.register_node("mydeck:joistss", {
	description = "Deck Joists",
	tiles = {
		"mydeck_hwood.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	sounds = default.node_sound_wood_defaults(),
	drop = "mydeck:joists",
	groups = {cracky = 2, choppy = 2, not_in_creative_inventory=1, flammable = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, -0.375, 0.375, 0.5}, 
			{0, 0, -0.5, 0.125, 0.375, 0.5}, 
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.375, 0.5}, 
		}
	},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		
		local deck = minetest.get_node({x=pos.x, y=pos.y, z=pos.z}).name
		local node = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name


		if node == "mydeck:beam" then
		   minetest.set_node(pos,{name = "air"})
		end
		if node == "mydeck:beam" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "mydeck:joists_beam", param2=minetest.dir_to_facedir(placer:get_look_dir())})
		end
		if node == "mydeck:beam_wbracket" then
		   minetest.set_node(pos,{name = "air"})
		end
		if node == "mydeck:beam_wbracket" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "mydeck:joists_beam_wbracket", param2=minetest.dir_to_facedir(placer:get_look_dir())})
		end
	end
})

minetest.register_node("mydeck:joists_sides", {
	description = "Deck Joists Side",
	tiles = {
		"mydeck_hwood.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	sounds = default.node_sound_wood_defaults(),
	drop = "mydeck:joists_side",
	groups = {cracky = 2, choppy = 2, not_in_creative_inventory=1, flammable = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, -0.375, 0.375, 0.5}, 
			{0, 0, -0.5, 0.125, 0.375, 0.5}, 
			{0.375, 0, -0.5, 0.5, 0.375, 0.5}, 
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.375, 0.5}, 
		}
	},
	after_place_node = function(pos, placer, itemstack, pointed_thing)
		
		local deck = minetest.get_node({x=pos.x, y=pos.y, z=pos.z}).name
		local node = minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name


		if node == "mydeck:beam_wbracket" then
		   minetest.set_node(pos,{name = "air"})
		end
		if node == "mydeck:beam_wbracket" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "mydeck:joists_side_beam_wbracket", param2=minetest.dir_to_facedir(placer:get_look_dir())})
		end
		if node == "mydeck:beam" then
		   minetest.set_node(pos,{name = "air"})
		end
		if node == "mydeck:beam" then
		   minetest.set_node({x=pos.x, y=pos.y-1, z=pos.z},{name = "mydeck:joists_side_beam", param2=minetest.dir_to_facedir(placer:get_look_dir())})
		end
	end
})


minetest.register_node("mydeck:joists_ends", {
	description = "Deck Joists with End Plate",
	tiles = {
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR180^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR270^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	sounds = default.node_sound_wood_defaults(),
	drop = "mydeck:joists_end",
	groups = {cracky = 2, choppy = 2, not_in_creative_inventory=1, flammable = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, -0.375, 0.375, 0.5}, 
			{0, 0, -0.5, 0.125, 0.375, 0.5}, 
			{-0.5, 0, 0.375, 0.5, 0.375, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.375, 0.5},  
		}
	},
})

minetest.register_node("mydeck:joists_side_ends", {
	description = "Deck Joists Side with End Plate",
	tiles = {
		"mydeck_hwood.png^mydeck_joistend_ol.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR180^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR270^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	sounds = default.node_sound_wood_defaults(),
	drop = "mydeck:joists_side_end",
	groups = {cracky = 2, choppy = 2, not_in_creative_inventory=1, flammable = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, -0.375, 0.375, 0.5}, 
			{0, 0, -0.5, 0.125, 0.375, 0.5}, 
			{-0.5, 0, -0.5, 0.5, 0.375, -0.375}, 
			{0.375, 0, -0.5, 0.5, 0.375, 0.5}, 
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.375, 0.5},  
		}
	},
})

minetest.register_node("mydeck:joists_endrs", {
	description = "Deck Joists Side with Wall Plate",
	tiles = {
		"mydeck_hwood.png^mydeck_joistend_ol.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR180^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR270^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	sounds = default.node_sound_wood_defaults(),
	drop = "mydeck:joists_endr",
	groups = {cracky = 2, choppy = 2, not_in_creative_inventory=1, flammable = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, -0.375, 0.375, 0.5}, 
			{0, 0, -0.5, 0.125, 0.375, 0.5},
			{-0.5, 0, -0.5, 0.5, 0.375, -0.375},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.375, 0.5}, 
		}
	},
})

minetest.register_node("mydeck:joists_side_endrs", {
	description = "Deck Joists Side with Wall Plate",
	tiles = {
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR180^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR90^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_joistend_ol.png^[transformR270^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
		"mydeck_hwood.png^mydeck_tint1.png",
	},
	drawtype = "nodebox",
	paramtype = "light",
	paramtype2 = "facedir",
	sunlight_propagates = true,
	sounds = default.node_sound_wood_defaults(),
	drop = "mydeck:joists_side_endr",
	groups = {cracky = 2, choppy = 2, not_in_creative_inventory=1, flammable = 1},
	node_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, -0.375, 0.375, 0.5}, 
			{0, 0, -0.5, 0.125, 0.375, 0.5}, 
			{-0.5, 0, 0.5, 0.5, 0.375, 0.375}, 
			{0.375, 0, -0.5, 0.5, 0.375, 0.5},
		}
	},
	selection_box = {
		type = "fixed",
		fixed = {
			{-0.5, 0, -0.5, 0.5, 0.375, 0.5}, 
		}
	},
})
