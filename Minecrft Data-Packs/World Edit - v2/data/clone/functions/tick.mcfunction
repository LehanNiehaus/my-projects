execute as @a[tag=!isholding, tag=2Pos, nbt={SelectedItem:{tag:{Tag:"Clone"}}}] run function clone:disp_menu
execute as @a[tag=!isholding, tag=2Pos, nbt={SelectedItem:{tag:{Tag:"Clone"}}}] run tag @s add isholding
execute as @a[tag=isholding, nbt=!{SelectedItem:{tag:{Tag:"Clone"}}}] run tag @s remove isholding

scoreboard players enable @a Stack_offset
scoreboard players enable @a Stack_count

execute as @a run function clone:detect-rc
scoreboard players set @a[tag=rc] ray_maxDistance 20
execute as @a[tag=rc] at @s run function clone:get_fpos
execute as @a[tag=rc, tag=ray_hit, tag=!1Pos, tag=disp] run function clone:del_dispbox
execute as @a[tag=rc, tag=ray_hit, tag=!1Pos] run function clone:set_1pos
execute as @a[tag=rc, tag=ray_hit, tag=1Pos] run function clone:set_2pos
execute as @a[tag=rc, tag=ray_hit, tag=1Pos] run function clone:disp_menu
execute as @a[tag=rc, tag=2Pos] run function clone:get_size
execute as @a[tag=rc, tag=2Pos] run function clone:get_bpos
execute as @a[tag=rc, tag=2Pos] at @s run function clone:disp_box
#menu
 #stack
 #clone
 #brush?
#save
#paste
#
#
#



tag @a remove rc

#display box