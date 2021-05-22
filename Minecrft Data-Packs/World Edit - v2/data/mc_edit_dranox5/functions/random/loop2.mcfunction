##
 # loop2.mcfunction
 # 
 #
 # Created by .
##

# Y dir

scoreboard players operation @s PosZ = z1 gPos
function mc_edit_dranox5:random/loop3
scoreboard players add @s PosY 1
execute if score @s PosY <= y2 gPos positioned ~ ~1 ~ run function mc_edit_dranox5:random/loop2
