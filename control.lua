script.on_event(defines.events.on_player_created, function(event)
  if game.players[1].character then 
    --remove the items you do not want the player to have
    game.players[1].character.get_inventory(defines.inventory.player_main).remove{name="iron-plate", count=8}
    --game.player.character.getinventory(defines.inventory.playerguns).remove{name="pistol", count=1}
    --game.player.character.getinventory(defines.inventory.playerammo).remove{name="basic-bullet-magazine", count=10}
    game.players[1].character.get_inventory(defines.inventory.player_quickbar).remove{name="burner-mining-drill", count = 1}
    game.players[1].character.get_inventory(defines.inventory.player_quickbar).remove{name="stone-furnace", count = 1}

    --now add the items you want
    game.players[1].character.insert{name="wood", count=5}
    game.players[1].character.insert{name="stone", count=5}
    game.players[1].character.insert{name="wooden-mining-drill", count=1}

  end
end)