##
 # div-round.mcfunction
 # 
 #
 # Created by Dranox5.
##
scoreboard players operation #out math = #in1 math
scoreboard players operation #out math += #in1 math
scoreboard players operation #out math += #in2 math
scoreboard players operation #temp1 math = #in2 math
scoreboard players operation #temp1 math += #in2 math
scoreboard players operation #out math /= #temp1 math