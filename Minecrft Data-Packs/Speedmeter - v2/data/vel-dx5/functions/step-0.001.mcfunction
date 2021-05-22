##
 # step-0.001.mcfunction
 # 
 #
 # Created by Dranox5.
##
scoreboard players add @s dist 1


execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.0005..0.001] run scoreboard players add @s dist 1





#execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.001..] positioned ^ ^ ^0.001 run function vel-dx5:step-0.001

#scoreboard players add #0.001 vel 1
#particle flame ~ ~ ~ 0 0 0 0 1