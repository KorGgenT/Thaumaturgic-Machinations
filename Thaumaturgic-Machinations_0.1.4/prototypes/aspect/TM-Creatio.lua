data:extend({
{
	type = "item-group",
	name = "creatio-fluid",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/creatio-fluid.png",
	icon_size = 64,
	order = "z",
},
{
	type = "item-subgroup",
	name = "creatio-gas",
	group = "creatio-fluid",
	order = "b"
},
{
	type = "item-subgroup",
	name = "creatio-liquid",
	group = "creatio-fluid",
	order = "a"
},
{
	type = "item-group",
	name = "creatio-recipes",
	icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Creatio.png",
	order = "v",
},
{
	type = "item-subgroup",
	name = "creatio-gas-recipe",
	group = "creatio-recipes",
	order = "c"
},
{
	type = "item-subgroup",
	name = "creatio-liquid-recipe",
	group = "creatio-recipes",
	order = "b"
},
{
	type = "item-subgroup",
	name = "creatio-ore-recipe",
	group = "creatio-recipes",
	order = "a"
},
{
	type = "recipe-category",
	name = "ex-nihilo",
	group = "creatio-recipes",
},
})


--[[ 
The below funtion will create creatio recipes, and also gaseous and liquid forms of ore.
standard RGB Values, not the % that factorio uses.
(string,r,g,b)
]]--

function creatio_recipe(item, red, green, blue)
	local item_aspect = nil
	local item_aspect_amount = nil
	local reason = " "
	if data.raw.recipe[item .. "-aspect-extraction"] ~= nil then
		item_aspect = data.raw.recipe[item .. "-aspect-extraction"].results[1].name
		item_aspect_amount = data.raw.recipe[item .. "-aspect-extraction"].results[1].amount
	else
		reason = reason .. "aspect is nil. "
	end
	if red < 0 or red > 255 or green < 0 or green > 255 or blue < 0 or blue > 255 then
		item_aspect = nil
		reason = reason .. "invalid RBG value. "
	end
		

	if item_aspect ~= nil then
		local local_item = "item-name." .. item
		
		data:extend({
			{
				type = "fluid",
				name = item .. "-liquid",
				localised_name = {"fluid-name.creatio-liquid", {local_item}},
				default_temperature = 25,
				heat_capacity = "0.1KJ",
				base_color = {r = red / 255, g = green / 255, b = blue / 255},
				flow_color = {r = red / 255, g = green / 255, b = blue / 255},
				max_temperature = 100,
				icons = {
					{
						icon = data.raw.item[item].icon,
						scale = 1,
						shift = {0,0}
					},
					{
						icon = "__base__/graphics/icons/fluid/water.png",
						scale = 0.5,
						shift = {-10,10}
					},
				},
				pressure_to_speed_ratio = 0.6,
				flow_to_energy_ratio = 0.59,
				subgroup = "creatio-liquid",
				order = item,
			},
			{
				type = "fluid",
				name = item .. "-gas",
				localised_name = {"fluid-name.creatio-gas", {local_item}},
				default_temperature = 25,
				heat_capacity = "0.1KJ",
				base_color = {r = red / 255, g = green / 255, b = blue / 255},
				flow_color = {r = red / 255, g = green / 255, b = blue / 255},
				max_temperature = 100,
				icons = {
					{
						icon = data.raw.item[item].icon,
						scale = 1,
						shift = {0,0}
					},
					{
						icon = "__Thaumaturgic-Machinations__/graphics/icons/item/gas-compressed-air.png",
						scale = 0.5,
						shift = {-10,10}
					},
				},
				pressure_to_speed_ratio = 0.6,
				flow_to_energy_ratio = 0.59,
				subgroup = "creatio-gas",
				order = item,
			},
			{
				type = "recipe",
				name = item .. "-gas",
				icons = {
					{
						icon = data.raw.item[item].icon,
						scale = 1,
						shift = {0,0}
					},
					{
						icon = "__Thaumaturgic-Machinations__/graphics/icons/item/gas-compressed-air.png",
						scale = 0.5,
						shift = {-10,10}
					},
				},
				category = "ex-nihilo",
				subgroup = "creatio-gas-recipe",
				order = item,
				enabled = true, --- ENABLED
				energy_required = creatio_recipe_time,
				ingredients = {
					{type = "fluid", name = "Creatio", amount = creatio_aspect_cost},
					{type = "fluid", name = item_aspect, amount = 10 * item_aspect_amount},
					{type = "fluid", name = "Aer", amount = creatio_primal_cost}
				},
				results = {
					{type = "fluid", name = item .. "-gas", amount = 100}
				},
			},
			{
				type = "recipe",
				name = item .. "-liquid",
				icons = {
					{
						icon = data.raw.item[item].icon,
						scale = 1,
						shift = {0,0}
					},
					{
						icon = "__base__/graphics/icons/fluid/water.png",
						scale = 0.5,
						shift = {-10,10}
					},
				},
				category = "ex-nihilo",
				subgroup = "creatio-liquid-recipe",
				order = item,
				enabled = true, --- ENABLED
				energy_required = creatio_recipe_time,
				ingredients = {
					{type = "fluid", name = item .. "-gas", amount = 100},
					{type = "fluid", name = item_aspect, amount = 10 * item_aspect_amount},
					{type = "fluid", name = "Aqua", amount = creatio_primal_cost}
				},
				results = {
					{type = "fluid", name = item .. "-liquid", amount = 100}
				},
			},
			{
				type = "recipe",
				name = item .. "-precipitation",
				icons = {
					{
						icon = data.raw.item[item].icon,
						scale = 1,
						shift = {0,0}
					},
					{
						icon = "__Thaumaturgic-Machinations__/graphics/icons/Aspect/Creatio.png",
						scale = 0.5,
						shift = {-10,10}
					},
				},
				category = "ex-nihilo",
				subgroup = "creatio-ore-recipe",
				order = item,
				enabled = true, --- ENABLED
				energy_required = creatio_recipe_time,
				ingredients = {
					{type = "fluid", name = item .. "-liquid", amount = 100},
					{type = "fluid", name = item_aspect, amount = 10 * item_aspect_amount},
					{type = "fluid", name = "Terra", amount = creatio_primal_cost}
				},
				results = {
					{item, 30*creatio_multiplier}
				},
			},
		})
		
		TM.debug_log("Creating Creatio recipes for " .. item)
	else
		if reason == " " then
			reason = " unknown."
		end
		log("Failed to make Creatio recipes for " .. item .. ". Reason:" .. reason)
	end
end

--[[
The below function iterates the above function over a table.
]]--

function TM.creatio_pairs(ores)
	for i,v in pairs(ores) do
		creatio_recipe(v[1], v[2], v[3], v[4])
	end
end
-- Creatio Refinery
data:extend({

{
	type = "item",
	name = "creatio-refinery",
	icon = "__base__/graphics/icons/oil-refinery.png",
	flags = {"goes-to-quickbar"},
	subgroup = "production-machine",
	order = "d[refinery]",
	place_result = "creatio-refinery",
	stack_size = 10
},

{
    type = "assembling-machine",
    name = "creatio-refinery",
    icon = "__base__/graphics/icons/oil-refinery.png",
    flags = {"placeable-neutral","player-creation"},
    minable = {mining_time = 1, result = "creatio-refinery"},
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
    crafting_categories = {"ex-nihilo"},
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
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {-1, 3} }}
      },
      {
        production_type = "output",
        pipe_covers = pipecoverspictures(),
        base_area = 10,
        base_level = 1,
        pipe_connections = {{ type="output", position = {1, 3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {-2, -3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {0, -3} }}
      },
      {
        production_type = "input",
        pipe_covers = pipecoverspictures(),
        base_level = -1,
        pipe_connections = {{ type="input", position = {2, -3} }}
      }
    },
    pipe_covers = pipecoverspictures()
  },
  
{
	type = "recipe",
	name = "creatio-refinery",
	category = "aspect-crafting",
	energy_required = 10,
	ingredients =
	{
		{"oil-refinery", 1},
		{type = "fluid", name = "Creatio", amount = 1000},
	},
	result = "creatio-refinery",
	enabled = true
},
  
})

-- EVERYTHING BELOW THIS LINE IS WHAT ACTUALLY NEEDS TO BE DEFINED IN OTHER ADDONS
creatio_ores = {
	{"iron-ore", 0, 0, 0},
	{"copper-ore", 0, 0, 0},
	{"stone", 0, 0, 0},
	{"coal", 0, 0, 0},
	{"uranium-ore", 0, 0, 0},
}
TM.creatio_pairs(creatio_ores)