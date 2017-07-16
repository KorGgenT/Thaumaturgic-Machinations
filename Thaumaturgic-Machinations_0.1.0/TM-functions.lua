
-- The function below creates two recipes: a construction recipe, which makes an aspect out of two different aspects; and a seperation recipe, which does the reverse.
function TM.new_aspect_combine(recipe, aspect1, aspect2)
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
    subgroup = "combine-aspect",
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
    subgroup = "combine-aspect",
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
function TM.aspect_add_aspect(item, aspect, count)
local item_AE = item .. "-aspect-extraction"

	if data.raw.recipe[item_AE] and data.raw.item[item] then
	table.insert(data.raw.recipe[item_AE].ingredients, {type="fluid", name=aspect, amount=count})
		else if not data.raw.recipe[item_AE] and data.raw.item[item] then
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
			icon = "__Thaumaturgic-Machinations__/graphics/icons/WIP.png", --CHANGE THIS
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

-- assumes string input of item name
function TM.get_aspect(item)
	return data.raw.recipe[item .. "-aspect-extraction"].ingredients
end

--[[
-- assumes string input of item name. also assumes item name and recipe name are the same. tries to assign all aspects of ingredients to item
function TM.assign_intermediate_aspects(item)

	for i, data.raw.recipe[item].ingredients in pairs do
	
		for j, TM.get_aspect(j.name) in pairs do
			TM.aspect_add_aspect(item, j.name, j.count) 
		end
	
	end

end

--]]
