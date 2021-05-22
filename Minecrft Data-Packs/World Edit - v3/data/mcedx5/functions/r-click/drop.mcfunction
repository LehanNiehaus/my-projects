##
 # drop.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Checks if player presses "q" while holding MCEstick and adds/removes a tag accordingly
#Usable only once per tic
#tag:mceq
#Suggested: remove the tag after it is done being proccessed: tag @s remove mceq

tag @s remove mceq

execute if score @s[tag=mceh,nbt=!{SelectedItem:{}}] rc_c-o-s_d matches 1.. if entity @e[type=item,nbt={Item:{tag:{MCEstick:1b}}}] run function mcedx5:r-click/drop-return
scoreboard players set @s rc_c-o-s_d 0
