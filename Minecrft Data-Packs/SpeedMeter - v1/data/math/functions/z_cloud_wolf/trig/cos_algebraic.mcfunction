#############################################################
# Uses Bhaskara's Cos Approximation:
# 
# 32400 - 4x^2
# ------------
# 32400 + x^2
#
# Answer is multiplied by 10000 bc mc does not use decimals
# X is an angle value between 0 & 90
# To Change PRECISION change lines labeled #P to the correct
# decimal places. (ex: for 4 decimal precision use 10000)
#############################################################

#### Create Local Vars ####
scoreboard objectives add algebra_1 dummy
scoreboard objectives add algebra_2 dummy
scoreboard players set 32400 constant 32400
scoreboard players set -4 constant -4

#P
scoreboard players set 10000 constant 10000
#P

scoreboard players operation @s algebra_1 = @s angle

#### Gets x^2 ####
scoreboard players operation @s algebra_1 *= @s algebra_1

#### Puts teh x^2 for numerator ###
scoreboard players operation @s algebra_2 = @s algebra_1

### adds 32400 to x^2 (forming complete denomonator) ###
scoreboard players operation @s algebra_1 += 32400 constant

### creates the -4x^2 ###
scoreboard players operation @s algebra_2 *= -4 constant

### adds 32400 (forms complete numerator) ###
scoreboard players operation @s algebra_2 += 32400 constant

### Creates non-decimal number for output ###
#P
scoreboard players operation @s algebra_2 *= 10000 constant
#P

### Divides to get answer * 10000 ###
scoreboard players operation @s algebra_2 /= @s algebra_1

### Puts answer on the cos scoreboard ###
scoreboard players operation @s cos = @s algebra_2

### Delete Local Vars ###
scoreboard objectives remove algebra_1
scoreboard objectives remove algebra_2
scoreboard players reset 32400 constant
scoreboard players reset -4 constant
scoreboard players reset 10000 constant