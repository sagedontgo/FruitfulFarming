title @s times 0t 0t 0t
# execute if block ~ ~ ~ beetroots at @s run function fruitful_farming:gameplay/items/soil_fertility_probe/show_actionbar
# execute if block ~ ~ ~ farmland at @s run function fruitful_farming:gameplay/items/soil_fertility_probe/show_actionbar

execute if block ~ ~ ~ farmland if block ~ ~1 ~ beetroots at @s run function fruitful_farming:gameplay/items/soil_fertility_probe/show_actionbar


scoreboard players remove @s ff.raySteps 1
execute if score @s ff.raySteps matches 1.. if score @s ff.raySuccess matches 0 positioned ^ ^ ^0.1 run function fruitful_farming:gameplay/items/soil_fertility_probe/ray