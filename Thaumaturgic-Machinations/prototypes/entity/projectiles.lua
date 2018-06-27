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
})