data:extend({

{
    type = "recipe",
    name = "catalytic-coal",
    category = "thaumic-smelting",
    normal =
    {
      enabled = true,
      energy_required = 5,
      ingredients = {{"coal", 2}},
      result = "catalytic-coal"
    },
    expensive =
    {
      enabled = true,
      energy_required = 10,
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
      enabled = true,
      energy_required = 5,
      ingredients = {{"stone-brick", 10}},
      result = "vis-infused-brick",
	  result_count = 10,
    },
    expensive =
    {
      enabled = true,
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
      enabled = true,
      energy_required = 1,
      ingredients = {{"raw-wood", 2}},
      result = "vis-infused-wood",
	  result_count = 5,
    },
    expensive =
    {
      enabled = true,
      energy_required = 1,
      ingredients = {{"raw-wood", 1}},
      result = "vis-infused-wood",
	  result_count = 2,
    }
},
{
	type = "recipe",
	name = "thaumic-stone-furnace",
	category = "crafting",
	enabled = true,
	energy_required = 1,
	ingredients = {{"stone-brick", 5}},
	result = "thaumic-stone-furnace",
},
{
	type = "recipe",
	name = "infused-thaumic-stone-furnace",
	category = "aspect-crafting",
	enabled = true,
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
	enabled = true,
	energy_required = 1,
	ingredients = {
		{"coal", 1},
		{type="fluid", name="Ignis", amount=20},
		{type="fluid", name="Potentia", amount=20},
	},
	result = "alumentum",
},
{
	type = "recipe",
	name = "research-note",
	category = "aspect-crafting",
	enabled = true,
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
	enabled = true,
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
	enabled = true,
	energy_required = 1,
	ingredients = {{"stone-brick", 10},
					{"iron-plate", 10}},
	result = "crucible",
},
{
	type = "recipe",
	name = "TM-lab",
	category = "aspect-crafting",
	enabled = true,
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
	name = "silverwood-seedling",
	category = "aspect-crafting",
	enabled = true,
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
	enabled = true,
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
	name = "grow-wood",
	category = "thaumic-tree-farm",
	enabled = true,
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
	icon = "__Thaumaturgic-Machinations__/graphics/icons/WIP.png",
	category = "aspect-crafting",
	subgroup = "raw-material",
	enabled = true,
	energy_required = 1,
	ingredients = {
		{"raw-silverwood", 1},
		{type="fluid", name="Lux", amount=200},
	},
	results = {
		{type="fluid", name="Herba", amount=200},
		{name="refined-silverwood", amount=1},
	},
},


})