tag @a[tag=unmd_travel_jetpack] remove unmd_travel_jetpack
tag @a[tag=unmd_travel_jetboots] remove unmd_travel_jetboots
tag @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{display:{Name:"{\"text\":\"Jetboots\",\"italic\":\"false\"}"},HideFlags:127}}]}] add unmd_travel_jetboots
tag @a[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate",tag:{display:{Name:"{\"text\":\"Jetpack\",\"italic\":\"false\"}"},HideFlags:127}}]}] add unmd_travel_jetpack
execute as @a[tag=unmd_travel_jetboots,scores={UNMDtravel5=0,UNMDtravel2=1..},nbt={OnGround:0b}] at @s unless block ~ ~-2 ~ minecraft:air run effect give @s slow_falling 1 0 true
execute as @a[tag=unmd_travel_jetpack,scores={UNMDtravel5=0,UNMDtravel2=1..},nbt={OnGround:0b}] at @s unless block ~ ~-2 ~ minecraft:air run effect give @s slow_falling 1 0 true
execute as @a[tag=unmd_travel_jetboots,scores={UNMDtravel5=0},nbt={OnGround:0b}] at @s unless block ~ ~-2 ~ minecraft:air run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.008 2 normal
execute as @a[tag=unmd_travel_jetpack,scores={UNMDtravel5=0},nbt={OnGround:0b}] at @s unless block ~ ~-2 ~ minecraft:air run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.008 2 normal
execute as @a[tag=unmd_travel_jetboots] at @s if block ~ ~-1.5 ~ air run scoreboard players set @s UNMDtravel5 0
execute as @a[tag=unmd_travel_jetpack] at @s if block ~ ~-1.5 ~ air run scoreboard players set @s UNMDtravel5 0
effect give @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] minecraft:levitation 1 4 true
effect give @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] minecraft:levitation 1 6 true
effect clear @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=..0}] minecraft:levitation
effect clear @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=..0}] minecraft:levitation
execute as @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] at @s positioned ~ ~ ~ run particle smoke ~ ~1 ~ 0.1 0.1 0.1 0.008 4 normal
execute as @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] at @s positioned ~ ~ ~ run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.008 4 normal
execute as @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] at @s positioned ~ ~ ~ run particle flame ~ ~ ~ 0.1 0.1 0.1 0.008 4 normal
execute as @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] at @s positioned ~ ~ ~ run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.008 4 normal
scoreboard players set @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=1..,UNMDtravel2=..1,UNMDtravel4=0},nbt={Inventory:[{id:"minecraft:coal"}],OnGround:0b}] UNMDtravel3 1
scoreboard players set @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=1..,UNMDtravel2=..1,UNMDtravel4=0},nbt={Inventory:[{id:"minecraft:coal"}],OnGround:0b}] UNMDtravel3 1
scoreboard players set @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=1..,UNMDtravel2=..1,UNMDtravel4=0},nbt={Inventory:[{id:"minecraft:charcoal"}],OnGround:0b}] UNMDtravel3 2
scoreboard players set @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=1..,UNMDtravel2=..1,UNMDtravel4=0},nbt={Inventory:[{id:"minecraft:charcoal"}],OnGround:0b}] UNMDtravel3 2
clear @a[scores={UNMDtravel3=1},gamemode=!creative] coal 1
clear @a[scores={UNMDtravel3=2},gamemode=!creative] charcoal 1
scoreboard players add @a[scores={UNMDtravel3=1..}] UNMDtravel2 160
scoreboard players set @a[gamemode=creative] UNMDtravel2 160
scoreboard players remove @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] UNMDtravel2 1
scoreboard players remove @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=1..,UNMDtravel2=1..,UNMDtravel4=0},nbt={OnGround:0b}] UNMDtravel2 1
scoreboard players add @a[tag=unmd_travel_jetpack,scores={UNMDtravel1=1..},nbt={OnGround:0b}] UNMDtravel2 0
scoreboard players add @a[tag=unmd_travel_jetboots,scores={UNMDtravel1=1..},nbt={OnGround:0b}] UNMDtravel2 0
scoreboard players set @a[scores={UNMDtravel3=1..}] UNMDtravel3 0
execute as @a[scores={UNMDtravel5=0},nbt={OnGround:0b,Inventory:[{Slot: 102b, id: "minecraft:elytra", Count: 1b, tag: {ench: [{lvl: 4, id: 0}, {lvl: 3, id: 7}, {id: 127}], Unbreakable:1b, HideFlags: 127, display: {Name: "{\"text\":\"Angel Wings\",\"italic\":false}"}, Damage: 0, AttributeModifiers: [{UUIDMost: 868689, UUIDLeast: 731691, Amount: 5, Slot: "chest", AttributeName: "generic.maxHealth", Operation: 0, Name: "generic.maxHealth"}, {UUIDMost: 718019, UUIDLeast: 336862, Amount: 8, Slot: "chest", AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 163587, UUIDLeast: 255294, Amount: 5, Slot: "chest", AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]}}]}] at @s unless block ~ ~-2 ~ minecraft:air run effect give @s slow_falling 1 0 true
execute as @a[scores={UNMDtravel4=1..,UNMDtravel1=1..},nbt={Inventory:[{Slot: 102b, id: "minecraft:elytra", Count: 1b, tag: {ench: [{lvl: 4, id: 0}, {lvl: 3, id: 7}, {id: 127}], Unbreakable:1b, HideFlags: 127, display: {Name: "{\"text\":\"Angel Wings\",\"italic\":false}"}, Damage: 0, AttributeModifiers: [{UUIDMost: 868689, UUIDLeast: 731691, Amount: 5, Slot: "chest", AttributeName: "generic.maxHealth", Operation: 0, Name: "generic.maxHealth"}, {UUIDMost: 718019, UUIDLeast: 336862, Amount: 8, Slot: "chest", AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 163587, UUIDLeast: 255294, Amount: 5, Slot: "chest", AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]}}]}] at @s if block ^ ^ ^1.8 minecraft:air if block ^ ^ ^1 minecraft:air if block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^1.8
execute as @a[nbt={Inventory:[{Slot: 102b, id: "minecraft:elytra", Count: 1b, tag: {ench: [{lvl: 4, id: 0}, {lvl: 3, id: 7}, {id: 127}], Unbreakable:1b, HideFlags: 127, display: {Name: "{\"text\":\"Angel Wings\",\"italic\":false}"}, Damage: 0, AttributeModifiers: [{UUIDMost: 868689, UUIDLeast: 731691, Amount: 5, Slot: "chest", AttributeName: "generic.maxHealth", Operation: 0, Name: "generic.maxHealth"}, {UUIDMost: 718019, UUIDLeast: 336862, Amount: 8, Slot: "chest", AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 163587, UUIDLeast: 255294, Amount: 5, Slot: "chest", AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]}}]}] at @s if block ~ ~-1.5 ~ air run scoreboard players set @s UNMDtravel5 0
execute as @a[scores={UNMDtravel4=1..,UNMDtravel1=1..},nbt={Inventory:[{Slot: 102b, id: "minecraft:elytra", Count: 1b, tag: {ench: [{lvl: 4, id: 0}, {lvl: 3, id: 7}, {id: 127}], Unbreakable:1b, HideFlags: 127, display: {Name: "{\"text\":\"Angel Wings\",\"italic\":false}"}, Damage: 0, AttributeModifiers: [{UUIDMost: 868689, UUIDLeast: 731691, Amount: 5, Slot: "chest", AttributeName: "generic.maxHealth", Operation: 0, Name: "generic.maxHealth"}, {UUIDMost: 718019, UUIDLeast: 336862, Amount: 8, Slot: "chest", AttributeName: "generic.armor", Operation: 0, Name: "generic.armor"}, {UUIDMost: 163587, UUIDLeast: 255294, Amount: 5, Slot: "chest", AttributeName: "generic.armorToughness", Operation: 0, Name: "generic.armorToughness"}]}}]}] at @s run particle firework ~ ~ ~ 0.1 0.1 0.1 0.008 4 normal
scoreboard players set @a[scores={UNMDtravel1=1..}] UNMDtravel1 0
scoreboard players remove @a[scores={UNMDtravel6=1..}] UNMDtravel6 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:ender_pearl",tag:{display:{Name:"{\"text\":\"Infinite Enderpearl\",\"italic\":\"false\"}"},ench:[{id:127}],HideFlags:127}}}] UNMDtravel6 2
give @a[scores={UNMDtravel7=1..},gamemode=!creative] ender_pearl{display:{Name:"{\"text\":\"Infinite Enderpearl\",\"italic\":\"false\"}"},ench:[{id:127}],HideFlags:127} 1
scoreboard players set @a[scores={UNMDtravel7=1..}] UNMDtravel7 0
scoreboard players remove @a[scores={UNMDtravel7=1..},nbt={SelectedItem:{id:"minecraft:ender_pearl"}}] UNMDtravel6 1
scoreboard players set @a UNMDtravel4 0
