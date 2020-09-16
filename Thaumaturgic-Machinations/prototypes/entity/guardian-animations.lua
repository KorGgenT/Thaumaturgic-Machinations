local shift_x = 0;
local shift_y = -.5;
local mask_x = -0.08;
local mask_y = -.5;

function TM.guardian_run_animation(scale, tint)
	return
	{
		layers=
		{
			{
				width = 128,
				height = 126,
				frame_count = 10,
				direction_count = 16,
				shift = {scale * shift_x, scale * shift_y},
				scale = scale,
				filename = "__Thaumaturgic-Machinations__/graphics/entity/guardian/guardian-run.png",
				width_in_frames = 8,
				height_in_frames = 16,
				animation_speed = .1
			},

			{
				filename = "__Thaumaturgic-Machinations__/graphics/entity/guardian/guardian-run-mask.png",
				flags = { "mask" },
				width = 128,
				height = 126,
				frame_count = 10,
				direction_count = 16,
				shift = {scale * mask_x, scale * mask_y},
				scale = scale,
				tint = tint,
				animation_speed = .1
			},
		}
	}
end

function TM.guardian_attack_animation(scale, tint)
	return
	{
		layers=
		{
			{
				width = 128,
				height = 126,
				frame_count = 10,
				direction_count = 16,
				shift = {scale * shift_x, scale * shift_y},
				scale = scale,
				filename = "__Thaumaturgic-Machinations__/graphics/entity/guardian/guardian-attack.png",
				width_in_frames = 8,
				height_in_frames = 16
			},

			{
				filename = "__Thaumaturgic-Machinations__/graphics/entity/guardian/guardian-attack-mask.png",
				flags = { "mask" },
				width = 128,
				height = 126,
				frame_count = 10,
				direction_count = 16,
				shift = {scale * mask_x, scale * mask_y},
				scale = scale,
				tint = tint
			},
		}
	}
end

function TM.guardian_die_animation(scale, tint)
	return
	{
		layers=
		{
			{
				width = 128,
				height = 126,
				frame_count = 10,
				direction_count = 16,
				shift = {scale * shift_x, scale * shift_y},
				scale = scale,
				filename = "__Thaumaturgic-Machinations__/graphics/entity/guardian/guardian-die.png",
				width_in_frames = 8,
				height_in_frames = 16
			},

			{
				filename = "__Thaumaturgic-Machinations__/graphics/entity/guardian/guardian-die-mask.png",
				flags = { "mask" },
				width = 128,
				height = 128,
				frame_count = 10,
				direction_count = 16,
				shift = {scale * mask_x, scale * mask_y},
				scale = scale,
				tint = tint
			},
		}
	}
end
