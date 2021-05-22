##
 # set_pos1.mcfunction
 # 
 #
 # Created by .
##

scoreboard players operation @s 1PosX = @s ray_PosX
scoreboard players operation @s 1PosY = @s ray_PosY
scoreboard players operation @s 1PosZ = @s ray_PosZ

tag @s remove pos2
tag @s add pos1
tag @s remove rc

say set pos 1
