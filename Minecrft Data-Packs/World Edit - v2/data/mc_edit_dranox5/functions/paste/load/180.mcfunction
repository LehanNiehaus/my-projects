

#rotate base 180
scoreboard players operation offx gPos = @s cpy_offPosX
scoreboard players operation offx gPos *= #-1 constant

scoreboard players operation offy gPos = @s cpy_offPosY

scoreboard players operation offz gPos = @s cpy_offPosZ
scoreboard players operation offz gPos *= #-1 constant

#set base
#function mc_edit_dranox5:utility/get_gpos
#scoreboard players operation offx gPos += @s PosX
#scoreboard players operation offy gPos += @s PosY
#scoreboard players operation offz gPos += @s PosZ

#remember rotation
tag @s add pst180

