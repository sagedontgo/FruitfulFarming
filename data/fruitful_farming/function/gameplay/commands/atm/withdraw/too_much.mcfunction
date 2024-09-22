
playsound block.note_block.bass master @s ~ ~ ~ 10 1
tellraw @s [{"text":"You can only withdraw 300 Farm Tokens at once!","color": "red"}]
scoreboard players reset @s ff.withdrawAmount
data remove storage ff:storage withdraw