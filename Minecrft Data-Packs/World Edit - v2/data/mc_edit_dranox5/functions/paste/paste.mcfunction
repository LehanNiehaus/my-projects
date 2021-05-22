##
 # paste.mcfunction
 # 
 #
 # Created by Dranox5.
##

#find rotation
execute if entity @s[tag=!ignore_rotation] run function mc_edit_dranox5:utility/get_dir
execute if entity @s[tag=!ignore_rotation, tag=cpy_faced_px] run function mc_edit_dranox5:paste/load/px
execute if entity @s[tag=!ignore_rotation, tag=cpy_faced_pz] run function mc_edit_dranox5:paste/load/pz
execute if entity @s[tag=!ignore_rotation, tag=cpy_faced_nx] run function mc_edit_dranox5:paste/load/nx
execute if entity @s[tag=!ignore_rotation, tag=cpy_faced_nz] run function mc_edit_dranox5:paste/load/nz
execute if entity @s[tag=ignore_rotation] run function mc_edit_dranox5:paste/load/0

#mirror base pos
execute if entity @s[tag=mirror, tag=facing_px] run scoreboard players operation offz gPos *= #-1 constant
execute if entity @s[tag=mirror, tag=facing_pz] run scoreboard players operation offx gPos *= #-1 constant
execute if entity @s[tag=mirror, tag=facing_nx] run scoreboard players operation offz gPos *= #-1 constant
execute if entity @s[tag=mirror, tag=facing_nz] run scoreboard players operation offx gPos *= #-1 constant


#set base
function mc_edit_dranox5:utility/get_gpos
scoreboard players operation offx gPos += @s PosX
scoreboard players operation offy gPos += @s PosY
scoreboard players operation offz gPos += @s PosZ

#aline with rotation
summon area_effect_cloud ~ ~ ~ {Radius:0, Tags:[pst]}
execute if entity @s[tag=facing_px] run tp @e[type=area_effect_cloud,tag=pst] ~ ~ ~ -90 0
execute if entity @s[tag=facing_pz] run tp @e[type=area_effect_cloud,tag=pst] ~ ~ ~ 0 0
execute if entity @s[tag=facing_nx] run tp @e[type=area_effect_cloud,tag=pst] ~ ~ ~ 90 0
execute if entity @s[tag=facing_nz] run tp @e[type=area_effect_cloud,tag=pst] ~ ~ ~ 180 0

#goto base pos
execute store result entity @e[type=area_effect_cloud, tag=pst, limit=1] Pos[0] double 1 run scoreboard players get offx gPos
execute store result entity @e[type=area_effect_cloud, tag=pst, limit=1] Pos[1] double 1 run scoreboard players get offy gPos
execute store result entity @e[type=area_effect_cloud, tag=pst, limit=1] Pos[2] double 1 run scoreboard players get offz gPos

#load
execute if entity @s[tag=!mirror] at @e[type=area_effect_cloud, tag=pst, limit=1] run function mc_edit_dranox5:paste/load/mirror_off
execute if entity @s[tag=mirror] at @e[type=area_effect_cloud, tag=pst, limit=1] run function mc_edit_dranox5:paste/load/mirror_on

#finish
kill @e[type=area_effect_cloud, tag=pst]
tag @s remove pst0
tag @s remove pst90
tag @s remove pst180
tag @s remove pst270

#tag @s remove busy
#tag @s remove paste
