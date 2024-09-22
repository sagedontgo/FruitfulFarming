$clear @s gold_nugget[custom_data={fruitfarm:{item:"farm_token"}}] $(value)
$scoreboard players add @s ff.farmTokens $(value)
playsound entity.villager.celebrate player @s ~ ~ ~ 10 1
tellraw @s [{"text":"You successfully deposited ","color": "white"},{"score":{"name": "$ff.temp","objective": "ff.depositAmount"},"color": "green"},{"text":" Farm Tokens!"},{"text":" You now have "},{"score":{"name": "@s","objective": "ff.farmTokens"},"color": "green"},{"text":" in your account!"}]
scoreboard players reset @s ff.depositAmount
scoreboard players reset $ff.temp ff.depositAmount
data remove storage ff:storage deposit