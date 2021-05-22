tellraw @p ["",{"text":"Copy","underlined":true,"color":"aqua","clickEvent":{"action":"run_command","value":"/function clone:save_box"}},{"text":"      "},{"text":"Paste","underlined":true,"color":"green","clickEvent":{"action":"run_command","value":"/function clone:paste"}},{"text":"    "},{"text":"Stack","underlined":true,"color":"red","clickEvent":{"action":"run_command","value":"/execute if entity @s[tag=disp] run function clone:stack"}},{"text":"    "},{"text":"Delete Box","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"/function clone:del_dispbox"}},{"text":"    "},{"text":"Settings","underlined":true,"color":"dark_green","clickEvent":{"action":"run_command","value":"/function clone:disp_set"}}]


# stack    copy    paste
# .
# settings:
# mirror: on/off    stack spacing: x    lock paste rotation: on/off   clone air: on/off