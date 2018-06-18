
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_destruction_init] at @s if block ~ ~ ~ minecraft:redstone_lamp[lit=true] run setblock ~ ~ ~ minecraft:redstone_lamp[lit=false]
execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_destruction_init] at @s if block ~ ~5 ~ minecraft:redstone_lamp[lit=true] run setblock ~ ~5 ~ minecraft:redstone_lamp[lit=false]

execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_destruction_init] run kill @s