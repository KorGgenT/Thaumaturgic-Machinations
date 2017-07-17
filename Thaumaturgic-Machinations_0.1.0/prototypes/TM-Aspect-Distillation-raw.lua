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
	icon = "__Thaumaturgic-Machinations__/graphics/icons/WIP.png", --CHANGE THIS
	subgroup = "aspect-extraction",
	order = item_AE,
}
})

TM.aspect_add_aspect("iron-plate", "Ordo", 50)
TM.aspect_add_aspect("iron-plate", "Ordo", 50)
--TM.assign_intermediate_aspects("iron-plate")