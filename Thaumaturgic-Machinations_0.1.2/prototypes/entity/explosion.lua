
data:extend({

{
	type = "explosion",
	name = "fireball-explosion",
	flags = {"not-on-map"},
	animations =
	{
	  {
		filename = "__base__/graphics/entity/big-explosion/big-explosion.png",
		priority = "extra-high",
		flags = { "compressed" },
		width = 197,
		height = 245,
		frame_count = 47,
		line_length = 6,
		axially_symmetrical = false,
		direction_count = 1,
		shift = {0.1875, -0.75},
		animation_speed = 0.5
	  }
	},
	light = {intensity = 1, size = 50, color = {r=1.0, g=1.0, b=1.0}},
	sound =
	{
	  aggregation =
	  {
		max_count = 1,
		remove = true
	  },
	  variations =
	  {
		{
		  filename = "__base__/sound/fight/large-explosion-1.ogg",
		  volume = 1.0
		},
		{
		  filename = "__base__/sound/fight/large-explosion-2.ogg",
		  volume = 1.0
		}
	  }
	},
	created_effect =
	{
	  type = "direct",
	  action_delivery =
	  {
		type = "instant",--[[
		target_effects =
		{
		  {
			type = "create-particle",
			repeat_count = 20,
			entity_name = "explosion-remnants-particle",
			initial_height = 0.5,
			speed_from_center = 0.08,
			speed_from_center_deviation = 0.15,
			initial_vertical_speed = 0.08,
			initial_vertical_speed_deviation = 0.15,
			offset_deviation = {{-0.2, -0.2}, {0.2, 0.2}}
		  }
		}]]--
	  }
	}
},

})