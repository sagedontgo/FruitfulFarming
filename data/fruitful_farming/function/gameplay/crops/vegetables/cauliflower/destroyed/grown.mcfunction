playsound block.crop.break block @a[distance=..5] ~ ~ ~ 10 1

execute store result score $ff.randomValue ff.rareDrop run random value 1..100
scoreboard players operation $ff.temp ff.rareDrop = $ff.randomValue ff.rareDrop 
scoreboard players operation $ff.temp ff.rareDrop *= @s ff.rareDropBooster
scoreboard players operation $ff.temp ff.rareDrop /= $ff.100 ff.int
scoreboard players operation $ff.randomValue ff.rareDrop -= $ff.temp ff.rareDrop
scoreboard players reset $ff.temp ff.rareDrop

execute if score $ff.randomValue ff.rareDrop matches ..5 run loot spawn ~ ~ ~ loot fruitful_farming:crops/golden/vegetables/cauliflower
execute if score $ff.randomValue ff.rareDrop matches 6..20 run loot spawn ~ ~ ~ loot fruitful_farming:crops/golden/vegetables/cauliflower
execute if score $ff.randomValue ff.rareDrop matches 20..100 run loot spawn ~ ~ ~ loot fruitful_farming:crops/vegetables/cauliflower
scoreboard players reset $ff.randomValue ff.rareDrop

kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:beetroot"}}]
kill @e[sort=nearest,limit=1,distance=..1,type=item_display,tag=ff.indicator]
kill @s 