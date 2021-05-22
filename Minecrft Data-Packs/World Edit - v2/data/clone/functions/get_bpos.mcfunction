execute if score @s 1PosX <= @s 2PosX run scoreboard players operation @s bPosX = @s 1PosX
execute if score @s 1PosY <= @s 2PosY run scoreboard players operation @s bPosY = @s 1PosY
execute if score @s 1PosZ <= @s 2PosZ run scoreboard players operation @s bPosZ = @s 1PosZ

execute if score @s 1PosX > @s 2PosX run scoreboard players operation @s bPosX = @s 2PosX
execute if score @s 1PosY > @s 2PosY run scoreboard players operation @s bPosY = @s 2PosY
execute if score @s 1PosZ > @s 2PosZ run scoreboard players operation @s bPosZ = @s 2PosZ
