setblock ~ ~ ~ farmland[moisture=7]
kill @e[sort=nearest,limit=1,type=item_display,tag=ff.indicator.notFertile]
kill @e[sort=nearest,limit=1,type=item_display,tag=ff.indicator]
tag @s remove ff.notFertile
tag @s remove ff.indicatorSummoned