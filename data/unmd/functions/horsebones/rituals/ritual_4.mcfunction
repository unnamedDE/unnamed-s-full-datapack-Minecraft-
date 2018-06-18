advancement revoke @s only unmd:horsebones/detection_ritual_4
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:saddle",tag:{ench: [{Lvl: 1, Id: 70}], HideFlags: 1, display: {Lore: ["A mystical saddle corrupted by the influence of the void.", "It thirsts for arcane power. (III of IV)"], Name: "{\"text\":\"Fallen Saddle\",\"italic\":false}"}}}]}] run tag @s add horsebones_ritual_4
execute at @s[tag=horsebones_ritual_4] run function unmd:horsebones/particle_upgrade_saddle
replaceitem entity @s[tag=horsebones_ritual_4] weapon.offhand minecraft:saddle{display:{Name:"{\"text\":\"Imbued Saddle\",\"italic\":false}",Lore:["A powerful saddle bursting with arcane energy.","Putting this on a horse could kill it... (IV of IV)"]},ench:[{Id:70,Lvl:1}],HideFlags:1}
tellraw @s[tag=horsebones_ritual_4] ["",{"text":"With a surge of arcane energy the "},{"text":"Fallen Saddle","color":"aqua"},{"text":" becomes an "},{"text":"Imbuid Saddle","color":"aqua"}]
advancement grant @s[tag=horsebones_ritual_4] only unmd:horsebones/ritual_4
tag @s remove horsebones_ritual_4
#advancement revoke @s only unmd:horsebones/detection_ritual_4
#execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:saddle",tag:{ench: [{Lvl: 1, Id: 70}], HideFlags: 1, display: {Lore: ["A mystical saddle corrupted by the influence of the void.", "It thirsts for arcane power. (III of IV)."], Name: "{\"text\":\"Fallen Saddle\"}"}}}]}] run tag @s add horsebones_ritual_4
#replaceitem entity @s[tag=horsebones_ritual_4] weapon.offhand minecraft:saddle{display:{Name:"{\"text\":\"Imbued Saddle\"}",Lore:["A powerful saddle bursting with arcane energy.","Putting this on a horse could kill it... (IV of IV)"]},ench:[{Id:70,Lvl:1}],HideFlags:1}
#tellraw @s[tag=horsebones_ritual_4] ["",{"text":"With a surge of arcane energy the "},{"text":"Fallen Saddle","color":"aqua"},{"text":" becomes an "},{"text":"Imbued Saddle","color":"aqua"}]
#advancement grant @s[tag=horsebones_ritual_4] only unmd:horsebones/ritual_4
#tag @s remove horsebones_ritual_4