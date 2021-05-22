##
 # mirror_on.mcfunction
 # 
 #
 # Created by Dranox5.
##

# 2x2x2 (48x48x48 each)

#outer box size/overlap(ol)
#scoreboard players operation b_ol_x gPos = @s cpy_size_x
#scoreboard players operation b_ol_y gPos = @s cpy_size_y
#scoreboard players operation b_ol_z gPos = @s cpy_size_z

#scoreboard players operation b_ol_x gPos %= 48 constant
#scoreboard players operation b_ol_y gPos %= 48 constant
#scoreboard players operation b_ol_z gPos %= 48 constant

#box number from size(number of structureblocks in each direction)
execute if score @s cpy_size_x matches ..48 run scoreboard players set bn_x gPos 1
execute if score @s cpy_size_x matches 49.. run scoreboard players set bn_x gPos 2

execute if score @s cpy_size_y matches ..48 run scoreboard players set bn_y gPos 1
execute if score @s cpy_size_y matches 49.. run scoreboard players set bn_y gPos 2

execute if score @s cpy_size_z matches ..48 run scoreboard players set bn_z gPos 1
execute if score @s cpy_size_z matches 49.. run scoreboard players set bn_z gPos 2


#save
#uses (4 1 0) and (4 1 2) to temp save blocks
# (^left ^up ^forward)
setblock ~ ~ ~ stone
#0-0-0
execute positioned ^ ^ ^ run function mc_edit_dranox5:paste/load/mirror_on/0-0-0

#0-0-1
execute positioned ^48 ^ ^ if score bn_z gPos matches 2.. run function mc_edit_dranox5:paste/load/mirror_on/0-0-1

#0-1-0
execute positioned ^ ^48 ^ if score bn_y gPos matches 2.. run function mc_edit_dranox5:paste/load/mirror_on/0-1-0

#0-1-1
execute positioned ^48 ^48 ^ if score bn_y gPos matches 2.. if score bn_z gPos matches 2.. run function mc_edit_dranox5:paste/load/mirror_on/0-1-1

#1-0-0
execute positioned ^ ^ ^48 if score bn_x gPos matches 2.. run function mc_edit_dranox5:paste/load/mirror_on/1-0-0

#1-0-1
execute positioned ^48 ^ ^48 if score bn_x gPos matches 2.. if score bn_z gPos matches 2.. run function mc_edit_dranox5:paste/load/mirror_on/1-0-1

#1-1-0
execute positioned ^ ^48 ^48 if score bn_x gPos matches 2.. if score bn_y gPos matches 2.. run function mc_edit_dranox5:paste/load/mirror_on/1-1-0

#1-1-1
execute positioned ^48 ^48 ^48 if score bn_x gPos matches 2.. if score bn_y gPos matches 2.. if score bn_z gPos matches 2.. run function mc_edit_dranox5:paste/load/mirror_on/1-1-1
