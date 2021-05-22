##
 # save.mcfunction
 # 
 #
 # Created by .
##

# 2x2x2 (48x48x48 each)

summon area_effect_cloud ~ ~ ~ {Radius: 0, Tags: [cpy]}

#goto box base
execute store result entity @e[type=area_effect_cloud,limit=1,tag=cpy] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,limit=1,tag=cpy] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,limit=1,tag=cpy] Pos[2] double 1 run scoreboard players get @s bmin_z

#outer box size/overlap(ol)
scoreboard players operation b_ol_x gPos = @s bsize_x
scoreboard players operation b_ol_y gPos = @s bsize_y
scoreboard players operation b_ol_z gPos = @s bsize_z

scoreboard players operation b_ol_x gPos %= #48 constant
scoreboard players operation b_ol_y gPos %= #48 constant
scoreboard players operation b_ol_z gPos %= #48 constant

execute if score @s bsize_x matches ..48 run scoreboard players set bn_x gPos 1
execute if score @s bsize_x matches 49.. run scoreboard players set bn_x gPos 2

execute if score @s bsize_y matches ..48 run scoreboard players set bn_y gPos 1
execute if score @s bsize_y matches 49.. run scoreboard players set bn_y gPos 2

execute if score @s bsize_z matches ..48 run scoreboard players set bn_z gPos 1
execute if score @s bsize_z matches 49.. run scoreboard players set bn_z gPos 2


scoreboard players operation @s cpy_size_x = @s bsize_x
scoreboard players operation @s cpy_size_y = @s bsize_y
scoreboard players operation @s cpy_size_z = @s bsize_z



#save
#uses (4 1 0) and (4 1 2) to temp save blocks 

#0-0-0
execute at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/0-0-0

#0-0-1
execute as @e[type=area_effect_cloud,limit=1,tag=cpy] at @s run tp @s ~ ~ ~48
execute if score bn_z gPos matches 2.. at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/0-0-1

#0-1-0
execute as @e[type=area_effect_cloud,limit=1,tag=cpy] at @s run tp @s ~ ~48 ~-48
execute if score bn_y gPos matches 2.. at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/0-1-0

#0-1-1
execute as @e[type=area_effect_cloud,limit=1,tag=cpy] at @s run tp @s ~ ~ ~48
execute if score bn_y gPos matches 2.. if score bn_z gPos matches 2.. at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/0-1-1

#1-0-0
execute as @e[type=area_effect_cloud,limit=1,tag=cpy] at @s run tp @s ~48 ~-48 ~-48
execute if score bn_x gPos matches 2.. at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/1-0-0

#1-0-1
execute as @e[type=area_effect_cloud,limit=1,tag=cpy] at @s run tp @s ~ ~ ~48
execute if score bn_x gPos matches 2.. if score bn_z gPos matches 2.. at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/1-0-1

#1-1-0
execute as @e[type=area_effect_cloud,limit=1,tag=cpy] at @s run tp @s ~ ~48 ~-48
execute if score bn_x gPos matches 2.. if score bn_y gPos matches 2.. at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/1-1-0

#1-1-1
execute as @e[type=area_effect_cloud,limit=1,tag=cpy] at @s run tp @s ~ ~ ~48
execute if score bn_x gPos matches 2.. if score bn_y gPos matches 2.. if score bn_z gPos matches 2.. at @e[type=area_effect_cloud,limit=1,tag=cpy] run function mc_edit_dranox5:copy/save/1-1-1




kill @e[type=area_effect_cloud,limit=1,tag=cpy]
tag @s remove busy

