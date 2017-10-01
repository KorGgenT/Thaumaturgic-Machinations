data:extend({

{
    type = "recipe",
    name = "catalytic-coal",
    category = "thaumic-smelting",
    normal =
    {
      enabled = false,
      energy_required = 3,
      ingredients = {{"coal", 2}},
      result = "catalytic-coal"
    },
    expensive =
    {
      enabled = false,
      energy_required = 6,
      ingredients = {{"coal", 2}},
      result = "catalytic-coal"
    }
},
{
    type = "recipe",
    name = "vis-infused-brick",
    category = "thaumic-smelting",
    normal =
    {
      enabled = false,
      energy_required = 5,
      ingredients = {{"stone-brick", 10}},
      result = "vis-infused-brick",
	  result_count = 10,
    },
    expensive =
    {
      enabled = false,
      energy_required = 20,
      ingredients = {{"stone-brick", 10}},
      result = "vis-infused-brick",
	  result_count = 10,
    }
},
{
    type = "recipe",
    name = "vis-infused-wood",
    category = "thaumic-smelting",
    normal =
    {
      enabled = false,
      energy_required = 1,
      ingredients = {{"raw-wood", 2}},
      result = "vis-infused-wood",
	  result_count = 5,
    },
    expensive =
    {
      enabled = false,
      energy_required = 1,
      ingredients = {{"raw-wood", 1}},
      result = "vis-infused-wood",
	  result_count = 2,
    }
},
{
    type = "recipe",
    name = "manasteel",
    category = "thaumic-smelting",
    normal =
    {
      enabled = false,
      energy_required = 20,
      ingredients = {{"steel-plate", 1}},
      result = "manasteel",
	  result_count = 1,
    },
    expensive =
    {
      enabled = false,
      energy_required = 35,
      ingredients = {{"steel-plate", 1}},
      result = "manasteel",
	  result_count = 2,
    }
},
{
	type = "recipe",
	name = "thaumic-stone-furnace",
	category = "crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {{"stone-brick", 5}},
	result = "thaumic-stone-furnace",
},
{
	type = "recipe",
	name = "vis-diode",
	category = "crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"copper-cable", 6},
		{"manasteel", 1},
		{"water-shard", 1},
	},
	result = "vis-diode",
	result_count = 2,
},
{
	type = "recipe",
	name = "infused-thaumic-stone-furnace",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"vis-infused-brick", 5},
		{type="fluid", name="Ignis", amount=250},
	},
	result = "infused-thaumic-stone-furnace",
},
{
	type = "recipe",
	name = "alumentum",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"coal", 1},
		{type="fluid", name="Ignis", amount=40},
	},
	result = "alumentum",
},
{
	type = "recipe",
	name = "research-note",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"vis-infused-wood", 1},
		{type="fluid", name="Aer", amount=20},
		{type="fluid", name="Terra", amount=20},
	},
	result = "research-note",
},
{
	type = "recipe",
	name = "temp-aspect-machine",
	category = "crafting",
	enabled = false,
	energy_required = 14,
	ingredients = 
	{
		{"vis-infused-brick", 5},
		{"copper-plate", 10},
	},
	result = "temp-aspect-machine",
},
{
	type = "recipe",
	name = "crucible",
	category = "crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {{"stone-brick", 10},
					{"iron-plate", 10}},
	result = "crucible",
},
{
	type = "recipe",
	name = "crucible-2",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"crucible", 1},
		{"vis-infused-brick", 10},
		{"magic-gear-wheel", 5},
		{"manasteel", 3},
		{"vis-diode", 3}
	},
	result = "crucible-2",
},
{
	type = "recipe",
	name = "TM-lab",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"vis-infused-wood", 20},
		{type="fluid", name="Ordo", amount=400},
		{type="fluid", name="Terra", amount=50},
	},
	result = "TM-lab",
},
{
	type = "recipe",
	name = "gravestone",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"stone-brick", 10},
		{type="fluid", name="Perditio", amount=20},
	},
	result = "gravestone",
	result_count = "1"
},
{
	type = "recipe",
	name = "silverwood-seedling",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"raw-silverwood", 10},
		{type="fluid", name="Permutatio", amount=100},
		{type="fluid", name="Auram", amount=100},
	},
	result = "silverwood-seedling",
	result_count = "10"
},
{
	type = "recipe",
	name = "grow-silverwood",
	category = "thaumic-tree-farm",
	enabled = false,
	energy_required = 1000,
	ingredients = {
		{"silverwood-seedling", 1},
		{type="fluid", name="Aqua", amount=200},
		{type="fluid", name="Herba", amount=200},
	},
	result = "raw-silverwood",
	result_count =100,
	
},
{
	type = "recipe",
	name = "TM-seedling",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"raw-wood", 1},
		{type="fluid", name="Perditio", amount=10},
	},
	result = "seedling",
	result_count = "10"
},
{
	type = "recipe",
	name = "grow-wood",
	category = "thaumic-tree-farm",
	enabled = false,
	energy_required = 20,
	ingredients = {
		{"seedling", 1},
		{type="fluid", name="Aqua", amount=50},
		{type="fluid", name="Herba", amount=10},
	},
	result = "raw-wood",
	result_count = 4
	
},
{
	type = "recipe",
	name = "refined-silverwood",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/refined-silverwood.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = false,
	energy_required = 1,
	ingredients = {
		{"raw-silverwood", 1},
		{type="fluid", name="Lux", amount=10},
	},
	results = {
		{name="refined-silverwood", amount=1},
		{type="fluid", name="Herba", amount=10},
	},
},
{
	type = "recipe",
	name = "thaumic-tree-farm",
	icon = "__base__/graphics/icons/oil-refinery.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "production-machine",
	enabled = false,
	energy_required = 19,
	ingredients = {
		{"raw-silverwood", 15},
		{type="fluid", name="Herba", amount=500},
		{type="fluid", name="Permutatio", amount=500},
	},
	results = {
		{name="temp-thaumic-tree-farm", amount=1},
	},
},
{
	type = "recipe",
	name = "brain-in-a-jar",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/brain-in-a-jar.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-science",
	enabled = false,
	energy_required = 23,
	ingredients = {
		{"vis-diode", 1},
		{type="fluid", name="Examinis", amount=100},
		{type="fluid", name="Cognitio", amount=100},
	},
	results = {
		{name="brain-in-a-jar", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-speed-module",
    icon = "__base__/graphics/icons/speed-module.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 30,
	ingredients = {
		{"air-shard", 1},
		{"electronic-circuit", 15},
		{type="fluid", name="Motus", amount=100},
	},
	results = {
		{name="TM-speed-module", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-speed-module-2",
    icon = "__base__/graphics/icons/speed-module-2.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 60,
	ingredients = {
		{"TM-speed-module", 5},
		{"speed-module-2", 5},
		{type="fluid", name="Volatus", amount=500},
	},
	results = {
		{name="TM-speed-module-2", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-speed-module-3",
    icon = "__base__/graphics/icons/speed-module-3.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 60,
	ingredients = {
		{"TM-speed-module-2", 5},
		{"speed-module-3", 5},
		{"dark-electronic-circuit", 10},
		{type="fluid", name="Tempus", amount=500},
	},
	results = {
		{name="TM-speed-module-3", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-effectivity-module",
    icon = "__base__/graphics/icons/effectivity-module.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 30,
	ingredients = {
		{"law-shard", 1},
		{"electronic-circuit", 15},
		{type="fluid", name="Potentia", amount=100},
	},
	results = {
		{name="TM-effectivity-module", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-effectivity-module-2",
    icon = "__base__/graphics/icons/effectivity-module-2.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 60,
	ingredients = {
		{"TM-effectivity-module", 5},
		{"effectivity-module-2", 5},
		{type="fluid", name="Electrum", amount=500},
	},
	results = {
		{name="TM-effectivity-module-2", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-effectivity-module-3",
    icon = "__base__/graphics/icons/effectivity-module-3.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 60,
	ingredients = {
		{"TM-effectivity-module-2", 5},
		{"effectivity-module-3", 5},
		{"dark-electronic-circuit", 10},
		{type="fluid", name="Invidia", amount=500},
	},
	results = {
		{name="TM-effectivity-module-3", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-prod-module",
    icon = "__base__/graphics/icons/productivity-module.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 30,
	ingredients = {
		{"earth-shard", 1},
		{"electronic-circuit", 15},
		{type="fluid", name="Auram", amount=100},
	},
	results = {
		{name="TM-prod-module", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-prod-module-2",
    icon = "__base__/graphics/icons/productivity-module-2.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 60,
	ingredients = {
		{"TM-prod-module", 5},
		{"productivity-module-2", 5},
		{type="fluid", name="Avaritia", amount=500},
	},
	results = {
		{name="TM-prod-module-2", amount=1},
	},
},
{
	type = "recipe",
	name = "TM-prod-module-3",
    icon = "__base__/graphics/icons/productivity-module-3.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "TM-module",
	enabled = false,
	energy_required = 60,
	ingredients = {
		{"TM-prod-module-2", 5},
		{"productivity-module-3", 5},
		{"dark-electronic-circuit", 10},
		{type="fluid", name="Gula", amount=500},
	},
	results = {
		{name="TM-prod-module-3", amount=1},
	},
},
{
	type = "recipe",
	name = "law-shard",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/law-shard.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Ordo", amount=100},
		{type="fluid", name="Vitreus", amount=10},
	},
	results = {
		{name="law-shard", amount=1},
	},
},
{
	type = "recipe",
	name = "entropy-shard",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/entropy-shard.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Perditio", amount=100},
		{type="fluid", name="Vitreus", amount=10},
	},
	results = {
		{name="entropy-shard", amount=1},
	},
},
{
	type = "recipe",
	name = "water-shard",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/water-shard.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Aqua", amount=100},
		{type="fluid", name="Vitreus", amount=10},
	},
	results = {
		{name="water-shard", amount=1},
	},
},
{
	type = "recipe",
	name = "fire-shard",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/fire-shard.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Ignis", amount=100},
		{type="fluid", name="Vitreus", amount=10},
	},
	results = {
		{name="fire-shard", amount=1},
	},
},
{
	type = "recipe",
	name = "air-shard",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/air-shard.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Aer", amount=100},
		{type="fluid", name="Vitreus", amount=10},
	},
	results = {
		{name="air-shard", amount=1},
	},
},
{
	type = "recipe",
	name = "earth-shard",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/earth-shard.png",
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Terra", amount=100},
		{type="fluid", name="Vitreus", amount=10},
	},
	results = {
		{name="earth-shard", amount=1},
	},
},
{
	type = "recipe",
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
		icon_size = 32,
	category = "aspect-crafting",
	subgroup = "energy",
	enabled = false,
	energy_required = 21,
	ingredients = {
		{"steam-engine", 1},
		{"manasteel", 10},
		{"vis-diode", 3},
		{type="fluid", name="Ignis", amount=400},
	},
	results = {
		{name="ignis-steam-engine", amount=1},
	},
},
{
	type = "recipe",
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
	icon_size = 32,
	category = "aspect-crafting",
	subgroup = "energy",
	enabled = false,
	energy_required = 21,
	ingredients = {
		{"boiler", 1},
		{"vis-infused-brick", 20},
		{"fire-shard", 3},
		{type="fluid", name="Ignis", amount=400},
	},
	results = {
		{name="ignis-boiler", amount=1},
	},
},
{
	type = "recipe",
	name = "manasteel-axe",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/manasteel-axe.png",
    icon_size = 32,
	category = "crafting",
	subgroup = "tool",
	enabled = false,
	energy_required = 0.5,
	ingredients = {
		{"manasteel", 5},
		{"iron-stick", 4},
	},
	results = {
		{name="manasteel-axe", amount=1},
	},
},
{
	type = "recipe",
	name = "magic-assembling-machine-1",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-assembling-machine-1.png",
	icon_size = 32,
	category = "aspect-crafting",
    subgroup = "production-machine",
	enabled = false,
	energy_required = 2,
	ingredients = {
		{"magic-gear-wheel", 5},
		{"vis-diode", 2},
		{type="fluid", name="Fabrico", amount=100},
	},
	results = {
		{name="magic-assembling-machine-1", amount=1},
	},
},
{
	type = "recipe",
	name = "magic-assembling-machine-2",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-assembling-machine-2.png",
	icon_size = 32,
	category = "aspect-crafting",
    subgroup = "production-machine",
	enabled = false,
	energy_required = 2,
	ingredients = {
		{"magic-gear-wheel", 5},
		{"vis-diode", 10},
		{"dark-electronic-circuit", 10},
		{"magic-assembling-machine-1", 1},
		{"assembling-machine-3", 1},
		{type="fluid", name="Tempus", amount=100},
	},
	results = {
		{name="magic-assembling-machine-2", amount=1},
	},
},
{
	type = "recipe",
	name = "magic-gear-wheel",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-gear-wheel.png",
	icon_size = 32,
	category = "aspect-crafting",
    subgroup = "raw-material",
	enabled = false,
	energy_required = 0.5,
	ingredients = {
		{"iron-gear-wheel", 1},
		{type="fluid", name="Machina", amount=5},
	},
	results = {
		{name="magic-gear-wheel", amount=1},
	},
},
{
    type = "recipe",
    name = "bag-of-holding-1",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 7,
	ingredients = {
		{type="fluid", name="Instrumentum", amount=500},
		{type="fluid", name="Vacuous", amount=500},
	},
	result = "bag-of-holding-1"
},
{
    type = "recipe",
    name = "bag-of-holding-2",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 14,
	ingredients = {
		{type="fluid", name="Avaritia", amount=500},
		{"vis-diode", 5},
	},
	result = "bag-of-holding-2"
},
{
    type = "recipe",
    name = "bag-of-holding-3",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 21,
	ingredients = {
		{type="fluid", name="Gula", amount=500},
		{"dark-electronic-circuit", 20},
	},
	result = "bag-of-holding-3"
},--[[
{
    type = "recipe",
    name = "small-power-crystal-1",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{"vis-diode", 5},
		{type="fluid", name="Potentia", amount=500},
	},
	result = "tm-small-power-crystal-1"
},
{
    type = "recipe",
    name = "medium-power-crystal-1",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{"vis-diode", 20},
		{type="fluid", name="Potentia", amount=2000},
	},
	result = "tm-medium-power-crystal-1"
},
{
    type = "recipe",
    name = "large-power-crystal-1",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{"vis-diode", 100},
		{type="fluid", name="Potentia", amount=10000},
	},
	result = "tm-large-power-crystal-1"
},]]--
{
	type = "recipe",
	name = "longstriders-1",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 16,
	ingredients = {
		{type="fluid", name="Iter", amount=100},
	},
	result = "longstriders-1"
},
{
	type = "recipe",
	name = "longstriders-2",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 16,
	ingredients = {
		{"longstriders-1", 5},
		{type="fluid", name="Tempus", amount=100},
	},
	result = "longstriders-2"
},
{
    type = "recipe",
    name = "magic-armor-1",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Humanus", amount=500},
	},
	result = "magic-armor-1"
},
{
    type = "recipe",
    name = "magic-armor-2",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{"magic-armor-1", 1},
		{"manasteel", 100},
		{type="fluid", name="Asidia", amount=500},
	},
	result = "magic-armor-2"
},
{
    type = "recipe",
    name = "magic-armor-3",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{"magic-armor-2", 1},
		{"dark-electronic-circuit", 100},
		{type="fluid", name="Superbia", amount=500},
	},
	result = "magic-armor-3"
},
{
    type = "recipe",
    name = "magic-night-vision-equipment",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Lux", amount=500},
		{type="fluid", name="Sensus", amount=500},
	},
	result = "magic-night-vision-equipment"
},
{
    type = "recipe",
    name = "magic-shield-1",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 5,
	ingredients = {
		{type="fluid", name="Praemundio", amount=500},
	},
	result = "magic-shield-1"
},
{
    type = "recipe",
    name = "soulfire",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 10,
	ingredients = {
		{"catalytic-coal", 1},
		{"solid-fuel", 1},
	},
	result = "soulfire"
},
{
    type = "recipe",
    name = "prismatic-fuel",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 10,
	ingredients = {
		{"soulfire", 2},
		{"rocket-fuel", 1},
	},
	result = "prismatic-fuel"
},
{
    type = "recipe",
    name = "dark-electronic-circuit",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 36,
	ingredients = {
		{"entropy-shard", 2},
		{"advanced-circuit", 8},
		{"refined-silverwood", 1},
	},
	result = "dark-electronic-circuit",
	result_count = 5,
},
{
    type = "recipe",
    name = "magic-pack-3",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 36,
	ingredients = {
		{type="fluid", name="Radio", amount=10},
		{type="fluid", name="Sensus", amount=100},
		{"dark-electronic-circuit", 10},
	},
	result = "magic-pack-3",
	result_count = 1,
},
{
    type = "recipe",
    name = "magic-personal-roboport-equipment",
	category = "crafting",
	enabled = false,
	energy_required = 36,
	ingredients = {
		{"vis-diode", 20},
		{"manasteel", 20},
	},
	result = "magic-personal-roboport-equipment",
	result_count = 1,
},
{
    type = "recipe",
    name = "tm-filter-burner-inserter",
	category = "aspect-crafting",
	enabled = false,
	energy_required = 6,
	ingredients = {
		{type = "fluid", name = "Cognitio", amount = 20},
		{"burner-inserter", 1},
	},
	result = "tm-filter-burner-inserter",
	result_count = 1,
},
})