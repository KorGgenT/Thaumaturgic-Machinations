
data:extend({
{
	type = "recipe",
	name = "silverwood-extraction",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/raw-silverwood.png",
	icon_size = 32,
	subgroup = "omnimutator-items",
	order = "g[wood-extraction-silver]",
	category = "omnite-extraction-both",
	energy_required = 5,
	enabled = true,
	ingredients =
	{
		{type = "item", name = "omniwood", amount = 50},
	},
	results =
	{
		{type = "item", name = "raw-silverwood", amount=1},
	},
},
})


omni.lib.replace_recipe_ingredient("silverwood-seedling","raw-silverwood","omniseedling")
omni.lib.replace_recipe_ingredient("grow-wood","seedling","omniseedling")
omni.lib.replace_recipe_result("grow-wood","raw-wood","omniwood")
data.raw.recipe["grow-wood"].result_count = 10

if mods["bobgreenhouse"] then
log(mods["bobgreenhouse"])
	data.raw.recipe["seedling-aspect-extraction"] = nil
	omni.lib.remove_recipe_all_techs("TM-seedling")
	data.raw.recipe["TM-seedling"] = nil
	TM.item_add_aspect("omniseedling", "Herba", 40)
	omni.lib.replace_recipe_ingredient("silverwood-seedling","raw-silverwood","omniseedling")
	omni.lib.replace_recipe_ingredient("grow-wood","seedling","omniseedling")
end