##
 # sneak.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Checks if the player is sneaking and adds/removes a tag accordingly
#tag:sneaking

tag @s remove sneaking
execute if score @s rc_sneak matches 1.. run tag @s add sneaking
scoreboard players set @s rc_sneak 0
