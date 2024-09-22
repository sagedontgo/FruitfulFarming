execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:rooted_dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:white_concrete"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:netherrack"} ^ ^ ^1.5 0.2 0.1 0.2 0 1
# execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:vine"} ^ ^ ^1.5 0.2 0.1 0.2 0 10

execute store result score @s ff.waterLevel run data get entity @s SelectedItem.components."minecraft:damage"
item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":-0.05 ,"add":true}]

scoreboard players operation $temp ff.growthTimer = @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced] ff.growthTimer
scoreboard players operation $temp ff.growthTimer *= $ff.15 ff.int
scoreboard players operation $temp ff.growthTimer /= $ff.100 ff.int
scoreboard players operation @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced] ff.growthTimer -= $temp ff.growthTimer

execute as @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced,tag=ff.cropMarker.cauliflower] run function fruitful_farming:gameplay/items/fertilizer_sack/mineral_fertilizers/potassium_enriched

scoreboard players add @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced] ff.fertilizationLevel 20
scoreboard players reset $temp ff.growthTimer

playsound minecraft:block.rooted_dirt.break block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill block @a[distance=..5] ~ ~ ~ 10 1
playsound minecraft:block.netherrack.step block @a[distance=..5] ~ ~ ~ 10 1
playsound minecraft:block.anvil.step block @a[distance=..5] ~ ~ ~ 10 1