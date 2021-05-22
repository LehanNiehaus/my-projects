summon area_effect_cloud ~ ~ ~ {Age:-1,Radius:0,Tags:["CloneMarker"]}

#goto base
execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[0] double 1 run scoreboard players get @s bPosX
execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[1] double 1 run scoreboard players get @s bPosY
execute store result entity @e[type=area_effect_cloud,tag=CloneMarker,limit=1] Pos[2] double 1 run scoreboard players get @s bPosZ

#save
execute if entity @s[tag=ignore_air] run function clone:fill_void

execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run clone ~1 ~-24 ~ ~1 ~-24 ~ ~1 1 ~1 
execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run setblock ~1 ~-24 ~ redstone_block

execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run clone ~1 1 ~1 ~1 1 ~1 ~1 ~-24 ~
execute at @e[type=area_effect_cloud,tag=CloneMarker,limit=1] run setblock ~1 1 ~1 bedrock 

execute if entity @s[tag=ignore_air] run function clone:del_void

#get relative position
scoreboard players operation @s PosX = @s bPosX
scoreboard players operation @s PosY = @s bPosY
scoreboard players operation @s PosZ = @s bPosZ
function clone:get_lpos

execute if entity @s[tag=!f_set] run scoreboard players operation @s offPosX = @s lPosX
execute if entity @s[tag=!f_set] run scoreboard players operation @s offPosY = @s lPosY
execute if entity @s[tag=!f_set] run scoreboard players operation @s offPosZ = @s lPosZ
tag @s remove f_set

#Get rotation
function clone:get_dir

tag @s remove faced_px
tag @s remove faced_pz
tag @s remove faced_nx
tag @s remove faced_nz

tag @s[tag=facing_px] add faced_px
tag @s[tag=facing_pz] add faced_pz
tag @s[tag=facing_nx] add faced_nx
tag @s[tag=facing_nz] add faced_nz

#end
kill @e[type=area_effect_cloud,tag=CloneMarker,limit=1]
