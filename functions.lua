minetest = minetest

function cool_magma_source(pos)
--   minetest.add_node(pos,{name="default:stone"})
end

function cool_magma_flowing(pos)
   minetest.add_node(pos,{name="default:stone"})
end

minetest.register_abm({
      nodenames = {"volcano:magma_flowing"},
      neighbors = {"group:water"},
      interval = 5,
      chance = 5,
      action = function(pos, node, active_object_count, active_object_count_wider)
	 cool_magma_flowing(pos, node, active_object_count, active_object_count_wider)
      end,
})

minetest.register_abm({
      nodenames = {"volcano:magma_source"},
      neighbors = {"group:water"},
      interval = 5,
      chance = 5,
      action = function(pos, node, active_object_count, active_object_count_wider)
	 cool_magma_source(pos, node, active_object_count, active_object_count_wider)
      end,
})


function cool_errupted_lava_source (pos)
--      minetest.add_node(pos,{name="default:stone"})
end

function cool_errupted_lava_flowing(pos)
      minetest.add_node(pos,{name="default:stone"})
end

minetest.register_abm({
      nodenames = {"volcano:errupted_lava_flowing"},
      neighbors = {"group:water"},
      interval = 1,
      chance = 1,
      action = function(pos, node, active_object_count, active_object_count_wider)
	 --cool_errupted_lava_flowing(pos, node, active_object_count, active_object_count_wider)
	 minetest.add_noed(pos,{name="default:stone"})
      end,
})

minetest.register_abm({
      nodenames = {"volcano:errupted_lava_source"},
      neighbors = {"group:water"},
      interval = 1,
      chance = 1,
      action = function(pos, node, active_object_count, active_object_count_wider)
	 cool_errupted_lava_source(pos, node, active_object_count, active_object_count_wider)
      end,
})


minetest.register_abm({
      nodenames = {"default:lava_source"},
      interval = 3,
      chance = 2,
      action = function(pos)
	 if pos.y < -50 then return end
	 minetest.add_node(pos,{name="volcano:magma_source"})
      end,
})

minetest.register_abm({
      nodenames = {"volcano:magma_source"},
      interval = 3,
      chance = 2,
      action = function(pos)
	 pos.y = pos.y + 1
	 local node_above = minetest.get_node(pos)
	 if pos.y < -1 then 
	    if node_above.name == "air" or node_above.name == "default:desert_stone" or node_above.name == "default:desert_sand" or node_above.name == "default:stone" or node_above.name == "default:dirt" or node_above.name == "default:dirt_with_grass"  or node_above.name == "default:sand" then
	       minetest.add_node(pos,{name="volcano:magma_source"})
	    end
	 elseif pos.y > -1 then
	    if node_above.name == "air" or node_above.name == "default:desert_stone" or node_above.name == "default:desert_sand" or node_above.name == "default:stone" or node_above.name == "default:dirt" or node_above.name == "default:dirt_with_grass"  or node_above.name == "default:sand" then
	       minetest.add_node(pos,{name="volcano:errupted_lava_source"})
	    end
	 end
      end,
})


minetest.register_abm({
      nodenames = {"volcano:errupted_lava_source"},
      interval = 4,
      chance = 3,
      action = function(pos)
	 pos.y = pos.y + 1
	 local node_above = minetest.get_node(pos)
	 if pos.y < 50 then 
	    if node_above.name == "air" or node_above.name == "default:desert_stone" or node_above.name == "default:desert_sand" or node_above.name == "default:stone" or node_above.name ==  "default:dirt" or node_above.name == "volcano:dirt_with_grass"  or node_above.name == "default:sand" then
	       minetest.add_node(pos,{name="volcano:errupted_lava_source"})
	    end
	 end
      end,
})

