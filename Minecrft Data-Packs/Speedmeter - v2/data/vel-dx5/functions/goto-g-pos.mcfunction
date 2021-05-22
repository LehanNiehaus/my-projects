##
 # goto-g-pos.mcfunction
 # 
 #
 # Created by Dranox5.
##
execute store result entity @s Pos[0] double 0.001 run scoreboard players get x gPos
execute store result entity @s Pos[1] double 0.001 run scoreboard players get y gPos
execute store result entity @s Pos[2] double 0.001 run scoreboard players get z gPos
