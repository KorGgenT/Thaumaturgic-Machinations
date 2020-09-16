require("prototypes.entity.explosion")
data:extend({
{
    type = "projectile",
    name = "fireball",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {--[[
          {
            type = "create-entity",
            entity_name = "explosion"
          },]]--
          {
            type = "create-entity",
            entity_name = "small-scorchmark",
            check_buildability = true
          }
        }
      }
    },
	final_action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "create-entity",
            entity_name = "fireball-explosion",
          },
          {
            type = "nested-result",
            action =
            {
              type = "area",
              perimeter = 6,
			  radius = 6,
              action_delivery =
              {
                type = "instant",
                target_effects =
                {
                  {
                    type = "damage",
                    damage = {amount = 300, type = "fire"}
                  },
                  {
                    type = "create-entity",
                    entity_name = "explosion"
                  }
                }
              }
            }
          }
        }
      }
    },
    light = {intensity = 2, size = 4},
    animation =
    {
      filename = "__Thaumaturgic-Machinations__/graphics/entity/projectile/fireball/fireball.png",
      frame_count = 5,
      line_length = 5,
      width = 38,
      height = 88,
      shift = {0, 0},
      priority = "high",
	  animation_speed = 1/4,
    },
    smoke =
    {
      {
        name = "smoke-fast",
        deviation = {0.15, 0.15},
        frequency = 1,
        position = {0, -1},
        slow_down_factor = 1,
        starting_frame = 3,
        starting_frame_deviation = 5,
        starting_frame_speed = 0,
        starting_frame_speed_deviation = 5
      }
    }
  },--[[
  smoke
  {
    name = "nuclear-smoke",
    spread_duration = 0,
    duration = 120,
    fade_away_duration = 120,
    start_scale = 0.5,
    end_scale = 1,
    affected_by_wind = false
  },]]--
  {
    type = "projectile",
    name = "acid-projectile-purple",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action =
    {
      type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {
            type = "play-sound",
            sound =
            {
              {
                filename = "__Thaumaturgic-Machinations__/sounds/projectile-acid-burn-1.ogg",
                volume = 0.8
              },
              {
                filename = "__Thaumaturgic-Machinations__/sounds/projectile-acid-burn-2.ogg",
                volume = 0.8
              },
              {
                filename = "__Thaumaturgic-Machinations__/sounds/projectile-acid-burn-long-1.ogg",
                volume = 0.8
              },
              {
                filename = "__Thaumaturgic-Machinations__/sounds/projectile-acid-burn-long-2.ogg",
                volume = 0.8
              }
            }
          },
          {
            type = "create-entity",
            entity_name = "acid-splash-purple"
          },
          {
            type = "damage",
            damage = {amount = 10, type = "acid"}
          }
        }
      }
    },
    animation =
    {
      filename = "__Thaumaturgic-Machinations__/graphics/entity/projectile/acid-projectile-purple/acid-projectile-purple.png",
      line_length = 5,
      width = 16,
      height = 18,
      frame_count = 33,
      priority = "high"
    },
    shadow =
    {
      filename = "__Thaumaturgic-Machinations__/graphics/entity/projectile/acid-projectile-purple/acid-projectile-purple-shadow.png",
      line_length = 5,
      width = 28,
      height = 16,
      frame_count = 33,
      priority = "high",
      shift = {-0.09, 0.395}
    },
    rotatable = false
  },
{
    type = "corpse",
    name = "acid-splash-purple",
    flags = {"not-on-map"},
    time_before_removed = 60 * 30,
    final_render_layer = "corpse",
    splash =
    {
      {
        filename = "__Thaumaturgic-Machinations__/graphics/entity/acid-splash-purple/splash-1.png",
        line_length = 5,
        width = 199,
        height = 159,
        frame_count = 20,
        shift = {0.484375, -0.171875}
      },
      {
        filename = "__Thaumaturgic-Machinations__/graphics/entity/acid-splash-purple/splash-2.png",
        line_length = 5,
        width = 238,
        height = 157,
        frame_count = 20,
        shift = {0.8125, -0.15625}
      },
      {
        filename = "__Thaumaturgic-Machinations__/graphics/entity/acid-splash-purple/splash-3.png",
        line_length = 5,
        width = 240,
        height = 162,
        frame_count = 20,
        shift = {0.71875, -0.09375}
      },
      {
        filename = "__Thaumaturgic-Machinations__/graphics/entity/acid-splash-purple/splash-4.png",
        line_length = 5,
        width = 241,
        height = 146,
        frame_count = 20,
        shift = {0.703125, -0.375}
      }
    },
    splash_speed = 0.03
  }
})