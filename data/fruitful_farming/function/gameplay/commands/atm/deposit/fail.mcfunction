
playsound block.note_block.bass master @s ~ ~ ~ 10 1
tellraw @s [{"text":"You cannot deposit this item!","color": "red"}]
scoreboard players reset @s ff.depositAmount
scoreboard players reset $ff.temp ff.depositAmount
data remove storage ff:storage deposit