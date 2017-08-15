data:extend({
{
	type = "technology",
	name = "magic-personal-bots-1",
	prerequisites = {"magic-armor-1","manasteel","magic-electronics"},
	icon = "__base__/graphics/technology/personal-roboport-equipment.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "magic-personal-roboport-equipment"
		},
	},
	unit = {
		count = 25,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "magic-personal-bots-1",
},
{
	type = "technology",
	name = "prismatic-fuel",
	prerequisites = {"soulfire","rocket-silo"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/prismatic-fuel.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "prismatic-fuel"
		},
	},
	unit = {
		count = 120,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
			{name = "magic-pack-3", amount = 1}
		},
		time = 10
	},
	order = "prismatic-fuel",
},
{
	type = "technology",
	name = "soulfire",
	prerequisites = {"death-magic","alumentum","oil-processing"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/soulfire.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "soulfire"
		},
	},
	unit = {
		count = 400,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "soulfire",
},
{
	type = "technology",
	name = "longstriders-1",
	prerequisites = {"magic-armor-1"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/longstriders-1.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "longstriders-1"
		},
	},
	unit = {
		count = 120,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "longstriders-1",
},
{
	type = "technology",
	name = "longstriders-2",
	prerequisites = {"longstriders-1","advanced-magic-electronics"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/longstriders-1.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "longstriders-2"
		},
	},
	unit = {
		count = 360,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
			{name = "magic-pack-3", amount = 1},
		},
		time = 10
	},
	order = "longstriders-1",
},
{
	type = "technology",
	name = "magic-night-vision-equipment",
	prerequisites = {"magic-armor-2"},
	icon = "__base__/graphics/technology/night-vision-equipment.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "magic-night-vision-equipment"
		},
	},
	unit = {
		count = 75,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "longstriders-1",
},
{
	type = "technology",
	name = "magic-armor-1",
	prerequisites = {"magic"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-armor-1.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "magic-armor-1"
		},
	},
	unit = {
		count = 400,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "magic-armor-1",
},
{
	type = "technology",
	name = "magic-armor-2",
	prerequisites = {"magic-armor-1","manasteel"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-armor-1.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "magic-armor-2"
		},
	},
	unit = {
		count = 700,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "magic-armor-2",
},
{
	type = "technology",
	name = "magic-armor-3",
	prerequisites = {"magic-armor-2","advanced-magic-electronics"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/magic-armor-1.png",
	icon_size = 32,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "magic-armor-3"
		},
	},
	unit = {
		count = 1200,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
			{name = "magic-pack-3", amount = 1},
		},
		time = 10
	},
	order = "magic-armor-3",
},--[[
{
	type = "technology",
	name = "medium-power-crystal-1",
	prerequisites = {"magic-armor-1"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/technology/fire-shard_hr.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "medium-power-crystal-1"
		},
	},
	unit = {
		count = 400,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "medium-power-crystal-1",
},
{
	type = "technology",
	name = "large-power-crystal-1",
	prerequisites = {"medium-power-crystal-1","magic-armor-3"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/technology/fire-shard_hr.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "large-power-crystal-1"
		},
	},
	unit = {
		count = 700,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "large-power-crystal-1",
},]]--
{
	type = "technology",
	name = "magic-shield-1",
	prerequisites = {"magic-armor-1"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/technology/magic-shield-1.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "magic-shield-1"
		},
	},
	unit = {
		count = 300,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "magic-shield-1",
},
{
	type = "technology",
	name = "bag-of-holding-1",
	prerequisites = {"magic-armor-1"},
	icon = "__Thaumaturgic-Machinations__/graphics/equipment/bag-of-holding-1.png",
	icon_size = 64,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "bag-of-holding-1"
		},
	},
	unit = {
		count = 100,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "bag-of-holding-1",
},
{
	type = "technology",
	name = "bag-of-holding-2",
	prerequisites = {"bag-of-holding-1","crystallized-aspects"},
	icon = "__Thaumaturgic-Machinations__/graphics/equipment/bag-of-holding-2.png",
	icon_size = 64,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "bag-of-holding-2"
		},
	},
	unit = {
		count = 250,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
		},
		time = 10
	},
	order = "bag-of-holding-2",
},
{
	type = "technology",
	name = "bag-of-holding-3",
	prerequisites = {"bag-of-holding-2","advanced-magic-electronics"},
	icon = "__Thaumaturgic-Machinations__/graphics/equipment/bag-of-holding-3.png",
	icon_size = 64,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "bag-of-holding-3"
		},
	},
	unit = {
		count = 400,
		ingredients = {
			{name = "research-note", amount = 1},
			{name = "brain-in-a-jar", amount = 1},
			{name = "magic-pack-3", amount = 1},
		},
		time = 10
	},
	order = "bag-of-holding-3",
},
{
	type = "technology",
	name = "magic-modules-2",
	prerequisites = {"magic-modules-1", "speed-module-2", "effectivity-module-2", "magic-electronics"},
	icon = "__base__/graphics/technology/module.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "TM-speed-module-2"
		},
		{
			type = "unlock-recipe",
			recipe = "TM-effectivity-module-2"
		},
		{
			type = "unlock-recipe",
			recipe = "TM-prod-module-2"
		},
	},
	unit = {
		count = 800,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
		},
		time = 10,
	},
	order = "magic-assembler-1",
},
{
	type = "technology",
	name = "magic-modules-3",
	prerequisites = {"magic-modules-2", "speed-module-3", "effectivity-module-3", "advanced-magic-electronics"},
	icon = "__base__/graphics/technology/module.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "TM-speed-module-3"
		},
		{
			type = "unlock-recipe",
			recipe = "TM-effectivity-module-3"
		},
		
		{
			type = "unlock-recipe",
			recipe = "TM-prod-module-3"
		},
	},
	unit = {
		count = 1850,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
			{name="magic-pack-3", amount=1}
		},
		time = 10,
	},
	order = "magic-assembler-1",
},
{
	type = "technology",
	name = "advanced-aspect-refining",
	prerequisites = {"magic-assembler-1", "advanced-material-processing"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/crucible-2.png",
	icon_size = 32,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "crucible-2"
		},
	},
	unit = {
		count = 750,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
		},
		time = 10,
	},
	order = "magic-assembler-1",
},

{
	type = "technology",
	name = "magic-assembler-1",
	prerequisites = {"magic-electronics", "automation-2"},
	icon = "__base__/graphics/technology/automation.png",
	icon_size = 128,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "magic-assembling-machine-1"
		},
		{
        type = "unlock-recipe",
        recipe = "magic-gear-wheel"
		},
	},
	unit = {
		count = 100,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
		},
		time = 10,
	},
	order = "magic-assembler-1",
},

{
	type = "technology",
	name = "magic-assembler-2",
	prerequisites = {"magic-assembler-1", "automation-3", "advanced-magic-electronics"},
	icon = "__base__/graphics/technology/automation.png",
	icon_size = 128,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "magic-assembling-machine-2"
		},
	},
	unit = {
		count = 200,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
			{name="magic-pack-3", amount=1},
		},
		time = 10,
	},
	order = "magic-assembler-2",
},

{
	type = "technology",
	name = "fire-magic",
	prerequisites = {"magic"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Ignis.png",
	icon_size = 32,
	effects = {
		
	},
	unit = {
		count = 75,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "fire-magic",
},

{
	type = "technology",
	name = "magic-electric-engines",
	prerequisites = {"fire-magic","magic-electronics"},
	icon = "__base__/graphics/technology/electric-engine.png",
	icon_size = 128,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "ignis-boiler"
		},
		{
        type = "unlock-recipe",
        recipe = "ignis-steam-engine"
		},
	},
	unit = {
		count = 325,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "fire-magic",
},

{
	type = "technology",
	name = "magic",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Primal-Aspects.png",
	icon_size = 96,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "crucible"
		},
		{
        type = "unlock-recipe",
        recipe = "thaumic-stone-furnace"
		},
		{
        type = "unlock-recipe",
        recipe = "infused-thaumic-stone-furnace"
		},
		{
        type = "unlock-recipe",
        recipe = "temp-aspect-machine"
		},
		{
        type = "unlock-recipe",
        recipe = "TM-lab"
		},
		{
        type = "unlock-recipe",
        recipe = "research-note"
		},
		{
        type = "unlock-recipe",
        recipe = "catalytic-coal"
		},
		{
        type = "unlock-recipe",
        recipe = "vis-infused-brick"
		},
		{
        type = "unlock-recipe",
        recipe = "vis-infused-wood"
		},
		{
        type = "unlock-recipe",
        recipe = "refined-silverwood"
		},
		{
		type = "unlock-recipe",
		recipe = "tm-filter-burner-inserter"
		}
	},
	unit = {
		count = 10,
		ingredients = {
			{name="science-pack-1", amount=1},
		},
		time = 10,
	},
	order = "a",
},

{
	type = "technology",
	name = "alumentum",
	prerequisites = {"fire-magic"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/alumentum.png",
	icon_size = 32,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "alumentum"
		},
	},
	unit = {
		count = 60,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "alumentum",
},

{
	type = "technology",
	name = "manasteel",
	prerequisites = {"magic", "steel-processing"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/manasteel.png",
	icon_size = 32,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "manasteel"
		},
		{
        type = "unlock-recipe",
        recipe = "manasteel-axe"
		},
	},
	unit = {
		count = 50,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "manasteel",
},

{
	type = "technology",
	name = "magic-modules-1",
	prerequisites = {"magic-electronics", "crystallized-aspects"},
	icon = "__base__/graphics/technology/module.png",
	icon_size = 128,
	effects = {
		{
			type = "unlock-recipe",
			recipe = "TM-speed-module"
		},
		{
			type = "unlock-recipe",
			recipe = "TM-effectivity-module"
		},
		{
			type = "unlock-recipe",
			recipe = "TM-prod-module"
		},
	},
	unit = {
		count = 70,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "magic-modules-1",
},

{
	type = "technology",
	name = "death-magic",
	prerequisites = {"magic-electronics"},
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Mortuus.png",
	icon_size = 32,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "gravestone"
		},
		{
        type = "unlock-recipe",
        recipe = "brain-in-a-jar"
		},
	},
	unit = {
		count = 110,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "death-magic",
},

{
	type = "technology",
	name = "magic-electronics",
	prerequisites = {"electronics", "crystallized-aspects"},
	icon = "__base__/graphics/technology/electronics.png",
	icon_size = 128,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "vis-diode"
		},
	},
	unit = {
		count = 55,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "magic-electronics",
},

{
	type = "technology",
	name = "advanced-magic-electronics",
	prerequisites = {"advanced-electronics", "magic-electronics", "soulfire"},
	icon = "__base__/graphics/technology/advanced-electronics.png",
	icon_size = 128,
	effects = {
		{
        type = "unlock-recipe",
        recipe = "dark-electronic-circuit"
		},
		{
        type = "unlock-recipe",
        recipe = "magic-pack-3"
		},
	},
	unit = {
		count = 285,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount = 1},
		},
		time = 10,
	},
	order = "magic-electronics",
},

{
	type = "technology",
	name = "magic-trees",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/silverwood-tree.png",
	icon_size = 64,
	prerequisites = {"magic"},
	effects = {
		{
        type = "unlock-recipe",
        recipe = "thaumic-tree-farm"
		},
		{
        type = "unlock-recipe",
        recipe = "silverwood-seedling"
		},
		{
        type = "unlock-recipe",
        recipe = "grow-silverwood"
		},
		{
        type = "unlock-recipe",
        recipe = "TM-seedling"
		},
		{
        type = "unlock-recipe",
        recipe = "grow-wood"
		},
	},
	unit = {
		count = 100,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "magic-trees",
},

{
	type = "technology",
	name = "crystallized-aspects",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/all-shard_hr.png",
	icon_size = 128,
	prerequisites = {"magic"},
	effects = {
		{
        type = "unlock-recipe",
        recipe = "law-shard"
		},
		{
        type = "unlock-recipe",
        recipe = "entropy-shard"
		},
		{
        type = "unlock-recipe",
        recipe = "earth-shard"
		},
		{
        type = "unlock-recipe",
        recipe = "air-shard"
		},
		{
        type = "unlock-recipe",
        recipe = "fire-shard"
		},
		{
        type = "unlock-recipe",
        recipe = "water-shard"
		},
	},
	unit = {
		count = 200,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "crystallized-aspects",
},
})
if combine_seperate_modifier ~= 0 then
data:extend({
{
	type = "technology",
	name = "aspect-seperation-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Seperate/seperate-Gelum.png",
	icon_size = 128,
	prerequisites = {"magic"},
	effects = {
	},
	unit = {
		count = 10,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "aspect-seperation-1",
},
{
	type = "technology",
	name = "aspect-seperation-2",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Seperate/seperate-Auram.png",
	icon_size = 128,
	effects = {
	},
    prerequisites = {"aspect-seperation-1"},
	unit = {
		count = 50,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "aspect-seperation-2",
},
{
	type = "technology",
	name = "aspect-seperation-3",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Seperate/seperate-Alienis.png",
	icon_size = 128,
	effects = {
	},
    prerequisites = {"aspect-seperation-2"},
	unit = {
		count = 80,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1}
		},
		time = 10,
	},
	order = "aspect-seperation-3",
},
{
	type = "technology",
	name = "aspect-seperation-4",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Seperate/seperate-Infernus.png",
	icon_size = 128,
	effects = {
	},
    prerequisites = {"aspect-seperation-3"},
	unit = {
		count = 100,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
			{name="magic-pack-3", amount=1}
		},
		time = 10,
	},
	order = "aspect-seperation-4",
},

{
	type = "technology",
	name = "aspect-combination-1",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Combine/combine-Gelum.png",
	icon_size = 128,
	prerequisites = {"magic"},
	effects = {
	},
	unit = {
		count = 10,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "aspect-combination-1",
},
{
	type = "technology",
	name = "aspect-combination-2",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Combine/combine-Auram.png",
	icon_size = 128,
	effects = {
	},
    prerequisites = {"aspect-combination-1"},
	unit = {
		count = 50,
		ingredients = {
			{name="research-note", amount=1},
		},
		time = 10,
	},
	order = "aspect-combination-2",
},
{
	type = "technology",
	name = "aspect-combination-3",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Combine/combine-Alienis.png",
	icon_size = 128,
	effects = {
	},
    prerequisites = {"aspect-combination-2"},
	unit = {
		count = 80,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
		},
		time = 10,
	},
	order = "aspect-combination-3",
},
{
	type = "technology",
	name = "aspect-combination-4",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Combine/combine-Infernus.png",
	icon_size = 128,
	effects = {
	},
    prerequisites = {"aspect-combination-3"},
	unit = {
		count = 100,
		ingredients = {
			{name="research-note", amount=1},
			{name="brain-in-a-jar", amount=1},
			{name="magic-pack-3", amount=1},
		},
		time = 10,
	},
	order = "aspect-combination-4",
},
})
end