##
 # setup.mcfunction
 # 
 #
 # Created by Dranox5.
##

scoreboard objectives add raycast dummy

#max-Distance
scoreboard players set #m-dist raycast 0
#distance travelled
scoreboard players set #dist raycast 0
# hit=1, no-hit=0
scoreboard players set #hit raycast 0
#ignore blocks
scoreboard players set #ignore raycast 0

#end/hit position
scoreboard players set #x raycast 0
scoreboard players set #y raycast 0
scoreboard players set #z raycast 0
#pre end/hit position
scoreboard players set #px raycast 0
scoreboard players set #py raycast 0
scoreboard players set #pz raycast 0
