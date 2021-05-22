scoreboard players operation @s lPosX = @s PosX
scoreboard players operation @s lPosY = @s PosY
scoreboard players operation @s lPosZ = @s PosZ

function clone:get_gpos

scoreboard players operation @s PosX /= #1000 CSV
scoreboard players operation @s PosY /= #1000 CSV
scoreboard players operation @s PosZ /= #1000 CSV

scoreboard players operation @s lPosX -= @s PosX
scoreboard players operation @s lPosY -= @s PosY
scoreboard players operation @s lPosZ -= @s PosZ