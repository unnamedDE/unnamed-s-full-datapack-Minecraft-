
execute at @e[type=armor_stand,tag=advancedcrafting_main] run function unmd:travel/recipes/jetpack
execute at @e[type=armor_stand,tag=advancedcrafting_main] run function unmd:travel/recipes/jetboots
execute at @e[type=armor_stand,tag=advancedcrafting_main] run function unmd:travel/recipes/infinite_enderpearl
execute at @e[type=armor_stand,tag=advancedcrafting_main] run function unmd:travel/recipes/angel_wings
execute at @e[type=armor_stand,tag=advancedcrafting_main] run function unmd:travel/recipes/angel_wings_
execute at @e[type=armor_stand,tag=advancedcrafting_main] run function unmd:travel/recipes/angelwings

scoreboard players set @a[scores={Fly1Craiy=1..}] Fly1Craiy 0
scoreboard players set @a[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{display:{Name:"{\"text\":\"Jetboots\"}"},HideFlags:127}}]}] Fly1Craiy 1
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate",tag:{display:{Name:"{\"text\":\"Jetpack\"}"},HideFlags:127}}]}] Fly1Craiy 2
#execute as @a[scores={Fly1Craiy=1..}] unless entity @s[nbt={Inventory:[{Slot:100b,id:"minecraft:iron_boots",tag:{display:{Name:"{\"text\":\"Jetboots\"}"},HideFlags:127}}]}] unless entity @s[nbt={Inventory:[{Slot:102b,id:"minecraft:iron_chestplate",tag:{display:{Name:"{\"text\":\"Jetpack\"}"},HideFlags:127}}]}] run scoreboard players set Fly1Craiy 0
scoreboard players set @a[nbt={OnGround:0b}] Fly2Craiy 1
execute as @a[scores={Fly1Craiy=1..,Fly8Craiy=0,Fly4Craiy=1..},nbt={OnGround:0b}] at @s unless block ~ ~-2 ~ minecraft:air run effect give @s slow_falling 1 0 true
execute as @a[scores={Fly1Craiy=1..,Fly8Craiy=0},nbt={OnGround:0b}] at @s unless block ~ ~-2 ~ minecraft:air run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.008 2 normal
execute as @a[scores={Fly1Craiy=1..}] at @s if block ~ ~-1.5 ~ air run scoreboard players set @s Fly8Craiy 0
scoreboard players set @a[nbt={OnGround:1b}] Fly2Craiy 0
effect give @a[scores={Fly1Craiy=1,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=1..,Fly7Craiy=0}] minecraft:levitation 1 4 true
effect give @a[scores={Fly1Craiy=2,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=1..,Fly7Craiy=0}] minecraft:levitation 1 6 true
effect clear @a[scores={Fly1Craiy=1..,Fly3Craiy=..0}] minecraft:levitation
execute as @a[scores={Fly1Craiy=2,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=1..,Fly7Craiy=0}] at @s positioned ~ ~ ~ run particle smoke ~ ~1 ~ 0.1 0.1 0.1 0.008 4 normal
execute as @a[scores={Fly1Craiy=2,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=1..,Fly7Craiy=0}] at @s positioned ~ ~ ~ run particle flame ~ ~1 ~ 0.1 0.1 0.1 0.008 4 normal
execute as @a[scores={Fly1Craiy=1,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=1..,Fly7Craiy=0}] at @s positioned ~ ~ ~ run particle flame ~ ~ ~ 0.1 0.1 0.1 0.008 4 normal
execute as @a[scores={Fly1Craiy=1,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=1..,Fly7Craiy=0}] at @s positioned ~ ~ ~ run particle smoke ~ ~ ~ 0.1 0.1 0.1 0.008 4 normal
scoreboard players set @a[scores={Fly1Craiy=1..,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=..1,Fly7Craiy=0},nbt={Inventory:[{id:"minecraft:coal"}]}] Fly5Craiy 1
scoreboard players set @a[scores={Fly1Craiy=1..,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=..1,Fly7Craiy=0},nbt={Inventory:[{id:"minecraft:charcoal"}]}] Fly5Craiy 2
clear @a[scores={Fly5Craiy=1}] coal 1
clear @a[scores={Fly5Craiy=2}] charcoal 1
scoreboard players add @a[scores={Fly5Craiy=1..}] Fly4Craiy 160
scoreboard players set @a[gamemode=creative] Fly4Craiy 160
scoreboard players remove @a[scores={Fly1Craiy=1..,Fly2Craiy=1..,Fly3Craiy=1..,Fly4Craiy=1..,Fly7Craiy=0}] Fly4Craiy 1
scoreboard players add @a[scores={Fly1Craiy=1..,Fly2Craiy=1..,Fly3Craiy=1..}] Fly4Craiy 0
scoreboard players set @a[scores={Fly2Craiy=1..}] Fly2Craiy 0
scoreboard players set @a[scores={Fly5Craiy=1..}] Fly5Craiy 0
#scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",tag:{display:{Name:"{\"text\":\"Angel Wings\"}"},HideFlags:127,ench:[{id:127}]}}]}] Fly6Craiy 1
scoreboard players set @a[nbt={Inventory:[{Slot:102b,id:"minecraft:elytra",Count:1b,tag:{HideFlags:127,display:{Name:"{\"text\":\"Angel Wings\",\"italic\":false}"},ench:[{id:0,lvl:4},{id:7,lvl:3},{id:127}],AttributeModifiers:[{AttributeName:"generic.maxHealth",Name:"generic.maxHealth",Amount:5,Operation:0,UUIDLeast:731691,UUIDMost:868689,Slot:"chest"},{AttributeName:"generic.armor",Name:"generic.armor",Amount:8,Operation:0,UUIDLeast:336862,UUIDMost:718019,Slot:"chest"},{AttributeName:"generic.armorToughness",Name:"generic.armorToughness",Amount:5,Operation:0,UUIDLeast:255294,UUIDMost:163587,Slot:"chest"}]}}]}] Fly6Craiy 1
execute as @a[scores={Fly8Craiy=0,Fly6Craiy=1},nbt={OnGround:0b}] at @s unless block ~ ~-2 ~ minecraft:air run effect give @s slow_falling 1 0 true
#execute as @a[x_rotation=-60..-24,scores={Fly7Craiy=1..,Fly6Craiy=1..}] at @s positioned ~ ~ ~ run tp @s ~ ~1.8 ~
#execute as @a[x_rotation=-60..-24,scores={Fly7Craiy=1..,Fly6Craiy=1..}] at @s positioned ~ ~ ~ run tp @s ^ ^ ^1.8
execute as @a[scores={Fly7Craiy=1..,Fly6Craiy=1..,Fly3Craiy=1..}] at @s if block ^ ^ ^1.8 minecraft:air if block ^ ^ ^1 minecraft:air if block ^ ^ ^.5 minecraft:air run tp @s ^ ^ ^1.8
execute as @a[scores={Fly6Craiy=1}] at @s if block ~ ~-1.5 ~ air run scoreboard players set @s Fly8Craiy 0
execute as @a[scores={Fly7Craiy=1..,Fly6Craiy=1..,Fly3Craiy=1..}] at @s run particle firework ~ ~ ~ 0.1 0.1 0.1 0.008 4 normal
scoreboard players set @a[scores={Fly3Craiy=1..}] Fly3Craiy 0
scoreboard players set @a[scores={Fly7Craiy=1..}] Fly7Craiy 0
scoreboard players set @a[scores={Fly6Craiy=1..}] Fly6Craiy 0
scoreboard players remove @a[scores={Travel1Craiy=1..}] Travel1Craiy 1
scoreboard players set @a[nbt={SelectedItem:{id:"minecraft:ender_pearl",tag:{display:{Name:"{\"text\":\"Infinite Enderpearl\"}"},ench:[{id:127}],HideFlags:127}}}] Travel1Craiy 2
give @a[scores={Travel1Craiy=1..,Travel2Craiy=1..},gamemode=!creative] ender_pearl{display:{Name:"{\"text\":\"Infinite Enderpearl\"}"},ench:[{id:127}],HideFlags:127} 1
scoreboard players set @a[scores={Travel2Craiy=1..}] Travel2Craiy 0
scoreboard players remove @a[scores={Travel2Craiy=1..},nbt={SelectedItem:{id:"minecraft:ender_pearl"}}] Travel1Craiy 1
scoreboard players reset @a[scores={Fly8Craiy=0..}] Fly8Craiy
#scoreboard players set @e[nbt={Item:{id:"minecraft:iron_chestplate"},OnGround:1b}] Travel3Craiy 1
#scoreboard players set @e[nbt={Item:{id:"minecraft:redstone",Count:32b},OnGround:1b}] Travel3Craiy 2
#scoreboard players set @e[nbt={Item:{id:"minecraft:flint_and_steel"},OnGround:1b}] Travel3Craiy 3
#scoreboard players set @e[nbt={Item:{id:"minecraft:anvil"},OnGround:1b}] Travel3Craiy 4
#execute as @e[scores={Travel3Craiy=1..,Travel3Craiy=..1}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=2},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=3},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=4},distance=..1] at @s positioned ~ ~ ~ run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:iron_chestplate",Count:1b,tag:{display:{Name:"{\"text\":\"Jetpack\"}"},ench:[{id:127}],HideFlags:127,Unbreakable:1b,AttributeModifiers:[{Operation:0,UUIDLeast:3,UUIDMost:3,Amount:0,AttributeName:generic.armor,Name:JetpackArmor}]}}}
#execute as @e[scores={Travel3Craiy=1}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=2},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=3},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=4},distance=..1] at @s positioned ~ ~ ~ run kill @e[type=item,distance=3,scores={Travel3Craiy=1..4}]
#scoreboard players set @e[nbt={Item:{id:"minecraft:iron_boots"},OnGround:1b}] Travel3Craiy 5
#execute as @e[scores={Travel3Craiy=5}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=2},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=3},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=4},distance=..1] at @s positioned ~ ~ ~ run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:iron_boots",Count:1b,tag:{display:{Name:"{\"text\":\"Jetboots\"}"},ench:[{id:127}],HideFlags:127,Unbreakable:1b,AttributeModifiers:[{Operation:0,UUIDLeast:3,UUIDMost:3,Amount:0,AttributeName:generic.armor,Name:JetbootsArmor}]}}}
#execute as @e[scores={Travel3Craiy=5}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=2},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=3},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=4},distance=..1] at @s positioned ~ ~ ~ run kill @e[type=item,distance=..3,scores={Travel3Craiy=2..5}]
#scoreboard players set @e[nbt={Item:{id:"minecraft:elytra"},OnGround:1b}] Travel3Craiy 6
#scoreboard players set @e[nbt={Item:{id:"minecraft:diamond",Count:12b},OnGround:1b}] Travel3Craiy 7
#scoreboard players set @e[nbt={Item:{id:"minecraft:feather",Count:10b},OnGround:1b}] Travel3Craiy 8
#execute as @e[scores={Travel3Craiy=6}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=7},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=8},distance=..1] at @s positioned ~ ~ ~ run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:elytra",Count:1b,tag:{display:{Name:"{\"text\":\"Angel Wings\"}"},HideFlags:127,ench:[{id:127}],Unbreakable:1b}}}
#execute as @e[scores={Travel3Craiy=6}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=7},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=8},distance=..1] at @s positioned ~ ~ ~ run kill @e[type=item,distance=..3,scores={Travel3Craiy=6..8}]
#scoreboard players set @e[nbt={Item:{id:"minecraft:ender_pearl",Count:10b},OnGround:1b}] Travel3Craiy 9
#scoreboard players set @e[nbt={Item:{id:"minecraft:diamond_block",Count:5b},OnGround:1b}] Travel3Craiy 10
#scoreboard players set @e[nbt={Item:{id:"minecraft:redstone_block",Count:5b},OnGround:1b}] Travel3Craiy 11
#execute as @e[scores={Travel3Craiy=9}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=10},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=11},distance=..1] at @s positioned ~ ~ ~ run summon minecraft:item ~ ~0.5 ~ {Item:{id:"minecraft:ender_pearl",Count:1b,tag:{display:{Name:"{\"text\":\"Infinite Enderpearl\"}"},ench:[{id:127}],HideFlags:127}}}
#execute as @e[scores={Travel3Craiy=9}] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=10},distance=..1] at @s positioned ~ ~ ~ run execute as @e[scores={Travel3Craiy=11},distance=..1] at @s positioned ~ ~ ~ run kill @e[type=item,distance=..3,scores={Travel3Craiy=9..11}]

function unmd:travel/recipes/angelwings
