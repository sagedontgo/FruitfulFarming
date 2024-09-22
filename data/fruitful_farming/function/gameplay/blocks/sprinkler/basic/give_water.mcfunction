tag @s add ff.hasWater
scoreboard players set @s ff.waterLevel 100
summon minecraft:item_display ~ ~0.4 ~ {item: {count: 1, id: "minecraft:water_bucket"}, item_display: "gui", transformation: {left_rotation: [0.70710665f, 0.0f, 0.0f, 0.70710695f], right_rotation: [-0.0025203514f, 0.0f, 0.0f, -0.99999684f], scale: [0.3f, 0.3f, 0.3f], translation: [0.0f, 0.0f, 0.0f]},Tags:[ff.indicator.hasWater]}
clear @p water_bucket 1