execute if entity @s[tag=!ff.notWatered,tag=!ff.notFertile,tag=!ff.potassiumApplied] run scoreboard players remove @s ff.growthTimer 1

execute if entity @s[tag=!ff.notWatered,tag=!ff.notFertile,tag=ff.potassiumApplied] if score @s ff.fertilizerEffectiveTime matches 1.. run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/timer/apply_boost
execute if entity @s[tag=!ff.notWatered,tag=!ff.notFertile,tag=ff.potassiumApplied] if score @s ff.fertilizerEffectiveTime matches ..1 run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growing/timer/remove_boost

