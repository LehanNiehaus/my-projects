##
 # 1-1-0.mcfunction
 # 
 #
 # Created by .
##

clone ~ ~-1 ~ ~ ~-1 ~ 4 1 0
setblock ~ ~-1 ~ structure_block{mode:"SAVE", name:"mc_edit_dranox5:copy_1-1-0", ignoreEntities:0b, posY:1, powered:0b}


#structure block automaticaly limits to 48
execute store result block ~ ~-1 ~ sizeX int 1 run scoreboard players get b_ol_x gPos
execute store result block ~ ~-1 ~ sizeY int 1 run scoreboard players get b_ol_y gPos
execute store result block ~ ~-1 ~ sizeZ int 1 run scoreboard players get @s bsize_z

data merge block ~ ~-1 ~ {powered:0b}

clone ~ ~-2 ~ ~ ~-2 ~ 4 1 2
setblock ~ ~-2 ~ air
setblock ~ ~-2 ~ redstone_block

clone 4 1 0 4 1 0 ~ ~-1 ~
clone 4 1 2 4 1 2 ~ ~-2 ~