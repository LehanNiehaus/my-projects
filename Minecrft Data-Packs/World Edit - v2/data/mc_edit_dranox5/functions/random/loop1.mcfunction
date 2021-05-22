##
 # loop 1.mcfunction
 # 
 #
 # Created by .
##

# X dir

scoreboard players operation @s PosY = y1 gPos
function mc_edit_dranox5:random/loop2
scoreboard players add @s PosX 1
execute if score @s PosX <= x2 gPos positioned ~1 ~ ~ run function mc_edit_dranox5:random/loop1
