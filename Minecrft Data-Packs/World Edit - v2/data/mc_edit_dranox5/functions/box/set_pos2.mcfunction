##
 # set_pos2.mcfunction
 # 
 #
 # Created by .
##

scoreboard players operation @s 2PosX = @s ray_PosX
scoreboard players operation @s 2PosY = @s ray_PosY
scoreboard players operation @s 2PosZ = @s ray_PosZ

tag @s remove pos1
tag @s remove rc
tag @s add pos2

say set pos 2