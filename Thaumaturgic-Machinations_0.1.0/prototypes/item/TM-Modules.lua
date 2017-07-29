data:extend(
{
  {
    type = "module",
    name = "TM-speed-module",
    icon = "__base__/graphics/icons/speed-module.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "TM-module",
    category = "speed",
    tier = 1,
    order = "a[speed]-a[speed-module-1]",
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.05}}
  },
  {
    type = "module",
    name = "TM-speed-module-2",
    icon = "__base__/graphics/icons/speed-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "TM-module",
    category = "speed",
    tier = 2,
    order = "a[speed]-b[speed-module-2]",
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.4}, consumption = {bonus = 0.3}}
  },
  {
    type = "module",
    name = "TM-speed-module-3",
    icon = "__base__/graphics/icons/speed-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "TM-module",
    category = "speed",
    tier = 3,
    order = "a[speed]-c[speed-module-3]",
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.8}, consumption = {bonus = 0.7}}
  },
  {
    type = "module",
    name = "TM-effectivity-module",
    icon = "__base__/graphics/icons/effectivity-module.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "TM-module",
    category = "effectivity",
    tier = 1,
    order = "c[effectivity]-a[effectivity-module-1]",
    stack_size = 50,
    default_request_amount = 10,
    effect = { consumption = {bonus = -0.2}},
    limitation = production
  },
  {
    type = "module",
    name = "TM-effectivity-module-2",
    icon = "__base__/graphics/icons/effectivity-module-2.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "TM-module",
    category = "effectivity",
    tier = 2,
    order = "c[effectivity]-b[effectivity-module-2]",
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.1}, consumption = {bonus = -0.4}}
  },
  {
    type = "module",
    name = "TM-effectivity-module-3",
    icon = "__base__/graphics/icons/effectivity-module-3.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "TM-module",
    category = "effectivity",
    tier = 3,
    order = "c[effectivity]-c[effectivity-module-3]",
    stack_size = 50,
    default_request_amount = 10,
    effect = { speed = {bonus = 0.1}, consumption = {bonus = -0.8}}
  }
})