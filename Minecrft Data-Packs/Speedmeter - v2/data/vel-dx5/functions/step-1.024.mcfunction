##
 # step-1.024.mcfunction
 # 
 #
 # Created by Dranox5.
##
scoreboard players add @s dist 1024

execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=1.024..] positioned ^ ^ ^1.024 run function vel-dx5:step-1.024
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.512..1.0239999999] positioned ^ ^ ^0.512 run function vel-dx5:step-0.512
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.256..0.5119999999] positioned ^ ^ ^0.256 run function vel-dx5:step-0.256
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.128..0.2559999999] positioned ^ ^ ^0.128 run function vel-dx5:step-0.128
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.064..0.1279999999] positioned ^ ^ ^0.064 run function vel-dx5:step-0.064
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.032..0.0639999999] positioned ^ ^ ^0.032 run function vel-dx5:step-0.032
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.016..0.0319999999] positioned ^ ^ ^0.016 run function vel-dx5:step-0.016
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.008..0.0159999999] positioned ^ ^ ^0.008 run function vel-dx5:step-0.008
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.004..0.0079999999] positioned ^ ^ ^0.004 run function vel-dx5:step-0.004
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.002..0.0039999999] positioned ^ ^ ^0.002 run function vel-dx5:step-0.002
execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.001..0.0019999999] positioned ^ ^ ^0.001 run function vel-dx5:step-0.001