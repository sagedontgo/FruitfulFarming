execute as @p at @s run function fruitful_farming:core/give_item/blocks/basic_sprinkler
execute if score @s ff.waterLevel matches 90..100 run give @p water_bucket
execute if score @s ff.waterLevel matches ..89 run give @p bucket
kill @e[sort=nearest,limit=1,type=item_display,tag=ff.basicSprinkler]
kill @e[sort=nearest,limit=1,type=item_display,tag=ff.indicator.hasWater]
kill @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.sprinkler.basic]
execute as @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.sprinkler.basic] run data remove entity @s interaction