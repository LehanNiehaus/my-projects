scoreboard players set @s ray_distance 0
execute unless score @s ray_maxDistance matches -2147483648..2147483647 run scoreboard players set @s ray_maxDistance 16
#execute positioned ~ ~1.616 ~ run function raycast:ray_step
execute anchored eyes run function raycast:ray_step