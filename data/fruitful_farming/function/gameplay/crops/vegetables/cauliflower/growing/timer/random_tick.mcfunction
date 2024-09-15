execute store result score $ff.randomValue ff.growthTimer run random value 1..100
execute if score $ff.randomValue ff.growthTimer matches ..1 run scoreboard players set @s ff.growthTimer 0
execute if score $ff.randomValue ff.growthTimer matches 1.. run scoreboard players reset $ff.randomValue