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
	type = "item",
	name = "bag-of-holding-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/bag-of-holding-1.png",
	placed_as_equipment_result = "bag-of-holding-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "a[energy-source]-a[solar-panel]",
	stack_size = 20
},
{
	type = "item",
	name = "bag-of-holding-2",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/bag-of-holding-2.png",
	placed_as_equipment_result = "bag-of-holding-2",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "a[energy-source]-a[solar-panel]",
	stack_size = 20
},
{
	type = "item",
	name = "bag-of-holding-3",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/bag-of-holding-3.png",
	placed_as_equipment_result = "bag-of-holding-3",
	flags = {"goes-to-main-inventory"},
	subgroup = "equipment",
	order = "a[energy-source]-a[solar-panel]",
	stack_size = 20
},
{
	type = "item",
	name = "small-power-crystal-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/small-power-crystal-1.png",
	placed_as_equipment_result = "small-power-crystal-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "a[energy-source]-a[small]-a[power-crystal-1]",
	stack_size = 20
},
{
	type = "item",
	name = "magic-shield-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-shield-1.png",
	placed_as_equipment_result = "magic-shield-1",
	flags = {"goes-to-main-inventory"},
	subgroup = "magic-equipment",
	order = "a[energy-source]-a[small]-a[power-crystal-1]",
	stack_size = 20
},
})