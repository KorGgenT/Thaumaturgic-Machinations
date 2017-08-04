function TM.debug_log(strin)
	if debug_setting then log(strin) end
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
		subgroup = "combine-aspect-" .. tier,
		order = recipe,
	}
	if data.raw.technology["aspect-combination-" .. tier] then
		table.insert(data.raw.technology["aspect-combination-" .. tier].effects,{type="unlock-recipe",recipe=recipe_create})
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
		subgroup = "seperate-aspect-" .. tier,
		order = recipe,
	}

	table.insert(data.raw.technology["aspect-seperation-" .. tier].effects,{type="unlock-recipe",recipe=recipe_seperate})

end

-- this function has been borrowed from boblib.
function TM.remove_ingredient(recipe, item)
  if data.raw.recipe[recipe] then

    if data.raw.recipe[recipe].expensive then
      TM.item_remove(data.raw.recipe[recipe].expensive.ingredients, item)
    end
    if data.raw.recipe[recipe].normal then
      TM.item_remove(data.raw.recipe[recipe].normal.ingredients, item)
    end
    if data.raw.recipe[recipe].ingredients then
      TM.item_remove(data.raw.recipe[recipe].ingredients, item)
    end

  else
    --log("Recipe " .. recipe .. " does not exist.")
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
--gets the local name for an item, if it's item-name or entity-name
local function GetLocalName(item)
	local name = "-name."
	if item.type == "item" and item.place_result ~= nil then
		return "entity" .. name .. item.name
	end
	return item.type .. name .. item.name
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

	if datum == nil then
		log(item .. " item not found. No aspect extraction recipe initialized.")
		return
	end

	if data.raw.recipe[item_AE] and data.raw.recipe[item_AE].results then
	local ing = data.raw.recipe[item_AE].results
		
		for index,value in pairs(ing) do
			if value.name == aspect then
				value.amount = count + value.amount
				asex = true
				TM.debug_log("inserting " .. count .. " " .. aspect .. " to " .. item)
			end
		end 
		
	end

	if data.raw.recipe[item_AE] and datum ~= nil and not asex then
	table.insert(data.raw.recipe[item_AE].results, {type="fluid", name=aspect, amount=count/amount})
	TM.debug_log(item_AE .. " found. inserting " .. count .. " " .. aspect .. " to " .. item)
		else if not data.raw.recipe[item_AE] and datum then
		TM.debug_log("creating recipe " .. item_AE .. ": " .. amount .. " " .. item .. " ==> " .. count .. " " .. aspect)
		
		local ingredient_type = datum.type
		if ingredient_type ~= "fluid" then ingredient_type = "item" end
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
			  {type=ingredient_type, name=item, amount=amount}
			},
			results=
			{
			  {type="fluid", name=aspect, amount=count},
			},
			icons = {
				{
					icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png",
				},
				{
					icon = datum.icon,
					scale = 0.65,
					shift = {-8,-6}
				},
				{
					icon = data.raw.fluid[aspect].icon,
					scale = 0.65,
					shift = {8,6}
				},
			},
			subgroup = "aspect-extraction-" .. tier,
			order = aspect .. "-" .. string.format("%06d", count),
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
]]--
function TM.IsAspect(aspect)
	if TM.IsPrimal(aspect) then return true end
	if TM.GetTier(aspect) > 0 then return true end
	return false
end
--[[
]]--
function TM.inherit_helper(dat_recipe, recipe)
	TM.debug_log("\nInheriting aspects for " .. recipe)
	for index, value in pairs(dat_recipe.ingredients) do
		local isaspect = " (is not an aspect)"
		local tier = TM.GetTier(value.name)
		if tier ~= nil and tier >= 0 then isaspect = " (is an aspect)" end
		local result_amount = dat_recipe.result_count
		if result_amount == nil then 
			if dat_recipe.results == nil then
				result_amount = 1
			else
				result_amount = dat_recipe.results[1][1] or dat_recipe.results[1]["amount"]
			end
		end
		if value[1] == nil then
			TM.debug_log("fluid ingredient = " .. value.amount .. " " .. value.name .. isaspect)
			if tier ~= nil then
				TM.item_add_aspect(TM.GetType(recipe).name, value.name, value.amount*inherit_multiplier/result_amount)-- adds aspect that was used to create item to item's aspects.
			end
		else
			TM.debug_log("ingredient = " .. value[2] .. " " .. value[1])
			if data.raw.recipe[value[1] .. "-aspect-extraction"] and data.raw.recipe[value[1] .. "-aspect-extraction"].results then
				TM.debug_log(value[1] .. " has the following aspects:")
				for index2, value2 in pairs(data.raw.recipe[value[1] .. "-aspect-extraction"].results) do
					TM.debug_log(value2.amount .. " " .. value2.name)
					TM.item_add_aspect(recipe, value2.name, value2.amount / result_amount * inherit_multiplier)
				end
			
			else
				TM.debug_log(value[1] .. " has no aspects")
			end
		end	
	end
end
--[[
This function "inherits" the aspects from its ingredients. Aspects will only be inherited if the ingredient has an aspect.
]]--
function TM.inherit_aspects(recipe)
	local dat_recipe = data.raw.recipe[recipe]
	if dat_recipe ~= nil then
		if dat_recipe.ingredients ~= nil then
			TM.inherit_helper(dat_recipe, recipe)
		elseif dat_recipe.normal ~= nil then
			TM.inherit_helper(dat_recipe.normal, recipe)
		--elseif dat_recipe.expensive ~= nil
		
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
	if data.raw.item[string] then TM.debug_log(t .. "item") return data.raw.item[string] end
	if data.raw.fluid[string] then TM.debug_log(t .. "fluid") return data.raw.fluid[string] end
	for i,v in pairs(data.raw) do
		if v[string] ~= nil then
			TM.debug_log(t .. v[string].type)
			return v[string]
		end
	end
	log(t .. "not found.")
	return nil
end
--[[
This function takes two aspects as inputs, and returns the aspect that they combine into.
]]--
function TM.GetCombinable(aspect1, aspect2)
	TM.debug_log("Searching for aspect combination for " .. aspect1 .. " & " .. aspect2)
	local aspect_ing1 = nil
	if not TM.IsAspect(aspect1) or not TM.IsAspect(aspect2) then
		return nil
	end
	for i,recipe in pairs(data.raw.recipe) do
		if recipe.ingredients ~= nil then
			for i2,ingredient in pairs(recipe.ingredients) do
				if ingredient.name == aspect1 or ingredient.name == aspect2 then
					if aspect_ing1 then
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
	TM.debug_log("Aspect combination not found")
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
				local count = aspect1.amount + aspect2.amount
				count = count / 2
				TM.item_add_aspect(item, combined, count)
				TM.remove_ingredient(extract_recipe, aspect1.name)
				TM.remove_ingredient(extract_recipe, aspect2.name)
			end
		end
	end

end





