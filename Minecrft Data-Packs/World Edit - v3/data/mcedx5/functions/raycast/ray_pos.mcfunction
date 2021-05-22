##
 # ray_pos.mcfunction
 # 
 #
 # Created by Dranox5.
##

#in-block pos
function mcedx5:utility/gpos
scoreboard players operation #x raycast = #x gPort
scoreboard players operation #y raycast = #y gPort
scoreboard players operation #z raycast = #z gPort
#pre-block pos
execute positioned ^ ^ ^-0.1 if score #hit raycast matches 1 run function mcedx5:utility/gpos
execute positioned ^ ^ ^-0.1 if score #hit raycast matches 0 run function mcedx5:raycast/ray_pos2
scoreboard players operation #px raycast = #x gPort
scoreboard players operation #py raycast = #y gPort
scoreboard players operation #pz raycast = #z gPort