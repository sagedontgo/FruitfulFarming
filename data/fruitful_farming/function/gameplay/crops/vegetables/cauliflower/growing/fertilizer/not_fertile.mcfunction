
setblock ~ ~ ~ farmland[moisture=0]
execute if entity @s[tag=!ff.indicatorSummoned] run summon item_display ~ ~1 ~ {Tags:["ff.indicator.notFertile","ff.indicator"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.5f]},item:{id:"minecraft:player_head",count:1,components:{"minecraft:profile":{properties:[{name:"textures",value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTZmYWRmMWZmZDFlNDQzZGZjNzBkODkyZjg3ZjFiMzNiNTRkNTQwNmY0OTQ0NzQzMDMyNDgzZTBjYTY1NjRiYyJ9fX0="}]}}}}
tag @s add ff.indicatorSummoned
tag @s add ff.notFertile