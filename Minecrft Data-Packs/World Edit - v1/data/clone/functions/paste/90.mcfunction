scoreboard players operation @s PosX = @s offPosZ
scoreboard players operation @s PosX *= #-1 CSV

scoreboard players operation @s PosY = @s offPosY

scoreboard players operation @s PosZ = @s offPosX

execute store result block ~ ~ ~ posX int 1 run scoreboard players get @s PosX
execute store result block ~ ~ ~ posY int 1 run scoreboard players get @s PosY
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get @s PosZ

data merge block ~ ~ ~ {rotation:"CLOCKWISE_90"}
say 90