##
 # loop3.mcfunction
 # 
 #
 # Created by .
##

# Z dir

function mc_edit_dranox5:replace/place
scoreboard players add @s PosZ 1
execute if score @s PosZ <= @s bmax_z positioned ~ ~ ~1 run function mc_edit_dranox5:replace/loop3