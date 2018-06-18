advancement revoke @s only unmd:horsebones/detection_ritual_3
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:saddle",tag:{display:{Name:"{\"text\":\"Ascended Saddle\",\"italic\":false}",Lore:["A shining saddle elevated to the top of the world.","It is heavy, like the depths pull at it. (II of IV)"]},ench:[{Id:70,Lvl:1}]}}]}] run tag @s add horsebones_ritual_3
execute at @s[tag=horsebones_ritual_3] run function unmd:horsebones/particle_upgrade_saddle
replaceitem entity @s[tag=horsebones_ritual_3] weapon.offhand minecraft:saddle{display:{Name:"{\"text\":\"Fallen Saddle\",\"italic\":false}",Lore:["A mystical saddle corrupted by the influence of the void.","It thirsts for arcane power. (III of IV)"]},ench:[{Id:70,Lvl:1}],HideFlags:1}
tellraw @s[tag=horsebones_ritual_3] ["",{"text":"The air chills as the "},{"text":"Ascended Saddle","color":"aqua"},{"text":" becomes a "},{"text":"Fallen Saddle","color":"aqua"}]
advancement grant @s[tag=horsebones_ritual_3] only unmd:horsebones/ritual_3
tag @s remove horsebones_ritual_3