data:extend(
{

{
	type = "ammo-category",
	name = "magic"
},
{
	type = "fuel-category",
	name = "Vis"
},
{
	type = "equipment-category",
	name = "magic-armor"
},
{
	type = "recipe-category",
	name = "thaumic-smelting"
},
{
	type = "recipe-category",
	name = "thaumic-tree-farm"
},
{
	type = "recipe-category",
	name = "pure-aspect-extraction"
},
{
	type = "recipe-category",
	name = "aspect-crafting"
},
{
	type = "recipe-category",
	name = "seperate-aspect",
	subgroup = "seperate-aspect",
},
{
	type = "recipe-category",
	name = "combine-aspect",
	subgroup = "combine-aspect",
},
{
	type = "item-subgroup",
	name = "magic-equipment",
	group = "combat",
	order = "ea",
},
{
	type = "item-subgroup",
	name = "TM-science",
	group = "intermediate-products",
	order = "h",
},
{
	type = "item-subgroup",
	name = "TM-module",
	group = "production",
	order = "f1",
},
{
	type = "item-group",
	name = "barreling",
	icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png",
	icon_size = 32,
	order = "z",
},
{
	type = "item-group",
	name = "aspect",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Primal-Aspects.png",
	icon_size = 96,
	order= "g",
},
	-- BARRELING -- a new tab, because there's a *lot* of liquid in this mod
{
	type = "item-group",
	name = "barreling",
	icon = "__base__/graphics/icons/fluid/barreling/barrel-empty.png",
	icon_size = 32,
	order = "z",
},
})
data.raw["item-subgroup"]["fill-barrel"].group = "barreling"
data.raw["item-subgroup"]["empty-barrel"].group = "barreling"