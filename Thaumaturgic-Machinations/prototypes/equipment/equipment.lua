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
},--[[
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
	type = "generator-equipment",
	name = "medium-power-crystal-1",
	sprite =
	{
		filename = "__Thaumaturgic-Machinations__/graphics/equipment/small-power-crystal-1.png",
		width = 32,
		height = 16,
		priority = "medium"
	},
	shape =
	{
		width = 3,
		height = 2,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "primary-output"
	},
	power = "200kW",
	categories = {"magic-armor"}
},
{
	type = "generator-equipment",
	name = "large-power-crystal-1",
	sprite =
	{
		filename = "__Thaumaturgic-Machinations__/graphics/equipment/large-power-crystal-1.png",
		width = 16,
		height = 32,
		priority = "medium"
	},
	shape =
	{
		width = 3,
		height = 5,
		type = "full"
	},
	energy_source =
	{
		type = "electric",
		usage_priority = "primary-output"
	},
	power = "1MW",
	categories = {"magic-armor"}
},]]--
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

{
    type = "roboport-equipment",
    name = "magic-personal-roboport-equipment",
    take_result = "magic-personal-roboport-equipment",
    sprite =
    {
      filename = "__base__/graphics/equipment/personal-roboport-equipment.png",
      width = 64,
      height = 64,
      priority = "medium"
    },
    shape =
    {
      width = 1,
      height = 1,
      type = "full"
    },
    energy_source =
    {
      type = "electric",
      buffer_capacity = "7MJ",
      input_flow_limit = "700KW",
      usage_priority = "secondary-input"
    },
    charging_energy = "500kW",

    robot_limit = 3,
    construction_radius = 5,
    spawn_and_station_height = 0.4,
    charge_approach_distance = 2.6,

    recharging_animation =
    {
      filename = "__base__/graphics/entity/roboport/roboport-recharging.png",
      priority = "high",
      width = 37,
      height = 35,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    recharging_light = {intensity = 0.4, size = 5},
    stationing_offset = {0, -0.6},
    charging_station_shift = {0, 0.5},
    charging_station_count = 1,
    charging_distance = 1.6,
    charging_threshold_distance = 5,
    categories = {"magic-armor"}
  },
{
	type = "movement-bonus-equipment",
	name = "longstriders-1",
	sprite =
	{
	  filename = "__Thaumaturgic-Machinations__/graphics/equipment/longstriders-1.png",
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
	energy_consumption = "100kW",
	movement_bonus = 0.1,
	categories = {"magic-armor"}
},
{
	type = "movement-bonus-equipment",
	name = "longstriders-2",
	sprite =
	{
	  filename = "__Thaumaturgic-Machinations__/graphics/equipment/longstriders-1.png",
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
	energy_consumption = "300kW",
	movement_bonus = 0.2,
	categories = {"magic-armor"}
},
{
type = "night-vision-equipment",
name = "magic-night-vision-equipment",
sprite =
{
	filename = "__base__/graphics/equipment/night-vision-equipment.png",
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
	buffer_capacity = "120kJ",
	input_flow_limit = "240kW",
	usage_priority = "primary-input"
},
energy_input = "10kW",
tint = {r = 0.1, g = 0.5, b = 0.2, a = 0},
color_lookup = {{0.5, "__core__/graphics/color_luts/nightvision.png"}},
desaturation_params = 
{ 
	smoothstep_min = 0.1,
	smoothstep_max = 0.7,
	minimum = 0.3,
	maximum = 1.0
},
light_params = 
{ 
	smoothstep_min = 0.1,
	smoothstep_max = 0.7,
	minimum = 0.666,
	maximum = 1.0,
},
categories = {"magic-armor"}
},
})