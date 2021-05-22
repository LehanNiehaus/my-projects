scoreboard players operation @s PosX = @s offPosZ

scoreboard players operation @s PosY = @s offPosY

scoreboard players operation @s PosZ = @s offPosX
scoreboard players operation @s PosZ *= #-1 CSV

execute store result block ~ ~ ~ posX int 1 run scoreboard players get @s PosX
execute store result block ~ ~ ~ posY int 1 run scoreboard players get @s PosY
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get @s PosZ

data merge block ~ ~ ~ {rotation:"COUNTERCLOCKWISE_90"}
say 270