
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
	log("creating subgroup combine-aspect-" .. tier)
	data.raw["item-subgroup"]["combine-aspect-" .. tier] =	
	{
		type = "item-subgroup",
		name = "combine-aspect-" .. tier,
		group = "aspect",
		order = "c" .. tier,
	}
end
if data.raw["item-subgroup"]["seperate-aspect-" .. tier] == nil then
	log("creating subgroup seperate-aspect-" .. tier)
	data.raw["item-subgroup"]["seperate-aspect-" .. tier] =	
		{
			type = "item-subgroup",
			name = "seperate-aspect-" .. tier,
			group = "aspect",
			order = "s" .. tier,
		}
end

log("Tier " .. tier .. ": " .. aspect1 .. " + " .. aspect2 .. " = " .. recipe)

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
      {type="fluid", name=recipe, amount=10},
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
	  {type="fluid", name=aspect1, amount=10},
	  {type="fluid", name=aspect2, amount=10}
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
      bobmods.lib.item.remove(data.raw.recipe[recipe].expensive.ingredients, item)
    end
    if data.raw.recipe[recipe].normal then
      bobmods.lib.item.remove(data.raw.recipe[recipe].normal.ingredients, item)
    end
    if data.raw.recipe[recipe].ingredients then
      bobmods.lib.item.remove(data.raw.recipe[recipe].ingredients, item)
    end

  else
    log("Recipe " .. recipe .. " does not exist.")
  end
end
--gets the local name for an item, if it's item-name or entity-name
local function GetLocalName(item)
	if data.raw.item[item].place_result ~= nil then
		return "entity-name." .. data.raw.item[item].place_result
	end
	return "item-name." .. item
end
--[[
Adds the ability to distill an additional aspect from the input item.
(string, string, number)
example: TM.aspect_add_aspect("iron-ore", "Ordo", 50)
]]--
function TM.aspect_add_aspect(item, aspect, count)
local item_AE = item .. "-aspect-extraction"
local asex = false -- does the aspect exist in the recipe already?
local tier = TM.GetTier(aspect)

	if data.raw["item-subgroup"]["aspect-extraction-" .. tier] == nil then
		log("creating subgroup aspect-extraction-" .. tier)
		data.raw["item-subgroup"]["aspect-extraction-" .. tier] =	
		{
			type = "item-subgroup",
			name = "aspect-extraction-" .. tier,
			group = "aspect",
			order = "x" .. tier,
		}
	end

	if data.raw.item[item] == nil then
		log(item .. " item not found. No aspect extraction recipe initialized.")
		return
	end

	if data.raw.recipe[item_AE] and data.raw.recipe[item_AE].results then
	local ing = data.raw.recipe[item_AE].results
		
		for index,value in pairs(ing) do
			if value.name == aspect then
				value.amount = count + value.amount
				asex = true
				log("inserting " .. count .. " " .. aspect .. " to " .. item)
			end
		end 
		
	end

	if data.raw.recipe[item_AE] and data.raw.item[item] ~= nil and not asex then
	table.insert(data.raw.recipe[item_AE].results, {type="fluid", name=aspect, amount=count})
	log(item_AE .. " found. inserting " .. count .. " " .. aspect .. " to " .. item)
		else if not data.raw.recipe[item_AE] and data.raw.item[item] then
		log("creating recipe " .. item_AE .. ": " .. count .. " " .. aspect)
		log("local name = " .. GetLocalName(item))
		data.raw.recipe[item_AE] =
		{
			type = "recipe",
			name = item_AE,
			localised_name = {"recipe-name.extract-recipe", {"fluid-name." .. aspect}, {GetLocalName(item)}},
			category = "pure-aspect-extraction",
			enabled = true,
			energy_required = 1,
			ingredients =
			{
			  {type=data.raw.item[item].type, name=item, amount=1}
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
					icon = data.raw.item[item].icon,
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
			order = aspect,
		}
		end
		return
	end
end
--[[
Checks if the string inputted is a primal aspect. (primal defined in master list)
(string)
example: TM.IsPrimal("Gula")
]]--
--[[
function TM.GetTier(aspect)
	return data.raw.fluid[aspect].tier
end
]]--
function TM.GetTier(aspect)


	local ing = data.raw.recipe[aspect .. "-create"]
	if ing == nil then
		--log(aspect .." is primal.")
		return 0
	end
	--log(aspect .. " ingredients:")
	ing = ing.ingredients
	--log(ing[1].name)
	--log(ing[2].name)
	return 1 + math.max(TM.GetTier(ing[1].name),TM.GetTier(ing[2].name))
end

--[[

assumes item name and recipe name are the same. tries to inherit aspects from ingredients
(string)
example: TM.assign_inherited_aspects("iron-plate")

function TM.assign_inherited_aspects(item)
local inherit = false
local inh_recipe = data.raw.recipe[item].ingredients
log("assigning inherited aspects to " .. item)
for index, value in pairs(inh_recipe) do

	if inh_recipe[value.type] == "fluid" and data.raw.fluid[value.name].tier ~= nil then
		log(value.name .. " is an aspect.")
	end
	
	log("ingredient " .. value[1] .. " found")
	if data.raw.recipe[value[1] .. "-aspect-extraction"] then
		log("recipe " .. value[1] .. "-aspect-extraction found")
		local aspects = data.raw.recipe[value[1] .. "-aspect-extraction"].results
		for index2, value2 in pairs(aspects) do
			TM.aspect_add_aspect(item, value2.name, value2.amount)
		end
		log("added to " .. item)
		inherit = true
	end
	

	if not inherit then
	log("no inherited aspects")
	else
	log("inheritance successful")
	end
	
end
end
]]--

function TM.inherit_aspects(recipe)
	if data.raw.recipe[recipe] ~= nil and data.raw.recipe[recipe].ingredients ~= nil then
		log("\nInheriting aspects for " .. recipe)
		for index, value in pairs(data.raw.recipe[recipe].ingredients)
		do
		local isaspect = " (is not an aspect)"
			if value[1] == nil then
				log("fluid ingredient = " .. value.amount .. " " .. value.name .. isaspect)
			else
				log("ingredient = " .. value[2] .. " " .. value[1])
				if data.raw.recipe[value[1] .. "-aspect-extraction"] and data.raw.recipe[value[1] .. "-aspect-extraction"].results then
					log(value[1] .. " has the following aspects:")
					for index2, value2 in pairs(data.raw.recipe[value[1] .. "-aspect-extraction"].results) do
						log(value2.amount .. " " .. value2.name)
					end
				
				else
					log(value[1] .. " has no aspects")
				end
			end	
		end
	else
		log("recipe " .. recipe .. " does not exist or has no ingredients!")
	end
end


-- the below function is to make migrations for recipes enabled by technology easier to write.
function migrate_recipe_tech(recipe, tech)
	for k,force in pairs(game.forces) do
	  force.recipes[recipe].enabled = force.technologies[tech].researched
	end
end














