
#Basic
execute as @a[tag=teleporter_tp_ready,scores={tp_time=100}] run scoreboard players set @s tp_time 0
execute as @a[tag=teleporter_tp_ready] run tag @s remove teleporter_tp_ready
execute as @a[scores={tp_time=1..}] at @s positioned ~ ~-1 ~ unless entity @e[tag=teleporter_main,distance=..1] run scoreboard players set @s tp_time 0
#scoreboard players set @a tp_sneaking 0
execute at @e[type=armor_stand,tag=teleporter_main,tag=!on_teleporter] positioned ~ ~1 ~ as @a[distance=..1] run tag @s add on_teleporter
execute as @a[tag=on_teleporter] at @s positioned ~ ~-1 ~ unless entity @e[type=minecraft:armor_stand,tag=teleporter_main,distance=..1] run tag @s remove on_teleporter
execute as @a[tag=on_teleporter,scores={tp_time=..99}] run scoreboard players add @s tp_time 1
execute as @a[tag=!teleporter_tp_ready,scores={tp_time=100}] run tag @s add teleporter_tp_ready
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ if entity @a[distance=..1,scores={tp_time=1}] run particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0 250
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ if entity @a[distance=..1,scores={tp_time=50}] run particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 0.5 500
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ if entity @a[distance=..1,scores={tp_time=100}] run particle minecraft:portal ~ ~0.5 ~ 0.25 0.5 0.25 1 750
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[distance=..1,scores={tp_time=96}] at @s run playsound minecraft:entity.endermen.teleport block @a[distance=..20] ~ ~ ~ 1 1
#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[distance=..1,tag=teleporter_tp_ready] run playsound minecraft:entity.endermen.teleport block @s ~ ~ ~ 1 1
#execute at @e[type=minecraft:armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,distance=..1,x_rotation=90] run tag @s add teleport_to_worldspawn
#execute at @e[type=minecraft:armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,distance=..1,x_rotation=-90] run tag @s add teleport_to_worldspawn
#tag @a[tag=teleport_to_worldspawn,x_rotation=-89.9..89.9] remove teleport_to_worldspawn

#SENDING

#NORTH

#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:white_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_white] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:orange_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_orange] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:magenta_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_magenta] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:light_blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_blue] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:yellow_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_yellow] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:lime_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_lime] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:pink_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_pink] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_gray] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:light_gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_gray] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:cyan_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_cyan] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:purple_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_purple] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_blue] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:brown_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_brown] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:green_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_green] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:red_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_red] run tp @s ~ ~1 ~ 180 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=135..] as @s[y_rotation=..-134.9] at @s if block ~ ~-1 ~-1 minecraft:black_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_black] run tp @s ~ ~1 ~ 180 0

#EAST

#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:white_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_white] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:orange_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_orange] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:magenta_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_magenta] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:light_blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_blue] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:yellow_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_yellow] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:lime_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_lime] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:pink_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_pink] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_gray] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:light_gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_gray] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:cyan_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_cyan] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:purple_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_purple] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_blue] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:brown_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_brown] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:green_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_green] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:red_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_red] run tp @s ~ ~1 ~ 270 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-135..-44.9] at @s if block ~1 ~-1 ~ minecraft:black_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_black] run tp @s ~ ~1 ~ 270 0

#SOUTH

#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:white_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_white] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:orange_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_orange] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:magenta_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_magenta] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:light_blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_blue] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:yellow_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_yellow] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:lime_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_lime] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:pink_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_pink] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_gray] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:light_gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_gray] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:cyan_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_cyan] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:purple_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_purple] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_blue] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:brown_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_brown] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:green_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_green] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:red_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_red] run tp @s ~ ~1 ~ 0 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=-50..44.9] at @s if block ~ ~-1 ~1 minecraft:black_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_black] run tp @s ~ ~1 ~ 0 0

#WEST

#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:white_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_white] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:orange_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_orange] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:magenta_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_magenta] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:light_blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_blue] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:yellow_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_yellow] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:lime_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_lime] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:pink_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_pink] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_gray] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:light_gray_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_light_gray] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:cyan_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_cyan] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:purple_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_purple] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:blue_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_blue] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:brown_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_brown] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:green_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_green] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:red_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_red] run tp @s ~ ~1 ~ 90 0
execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=!teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1,y_rotation=45..134.9] at @s if block ~-1 ~-1 ~ minecraft:black_concrete at @e[type=armor_stand,limit=1,distance=2.5..,tag=teleporter_black] run tp @s ~ ~1 ~ 90 0

#WORLDSPAWN

#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=teleport_to_worldspawn,tag=teleporter_tp_ready,distance=..1] at @e[type=armor_stand,limit=1,tag=teleporter_worldspawn] run tp @s ~ ~ ~ 0 90
#execute at @e[type=minecraft:armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=teleporter_tp_ready,distance=..1,x_rotation=90] at @e[type=armor_stand,limit=1,tag=teleporter_worldspawn] run tp @s ~ ~ ~ 0 90
#execute at @e[type=minecraft:armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=teleporter_tp_ready,distance=..1,x_rotation=-90] at @e[type=armor_stand,limit=1,tag=teleporter_worldspawn] run tp @s ~ ~ ~ 0 -90
execute at @e[type=minecraft:armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=teleporter_tp_ready,distance=..1,x_rotation=90] run tp @s 231 76 213 0 90
execute at @e[type=minecraft:armor_stand,tag=teleporter_main] positioned ~ ~1 ~ as @a[tag=teleporter_tp_ready,distance=..1,x_rotation=-90] run tp @s 231 76 213 0 -90
#RECIEVING

execute as @e[type=armor_stand,tag=teleporter_main,tag=!teleporter_receiver] at @s if block ~ ~4 ~ #unmd:stained_glass if block ~ ~5 ~ minecraft:redstone_lamp[lit=true] if block ~1 ~5 ~ minecraft:iron_block if block ~-1 ~5 ~ minecraft:iron_block if block ~ ~5 ~1 minecraft:iron_block if block ~ ~5 ~-1 minecraft:iron_block run tag @s add teleporter_receiver
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s unless block ~ ~4 ~ #unmd:stained_glass run tag @s remove teleporter_receiver
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s unless block ~ ~5 ~ minecraft:redstone_lamp[lit=true] unless block ~1 ~5 ~ minecraft:iron_block unless block ~-1 ~5 ~ minecraft:iron_block unless block ~ ~5 ~1 minecraft:iron_block unless block ~ ~5 ~-1 minecraft:iron_block run tag @s remove teleporter_receiver
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s unless block ~1 ~5 ~ minecraft:iron_block unless block ~-1 ~5 ~ minecraft:iron_block unless block ~ ~5 ~1 minecraft:iron_block unless block ~ ~5 ~-1 minecraft:iron_block run tag @s remove teleporter_receiver
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s unless block ~-1 ~5 ~ minecraft:iron_block unless block ~ ~5 ~1 minecraft:iron_block unless block ~ ~5 ~-1 minecraft:iron_block run tag @s remove teleporter_receiver
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s unless block ~ ~5 ~1 minecraft:iron_block unless block ~ ~5 ~-1 minecraft:iron_block run tag @s remove teleporter_receiver
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s unless block ~ ~5 ~-1 minecraft:iron_block run tag @s remove teleporter_receiver

#ADD

#execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:white_stained_glass run tag @s add teleporter_white
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:orange_stained_glass run tag @s add teleporter_orange
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:magenta_stained_glass run tag @s add teleporter_magenta
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:light_blue_stained_glass run tag @s add teleporter_light_blue
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:yellow_stained_glass run tag @s add teleporter_yellow
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:lime_stained_glass run tag @s add teleporter_lime
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:pink_stained_glass run tag @s add teleporter_pink
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:gray_stained_glass run tag @s add teleporter_gray
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:light_gray_stained_glass run tag @s add teleporter_light_gray
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:cyan_stained_glass run tag @s add teleporter_cyan
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:purple_stained_glass run tag @s add teleporter_purple
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:blue_stained_glass run tag @s add teleporter_blue
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:brown_stained_glass run tag @s add teleporter_brown
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:green_stained_glass run tag @s add teleporter_green
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:red_stained_glass run tag @s add teleporter_red
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_receiver] at @s if block ~ ~4 ~ minecraft:black_stained_glass run tag @s add teleporter_black

#REMOVE

#execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_white] at @s unless block ~ ~4 ~ minecraft:white_stained_glass run tag @s remove teleporter_white
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_orange] at @s unless block ~ ~4 ~ minecraft:orange_stained_glass run tag @s remove teleporter_orange
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_magenta] at @s unless block ~ ~4 ~ minecraft:magenta_stained_glass run tag @s remove teleporter_magenta
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_light_blue] at @s unless block ~ ~4 ~ minecraft:light_blue_stained_glass run tag @s remove teleporter_light_blue
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_yellow] at @s unless block ~ ~4 ~ minecraft:yellow_stained_glass run tag @s remove teleporter_yellow
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_lime] at @s unless block ~ ~4 ~ minecraft:lime_stained_glass run tag @s remove teleporter_lime
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_pink] at @s unless block ~ ~4 ~ minecraft:pink_stained_glass run tag @s remove teleporter_pink
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_gray] at @s unless block ~ ~4 ~ minecraft:gray_stained_glass run tag @s remove teleporter_gray
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_light_gray] at @s unless block ~ ~4 ~ minecraft:light_gray_stained_glass run tag @s remove teleporter_light_gray
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_cyan] at @s unless block ~ ~4 ~ minecraft:cyan_stained_glass run tag @s remove teleporter_cyan
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_purple] at @s unless block ~ ~4 ~ minecraft:purple_stained_glass run tag @s remove teleporter_purple
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_blue] at @s unless block ~ ~4 ~ minecraft:blue_stained_glass run tag @s remove teleporter_blue
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_brown] at @s unless block ~ ~4 ~ minecraft:brown_stained_glass run tag @s remove teleporter_brown
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_green] at @s unless block ~ ~4 ~ minecraft:green_stained_glass run tag @s remove teleporter_green
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_red] at @s unless block ~ ~4 ~ minecraft:red_stained_glass run tag @s remove teleporter_red
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_black] at @s unless block ~ ~4 ~ minecraft:black_stained_glass run tag @s remove teleporter_black
