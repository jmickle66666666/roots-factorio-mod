data:extend({ 
  {
    type = "recipe",
    name = "stone-axe",
    ingredients = {{"wood", 1}, {"stone", 2}},
    result = "stone-axe"
  },
  {
    type = "mining-tool",
    name = "stone-axe",
    icon = "__roots__/graphics/icons/stone-axe.png",
    flags = {"goes-to-main-inventory"},
    action =
    {
      type="direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
            type = "damage",
            damage = { amount = 5 , type = "physical"}
        }
      }
    },
    durability = 2000,
    subgroup = "tool",
    order = "a[mining]-a[stone-axe]",
    speed = 2,
    stack_size = 20
  }
})