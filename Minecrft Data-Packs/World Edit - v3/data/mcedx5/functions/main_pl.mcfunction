##
 # main@s.mcfunction
 # 
 #
 # Created by Dranox5.
##

function mcedx5:r-click/main

#execute as @s[tag=mceheld] run scoreboard players set #profile cursor 1500050
#execute as @s[tag=mceheld] run function mcedx5:cursor/profile_load

execute as @s[tag=mceh] run function mcedx5:cursor/run

#cycle cursor dist
execute if entity @s[tag=mcef] run scoreboard players add #dist cursor 50
execute if score #dist cursor matches 201.. run scoreboard players set #dist cursor 50
tag @s remove mcef

#toggle cursor fixed
execute if entity @s[tag=mceq,tag=!sneaking] if score #fixed cursor matches 0 run scoreboard players set #fixed cursor 3
execute if entity @s[tag=mceq,tag=!sneaking] if score #fixed cursor matches 1 run scoreboard players set #fixed cursor 2
execute if entity @s[tag=mceq,tag=!sneaking] run tag @s remove mceq
execute if score #fixed cursor matches 3 run scoreboard players set #fixed cursor 1
execute if score #fixed cursor matches 2 run scoreboard players set #fixed cursor 0

#toggle cursor pre-block
execute if entity @s[tag=mceq,tag=sneaking] if score #p-block cursor matches 0 run scoreboard players set #p-block cursor 3
execute if entity @s[tag=mceq,tag=sneaking] if score #p-block cursor matches 1 run scoreboard players set #p-block cursor 2
execute if entity @s[tag=mceq,tag=sneaking] run tag @s remove mceq
execute if score #p-block cursor matches 3 run scoreboard players set #p-block cursor 1
execute if score #p-block cursor matches 2 run scoreboard players set #p-block cursor 0



tag @s remove mcerc





