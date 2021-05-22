##
 # ray_step.mcfunction
 # 
 #
 # Created by .Dranox5
##

scoreboard players add @s ray_dist 1

execute if entity @s[tag=ray_pre] unless block ^ ^ ^0.2 #ray_air run function mc_edit_dranox5:utility/get_gpos
execute if entity @s[tag=ray_pre] unless block ^ ^ ^0.2 #ray_air run tag @s add ray_hit
scoreboard players operation @s ray_PosX = @s PosX
scoreboard players operation @s ray_PosY = @s PosY
scoreboard players operation @s ray_PosZ = @s PosZ

execute if entity @s[tag=!ray_pre] positioned ^ ^ ^0.2 unless block ~ ~ ~ #ray_air run function mc_edit_dranox5:utility/get_gpos
execute if entity @s[tag=!ray_pre] positioned ^ ^ ^0.2 unless block ~ ~ ~ #ray_air run tag @s add ray_hit
scoreboard players operation @s ray_PosX = @s PosX
scoreboard players operation @s ray_PosY = @s PosY
scoreboard players operation @s ray_PosZ = @s PosZ

execute if score @s ray_dist >= @s ray_dist_max run function mc_edit_dranox5:utility/get_gpos
scoreboard players operation @s ray_PosX = @s PosX
scoreboard players operation @s ray_PosY = @s PosY
scoreboard players operation @s ray_PosZ = @s PosZ
execute if score @s ray_dist >= @s ray_dist_max run tag @s remove ray_hit

execute positioned ^ ^ ^0.2 if block ~ ~ ~ #ray_air run execute if score @s ray_dist < @s ray_dist_max run function mc_edit_dranox5:ray_cast/ray_step

#particle flame ~ ~ ~ 0 0 0 0 5
