##
 # setup.mcfunction
 # 
 #
 # Created by Dranox5.
##
say Loaded speed meter

#current Pos
scoreboard objectives add cx dummy
scoreboard objectives add cy dummy
scoreboard objectives add cz dummy
#previous Pos
scoreboard objectives add px dummy
scoreboard objectives add py dummy
scoreboard objectives add pz dummy
#distance between 2 points
scoreboard objectives add dist dummy

#speed
scoreboard objectives add vel dummy

#global Pos
scoreboard objectives add gPos dummy

#math
scoreboard objectives add math dummy
scoreboard players set #1000 math 1000
scoreboard players set #100 math 100
scoreboard players set #10 math 10
scoreboard players set #20 math 20
scoreboard players set #50 math 50
scoreboard players set #5 math 5
scoreboard players set #2 math 2
scoreboard players set #9 math 9
scoreboard players set #125 math 125

#gui
scoreboard objectives add vel-gui dummy
