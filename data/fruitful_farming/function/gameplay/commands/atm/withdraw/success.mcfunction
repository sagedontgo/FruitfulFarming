
scoreboard players operation @s ff.farmTokens -= @s ff.withdrawAmount
playsound entity.experience_orb.pickup player @s ~ ~ ~ 10 1
tellraw @s [{"text":"You successfully withdrawed ","color": "white"},{"score":{"name": "@s","objective": "ff.withdrawAmount"},"color": "red"},{"text":" Farm Tokens!"},{"text":" You have "},{"score":{"name": "@s","objective": "ff.farmTokens"},"color": "green"},{"text":" left in your account!"}]
$give @s gold_nugget[max_stack_size=99,custom_name='{"color":"green","text":"Farm Tokens"}',hide_additional_tooltip={},custom_data={fruitfarm:{item:"farm_token"}}] $(value)
scoreboard players reset @s ff.withdrawAmount
data remove storage ff:storage withdraw