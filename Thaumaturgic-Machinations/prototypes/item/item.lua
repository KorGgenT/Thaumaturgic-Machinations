if not data.raw.item["seedling"] then
data:extend({
  {
    type = "item",
	name = "seedling",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/seedling.png",
	flags = {"goes-to-main-inventory"},
	subgroup = "raw-material",
	order = "seedling",
	stack_size = 100,
  },
})
end

data:extend({


  {
    type = "tool",
	name = "research-note",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/research-note.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "TM-science",
	order = "a",
	durability = 1,
	stack_size = 100,
  },
  {
    type = "tool",
	name = "brain-in-a-jar",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/brain-in-a-jar.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	durability = 1,
	subgroup = "TM-science",
	order = "b",
	stack_size = 100,
  },
  {
    type = "tool",
	name = "magic-pack-3",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/essentia-detector.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	durability = 1,
	subgroup = "TM-science",
	order = "c",
	stack_size = 100,
  },
  {
    type = "item",
    name = "ignis-steam-engine",
    icons = {
		{
			icon = "__base__/graphics/icons/steam-engine.png",
			scale = 1,
			shift = {0,0},
		},
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Ignis.png",
			scale = 0.5,
			shift = {-6,9},
		},
	},
	flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "b[steam-power]-b[steam-engine-ignis]",
    place_result = "ignis-steam-engine",
    stack_size = 10
  },
  {
    type = "item",
    name = "ignis-boiler",
    icons = {
		{
			icon = "__base__/graphics/icons/boiler.png",
			scale = 1,
			shift = {0,0},
		},
		{
			icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Ignis.png",
			scale = 0.5,
			shift = {-6,8},
		},
	},
	flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = "b[steam-power]-a[boiler-ignis]",
    place_result = "ignis-boiler",
    stack_size = 50
  },
{
    type = "mining-tool",
    name = "manasteel-axe",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/manasteel-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 12 , type = "physical"}
        }
      }
    },
    durability = 4000,
    subgroup = "tool",
    order = "a[mining]-c[manasteel-axe]",
    speed = 7.5,
    stack_size = 20
},
{
	type = "item",
	name = "tm-filter-burner-inserter",
    icon = "__base__/graphics/icons/burner-inserter.png",
	flags = {"goes-to-quickbar"},
	subgroup = "inserter",
	order = "a-f",
	place_result = "tm-filter-burner-inserter",
	stack_size = 50
},
})