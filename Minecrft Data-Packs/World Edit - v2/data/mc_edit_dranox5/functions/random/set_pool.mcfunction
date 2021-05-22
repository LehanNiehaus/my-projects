##
 # set_pool.mcfunction
 # 
 #
 # Created by .
##

scoreboard players operation @s ran1_x = @s bmin_x
scoreboard players operation @s ran1_y = @s bmin_y
scoreboard players operation @s ran1_z = @s bmin_z

scoreboard players operation @s ran2_x = @s bmax_x
scoreboard players operation @s ran2_y = @s bmax_y
scoreboard players operation @s ran2_z = @s bmax_z

tellraw @s [{"text": "Random block pool set:"},{"text": " from "},{"text": "("},{"score": {"name": "@s","objective": "ran1_x"}},{"text": " "},{"score": {"name": "@s","objective": "ran1_y"}},{"text": " "},{"score": {"name": "@s","objective": "ran1_z"}},{"text": ")"},{"text": " to "},{"text": "("},{"score": {"name": "@s","objective": "ran2_x"}},{"text": " "},{"score": {"name": "@s","objective": "ran2_y"}},{"text": " "},{"score": {"name": "@s","objective": "ran2_z"}},{"text": ")"}]

tag @s remove busy
tag @s remove random
