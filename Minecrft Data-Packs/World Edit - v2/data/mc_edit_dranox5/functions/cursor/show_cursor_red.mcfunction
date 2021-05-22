##
 # show_cursor.mcfunction
 # 
 #
 # Created by .
##

scoreboard players set @s ray_dist_max 25
#tag @s add ray_pre
function mc_edit_dranox5:ray_cast/ray_start

execute unless entity @e[type=area_effect_cloud, tag=cursor] run summon area_effect_cloud ~ ~ ~ {Tags:[cursor]}

execute store result entity @e[type=area_effect_cloud, tag=cursor,limit=1] Pos[0] double 1 run scoreboard players get @s ray_PosX
execute store result entity @e[type=area_effect_cloud, tag=cursor,limit=1] Pos[1] double 1 run scoreboard players get @s ray_PosY
execute store result entity @e[type=area_effect_cloud, tag=cursor,limit=1] Pos[2] double 1 run scoreboard players get @s ray_PosZ

execute at @e[type=area_effect_cloud, tag=cursor] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_red

tag @s remove ray_pre