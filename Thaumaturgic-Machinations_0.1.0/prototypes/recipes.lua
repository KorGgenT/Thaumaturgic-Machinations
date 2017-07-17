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
    name = "vis-infused-brick",
    category = "thaumic-smelting",
    normal =
    {
      enabled = true,
      energy_required = 5,
      ingredients = {{"stone-brick", 10}},
      result = "vis-infused-brick",
	  result_count = 10,
    },
    expensive =
    {
      enabled = true,
      energy_required = 20,
      ingredients = {{"stone-brick", 10}},
      result = "vis-infused-brick",
	  result_count = 10,
    }
},
{
	type = "recipe",
	name = "thaumic-stone-furnace",
	category = "crafting",
	enabled = true,
	energy_required = 1,
	ingredients = {{"stone-brick", 5}},
	result = "thaumic-stone-furnace",
},
{
	type = "recipe",
	name = "infused-thaumic-stone-furnace",
	category = "aspect-crafting",
	enabled = true,
	energy_required = 1,
	ingredients = {
		{"vis-infused-brick", 5},
		{type="fluid", name="Ignis", amount=250},
	},
	result = "thaumic-stone-furnace",
},
{
	type = "recipe",
	name = "temp-aspect-machine",
	category = "crafting",
	enabled = true,
	energy_required = 14,
	ingredients = 
	{
		{"vis-infused-brick", 5},
		{"copper-plate", 10},
	},
	result = "temp-aspect-machine",
},
{
	type = "recipe",
	name = "crucible",
	category = "crafting",
	enabled = true,
	energy_required = 1,
	ingredients = {{"stone-brick", 10},
					{"iron-plate", 10}},
	result = "crucible",
},


})