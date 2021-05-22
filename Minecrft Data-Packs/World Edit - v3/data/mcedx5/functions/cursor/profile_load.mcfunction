##
 # profile_load.mcfunction
 # 
 #
 # Created by Dranox5.
##

#cut off useless data from profile
scoreboard players operation #profile cursor %= #10^7 cursor

#color
execute if score #profile cursor >= #10^5 cursor run scoreboard players set #c cursor 1
execute if score #profile cursor >= #10^5 cursor run scoreboard players operation #color cursor = #profile cursor
execute if score #profile cursor >= #10^5 cursor run scoreboard players operation #color cursor /= #10^5 cursor

#fixed
scoreboard players operation #fixed cursor = #profile cursor 
scoreboard players operation #fixed cursor %= #10^5 cursor
scoreboard players operation #fixed cursor /= #10^4 cursor
execute unless score #fixed cursor matches 0..1 run scoreboard players set #fixed cursor 1

#p-block
scoreboard players operation #p-block cursor = #profile cursor 
scoreboard players operation #p-block cursor %= #10^4 cursor
scoreboard players operation #p-block cursor /= #10^3 cursor
execute unless score #p-block cursor matches 0..1 run scoreboard players set #p-block cursor 1

#dist
scoreboard players operation #dist cursor = #profile cursor 
scoreboard players operation #dist cursor %= #10^3 cursor

#"Repair" profile after fixing loaded values 
function mcedx5:cursor/profile_save
execute if score #c cursor matches 1 run scoreboard players operation #profile cursor %= #10^5 cursor
scoreboard players reset #c cursor