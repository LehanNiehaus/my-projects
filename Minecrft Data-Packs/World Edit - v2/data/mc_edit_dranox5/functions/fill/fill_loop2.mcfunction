##
 # fill_loop2.mcfunction
 # 
 #
 # Created by .
##

# Y dir

scoreboard players operation @s PosZ = @s bmin_z
function mc_edit_dranox5:fill/fill_loop3
scoreboard players add @s PosY 1
execute if score @s PosY <= @s bmax_y positioned ~ ~1 ~ run function mc_edit_dranox5:fill/fill_loop2