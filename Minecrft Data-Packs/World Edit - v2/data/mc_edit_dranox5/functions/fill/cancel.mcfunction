##
 # cancel.mcfunction
 # 
 #
 # Created by .
##

tag @s remove busy
tag @s remove fill

#show menu
execute if entity @s[tag=locked] run function mc_edit_dranox5:menu/main_menu
