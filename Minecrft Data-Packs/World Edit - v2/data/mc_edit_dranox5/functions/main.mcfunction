##
 # main.mcfunction
 # MC Edit
 #
 # Created by Dranox5
##

tag @a remove rc

#reselecting
#execute as @a[nbt=!{SelectedItem:{tag:{Tag:"Clone"}}}] run tag @s remove locked
#execute as @a[nbt=!{SelectedItem:{tag:{Tag:"Clone"}}}] run tag @s remove pos1
execute as @a[nbt=!{SelectedItem:{tag:{Tag:"Clone"}}}] run tag @s remove is_holding


#right click
execute as @a[nbt={SelectedItem:{tag:{Tag:"Clone"}}},tag=!is_holding,tag=locked,tag=!busy] at @s run function mc_edit_dranox5:menu/main_menu
execute as @a[nbt={SelectedItem:{tag:{Tag:"Clone"}}}] run tag @s add is_holding
execute as @a[tag=is_holding] run function mc_edit_dranox5:detect_rc


#show cursor
execute as @a[tag=is_holding,tag=show_cursor,tag=!busy] at @s run function mc_edit_dranox5:cursor/show_cursor_red


#set pos1
execute as @a[tag=is_holding,tag=show_cursor,tag=rc,tag=!pos1,tag=!busy] at @s run function mc_edit_dranox5:box/set_pos1

#display unlocked box
execute as @a[tag=is_holding,tag=show_cursor,tag=pos1,tag=!pos2,tag=!busy] at @s run function mc_edit_dranox5:box/update_box
execute as @a[tag=is_holding,tag=show_cursor,tag=pos1,tag=!pos2,tag=!busy] at @s run function mc_edit_dranox5:box/disp_light


#lock box
execute as @a[tag=is_holding,tag=show_cursor,tag=rc,tag=pos1,tag=!pos2,tag=!busy] at @s run function mc_edit_dranox5:box/set_pos2
execute as @a[tag=is_holding,tag=pos2] at @s run function mc_edit_dranox5:box/update_box
execute as @a[tag=is_holding,tag=pos2] at @s run function mc_edit_dranox5:menu/main_menu
execute as @a[tag=is_holding,tag=pos2] at @s run function mc_edit_dranox5:box/lock_box



#display locked box
execute as @a[tag=locked,tag=is_holding] at @s run function mc_edit_dranox5:box/disp_light


#selecting new region (unlock box)
execute as @a[tag=is_holding,tag=locked,tag=rc,tag=!busy] run function mc_edit_dranox5:box/unlock_box



gamerule sendCommandFeedback true
#tag @a remove rc
#tag @s remove is_holding


function mc_edit_dranox5:triggers
