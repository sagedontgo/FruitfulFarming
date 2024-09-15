execute store result score @s ff.fertilizationLevel run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score $ff.randomValue ff.fertilizationLevel run random value 1..7
scoreboard players operation @s ff.fertilizationLevel -= $ff.randomValue ff.fertilizationLevel
scoreboard players reset $ff.randomValue ff.fertilizationLevel

playsound minecraft:block.rooted_dirt.break block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill_success block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill block @a[distance=..5] ~ ~ ~ 10 1

execute if block ~ ~ ~ composter[level=0] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+0.03 ,"add":true}]
execute if block ~ ~ ~ composter[level=1] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+0.06 ,"add":true}]
execute if block ~ ~ ~ composter[level=2] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+0.09 ,"add":true}]
execute if block ~ ~ ~ composter[level=3] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+1.00 ,"add":true}]
execute if block ~ ~ ~ composter[level=4] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+1.03 ,"add":true}]
execute if block ~ ~ ~ composter[level=5] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+1.05 ,"add":true}]
execute if block ~ ~ ~ composter[level=6] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+1.08 ,"add":true}]
execute if block ~ ~ ~ composter[level=7] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+1.09 ,"add":true}]
execute if block ~ ~ ~ composter[level=8] run item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+2.0 ,"add":true}]

setblock ~ ~ ~ composter

