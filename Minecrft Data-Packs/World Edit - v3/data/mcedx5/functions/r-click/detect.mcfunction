##
 # detect.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Checks if the MCEstick has been rightclicked and adds/removes a tag accordingly
#Usable only once per tick
#tag:rc
#Suggested: remove the tag after it is proccessed: tag @s remove rc

tag @s remove rc
execute as @s[scores={rc_c-o-s=1..},nbt={SelectedItem:{tag:{MCEstick:1b}}}] run tag @s add rc
scoreboard players set @s rc_c-o-s 0