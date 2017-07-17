data:extend({

{
    type = "recipe",
    name = "catalytic-coal",
    category = "thaumic-smelting",
    normal =
    {
      enabled = true,
      energy_required = 5,
      ingredients = {{"coal", 2}},
      result = "catalytic-coal"
    },
    expensive =
    {
      enabled = true,
      energy_required = 10,
      ingredients = {{"coal", 2}},
      result = "catalytic-coal"
    }
},
{
	type = "recipe",
	name = "thaumic-stone-furnace",
	category = "crafting",
	normal =
	{
	enabled = true,
	energy_required = 1,
	ingredients = {{"stone-brick", 5}},
	result = "thaumic-stone-furnace",
	}
},
{
	type = "recipe",
	name = "crucible",
	category = "crafting",
	normal =
	{
	enabled = true,
	energy_required = 1,
	ingredients = {{"stone-brick", 10},
					{"iron-plate", 10}},
	result = "crucible",
	}
},


})