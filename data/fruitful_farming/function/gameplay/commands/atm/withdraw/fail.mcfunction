
playsound block.note_block.bass master @s ~ ~ ~ 10 1
tellraw @s [{"text":"You tried to withdraw ","color": "red"},{"score":{"name": "@s","objective": "ff.withdrawAmount"}},{"text":" Farm Tokens, but you only have "},{"score":{"name": "@s","objective": "ff.farmTokens"}},{"text":" Farm Tokens in your account!"}]
scoreboard players reset @s ff.withdrawAmount
data remove storage ff:storage withdraw