execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:rooted_dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:composter"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:rooted_dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:vine"} ^ ^ ^1.5 0.2 0.1 0.2 0 10

execute store result score @s ff.waterLevel run data get entity @s SelectedItem.components."minecraft:damage"
item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":-0.01 ,"add":true}]

execute as @e[sort=nearest,limit=1,type=item_display,distance=..1,tag=ff.plantPlaced] run scoreboard players add @s ff.fertilizationLevel 10
execute as @e[sort=nearest,limit=1,type=item_display,distance=..1,tag=ff.plantPlaced] run scoreboard players remove @s ff.growthTimer 100


playsound minecraft:block.rooted_dirt.break block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill_success block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill block @a[distance=..5] ~ ~ ~ 10 1