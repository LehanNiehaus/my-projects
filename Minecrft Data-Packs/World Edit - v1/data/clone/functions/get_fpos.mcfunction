function raycast:ray_start
scoreboard players operation @s PosX = @s ray_posX
scoreboard players operation @s PosY = @s ray_posY
scoreboard players operation @s PosZ = @s ray_posZ

scoreboard players operation @s PosX /= #1000 CSV
scoreboard players operation @s PosY /= #1000 CSV
scoreboard players operation @s PosZ /= #1000 CSV
