execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10
execute anchored eyes positioned ~ ~1.5 ~ run particle block{block_state:"minecraft:rooted_dirt"} ^ ^ ^1.5 0.2 0.1 0.2 0 10

item modify entity @s weapon.mainhand [{"function":"minecraft:set_damage","damage":-0.05,"add":true}]

scoreboard players operation $temp ff.growthTimer = @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced] ff.growthTimer
scoreboard players operation $temp ff.growthTimer *= $ff.10 ff.int
scoreboard players operation $temp ff.growthTimer /= $ff.100 ff.int
scoreboard players operation @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced] ff.growthTimer -= $temp ff.growthTimer

scoreboard players add @e[sort=nearest,limit=1,type=item_display,tag=ff.plantPlaced] ff.fertilizationLevel 15

scoreboard players reset $temp ff.growthTimer

playsound minecraft:block.rooted_dirt.break block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill_success block @a[distance=..5] ~ ~ ~ 10 0
playsound minecraft:block.composter.fill block @a[distance=..5] ~ ~ ~ 10 1