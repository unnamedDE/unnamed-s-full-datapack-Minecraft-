advancement revoke @s only unmd:horsebones/detection_ritual_2
execute if entity @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:saddle",tag:{ench: [{Lvl: 1, Id: 70}], HideFlags: 1, display: {Lore: ["A saddle twisted by the power of the Nether.", "It yearns for greater heights. (I of IV)"], Name: "{\"text\":\"Distorted Saddle\",\"italic\":false}"}}}]}] run tag @s add horsebones_ritual_2
execute at @s[tag=horsebones_ritual_2] run function unmd:horsebones/particle_upgrade_saddle
replaceitem entity @s[tag=horsebones_ritual_2] weapon.offhand minecraft:saddle{display:{Name:"{\"text\":\"Ascended Saddle\",\"italic\":false}",Lore:["A shining saddle elevated to the top of the world.","It is heavy, like the depths pull at it. (II of IV)"]},ench:[{Id:70,Lvl:1}],HideFlags:1}
tellraw @s[tag=horsebones_ritual_2] ["",{"text":"With a dizzying shimmer the "},{"text":"Distorted Saddle","color":"aqua"},{"text":" becomes an "},{"text":"Ascended Saddle","color":"aqua"}]
advancement grant @s[tag=horsebones_ritual_2] only unmd:horsebones/ritual_2
tag @s remove horsebones_ritual_2