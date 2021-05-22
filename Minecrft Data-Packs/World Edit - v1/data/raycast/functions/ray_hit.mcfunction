summon area_effect_cloud ~ ~ ~ {Age:-1,Radius:0,Tags:["ray_pos"]}
execute store result score @s ray_posX run data get entity @e[type=area_effect_cloud,tag=ray_pos,sort=nearest,limit=1] Pos[0] 1000
execute store result score @s ray_posY run data get entity @e[type=area_effect_cloud,tag=ray_pos,sort=nearest,limit=1] Pos[1] 1000
execute store result score @s ray_posZ run data get entity @e[type=area_effect_cloud,tag=ray_pos,sort=nearest,limit=1] Pos[2] 1000
kill @e[type=area_effect_cloud,tag=ray_pos,sort=nearest,limit=1]
tag @s add ray_hit