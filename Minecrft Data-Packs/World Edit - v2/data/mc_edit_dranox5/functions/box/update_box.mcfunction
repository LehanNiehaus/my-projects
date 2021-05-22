##
 # update_box.mcfunction
 # 
 #
 # Created by .
##

scoreboard players operation @s 2PosX = @s ray_PosX
scoreboard players operation @s 2PosY = @s ray_PosY
scoreboard players operation @s 2PosZ = @s ray_PosZ

#limit size
scoreboard players operation #x gPos = @s 2PosX
scoreboard players operation #y gPos = @s 2PosY
scoreboard players operation #z gPos = @s 2PosZ

scoreboard players operation #x gPos -= @s 1PosX
scoreboard players operation #y gPos -= @s 1PosY
scoreboard players operation #z gPos -= @s 1PosZ

execute unless score #x gPos matches -95..95 run scoreboard players operation @s 2PosX = @s 1PosX
execute unless score #y gPos matches -95..95 run scoreboard players operation @s 2PosY = @s 1PosY
execute unless score #z gPos matches -95..95 run scoreboard players operation @s 2PosZ = @s 1PosZ

execute if score #x gPos matches ..-96 run scoreboard players remove @s 2PosX 95
execute if score #y gPos matches ..-96 run scoreboard players remove @s 2PosY 95
execute if score #z gPos matches ..-96 run scoreboard players remove @s 2PosZ 95

execute if score #x gPos matches 96.. run scoreboard players add @s 2PosX 95
execute if score #y gPos matches 96.. run scoreboard players add @s 2PosY 95
execute if score #z gPos matches 96.. run scoreboard players add @s 2PosZ 95



#box min
execute if score @s 1PosX < @s 2PosX run scoreboard players operation @s bmin_x = @s 1PosX
execute if score @s 1PosY < @s 2PosY run scoreboard players operation @s bmin_y = @s 1PosY
execute if score @s 1PosZ < @s 2PosZ run scoreboard players operation @s bmin_z = @s 1PosZ

execute if score @s 1PosX >= @s 2PosX run scoreboard players operation @s bmin_x = @s 2PosX
execute if score @s 1PosY >= @s 2PosY run scoreboard players operation @s bmin_y = @s 2PosY
execute if score @s 1PosZ >= @s 2PosZ run scoreboard players operation @s bmin_z = @s 2PosZ

#box max
execute if score @s 1PosX < @s 2PosX run scoreboard players operation @s bmax_x = @s 2PosX
execute if score @s 1PosY < @s 2PosY run scoreboard players operation @s bmax_y = @s 2PosY
execute if score @s 1PosZ < @s 2PosZ run scoreboard players operation @s bmax_z = @s 2PosZ

execute if score @s 1PosX >= @s 2PosX run scoreboard players operation @s bmax_x = @s 1PosX
execute if score @s 1PosY >= @s 2PosY run scoreboard players operation @s bmax_y = @s 1PosY
execute if score @s 1PosZ >= @s 2PosZ run scoreboard players operation @s bmax_z = @s 1PosZ

#box middle
scoreboard players operation @s bm_x = @s bmin_x
scoreboard players operation @s bm_x += @s bmax_x
scoreboard players operation @s bm_x *= #10 constant
scoreboard players operation @s bm_x /= #2 constant
#scoreboard players remove @s bm_x 10

scoreboard players operation @s bm_y = @s bmin_y
scoreboard players operation @s bm_y += @s bmax_y
scoreboard players operation @s bm_y *= #10 constant
scoreboard players operation @s bm_y /= #2 constant
#scoreboard players remove @s bm_y 10

scoreboard players operation @s bm_z = @s bmin_z
scoreboard players operation @s bm_z += @s bmax_z
scoreboard players operation @s bm_z *= #10 constant
scoreboard players operation @s bm_z /= #2 constant
#scoreboard players remove @s bm_z 10

#box size
scoreboard players operation @s bsize_x = @s bmax_x
scoreboard players operation @s bsize_x -= @s bmin_x
scoreboard players add @s bsize_x 1

scoreboard players operation @s bsize_y = @s bmax_y
scoreboard players operation @s bsize_y -= @s bmin_y
scoreboard players add @s bsize_y 1

scoreboard players operation @s bsize_z = @s bmax_z
scoreboard players operation @s bsize_z -= @s bmin_z
scoreboard players add @s bsize_z 1

scoreboard players operation @s bsize = @s bsize_x
scoreboard players operation @s bsize *= @s bsize_y
scoreboard players operation @s bsize *= @s bsize_z


#disp
title @s actionbar [{"score": {"name": "@s", "objective": "bsize_x"}},{"text": " x "},{"score": {"name": "@s", "objective": "bsize_y"}},{"text": " x "},{"score": {"name": "@s", "objective": "bsize_z"}},{"text": "   Volume: "},{"score": {"name": "@s", "objective": "bsize"}}]

