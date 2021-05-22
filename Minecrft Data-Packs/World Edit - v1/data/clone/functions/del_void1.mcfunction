# Loop X

scoreboard players set @s PosY 0
execute store result entity @e[type=area_effect_cloud,tag=voidkiller,limit=1] Pos[1] double 1 run scoreboard players get @s bPosY
function clone:del_void2

execute as @e[type=area_effect_cloud,tag=voidkiller,limit=1] at @s run tp @s ~1 ~ ~
scoreboard players add @s PosX 1

execute if score @s PosX < @s SizeX run function clone:del_void1