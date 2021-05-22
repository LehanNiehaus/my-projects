execute if entity @s[tag=disp] run summon area_effect_cloud ~ ~ ~ {Age:-1,Radius:0,Tags:["CloneMarker"]}

execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[0] double 1 run scoreboard players get @s bPosX
execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[1] double 1 run scoreboard players get @s bPosY
execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[2] double 1 run scoreboard players get @s bPosZ

#execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] if block ~ ~-1 ~ structure_block run setblock ~ ~-1 ~ air

execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run clone ~ 1 ~1 ~ 1 ~1 ~ ~-24 ~
execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run setblock ~ 1 ~1 bedrock

kill @e[type=area_effect_cloud,tag=CloneMarker,limit=1]
tag @s remove disp
tag @s remove 2Pos