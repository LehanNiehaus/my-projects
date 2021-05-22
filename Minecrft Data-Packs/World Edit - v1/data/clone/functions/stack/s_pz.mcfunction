#initial move
execute store result score @s PosZ run data get entity @s Pos[2]
scoreboard players operation @s PosZ += @s SizeZ
scoreboard players operation @s PosZ += @s Stack_offset
execute store result entity @s Pos[2] double 1 run scoreboard players get @s PosZ

#start
#function clone:paste
execute at @s run function clone:stack/pz