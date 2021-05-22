##
 # step.mcfunction
 # 
 #
 # Created by Dranox5.
##


#if max dist is reached
#execute if score #r-dist raycast matches ..0 run function mcedx5:raycast/ray_pos

#check dist to near block
scoreboard players set #d-r raycast -1
execute if score #d-r raycast matches -1 unless block ^ ^ ^0.0 #ray_air run scoreboard players set #d-r raycast 0
execute if score #d-r raycast matches -1 unless block ^ ^ ^0.1 #ray_air run scoreboard players set #d-r raycast 1
execute if score #d-r raycast matches -1 unless block ^ ^ ^0.2 #ray_air run scoreboard players set #d-r raycast 2 
execute if score #d-r raycast matches -1 unless block ^ ^ ^0.3 #ray_air run scoreboard players set #d-r raycast 3
execute if score #d-r raycast matches -1 unless block ^ ^ ^0.4 #ray_air run scoreboard players set #d-r raycast 4
execute if score #d-r raycast matches -1 run scoreboard players set #d-r raycast 5
#adjust remaining distance
scoreboard players operation #r-dist raycast -= #d-r raycast

#if hit
execute if score #d-r raycast matches ..0 run scoreboard players set #hit raycast 1

#prevent over step (reached max distance)
execute if score #r-dist raycast matches ..-1 run scoreboard players operation #d-r raycast += #r-dist raycast
execute if score #r-dist raycast matches ..-1 run scoreboard players set #r-dist raycast 0


execute if score #d-r raycast matches 0 run scoreboard players operation #dist raycast -= #r-dist raycast

#step
execute if score #d-r raycast matches 0 run function mcedx5:raycast/ray_pos

execute if score #d-r raycast matches 1 positioned ^ ^ ^0.1 run function mcedx5:raycast/step

execute if score #d-r raycast matches 2 positioned ^ ^ ^0.2 run function mcedx5:raycast/step

execute if score #d-r raycast matches 3 positioned ^ ^ ^0.3 run function mcedx5:raycast/step

execute if score #d-r raycast matches 4 positioned ^ ^ ^0.4 run function mcedx5:raycast/step

execute if score #d-r raycast matches 5 positioned ^ ^ ^0.5 run function mcedx5:raycast/step




#if hit
#execute unless block ~ ~ ~ #ray_air run scoreboard players set #hit raycast 1
#execute unless block ~ ~ ~ #ray_air run function mcedx5:raycast/ray_pos

#if max dist is reached
#execute if score #dist raycast >= #m-dist raycast run function mcedx5:raycast/ray_pos


#step
#execute if score #dist raycast < #m-dist raycast if block ~ ~ ~ #ray_air positioned ^ ^ ^0.1 unless block ~ ~ ~ #ray_air run scoreboard players add #dist raycast 1
#execute if score #dist raycast < #m-dist raycast if block ~ ~ ~ #ray_air positioned ^ ^ ^0.1 unless block ~ ~ ~ #ray_air run function mcedx5:raycast/step


#execute if score #dist raycast < #m-dist raycast if block ~ ~ ~ #ray_air if block ^ ^ ^0.1 #ray_air positioned ^ ^ ^0.2 run scoreboard players add #dist raycast 2
#execute if score #dist raycast < #m-dist raycast if block ~ ~ ~ #ray_air if block ^ ^ ^0.1 #ray_air positioned ^ ^ ^0.2 run function mcedx5:raycast/step
