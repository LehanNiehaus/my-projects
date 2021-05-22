##
 # random.mcfunction
 # 
 #
 # Created by .
##


tag @s add busy
tag @s add random

tellraw @s [{"text": "Set selected area as random block pool","color": "aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s run function mc_edit_dranox5:random/set_pool"}}]

tellraw @s [{"text": "Fill with random","color": "aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=is_holding,tag=random] run function mc_edit_dranox5:random/fill"}}]

tellraw @s [{"text": "Replace with random","color": "aqua","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=is_holding,tag=random] run function mc_edit_dranox5:random/replace"}}]

tellraw @s [{"text": "Cancel","color": "red","clickEvent": {"action": "run_command","value": "/execute if entity @s[tag=is_holding,tag=random] run function mc_edit_dranox5:random/cancel"}}]

