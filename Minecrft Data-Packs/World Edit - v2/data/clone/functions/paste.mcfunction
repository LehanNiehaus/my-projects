function bsc:read
scoreboard players operation block bsc1 = block bsc

setblock ~ ~ ~ structure_block{mode:"LOAD",name:"clone:clonemarker"}

execute if entity @s[tag=!ignore_rotation] run function clone:get_dir
execute if entity @s[tag=!ignore_rotation, tag=faced_px] run function clone:paste/px
execute if entity @s[tag=!ignore_rotation, tag=faced_pz] run function clone:paste/pz
execute if entity @s[tag=!ignore_rotation, tag=faced_nx] run function clone:paste/nx
execute if entity @s[tag=!ignore_rotation, tag=faced_nz] run function clone:paste/nz

execute if entity @s[tag=ignore_rotation] run function clone:paste/0

execute if entity @s[tag=mirror] run function clone:paste/mirror
execute if entity @s[tag=ignore_entity] run data merge block ~ ~ ~ {ignoreEntities:1b}

execute positioned ~ ~1 ~ run function bsc:read
setblock ~ ~1 ~ redstone_block
execute positioned ~ ~1 ~ run function bsc:setblock

scoreboard players operation block bsc = block bsc1
function bsc:setblock