#get rotation
execute store result score @s rotation_y run data get entity @s Rotation[0]
#Normalize
scoreboard players operation @s rotation_y %= #360 constant

#remove old tag
tag @s remove facing_nx
tag @s remove facing_nz
tag @s remove facing_px
tag @s remove facing_pz

#add tag
execute if score @s rotation_y matches 45..134 run tag @s add facing_nx
execute if score @s rotation_y matches 135..224 run tag @s add facing_nz
execute if score @s rotation_y matches 225..314 run tag @s add facing_px
execute if score @s rotation_y matches 315..359 run tag @s add facing_pz
execute if score @s rotation_y matches 0..44 run tag @s add facing_pz