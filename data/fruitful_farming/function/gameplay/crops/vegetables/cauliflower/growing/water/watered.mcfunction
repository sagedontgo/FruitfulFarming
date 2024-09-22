setblock ~ ~ ~ farmland[moisture=7]
kill @e[sort=nearest,distance=..1,limit=1,type=item_display,tag=ff.indicator.thirsty]
tag @s remove ff.notWatered