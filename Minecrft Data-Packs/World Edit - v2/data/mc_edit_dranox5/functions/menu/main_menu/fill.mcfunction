##
 # fill.mcfunction
 # 
 #
 # Created by .
##

setblock 2 1 0 air
tag @s add busy
tag @s add fill

tellraw @s {"text": " "}
tellraw @s [{"text": "Click to sellect block to fill:","color":"aqua","clickEvent": {"action": "suggest_command","value": "/execute if entity @s[tag=fill,tag=is_holding,tag=locked] run setblock 2 1 0 minecraft:"}}]
tellraw @s {"text": "Use previous block","color":"aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=fill,tag=is_holding,tag=locked] run function mc_edit_dranox5:fill/start "}}
tellraw @s {"text": "Cancel","color":"red","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=fill,tag=is_holding] run function mc_edit_dranox5:fill/cancel"}}

gamerule sendCommandFeedback false
