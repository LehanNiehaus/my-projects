tag @s remove ray_hit
tag @s remove 2Pos
scoreboard players operation @s 1PosX = @s PosX
scoreboard players operation @s 1PosY = @s PosY
scoreboard players operation @s 1PosZ = @s PosZ
tag @s add 1Pos
tellraw @s ["",{"text":"Clone Position 1 set to: ","color":"red"},{"score":{"name":"@s","objective":"1PosX"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"@s","objective":"1PosY"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"@s","objective":"1PosZ"},"color":"dark_aqua"}]