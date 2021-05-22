##
 # step-0.008.mcfunction
 # 
 #
 # Created by Dranox5.
##
scoreboard players add @s dist 8

execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.004..0.0079999999] positioned ^ ^ ^0.004 run function vel-dx5:step-0.004
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.002..0.0039999999] positioned ^ ^ ^0.002 run function vel-dx5:step-0.002
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.001..0.0019999999] positioned ^ ^ ^0.001 run function vel-dx5:step-0.001