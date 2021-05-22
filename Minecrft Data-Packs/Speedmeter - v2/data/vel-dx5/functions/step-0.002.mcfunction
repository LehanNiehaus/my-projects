##
 # step-0.002.mcfunction
 # 
 #
 # Created by Dranox5.
##
scoreboard players add @s dist 2

execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.001..0.0019999999] positioned ^ ^ ^0.001 run function vel-dx5:step-0.001