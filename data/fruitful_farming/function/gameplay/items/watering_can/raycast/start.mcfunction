execute store result score @s ff.waterLevel run data get entity @s SelectedItem.components."minecraft:damage"
scoreboard players set @s ff.raySteps 15
scoreboard players set @s ff.raySuccess 0
function fruitful_farming:gameplay/items/watering_can/raycast/ray
