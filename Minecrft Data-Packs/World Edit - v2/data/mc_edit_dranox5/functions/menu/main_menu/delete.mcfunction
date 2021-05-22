##
 # delete.mcfunction
 # 
 #
 # Created by .
##
tag @s add busy

clone 0 1 0 0 1 0 2 1 2
setblock 0 1 0 air

function mc_edit_dranox5:fill/start

say done
clone 2 1 2 2 1 2 0 1 0
