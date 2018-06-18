execute if entity @e[type=minecraft:stray,tag=horsebones_horseman_main] run bossbar set unmd:horsebones/horseman visible true 
execute if entity @e[type=minecraft:stray,tag=horsebones_horseman_main] run bossbar set unmd:horsebones/horseman players @a
execute unless entity @e[type=minecraft:stray,tag=horsebones_horseman_main] run bossbar set unmd:horsebones/horseman visible false 
execute as @e[type=minecraft:stray,tag=horsebones_horseman_main] store result bossbar unmd:horsebones/horseman value run data get entity @e[type=minecraft:stray,tag=horsebones_horseman_main,limit=1] Health 1