
data:extend({
{
	type = "ammo",
	name = "fireball",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/item/fireball.png",
	icon_size = 32,
	ammo_type =
	{
		category = "magic",
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