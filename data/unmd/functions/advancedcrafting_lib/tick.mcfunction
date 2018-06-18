function unmd:advancedcrafting_lib/detect
execute as @e[type=armor_stand,tag=advancedcrafting_main] at @s unless block ~ ~ ~ minecraft:dropper run function unmd:advancedcrafting_lib/destroy
execute at @e[type=armor_stand,tag=advancedcrafting_main] run function unmd:advancedcrafting_lib/recipes/example
