##
 # holding.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Checks if the MCEstick is held and adds/removes a tag accordingly
#tag:mceheld

tag @s remove mceh
execute as @s[nbt={SelectedItem:{tag:{MCEstick:1b}}}] run tag @s add mceh