execute if score @s ShowSpeed matches 1 run title @s actionbar [{"text": "Speed: ","color":"red"},{"color":"red","score":{"name":"@s","objective":"Speed1"}},{"text": " m/s","color":"red"}]
execute if score @s ShowSpeed matches 2 run title @s actionbar [{"text": "Speed: ","color":"red"},{"color":"red","score":{"name":"@s","objective":"Speed2"}},{"text": ",","color":"red"},{"color":"red","score":{"name":"@s","objective":"Speed2dec"}},{"text": " m/s","color":"red"}]
execute if score @s ShowSpeed matches 3 run title @s actionbar [{"text": "Speed: ","color":"red"},{"color":"red","score":{"name":"@s","objective":"Speed3"}},{"text": ",","color":"red"},{"color":"red","score":{"name":"@s","objective":"Speed3dec"}},{"text": " m/s","color":"red"}]