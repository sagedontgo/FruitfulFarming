execute if entity @s[tag=!ff.notWatered] run scoreboard players remove @s ff.growthTimer 1

scoreboard players operation $ff.temp ff.growthTimer = @s ff.growthTimer
execute store result score $ff.temp ff.growthTimer run scoreboard players operation $ff.temp ff.growthTimer %= $ff.100 ff.int
execute if score $ff.temp ff.growthTimer matches ..1 as @s run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/timer/random_tick

