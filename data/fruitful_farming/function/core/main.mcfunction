## Watering Can Functionality

execute as @a[tag=!ff.holdingWateringCan,nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"watering_can"}}}}}] at @s run function fruitful_farming:gameplay/items/watering_can/player_holding
execute as @a[tag=ff.holdingWateringCan,nbt=!{SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"watering_can"}}}}}] at @s run function fruitful_farming:gameplay/items/watering_can/player_stopped_holding
execute as @a[tag=ff.holdingWateringCan] positioned ~ ~1 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.wateringCan] ~ ~1 ~
execute as @e[type=interaction,tag=ff.interactionEntity.wateringCan] on target at @s run function fruitful_farming:gameplay/items/watering_can/player_interacted

## Fertilizer Functionality
execute as @a[tag=!ff.holdingFertilizer,nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"fertilizer"}}}}}] at @s run function fruitful_farming:gameplay/items/fertilizer/player_holding
execute as @a[tag=ff.holdingFertilizer,nbt=!{SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"fertilizer"}}}}}] at @s run function fruitful_farming:gameplay/items/fertilizer/player_stopped_holding
execute as @a[tag=ff.holdingFertilizer] positioned ~ ~1 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.fertilizer] ~ ~1 ~
execute as @e[type=interaction,tag=ff.interactionEntity.fertilizer] on target at @s run function fruitful_farming:gameplay/items/fertilizer/player_interacted

execute as @e[type=!player] if score @s ff.fertilizationLevel matches 100.. run scoreboard players operation @s ff.fertilizationLevel = $ff.100 ff.int
execute as @e[type=item_display,tag=ff.plantGrown] if score @s ff.growthTimer matches ..-1 run scoreboard players set @s ff.growthTimer 0



## Stop from placing heads
execute as @a[tag=!ff.inAdventureMode,nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{isHead:1b}}}}}] run function fruitful_farming:core/prevent_head_place/holding_crop
execute as @a[tag=ff.inAdventureMode,nbt=!{SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{isHead:1b}}}}}] run function fruitful_farming:core/prevent_head_place/not_holding_crop

## Stop bonemeal use 
execute as @e[type=item_display,tag=ff.plantPlaced,tag=!ff.plantGrown] at @s if block ~ ~1 ~ beetroots[age=1] run setblock ~ ~1 ~ beetroots[age=0]


## Growth Timer 

## Crops
# Cauliflower 
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=!ff.plantPlaced] at @s if block ~ ~ ~ farmland run function fruitful_farming:gameplay/crops/vegetables/cauliflower/planted
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=!ff.plantPlaced] at @s unless block ~ ~ ~ farmland run function fruitful_farming:gameplay/crops/vegetables/cauliflower/cant_plant

execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.cropAge.3] at @s unless block ~ ~1 ~ beetroots run function fruitful_farming:gameplay/crops/vegetables/cauliflower/destroyed/grown
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.cropAge.3] at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growth/dry_soil
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced] at @s unless block ~ ~1 ~ beetroots run function fruitful_farming:gameplay/crops/vegetables/cauliflower/destroyed/destroy

execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.notWatered] at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/water/not_watered
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notWatered] at @s if block ~ ~ ~ farmland[moisture=0] run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/water/watered
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.notFertile] if score @s ff.fertilizationLevel matches ..30 at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/fertilizer/not_fertile
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notFertile] if score @s ff.fertilizationLevel matches ..30 at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/fertilizer/not_fertile
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.notFertile] if score @s ff.fertilizationLevel matches 30.. at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/fertilizer/fertile
execute as @e[type=item_display,tag=ff.indicator.notFertile] at @s unless entity @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced,tag=ff.notFertile] run kill @s

execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notWatered,tag=!ff.notFertile,tag=!ff.plantGrown] as @s if score @s ff.growthTimer matches 1.. run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/timer/timer
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notWatered,tag=!ff.notFertile,tag=!ff.plantGrown] as @s if score @s ff.growthTimer matches ..1 run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/timer/age

