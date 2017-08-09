require("prototypes.equipment.equipment-grid")

data:extend({

{
	type = "armor",
	name = "magic-armor-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-armor-1.png",
	flags = {"goes-to-main-inventory"},
	resistances =
	{
		{
			type = "physical",
			decrease = 4,
		},
		{
			type = "impact",
			percent = 10,
		},
	},
	durability = 250,
	subgroup = "armor",
	order = "b[magic-armor-1]",
	stack_size = 1,
	equipment_grid = "magic-armor-grid-1"
	
},
{
	type = "armor",
	name = "magic-armor-2",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-armor-1.png",
	flags = {"goes-to-main-inventory"},
	resistances =
	{
		{
			type = "physical",
			decrease = 8,
			percent = 20,
		},
		{
			type = "impact",
			percent = 30,
		},
	},
	durability = 500,
	subgroup = "armor",
	order = "b[magic-armor-2]",
	stack_size = 1,
	equipment_grid = "magic-armor-grid-2"
	
},
{
	type = "armor",
	name = "magic-armor-3",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-armor-1.png",
	flags = {"goes-to-main-inventory"},
	resistances =
	{
		{
			type = "physical",
			decrease = 10,
			percent = 60,
		},
		{
			type = "impact",
			percent = 50,
		},
	},
	durability = 1000,
	subgroup = "armor",
	order = "b[magic-armor-3]",
	stack_size = 1,
	equipment_grid = "magic-armor-grid-3"
	
},
{
	type = "item",
	name = "bag-of-holding-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/bag-of-holding-1.png",
	placed_as_equipment_result = "bag-of-holding-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "a[bag]-a[bag-1]",
	stack_size = 20
},
{
	type = "item",
	name = "bag-of-holding-2",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/bag-of-holding-2.png",
	placed_as_equipment_result = "bag-of-holding-2",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "a[bag]-a[bag-2]",
	stack_size = 20
},
{
	type = "item",
	name = "bag-of-holding-3",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/bag-of-holding-3.png",
	placed_as_equipment_result = "bag-of-holding-3",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "a[bag]-a[bag-3]",
	stack_size = 20
},--[[
{
	type = "item",
	name = "small-power-crystal-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/small-power-crystal-1.png",
	placed_as_equipment_result = "small-power-crystal-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "b[energy-source]-a[small]-a[power-crystal-1]",
	stack_size = 20
},
{
	type = "item",
	name = "medium-power-crystal-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/small-power-crystal-1.png",
	placed_as_equipment_result = "medium-power-crystal-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "b[energy-source]-b[medium]-a[power-crystal-1]",
	stack_size = 20
},
{
	type = "item",
	name = "large-power-crystal-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/small-power-crystal-1.png",
	placed_as_equipment_result = "large-power-crystal-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "b[energy-source]-c[large]-a[power-crystal-1]",
	stack_size = 20
},]]--
{
	type = "item",
	name = "longstriders-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/longstriders-1.png",
	placed_as_equipment_result = "longstriders-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "d[boots]-a[longstriders-1]",
	stack_size = 20
},
{
	type = "item",
	name = "longstriders-2",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/longstriders-1.png",
	placed_as_equipment_result = "longstriders-2",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "d[boots]-a[longstriders-2]",
	stack_size = 20
},
{
	type = "item",
	name = "magic-shield-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-shield-1.png",
	placed_as_equipment_result = "magic-shield-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "c[shield]-a[shield-1]",
	stack_size = 20
},
{
    type = "item",
    name = "magic-personal-roboport-equipment",
    icon = "__base__/graphics/icons/personal-roboport-equipment.png",
    placed_as_equipment_result = "magic-personal-roboport-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "magic-equipment",
    order = "e[robotics]-a[magic-personal-roboport-equipment]",
    stack_size = 5
},
{
    type = "item",
    name = "magic-night-vision-equipment",
    icon = "__base__/graphics/icons/night-vision-equipment.png",
    placed_as_equipment_result = "magic-night-vision-equipment",
    flags = {"goes-to-main-inventory"},
    subgroup = "magic-equipment",
    order = "f[vision]-a[magic-night-vision-equipment-1]",
    stack_size = 5
},
})