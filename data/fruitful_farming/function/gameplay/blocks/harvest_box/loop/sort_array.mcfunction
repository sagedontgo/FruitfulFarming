

$execute store result score $ff.count ff.sellValue run data get block ~ ~-1 ~ Items.[$(value)].count
$execute store result score $ff.value ff.sellValue run data get block ~ ~-1 ~ Items.[$(value)].components."minecraft:custom_data".fruitfarm.value


scoreboard players operation $ff.value ff.sellValue *= $ff.count ff.sellValue
execute store result storage ff:storage index.value int 1 run scoreboard players get $ff.value ff.sellValue
function fruitful_farming:gameplay/blocks/harvest_box/loop/add_values with storage ff:storage index

scoreboard players add $ff.index ff.array 1
execute store result storage ff:storage index.value int 1 run scoreboard players get $ff.index ff.array
execute if score $ff.index ff.array matches ..8 run function fruitful_farming:gameplay/blocks/harvest_box/loop/sort_array with storage ff:storage index
execute if score $ff.index ff.array matches ..9 at @s run function fruitful_farming:gameplay/blocks/harvest_box/sell