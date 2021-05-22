##
 # cancel.mcfunction
 # 
 #
 # Created by .
##

tag @s remove random
tag @s remove random_fill
tag @s remove random_replace
tag @s remove busy

#show menu
execute if entity @s[tag=locked] run function mc_edit_dranox5:menu/main_menu
