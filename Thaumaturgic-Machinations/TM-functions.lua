local string_format = "%" .. string.format("%02d", asp_pow_max + 1) .. "d"

-- allows for togglable logs.
if tm_debug_setting then
	function TM.debug_log(strin)
		log(strin)
	end
else
	function TM.debug_log()
	end
end
--[[
The function below creates two recipes: a construction recipe, which makes an aspect out of two different aspects; and a seperation recipe, which does the reverse.
Icon size is expected to be 32.
(string, string, string)
example: TM.new_aspect_combine("Gelum", "Ignis", "Perditio")
]]--
function TM.new_aspect_combine(recipe, aspect1, aspect2)
	local recipe_create = recipe .. "-create"
	local recipe_seperate = recipe .. "-seperate"
	local recipe_icon = data.raw.fluid[recipe].icon
	local asp1_icon = data.raw.fluid[aspect1].icon
	local asp2_icon = data.raw.fluid[aspect2].icon
	local tier = 1 + math.max(TM.GetTier(aspect1),TM.GetTier(aspect2))


	if data.raw["item-subgroup"]["combine-aspect-" .. tier] == nil then
		TM.debug_log("creating subgroup combine-aspect-" .. tier)
		data.raw["item-subgroup"]["combine-aspect-" .. tier] =	
		{
			type = "item-subgroup",
			name = "combine-aspect-" .. tier,
			group = "aspect",
			order = "c" .. tier,
		}
	end
	if data.raw["item-subgroup"]["seperate-aspect-" .. tier] == nil then
		TM.debug_log("creating subgroup seperate-aspect-" .. tier)
		data.raw["item-subgroup"]["seperate-aspect-" .. tier] =	
			{
				type = "item-subgroup",
				name = "seperate-aspect-" .. tier,
				group = "aspect",
				order = "s" .. tier,
			}
	end

	TM.debug_log("Tier " .. tier .. ": " .. aspect1 .. " + " .. aspect2 .. " = " .. recipe)

	data.raw.recipe[recipe_create] =
	{
		type = "recipe",
		name = recipe_create,
		localised_name = {"recipe-name.combine-recipe", {"fluid-name." .. recipe}},
		category = "combine-aspect",
		enabled = false,
		energy_required = 1,
		ingredients =
		{
		  {type="fluid", name=aspect1, amount=100},
		  {type="fluid", name=aspect2, amount=100}
		},
		results=
		{
		  {type="fluid", name=recipe, amount=200*combine_seperate_modifier},
		},
		icons = {
			{
				icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png",
			},
			{
				icon = recipe_icon,
				scale = 0.8,
				shift = {0,4}
			},
			{
				icon = asp1_icon,
				scale = 0.4,
				shift = {-10,-10},
			},
			{
				icon = asp2_icon,
				scale = 0.4,
				shift = {10,-10},
			},
		},
		icon_size = 32,
		subgroup = "combine-aspect-" .. tier,
		order = recipe,
	}
	if data.raw.technology["aspect-combination-" .. tier] then
		table.insert(data.raw.technology["aspect-combination-" .. tier].effects,{type="unlock-recipe",recipe=recipe_create})
		table.insert(data.raw.technology["aspect-seperation-" .. tier].effects,{type="unlock-recipe",recipe=recipe_seperate})
	else
		log("technology 'aspect-combination-" .. tier .. "' does not exist. please initialize!")
	end
	data.raw.recipe[recipe_seperate] =
	{
		type = "recipe",
		name = recipe_seperate,
		localised_name = {"recipe-name.seperate-recipe", {"fluid-name." .. recipe}},
		category = "seperate-aspect",
		enabled = false,
		energy_required = 1,
		ingredients =
		{
		  {type="fluid", name=recipe, amount=200}
		},
		results=
		{
		  {type="fluid", name=aspect1, amount=100*combine_seperate_modifier},
		  {type="fluid", name=aspect2, amount=100*combine_seperate_modifier}
		},
		icons = {
			{
				icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png",
			},
			{
				icon = recipe_icon,
				scale = 0.8,
				shift = {0,-4}
			},
			{
				icon = asp1_icon,
				scale = 0.4,
				shift = {-10,10},
			},
			{
				icon = asp2_icon,
				scale = 0.4,
				shift = {10,10},
			},
		},
		icon_size = 32,
		subgroup = "seperate-aspect-" .. tier,
		order = recipe,
	}

end

-- this function has been borrowed from omnilib.
function TM.remove_ingredient(recipe, ingredient)
	if data.raw.recipe[recipe].ingredients then
		for i,ing in pairs(data.raw.recipe[recipe].ingredients) do
			if ing.name == ingredient then
				table.remove(data.raw.recipe[recipe].ingredients,i)
				TM.debug_log("Removing " .. ingredient .. " from " .. recipe)
			end
		end
	elseif data.raw.recipe[recipe].normal.ingredients then
		for i,ing in pairs(data.raw.recipe[recipe].normal.ingredients) do
			if ing.name == ingredient then
				table.remove(data.raw.recipe[recipe].normal.ingredients,i)
				TM.debug_log("Removing " .. ingredient .. " from " .. recipe)
			end
		end
		for i,ing in pairs(data.raw.recipe[recipe].expensive.ingredients) do
			if ing.name == ingredient then
				table.remove(data.raw.recipe[recipe].expensive.ingredients,i)
				TM.debug_log("Removing " .. ingredient .. " from " .. recipe)
			end
		end
	end
end
-- this function removes the inputted result.
function TM.remove_result(recipe, result)
	local recipe_obj = data.raw.recipe[recipe]
	if recipe_obj.normal and recipe_obj.normal.results then
		for i,res in pairs(recipe_obj.normal.results) do
			if res.name == result then
				table.remove(recipe_obj.normal.results, i)
				--TM.debug_log(result .. " removed from " .. recipe .. " recipe result.")
			end
		end
		for i,res in pairs(recipe_obj.expensive.results) do
			if res.name == result then
				table.remove(recipe_obj.expensive.results, i)
				--TM.debug_log(result .. " removed from " .. recipe .. " recipe result.")
			end
		end
	elseif recipe_obj.results then
		for i,res in pairs(recipe_obj.results) do
			if res.name == result then
				table.remove(recipe_obj.results, i)
				--TM.debug_log(result .. " removed from " .. recipe .. " recipe result.")
			end		
		end
	end
end
--this function has been borrowed from boblib.
function TM.item_remove(list, item)
  for i, object in ipairs(list) do
    if object[1] == item or object.name == item then
      table.remove(list, i)
    end
  end
end
--gets the local name for an item
local function GetLocalName(item)
	local nm = "-name."
	local item_type = item.type
	if item.placed_as_equipment_result or item.name:find('equipment$') then
		return "equipment" .. nm .. item.name
	end
	if item_type == "item" and item.place_result then
		return "entity" .. nm .. item.name
	end
	if item_type == "capsule" then item_type = "item" end
	return item_type .. nm .. item.name
end
--[[
Adds the ability to distill an additional aspect from the input item. Supports many item types.
(string, string, number, optional:amount)
examples: 
TM.item_add_aspect("iron-ore", "Ordo", 50)		-- adds 50 ordo to 1 iron ore
TM.item_add_aspect("water", "Aqua", 50, 1000)	-- adds 50 Aqua to 1000 water
]]--
function TM.item_add_aspect(item, aspect, count, amount)
local item_AE = item .. "-aspect-extraction"
local asex = false -- does the aspect exist in the recipe already?
local tier = TM.GetTier(aspect)
local datum = TM.GetType(item) -- if it's an item, you get data.raw.item[item]
local dat_AE = data.raw.recipe[item_AE] -- local reference.
if count > 10^asp_pow_max then count = 10^asp_pow_max; log("Warning: " .. item .. " aspect count exceeded maximum.") end

amount = amount or 1
	if tier == nil then return end
	if data.raw["item-subgroup"]["aspect-extraction-" .. tier] == nil then
		TM.debug_log("creating subgroup aspect-extraction-" .. tier)
		data.raw["item-subgroup"]["aspect-extraction-" .. tier] =	
		{
			type = "item-subgroup",
			name = "aspect-extraction-" .. tier,
			group = "aspect",
			order = "x" .. tier,
		}
	end

	if datum == nil or datum.isvalid == false then
		log(item .. " item not found. No aspect extraction recipe initialized.") -- this does not actually appear to work correctly.
		return
	end

	-- if the aspect is already in the item, it adds it to the aspect already in the results instead of adding another result
	if dat_AE and dat_AE.results then
	local ing = data.raw.recipe[item_AE].results
		
		for index,value in pairs(ing) do
			if value.name == aspect then
				value.amount = count + value.amount
				if value.amount > 10^asp_pow_max then value.amount = 10^asp_pow_max end
				asex = true
				TM.debug_log("inserting " .. count .. " " .. aspect .. " to " .. item)
			end
		end 
		
	end

	-- if the extraction recipe exists, but the aspects don't match, it adds another results
	if dat_AE and datum ~= nil and not asex then
		dat_AE.results[#dat_AE.results + 1] = {type = "fluid", name = aspect, amount = count / amount}
		TM.debug_log(item_AE .. " found. inserting " .. count .. " " .. aspect .. " to " .. item)
	
	-- if the extraction recipe does not already exist, it makes one
	else if not dat_AE and datum then
		TM.debug_log("creating recipe " .. item_AE .. ": " .. amount .. " " .. item .. " ==> " .. count .. " " .. aspect)
		
		local ingredient_type = datum.type
		if ingredient_type ~= "fluid" then 
			ingredient_type = "item" 
		end
		local assign_icon = datum.icon
		if assign_icon == nil and datum.icons then
			assign_icon = datum.icons[1].icon
			TM.debug_log("ERROR CODE 1456: Trying to assign nil to icon")
		end
		data.raw.recipe[item_AE] =
		{
			type = "recipe",
			name = item_AE,
			localised_name = {"recipe-name.extract-recipe", {"fluid-name." .. aspect}, {GetLocalName(datum)}},
			category = "pure-aspect-extraction",
			enabled = true,
			energy_required = 1,
			ingredients =
			{
			  {type = ingredient_type, name = item, amount = amount}
			},
			results =
			{
			  {type = "fluid", name = aspect, amount = count},
			},
			icons = {
				{
					icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png",
				},
				{
					icon = assign_icon,
					scale = 0.65,
					shift = {-8,-6}
				},
				{
					icon = data.raw.fluid[aspect].icon,
					scale = 0.65,
					shift = {8,6}
				},
			},
			icon_size = 32,
			subgroup = "aspect-extraction-" .. tier,
			order = aspect .. "-" .. string.format(string_format, count),
		}
		end
		return
	end
end
--[[
Checks if the aspect input is Primal. Shown in the local variable below.
]]--
local primal_aspects = {"Aer","Ordo","Terra","Perditio","Aqua","Ignis"}
function TM.IsPrimal(aspect)
	for i,v in pairs(primal_aspects) do
		if v == aspect then
			return true
		end
	end
	return false
end
--[[
Gets the tier of the aspect. If the input is not an aspect, returns nil.
]]--
function TM.GetTier(aspect)
	if aspect == nil then
		return nil
	end
	if TM.IsPrimal(aspect) then
		return 0
	end
	local ing = data.raw.recipe[aspect .. "-create"]
	if ing then 
		ing = ing.ingredients 
		return 1 + math.max(TM.GetTier(ing[1].name),TM.GetTier(ing[2].name))
	end
	return nil
end
--[[
This function returns true if the fluid is an aspect, and false otherwise.
Expects a string
]]--
function TM.IsAspect(aspect)
	if TM.GetTier(aspect) >= 0 then return true end
	return false
end
--[[
This function takes a recipe object, recipe.normal, or recipe.expensive and tries to inherit all aspects for that particular recipe type.
]]--
function TM.inherit_helper(dat_recipe, recipe)
	TM.debug_log("\nInheriting aspects for " .. recipe)
	for index, value in pairs(dat_recipe.ingredients) do
		local isaspect = " (is not an aspect)"
		local tier = TM.GetTier(value.name)
		if tier ~= nil and tier >= 0 then isaspect = " (is an aspect)" end
		local result_amount = dat_recipe.result_count
		if result_amount == nil or (dat_recipe.results ~= nil and not next(dat_recipe.results)) then 
			if dat_recipe.results == nil then
				result_amount = 1
			else
				result_amount = dat_recipe.results[1][2] or dat_recipe.results[1]["amount"]
			end
		end
		if result_amount == nil then result_amount = 1 end -- this is a catch-all.
		local na = value.name or value[1] -- makes sure a string is always assigned
		local ct = value.amount or value[2] -- makes sure a number is always assigned
		if value.type == "fluid" then
			TM.debug_log("fluid ingredient = " .. ct .. " " .. na .. isaspect)
			if tier then
				local ty = TM.GetType(recipe)
				TM.item_add_aspect(ty.name, na, ct * inherit_multiplier / result_amount)-- adds aspect that was used to create item to item's aspects.
			end
		else
			TM.debug_log("ingredient = " .. ct .. " " .. na)
			if data.raw.recipe[na .. "-aspect-extraction"] and data.raw.recipe[na .. "-aspect-extraction"].results then
				TM.debug_log(na .. " has the following aspects:")
				for index2, value2 in pairs(data.raw.recipe[na .. "-aspect-extraction"].results) do
					TM.debug_log(value2.amount .. " " .. value2.name)
					TM.item_add_aspect(recipe, value2.name, value2.amount / result_amount * inherit_multiplier * ct)
				end
			
			else
				TM.debug_log(na .. " has no aspects")
			end
		end	
	end
end
--[[
This function "inherits" the aspects from its ingredients. Aspects will only be inherited if the ingredient has an aspect.
]]--
function TM.inherit_aspects(recipe)
	local dat_recipe = data.raw.recipe[recipe]
	
	if dat_recipe then
		if dat_recipe.ingredients then
			TM.inherit_helper(dat_recipe, recipe)
		elseif dat_recipe.normal then
			TM.inherit_helper(dat_recipe.normal, recipe)
			TM.inherit_helper(dat_recipe.expensive, recipe)
		else
		log("recipe " .. recipe .. " has no ingredients!")
		end
	else
		log("recipe " .. recipe .. " does not exist!")
	end
end

--[[
This function returns the type of item the input represents. priority goes to items and fluids.
Returns nil and writes to log if no type can be found.
]]--
function TM.GetType(string)
	local t = string .. " type = "
	local it = nil
	local rip = nil
	for i,v in pairs(data.raw) do
		if v[string] ~= nil then
			local c = v[string].type
			--		** This blacklist seems to return a lot of errors. I might change this to a whitelist. **
			local blacklist = { -- even though these items may be correct types, most are unusable in the way this mod uses them.
				"recipe", -- you can't have a recipe as an ingredient for a recipe
				"resource",
				"noise-layer",
				"item", -- only for priority reasons
				"autoplace-control",
				"projectile",
				"ammo-category",
				"roboport-equipment",
				"tile",
				"recipe-category",
				"generator-equipment",
				"item-subgroup",
				"equipment-category",
				"belt-immunity-equipment",
				"battery-equipment",
				"active-defense-equipment",
				"energy-shield-equipment",
				"solar-panel-equipment",
				"movement-bonus-equipment",
				"equipment-grid",
				"technology",
				"night-vision-equipment",
				"fuel-category",
				"explosion",
				"selection-tool",
				"item-with-label",
				"simple-entity",
				"simple-entity-with-force",
				"virtual-signal"
			}
			local whitelist = {
				"tool",
				"ammo",
				"fluid",
				"transport-belt",
				"lamp",
				"assembling-machine",
				"container",
				"capsule",
				"armor",
				"mining-tool",
				"gun",
				"solar-panel",
				"inserter",
				"rail-planner", -- this is the rail item.
				"cargo-wagon",
				"storage-tank",
				"fluid-wagon",
				"artillery-wagon",
				"train-stop",
				"rail-signal",
				"rail-chain-signal",
				"wall",
				"land-mine",
				"underground-belt",
				"loader",
				"splitter",
				"logistic-container",
				"rocket-silo",
				"accumulator",
				"arithmetic-combinator",
				"decider-combinator",
				"constant-combinator",
				"power-switch",
				"programmable-speaker",
				"electric-energy-interface", -- maybe not
				"reactor",
				"boiler",
				"heat-pipe",
				"generator",
				"fluid-turret",
				"car",
				"ammo-turret",
				"furnace",
				"mining-drill",
				"logistic-robot",
				"module",
				"beacon",
				"roboport",
				"construction-robot",
				"electric-pole",
				"pipe",
				"pipe-to-ground",
				"artillery-turret",
				"lab",
				"radar",
				"gate",
				"programmable-speaker",
			}
			if not TM.InList(blacklist, c) then
				TM.debug_log(t .. v[string].type)
				return v[string]
			elseif c == "item" then
				it = v[string]
			elseif c == "recipe" then
				rip = v[string]
			end
		else 
		end
	end
	if it then
		--TM.debug_log(t .. it.type)
		return it
	end
	if rip == nil then
		log("ERROR 8777: " .. t .. "not found.")
	end
	--TM.debug_log(t .. rip.type)
	return rip
end
--[[
This function takes two aspects as inputs, and returns the aspect that they combine into.
]]--
function TM.GetCombinable(aspect1, aspect2)
	if match_value == nil then
		--TM.debug_log("Aspect combination not found")
	end
	--TM.debug_log("Searching for aspect combination for " .. aspect1 .. " & " .. aspect2)
	local aspect_ing1 = nil
	if not TM.IsAspect(aspect1) or not TM.IsAspect(aspect2) then
		return nil
	end
	for i,recipe in pairs(data.raw.recipe) do
	local match_value = string.find(recipe.name, '.create$')
		if recipe.ingredients ~= nil and match_value then
			for i2,ingredient in pairs(recipe.ingredients) do
				if ingredient.name == aspect1 or ingredient.name == aspect2 then
					if aspect_ing1 then
						--TM.debug_log(aspect_ing1)
						TM.debug_log("Aspect combination is " .. recipe.results[1].name)
						return recipe.results[1].name
					else
						aspect_ing1 = ingredient.name
					end
				end
			end
		end
		aspect_ing1 = nil
	end
	--TM.debug_log("Aspect combination not found")
	return nil
end
--[[
This function attempts to reduce the amount of aspects in the extract recipe by
changing multiple aspects into one higher tier aspect.
]]--
function TM.CompressExtract(item)
	local recipe = data.raw.recipe[item]
	local extract_recipe = data.raw.recipe[item .. "-aspect-extraction"]
	if extract_recipe == nil or extract_recipe.results == nil then TM.debug_log(item .. " has no valid aspect extraction recipe.") return end
	for i,aspect1 in pairs(extract_recipe.results) do
		for i2,aspect2 in pairs(extract_recipe.results) do
			if aspect1 ~= aspect2 then
				local combined = TM.GetCombinable(aspect1.name,aspect2.name)
				if combined then
					local count = aspect1.amount + aspect2.amount
					count = count / 2 * combine_seperate_modifier * inherit_multiplier
					TM.item_add_aspect(item, combined, count)
					TM.remove_result(extract_recipe.name, aspect1.name)
					TM.remove_result(extract_recipe.name, aspect2.name)
				end
			end
		end
	end

end
--[[
This function assigns the most prominent aspect of an extraction recipe the correct aspect icon and locale.

note: 	needs to check if it declares its own localised_name
]]--
function TM.icons_assign(recipe)
	local match_value = recipe:find('aspect.extraction')
	if match_value and data.raw.recipe[recipe].icons then
		local aspect, count = TM.MostAspect(recipe)
		--TM.debug_log("found " .. recipe .. ". largest aspects: " .. count .. " " .. aspect)
		local recipe_obj = data.raw.recipe[recipe]
		if recipe_obj.icons and recipe_obj.icons[1] then
			recipe_obj.icons[3].icon = data.raw.fluid[aspect].icon
			recipe_obj.order = aspect .. "-" .. string.format(string_format, count)
			recipe_obj.subgroup = "aspect-extraction-" .. TM.GetTier(aspect)
			local input = recipe_obj.ingredients[1].name
			local input_type = TM.GetType(input).type
			if input_type == "recipe" then 
				log("ERROR CODE 1246: recipe as ingredient: " .. recipe) -- rare error, is caused when recipe name and item name do not match
				data.raw.recipe[recipe] = nil
				return
			end
			if input_type == "fluid" then
				input_type = input_type .. "-name."
			else
				input_type = "item-name."
				if data.raw.item[input] and data.raw.item[input].place_result then
					input_type = "entity-name."
					input = data.raw.item[input].place_result
				end
			end
			recipe_obj.localised_name = {"recipe-name.extract-recipe", {"fluid-name." .. aspect}, {input_type .. input}}
		end
		local recipe_obj_ing = recipe_obj.ingredients[1].name -- there should only be a single ingredient in extraction recipes.
		local rpl_bool = false
		if data.raw.projectile[data_ing] then
			rpl_bool = true
			recipe_obj.icon = data.raw.projectile[data_ing].icon	
		elseif data.raw.tool[data_ing] then
			rpl_bool = true
			recipe_obj.icon = data.raw.tool[data_ing].icon
		end
		if rpl_bool then
			log("ERROR CODE 8724 " .. data_ing .. " icon replacement")
			recipe_obj.icons = nil
		end
	elseif match_value then
		log("Failed to assign aspect icon to " .. recipe)
	end
end
--[[
This function returns the most prominent aspect of a recipe or nil.
]]--
function TM.MostAspect(recipe)
	local recipe_obj = data.raw.recipe[recipe]
	if not recipe_obj or not recipe_obj.results then
		return nil
	end
	local most_aspect = nil
	local most_count = 0
	for i,v in pairs(recipe_obj.results) do
		if v.amount > most_count then
			most_count = v.amount
			most_aspect = v.name
		end
	end
	return most_aspect, most_count
end
--[[
This function returns true if item is in list, otherwise false.
]]--
function TM.InList(list, item)
	for i,v in pairs(list) do
		if item == v then
			return true
		end
	end
	return false
end
--[[
This function is basically a regex type blacklist.
It prevents certain recipes from being checked for extraction recipes.
]]--
function TM.MatchList(str)
	if str == nil then return nil end
	local regex_strings = {
		"aspect.extraction$",
		"create$",
		"seperate$",
		"gas$",
		"liquid$",
		"precipitation$",
		"^fill.+barrel",
		"^empty.+barrel"
	}
	local found = false
	for _, compare in ipairs(regex_strings) do
		found = string.find(str, compare) or found
		if found then return found end
	end
	return found
end
--[[
Recursive. Tries to inherit from all ingredients in list, and if an ingredient is in list it calls the function
]]--
function TM.Inheritance(list, recipe_obj, recipe_list)
	local recipe_list = recipe_list or {}
	local recipe_name = recipe_obj["name"]	
	
	if list[recipe_name] then
		return list
	end
	
	if not recipe_name then log("ERROR!!\n" .. serpent.block(recipe_obj)); return list; end
	if TM.MatchList(recipe_name) or TM.blacklist[recipe_name] then
		list[recipe_name] = true
		return list
	end
	if recipe_obj == nil or recipe_obj.ingredients == nil then
		list[recipe_name] = true
		return list
	end
	TM.debug_log("Name: " .. recipe_name)
	TM.debug_log("Checking ingredients: ")
	for i,v in pairs(recipe_obj.ingredients) do
		local ing_name = v.name or v[1]
		if data.raw.recipe[ing_name] then
			if not list[ing_name] then
				if not recipe_list[ing_name] then
					TM.debug_log("Ingredient " .. ing_name .. " already inherited.")
					recipe_list[recipe_name] = true
					list = TM.Inheritance(list, data.raw.recipe[ing_name], recipe_list)
				else
					TM.debug_log(recipe_name .. " is cyclical")
					list[recipe_name] = true
					TM.inherit_aspects(recipe_name)
					TM.CompressExtract(recipe_name)
					return list
				end
			end
		else
			recipe_list[ing_name] = true
		end
	end
	TM.inherit_aspects(recipe_name)
	TM.CompressExtract(recipe_name)
	list[recipe_name] = true
	return list
end
-- rework of above, currently WIP
function TM.AspectInherit(aspc_list, todo_list, i)
	local ingr_list = {}
	local phantom_list = {} -- a "phantom" todo_list. intended for use in order to exclude the current item from the deeper recursion to avoid stack overflow
	log(i)
	local single = todo_list[i] -- a particular recipe in the todo_list. has real ingredients/results
	if not single or not single.ingredients then
		return aspc_list, todo_list 
	end -- uh oh! somehow an empty ingredient made it through
	for i2, v2 in pairs(single.ingredients) do
		local amt = v2.amount or v2[2]
		local nme = v2.name or v2[1]
		local typ = v2.type or "item"
		if aspc_list[nme] then -- if one of the ingredients is in the list of extraction recipes
			ingr_list[nme] = aspc_list[nme]
			--[[
			local amt2 = ingr_list[nme].ingredients[1]
			local ing  = ingr_list[nme].results[1]
			if amt2["amount"] then
				amt2.amount = amt
			elseif amt2[2] then
				amt2[2] = amt
			end
			log(ing.amount * amt)
			if ing["amount"] then
				--ing.amount = ing.amount * amt
			else
				log("error?")
			end
			log(typ .. " " .. amt .. " " .. nme)
			log(amt2)
			]]--
		else
			-- here's where the magic happensS
			if nme and todo_list[nme] then
				phantom_list = todo_list;
				phantom_list[i] = nil;
				aspc_list, todo_list = TM.AspectInherit(aspc_list, phantom_list, nme)
			end
		end
	end
	if not ingr_list == nil then
		log(serpent.block(ingr_list))
	else
		aspc_list[i] = nil; -- removes the item from aspc_list, since there are no ingredients anyway.
	end
	single = nil
	return aspc_list, todo_list
end
--[[
This function returns an "index" related to the payload for magic turrets.
]]--
function TM.GetPayloadIndex ()
	return 1 -- temporary while i figure out how to edit payload!
end
--[[
This function takes the results of a recipe and reorders them by amount. WARNING: only extraction recipes can be input into this function!
It also caps the number of aspects that can be in results.
]]--
function TM.OrderRecipeResults(recipe_obj)
	local asp_cap = 1 -- this is the maximum number of aspects that can exist in an extraction recipe.
	local result_list = recipe_obj.results
	if result_list[1].amount == nil then log("ERROR 2894: Tried to sort a recipe that is not aspect extraction: " .. recipe_obj.name) return end
	table.sort(result_list, function (a, b) return a.amount > b.amount end)

	-- Removes any excess results
	for i = #result_list, asp_cap + 1, -1 do
		result_list[i] = nil
	end
end

























