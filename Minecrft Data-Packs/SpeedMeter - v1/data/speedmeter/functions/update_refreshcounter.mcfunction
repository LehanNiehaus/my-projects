execute unless score @s refreshRate matches 1.. run scoreboard players set @s refreshRate 1
scoreboard players add @s refreshCount 1
execute if score @s refreshCount = @s refreshRate run function speedmeter:show_speedmeter
execute if score @s refreshCount >= @s refreshRate run scoreboard players set @s refreshCount 0