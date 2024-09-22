execute store result score @s ff.fertilizationLevel run data get entity @s SelectedItem.components."minecraft:damage"
scoreboard players set @s ff.raySteps 15
scoreboard players set @s ff.raySuccess 0
function fruitful_farming:gameplay/items/fertilizer_sack/raycast/ray
