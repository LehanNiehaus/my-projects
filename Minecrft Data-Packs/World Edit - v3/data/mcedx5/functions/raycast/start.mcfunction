##
 # start.mcfunction
 # 
 #
 # Created by Dranox5.
##

#reset dist and hit
scoreboard players operation #r-dist raycast = #m-dist raycast
scoreboard players operation #dist raycast = #m-dist raycast
scoreboard players set #hit raycast 0

#start
execute at @s if score #ignore raycast matches 0 anchored eyes positioned ^ ^ ^0.0 run function mcedx5:raycast/step
execute at @s unless score #ignore raycast matches 0 anchored eyes positioned ^ ^ ^0.0 run function mcedx5:raycast/step_ignore

scoreboard players set #ignore raycast 0