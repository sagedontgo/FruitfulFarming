execute if block ~ ~ ~ composter run function fruitful_farming:gameplay/items/fertilizer/contents/fill
execute unless score @s ff.fertilizationLevel matches 350.. unless block ~ ~ ~ composter if block ~ ~ ~ farmland at @s run function fruitful_farming:gameplay/items/fertilizer/contents/fertilize
scoreboard players remove @s ff.raySteps 1
execute if score @s ff.raySteps matches 1.. if score @s ff.raySuccess matches 0 positioned ^ ^ ^0.1 run function fruitful_farming:gameplay/items/fertilizer/raycast/ray