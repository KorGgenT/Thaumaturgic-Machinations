local here_filename = "__Thaumaturgic-Machinations__/graphics/equipment/crystal/"
local gen_name = "-power-crystal-" -- generic name.
local nrg = 5 -- base energy required for crystal recipes
local crys_sizes = {
	{name = "small", width = 1, height = 2, tier = 1}, 
	{name = "medium",width = 2, height = 3, tier = 2},
	{name = "large", width = 5, height = 3, tier = 3},
	{name = "huge", width = 7, height = 5, tier = 4}
}
local crystal_list = {
	pink = {
		color = "pink",
		tier = 1,
		base_power = 30, -- power per square, in kilowatts
		ing = { -- base ingredients, per square
			{"vis-diode", 2},
			{type = "fluid", name = "Potentia", amount = 250}
		}
	},
	green = {
		color = "green",
		tier = 2,
		base_power = 45,
		ing = {
			{"dark-electronic-circuit", 2},
			{type = "fluid", name = "Alienis", amount = 250}
		}
	},
	blue = {
		color = "blue",
		tier = 3,
		base_power = 60,
		ing = {
			{"dark-electronic-circuit", 5},
			{type = "fluid", name = "Superbia", amount = 250}
		}
	}
}
local function crys_modify_ingredients(size_index, crys_obj)
	local mod_ing = {}
	local modifier = 2 ^ (size_index - 1)
	for _, v in pairs(crys_obj.ing) do
		if v.type then
			mod_ing[#mod_ing + 1] = {type = v.type, name = v.name, amount = v.amount * modifier}
		elseif v[1] then
			mod_ing[#mod_ing + 1] = {v[1], v[2] * modifier}
		end
	end
	return mod_ing
end
local function crys_tech_create(sz, crys_obj)
	local unit, preq = nil,{}
	local crys_ing = {{name = "research-note", amount = 1}}
	local tech_prev = crys_obj.tier - 1 -- requires the previous tier power crystal.
	if tech_prev == 0 then
		if not crys_sizes[sz - 1] then
			preq[#preq + 1] = "magic-armor-1"
		end
	else
		preq[#preq + 1] = "tm-" .. crys_sizes[sz].name .. gen_name .. tech_prev
	end
	if crys_sizes[sz - 1] then
		preq[#preq + 1] = "tm-" .. crys_sizes[sz - 1].name .. gen_name .. crys_obj.tier
	end
	if crys_obj.tier > 1 then
		crys_ing[#crys_ing + 1] = {name = "brain-in-a-jar", amount = 1}
	end
	if crys_obj.tier > 2 then
		crys_ing[#crys_ing + 1] = {name = "magic-pack-3", amount = 1}
	end
	unit = {
		count = 75 * crys_obj.tier * sz ^ 2,
		ingredients = crys_ing,
		time = 15 * crys_obj.tier
	}
	return unit, preq
end
TM.debug_log("CREATING TM POWER CRYSTALS:")
for i, crys in pairs(crystal_list) do -- each object should be a tier/color
	for i2, sz in pairs(crys_sizes) do -- iterate over the sizes for each obj
		local h = sz.height
		local w = sz.width
		local powr = crys.base_power * w * h * sz.tier
		local nm = "tm-" .. sz.name .. gen_name .. crys.tier
		local modified_ingredients = crys_modify_ingredients(sz.tier, crys)
		local tech_unit, tech_preq = crys_tech_create(sz.tier, crys)
		local lcl_nm = {"item-name.power-crystal" .. "-" .. crys.tier, {"item-name." .. sz.name}}
		TM.debug_log(nm)
		data:extend({
			{
				type = "item",
				name = nm,
				localised_name = lcl_nm,
				icons = {
					{
						icon = here_filename .. crys.color .. "/icon.png",
					},
					{
						icon = "__Thaumaturgic-Machinations__/graphics/icons/" .. string.upper(sz.name:sub(1,1)) .. ".png",
					}
				},
				icon_size = 32,
				placed_as_equipment_result = nm,
				flags = {"goes-to-main-inventory"},
				subgroup = "magic-equipment",
				order = "b[energy-source]-" .. sz.tier .. "-" .. crys.tier,
				stack_size = 20
			},
			{
				type = "generator-equipment",
				name = nm,
				localised_name = lcl_nm,
				sprite = {
					filename = here_filename .. crys.color .. "/" .. sz.name .. ".png",
					width = w * 32,
					height = h * 32,
					priority = "medium",
				},
				shape = {
					width = w,
					height = h,
					type = "full"
				},
				energy_source = {
					type = "electric",
					usage_priority = "primary-output"
				},
				categories = {"magic-armor"},
				power = powr .. "kW"
			},
			{
				type = "recipe",
				name = nm,
				icons = {
					{
						icon = here_filename .. crys.color .. "/icon.png",
					},
					{
						icon = "__Thaumaturgic-Machinations__/graphics/icons/" .. string.upper(sz.name:sub(1,1)) .. ".png",
					}
				},
				icon_size = 32,
				category = "aspect-crafting",
				enabled = false,
				energy_required = nrg * crys.tier,
				ingredients = modified_ingredients,
				result = nm
			},
			{
				type = "technology",
				name = nm,
				localised_name = lcl_nm,
				prerequisites = tech_preq,
				icon = here_filename .. crys.color .. "/tech.png",
				icon_size = 128,
				effects = {{type = "unlock-recipe",recipe = nm}},
				order = gen_name .. crys.tier .. "-" .. sz.tier,
				unit = tech_unit
			}
		})
	end	
end