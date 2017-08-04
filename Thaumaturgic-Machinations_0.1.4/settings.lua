data:extend({
	{
		type = "bool-setting",
		name = "creatio-enabled",
		setting_type = "startup",
		default_value = false,
		per_user = false,
		order = "creatio-1"
	},
	{
		type = "double-setting",
		name = "creatio-aspect-cost",
		setting_type = "startup",
		default_value = 50,
		--maximum_value = 1,
		minimum_value = 1,
		per_user = false,
		order = "creatio-2"
	},
	{
		type = "double-setting",
		name = "creatio-primal-cost",
		setting_type = "startup",
		default_value = 50,
		--maximum_value = 1,
		minimum_value = 1,
		per_user = false,
		order = "creatio-3"
	},
	{
		type = "double-setting",
		name = "creatio-recipe-time",
		setting_type = "startup",
		default_value = 1,
		--maximum_value = 1,
		minimum_value = 0,
		per_user = false,
		order = "creatio-4"
	},
	{
		type = "double-setting",
		name = "creatio-multiplier",
		setting_type = "startup",
		default_value = 2,
		--maximum_value = 1,
		minimum_value = 1,
		per_user = false,
		order = "creatio-5"
	},
	{
		type = "double-setting",
		name = "combine-seperate-modifier",
		setting_type = "startup",
		default_value = 0.1,
		maximum_value = 1,
		minimum_value = 0,
		per_user = false,
		order = "TM-1"
	},
	{
		type = "bool-setting",
		name = "debug-enabled",
		setting_type = "startup",
		default_value = true,
		per_user = true,
		order = "zzz"
	},
})