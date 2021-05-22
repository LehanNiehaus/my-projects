### NOTES FROM CLOUD: ###
# Set math_input1 to be the number you want logged
# math_input1 is the base
# math_input2 is the number that is logged
#########################

#USES: temp1

scoreboard players set @s math_output 0
scoreboard players set @s math_temp1 0

#Only do for bases > 1; leave all else as output = 0
scoreboard players operation @s[scores={math_input1=2..}] math_temp1 = @s math_input2

#Repeat 30 times, because that is the maximum possible value: log_2(2^30)
#(31-bit positive integers in Minecraft, so 2^31 - 1 is the max value)
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1
scoreboard players operation @s[scores={math_temp1=1..}] math_temp1 /= @s math_input1
scoreboard players add @s[scores={math_temp1=1..}] math_output 1