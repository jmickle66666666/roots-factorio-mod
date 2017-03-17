data:extend(
{
  {
    type = "autoplace-control",
    name = "roots",
    richness = true,
    order = "a-b-a",
  },
  {
    type = "noise-layer",
    name = "roots",
  },

  {
    type = "resource",
    name = "roots",
    icon = "__base__/graphics/icons/tree-08-stump.png",
    flags = {"placeable-neutral"},
    order="a-b-d",
    minable =
    {
      hardness = 0.4,
      mining_particle = "wooden-particle",
      mining_time = 3,
      result = "raw-wood",
    },
    collision_box = {{ -0.1, -0.1}, {0.1, 0.1}},
    selection_box = {{ -0.5, -0.5}, {0.5, 0.5}},
    autoplace =
    {
      control = "roots",
      sharpness = 1,
      richness_multiplier = 5000,
      richness_multiplier_distance_bonus = 20,
      richness_base = 500,
      coverage = 0.02,
      --size_control_multiplier = 0.1,
      peaks = {
        {
          noise_layer = "roots",
          noise_octaves_difference = -1.5,
          noise_persistence = 0.3,
          starting_area_weight_optimal = 0,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          noise_layer = "roots",
          noise_octaves_difference = -2,
          noise_persistence = 0.3,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        },
        {
          influence = 0.15,
          starting_area_weight_optimal = 1,
          starting_area_weight_range = 0,
          starting_area_weight_max_range = 2,
        }
      }
    },
    stage_counts = {2000, 1000, 500, 200, 100, 50, 20, 1},
    stages = { 
      sheet = {
        filename = "__roots__/graphics/entity/roots/roots.png",
        priority = "extra-high",
        width = 38,
        height = 38,
        frame_count = 4,
        variation_count = 8
      }
    },
    map_color = {r=0.578, g=0.470, b=0.317}
  }
})
