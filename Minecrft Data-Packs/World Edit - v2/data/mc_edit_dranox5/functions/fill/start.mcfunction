##
 # start.mcfunction
 # 
 #
 # Created by .
##



setblock 2 1 0 air
tag @s remove fill

bossbar set progress players @s
bossbar set progress value 0
scoreboard players set @s progress_count 0



summon area_effect_cloud ~ ~ ~ {Tags:[filler],Radius:0}

execute store result entity @e[type=area_effect_cloud,tag=filler,limit=1] Pos[0] double 1 run scoreboard players get @s bmin_x
execute store result entity @e[type=area_effect_cloud,tag=filler,limit=1] Pos[1] double 1 run scoreboard players get @s bmin_y
execute store result entity @e[type=area_effect_cloud,tag=filler,limit=1] Pos[2] double 1 run scoreboard players get @s bmin_z

scoreboard players operation @s PosX = @s bmin_x
scoreboard players operation @s PosY = @s bmin_y
scoreboard players operation @s PosZ = @s bmin_z

execute at @e[type=area_effect_cloud,tag=filler,limit=1] run function mc_edit_dranox5:fill/fill_loop1

kill @e[type=area_effect_cloud,tag=filler,limit=1]

tag @s remove busy

bossbar set progress players

#show menu
execute if entity @s[tag=locked] run function mc_edit_dranox5:menu/main_menu

