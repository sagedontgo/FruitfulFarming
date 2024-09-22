execute store result storage ff:storage withdraw.value int 1 run scoreboard players get @s ff.withdrawAmount

execute if score @s ff.withdrawAmount matches 301.. run function fruitful_farming:gameplay/commands/atm/withdraw/too_much
execute if score @s ff.withdrawAmount <= @s ff.farmTokens if score @s ff.withdrawAmount matches ..300 run function fruitful_farming:gameplay/commands/atm/withdraw/success with storage ff:storage withdraw
execute if score @s ff.withdrawAmount >= @s ff.farmTokens run function fruitful_farming:gameplay/commands/atm/withdraw/fail

