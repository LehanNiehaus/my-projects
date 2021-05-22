##
 # particles/block_white.mcfunction
 # MC Edit
 #
 # Created by Dranox5
##

#Z-Axis
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~0.5 ~0.5 ~ 0 0 0.25 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~0.5 ~-0.5 ~ 0 0 0.25 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~-0.5 ~0.5 ~ 0 0 0.25 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~-0.5 ~-0.5 ~ 0 0 0.25 0 2 force

#Y-Axis
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~0.5 ~ ~0.5 0 0.25 0 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~0.5 ~ ~-0.5 0 0.25 0 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~-0.5 ~ ~0.5 0 0.25 0 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~-0.5 ~ ~-0.5 0 0.25 0 0 2 force

#X-Axis
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~ ~0.5 ~0.5 0.25 0 0 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~ ~0.5 ~-0.5 0.25 0 0 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~ ~-0.5 ~0.5 0.25 0 0 0 2 force
execute positioned ~0.5 ~0.5 ~0.5 run particle dust 1 1 1 0.5 ~ ~-0.5 ~-0.5 0.25 0 0 0 2 force

