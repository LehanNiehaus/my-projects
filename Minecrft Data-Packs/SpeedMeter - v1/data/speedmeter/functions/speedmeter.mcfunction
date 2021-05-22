#deltaX
execute as @a store result score @s c_x run data get entity @s Pos[0] 2000
execute as @a unless score @s p_x matches -2147483648..2147483647 run scoreboard players operation @s p_x = @s c_x
execute as @a run scoreboard players operation @s d_x = @s c_x
execute as @a run scoreboard players operation @s d_x -= @s p_x
execute as @a if score @s d_x matches ..0 run scoreboard players operation @s d_x *= -1 constant
execute as @a run scoreboard players operation @s p_x = @s c_x
######

#deltaY
execute as @a store result score @s c_y run data get entity @s Pos[1] 2000
execute as @a unless score @s p_y matches -2147483648..2147483647 run scoreboard players operation @s p_y = @s c_y
execute as @a run scoreboard players operation @s d_y = @s c_y
execute as @a run scoreboard players operation @s d_y -= @s p_y
execute as @a if score @s d_y matches ..0 run scoreboard players operation @s d_y *= -1 constant
execute as @a run scoreboard players operation @s p_y = @s c_y
######

#deltaZ
execute as @a store result score @s c_z run data get entity @s Pos[2] 2000
execute as @a unless score @s p_z matches -2147483648..2147483647 run scoreboard players operation @s p_z = @s c_z
execute as @a run scoreboard players operation @s d_z = @s c_z
execute as @a run scoreboard players operation @s d_z -= @s p_z
execute as @a if score @s d_z matches ..0 run scoreboard players operation @s d_z *= -1 constant
execute as @a run scoreboard players operation @s p_z = @s c_z
######

#using Pythagorous Theorum: distance=sqrt(dx^2+dy^2+dz^2)
#set deltas
execute as @a run scoreboard players operation @s temp0 = @s d_x
execute as @a run scoreboard players operation @s temp1 = @s d_y
execute as @a run scoreboard players operation @s temp2 = @s d_z
#get squares
execute as @a run scoreboard players operation @s temp0 *= @s temp0
execute as @a run scoreboard players operation @s temp1 *= @s temp1
execute as @a run scoreboard players operation @s temp2 *= @s temp2
#get sum
execute as @a run scoreboard players operation @s temp3 = @s temp0
execute as @a run scoreboard players operation @s temp3 += @s temp1
execute as @a run scoreboard players operation @s temp3 += @s temp2
#get root
execute as @a run scoreboard players set @s math_input1 2
execute as @a run scoreboard players operation @s math_input2 = @s temp3
execute as @a run function math:root
#fix root
execute as @a run scoreboard players operation @s math_input1 = @s math_output
execute as @a run scoreboard players set @s math_input2 1
execute as @a run function math:divide_round
#execute as @a run scoreboard players operation @s speed_final = @s math_output
#####

#get average velocity from last 3 ticks.
#(note:This is optional for reducing random drops in velocity.Feel free to comment out these lines for more acurate mesurements)
#
#shift values
execute as @a if score @s math_output matches 0.. run scoreboard players operation @s speed3 = @s speed1
execute as @a if score @s math_output matches 0.. run scoreboard players operation @s speed2 = @s speed1
execute as @a if score @s math_output matches 0.. run scoreboard players operation @s speed1 = @s math_output
#get avereage
execute as @a run scoreboard players operation @s temp0 = @s speed1
execute as @a run scoreboard players operation @s temp0 += @s speed2
execute as @a run scoreboard players operation @s temp0 += @s speed3
execute as @a run scoreboard players operation @s math_input1 = @s temp0
execute as @a run scoreboard players set @s math_input2 3
execute as @a run function math:divide_round
execute as @a run scoreboard players operation @s speed_final = @s math_output
execute as @a unless score @s speed_final matches 0.. run say Negative
#####

#set final scoreboards
#
#Speed1
execute as @a run scoreboard players operation @s math_input1 = @s speed_final
execute as @a run scoreboard players set @s math_input2 100
execute as @a run function math:divide_round
execute as @a run scoreboard players operation @s Speed1 = @s math_output
#Speed2
execute as @a run scoreboard players operation @s Speed2 = @s speed_final
execute as @a run scoreboard players operation @s Speed2 /= 100 constants
#Speed3dec
execute as @a run scoreboard players operation @s Speed3dec = @s speed_final
execute as @a run scoreboard players operation @s Speed3dec %= 100 constants
#Speed2dec
execute as @a run scoreboard players operation @s math_input1 = @s Speed3dec
execute as @a run scoreboard players set @s math_input2 10
execute as @a run function math:divide_round
execute as @a run scoreboard players operation @s Speed2dec = @s math_output
#Speed3
execute as @a run scoreboard players operation @s Speed3 = @s Speed2
######

execute as @a unless score @s ShowSpeed matches -2147483648..2147483647 run scoreboard players set @s ShowSpeed 0
execute as @a[scores={ShowSpeed=1..3}] run function speedmeter:update_refreshcounter