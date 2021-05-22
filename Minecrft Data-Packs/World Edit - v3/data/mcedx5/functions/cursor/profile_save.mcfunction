##
 # profile_save.mcfunction
 # 
 #
 # Created by Dranox5.
##

#color
scoreboard players operation #profile cursor = #color cursor
scoreboard players operation #profile cursor *= #10^1 cursor

#fixed
scoreboard players operation #profile cursor += #fixed cursor
scoreboard players operation #profile cursor *= #10^1 cursor

#p-block
scoreboard players operation #profile cursor += #p-block cursor
scoreboard players operation #profile cursor *= #10^3 cursor

#dist
scoreboard players operation #profile cursor += #dist cursor
