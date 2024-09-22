scoreboard players add @e[sort=nearest,distance=..3,type=item_display,tag=ff.plantPlaced] ff.hydrationLevel 1
execute as @e[sort=nearest,distance=..3,type=item_display,tag=ff.plantPlaced] run tag @s remove ff.notWatered
execute as @e[sort=nearest,distance=..3,type=item_display,tag=ff.plantPlaced] at @s run setblock ~ ~-1 ~ farmland[moisture=7]
particle rain ~ ~ ~ 1 0 1 0 10 normal