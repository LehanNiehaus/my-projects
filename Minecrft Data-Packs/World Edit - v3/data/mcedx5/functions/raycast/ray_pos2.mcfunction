##
 # ray_pos2.mcfunction
 # 
 #
 # Created by Dranox5.
##

function mcedx5:utility/gpos
execute if score #x gPort = #x raycast if score #y gPort = #y raycast if score #z gPort = #z raycast positioned ^ ^ ^-0.1 run function mcedx5:raycast/ray_pos2
#execute if score #x gPort = #x raycast if score #y gPort = #y raycast if score #z gPort = #z raycast positioned ^ ^ ^-0.1 run say backed up