##
 # tp_pos.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Places @s at the xyz from gPort. Does NOT work on players.

execute store result entity @s Pos[0] double 1 run scoreboard players get #x gPort
execute store result entity @s Pos[1] double 1 run scoreboard players get #y gPort
execute store result entity @s Pos[2] double 1 run scoreboard players get #z gPort