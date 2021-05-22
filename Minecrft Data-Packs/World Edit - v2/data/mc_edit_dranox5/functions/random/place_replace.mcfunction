##
 # place_replace.mcfunction
 # 
 #
 # Created by .
##

#block to place goes to: 2 1 0 (working slot)
#block to replace is at 0 1 2 (replace slot)

execute if blocks ~ ~ ~ ~ ~ ~ 0 1 2 all at @e[type=area_effect_cloud,tag=random_pool,sort=random,limit=1] run clone ~ ~ ~ ~ ~ ~ 2 1 0
execute if blocks ~ ~ ~ ~ ~ ~ 0 1 2 all run clone 2 1 0 2 1 0 ~ ~ ~ 


#progress bar
scoreboard players add @s progress_count 1

scoreboard players operation @s progress = @s progress_count
scoreboard players operation @s progress *= #100 constant
scoreboard players operation @s progress /= @s bsize
execute store result bossbar progress value run scoreboard players get @s progress