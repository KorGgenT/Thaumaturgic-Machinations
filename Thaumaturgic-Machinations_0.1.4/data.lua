if not TM then TM = {} end
if not inherited then inherited = {} end
table.insert(inherited, "grow-silverwood")
table.insert(inherited, "grow-wood")
table.insert(inherited, "TM-seedling")





debug_setting = settings.startup["debug-enabled"].value
creatio_enabled = settings.startup["creatio-enabled"].value
creatio_aspect_cost = settings.startup["creatio-aspect-cost"].value
creatio_primal_cost = settings.startup["creatio-primal-cost"].value
creatio_recipe_time = settings.startup["creatio-recipe-time"].value
creatio_multiplier = settings.startup["creatio-multiplier"].value
combine_seperate_modifier = settings.startup["combine-seperate-modifier"].value
inherit_multiplier = 1.1

require("prototypes.item.item")
require("prototypes.item.generated-item")
require("prototypes.technology.technology")
require("prototypes.aspect.TM-Aspect-Master")
require("TM-functions")
if combine_seperate_modifier ~= 0 then
	require("prototypes.aspect.TM-Aspect-Tree-Master")
else
	TM.debug_log("Seperation and Combination recipes have been disabled.")
end
require("prototypes.aspect.TM-Aspect-Distillation-raw")
require("prototypes.recipe.recipes")
require("prototypes.entity.entities")
require("prototypes.category.categories")
require("prototypes.aspect.TM-item-aspects")
require("prototypes.item.TM-Modules")
require("prototypes.equipment.equipment")
require("prototypes.item.equipment")

require("prototypes.item.ammo")
require("prototypes.entity.projectiles")

if creatio_enabled then
	require("prototypes.aspect.TM-Creatio")
end

require("prototypes.aspect.TM-Vanilla-Deconstruct")