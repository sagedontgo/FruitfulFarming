execute anchored eyes positioned ~ ~1.5 ~ run particle rain ^ ^ ^1.5 0.2 0.1 0.2 0 10

execute store result score @s ff.waterLevel run data get entity @s SelectedItem.components."minecraft:damage"
item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":-0.01 ,"add":true}]

execute if block ~ ~ ~ farmland[moisture=0] run setblock ~ ~ ~ farmland[moisture=7]
execute if block ~ ~ ~ farmland[moisture=1] run setblock ~ ~ ~ farmland[moisture=7]
execute if block ~ ~ ~ farmland[moisture=2] run setblock ~ ~ ~ farmland[moisture=7]
execute if block ~ ~ ~ farmland[moisture=3] run setblock ~ ~ ~ farmland[moisture=7]
execute if block ~ ~ ~ farmland[moisture=4] run setblock ~ ~ ~ farmland[moisture=7]
execute if block ~ ~ ~ farmland[moisture=5] run setblock ~ ~ ~ farmland[moisture=7]
execute if block ~ ~ ~ farmland[moisture=6] run setblock ~ ~ ~ farmland[moisture=7]

tag @e[sort=nearest,limit=1,type=item_display,tag=ff.notWatered,distance=..1] remove ff.notWatered
kill @e[sort=nearest,distance=..1,limit=1,type=item_display,tag=ff.indicator.thirsty]

execute if block ~ ~-1 ~ dirt run setblock ~ ~-1 ~ mud




playsound weather.rain.above weather @s ~ ~ ~ 0.1 2