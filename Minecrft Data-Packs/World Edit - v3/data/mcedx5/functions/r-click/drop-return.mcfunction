##
 # drop return.mcfunction
 # 
 #
 # Created by Dranox5.
##
#return item to player

tag @s add mceq

setblock 0 0 0 shulker_box
data modify block 0 0 0 Items[] set from entity @e[type=item,nbt={Item:{tag:{MCEstick:1b}}},sort=nearest,limit=1] Item
loot replace entity @s weapon.mainhand 1 mine 0 0 0 stick{drop_contents:true}
setblock 0 0 0 bedrock
kill @e[type=item,nbt={Item:{tag:{MCEstick:1b}}},sort=nearest,limit=1]
