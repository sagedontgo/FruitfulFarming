tag @s add ff.placed
execute align xz positioned ~.5 ~ ~.5 run summon minecraft:interaction ~ ~ ~ {width:0.3f,height:0.3f,response:1b,Tags:[ff.interactionEntity.sprinkler.basic]}
tag @s remove ff.placing
