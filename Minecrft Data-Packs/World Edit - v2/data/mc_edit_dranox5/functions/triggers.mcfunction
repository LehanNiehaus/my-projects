##
 # triggers.mcfunction
 # 
 #
 # Created by Dranox5.
##

scoreboard players enable @a mce-paste
execute as @a at @s if score @s mce-paste matches 1.. run function mc_edit_dranox5:triggers/paste

