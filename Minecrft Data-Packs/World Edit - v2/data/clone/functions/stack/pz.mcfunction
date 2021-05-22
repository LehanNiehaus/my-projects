#paste
function clone:paste
#setblock ~ ~ ~ redstone_block

#move
execute store result score @s PosZ run data get entity @s Pos[2]
scoreboard players operation @s PosZ += @s SizeZ
scoreboard players operation @s PosZ += @s Stack_offset
execute store result entity @s Pos[2] double 1 run scoreboard players get @s PosZ
#tp @s ~ ~ ~4

#decriment count
scoreboard players remove @s Stack_count 1

#loop
execute if score @s Stack_count matches 1.. at @s run function clone:stack/pz