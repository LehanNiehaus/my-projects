function raycast:ray_setup

scoreboard objectives add rc_c-o-s used:carrot_on_a_stick
scoreboard objectives add bsc dummy
scoreboard objectives add bsc1 dummy

scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy
scoreboard objectives add 1PosX dummy
scoreboard objectives add 1PosY dummy
scoreboard objectives add 1PosZ dummy
scoreboard objectives add 2PosX dummy
scoreboard objectives add 2PosY dummy
scoreboard objectives add 2PosZ dummy
scoreboard objectives add bPosX dummy
scoreboard objectives add bPosY dummy
scoreboard objectives add bPosZ dummy
scoreboard objectives add SizeX dummy
scoreboard objectives add SizeY dummy
scoreboard objectives add SizeZ dummy
scoreboard objectives add lPosX dummy
scoreboard objectives add lPosY dummy
scoreboard objectives add lPosZ dummy
scoreboard objectives add offPosX dummy
scoreboard objectives add offPosY dummy
scoreboard objectives add offPosZ dummy

scoreboard objectives add Y_offset dummy
scoreboard objectives add rotation_y dummy
scoreboard objectives add Stack_offset trigger
scoreboard objectives add Stack_count trigger

scoreboard objectives add CSV dummy
scoreboard players set #1000 CSV 1000
scoreboard players set #-1 CSV -1
scoreboard players set #360 CSV 360

function clone:loaded