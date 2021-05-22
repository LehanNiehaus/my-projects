#USES: temp1

#Get the difference between the exponents in temp1
scoreboard players operation @s math_temp1 = @s math_input1
scoreboard players operation @s math_temp1 /= 8388608 constant
scoreboard players operation @s[scores={math_temp1=..-1}] math_temp1 *= -1 constant
scoreboard players operation @s math_output = @s math_input2
scoreboard players operation @s math_output /= 8388608 constant
scoreboard players operation @s[scores={math_output=..-1}] math_output *= -1 constant
scoreboard players operation @s math_temp1 -= @s math_output

#Put the input with greater exponent in input1 and make the exponent difference positive
scoreboard players operation @s[scores={math_temp1=..-1}] math_input1 >< @s math_input2
tag @s[scores={math_temp1=..-1}] add float_add_swap_dodkd
scoreboard players operation @s[scores={math_temp1=..-1}] math_temp1 *= -1 constant

#Shift the one with the lesser exponent right by the difference
#Any difference greater than 23 will result in 0, so no need to go farther
scoreboard players operation @s math_output = @s math_input2
scoreboard players operation @s math_output %= 8388608 constant
scoreboard players add @s[scores={math_input2=0..}] math_output 8388608
scoreboard players remove @s[scores={math_input2=..-1}] math_output 8388608
scoreboard players operation @s[scores={math_temp1=16..}] math_output /= 65536 constant
scoreboard players remove @s[scores={math_temp1=16..}] math_temp1 16
scoreboard players operation @s[scores={math_temp1=8..}] math_output /= 256 constant
scoreboard players remove @s[scores={math_temp1=8..}] math_temp1 8
scoreboard players operation @s[scores={math_temp1=4..}] math_output /= 16 constant
scoreboard players remove @s[scores={math_temp1=4..}] math_temp1 4
scoreboard players operation @s[scores={math_temp1=2..}] math_output /= 4 constant
scoreboard players remove @s[scores={math_temp1=2..}] math_temp1 2
scoreboard players operation @s[scores={math_temp1=1..}] math_output /= 2 constant

#Strip and add input1
scoreboard players operation @s math_temp1 = @s math_input1
scoreboard players operation @s math_temp1 %= 8388608 constant
scoreboard players add @s[scores={math_input1=0..}] math_temp1 8388608
scoreboard players remove @s[scores={math_input1=..-1}] math_temp1 8388608
scoreboard players operation @s math_output += @s math_temp1

#Get the exponent in temp1
scoreboard players operation @s math_temp1 = @s math_input1
scoreboard players operation @s math_temp1 /= 8388608 constant
scoreboard players operation @s[scores={math_temp1=..-1}] math_temp1 *= -1 constant

#Shift if necessary
scoreboard players add @s[scores={math_output=16777216..}] math_temp1 1
scoreboard players operation @s[scores={math_output=16777216..}] math_output /= 2 constant

scoreboard players add @s[scores={math_output=..-16777216}] math_temp1 1
scoreboard players operation @s[scores={math_output=..-16777216}] math_output /= 2 constant

scoreboard players remove @s[scores={math_output=-255..255}] math_temp1 16
scoreboard players operation @s[scores={math_output=-255..255}] math_output *= 65536 constant

scoreboard players remove @s[scores={math_output=-65535..65535}] math_temp1 8
scoreboard players operation @s[scores={math_output=-65535..65535}] math_output *= 256 constant

scoreboard players remove @s[scores={math_output=-1048575..1048575}] math_temp1 4
scoreboard players operation @s[scores={math_output=-1048575..1048575}] math_output *= 16 constant

scoreboard players remove @s[scores={math_output=-4194303..4194303}] math_temp1 2
scoreboard players operation @s[scores={math_output=-4194303..4194303}] math_output *= 4 constant

scoreboard players remove @s[scores={math_output=-8388607..8388607}] math_temp1 1
scoreboard players operation @s[scores={math_output=-8388607..8388607}] math_output *= 2 constant

#Add exponent, minus 1 to remove implicit high bit
scoreboard players remove @s math_temp1 1
scoreboard players operation @s math_temp1 *= 8388608 constant
scoreboard players operation @s[scores={math_output=0..}] math_output += @s math_temp1
scoreboard players operation @s[scores={math_output=..-1}] math_output -= @s math_temp1

#Swap back inputs if swapped
scoreboard players operation @s[tag=float_add_swap_dodkd] math_input1 >< @s math_input2
tag @s remove float_add_swap_dodkd