##
 # run.mcfunction
 # 
 #
 # Created by Dranox5.
##


#setup raycast
scoreboard players operation #m-dist raycast = #dist cursor
scoreboard players operation #ignore raycast = #fixed cursor

#raycast
#execute at @s run function mcedx5:raycast/start
function mcedx5:raycast/start

#Save pos
execute if score #p-block cursor matches 0 run scoreboard players operation #x cursor = #x raycast
execute if score #p-block cursor matches 0 run scoreboard players operation #y cursor = #y raycast
execute if score #p-block cursor matches 0 run scoreboard players operation #z cursor = #z raycast

execute if score #p-block cursor matches 1 run scoreboard players operation #x cursor = #px raycast
execute if score #p-block cursor matches 1 run scoreboard players operation #y cursor = #py raycast
execute if score #p-block cursor matches 1 run scoreboard players operation #z cursor = #pz raycast

#save to gPort for later convenience
scoreboard players operation #x gPort = #x cursor
scoreboard players operation #y gPort = #y cursor
scoreboard players operation #z gPort = #z cursor

summon area_effect_cloud ~ ~ ~ {Tags:[mcecursor]}
execute as @e[type=area_effect_cloud,tag=mcecursor] run function mcedx5:utility/tp_pos

execute at @e[type=area_effect_cloud,tag=mcecursor] run function mcedx5:cursor/hglt

