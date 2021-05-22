summon area_effect_cloud ~ ~ ~ {Age:-1,Radius:0,Tags:["pos"]}
execute store result score @s PosX run data get entity @e[type=area_effect_cloud,tag=pos,sort=nearest,limit=1] Pos[0] 1000
execute store result score @s PosY run data get entity @e[type=area_effect_cloud,tag=pos,sort=nearest,limit=1] Pos[1] 1000
execute store result score @s PosZ run data get entity @e[type=area_effect_cloud,tag=pos,sort=nearest,limit=1] Pos[2] 1000
kill @e[type=area_effect_cloud,tag=pos,sort=nearest,limit=1]