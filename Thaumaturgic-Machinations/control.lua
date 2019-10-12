if not TM then TM = {} end

-- list of all items that should give inventory bonuses and their respective bonus
function inv_bonus_list()
local list = {
	{"bag-of-holding-1", 10},
	{"bag-of-holding-2", 20},
	{"bag-of-holding-3", 30},
}

return list
end


--returns the bonus attributed to inputted item name
function in_inv_list(name)

	for i,v in pairs(inv_bonus_list()) do
		if v[1] == name then
			return v[2]
		end
	end
	return nil
end

function clear_bonuses(player)

	player.character_inventory_slots_bonus = 0

	player.character_reach_distance_bonus = 0
	player.character_item_pickup_distance_bonus = 0
	player.character_loot_pickup_distance_bonus = 0
	player.character_item_drop_distance_bonus = 0

end
--[[
-- The below function is from the Multiblocks mod by WildWolf
function TM.CreateMultiblock(event) -- on_built_entity, on_robot_built_entity // only shared is created_entity

	local et = {}
	local created_entity = event.created_entity
	local name = created_entity.name
	local current_structure = global.multiblock_structures[created_entity.name]
	if (created_entity and created_entity.result.relative_position and created_entity.result.name and created_entity.parts) then
		for _,e in pairs(created_entity.parts) do
			local fe = game.surfaces[1].find_entity(e.name,{x = created_entity.position.x + e.relative_position[1], y = created_entity.position.y + e.relative_position[2]}) 
			if(fe and fe.valid) then
			  table.insert(et,fe)
			end
		end
		if(#et==#created_entity.parts) then 
			local p = {x=created_entity.position.x+created_entity.result.relative_position[1],y=created_entity.position.y+created_entity.result.relative_position[2]}
			created_entity.destroy() 
			for _,e in pairs(et) do 
				e.destroy() 
			end 
			game.surfaces[1].create_entity{name=created_entity.result.name,position=p,force=game.players[event.player_index].force.name} 
		end
	end

end


script.on_event(defines.events.on_robot_built_entity, TM.CreateMultiblock(event))
script.on_event(defines.events.on_robot_built_entity, TM.CreateMultiblock(event))
]]--
-- placed equipment
script.on_event(defines.events.on_player_placed_equipment, function(event)

	local player = game.players[event.player_index]
	local inventory_slots = player.character_inventory_slots_bonus
	local inv_bonus = in_inv_list(event.equipment.name)
	
	-- check if the item affects inventory size
	if inv_bonus ~= nil then
		player.character_inventory_slots_bonus = inventory_slots + inv_bonus
		--player.print("Bonus inventory slots: +" .. player.character_inventory_slots_bonus)
	end

end)

-- removed equipment
script.on_event(defines.events.on_player_removed_equipment, function(event)
	local player = game.players[event.player_index]
	local inventory_slots_bonus = player.character_inventory_slots_bonus
	local inv_bonus = in_inv_list(event.equipment)
	
	--check if the item affects inventory size
	if inv_bonus ~= nil then
	
		if event.count >= 0 then
			local slot_count = inventory_slots_bonus - (inv_bonus * event.count)
			if slot_count >= 0 then
				inventory_slots_bonus = slot_count
				player.character_inventory_slots_bonus = inventory_slots_bonus
			end
		end
		--player.print("Bonus inventory slots: +" .. player.character_inventory_slots_bonus)
	end
		
end)

-- Changed Armor
script.on_event(defines.events.on_player_armor_inventory_changed, function(event)
 
  	local player = game.players[event.player_index]
	local armor = player.get_inventory(defines.inventory.character_armor)
	
	-- check if an armor is equiped, before we do anything
	-- else we set the players inventory bonus count to zero
	if not armor.is_empty() then
		
		local total_slots = 0
		local total_reach = 0
		
		local grid =  armor[1].grid

		-- check if the armor has a grid
		if grid ~= nil then

			-- loop through the equipment in the grid
			for i = 1, #grid.equipment do
				local inv_bonus = in_inv_list(grid.equipment[i].name)
				-- if the equipment item at index is a pocket, we add bonus slots to the total
				if inv_bonus ~= nil then
					total_slots = total_slots + inv_bonus
				end
			end

			--set_reach(player, total_reach)

			player.character_inventory_slots_bonus = total_slots

		else
			clear_bonuses(player)			

		end	

	else
		clear_bonuses(player)
	end
	--player.print("Bonus inventory slots: +" .. player.character_inventory_slots_bonus)
end)

