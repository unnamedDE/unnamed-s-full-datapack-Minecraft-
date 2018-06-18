execute as @a[tag=!on_speed_path] at @s if block ~ ~-.5 ~ minecraft:grass_path run tag @s add on_speed_path
effect give @a[tag=on_speed_path] minecraft:speed 1 2 true
execute as @a[tag=on_speed_path] at @s unless block ~ ~-.5 ~ minecraft:grass_path run effect clear @s minecraft:speed 
execute as @a[tag=on_speed_path] at @s unless block ~ ~-.5 ~ minecraft:grass_path run tag @s remove on_speed_path