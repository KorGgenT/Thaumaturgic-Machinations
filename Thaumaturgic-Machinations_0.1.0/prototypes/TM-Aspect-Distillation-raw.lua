TM.aspect_add_aspect("iron-ore", "Ordo", 50)
TM.aspect_add_aspect("copper-ore", "Perditio", 50)
TM.aspect_add_aspect("stone", "Terra", 50)
TM.aspect_add_aspect("coal", "Ignis", 50)
TM.aspect_add_aspect("raw-wood", "Aer", 50)

data:extend({
{
	type = "recipe",
	name = "water-aspect-extraction",
	category = "pure-aspect-extraction",
	enabled = true,
	energy_required = 1,
	ingredients =
	{
	  {type="fluid", name="water", amount=1000}
	},
	results=
	{
	  {type="fluid", name="Aqua", amount=50},
	},
	icon = "__base__/graphics/icons/fluid/water.png",
	subgroup = "aspect-extraction",
	order = "water-aspect-extraction",
},
{
	type = "recipe",
	name = "crude-oil-aspect-extraction",
	category = "pure-aspect-extraction",
	enabled = true,
	energy_required = 1,
	ingredients =
	{
	  {type="fluid", name="crude-oil", amount=100}
	},
	results=
	{
	  {type="fluid", name="Potentia", amount=50},
	},
	icon = "__base__/graphics/icons/fluid/crude-oil.png",
	subgroup = "aspect-extraction",
	order = "crude-oil-aspect-extraction",
},
})

TM.assign_inherited_aspects("iron-plate")
TM.aspect_add_aspect("iron-plate", "Ordo", 50)
TM.aspect_add_aspect("iron-plate", "Ordo", 50)