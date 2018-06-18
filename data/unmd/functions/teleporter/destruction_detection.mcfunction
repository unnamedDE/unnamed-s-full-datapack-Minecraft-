
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~ ~ ~ minecraft:redstone_lamp[lit=true] run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~1 ~ ~ #unmd:concrete run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~-1 ~ ~ #unmd:concrete run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~ ~ ~1 #unmd:concrete run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~ ~ ~-1 #unmd:concrete run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~1 ~ ~1 minecraft:iron_block run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~-1 ~ ~1 minecraft:iron_block run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~1 ~ ~-1 minecraft:iron_block run tag @s add teleporter_destruction_init
execute as @e[type=armor_stand,tag=teleporter_main] at @s unless block ~-1 ~ ~-1 minecraft:iron_block run tag @s add teleporter_destruction_init

execute as @e[type=armor_stand,tag=teleporter_main,tag=teleporter_destruction_init] run function unmd:teleporter/destruction

