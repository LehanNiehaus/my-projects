##
 # reset.mcfunction
 # MC Edit
 #
 # Created by Dranox5
##
tellraw @a[gamemode=creative] [{"text": "Loaded "},{"text": "WorldEdit v0.8","color":"blue","hoverEvent": {"action": "show_text","contents":[{"text": "Click to get the tool."}]},"clickEvent": {"action": "run_command","value": "/function mc_edit_dranox5:give"}},{"text": " by: "},{"text": "Dranox5","color":"red","hoverEvent": {"action": "show_text","contents":[{"text": "Goto YT Channel"}]},"clickEvent": {"action": "open_url","value": "https://www.youtube.com/channel/UCQl85h6YBCJBBfDakKny3PQ"}}]

forceload add 0 0
function mc_edit_dranox5:triggers/triggers_reset

#Right click detection
scoreboard objectives add rc_c-o-s used:carrot_on_a_stick

#ray caster
scoreboard objectives add ray_dist dummy
scoreboard objectives add ray_dist_max dummy
scoreboard objectives add ray_PosX dummy
scoreboard objectives add ray_PosY dummy
scoreboard objectives add ray_PosZ dummy

#temporary pos variable
scoreboard objectives add PosX dummy
scoreboard objectives add PosY dummy
scoreboard objectives add PosZ dummy

scoreboard objectives add gPos dummy


#Position stuff
scoreboard objectives add 1PosX dummy
scoreboard objectives add 1PosY dummy
scoreboard objectives add 1PosZ dummy

scoreboard objectives add 2PosX dummy
scoreboard objectives add 2PosY dummy
scoreboard objectives add 2PosZ dummy

scoreboard objectives add bsize_x dummy
scoreboard objectives add bsize_y dummy
scoreboard objectives add bsize_z dummy

scoreboard objectives add bmin_x dummy
scoreboard objectives add bmin_y dummy
scoreboard objectives add bmin_z dummy

scoreboard objectives add bmax_x dummy
scoreboard objectives add bmax_y dummy
scoreboard objectives add bmax_z dummy

scoreboard objectives add bm_x dummy
scoreboard objectives add bm_y dummy
scoreboard objectives add bm_z dummy

scoreboard objectives add bsize dummy

scoreboard objectives add cpy_offPosX dummy
scoreboard objectives add cpy_offPosY dummy
scoreboard objectives add cpy_offPosZ dummy
scoreboard objectives add cpy_size_x dummy
scoreboard objectives add cpy_size_y dummy
scoreboard objectives add cpy_size_z dummy


scoreboard objectives add ran1_x dummy
scoreboard objectives add ran1_y dummy
scoreboard objectives add ran1_z dummy
scoreboard objectives add ran2_x dummy
scoreboard objectives add ran2_y dummy
scoreboard objectives add ran2_z dummy



#blingedit compatibility (experimental)
scoreboard objectives add box_xmin dummy
scoreboard objectives add box_ymin dummy
scoreboard objectives add box_zmin dummy
scoreboard objectives add box_xmax dummy
scoreboard objectives add box_ymax dummy
scoreboard objectives add box_zmax dummy
scoreboard objectives add box_center_x dummy
scoreboard objectives add box_center_y dummy
scoreboard objectives add box_center_z dummy
scoreboard objectives add disp_plugins dummy
scoreboard objectives add plugin_can_run dummy



#Stuff
bossbar add progress {"text": "Progress","color":"green"}
bossbar set progress color red
scoreboard objectives add progress dummy
scoreboard objectives add progress_count dummy


#constants
scoreboard objectives add constant dummy
scoreboard players set #-1 constant -1
scoreboard players set #10 constant 10
scoreboard players set #100 constant 100
scoreboard players set #2 constant 2
scoreboard players set #360 constant 360
scoreboard players set #48 constant 48

