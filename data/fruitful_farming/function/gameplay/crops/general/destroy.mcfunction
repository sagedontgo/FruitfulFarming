kill @s 
playsound block.crop.break block @a[distance=..5] ~ ~ ~ 10 1
particle block{block_state:"wheat"}
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:beetroot_seeds"}}]
kill @e[sort=nearest,limit=1,type=item,nbt={Item:{id:"minecraft:beetroot"}}]
kill @e[sort=nearest,limit=2,distance=..1,type=item_display,tag=ff.indicator]