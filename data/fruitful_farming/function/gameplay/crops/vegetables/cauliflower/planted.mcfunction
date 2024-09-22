execute align xz positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
data merge entity @s {start_interpolation:-1,interpolation_duration:0,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.1f,0f],scale:[0.3f,0.3f,0.3f]}}
setblock ~ ~1 ~ beetroots[age=0]
playsound minecraft:item.crop.plant block @a[distance=..5] ~ ~ ~ 10 1

scoreboard players set @s ff.growthTimer 1800
scoreboard players set @s ff.fertilizationLevel 0
scoreboard players set @s ff.hydrationLevel 0
summon item_display ~ ~ ~ {Tags:["ff.indicator.thirsty","ff.indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjlmMjlmZmE0YzViMTU4MmMyMWFlZjUzZTQwNmI0ZTQ2NmFlMTQ2YjA3ZDI5YmEzMGRlNDU1NzE2ZmI5ZTc0MyJ9fX0="}]}}}}
summon item_display ~ ~ ~ {Tags:["ff.indicator.notFertile","ff.indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,1f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTZmYWRmMWZmZDFlNDQzZGZjNzBkODkyZjg3ZjFiMzNiNTRkNTQwNmY0OTQ0NzQzMDMyNDgzZTBjYTY1NjRiYyJ9fX0="}]}}}}

setblock ~ ~ ~ farmland[moisture=0]

scoreboard players set @s ff.age 0
tag @s add ff.indicatorSummoned
tag @s add ff.cropAge.0
tag @s add ff.plantPlaced
tag @s add ff.notWatered
tag @s add ff.notFertile