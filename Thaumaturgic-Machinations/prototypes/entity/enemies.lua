require("prototypes.entity.guardian-animations")
local sounds = require("__base__.prototypes.entity.demo-sounds")

function guardian_attack_parameters(data)
  return
  {
    type = "projectile",
    ammo_category = "rocket",
    cooldown = data.cooldown,
    range = data.range,
    min_attack_distance = data.min_attack_distance,
    projectile_creation_distance = 1.9,
    damage_modifier = data.damage_modifier,
    warmup = 12,
    ammo_type =
    {
      category = "biological",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "acid-projectile-purple",
          starting_speed = 0.5,
          max_range = data.range * 2
        }
      }
    },
    animation = TM.guardian_attack_animation(data.scale, data.tint)
  }
end
local eldritch_guardian_scale = .75;
local eldritch_guardian_tint = {r=0.25, g=0, b=0.40, a=0.2};

data:extend(
{

{
	type = "unit",
	name = "eldritch-guardian",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/guardian.png",
	icon_size = 64,
    flags = {"placeable-player", "placeable-enemy", "placeable-off-grid", "breaths-air", "not-repairable"},
	max_health = 120,
	order = "eldritch-guardian",
	subgroup = "enemies",
	healing_per_tick = 0,
    collision_box = {{-0.3, -0.3}, {0.3, 0.3}},
    selection_box = {{-0.4, -0.4}, {0.4, 0.4}},
    sticker_box = {{-0.3, -0.5}, {0.3, 0.1}},
    distraction_cooldown = 300,
    min_pursue_time = 10 * 60,
    max_pursue_distance = 50,
    max_pursue_distance = 50,
    attack_parameters = guardian_attack_parameters(
    {
		range = 8,
		min_attack_distance = 10,
		cooldown = 100,
		damage_modifier = 20,
		scale = eldritch_guardian_scale,
		tint = eldritch_guardian_tint,
		roarvolume = 0.4
    }),
    vision_distance = 30,
    movement_speed = 0.185,
    distance_per_frame = 0.04,
    -- in pu
    pollution_to_join_attack = 200,
    corpse = "small-spitter-corpse",
    dying_explosion = "blood-explosion-small",
    working_sound = sounds.spitter_calls_big(0.46),
    dying_sound = sounds.spitter_dying_big(0.71),
    run_animation = TM.guardian_run_animation(eldritch_guardian_scale, eldritch_guardian_tint)
},

})