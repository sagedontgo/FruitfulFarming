execute store result storage ff:storage count.value int 1 run data get block ~ ~ ~ Items[{Slot:4b}].count

data modify block ~ ~ ~ Items set value [{Slot:1b,id:"minecraft:zombie_horse_spawn_egg",components: {"minecraft:entity_data": {item: {components: {"minecraft:custom_name": '{"italic":false,"text":"Cauliflower"}', "minecraft:profile": {properties: [{name: "textures", value: "eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMTRhNmRlZGQ5OWJiOWFmM2YxYjJmMzM4ZDUwOWE5MjY2MDZjZGRmZGMzNTFlMDE4YWFkMWMwNzAxNWFkNTY2ZCJ9fX0="}]}}, id: "minecraft:player_head"}, item_display: "head", id: "minecraft:item_display", Tags: ["ff.cropMarker.cauliflower"]}, "minecraft:custom_name": '{"italic":false,"text":"Cauliflower Seeds"}', "minecraft:custom_data": {fruitfarm: {item: "cauliflower_seed"}}}}]
data modify block ~ ~ ~ Items[{Slot:1b}].count set from storage ff:storage count.value

data remove storage ff:storage count