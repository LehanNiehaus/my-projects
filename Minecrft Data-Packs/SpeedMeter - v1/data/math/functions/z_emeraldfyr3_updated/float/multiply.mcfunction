#USES: temp1, temp2

#Isolate the signed significand of input2
scoreboard players operation @s math_temp2 = @s math_input2
scoreboard players operation @s math_temp2 %= 8388608 constant
scoreboard players add @s[scores={math_input2=0..}] math_temp2 8388608
scoreboard players remove @s[scores={math_input2=..-1}] math_temp2 8388608

#Multiply the significands, 6 bits of input1 at a time
scoreboard players operation @s math_output = @s math_input1
scoreboard players operation @s math_output %= 64 constant
scoreboard players operation @s math_output *= @s math_temp2
scoreboard players operation @s math_output /= 64 constant

scoreboard players operation @s math_temp1 = @s math_input1
scoreboard players operation @s math_temp1 /= 64 constant
scoreboard players operation @s math_temp1 %= 64 constant
scoreboard players operation @s math_temp1 *= @s math_temp2
scoreboard players operation @s math_output += @s math_temp1
scoreboard players operation @s math_output /= 64 constant

scoreboard players operation @s math_temp1 = @s math_input1
scoreboard players operation @s math_temp1 /= 4096 constant
scoreboard players operation @s math_temp1 %= 64 constant
scoreboard players operation @s math_temp1 *= @s math_temp2
scoreboard players operation @s math_output += @s math_temp1
scoreboard players operation @s math_output /= 64 constant

scoreboard players operation @s math_temp1 = @s math_input1
scoreboard players operation @s math_temp1 /= 262144 constant
scoreboard players operation @s math_temp1 %= 32 constant
scoreboard players add @s[scores={math_input1=0..}] math_temp1 32
scoreboard players remove @s[scores={math_input1=..-1}] math_temp1 32
scoreboard players operation @s math_temp1 *= @s math_temp2
scoreboard players operation @s math_output += @s math_temp1
scoreboard players operation @s math_output /= 32 constant

#Add 1 to exponent if need to shift another bit
scoreboard players add @s[scores={math_output=16777216..}] math_output 16777216
scoreboard players remove @s[scores={math_output=..-16777216}] math_output 16777216
scoreboard players operation @s[scores={math_output=16777216..}] math_output /= 2 constant
scoreboard players operation @s[scores={math_output=..-16777216}] math_output /= 2 constant

#Add the exponents
scoreboard players operation @s math_temp1 = @s math_input1
scoreboard players operation @s math_temp2 = @s math_input2
scoreboard players operation @s[scores={math_temp1=..-1}] math_temp1 *= -1 constant
scoreboard players operation @s[scores={math_temp2=..-1}] math_temp2 *= -1 constant
scoreboard players operation @s math_temp1 /= 8388608 constant
scoreboard players operation @s math_temp2 /= 8388608 constant
#Remove (127+1) because of IEEE representation and to get the implicit high bit
scoreboard players remove @s math_temp1 128
scoreboard players operation @s math_temp1 += @s math_temp2
scoreboard players operation @s math_temp1 *= 8388608 constant
scoreboard players operation @s[scores={math_output=0..}] math_output += @s math_temp1
scoreboard players operation @s[scores={math_output=..-1}] math_output -= @s math_temp1