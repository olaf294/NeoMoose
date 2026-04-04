
execute if items block ~ ~-1 ~ container.15 leather run execute as @e[type=!player,tag=!PLOT,tag=!SPAWN,distance=..2500] as @a[distance=..2500] if score @s currentplot = @s id run title @s actionbar "sorry, but teleporting entities is currently not suppported! you can still teleport players though!"
$execute if items block ~ ~-1 ~ container.15 leather run execute as @a[tag=!PLOT,tag=!SPAWN,distance=..2500] at @s run tp @s $(input)
$execute if items block ~ ~-1 ~ container.15 name_tag run execute as @e[type=!player,tag=!PLOT,tag=!SPAWN,distance=..2500,tag=plottag_$(selector_input)] as @a[distance=..2500] if score @s currentplot = @s id run title @s actionbar "sorry, but teleporting entities is currently not suppported! you can still teleport players though!"
$execute if items block ~ ~-1 ~ container.15 name_tag run execute as @a[tag=!PLOT,tag=!SPAWN,distance=..2500,tag=plottag_$(selector_input))] run tp @s $(input)
$execute if items block ~ ~-1 ~ container.15 gold_ingot run execute as @a[distance=..2500] if score @s currentplot = @s id at @s run tp @s $(input)
$execute if items block ~ ~-1 ~ container.15 nautilus_shell run execute as @p[distance=..2500] at @s run tp @s $(input)
$execute if items block ~ ~-1 ~ container.15 emerald run execute as @a[distance=..2500] at @s run tp @s $(input)
$execute if items block ~ ~-1 ~ container.15 bone_meal positioned ~ ~1 ~ run execute as @a[distance=..0.6] at @s run tp @s $(input)
$execute if items block ~ ~-1 ~ container.15 bone positioned ~ ~2 ~ run execute as @a[distance=..0.6] at @s run tp @s $(input)
$execute if items block ~ ~-1 ~ container.15 red_stained_glass_pane positioned ~ ~1 ~ run execute as @a[distance=..0.6] at @s run tp @s $(input)
