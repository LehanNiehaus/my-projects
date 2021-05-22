

#rotate base 0
scoreboard players operation offx gPos = @s cpy_offPosX

scoreboard players operation offy gPos = @s cpy_offPosY

scoreboard players operation offz gPos = @s cpy_offPosZ


#set base
#function mc_edit_dranox5:utility/get_gpos
#scoreboard players operation offx gPos += @s PosX
#scoreboard players operation offy gPos += @s PosY
#scoreboard players operation offz gPos += @s PosZ

#remember rotation
tag @s add pst0


