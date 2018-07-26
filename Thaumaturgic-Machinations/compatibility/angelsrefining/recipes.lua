TM.item_add_aspect("angels-ore1", "Permutatio", 50) --saphirite
TM.item_add_aspect("angels-ore3", "Vacuous", 50) --stiratite
TM.item_add_aspect("angels-ore5", "Examinis", 50) --rubyte
TM.item_add_aspect("angels-ore6", "Vitium", 50) --bobmonium
TM.item_add_aspect("angels-ore2", "Fabrico", 50) --jivolite
TM.item_add_aspect("angels-ore4", "Aversio", 50) --crotinnium

if creatio_enabled then
	local creatio_ores = {
		{"angels-ore1", 0, 0, 0},
		{"angels-ore2", 0, 0, 0},
		{"angels-ore3", 0, 0, 0},
		{"angels-ore4", 0, 0, 0},
		{"angels-ore5", 0, 0, 0},
		{"angels-ore6", 0, 0, 0},
	}
	TM.creatio_pairs(creatio_ores)
end