##
 # replace.mcfunction
 # 
 #
 # Created by .
##

setblock 2 1 2 air
tag @s add busy
tag @s add replace
tag @s add replace1

tellraw @s {"text": " "}
tellraw @s [{"text": "Click to sellect block to replace:","color":"aqua","clickEvent": {"action": "suggest_command","value": "/setblock 2 1 0 minecraft:"}}]
tellraw @s {"text": "Use previous block","color":"aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=replace1,tag=is_holding,tag=locked] run function mc_edit_dranox5:replace/r2"}}
tellraw @s {"text": "Replace Air","color":"aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=replace1,tag=is_holding,tag=locked] run function mc_edit_dranox5:replace/r1_air"}}
tellraw @s {"text": "Cancel","color":"red","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=replace,tag=is_holding] run function mc_edit_dranox5:replace/cancel"}}

gamerule sendCommandFeedback false