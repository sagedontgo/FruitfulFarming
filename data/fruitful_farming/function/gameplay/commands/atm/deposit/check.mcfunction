execute store result storage ff:storage deposit.value int 1 run scoreboard players get @s ff.depositAmount

execute if entity @s[nbt={SelectedItem:{id:"minecraft:gold_nugget",components:{"minecraft:custom_data":{fruitfarm:{item:"farm_token"}}}}}] store result score $ff.temp ff.depositAmount run data get entity @s SelectedItem.count
execute store result storage ff:storage deposit.value int 1 run scoreboard players get $ff.temp ff.depositAmount

execute if entity @s[nbt={SelectedItem:{id:"minecraft:gold_nugget",components:{"minecraft:custom_data":{fruitfarm:{item:"farm_token"}}}}}] run function fruitful_farming:gameplay/commands/atm/deposit/success with storage ff:storage deposit
execute if entity @s[nbt=!{SelectedItem:{id:"minecraft:gold_nugget",components:{"minecraft:custom_data":{fruitfarm:{item:"farm_token"}}}}}] if score @s ff.depositAmount matches 1.. run function fruitful_farming:gameplay/commands/atm/deposit/fail
