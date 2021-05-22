##
 # disp_light.mcfunction
 # 
 #
 # Created by .
##

#corners

summon area_effect_cloud ~ ~ ~ {Tags:[box],Radius:0}


#corners
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green




#edges

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_z matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_z matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_z matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_z matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green


execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute if score @s bsize_y matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute if score @s bsize_y matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute if score @s bsize_y matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute if score @s bsize_y matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green


execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute if score @s bsize_x matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute if score @s bsize_x matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute if score @s bsize_x matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute if score @s bsize_x matches 4.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green




#centre
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_y matches 5.. if score @s bsize_z matches 5.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 1 run scoreboard players get @s bmax_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_y matches 5.. if score @s bsize_z matches 5.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green



execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_x matches 5.. if score @s bsize_z matches 5.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 1 run scoreboard players get @s bmax_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 0.1 run scoreboard players get @s bm_z
execute if score @s bsize_x matches 5.. if score @s bsize_z matches 5.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green


execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z
execute if score @s bsize_x matches 5.. if score @s bsize_y matches 5.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green

execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[0] double 0.1 run scoreboard players get @s bm_x
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[1] double 0.1 run scoreboard players get @s bm_y
execute store result entity @e[type=area_effect_cloud,tag=box,limit=1] Pos[2] double 1 run scoreboard players get @s bmax_z
execute if score @s bsize_x matches 5.. if score @s bsize_y matches 5.. at @e[type=area_effect_cloud,tag=box,limit=1] positioned ~0.5 ~0.5 ~0.5 run function mc_edit_dranox5:particles/block_green
