execute as @p at @s run function fruitful_farming:core/give_item/blocks/basic_sprinkler
kill @e[sort=nearest,limit=1,type=item_display,tag=ff.basicSprinkler]
kill @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.sprinkler.basic]
execute as @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.sprinkler.basic] run data remove entity @s interaction