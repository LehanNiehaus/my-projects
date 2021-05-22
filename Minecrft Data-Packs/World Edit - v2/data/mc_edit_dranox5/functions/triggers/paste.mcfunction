##
 # paste.mcfunction
 # 
 #
 # Created by Dranox5.
##

#execute if score @s mce-paste matches 0 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste

#execute if score @s mce-paste matches 90 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches -270 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches 1 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches -3 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste

#execute if score @s mce-paste matches 180 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches -180 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches 2 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches -2 facing ~ ~ ~ run function mc_edit_dranox5:paste/paste

#execute if score @s mce-paste matches 270 facing ~10 ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches -90 facing ~10 ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches 3 facing ~10 ~ ~ run function mc_edit_dranox5:paste/paste
#execute if score @s mce-paste matches -1 facing ~10 ~ ~ run function mc_edit_dranox5:paste/paste

execute at @s run function mc_edit_dranox5:paste/paste

scoreboard players set @s mce-paste 0
tag @s remove busy
tag @s remove paste
