##
 # gpos.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Returns the global xyz value of the execution location in the xyz of gPort.

scoreboard objectives add gPort dummy
summon area_effect_cloud ~ ~ ~ {Radius:0,Tags:[gPort]}
execute store result score #x gPort run data get entity @e[type=area_effect_cloud,tag=gPort,limit=1] Pos[0]
execute store result score #y gPort run data get entity @e[type=area_effect_cloud,tag=gPort,limit=1] Pos[1]
execute store result score #z gPort run data get entity @e[type=area_effect_cloud,tag=gPort,limit=1] Pos[2]
kill @e[type=area_effect_cloud,tag=gPort]