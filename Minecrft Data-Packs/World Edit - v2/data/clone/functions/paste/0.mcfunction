scoreboard players operation @s PosX = @s offPosX

scoreboard players operation @s PosY = @s offPosY

scoreboard players operation @s PosZ = @s offPosZ

execute store result block ~ ~ ~ posX int 1 run scoreboard players get @s PosX
execute store result block ~ ~ ~ posY int 1 run scoreboard players get @s PosY
execute store result block ~ ~ ~ posZ int 1 run scoreboard players get @s PosZ

#data merge block ~ ~ ~ {rotation:"NONE"}
say 0