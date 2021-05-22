##
 # calc-vel.mcfunction
 # 
 #
 # Created by Dranox5.
##

#velocity, no decimals, rounded
scoreboard players operation #in1 math = @s dist
scoreboard players operation #in1 math *= #20 math
scoreboard players operation #in2 math = #1000 math
function vel-dx5:div-round
scoreboard players operation #vel-d0 vel = #out math

#velocity, no decimals
scoreboard players operation #vel vel = @s dist
scoreboard players operation #vel vel /= #50 math

#velocity decimals
scoreboard players operation #temp2 math = @s dist
scoreboard players operation #temp2 math *= #20 math
scoreboard players operation #temp2 math %= #1000 math

#3 decimals
scoreboard players operation #vel-d3 vel = #temp2 math

#2 decimals
scoreboard players operation #in1 math = #temp2 math
scoreboard players operation #in2 math = #10 math
function vel-dx5:div-round
scoreboard players operation #vel-d2 vel = #out math

#1 decimals
scoreboard players operation #in1 math = #temp2 math
scoreboard players operation #in2 math = #100 math
function vel-dx5:div-round
scoreboard players operation #vel-d1 vel = #out math

#km/h
scoreboard players operation #vel-k vel = @s dist
scoreboard players operation #vel-k vel *= #9 math
scoreboard players operation #vel-k vel /= #125 math

scoreboard players operation #in1 math = @s dist
scoreboard players operation #in1 math *= #9 math
scoreboard players operation #in1 math *= #1000 math
scoreboard players operation #in1 math /= #125 math
scoreboard players operation #in1 math %= #1000 math
scoreboard players operation #in2 math = #100 dist
function vel-dx5:div-round
scoreboard players operation #vel-kd vel = #out math



