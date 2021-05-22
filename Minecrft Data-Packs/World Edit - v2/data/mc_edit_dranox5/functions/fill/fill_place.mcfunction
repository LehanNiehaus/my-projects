##
 # fill_place.mcfunction
 # 
 #
 # Created by .
##

clone 0 1 0 0 1 0 ~ ~ ~ 

scoreboard players add @s progress_count 1

scoreboard players operation @s progress = @s progress_count
scoreboard players operation @s progress *= #100 constant
scoreboard players operation @s progress /= @s bsize
execute store result bossbar progress value run scoreboard players get @s progress
