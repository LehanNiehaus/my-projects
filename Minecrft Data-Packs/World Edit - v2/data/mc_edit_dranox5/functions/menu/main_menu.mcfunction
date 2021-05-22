##
 # main menu.mcfunction
 # 
 #
 # Created by .
##

tellraw @p [{"text":"[Copy]","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=is_holding,tag=locked,tag=!busy] at @s run function mc_edit_dranox5:menu/main_menu/copy"}},{"text":"  "},{"text":"[Paste]","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=is_holding,tag=!busy] at @s run function mc_edit_dranox5:menu/main_menu/paste"}},{"text":"  "},{"text":"[Fill]","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=is_holding,tag=locked,tag=!busy] at @s run function mc_edit_dranox5:menu/main_menu/fill"}},{"text":"  "},{"text":"[Replace]","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=is_holding,tag=locked,tag=!busy] at @s run function mc_edit_dranox5:menu/main_menu/replace"}},{"text":"  "},{"text":"[Random]","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=is_holding,tag=locked,tag=!busy] at @s run function mc_edit_dranox5:menu/main_menu/random"}},{"text":"  "},{"text":"[Delete]","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=is_holding,tag=locked,tag=!busy] at @s run function mc_edit_dranox5:menu/main_menu/delete"}}]

#execute if entity @s[tag=is_holding,tag=locked] at @s run function mc_edit_dranox5:menu/main_menu/settings