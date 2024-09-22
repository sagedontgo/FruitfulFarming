execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:rooted_dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:purple_wool"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle end_rod ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle flame ^ ^ ^1.5 0.2 0.1 0.2 0 10

execute store result score @s ff.waterLevel run data get entity @s SelectedItem.components."minecraft:damage"
item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":-0.05 ,"add":true}]

execute as @e[sort=nearest,limit=1,type=item_display,distance=..1,tag=ff.plantPlaced] run scoreboard players add @s ff.fertilizationLevel 100
execute as @e[sort=nearest,limit=1,type=item_display,distance=..1,tag=ff.plantPlaced] run scoreboard players set @s ff.growthTimer 0
execute as @e[sort=nearest,limit=1,type=item_display,distance=..1,tag=ff.plantPlaced] run function fruitful_farming:gameplay/items/fertilizer_sack/raycast/age_fully
playsound minecraft:block.rooted_dirt.break block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill block @a[distance=..5] ~ ~ ~ 10 1
playsound minecraft:entity.guardian.hurt hostile @s ~ ~ ~ 10 2
