# Loop Y

scoreboard players set @s PosZ 0
execute store result entity @e[type=area_effect_cloud,tag=voidfiller,limit=1] Pos[2] double 1 run scoreboard players get @s bPosZ
function clone:fill_void3

execute as @e[type=area_effect_cloud,tag=voidfiller,limit=1] at @s run tp @s ~ ~1 ~
scoreboard players add @s PosY 1

execute if score @s PosY < @s SizeY run function clone:fill_void2
