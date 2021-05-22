# Loop Z

execute at @e[type=area_effect_cloud,tag=voidkiller,limit=1] run fill ~ ~ ~ ~ ~ ~ air replace structure_void

execute as @e[type=area_effect_cloud,tag=voidkiller,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add @s PosZ 1

execute if score @s PosZ < @s SizeZ run function clone:del_void3
