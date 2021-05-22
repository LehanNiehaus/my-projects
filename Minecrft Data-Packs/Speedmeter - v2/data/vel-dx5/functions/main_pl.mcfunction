##
 # main_pl.mcfunction
 # 
 #
 # Created by Dranox5.
##

#move old c-pos to p-pos
scoreboard players operation @s px = @s cx
scoreboard players operation @s py = @s cy
scoreboard players operation @s pz = @s cz

#get new c-pos
function vel-dx5:get-g-pos
scoreboard players operation @s cx = x gPos
scoreboard players operation @s cy = y gPos
scoreboard players operation @s cz = z gPos
summon area_effect_cloud ~ ~ ~ {Tags:[vel-pos],Radius:0}

#goto p-pos
summon area_effect_cloud ~ ~ ~ {Tags:[vel],Radius:0}
scoreboard players operation x gPos = @s px
scoreboard players operation y gPos = @s py
scoreboard players operation z gPos = @s pz
execute as @e[type=area_effect_cloud,tag=vel] run function vel-dx5:goto-g-pos

#find dist between positions
execute at @e[type=area_effect_cloud,tag=vel,limit=1] facing entity @e[type=area_effect_cloud,tag=vel-pos,limit=1] feet run function vel-dx5:start-step
kill @e[type=area_effect_cloud,tag=vel]
kill @e[type=area_effect_cloud,tag=vel-pos]

#calculate velocity
function vel-dx5:calc-vel


function vel-dx5:show_vel

#scoreboard players operation @s vel = #vel-d vel


#scoreboard players operation #vel dist = @s dist
#scoreboard players operation #vel dist *= #20 dist
#scoreboard players operation #vel dist /= #100 dist
#scoreboard players operation @s vel = #vel dist
