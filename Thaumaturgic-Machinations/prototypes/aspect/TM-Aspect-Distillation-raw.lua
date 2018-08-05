require("prototypes.item.item")

local extraction = {
	{"water", "Aqua", 50, 1000},
	{"crude-oil", "Potentia", 50, 100},
	{"research-note", "Cognitio", 50},
	{"iron-ore", "Ordo", 50},
	{"copper-ore", "Perditio", 50},
	{"stone", "Terra", 50},
	{"coal", "Ignis", 50},
	{"raw-wood", "Aer", 50},
	{"copper-plate", "Perditio", 100},
	{"iron-plate", "Ordo", 100},
	{"stone-brick", "Terra", 120},
	{"transport-belt", "Motus", 15},
	{"seedling", "Herba", 10},
	{"small-lamp", "Lux", 100},
	{"alumentum", "Potentia", 200},
	{"steel-plate", "Metallum", 200},
	{"manasteel", "Permutatio", 200},
	{"iron-gear-wheel", "Machina", 15},
	{"assembling-machine-1", "Fabrico", 20},
	{"assembling-machine-2", "Fabrico", 50},
	{"uranium-ore", "Radio", 100},
	{"iron-chest", "Vacuous", 150},
	{"raw-fish", "Vitae", 200},
	{"heavy-armor", "Praemundio", 2500},
	{"light-armor", "Praemundio", 1000},
	{"iron-axe", "Instrumentum", 100},
	{"steel-axe", "Instrumentum", 250}
}
for i,v in pairs(extraction) do
	TM.item_add_aspect(v[1],v[2],v[3],v[4]);
	blacklist[v[1]] = true;
end


TM.debug_log("Aspect Distillation recipes complete.")