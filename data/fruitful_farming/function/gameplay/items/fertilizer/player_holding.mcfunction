tag @s add ff.holdingFertilizer
execute if entity @s[gamemode=survival] run gamemode adventure @s
execute anchored eyes run summon minecraft:interaction ~ ~1 ~ {width:0.75,height:0.75,Tags:[ff.interactionEntity.fertilizer]}