##
 # step-0.032.mcfunction
 # 
 #
 # Created by Dranox5.
##
scoreboard players add @s dist 32

execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.016..0.0319999999] positioned ^ ^ ^0.016 run function vel-dx5:step-0.016
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.008..0.0159999999] positioned ^ ^ ^0.008 run function vel-dx5:step-0.008
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.004..0.0079999999] positioned ^ ^ ^0.004 run function vel-dx5:step-0.004
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.002..0.0039999999] positioned ^ ^ ^0.002 run function vel-dx5:step-0.002
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.001..0.0019999999] positioned ^ ^ ^0.001 run function vel-dx5:step-0.001