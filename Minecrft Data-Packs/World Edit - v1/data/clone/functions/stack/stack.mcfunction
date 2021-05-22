summon area_effect_cloud ~ ~ ~ {Age:-1, Radius:0, Tags:["clonestacker"]}
tp @e[type=area_effect_cloud, tag=clonestacker,limit=1] @s

#goto base position
execute store result entity @e[type=area_effect_cloud, tag=clonestacker,limit=1] Pos[0] double 1 run scoreboard players get @s bPosX
execute store result entity @e[type=area_effect_cloud, tag=clonestacker,limit=1] Pos[1] double 1 run scoreboard players get @s bPosY
execute store result entity @e[type=area_effect_cloud, tag=clonestacker,limit=1] Pos[2] double 1 run scoreboard players get @s bPosZ

execute as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run tp @s ~ ~-2 ~

#prepare for save
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] SizeX = @s SizeX
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] SizeY = @s SizeY
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] SizeZ = @s SizeZ
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] bPosX = @s bPosX
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] bPosY = @s bPosY
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] bPosZ = @s bPosZ
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] Stack_offset = @s Stack_offset
scoreboard players operation @e[type=area_effect_cloud, tag=clonestacker,limit=1] Stack_count = @s Stack_count
tag @e[type=area_effect_cloud, tag=clonestacker,limit=1] add disp

#save
#execute at @e[type=area_effect_cloud, tag=clonestacker,limit=1] run setblock ~ ~ ~ stone
execute as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:save_box

#deal with ignore air
execute if entity @s[tag=ignore_air] as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:clone_air_on

#decriment count (optional)
#scoreboard players remove @s Stack_count 1

#stack loop
#execute as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:stack/s_px

#execute as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run tp @s ~4 ~ ~
#execute as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:paste
#execute as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run setblock ~ ~ ~ redstone_block

function clone:get_dir
execute if entity @s[tag=facing_px] as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:stack/s_px
execute if entity @s[tag=facing_pz] as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:stack/s_pz
execute if entity @s[tag=facing_nx] as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:stack/s_nx
execute if entity @s[tag=facing_nz] as @e[type=area_effect_cloud, tag=clonestacker,limit=1] at @s run function clone:stack/s_nz