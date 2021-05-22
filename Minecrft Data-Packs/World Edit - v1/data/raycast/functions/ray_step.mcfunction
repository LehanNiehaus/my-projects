execute unless score @s ray_distance matches ..1 run function raycast:ray_step_execute
scoreboard players add @s ray_distance 1
execute unless block ~ ~ ~ air run function raycast:ray_hit
execute if block ~ ~ ~ air if score @s ray_distance <= @s ray_maxDistance if score @s ray_distance matches 2.. positioned ^ ^ ^0.25 run function raycast:ray_step
execute if score @s ray_distance <= @s ray_maxDistance if score @s ray_distance matches ..1 positioned ^ ^ ^0.25 run function raycast:ray_step
