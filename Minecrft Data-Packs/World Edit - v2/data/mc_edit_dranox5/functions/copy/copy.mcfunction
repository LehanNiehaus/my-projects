##
 # copy.mcfunction
 # 
 #
 # Created by .
##


#direciton stuff
function mc_edit_dranox5:utility/get_dir

tag @s remove cpy_faced_nx
tag @s remove cpy_faced_nz
tag @s remove cpy_faced_px
tag @s remove cpy_faced_pz

execute if entity @s[tag=facing_nx] run tag @s add cpy_faced_nx
execute if entity @s[tag=facing_nz] run tag @s add cpy_faced_nz
execute if entity @s[tag=facing_px] run tag @s add cpy_faced_px
execute if entity @s[tag=facing_pz] run tag @s add cpy_faced_pz


#get pos offset
execute at @s run function mc_edit_dranox5:utility/get_gpos

scoreboard players operation @s cpy_offPosX = @s bmin_x
scoreboard players operation @s cpy_offPosY = @s bmin_y
scoreboard players operation @s cpy_offPosZ = @s bmin_z

scoreboard players operation @s cpy_offPosX -= @s PosX
scoreboard players operation @s cpy_offPosY -= @s PosY
scoreboard players operation @s cpy_offPosZ -= @s PosZ


#save box size
scoreboard players operation @s cpy_size_x = @s bsize_x
scoreboard players operation @s cpy_size_y = @s bsize_y
scoreboard players operation @s cpy_size_z = @s bsize_z

function mc_edit_dranox5:copy/save
