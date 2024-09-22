data merge entity @s {start_interpolation:-1,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.3f,0f],scale:[0.5f,0.5f,0.5f]}}


execute store result score $ff.randomValue ff.fertilizationLevel run random value 20..30

scoreboard players operation $temp ff.fertilizationLevel = $ff.randomValue ff.fertilizationLevel
scoreboard players operation $temp ff.fertilizationLevel *= $ff.randomValue ff.fertilizationLevel
scoreboard players operation $temp ff.fertilizationLevel /= $ff.100 ff.int
scoreboard players operation @s ff.fertilizationLevel -= $temp ff.fertilizationLevel 

scoreboard players reset $temp ff.fertilizationLevel
scoreboard players reset $ff.randomValue ff.fertilizationLevel

scoreboard players remove @s ff.hydrationLevel 20

scoreboard players set @s ff.age 1
scoreboard players reset $ff.randomValue
tag @s add ff.cropAge.1
tag @s add ff.aged
tag @s remove ff.cropAge.0
    

