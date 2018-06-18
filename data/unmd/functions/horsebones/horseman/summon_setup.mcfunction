tellraw @a[distance=..35] ["",{"text":"The horse died, but the "},{"text":"Horseman ","color":"aqua","bold":false,"hoverEvent":{"action":"show_text","value":{"text":"","extra":[{"text":"He will kill you!!!","color":"red"}]}}},{"text":"awakened","color":"none","bold":false}]
function unmd:horsebones/horseman/summon
function unmd:horsebones/horseman/summon_visuals
advancement grant @p only unmd:horsebones/ritual_5 put 
tp @a[distance=..2] ~ ~.001 ~
tp @s ~ -500 ~