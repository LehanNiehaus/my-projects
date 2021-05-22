##
 # offhand-swap.mcfunction
 # 
 #
 # Created by Dranox5.
##
#Swap offhand and mainhand items

tag @s add mcef

setblock 0 0 0 shulker_box

data modify storage mcedx5 f-detect.off-main set from entity @s Inventory[{Slot:-106b}]
data modify storage mcedx5 f-detect.main-off set from entity @s SelectedItem

data modify storage mcedx5 f-detect.off-main.Slot set value 0b
data modify storage mcedx5 f-detect.main-off.Slot set value 0b

data modify block 0 0 0 Items[{Slot:0b}] set from storage mcedx5 f-detect.off-main
loot replace entity @s weapon.mainhand 1 mine 0 0 0 diamond_pickaxe{drop_contents:true}

data modify block 0 0 0 Items[{Slot:0b}] set from storage mcedx5 f-detect.main-off
loot replace entity @s weapon.offhand 1 mine 0 0 0 diamond_pickaxe{drop_contents:true}

data remove storage mcedx5 f-detect
setblock 0 0 0 bedrock