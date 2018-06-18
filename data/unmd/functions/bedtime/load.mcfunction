scoreboard objectives add unmd.bedtime dummy Bedtime Settings
scoreboard objectives add unmd.bedtime. dummy Bedtime
scoreboard players set playersonline unmd.bedtime 0
scoreboard players set playerssleeping% unmd.bedtime 0
scoreboard players set playerssleeping unmd.bedtime 0
scoreboard players set playersrequired% unmd.bedtime 0
#scoreboard players set morninggreeting unmd.bedtime 0
bossbar create unmd:bedtime ["",{"text":"Sleeping Progress","color":"white"}]
bossbar set unmd:bedtime color yellow 
bossbar set unmd:bedtime style progress
scoreboard players set bossbar unmd.bedtime 0
scoreboard players set bossbarmax unmd.bedtime 0
scoreboard players set playersmorerequired unmd.bedtime 0
