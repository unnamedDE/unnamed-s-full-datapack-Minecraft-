advancement revoke @s only unmd:horsebones/detection_ritual_1
execute if entity @s[nbt={SelectedItem:{id:"minecraft:bone_block"},Inventory:[{Slot:-106b,id:"minecraft:saddle"},{Slot:103b,id:"minecraft:carved_pumpkin"}]}] run tag @s add horsebones_ritual_1
execute at @s[tag=horsebones_ritual_1] run function unmd:horsebones/particle_upgrade_saddle
execute as @s[tag=horsebones_ritual_1] run replaceitem entity @s weapon.mainhand minecraft:air
execute as @s[tag=horsebones_ritual_1] run replaceitem entity @s armor.head minecraft:air
execute as @s[tag=horsebones_ritual_1] run replaceitem entity @s weapon.offhand minecraft:saddle{display:{Name:"{\"text\":\"Distorted Saddle\",\"italic\":false}",Lore:["A saddle twisted by the power of the Nether.","It yearns for greater heights. (I of IV)"]},ench:[{Id:70,Lvl:1}],HideFlags:1}
tellraw @s[tag=horsebones_ritual_1] ["",{"text":"The pumpkin and bone block vanish, and the saddle becomes a "},{"text":"Distorted Saddle","color":"aqua"}]
advancement grant @s[tag=horsebones_ritual_1] only unmd:horsebones/ritual_1
execute as @s[tag=horsebones_ritual_1] run tag @s remove horsebones_ritual_1