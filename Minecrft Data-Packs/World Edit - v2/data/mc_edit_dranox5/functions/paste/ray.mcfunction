##
 # ray.mcfunction
 # 
 #
 # Created by Dranox5.
##

execute as @a[tag=is_holding] at @s run function mc_edit_dranox5:cursor/show_cursor_blue

execute if entity @s[tag=rc] run summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:[paste]}
tp @e[type=area_effect_cloud,tag=paste,limit=1] @s
execute store result entity @e[type=area_effect_cloud,tag=paste,limit=1] Pos[0] double 1 run scoreboard players get @s ray_PosX
execute store result entity @e[type=area_effect_cloud,tag=paste,limit=1] Pos[1] double 1 run scoreboard players get @s ray_PosY
execute store result entity @e[type=area_effect_cloud,tag=paste,limit=1] Pos[2] double 1 run scoreboard players get @s ray_PosZ

execute at @e[type=area_effect_cloud,tag=paste,limit=1] run function mc_edit_dranox5:paste/paste
execute if entity @s[tag=rc] run tellraw @s [{"text": "[Finish]","clickEvent": {"action": "run_command","value": "/function mc_edit_dranox5:paste/ray_end"}}]


kill @e[type=area_effect_cloud,tag=paste]