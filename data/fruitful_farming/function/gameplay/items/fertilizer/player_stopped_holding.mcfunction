tag @s remove ff.holdingFertilizer
execute if entity @s[gamemode=adventure] run gamemode survival @s
kill @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.fertilizer]
