
data:extend({
{
	type = "ammo",
	name = "fireball",
	icon = "__base__/graphics/icons/rocket.png",
	icon_size = 32,
	flags = {"goes-to-main-inventory"},
	ammo_type =
	{
		category = "rocket",
		action =
		{
		type = "direct",
		action_delivery =
		{
			type = "projectile",
			projectile = "fireball",
			starting_speed = 0.3,
			source_effects =
			{
				type = "create-entity",
				entity_name = "explosion-hit"
			}
		}
		}
	},
	subgroup = "ammo",
	order = "d[rocket-launcher]-a[basic]",
	stack_size = 200
},
})