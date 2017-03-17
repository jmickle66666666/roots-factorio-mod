data:extend({
  { -- item
    type = "item",
    name = "wood-cog",
    icon = "__roots__/graphics/icons/wood-cog.png",
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "c[wood-cog]",
    stack_size = 100
  },
  {
    type = "recipe",
    name = "wood-cog",
    ingredients = {{"wood", 2}},
    result = "wood-cog",
    requester_paste_multiplier = 10
  },
})