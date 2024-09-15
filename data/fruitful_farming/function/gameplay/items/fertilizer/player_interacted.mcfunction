
execute as @s at @s anchored eyes positioned ^ ^ ^ anchored feet run function fruitful_farming:gameplay/items/fertilizer/raycast/start
execute as @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.fertilizer] run data remove entity @s interaction

