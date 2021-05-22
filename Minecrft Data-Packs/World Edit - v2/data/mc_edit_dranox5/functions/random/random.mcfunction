##
 # random.mcfunction
 # 
 #
 # Created by .
##

#checks for block to replace at: 2 1 0 (working slot)
#place block to replace at: 0 1 2 (replace slot)


execute unless block 2 1 0 #air run clone 2 1 0 2 1 0 0 1 2

execute unless block 2 1 0 #air run function mc_edit_dranox5:random/replace_start



execute if entity @s[tag=is_holding] at @s run function mc_edit_dranox5:cursor/show_cursor_red
#execute as @a[tag=is_holding] run function mc_edit_dranox5:detect_rc

execute if entity @s[tag=rc] run summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:[block_cloner]}
execute store result entity @e[type=area_effect_cloud,tag=block_cloner,limit=1] Pos[0] double 1 run scoreboard players get @s ray_PosX
execute store result entity @e[type=area_effect_cloud,tag=block_cloner,limit=1] Pos[1] double 1 run scoreboard players get @s ray_PosY
execute store result entity @e[type=area_effect_cloud,tag=block_cloner,limit=1] Pos[2] double 1 run scoreboard players get @s ray_PosZ

execute at @e[type=area_effect_cloud,tag=block_cloner,limit=1] run clone ~ ~ ~ ~ ~ ~ 0 1 2
kill @e[type=area_effect_cloud,tag=block_cloner]

execute if entity @s[tag=rc] run function mc_edit_dranox5:random/replace_start
tag @s remove rc


