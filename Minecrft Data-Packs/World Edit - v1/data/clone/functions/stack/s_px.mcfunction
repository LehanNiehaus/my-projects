#initial move
execute store result score @s PosX run data get entity @s Pos[0]
scoreboard players operation @s PosX += @s SizeX
scoreboard players operation @s PosX += @s Stack_offset
execute store result entity @s Pos[0] double 1 run scoreboard players get @s PosX

#start
#function clone:paste
execute at @s run function clone:stack/px