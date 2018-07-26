
data:extend({

{
	type = "gun",
	name = "wand",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/wand.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	subgroup = "gun",
	order = "d[rocket-launcher]",
	attack_parameters =
	{
		type = "projectile",
		ammo_category = "magic",
		movement_slow_down_factor = 0.8,
		cooldown = 60,
		projectile_creation_distance = 0.6,
		range = 22,
		projectile_center = {-0.17, 0},
		sound =
		{
			{
				filename = "__base__/sound/fight/rocket-launcher.ogg",
				volume = 0.7
			}
		}
	},
	stack_size = 5
},

})