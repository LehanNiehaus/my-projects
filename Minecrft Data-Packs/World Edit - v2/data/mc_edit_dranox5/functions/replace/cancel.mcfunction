##
 # cancel.mcfunction
 # 
 #
 # Created by .
##

tag @s remove busy
tag @s remove replace
tag @s remove replace1
tag @s remove replace2

#show menu
execute if entity @s[tag=locked] run function mc_edit_dranox5:menu/main_menu


