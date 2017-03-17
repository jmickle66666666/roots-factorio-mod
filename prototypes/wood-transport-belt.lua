require ("prototypes.wood-transport-belt-data")

data:extend({
  {
    type = "recipe",
    name = "wood-transport-belt",
    ingredients =
    {
      {"wood", 1},
      {"wood-cog", 1}
    },
    result = "wood-transport-belt",
    result_count = 2,
    requester_paste_multiplier = 4
  },
  {
    type = "item",
    name = "wood-transport-belt",
    icon = "__roots__/graphics/icons/wood-transport-belt.png",
    flags = {"goes-to-quickbar"},
    subgroup = "belt",
    order = "a[wood-transport-belt]-a[wood-transport-belt]",
    place_result = "wood-transport-belt",
    stack_size = 50
  },
  {
    type = "transport-belt",
    name = "wood-transport-belt",
    icon = "__roots__/graphics/icons/wood-transport-belt.png",
    flags = {"placeable-neutral", "player-creation"},
    minable = {hardness = 0.2, mining_time = 0.3, result = "wood-transport-belt"},
    max_health = 50,
    corpse = "small-remnants",
    collision_box = {{-0.4, -0.4}, {0.4, 0.4}},
    selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/transport-belt.ogg",
        volume = 0.4
      },
      max_sounds_per_type = 3
    },
    animation_speed_coefficient = 32,
    animations =
    {
      filename = "__roots__/graphics/entity/wood-transport-belt/wood-transport-belt.png",
      priority = "extra-high",
      width = 40,
      height = 40,
      frame_count = 16,
      direction_count = 12
    },
    belt_horizontal = basic_belt_horizontal,
    belt_vertical = basic_belt_vertical,
    ending_top = basic_belt_ending_top,
    ending_bottom = basic_belt_ending_bottom,
    ending_side = basic_belt_ending_side,
    starting_top = basic_belt_starting_top,
    starting_bottom = basic_belt_starting_bottom,
    starting_side = basic_belt_starting_side,
    ending_patch = ending_patch_prototype,
    fast_replaceable_group = "transport-belt",
    speed = 0.02125,
    connector_frame_sprites = transport_belt_connector_frame_sprites,
    circuit_connector_sprites = transport_belt_circuit_connector_sprites,
    circuit_wire_connection_point = transport_belt_circuit_wire_connection_point,
    circuit_wire_max_distance = transport_belt_circuit_wire_max_distance
  },
})