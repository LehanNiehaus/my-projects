##
 # replace.mcfunction
 # 
 #
 # Created by .
##

setblock 2 1 0 air

tag @s add random_replace

tellraw @s [{"text": "Select block to replace","color": "aqua","clickEvent": {"action": "suggest_command","value": "/setblock 2 1 0 minecraft:"}}]

tellraw @s [{"text": "Use previous block","color": "aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=random_replace, tag=is_holding] run function mc_edit_dranox5:random/replace_start"}}]

tellraw @s [{"text": "replace air","color": "aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=random_replace, tag=is_holding] run function mc_edit_dranox5:random/replace_air"}}]

tellraw @s {"text": "Cancel","color": "red","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=random_replace, tag=is_holding] run function mc_edit_dranox5:random/cancel"}}

