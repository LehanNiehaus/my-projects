tag @s remove ray_hit
tag @s remove 1Pos
scoreboard players operation @s 2PosX = @s PosX
scoreboard players operation @s 2PosY = @s PosY
scoreboard players operation @s 2PosZ = @s PosZ
tag @s add 2Pos
tellraw @s ["",{"text":"Clone Position 2 set to: ","color":"red"},{"score":{"name":"@s","objective":"2PosX"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"@s","objective":"2PosY"},"color":"dark_aqua"},{"text":" "},{"score":{"name":"@s","objective":"2PosZ"},"color":"dark_aqua"}]