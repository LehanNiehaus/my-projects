##
 # offhand.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Checks if player presses "F" while holding MCEstick and adds/removes a tag accordingly
#Usable only once per tic
#tag:mcef
#Suggested: remove the tag after it is done being proccessed: tag @s remove mcef

tag @s remove mcef
execute if entity @s[nbt={Inventory:[{Slot:-106b,tag:{MCEstick:1b}}]}] run function mcedx5:r-click/offhand-swap
