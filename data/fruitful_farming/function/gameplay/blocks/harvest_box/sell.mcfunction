execute if score $ff.total ff.sellValue matches 1.. run function fruitful_farming:gameplay/blocks/harvest_box/sell_success
execute if score $ff.total ff.sellValue matches ..1 run function fruitful_farming:gameplay/blocks/harvest_box/sell_failed

scoreboard players operation @p ff.farmTokens += $ff.total ff.sellValue

# tellraw @a {"score":{"name": "$ff.total","objective": "ff.sellValue"}}


kill @e[type=marker,sort=nearest,limit=1,tag=ff.harvestBoxMarker]
scoreboard players reset $ff.index ff.array
scoreboard players reset $ff.index ff.sellValue
scoreboard players reset $ff.total ff.sellValue
data remove storage ff:storage index

