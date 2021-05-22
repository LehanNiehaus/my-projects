#############################################################
# Uses Bhaskara's Sin Approximation:
# 
# 4x(180-x)
# ------------
# 40500-(x(180-x))
#
# Answer is multiplied by 10000 bc mc does not use decimals
# X is an angle value between 0 & 90
# To Change PRECISION change lines labeled #P to the correct
# decimal places. (ex: for 4 decimal precision use 10000)
#############################################################

#### Create Local Vars ####
scoreboard objectives add algebra_1 dummy
scoreboard objectives add algebra_2 dummy
scoreboard players set 180 constant 180
scoreboard players set 40500 constant 40500
scoreboard players set 4 constant 4
scoreboard players set -1 constant -1

#P
scoreboard players set 10000 constant 10000
#P

scoreboard players operation @s algebra_1 = 180 constant

#### Gets 180-x ####
scoreboard players operation @s algebra_1 -= @s angle

#### Puts 180-x into denomonator ###
scoreboard players operation @s algebra_2 = @s algebra_1

### multiplies by 4 and by X (completes numerator) ###
scoreboard players operation @s algebra_1 *= @s angle
scoreboard players operation @s algebra_1 *= 4 constant

### creates the -4x^2 ###
scoreboard players operation @s algebra_2 *= -4 constant

### multiplies by -1 and X for (-x(180-x)) ###
scoreboard players operation @s algebra_2 *= -1 constant
scoreboard players operation @s algebra_2 *= @s angle

### adds 40500 to complete denomonator ###
scoreboard players operation @s algebra_2 += 40500 constant

### Creates non-decimal number for output ###
#P
scoreboard players operation @s algebra_1 *= 10000 constant
#P

### Divides to get answer * 10000 ###
scoreboard players operation @s algebra_1 /= @s algebra_2

### Puts answer on the cos scoreboard ###
scoreboard players operation @s sin = @s algebra_1

### Delete Local Vars ###
scoreboard objectives remove algebra_1
scoreboard objectives remove algebra_2
scoreboard players reset 180 constant
scoreboard players reset 40500 constant
scoreboard players reset 4 constant
scoreboard players reset -1 constant