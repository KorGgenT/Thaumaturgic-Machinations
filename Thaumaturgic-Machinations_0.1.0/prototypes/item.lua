
data:extend({

  
  {
    type = "item",
    name = "catalytic-coal",
    icon = "__base__/graphics/icons/coal.png",
    dark_background_icon = "__base__/graphics/icons/coal-dark-background.png",
    flags = {"goes-to-main-inventory"},
    fuel_category = "Vis",
    fuel_value = "8MJ",
    subgroup = "raw-resource",
    order = "b[coal]",
    stack_size = 50
  },
  {
    type = "item",
    name = "thaumic-stone-furnace",
    icon = "__base__/graphics/icons/stone-furnace.png",
    flags = {"goes-to-quickbar"},
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    place_result = "thaumic-stone-furnace",
    stack_size = 50
  },  
  {
    type = "item",
    name = "crucible",
	icon_size = 32,
    icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/Crucible.png",
    flags = {"goes-to-quickbar"},
    subgroup = "smelting-machine",
    order = "a[stone-furnace]",
    place_result = "crucible",
    stack_size = 50
  },  
}
)