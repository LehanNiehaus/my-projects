### Cloud Notes ###
# math_input1 is the number factorialed
###################

#Recursion: Factorial > 1
scoreboard players remove @s math_input1 1
execute if entity @s[scores={math_input1=1..}] run function math:factorial
scoreboard players add @s math_input1 1
execute if entity @s[scores={math_input1=2..}] run scoreboard players operation @s math_output *= @s math_input1

#Base Case: Factorial of 0 or 1
scoreboard players set @s[scores={math_input1=..1}] math_output 1

#Undefined: Factorial of a Negative Number
scoreboard players set @s[scores={math_input1=..-1}] math_output 0