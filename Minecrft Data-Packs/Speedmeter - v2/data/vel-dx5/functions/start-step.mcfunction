##
 # start-step.mcfunction
 # 
 #
 # Created by Dranox5.
##
scoreboard players set @s dist 0

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






#scoreboard players set #1 vel 0
#scoreboard players set #0.1 vel 0
#scoreboard players set #0.01 vel 0
#scoreboard players set #0.001 vel 0

#execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=1..] positioned ^ ^ ^1 run function vel-dx5:step-1
#execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.1..0.9999] positioned ^ ^ ^0.1 run function vel-dx5:step-0.1
#execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.01..0.0999] positioned ^ ^ ^0.01 run function vel-dx5:step-0.01
#execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.001..0.0099] positioned ^ ^ ^0.001 run function vel-dx5:step-0.001

#tellraw @s [{"text":"components: "},{"score":{"name": "#1","objective": "vel"}},{"text":" - "},{"score":{"name": "#0.1","objective": "vel"}},{"text":" - "},{"score":{"name": "#0.01","objective": "vel"}},{"text":" - "},{"score":{"name": "#0.001","objective": "vel"}}]

#execute if entity @e[type=area_effect_cloud,tag=vel-pos,distance=0.001..] positioned ^ ^ ^0.001 run function vel-dx5:step-0.001