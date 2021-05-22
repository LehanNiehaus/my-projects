# Loop Z

execute at @e[type=area_effect_cloud,tag=voidfiller,limit=1] run fill ~ ~ ~ ~ ~ ~ structure_void replace air

execute as @e[type=area_effect_cloud,tag=voidfiller,limit=1] at @s run tp @s ~ ~ ~1
scoreboard players add @s PosZ 1

execute if score @s PosZ < @s SizeZ run function clone:fill_void3
