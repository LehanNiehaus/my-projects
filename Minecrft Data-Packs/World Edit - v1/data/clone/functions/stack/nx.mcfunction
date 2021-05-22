#paste
function clone:paste
#setblock ~ ~ ~ redstone_block

#move
execute store result score @s PosX run data get entity @s Pos[0]
scoreboard players operation @s PosX -= @s SizeX
scoreboard players operation @s PosX -= @s Stack_offset
execute store result entity @s Pos[0] double 1 run scoreboard players get @s PosX
#tp @s ~-4 ~ ~ 

#decriment count
scoreboard players remove @s Stack_count 1

#loop
execute if score @s Stack_count matches 1.. at @s run function clone:stack/nx