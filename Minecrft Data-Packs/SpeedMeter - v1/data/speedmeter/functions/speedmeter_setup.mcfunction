say Loaded SpeedMeter v0.9

scoreboard objectives add p_x dummy "Previous X"
scoreboard objectives add p_y dummy "Previous X"
scoreboard objectives add p_z dummy "Previous X"

scoreboard objectives add c_x dummy "Current X"
scoreboard objectives add c_y dummy "Current Y"
scoreboard objectives add c_z dummy "Current Z"

scoreboard objectives add d_x dummy "Delta X"
scoreboard objectives add d_y dummy "Delta Y"
scoreboard objectives add d_z dummy "Delta Z"

scoreboard objectives add temp0 dummy
scoreboard objectives add temp1 dummy
scoreboard objectives add temp2 dummy
scoreboard objectives add temp3 dummy

scoreboard objectives add speed1 dummy
scoreboard objectives add speed2 dummy
scoreboard objectives add speed3 dummy
scoreboard objectives add speed_final dummy

scoreboard objectives add refreshRate trigger
execute as @a run scoreboard players enable @s refreshRate
scoreboard objectives add refreshCount dummy

scoreboard objectives add Speed1 dummy
scoreboard objectives add Speed2 dummy
scoreboard objectives add Speed2dec dummy
scoreboard objectives add Speed3 dummy
scoreboard objectives add Speed3dec dummy


# 1 --> Speed+0dec
# 2 --> Speed+1dec
# 3 --> Speed+2dec
scoreboard objectives add ShowSpeed trigger
execute as @a run scoreboard players enable @s ShowSpeed
trigger ShowSpeed set 1

scoreboard objectives add constants dummy
scoreboard players set -1 constant -1
scoreboard players set 100 constants 100
scoreboard players set 10 constants 10
scoreboard players set 0 constants 0
