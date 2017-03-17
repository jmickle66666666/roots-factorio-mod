data:extend({
  { -- item
    type = "item",
    name = "wooden-mining-drill",
    icon = "__roots__/graphics/icons/wooden-mining-drill.png",
    flags = {"goes-to-quickbar"},
    subgroup = "extraction-machine",
    order = "a[items]-a[burner-mining-drill]",
    place_result = "wooden-mining-drill",
    stack_size = 50
  },
  { -- recipe
    type = "recipe",
    name = "wooden-mining-drill",
    energy_required = 2,
    ingredients =
    {
      {"wood", 4},
      {"wood-cog", 3},
      {"stone", 3}
    },
    result = "wooden-mining-drill"
  },
  { -- entity
    type = "mining-drill",
    name = "wooden-mining-drill",
    icon = "__roots__/graphics/icons/wooden-mining-drill.png",
    flags = {"placeable-neutral", "player-creation"},
    resource_categories = {"basic-solid"},
    minable = {mining_time = 1, result = "wooden-mining-drill"},
    max_health = 50,
    corpse = "medium-remnants",
    collision_box = {{ -0.9, -0.9}, {0.9, 0.9}},
    selection_box = {{ -1, -1}, {1, 1}},
    mining_speed = 0.2,
    working_sound =
    {
      sound =
      {
        filename = "__base__/sound/burner-mining-drill.ogg",
        volume = 0.8
      },
    },
    energy_source =
    {
      type = "burner",
      effectivity = 1,
      fuel_inventory_size = 1,
      emissions = 0.1 / 3,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0.1, 0.1},
          frequency = 3
        }
      }
    },
    energy_usage = "150kW",
    mining_power = 1.5,
    animations =
    {
      north =
      {
        priority = "extra-high",
        width = 110,
        height = 76,
        line_length = 4,
        shift = {0.6875, -0.09375},
        filename = "__roots__/graphics/entity/wooden-mining-drill/north.png",
        frame_count = 32,
        animation_speed = 0.3,
        run_mode = "forward-then-backward",
      },
      east =
      {
        priority = "extra-high",
        width = 94,
        height = 74,
        line_length = 4,
        shift = {0.4375, -0.09375},
        filename = "__roots__/graphics/entity/wooden-mining-drill/east.png",
        frame_count = 32,
        animation_speed = 0.3,
        run_mode = "forward-then-backward",
      },
      south =
      {
        priority = "extra-high",
        width = 89,
        height = 88,
        line_length = 4,
        shift = {0.40625, 0},
        filename = "__roots__/graphics/entity/wooden-mining-drill/south.png",
        frame_count = 32,
        animation_speed = 0.3,
        run_mode = "forward-then-backward",
      },
      west =
      {
        priority = "extra-high",
        width = 91,
        height = 78,
        line_length = 4,
        shift = {0.09375, -0.0625},
        filename = "__roots__/graphics/entity/wooden-mining-drill/west.png",
        frame_count = 32,
        animation_speed = 0.3,
        run_mode = "forward-then-backward",
      }
    },
    resource_searching_radius = 0.99,
    vector_to_place_result = {-0.5, -1.3},
    fast_replaceable_group = "mining-drill"
  }
})