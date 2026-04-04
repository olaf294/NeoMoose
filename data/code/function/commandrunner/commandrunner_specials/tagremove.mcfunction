$scoreboard players set $tag_testfor var $(input)
execute unless score $tag_testfor var matches 1..99 run return fail

$execute if items block ~ ~-1 ~ container.15 leather run execute as @e[tag=!PLOT,tag=!SPAWN,distance=..2500] at @s run tag @s remove plottag_$(input)
$execute if items block ~ ~-1 ~ container.15 name_tag run execute as @e[tag=!PLOT,tag=!SPAWN,distance=..2500,tag=plottag_$(selector_input)] run tag @s remove plottag_$(input)
$execute if items block ~ ~-1 ~ container.15 gold_ingot run execute as @a[distance=..2500] if score @s currentplot = @s id at @s run tag @s remove plottag_$(input)
$execute if items block ~ ~-1 ~ container.15 nautilus_shell run execute as @p[distance=..2500] at @s run tag @s remove plottag_$(input)
$execute if items block ~ ~-1 ~ container.15 emerald run execute as @a[distance=..2500] at @s run tag @s remove plottag_$(input)
$execute if items block ~ ~-1 ~ container.15 bone_meal positioned ~ ~1 ~ run execute as @a[distance=..0.6] at @s run tag @s remove plottag_$(input)
$execute if items block ~ ~-1 ~ container.15 bone positioned ~ ~2 ~ run execute as @a[distance=..0.6] at @s run tag @s remove plottag_$(input)
$execute if items block ~ ~-1 ~ container.15 red_stained_glass_pane positioned ~ ~1 ~ run execute as @a[distance=..0.6] at @s run tag @s remove plottag_$(input)