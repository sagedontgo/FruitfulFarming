data merge entity @s {start_interpolation:-1,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1.2f,1.2f,1.2f]}}
setblock ~ ~1 ~ beetroots[age=3]


scoreboard players set @s ff.age 4
scoreboard players reset $ff.randomValue
tag @s add ff.cropAge.4
tag @s add ff.aged
tag @s add ff.plantGrown
tag @s remove ff.cropAge.3
tag @s remove ff.cropAge.2
tag @s remove ff.cropAge.1