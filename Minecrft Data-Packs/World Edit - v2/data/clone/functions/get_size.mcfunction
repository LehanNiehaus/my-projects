scoreboard players operation @s SizeX = @s 1PosX
scoreboard players operation @s SizeY = @s 1PosY
scoreboard players operation @s SizeZ = @s 1PosZ

scoreboard players operation @s SizeX -= @s 2PosX
scoreboard players operation @s SizeY -= @s 2PosY
scoreboard players operation @s SizeZ -= @s 2PosZ

execute if score @s SizeX matches ..-1 run scoreboard players operation @s SizeX *= #-1 CSV
execute if score @s SizeY matches ..-1 run scoreboard players operation @s SizeY *= #-1 CSV
execute if score @s SizeZ matches ..-1 run scoreboard players operation @s SizeZ *= #-1 CSV

scoreboard players add @s SizeX 1
scoreboard players add @s SizeY 1
scoreboard players add @s SizeZ 1
