--[[

]]--
local color_variants = {
	"blue",
--	"green"
}
local type_variants = {
	{
		type = "corner",
		"sw",
		"nw",
		"ne",
		"se"
	},
	{
		type = "straight",
		"h",
		"v"
	},
	{
		type = "dend",-- these directions correspond to the opening
		"n",
		"e",
		"s",
		"w"
	},
}
data:extend({
	{
		type = "item-subgroup",
		name = "ritual-tile",
		group = "combat",
		order = "j"
	}
})
local function ritual_tile(clr,variant)
	for i,c in ipairs(clr) do
		for i2, var in ipairs(variant) do
			for i3, dir in ipairs(var) do
				local tile_result = "ritual-" .. c .. "-" .. var.type
				local variant_name = tile_result .. "-" .. dir
				local dir_next = i3 + 1
				if dir_next > #var then dir_next = 1 end
				dir_next = "ritual-" .. c .. "-" .. var.type .. "-" .. var[dir_next] -- this can be assigned to next_direction
				data:extend({
					{
						type = "item",
						name = tile_result,
						icon = "__Thaumaturgic-Machinations__/graphics/tile/ritual-" .. c .. "/ritual-tile.png",
						icon_size = 32,
						flags = {"goes-to-main-inventory"},
						subgroup = "ritual-tile",
						order = i,
						stack_size = 1000,
						place_as_tile_ = {
							result = variant_name,
							condition_size = 1,
							condition = {"water-tile"}
						}
					},
					{
						type = "tile",
						name = variant_name,
						needs_correction = false,
						next_direction = dir_next,
						minable = {hardness = 0.2, mining_time = 0.5, result = tile_result},
						mined_sound = {filename = "__base__/sound/deconstruct-bricks.ogg"},
						collision_mask = {"ground-tile"},
						walking_speed_modifier = 1.1,
						layer = 61,
						decorative_removal_probability = 1,
						variants = {
							main = {
								{
									picture = "__Thaumaturgic-Machinations__/graphics/tile/ritual-" .. c .. "/" .. variant_name .. ".png",
									count = 1,
									size = 1
								},
							},
							inner_corner = {
								picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
								count = 32
							},
							outer_corner = {
								picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
								count = 16
							},
							side = {
								picture = "__base__/graphics/terrain/concrete/concrete-side.png",
								count = 16
							},
							u_transition = {
								picture = "__base__/graphics/terrain/concrete/concrete-u.png",
								count = 16
							},
							o_transition = {
								picture = "__base__/graphics/terrain/concrete/concrete-o.png",
								count = 1
							}
						},
						walking_sound = {
							{
							  filename = "__base__/sound/walking/concrete-01.ogg",
							  volume = 1.2
							},
							{
							  filename = "__base__/sound/walking/concrete-02.ogg",
							  volume = 1.2
							},
							{
							  filename = "__base__/sound/walking/concrete-03.ogg",
							  volume = 1.2
							},
							{
							  filename = "__base__/sound/walking/concrete-04.ogg",
							  volume = 1.2
							}
						},
						map_color={r=0.5, g=0.5, b=0},
						ageing = 0,
						vehicle_friction_modifier = concrete_vehicle_speed_modifier
					}
				})
			end
		end
	end
end
ritual_tile(color_variants,type_variants)
--[[
data:extend({
{
	type = "tile",
	name = "ritual-blue-corner-sw", -- sw is referring to the two directions the corner faces.
	needs_correction = false,
	next_direction = "ritual-blue-corner-nw", -- rotates clockwise
	transition_merges_with_tile = "concrete",
	minable = {hardness = 0.2, mining_time = 0.5, result = "hazard-concrete"},
	mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
	collision_mask = {"ground-tile"},
	walking_speed_modifier = 1.4,
	layer = 61,
	decorative_removal_probability = 0.25,
	variants = {
		main = {
			{
				picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete1-left.png",
				count = 16,
				size = 1
			},
			{
				picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete2-left.png",
				count = 4,
				size = 2,
				probability = 0.39,
			},
			{
				picture = "__base__/graphics/terrain/hazard-concrete-left/hazard-concrete4-left.png",
				count = 4,
				size = 4,
				probability = 1,
			},
		},
		inner_corner = {
			picture = "__base__/graphics/terrain/concrete/concrete-inner-corner.png",
			count = 32
		},
		outer_corner = {
			picture = "__base__/graphics/terrain/concrete/concrete-outer-corner.png",
			count = 16
		},
		side = {
			picture = "__base__/graphics/terrain/concrete/concrete-side.png",
			count = 16
		},
		u_transition = {
			picture = "__base__/graphics/terrain/concrete/concrete-u.png",
			count = 16
		},
		o_transition = {
			picture = "__base__/graphics/terrain/concrete/concrete-o.png",
			count = 1
		}
	},
	walking_sound = {
		{
		  filename = "__base__/sound/walking/concrete-01.ogg",
		  volume = 1.2
		},
		{
		  filename = "__base__/sound/walking/concrete-02.ogg",
		  volume = 1.2
		},
		{
		  filename = "__base__/sound/walking/concrete-03.ogg",
		  volume = 1.2
		},
		{
		  filename = "__base__/sound/walking/concrete-04.ogg",
		  volume = 1.2
		}
	},
	map_color={r=0.5, g=0.5, b=0},
	ageing=0,
	vehicle_friction_modifier = concrete_vehicle_speed_modifier
},
})
]]--