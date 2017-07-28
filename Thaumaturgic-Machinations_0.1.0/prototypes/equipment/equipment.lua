data:extend({
{
	type = "movement-bonus-equipment",
	name = "bag-of-holding-1",
	sprite =
	{
	  filename = "__Thaumaturgic-Machinations__/graphics/equipment/bag-of-holding-1.png",
	  width = 64,
	  height = 64,
	  priority = "medium"
	},
	shape =
	{
	  width = 2,
	  height = 2,
	  type = "full"
	},
	energy_source =
	{
	  type = "electric",
	  usage_priority = "primary-input"
	},
	energy_consumption = "20kW",
	movement_bonus = 0,
	categories = {"magic-armor"}
},
{
	type = "movement-bonus-equipment",
	name = "bag-of-holding-2",
	sprite =
	{
	  filename = "__Thaumaturgic-Machinations__/graphics/equipment/bag-of-holding-2.png",
	  width = 64,
	  height = 64,
	  priority = "medium"
	},
	shape =
	{
	  width = 2,
	  height = 2,
	  type = "full"
	},
	energy_source =
	{
	  type = "electric",
	  usage_priority = "primary-input"
	},
	energy_consumption = "60kW",
	movement_bonus = 0,
	categories = {"magic-armor"}
},
{
	type = "movement-bonus-equipment",
	name = "bag-of-holding-3",
	sprite =
	{
	  filename = "__Thaumaturgic-Machinations__/graphics/equipment/bag-of-holding-3.png",
	  width = 64,
	  height = 64,
	  priority = "medium"
	},
	shape =
	{
	  width = 2,
	  height = 2,
	  type = "full"
	},
	energy_source =
	{
	  type = "electric",
	  usage_priority = "primary-input"
	},
	energy_consumption = "180kW",
	movement_bonus = 0,
	categories = {"magic-armor"}
},
{
	type = "generator-equipment",
	name = "small-power-crystal-1",
	sprite =
	{
		filename = "__Thaumaturgic-Machinations__/graphics/equipment/small-power-crystal-1.png",
		width = 32,
		height = 16,
		priority = "medium"
	},
	shape =
	{
		width = 2,
		height = 1,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "primary-output"
	},
	power = "60kW",
	categories = {"magic-armor"}
},
{
	type = "energy-shield-equipment",
	name = "magic-shield-1",
	sprite =
	{
		filename = "__Thaumaturgic-Machinations__/graphics/equipment/magic-shield-1.png",
		width = 308,
		height = 637,
		priority = "medium"
	},
	shape =
	{
		width = 1,
		height = 2,
		type = "full"
	},
	max_shield_value = 20,
	energy_source =
	{
		type = "electric",
		buffer_capacity = "200kJ",
		input_flow_limit = "200kW",
		usage_priority = "primary-input",
	},
	energy_per_shield = "20kJ",
	categories = {"magic-armor"}
},
})