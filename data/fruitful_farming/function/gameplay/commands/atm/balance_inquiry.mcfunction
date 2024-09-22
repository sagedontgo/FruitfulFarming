
playsound ui.toast.in player @s ~ ~ ~ 10 1
tellraw @s [{"text":"You have ","color": "white"},{"score":{"name": "@s","objective": "ff.farmTokens"},"color": "green"},{"text":" Farm Tokens in your account!","color": "white"}]
scoreboard players reset @s ff.balanceInquiry