execute store result score @s ff.waterLevel run data get entity @s SelectedItem.components."minecraft:damage"
execute store result score $ff.randomValue ff.waterLevel run random value 1..7
item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":+0.03 ,"add":true}]
scoreboard players operation @s ff.waterLevel -= $ff.randomValue ff.waterLevel
scoreboard players reset $ff.randomValue ff.waterLevel

playsound minecraft:item.bucket.fill block @a[distance=..5] ~ ~ ~ 10 1
playsound block.stone.break block @a[distance=..6] ~ ~ ~ 1 0.5
playsound block.pointed_dripstone.drip_water_into_cauldron block @a[distance=..6] ~ ~ ~ 10 0.5

