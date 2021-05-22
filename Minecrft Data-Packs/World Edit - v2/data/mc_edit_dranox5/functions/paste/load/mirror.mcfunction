data merge block ~ ~ ~ {mirror:"LEFT_RIGHT"}

execute if entity @s[tag=facing_px] run scoreboard players operation @s PosZ *= #-1 CSV
execute if entity @s[tag=facing_pz] run scoreboard players operation @s PosX *= #-1 CSV
execute if entity @s[tag=facing_nx] run scoreboard players operation @s PosZ *= #-1 CSV
execute if entity @s[tag=facing_nz] run scoreboard players operation @s PosX *= #-1 CSV

execute if entity @s[tag=facing_px] store result block ~ ~ ~ posZ int 1 run scoreboard players get @s PosZ
execute if entity @s[tag=facing_pz] store result block ~ ~ ~ posX int 1 run scoreboard players get @s PosX
execute if entity @s[tag=facing_nx] store result block ~ ~ ~ posZ int 1 run scoreboard players get @s PosZ
execute if entity @s[tag=facing_nz] store result block ~ ~ ~ posX int 1 run scoreboard players get @s PosX
