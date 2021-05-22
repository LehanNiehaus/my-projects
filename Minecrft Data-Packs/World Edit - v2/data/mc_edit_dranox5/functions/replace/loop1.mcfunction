##
 # loop1.mcfunction
 # 
 #
 # Created by .
##

# X dir

scoreboard players operation @s PosY = @s bmin_y
function mc_edit_dranox5:replace/loop2
scoreboard players add @s PosX 1
execute if score @s PosX <= @s bmax_x positioned ~1 ~ ~ run function mc_edit_dranox5:replace/loop1