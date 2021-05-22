summon area_effect_cloud ~ ~ ~ {Age:-1,Radius:0,Tags:["CloneMarker"]}

execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[0] double 1 run scoreboard players get @s bPosX
execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[1] double 1 run scoreboard players get @s bPosY
execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[2] double 1 run scoreboard players get @s bPosZ

execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run clone ~ ~-24 ~ ~ ~-24 ~ ~ 1 ~1

execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run setblock ~ ~-24 ~ structure_block{mode:"SAVE",name:"clone:clonemarker",ignoreEntities:0b}

execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] store result block ~ ~-24 ~ sizeX int 1 run scoreboard players get @s SizeX
execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] store result block ~ ~-24 ~ sizeY int 1 run scoreboard players get @s SizeY
execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] store result block ~ ~-24 ~ sizeZ int 1 run scoreboard players get @s SizeZ

#scoreboard players set @s Y_offset 56
#scoreboard players operation @s Y_offset -= @s bPosY
#execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] store result block ~ ~ ~ posY int -1 run scoreboard players get @s Y_offset
execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run data modify block ~ ~-24 ~ posY set value 24


kill @e[type=area_effect_cloud,tag=CloneMarker,limit=1]

tag @s add disp