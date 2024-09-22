particle happy_villager ~ ~ ~ 0.5 0.5 0.5 0 100 force @a
playsound minecraft:entity.experience_orb.pickup player @p ~ ~ ~ 1 1
playsound minecraft:entity.villager.yes player @p ~ ~ ~ 1 1
playsound minecraft:block.lever.click player @p ~ ~ ~ 1 1

tellraw @p [{"text":"You sold your crops and earned ","color": "white"},{"score":{"name": "$ff.total","objective": "ff.sellValue"},"color": "gold","bold": false},{"text":" Farm Tokens","color": "green","bold": false,"extra": [{"text":"!","color": "white"}]}]