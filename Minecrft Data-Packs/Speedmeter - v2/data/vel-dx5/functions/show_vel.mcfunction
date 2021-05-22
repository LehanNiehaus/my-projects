##
 # show_vel.mcfunction
 # 
 #
 # Created by Dranox5.
##

execute if score @s vel-gui matches 7.. run scoreboard players set @s vel-gui 1
execute unless score @s vel-gui matches -2147483648..2147483647 run scoreboard players set @s vel-gui 1

#0 dec m/s
execute if score @s vel-gui matches 1 run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-d0","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" m/s","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
#1 dec m/s
execute if score @s vel-gui matches 2 run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":",","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-d1","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" m/s","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
#2 dec m/s   FIX
execute if score @s vel-gui matches 3 if score #vel-d2 vel matches 0..9 run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":",0","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-d2","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" m/s","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
execute if score @s vel-gui matches 3 if score #vel-d2 vel matches 10.. run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":",","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-d2","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" m/s","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
#3 dec m/s
execute if score @s vel-gui matches 4 if score #vel-d3 vel matches 0..9 run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":",00","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-d3","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" m/s","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
execute if score @s vel-gui matches 4 if score #vel-d3 vel matches 10..99 run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":",0","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-d3","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" m/s","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
execute if score @s vel-gui matches 4 if score #vel-d3 vel matches 100.. run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":",","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-d3","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" m/s","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
#x dec km/h
execute if score @s vel-gui matches 5 run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-k","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":",","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"#vel-kd","objective":"vel"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" km/h","hoverEvent":{"action":"show_text","contents":"Click to change."}}]
#dist  mm/tick
execute if score @s vel-gui matches 6 run title @s actionbar ["",{"text":"Speed: ","hoverEvent":{"action":"show_text","contents":"Click to change."}},{"score":{"name":"@s","objective":"dist"},"hoverEvent":{"action":"show_text","contents":"Click to change."}},{"text":" mm/tick","hoverEvent":{"action":"show_text","contents":"Click to change."}}]