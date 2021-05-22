summon area_effect_cloud ~ ~ ~ {Age:-1,Radius:0,Tags:["voidfiller"]}

execute store result entity @e[type=area_effect_cloud,tag=voidfiller,limit=1] Pos[0] double 1 run scoreboard players get @s bPosX
execute store result entity @e[type=area_effect_cloud,tag=voidfiller,limit=1] Pos[1] double 1 run scoreboard players get @s bPosY
execute store result entity @e[type=area_effect_cloud,tag=voidfiller,limit=1] Pos[2] double 1 run scoreboard players get @s bPosZ

scoreboard players set @s PosX 0

function clone:fill_void1

kill @e[type=area_effect_cloud,tag=voidfiller,limit=1]