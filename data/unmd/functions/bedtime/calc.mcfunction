scoreboard players set playersonline unmd.bedtime 0
execute as @a run scoreboard players add playersonline unmd.bedtime 1
scoreboard players set playerssleeping unmd.bedtime 0
#scoreboard players set playerssleeping% unmd.bedtime 0
execute as @a[scores={unmd.bedtime.=100..}] run scoreboard players add playerssleeping unmd.bedtime 1
#execute as @a[scores={unmd.bedtime.=100..}] run scoreboard players add playerssleeping% unmd.bedtime 100

scoreboard players operation playersrequired% unmd.bedtime = % unmd.bedtime
scoreboard players operation playersrequired% unmd.bedtime *= playersonline unmd.bedtime 
scoreboard players operation bossbarmax unmd.bedtime = playersrequired unmd.bedtime
scoreboard players operation bossbarmax unmd.bedtime *= 100 unmd.numbers
scoreboard players operation playersrequired unmd.bedtime = playersrequired% unmd.bedtime
scoreboard players operation playersrequired unmd.bedtime /= 100 unmd.numbers
execute unless score % unmd.bedtime = 100 unmd.numbers run scoreboard players add playersrequired unmd.bedtime 1
scoreboard players operation playersmorerequired unmd.bedtime = playersrequired unmd.bedtime
scoreboard players operation playersmorerequired unmd.bedtime -= playerssleeping unmd.bedtime

scoreboard players operation playerssleeping% unmd.bedtime = playerssleeping unmd.bedtime
scoreboard players operation playerssleeping% unmd.bedtime *= 100 unmd.numbers





#function unmd:bedtime/roundup
#execute store success score morethan1 unmd.bedtime run scoreboard players operation playersrequired unmd.bedtime /= 100 unmd.bedtime
#scoreboard players operation playersrequired unmd.bedtime /= 100 unmd.numbers
#execute if score playersrequired unmd.bedtime = 0 unmd.numbers run scoreboard players set playersrequired unmd.bedtime 1

#execute as morethan1 if entity @s[scores={unmd.bedtime=0}] run scoreboard players set playersrequired unmd.bedtime 1
#scoreboard players operation playersrequired unmd.bedtime = playersonline unmd.bedtime
#scoreboard players operation playersrequired unmd.bedtime *= % unmd.bedtime
#scoreboard players operation playersrequired unmd.bedtime /= 100 unmd.numbers