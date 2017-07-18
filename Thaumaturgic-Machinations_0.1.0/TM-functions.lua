
-- The function below creates two recipes: a construction recipe, which makes an aspect out of two different aspects; and a seperation recipe, which does the reverse.
--(string, string, string, number) make sure the group/subgroups for the tier are defined!
function TM.new_aspect_combine(recipe, aspect1, aspect2, tier)
local recipe_create = recipe .. "-create"
local recipe_seperate = recipe .. "-seperate"
local here = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/"

data.raw.recipe[recipe_create] =
{
    type = "recipe",
    name = recipe_create,
    category = "combine-aspect",
    enabled = true,
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name=aspect1, amount=100},
	  {type="fluid", name=aspect2, amount=100}
    },
    results=
    {
      {type="fluid", name=recipe, amount=100},
    },
    icon = here .. recipe .. ".png", -- the combination recipe is the same icon as the corresponding aspect
    subgroup = "combine-aspect-" .. tier,
    order = recipe,
}

data.raw.recipe[recipe_seperate] =
{
    type = "recipe",
    name = recipe_seperate,
    category = "seperate-aspect",
    enabled = true,
    energy_required = 1,
    ingredients =
    {
      {type="fluid", name=recipe, amount=200}
    },
    results=
    {
	  {type="fluid", name=aspect1, amount=100},
	  {type="fluid", name=aspect2, amount=100}
    },
    icon = here .. recipe .. ".png", --CHANGE THIS
    subgroup = "seperate-aspect-" .. tier,
    order = recipe,
}

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

-- Adds the ability to distill an additional aspect from the input item.
-- (string, string, number)
function TM.aspect_add_aspect(item, aspect, count)
local item_AE = item .. "-aspect-extraction"
local asex = false -- does the aspect exist in the recipe already?
log("adding aspect " .. aspect .. " to " .. item)

	if data.raw.recipe[item_AE] and data.raw.recipe[item_AE].results then
	local ing = data.raw.recipe[item_AE].results
	log("result exists for " .. item_AE .. " , checking aspects...")
		
		for index,value in pairs(ing) do
			if value.name == aspect then
				value.amount = count + value.amount
				asex = true
				log(item .. "count increased by" .. count)
			end
		end 
	end

	if data.raw.recipe[item_AE] and data.raw.item[item] and not asex then
	table.insert(data.raw.recipe[item_AE].results, {type="fluid", name=aspect, amount=count})
	log(item_AE .. " found. inserting...")
		else if not data.raw.recipe[item_AE] and data.raw.item[item] then
		log("creating recipe" .. item_AE)
		data.raw.recipe[item_AE] =
		{
			type = "recipe",
			name = item_AE,
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
			icon = data.raw.item[item].icon, --CHANGE THIS
			subgroup = "aspect-extraction",
			order = item_AE,
		}
		end
	end
end

-- Checks if the string inputted is a primal aspect. (primal defined in master list)
function TM.IsPrimal(aspect)
for _,v in pairs(Primal) do
	if aspect == v then
	return true end
return false end
end

-- returns the tier of aspect inputted. expects a string. 
function TM.get_aspect_tier(aspect)
local tier = 0

	if not TM.IsPrimal(aspect) then
	local ing = data.raw.recipe[aspect .. "-create"].ingredients
	return tier+math.max(TM.recipe.get_aspect_tier(ing[0]), TM.recipe.get_aspect_tier(ing[1]))
	else return tier end

end


-- assumes string input of item name. also assumes item name and recipe name are the same. tries to inherit aspects from ingredients
function TM.assign_inherited_aspects(item)
local inherit = false
local inh_recipe = data.raw.recipe[item].ingredients
log("assigning inherited aspects to " .. item)
for index, value in pairs(inh_recipe) do
	log("ingredient " .. value[1] .. " found")
	if data.raw.recipe[value[1] .. "-aspect-extraction"] then
		log("recipe " .. value[1] .. "-aspect-extraction found")
		local aspects = data.raw.recipe[value[1] .. "-aspect-extraction"].results
		log("aspect amount " .. aspects[1].amount)
		for index2, value2 in pairs(aspects) do
			log("add " .. value2.amount .. " " .. value2.name)
			TM.aspect_add_aspect(item, value2.name, value2.amount)
		end
		log("added to " .. item)
		inherit = true
	end

	if inherit then
	log("no inherited aspects")
	else
	log("inheritance successful")
	end
	
end

end

