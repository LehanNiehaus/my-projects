##
 # ray_start.mcfunction
 # 
 #
 # Created by .
##

execute unless score @s ray_dist_max matches -2147483648..2147483647 run scoreboard players set @s ray_dist_max 25
scoreboard players set @s ray_dist 0

execute anchored eyes positioned ^ ^ ^0.25 run function mc_edit_dranox5:ray_cast/ray_step