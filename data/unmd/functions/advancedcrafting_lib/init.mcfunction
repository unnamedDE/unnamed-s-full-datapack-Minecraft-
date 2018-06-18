tag @s remove advancedcrafting_main_new
data merge block ~ ~ ~ {Items: [{Slot: 0b, id: "minecraft:air", Count: 1b}, {Slot: 1b, id: "minecraft:air", Count: 1b}, {Slot: 2b, id: "minecraft:air", Count: 1b}, {Slot: 3b, id: "minecraft:air", Count: 1b}, {Slot: 4b, id: "minecraft:air", Count: 1b}, {Slot: 5b, id: "minecraft:air", Count: 1b}, {Slot: 6b, id: "minecraft:air", Count: 1b}, {Slot: 7b, id: "minecraft:air", Count: 1b}, {Slot: 8b, id: "minecraft:air", Count: 1b}]}
setblock ~ ~ ~ minecraft:dropper[facing=down]{CustomName:"{\"text\":\"Advanced Crafting Table\"}"} replace
particle minecraft:flame ~ ~.5 ~ 0 0 0 .1 200
