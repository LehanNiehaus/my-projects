##
 # loop3.mcfunction
 # 
 #
 # Created by .
##

# Z dir

execute if entity @e[type=area_effect_cloud,tag=random,tag=pool] run summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:[random_pool]}
execute if entity @e[type=area_effect_cloud,tag=random,tag=pool] run function mc_edit_dranox5:particles/block_red

execute if entity @s[tag=random_fill] unless entity @e[type=area_effect_cloud,tag=random,tag=pool] run function mc_edit_dranox5:random/place_fill
execute if entity @s[tag=random_replace] unless entity @e[type=area_effect_cloud,tag=random,tag=pool] run function mc_edit_dranox5:random/place_replace




scoreboard players add @s PosZ 1
execute if score @s PosZ <= z2 gPos positioned ~ ~ ~1 run function mc_edit_dranox5:random/loop3
