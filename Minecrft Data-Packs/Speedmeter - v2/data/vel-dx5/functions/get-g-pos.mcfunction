##
 # get-g-pos.mcfunction
 # 
 #
 # Created by Dranox5.
##
execute store result score x gPos run data get entity @s Pos[0] 1000
execute store result score y gPos run data get entity @s Pos[1] 1000
execute store result score z gPos run data get entity @s Pos[2] 1000
