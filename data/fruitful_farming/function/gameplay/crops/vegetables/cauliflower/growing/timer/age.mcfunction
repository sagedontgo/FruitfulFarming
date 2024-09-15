execute if entity @s[tag=ff.cropAge.0,tag=!ff.aged] run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growth/stage_1
execute if entity @s[tag=ff.cropAge.1,tag=!ff.aged] run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growth/stage_2
execute if entity @s[tag=ff.cropAge.2,tag=!ff.aged] run function fruitful_farming:gameplay/crops/vegetables/cauliflower/growth/stage_3

tag @s remove ff.aged