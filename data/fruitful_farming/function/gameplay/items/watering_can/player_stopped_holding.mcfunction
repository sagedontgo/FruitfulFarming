tag @s remove ff.holdingWateringCan
execute if entity @s[gamemode=adventure] run gamemode survival @s
kill @e[sort=nearest,limit=1,type=interaction,tag=ff.interactionEntity.wateringCan]
