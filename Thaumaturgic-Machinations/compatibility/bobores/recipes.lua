TM.item_add_aspect("lead-ore", "Mortuus", 50)
TM.item_add_aspect("tin-ore", "Metallum", 50)
TM.item_add_aspect("nickel-ore", "Gelum", 50)
TM.item_add_aspect("quartz-ore", "Vitreus", 50)
TM.item_add_aspect("zinc-ore", "Instrumentum", 50)
TM.item_add_aspect("gold-ore", "Fames", 50)
TM.item_add_aspect("silver-ore", "Auram", 50)
TM.item_add_aspect("cobalt-ore", "Vinculum", 50)
TM.item_add_aspect("tungsten-ore", "Asidia", 50)
TM.item_add_aspect("titanium-ore", "Praemundio", 50)

if creatio_enabled then
	local creatio_ores = {
		{"lead-ore", 0, 0, 0},
		{"tin-ore", 0, 0, 0},
		{"nickel-ore", 0, 0, 0},
		{"quartz-ore", 0, 0, 0},
		{"zinc-ore", 0, 0, 0},
		{"gold-ore", 0, 0, 0},
		{"silver-ore", 0, 0, 0},
		{"cobalt-ore", 0, 0, 0},
		{"tungsten-ore", 0, 0, 0},
		{"titanium-ore", 0, 0, 0},
	}
	TM.creatio_pairs(creatio_ores)
end