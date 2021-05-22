##
 # detect_rc.mcfunction
 # MC Edit
 #
 # Created by Dranox5
##
execute as @s[scores={rc_c-o-s=1..}] run tag @s add rc
scoreboard players set @s rc_c-o-s 0
