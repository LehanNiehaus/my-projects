##
 # place_fill.mcfunction
 # 
 #
 # Created by .
##

#block to place goes to: 2 1 2 (working slot)

execute at @e[type=area_effect_cloud,tag=random_pool,sort=random,limit=1] run clone ~ ~ ~ ~ ~ ~ 2 1 2
clone 2 1 2 2 1 2 ~ ~ ~ 


#progress bar
scoreboard players add @s progress_count 1

scoreboard players operation @s progress = @s progress_count
scoreboard players operation @s progress *= #100 constant
scoreboard players operation @s progress /= @s bsize
execute store result bossbar progress value run scoreboard players get @s progress

