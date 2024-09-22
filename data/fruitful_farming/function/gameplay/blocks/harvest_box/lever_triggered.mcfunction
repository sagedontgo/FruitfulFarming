setblock ~ ~1 ~ lever[powered=false,face=floor]
playsound minecraft:block.vault.open_shutter block @s ~ ~ ~ 100 1.6
scoreboard players set $ff.index ff.array 0

execute align xz positioned ~.5 ~1 ~.5 run summon marker ~ ~ ~ {Tags:[ff.harvestBoxMarker]}

execute store result storage ff:storage index.value int 1 run scoreboard players get $ff.index ff.array
execute as @e[type=marker,limit=1,tag=ff.harvestBoxMarker] at @s run function fruitful_farming:gameplay/blocks/harvest_box/loop/sort_array with storage ff:storage index