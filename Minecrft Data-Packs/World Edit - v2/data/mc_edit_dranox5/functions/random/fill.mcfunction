##
 # fill.mcfunction
 # 
 #
 # Created by .
##

tag @s add random_fill

summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:[random,pool]}


#prepare block pool
execute store result entity @e[type=area_effect_cloud,tag=random,limit=1] Pos[0] double 1 run scoreboard players get @s ran1_x
execute store result entity @e[type=area_effect_cloud,tag=random,limit=1] Pos[1] double 1 run scoreboard players get @s ran1_y
execute store result entity @e[type=area_effect_cloud,tag=random,limit=1] Pos[2] double 1 run scoreboard players get @s ran1_z

scoreboard players operation x1 gPos = @s ran1_x
scoreboard players operation y1 gPos = @s ran1_y
scoreboard players operation z1 gPos = @s ran1_z

scoreboard players operation x2 gPos = @s ran2_x
scoreboard players operation y2 gPos = @s ran2_y
scoreboard players operation z2 gPos = @s ran2_z

scoreboard players operation @s PosX = @s ran1_x
scoreboard players operation @s PosY = @s ran1_y
scoreboard players operation @s PosZ = @s ran1_z

execute at @e[type=area_effect_cloud,tag=random,limit=1] run function mc_edit_dranox5:random/loop1
tag @e[type=area_effect_cloud,tag=random,tag=pool] remove pool





#Prepare progress bar
bossbar set progress players @s
bossbar set progress value 0
scoreboard players set @s progress_count 0

#fill

execute store result entity @e[type=area_effect_cloud,tag=random,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=random,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=random,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z

scoreboard players operation x1 gPos = @s bmin_x
scoreboard players operation y1 gPos = @s bmin_y
scoreboard players operation z1 gPos = @s bmin_z

scoreboard players operation x2 gPos = @s bmax_x
scoreboard players operation y2 gPos = @s bmax_y
scoreboard players operation z2 gPos = @s bmax_z

scoreboard players operation @s PosX = @s bmin_x
scoreboard players operation @s PosY = @s bmin_y
scoreboard players operation @s PosZ = @s bmin_z

execute at @e[type=area_effect_cloud,tag=random,limit=1] run function mc_edit_dranox5:random/loop1



#finidh up
kill @e[type=area_effect_cloud,tag=random]
kill @e[type=area_effect_cloud,tag=random_pool]

tag @s remove busy
tag @s remove random
tag @s remove random_fill

bossbar set progress players

#show menu
execute if entity @s[tag=locked] run function mc_edit_dranox5:menu/main_menu


