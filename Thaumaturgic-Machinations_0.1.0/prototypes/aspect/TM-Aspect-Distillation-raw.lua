require("prototypes.item.item")

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
	localised_name = {"recipe-name.extract-recipe", {"fluid-name.Aqua"}, {"fluid-name.water"}},
	icons = {
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png",
		},
		{
			icon = "__base__/graphics/icons/fluid/water.png",
			scale = 0.65,
			shift = {-8,-6}
		},
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Aqua.png",
			scale = 0.65,
			shift = {8,6}
		},
	},
	subgroup = "aspect-extraction-" .. TM.GetTier("Aqua"),
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
	localised_name = {"recipe-name.extract-recipe", {"fluid-name.Potentia"}, {"fluid-name.crude-oil"}},
	icons = {
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png",
		},
		{
			icon = "__base__/graphics/icons/fluid/crude-oil.png",
			scale = 0.65,
			shift = {-8,-6}
		},
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Potentia.png",
			scale = 0.65,
			shift = {8,6}
		},
	},
	subgroup = "aspect-extraction-" .. TM.GetTier("Potentia"),
	order = "crude-oil-aspect-extraction",
},
{
	type = "recipe",
	name = "research-note-aspect-extraction",
	category = "pure-aspect-extraction",
	enabled = true,
	energy_required = 1,
	ingredients =
	{
	  {type="item", name="research-note", amount=1},
	},
	results=
	{
	  {type="fluid", name="Cognitio", amount=50},
	},
	localised_name = {"recipe-name.extract-recipe", {"fluid-name.Cognitio"}, {"item-name.research-note"}},
	icons = {
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/blank.png",
		},
		{
			icon = data.raw.tool["research-note"].icon,
			scale = 0.65,
			shift = {-8,-6}
		},
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Cognitio.png",
			scale = 0.65,
			shift = {8,6}
		},
	},
	icon_size = data.raw.tool["research-note"].icon_size,
	subgroup = "aspect-extraction-" .. TM.GetTier("Cognitio"),
	order = "research-note",
},
})

TM.aspect_add_aspect("iron-ore", "Ordo", 50)
TM.aspect_add_aspect("copper-ore", "Perditio", 50)
TM.aspect_add_aspect("stone", "Terra", 50)
TM.aspect_add_aspect("coal", "Ignis", 50)
TM.aspect_add_aspect("raw-wood", "Aer", 50)
TM.aspect_add_aspect("copper-plate", "Perditio", 100)
TM.aspect_add_aspect("iron-plate", "Ordo", 100)
TM.aspect_add_aspect("stone-brick", "Terra", 120)
TM.aspect_add_aspect("transport-belt", "Motus", 15)
TM.aspect_add_aspect("seedling", "Herba", 10)
TM.aspect_add_aspect("small-lamp", "Lux", 100)
TM.aspect_add_aspect("alumentum", "Potentia", 200)
TM.aspect_add_aspect("steel-plate", "Metallum", 200)
TM.aspect_add_aspect("manasteel", "Permutatio", 200)
TM.aspect_add_aspect("iron-gear-wheel", "Machina", 15)
TM.aspect_add_aspect("assembling-machine-1", "Fabrico", 20)
TM.aspect_add_aspect("assembling-machine-2", "Fabrico", 50)
TM.aspect_add_aspect("soulfire", "Spiritus", 50)
TM.aspect_add_aspect("uranium-235", "Radio", 100)
TM.aspect_add_aspect("iron-chest", "Vacuous", 100)
log("Aspect Distillation recipes complete.")