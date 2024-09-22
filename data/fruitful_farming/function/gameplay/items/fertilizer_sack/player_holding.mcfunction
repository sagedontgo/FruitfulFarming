tag @s add ff.holdingFertilizerSack
execute if entity @s[gamemode=survival] run gamemode adventure @s
execute anchored eyes run summon minecraft:interaction ~ ~1 ~ {width:0.75,height:0.75,Tags:[ff.interactionEntity.fertilizerSack]}