execute if block ~ ~ ~ water run function fruitful_farming:gameplay/items/watering_can/water/drink
execute unless score @s ff.waterLevel matches 250.. unless block ~ ~ ~ water if block ~ ~ ~ #fruitful_farming:can_water at @s run function fruitful_farming:gameplay/items/watering_can/water/drain
scoreboard players remove @s ff.raySteps 1
execute if score @s ff.raySteps matches 1.. if score @s ff.raySuccess matches 0 positioned ^ ^ ^0.1 run function fruitful_farming:gameplay/items/watering_can/raycast/ray