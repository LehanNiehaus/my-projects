##
 # get_gpos.mcfunction
 # 
 #
 # Created by Dranox5
##
summon area_effect_cloud ~ ~ ~ {Tags:[get_gpos],Radius:0,Age:0}

execute store result score @s PosX run data get entity @e[type=area_effect_cloud,tag=get_gpos,limit=1] Pos[0]
execute store result score @s PosY run data get entity @e[type=area_effect_cloud,tag=get_gpos,limit=1] Pos[1]
execute store result score @s PosZ run data get entity @e[type=area_effect_cloud,tag=get_gpos,limit=1] Pos[2]

kill @e[type=area_effect_cloud,tag=get_gpos]
