minetest.register_node("volcano:magma_source", {
			  description = "Magma Source",
			  inventory_image = minetest.inventorycube("default_lava.png"),
			  drawtype = "liquid",
			  tiles = {
			     {
				name = "default_lava_source_animated.png",
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.0,
				},
			     },
			  },
			  special_tiles = {
			     -- New-style lava source material (mostly unused)
			     {
				name = "default_lava_source_animated.png",
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.0,
				},
				backface_culling = false,
			     },
			  },
			  paramtype = "light",
			  light_source = default.LIGHT_MAX - 1,
			  walkable = false,
			  pointable = false,
			  diggable = false,
			  buildable_to = true,
			  drop = "",
			  drowning = 1,
			  liquidtype = "source",
			  liquid_alternative_flowing = "volcano:magma_flowing",
			  liquid_alternative_source = "volcano:magma_source",
			  liquid_viscosity = 7,
			  liquid_renewable = false,
			  damage_per_second = 4 * 2,
			  post_effect_color = {a=192, r=255, g=64, b=0},
			  groups = {lava=3, liquid=2, hot=3, igniter=1},
})

minetest.register_node("volcano:magma_flowing", {
			  description = "Flowing Magma",
			  inventory_image = minetest.inventorycube("default_lava.png"),
			  drawtype = "flowingliquid",
			  tiles = {"default_lava.png"},
			  special_tiles = {
			     {
				name = "default_lava_flowing_animated.png",
				backface_culling = false,
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.3,
				},
			     },
			     {
				name = "default_lava_flowing_animated.png",
				backface_culling = true,
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.3,
				},
			     },
			  },
			  paramtype = "light",
			  paramtype2 = "flowingliquid",
			  light_source = default.LIGHT_MAX - 1,
			  walkable = false,
			  pointable = false,
			  diggable = false,
			  buildable_to = true,
			  drop = "",
			  drowning = 1,
			  liquidtype = "flowing",
			  liquid_alternative_flowing = "volcano:magma_flowing",
			  liquid_alternative_source = "volcano:magma_source",
			  liquid_viscosity = 7,
			  liquid_renewable = false,
			  damage_per_second = 4 * 2,
			  post_effect_color = {a=192, r=255, g=64, b=0},
			  groups = {lava=3, liquid=2, hot=3, igniter=1, not_in_creative_inventory=1},
})



minetest.register_node("volcano:errupted_lava_source", {
			  description = "Errupted Lava Source",
			  inventory_image = minetest.inventorycube("default_lava.png"),
			  drawtype = "liquid",
			  tiles = {
			     {
				name = "default_lava_source_animated.png",
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.0,
				},
			     },
			  },
			  special_tiles = {
			     -- New-style lava source material (mostly unused)
			     {
				name = "default_lava_source_animated.png",
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.0,
				},
				backface_culling = false,
			     },
			  },
			  paramtype = "light",
			  light_source = default.LIGHT_MAX - 1,
			  walkable = false,
			  pointable = false,
			  diggable = false,
			  buildable_to = true,
			  drop = "",
			  drowning = 1,
			  liquidtype = "source",
			  liquid_alternative_flowing = "volcano:errupted_lava_flowing",
			  liquid_alternative_source = "volcano:errupted_lava_source",
			  liquid_viscosity = 7,
			  liquid_renewable = false,
			  damage_per_second = 4 * 2,
			  post_effect_color = {a=192, r=255, g=64, b=0},
			  groups = {lava=3, liquid=2, hot=3, igniter=1},
})

minetest.register_node("volcano:errupted_lava_flowing", {
			  description = "Errupted Flowing Lava",
			  inventory_image = minetest.inventorycube("default_lava.png"),
			  drawtype = "flowingliquid",
			  tiles = {"default_lava.png"},
			  special_tiles = {
			     {
				name = "default_lava_flowing_animated.png",
				backface_culling = false,
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.3,
				},
			     },
			     {
				name = "default_lava_flowing_animated.png",
				backface_culling = true,
				animation = {
				   type = "vertical_frames",
				   aspect_w = 16,
				   aspect_h = 16,
				   length = 3.3,
				},
			     },
			  },
			  paramtype = "light",
			  paramtype2 = "flowingliquid",
			  light_source = default.LIGHT_MAX - 1,
			  walkable = false,
			  pointable = false,
			  diggable = false,
			  buildable_to = true,
			  drop = "",
			  drowning = 1,
			  liquidtype = "flowing",
			  liquid_alternative_flowing = "volcano:errupted_lava_flowing",
			  liquid_alternative_source = "volcano:errupted_lava_source",
			  liquid_viscosity = 7,
			  liquid_renewable = false,
			  damage_per_second = 4 * 2,
			  post_effect_color = {a=192, r=255, g=64, b=0},
			  groups = {lava=3, liquid=2, hot=3, igniter=1, not_in_creative_inventory=1},
})

minetest.register_node("volcano:rubble", {
			  description = "Volcanic rubble",
			  tiles = {"default_gravel.png"},
			  drop="",
			  is_ground_content = true,
			  groups = {crumbly=2, falling_node=1},
			  sounds = default.node_sound_dirt_defaults({
				footstep = {name="default_gravel_footstep", gain=0.5},
				dug = {name="default_gravel_footstep", gain=1.0},
			  }),
})
