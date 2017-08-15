require("prototypes.entity.pipepictures")
data:extend {
{
	type = "tree",
	name = "silverwood-tree",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/silverwood-tree.png",
	flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
	minable = {
		mining_particle = "wooden-particle",
		mining_time = 10,
		result = "raw-silverwood",
		count = 100
	},
	corpse = "silverwood-stump",
	remains_when_mined = "silverwood-stump",
	emissions_per_tick = -0.001,
	max_health = 4000,
	collision_box = {{-0.7, 0}, {0.7, 1}},
	selection_box = {{-2, -11}, {2, 1}},
	drawing_box = {{-0.9, -10.4}, {0.9, 0}},
	subgroup = "trees",
	order = "z",
	vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },

	autoplace =
	{
	  order = "a[doodad]-a[rock]",
	  peaks =
	  {
		{
		  influence = 0.0002
		},
		{
		  influence = 0.002;
		  min_influence = 0,
		  elevation_optimal = 30000,
		  elevation_range = 23000,
		  elevation_max_range = 30000,
		}
	  }
	},

	pictures =
	{
	{
		filename = "__Thaumaturgic-Machinations__/graphics/entity/silverwood/hr_silverwood.png",
		width = 1290,
		scale = 0.7,
		height = 907,
		shift = {8.7,-4},
	},
	},
	--[[variations = {
	trunk = {
		filename = "__Thaumaturgic-Machinations__/graphics/icons/entity/silverwood-tree.png",
		flags = { "mipmap" },
		width = 1290,
		height = 907,
		frame_count = 1,
		shift = {0,0}
	},
	},]]--
	--colors = tree_data.colors,
	darkness_of_burnt_tree = 0.2,
},

{
	type = "corpse",
	name = "silverwood-stump",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/silverwood-stump.png",
	flags = {"placeable-neutral", "not-on-map"},
	collision_box = {{0,0}, {0,0}},
	selection_box = {{0,0}, {0,0}},
	tile_width = 1,
	tile_height = 1,
	selectable_in_game = false,
	time_before_removed = 60 * 60 * 15, -- 15 minutes
	final_render_layer = "remnants",
	subgroup = "remnants",
	order = "d[remnants]-b[tree]-y[silverwood]",
	animation = {
		filename = "__Thaumaturgic-Machinations__/graphics/entity/silverwood/silverwood-stump.png",
		width = 320,
		height = 180,
		frame_count = 1,
		direction_count = 1,
		shift = {0,0.5},
		scale = 0.6
	}
},

{
    type = "furnace",
    name = "thaumic-stone-furnace",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/thaumic_furnace.png",
	localised_name = {"item-name.TM", {"entity-name.stone-furnace"}},
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "thaumic-stone-furnace"},
    max_health = 200,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg", }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"thaumic-smelting"},
    result_inventory_size = 1,
    energy_usage = "5MW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "chemical",
      effectivity = 1,
      fuel_inventory_size = 2,
      emissions = 0.001,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
	  layers = {
        {
        filename = "__Thaumaturgic-Machinations__/graphics/entity/thaumic-furnace/thaumic_stone_furnace_off.png",
        priority = "extra-high",
        width = 128,
        height = 90,
        frame_count = 1,
		scale = 0.9,
        shift = {0.25, -0.25},
			hr_version = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/thaumic-furnace/hr_thaumic_stone_furnace_off.png",
				priority = "extra-high",
				width = 256,
				height = 180,
				frame_count = 1,
				shift = util.by_pixel(9.5, -5.5),
				scale = 0.5 * 0.9
			}
        },
      }
    },
    working_visualisations = {
        {
			north_position = {0.0, 0.0},
			east_position = {0.0, 0.0},
			south_position = {0.0, 0.0},
			west_position = {0.0, 0.0},
			animation = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/thaumic-furnace/thaumic_stone_furnace.png",
				priority = "extra-high",
				line_length = 16,
				width = 128,
				height = 90,
				frame_count = 100,
				scale = 0.9,
				animation_speed = 1.5,
				shift = {0.25, -0.25},
				axially_symmetrical = false,
				direction_count = 1,
				hr_version = {
					filename = "__Thaumaturgic-Machinations__/graphics/entity/thaumic-furnace/hr_thaumic_stone_furnace.png",
					priority = "extra-high",
					line_length = 8,
					width = 256,
					height = 180,
					frame_count = 100,
					axially_symmetrical = false,
					direction_count = 1,
					animation_speed = 1.5,
					shift = util.by_pixel(9.5, -5.5),
					scale = 0.5 * 0.9
				}
			},
        light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}},
        },
      },
    --fast_replaceable_group = "furnace"
},

{
    type = "furnace",
    name = "infused-thaumic-stone-furnace",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/infused_thaumic_furnace.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "infused-thaumic-stone-furnace"},
    max_health = 200,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__base__/sound/furnace.ogg", }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-0.8, -0.8}, {0.8, 0.8}},
    selection_box = {{-1, -1}, {1, 1}},
    crafting_categories = {"thaumic-smelting"},
    result_inventory_size = 1,
    energy_usage = "1MW",
    crafting_speed = 0.75,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "Vis",
      effectivity = 1,
      fuel_inventory_size = 2,
      emissions = 0.002,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation = {
		layers = {
			{
				filename = "__Thaumaturgic-Machinations__/graphics/entity/infused-thaumic-furnace/infused_thaumic_stone_furnace_off.png",
				priority = "extra-high",
				width = 128,
				height = 90,
				frame_count = 1,
				scale = 0.9,
				shift = {0.25, -0.25},
				hr_version = {
					filename = "__Thaumaturgic-Machinations__/graphics/entity/infused-thaumic-furnace/hr_infused_thaumic_stone_furnace_off.png",
					priority = "extra-high",
					width = 256,
					height = 180,
					frame_count = 1,
					shift = util.by_pixel(9.5, -5.5),
					scale = 0.5 * 0.9
				}
			},
		},
	},
	working_visualisations = {
		{
			north_position = {0.0, 0.0},
			east_position = {0.0, 0.0},
			south_position = {0.0, 0.0},
			west_position = {0.0, 0.0},
			animation = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/infused-thaumic-furnace/infused_thaumic_stone_furnace.png",
				priority = "extra-high",
				line_length = 16,
				width = 128,
				height = 90,
				frame_count = 100,
				axially_symmetrical = false,
				direction_count = 1,
				animation_speed = 1.5,
				shift = {0.25, -.025},
				scale = 0.9,
				hr_version = {
					filename = "__Thaumaturgic-Machinations__/graphics/entity/infused-thaumic-furnace/hr_infused_thaumic_stone_furnace.png",
					priority = "extra-high",
					line_length = 8,
					width = 256,
					height = 180,
					frame_count = 100,
					axially_symmetrical = false,
					direction_count = 1,
					animation_speed = 1.5,
					shift = util.by_pixel(9.5, -5.5),
					scale = 0.5 * 0.9
				}
			},
			light = {intensity = 1, size = 1, color = {r=1.0, g=1.0, b=1.0}}
		}
	},
	--fast_replaceable_group = "furnace"
},
  
{
    type = "furnace",
    name = "crucible",
	icon_size = 32,
    icon = "__Thaumaturgic-Machinations__/graphics/icons/entity/Crucible.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "crucible"},
    max_health = 200,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__Thaumaturgic-Machinations__/sounds/open-crucible.ogg", volume = 2 },
    close_sound = { filename = "__Thaumaturgic-Machinations__/sounds/close-crucible.ogg", volume = 2 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__Thaumaturgic-Machinations__/sounds/bubbling_1.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"pure-aspect-extraction"},
    result_inventory_size = 0,
    energy_usage = "200kW",
    crafting_speed = 1,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "Vis",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
    layers =
      {
        {
        filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible/crucible.png",
        priority = "extra-high",
        width = 120,
        height = 80,
		scale = 1.2,
        frame_count = 72,
		line_length = 8,
        shift = {1, 0,},
        hr_version = {
          filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible/hr_crucible.png",
          priority = "extra-high",
          width = 240,
          height = 160,
          frame_count = 72,
		  line_length = 8,
          shift = {1,0},
          scale = 0.6
          }
        },
      }
    },
    fluid_boxes =
    {
      {
        production_type = "output",
		pipe_picture = crucible_pipes(),
        pipe_covers = pipecoverspictures(),
        base_area = 10^(asp_pow_max - 2),-- this number *100 is the fluid capacity
        base_level = 1,
        pipe_connections = {{ position = {1, -1.75} }},
      },
      {
        production_type = "input",
		pipe_picture = crucible_pipes(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 1.75} }}
      },
    },
	pipe_covres = pipecoverspictures(),
    fast_replaceable_group = "crucible"
  },

{
    type = "furnace",
    name = "crucible-2",
	icon_size = 32,
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/crucible-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "crucible-2"},
    max_health = 200,
    corpse = "medium-remnants",
    repair_sound = { filename = "__base__/sound/manual-repair-simple.ogg" },
    mined_sound = { filename = "__base__/sound/deconstruct-bricks.ogg" },
    open_sound = { filename = "__Thaumaturgic-Machinations__/sounds/open-crucible.ogg", volume = 2 },
    close_sound = { filename = "__Thaumaturgic-Machinations__/sounds/close-crucible.ogg", volume = 2 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-stone-impact.ogg", volume = 1.0 },
    working_sound =
    {
      sound = { filename = "__Thaumaturgic-Machinations__/sounds/bubbling_1.ogg" }
    },
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    crafting_categories = {"pure-aspect-extraction"},
    result_inventory_size = 0,
    energy_usage = "800kW",
    crafting_speed = 4,
    source_inventory_size = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "Vis",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    animation =
    {
    layers = {
        {
        filename = "__Thaumaturgic-Machinations__/graphics/entity/crucible-2/crucible-2.png",
        priority = "extra-high",
        width = 160,
        height = 160,
		scale = 1,
        frame_count = 25,
		line_length = 5,
        shift = {0, 0},
		}
      }
    },
    fluid_boxes =
    {
      {
        production_type = "output",
		pipe_picture = crucible2_pipes(),
		pipe_covers = pipecoverspictures(),
        base_area = 10^(asp_pow_max - 2),-- this number *100 is the fluid capacity
        base_level = 1,
        pipe_connections = {{ position = {1, -1.85} }}
      },
      {
        production_type = "input",
		pipe_picture = crucible2_pipes(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 1.85} }}
      },
    },
	pipe_covres = pipecoverspictures(),
	module_specification =
    {
      module_slots = 2
    },
    fast_replaceable_group = "crucible"
},
  
  
{
    type = "assembling-machine",
    name = "temp-aspect-machine",
    icon = "__base__/graphics/icons/chemical-plant.png",
    flags = {"placeable-neutral","placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "temp-aspect-machine"},
    max_health = 300,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    module_specification =
    {
      module_slots = 3
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},

    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant.png",
        width = 122,
        height = 134,
        frame_count = 1,
        shift = util.by_pixel(-5, -4.5),
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant.png",
          width = 244,
          height = 268,
          frame_count = 1,
          shift = util.by_pixel(-5, -4.5),
          scale = 0.5
          }
      },
      {
        filename = "__base__/graphics/entity/chemical-plant/chemical-plant-shadow.png",
        width = 175,
        height = 110,
        frame_count = 1,
        shift = util.by_pixel(31.5, 11),
        draw_as_shadow = true,
        hr_version = {
          filename = "__base__/graphics/entity/chemical-plant/hr-chemical-plant-shadow.png",
          width = 350,
          height = 219,
          frame_count = 1,
          shift = util.by_pixel(31.5, 10.75),
          draw_as_shadow = true,
          scale = 0.5
          }
      },
    }}),
    working_visualisations =
    {
      {
        north_position = util.by_pixel(30, -24),
        west_position = util.by_pixel(1, -49.5),
        south_position = util.by_pixel(-30, -48),
        east_position = util.by_pixel(-11, -1),
        apply_recipe_tint = "primary",
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch.png",
          frame_count = 32,
          width = 15,
          height = 10,
          animation_speed = 0.5,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch.png",
            frame_count = 32,
            width = 30,
            height = 20,
            animation_speed = 0.5,
            scale = 0.5
          }
        }
      },

      {
        north_position = util.by_pixel(30, -24),
        west_position = util.by_pixel(1, -49.5),
        south_position = util.by_pixel(-30, -48),
        east_position = util.by_pixel(-11, -1),
        apply_recipe_tint = "secondary",
        animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-green-patch-mask.png",
          frame_count = 32,
          width = 15,
          height = 10,
          animation_speed = 0.5,
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-boiling-green-patch-mask.png",
            frame_count = 32,
            width = 30,
            height = 20,
            animation_speed = 0.5,
            scale = 0.5
          }
        }
      },


      {
        apply_recipe_tint = "tertiary",
        north_position = {0, 0},
        west_position = {0, 0},
        south_position = {0, 0},
        east_position = {0, 0},
        north_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          frame_count = 1,
          width = 87,
          height = 60,
          shift = util.by_pixel(0, -5),
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
            x = 0,
            frame_count = 1,
            width = 174,
            height = 119,
            shift = util.by_pixel(0, -5.25),
            scale = 0.5
          }
        },
        east_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          x = 87,
          frame_count = 1,
          width = 87,
          height = 60,
          shift = util.by_pixel(0, -5),
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
            x = 174,
            frame_count = 1,
            width = 174,
            height = 119,
            shift = util.by_pixel(0, -5.25),
            scale = 0.5
          }
        },
        south_animation =
        {
          filename = "__base__/graphics/entity/chemical-plant/boiling-window-green-patch.png",
          x = 174,
          frame_count = 1,
          width = 87,
          height = 60,
          shift = util.by_pixel(0, -5),
          hr_version = {
            filename = "__base__/graphics/entity/chemical-plant/hr-boiling-window-green-patch.png",
            x = 348,
            frame_count = 1,
            width = 174,
            height = 119,
            shift = util.by_pixel(0, -5.25),
            scale = 0.5
          }
        }
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        {
          filename = "__base__/sound/chemical-plant.ogg",
          volume = 0.8
        }
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_speed = 1,
    energy_source =
    {
      type = "burner",
      fuel_category = "Vis",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.01,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 5,
          position = {0.0, -0.8},
          starting_vertical_speed = 0.08,
          starting_frame_deviation = 60
        }
      }
    },
    energy_usage = "100kW",
    ingredient_count = 6,
    crafting_categories = {"combine-aspect","seperate-aspect","aspect-crafting"},
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, -2} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, -2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {-1, 2} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_level = 1,
        pipe_connections = {{ position = {1, 2} }}
      }
    }
  },

  
  {
    type = "lab",
    name = "TM-lab",
    icon = "__Thaumaturgic-Machinations__/graphics/icons/item/TM-lab.png",
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 1, result = "TM-lab"},
    max_health = 150,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    light = {intensity = 0.75, size = 8, color = {r = 1.0, g = 1.0, b = 1.0}},
    on_animation = {
		--north = {
			filename = "__Thaumaturgic-Machinations__/graphics/entity/TM-lab/TM-lab_dir1_lr_entity_spritesheet.png",
			width = 113,
			height = 73,
			line_length = 18,
			frame_count = 123,
			animation_speed = 1/3,
			scale = 1.5,
			shift = {0.9,0}
			--[[
			hr_version = {
				filename = "__Thaumaturgic-Machinations__/graphics/entity/TM-lab_dir1_hr_entity_spritesheet.png",
				width =
				height =
				scale =
				line_length =
				frame_count =
				animation_speed =
				shift = {0,0}
			},
			]]--
		--},
	},
	off_animation = {
		--north = {
		filename = "__Thaumaturgic-Machinations__/graphics/entity/TM-lab/TM-lab_dir1_lr_entity_spritesheet.png",
		width = 113,
		height = 73,
		frame_count = 1,
		scale = 1.5,
		shift = {0.9,0}
		--},
		
	},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/lab.ogg",
        volume = 0.7
      },
      apparent_volume = 1
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input"
    },
    energy_usage = "400kW",
    researching_speed = 1,
    inputs =
    {
      "research-note",
	  "brain-in-a-jar",
	  "magic-pack-3",
    },
    module_specification =
    {
      module_slots = 2,
      max_entity_info_module_icons_per_row = 3,
      max_entity_info_module_icon_rows = 1,
      module_info_icon_shift = {0, 0.9}
    }
  },
  
  {
    type = "assembling-machine",
    name = "temp-thaumic-tree-farm",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "temp-thaumic-tree-farm"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    collision_box = {{-2.4, -2.4}, {2.4, 2.4}},
    selection_box = {{-2.5, -2.5}, {2.5, 2.5}},
    module_specification =
    {
      module_slots = 3
    },
    scale_entity_info_icon = true,
    allowed_effects = {"consumption", "speed", "productivity", "pollution"},
    crafting_categories = {"thaumic-tree-farm"},
    crafting_speed = 1,
    has_backer_name = true,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.03 / 3.5
    },
    energy_usage = "420kW",
    ingredient_count = 4,


    animation = make_4way_animation_from_spritesheet({ layers =
    {
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery.png",
        width = 337,
        height = 255,
        frame_count = 1,
        shift = {2.515625, 0.484375},
        hr_version = {
          filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery.png",
          width = 386,
          height = 430,
          frame_count = 1,
          shift = util.by_pixel(0, -7.5),
          scale = 0.5
        }
      },
      {
        filename = "__base__/graphics/entity/oil-refinery/oil-refinery-shadow.png",
        width = 337,
        height = 213,
        frame_count = 1,
        shift = util.by_pixel(82.5, 26.5),
        draw_as_shadow = true,
        hr_version = {
          filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-shadow.png",
          width = 674,
          height = 426,
          frame_count = 1,
          shift = util.by_pixel(82.5, 26.5),
          draw_as_shadow = true,
          scale = 0.5
        }
      }
    }}),
    working_visualisations =
    {
      {
        north_position = util.by_pixel(34, -65),
        east_position = util.by_pixel(-52, -61),
        south_position = util.by_pixel(-59, -82),
        west_position = util.by_pixel(57, -58),
        animation =
        {
          filename = "__base__/graphics/entity/oil-refinery/oil-refinery-fire.png",
          line_length = 10,
          width = 20,
          height = 40,
          frame_count = 60,
          animation_speed = 0.75,
          shift = util.by_pixel(0, -14),
          hr_version = {
            filename = "__base__/graphics/entity/oil-refinery/hr-oil-refinery-fire.png",
            line_length = 10,
            width = 40,
            height = 81,
            frame_count = 60,
            animation_speed = 0.75,
            scale = 0.5,
            shift = util.by_pixel(0, -14.25),
          },
        },
        light = {intensity = 0.4, size = 6, color = {r = 1.0, g = 1.0, b = 1.0}}
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/oil-refinery.ogg" },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 2.5,
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {-1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {1, 3} }}
      },
    },
    pipe_covers = pipecoverspictures()
  },

{
    type = "generator",
    name = "ignis-steam-engine",
    icon = "__base__/graphics/icons/steam-engine.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "ignis-steam-engine"},
    max_health = 400,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    effectivity = 1,
    fluid_usage_per_tick = 10/60,
    maximum_temperature = 1000,
    resistances =
    {
      {
        type = "fire",
        percent = 100
      },
      {
        type = "impact",
        percent = 30
      }
    },
    fast_replaceable_group = "steam-engine",
    collision_box = {{-1.35, -2.35}, {1.35, 2.35}},
    selection_box = {{-1.5, -2.5}, {1.5, 2.5}},
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        { type = "input-output", position = {0, 3} },
        { type = "input-output", position = {0, -3} },
      },
      production_type = "input-output"
    },
    fluid_input =
    {
      name = "Ignis",
      amount = 0.0,
      minimum_temperature = 400.0
    },
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-output"
    },
    horizontal_animation =
    {
      layers =
      {
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H.png",
          width = 176,
          height = 128,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(1, -5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H.png",
            width = 352,
            height = 257,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(1, -4.75),
            scale = 0.5
          },
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-H-shadow.png",
          width = 254,
          height = 80,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(48, 24),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-H-shadow.png",
            width = 508,
            height = 160,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(48, 24),
            scale = 0.5
          },
        },
      },
    },
    vertical_animation =
    {
      layers = 
      {
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V.png",
          width = 112,
          height = 195,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(5, -6.5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V.png",
            width = 225,
            height = 391,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(4.75, -6.25),        
            scale = 0.5
          },
        },
        {
          filename = "__base__/graphics/entity/steam-engine/steam-engine-V-shadow.png",
          width = 165,
          height = 153,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(40.5, 9.5),
          hr_version = {
            filename = "__base__/graphics/entity/steam-engine/hr-steam-engine-V-shadow.png",
            width = 330,
            height = 307,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(40.5, 9.25),        
            scale = 0.5
          },
        },
      },
    },
    smoke =
    {
      {
        name = "light-smoke",
        north_position = {0.9, 0.0},
        east_position = {-2.0, -2.0},
        frequency = 10 / 32,
        starting_vertical_speed = 0.08,
        slow_down_factor = 1,
        starting_frame_deviation = 60
      }
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/steam-engine-90bpm.ogg",
        volume = 0.6
      },
      match_speed_to_activity = true,
    },
    min_perceived_performance = 0.25,
    performance_to_sound_speedup = 0.5
  },

{
    type = "boiler",
    name = "ignis-boiler",
    icon = "__base__/graphics/icons/boiler.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "ignis-boiler"},
    max_health = 200,
    corpse = "small-remnants",
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    mode = "output-to-separate-pipe",
    resistances =
    {
      {
        type = "fire",
        percent = 90
      },
      {
        type = "explosion",
        percent = 30
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = {{-1.29, -0.79}, {1.29, 0.79}},
    selection_box = {{-1.5, -1}, {1.5, 1}},
    target_temperature = 1000,
    fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = -1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "input-output", position = {-2, 0.5}},
        {type = "input-output", position = {2, 0.5}}
      },
      production_type = "input-output"
    },
    output_fluid_box =
    {
      base_area = 1,
      height = 2,
      base_level = 1,
      pipe_covers = pipecoverspictures(),
      pipe_connections =
      {
        {type = "output", position = {0, -1.5}}
      },
      production_type = "output"
    },
    fluid_input =
    {
      name = "Ignis",
      amount = 0.0
    },
    fluid_output =
    {
      name = "Ignis",
      amount = 0.0
    },
    energy_consumption = "2.05MW",
    energy_source =
    {
      type = "burner",
      fuel_category = "Vis",
      effectivity = 0.75,
      fuel_inventory_size = 1,
      emissions = 0.1 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          north_position = util.by_pixel(-38, -47.5),
          south_position = util.by_pixel(38.5, -32),
          east_position = util.by_pixel(20, -70),
          west_position = util.by_pixel(-19, -8.5),
          frequency = 15,
          starting_vertical_speed = 0.0,
          starting_frame_deviation = 60
        }
      }
    },
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/boiler.ogg",
        volume = 0.8
      },
      max_sounds_per_type = 3
    },
    
    structure =
    {
      north =
      { 
        layers = 
        { 
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-idle.png",
            priority = "extra-high",
            width = 131,
            height = 108,
            shift = util.by_pixel(-0.5, 4),
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-idle.png",
              priority = "extra-high",
              width = 269,
              height = 221,
              shift = util.by_pixel(-1.25, 5.25),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-N-shadow.png",
            priority = "extra-high",
            width = 137,
            height = 82,
            shift = util.by_pixel(20.5, 9),
            draw_as_shadow = true,
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-N-shadow.png",
              priority = "extra-high",
              width = 274,
              height = 164,
              scale = 0.5,
              shift = util.by_pixel(20.5, 9),
              draw_as_shadow = true,
            }
          }
        }
      },
      east =
      {
        layers = 
        { 
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-idle.png",
            priority = "extra-high",
            width = 105,
            height = 147,
            shift = util.by_pixel(-3.5, -0.5),
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-idle.png",
              priority = "extra-high",
              width = 216,
              height = 301,
              shift = util.by_pixel(-3, 1.25),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-E-shadow.png",
            priority = "extra-high",
            width = 92,
            height = 97,
            shift = util.by_pixel(30, 9.5),
            draw_as_shadow = true,
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-E-shadow.png",
              priority = "extra-high",
              width = 184,
              height = 194,
              scale = 0.5,
              shift = util.by_pixel(30, 9.5),
              draw_as_shadow = true,
            }
          }
        }
      },
      south =
      {
        layers = 
        { 
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-idle.png",
            priority = "extra-high",
            width = 128,
            height = 95,
            shift = util.by_pixel(3, 12.5),
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-idle.png",
              priority = "extra-high",
              width = 260,
              height = 192,
              shift = util.by_pixel(4, 13),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-S-shadow.png",
            priority = "extra-high",
            width = 156,
            height = 66,
            shift = util.by_pixel(30, 16),
            draw_as_shadow = true,
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-S-shadow.png",
              priority = "extra-high",
              width = 311,
              height = 131,
              scale = 0.5,
              shift = util.by_pixel(29.75, 15.75),
              draw_as_shadow = true,
            }
          }
        }
      },
      west =
      {
        layers = 
        { 
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-idle.png",
            priority = "extra-high",
            width = 96,
            height = 132,
            shift = util.by_pixel(1, 5),
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-idle.png",
              priority = "extra-high",
              width = 196,
              height = 273,
              shift = util.by_pixel(1.5, 7.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/boiler/boiler-W-shadow.png",
            priority = "extra-high",
            width = 103,
            height = 109,
            shift = util.by_pixel(19.5, 6.5),
            draw_as_shadow = true,
            hr_version = {
              filename = "__base__/graphics/entity/boiler/hr-boiler-W-shadow.png",
              priority = "extra-high",
              width = 206,
              height = 218,
              scale = 0.5,
              shift = util.by_pixel(19.5, 6.5),
              draw_as_shadow = true,
            }
          }
        }
      }
    },
   
    patch = 
    {
      east =
      {
        filename = "__base__/graphics/entity/boiler/boiler-E-patch.png",
        priority = "extra-high",
        width = 3,
        height = 17,
        shift = util.by_pixel(33.5, -13.5),
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-patch.png",
          width = 6,
          height = 36,
          shift = util.by_pixel(33.5, -13.5),
          scale = 0.5
        }
      },
    },
    
    fire_flicker_enabled = true,
    fire =
    {
      north =
      {
        filename = "__base__/graphics/entity/boiler/boiler-N-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 12,
        height = 13,
        animation_speed = 0.5,
        shift = util.by_pixel(0, -8.5),
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-N-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 26,
          animation_speed = 0.5,
          shift = util.by_pixel(0, -8.5),
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/boiler/boiler-E-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 14,
        height = 14,
        animation_speed = 0.5,
        shift = util.by_pixel(-10, -22),
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 28,
          height = 28,
          animation_speed = 0.5,
          shift = util.by_pixel(-9.5, -22),
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/boiler/boiler-S-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 12,
        height = 9,
        animation_speed = 0.5,
        shift = util.by_pixel(-1, -26.5),
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-S-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 26,
          height = 16,
          animation_speed = 0.5,
          shift = util.by_pixel(-1, -26.5),
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/boiler/boiler-W-fire.png",
        priority = "extra-high",
        frame_count = 64,
        line_length = 8,
        width = 14,
        height = 14,
        animation_speed = 0.5,
        shift = util.by_pixel(13, -23),
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-W-fire.png",
          priority = "extra-high",
          frame_count = 64,
          line_length = 8,
          width = 30,
          height = 29,
          animation_speed = 0.5,
          shift = util.by_pixel(13, -23.25),
          scale = 0.5
        }
      }
    },
   
    fire_glow_flicker_enabled = true,
    
    fire_glow =
    {
      north =
      {
        filename = "__base__/graphics/entity/boiler/boiler-N-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 100,
        height = 87,
        shift = util.by_pixel(-1, -6.5),
        blend_mode = "additive",
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-N-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 200,
          height = 173,
          shift = util.by_pixel(-1, -6.75),
          blend_mode = "additive",
          scale = 0.5
        }
      },
      east =
      {
        filename = "__base__/graphics/entity/boiler/boiler-E-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 70,
        height = 122,
        shift = util.by_pixel(0, -13),
        blend_mode = "additive",
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-E-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 139,
          height = 244,
          shift = util.by_pixel(0.25, -13),
          blend_mode = "additive",
          scale = 0.5
        }
      },
      south =
      {
        filename = "__base__/graphics/entity/boiler/boiler-S-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 100,
        height = 81,
        shift = util.by_pixel(1, 5.5),
        blend_mode = "additive",
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-S-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 200,
          height = 162,
          shift = util.by_pixel(1, 5.5),
          blend_mode = "additive",
          scale = 0.5
        }
      },
      west =
      {
        filename = "__base__/graphics/entity/boiler/boiler-W-light.png",
        priority = "extra-high",
        frame_count = 1,
        width = 68,
        height = 109,
        shift = util.by_pixel(2, -6.5),
        blend_mode = "additive",
        hr_version = {
          filename = "__base__/graphics/entity/boiler/hr-boiler-W-light.png",
          priority = "extra-high",
          frame_count = 1,
          width = 136,
          height = 217,
          shift = util.by_pixel(2, -6.25),
          blend_mode = "additive",
          scale = 0.5
        }
      }
    },
    burning_cooldown = 15
  },

{
    type = "assembling-machine",
    name = "magic-assembling-machine-1",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "magic-assembling-machine-1"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Thaumaturgic-Machinations__/graphics/entity/magic-assembling-machine-1/magic-assembling-machine-1.png",
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          hr_version = {
            filename = "__Thaumaturgic-Machinations__/graphics/entity/magic-assembling-machine-1/hr-magic-assembling-machine-1.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
          priority = "high",
          width = 98,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 5),
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.5
          }
        },
      },
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 1,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "180kW",
    ingredient_count = 5,
    module_specification =
    {
      module_slots = 2
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },

{
    type = "assembling-machine",
    name = "magic-assembling-machine-2",
    icon = "__base__/graphics/icons/assembling-machine-2.png",
    flags = {"placeable-neutral", "placeable-player", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.5, result = "magic-assembling-machine-2"},
    max_health = 350,
    corpse = "big-remnants",
    dying_explosion = "medium-explosion",
    resistances =
    {
      {
        type = "fire",
        percent = 70
      }
    },
    fluid_boxes =
    {
      {
        production_type = "input",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -2} }},
        secondary_draw_orders = { north = -1 }
      },
      {
        production_type = "output",
        pipe_picture = assembler2pipepictures(),
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {0, 2} }},
        secondary_draw_orders = { north = -1 }
      },
      off_when_no_fluid_recipe = true
    },
    collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
    selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
    fast_replaceable_group = "assembling-machine",
    animation =
    {
      layers =
      {
        {
          filename = "__Thaumaturgic-Machinations__/graphics/entity/magic-assembling-machine-2/magic-assembling-machine-2.png",
          priority = "high",
          width = 108,
          height = 110,
          frame_count = 32,
          line_length = 8,
          shift = util.by_pixel(0, 4),
          hr_version = {
            filename = "__Thaumaturgic-Machinations__/graphics/entity/magic-assembling-machine-2/hr-magic-assembling-machine-2.png",
            priority = "high",
            width = 214,
            height = 218,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4),
            scale = 0.5
          }
        },
        {
          filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
          priority = "high",
          width = 98,
          height = 82,
          frame_count = 32,
          line_length = 8,
          draw_as_shadow = true,
          shift = util.by_pixel(12, 5),
          hr_version = {
            filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
            priority = "high",
            width = 196,
            height = 163,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12, 4.75),
            scale = 0.5
          }
        },
      },
    },
    open_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 },
    close_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = {
        {
          filename = "__base__/sound/assembling-machine-t2-1.ogg",
          volume = 0.8
        },
        {
          filename = "__base__/sound/assembling-machine-t2-2.ogg",
          volume = 0.8
        },
      },
      idle_sound = { filename = "__base__/sound/idle1.ogg", volume = 0.6 },
      apparent_volume = 1.5,
    },
    crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
    crafting_speed = 2,
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      emissions = 0.04 / 2.5
    },
    energy_usage = "300kW",
    ingredient_count = 5,
    module_specification =
    {
      module_slots = 4
    },
    allowed_effects = {"consumption", "speed", "productivity", "pollution"}
  },

}
