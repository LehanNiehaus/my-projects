##
 # r2.mcfunction
 # 
 #
 # Created by .
##

tag @s remove replace1
tag @s add replace2
setblock 2 1 0 air

tellraw @s {"text": " "}
tellraw @s [{"text": "Click to sellect block to place:","color":"aqua","clickEvent": {"action": "suggest_command","value": "/setblock 2 1 0 minecraft:"}}]
tellraw @s {"text": "Use previous block","color":"aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=replace2,tag=is_holding,tag=locked] run function mc_edit_dranox5:replace/start "}}
tellraw @s {"text": "Place Air","color":"aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=replace2,tag=is_holding,tag=locked] run function mc_edit_dranox5:replace/r2_air"}}
tellraw @s {"text": "Cancel","color":"red","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=replace,tag=is_holding] run function mc_edit_dranox5:replace/cancel"}}

