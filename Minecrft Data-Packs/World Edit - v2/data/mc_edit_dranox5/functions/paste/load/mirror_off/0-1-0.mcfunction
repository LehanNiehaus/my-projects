##
 # 0-1-0.mcfunction
 # 
 #
 # Created by Dranox5.
##

clone ~ ~-1 ~ ~ ~-1 ~ 4 1 0
setblock ~ ~-1 ~ structure_block{mode:"LOAD", name:"mc_edit_dranox5:copy_0-1-0", ignoreEntities:0b, posY:1, powered:0b}
execute if entity @s[tag=ignore_entities] run data merge block ~ ~-1 ~ {ignoreEntities:1b}

execute if entity @s[tag=pst90] run data merge block ~ ~-1 ~ {rotation:"CLOCKWISE_90"}
execute if entity @s[tag=pst180] run data merge block ~ ~-1 ~ {rotation:"CLOCKWISE_180"}
execute if entity @s[tag=pst270] run data merge block ~ ~-1 ~ {rotation:"COUNTERCLOCKWISE_90"}

data merge block ~ ~-1 ~ {powered:0b}

clone ~ ~-2 ~ ~ ~-2 ~ 4 1 2
setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ redstone_block

clone 4 1 0 4 1 0 ~ ~-1 ~
clone 4 1 2 4 1 2 ~ ~-2 ~