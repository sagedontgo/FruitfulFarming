## ATM
# Triggers
scoreboard players enable @a ff.withdrawAmount
scoreboard players enable @a ff.depositAmount
scoreboard players enable @a ff.balanceInquiry

execute as @a[scores={ff.withdrawAmount=1..}] run function fruitful_farming:gameplay/commands/atm/withdraw/check
execute as @a[scores={ff.depositAmount=1..}] run function fruitful_farming:gameplay/commands/atm/deposit/check
execute as @a[scores={ff.balanceInquiry=1..}] run function fruitful_farming:gameplay/commands/atm/balance_inquiry

## Daytime
execute store result score $ff.time ff.dayticks run time query daytime

## Watering Can Functionality

execute as @a[tag=!ff.holdingWateringCan,nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"watering_can"}}}}}] at @s run function fruitful_farming:gameplay/items/watering_can/player_holding
execute as @a[tag=ff.holdingWateringCan,nbt=!{SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"watering_can"}}}}}] at @s run function fruitful_farming:gameplay/items/watering_can/player_stopped_holding
execute as @a[tag=ff.holdingWateringCan] positioned ~ ~1 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.wateringCan] ~ ~1 ~
execute as @e[type=interaction,tag=ff.interactionEntity.wateringCan] on target at @s run function fruitful_farming:gameplay/items/watering_can/player_interacted

## Fertilizer Functionality
execute as @a[tag=!ff.holdingFertilizerSack,nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"fertilizer_sack"}}}}}] at @s run function fruitful_farming:gameplay/items/fertilizer_sack/player_holding
execute as @a[tag=ff.holdingFertilizerSack,nbt=!{SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{item:"fertilizer_sack"}}}}}] at @s run function fruitful_farming:gameplay/items/fertilizer_sack/player_stopped_holding
execute as @a[tag=ff.holdingFertilizerSack] positioned ~ ~1 ~ at @s run tp @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.fertilizerSack] ~ ~1 ~
execute as @e[type=interaction,tag=ff.interactionEntity.fertilizerSack] on target at @s run function fruitful_farming:gameplay/items/fertilizer_sack/player_interacted

execute as @e[type=!player] if score @s ff.fertilizationLevel matches 100.. run scoreboard players operation @s ff.fertilizationLevel = $ff.100 ff.int
execute as @e[type=item_display,tag=ff.plantGrown] if score @s ff.growthTimer matches ..-1 run scoreboard players set @s ff.growthTimer 0


## Stop from placing heads
execute as @a[tag=!ff.inAdventureMode,nbt={SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{isHead:1b}}}}}] run function fruitful_farming:core/prevent_head_place/holding_crop
execute as @a[tag=ff.inAdventureMode,nbt=!{SelectedItem:{id:"minecraft:player_head",components:{"minecraft:custom_data":{fruitfarm:{isHead:1b}}}}}] run function fruitful_farming:core/prevent_head_place/not_holding_crop

## Stop bonemeal use 
execute as @e[type=item_display,tag=ff.plantPlaced,tag=!ff.plantGrown] at @s if block ~ ~1 ~ beetroots[age=1] run setblock ~ ~1 ~ beetroots[age=0]

## Stop scoreboard overflow 
execute as @e[type=item_display,tag=ff.plantPlaced] if score @s ff.rareDropBooster matches 50.. run scoreboard players set @s ff.rareDropBooster 50
execute as @e[type=item_display,tag=ff.plantPlaced] if score @s ff.hydrationLevel matches 100.. run scoreboard players set @s ff.hydrationLevel 100

## Agritable
execute as @e[type=item_display,tag=ff.agritable,tag=ff.placing] at @s run function fruitful_farming:gameplay/blocks/agritable/place
execute as @e[type=item_display,tag=ff.agritable] at @s unless block ~ ~ ~ dropper[facing=up] run data modify entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dropper"}},limit=1] Item set value {id:"minecraft:bat_spawn_egg",count:1,components:{"item_name":'"Agritable"',"minecraft:entity_data":{id:"minecraft:item_display",Tags:["ff.agritable","ff.placing"],Rotation:[0f,0f],brightness:{sky:10,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.01f,0f],scale:[2.02f,2.02f,2.02f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;821724136,-1097380748,-1474420925,28903518],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYjRhZTU1ZDI5MGZiOGQzOTg2M2IzODU2Y2JmZmRlZTNiOTA2ZDkxNjY3NzVmNDgwMzE2NzU4OWY3NDVhMTg3ZCJ9fX0="}]}}}}}}
execute as @e[type=item_display,tag=ff.agritable] at @s unless block ~ ~ ~ dropper[facing=up] run kill @s
execute as @e[type=item_display,tag=ff.agritable] at @s run function fruitful_farming:core/agritable_recipes

## Harvest Box
execute as @e[type=item_display,tag=ff.harvest_box,tag=ff.placing] at @s run function fruitful_farming:gameplay/blocks/harvest_box/place
execute as @e[type=item_display,tag=ff.harvest_box] at @s unless block ~ ~ ~ dropper run data modify entity @e[type=item,distance=..1,nbt={Item:{id:"minecraft:dropper"}},limit=1] Item set value {id:"minecraft:bat_spawn_egg",count:1,components:{"item_name":'"Harvest Box"',"minecraft:entity_data":{id:"minecraft:item_display",Tags:["ff.harvest_box","ff.placing"],Rotation:[0f,0f],brightness:{sky:10,block:10},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1.01f,0f],scale:[2.01f,2.01f,2.01f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{id:[I;821724136,-1097380748,-1474420925,28903518],properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZmQ3NjFjYzE2NTYyYzg4ZDJmYmU0MGFkMzg1MDJiYzNiNGE4Nzg1OTg4N2RiYzM1ZjI3MmUzMGQ4MDcwZWVlYyJ9fX0="}]}}}}}}
execute as @e[type=item_display,tag=ff.harvest_box] at @s if block ~ ~1 ~ lever[powered=true] run function fruitful_farming:gameplay/blocks/harvest_box/lever_triggered
execute as @e[type=item_display,tag=ff.harvest_box] at @s if block ~ ~ ~ dropper[triggered=false] run function fruitful_farming:gameplay/blocks/harvest_box/lock
execute as @e[type=item_display,tag=ff.harvest_box] at @s unless block ~ ~ ~ dropper run kill @s

## Basic Sprinkler
execute as @e[type=item_display,tag=ff.basicSprinkler,tag=ff.placing] at @s unless entity @e[sort=nearest,limit=1,type=item_display,tag=ff.basicSprinkler,distance=0.01..0.1] run function fruitful_farming:gameplay/blocks/sprinkler/basic/place
execute as @e[type=item_display,tag=ff.basicSprinkler,tag=ff.placing] at @s if entity @e[sort=nearest,limit=1,type=item_display,tag=ff.basicSprinkler,distance=0.01..0.1] run function fruitful_farming:gameplay/blocks/sprinkler/basic/cant_place

execute as @e[type=item_display,tag=ff.basicSprinkler,tag=ff.placed] at @s run tp @s ~ ~ ~ ~10 ~
execute as @e[type=interaction,tag=ff.interactionEntity.sprinkler.basic] at @s on target run function fruitful_farming:gameplay/blocks/sprinkler/basic/pick_up

execute as @e[type=interaction,tag=ff.interactionEntity.sprinkler.basic] at @s if score $ff.time ff.dayticks matches 0..100 run function fruitful_farming:gameplay/blocks/sprinkler/basic/water

## Crops
# Cauliflower 
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=!ff.plantPlaced] at @s if block ~ ~ ~ farmland run function fruitful_farming:gameplay/crops/vegetables/cauliflower/planted
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=!ff.plantPlaced] at @s unless block ~ ~ ~ farmland run function fruitful_farming:gameplay/crops/vegetables/cauliflower/cant_plant

execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.cropAge.4] at @s unless block ~ ~1 ~ beetroots run function fruitful_farming:gameplay/crops/vegetables/cauliflower/destroyed/grown
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.cropAge.4] at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/ages/dry_soil
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced] at @s unless block ~ ~1 ~ beetroots run function fruitful_farming:gameplay/crops/general/destroy

execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.notWatered] if score @s ff.hydrationLevel matches 50.. at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/water/watered
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notWatered] if score @s ff.hydrationLevel matches ..49 at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/water/not_watered

execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.notFertile] if score @s ff.fertilizationLevel matches ..30 at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/fertilizer/not_fertile
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notFertile] if score @s ff.fertilizationLevel matches ..30 at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/fertilizer/not_fertile
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=ff.notFertile] if score @s ff.fertilizationLevel matches 30.. at @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/fertilizer/fertile
execute as @e[type=item_display,tag=ff.indicator.notFertile] at @s unless entity @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced,tag=ff.notFertile] run kill @s

execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notWatered,tag=!ff.notFertile,tag=!ff.plantGrown] as @s if score @s ff.growthTimer matches 1.. run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/timer/timer
execute as @e[type=item_display,tag=ff.cropMarker.cauliflower,tag=ff.plantPlaced,tag=!ff.notWatered,tag=!ff.notFertile,tag=!ff.plantGrown] as @s if score @s ff.growthTimer matches ..1 run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/timer/age