#execute unless score playersonline unmd.bedtime = 1 unmd.number if score playerssleeping unmd.bedtime >= playersrequired unmd.bedtime run time set 0
#execute unless score playersonline unmd.bedtime = 1 unmd.number if score playerssleeping unmd.bedtime >= playersrequired unmd.bedtime run weather clear 
execute if score playerssleeping% unmd.bedtime >= playersrequired% unmd.bedtime as @a[nbt={Sleeping:1b}] run effect give @s minecraft:regeneration 1 10 true
execute if score playerssleeping% unmd.bedtime >= playersrequired% unmd.bedtime unless score playersonline unmd.bedtime = 1 unmd.numbers run advancement grant @a only unmd:bedtime/morning
execute if score playerssleeping% unmd.bedtime >= playersrequired% unmd.bedtime unless score playersonline unmd.bedtime = 1 unmd.numbers run time set 0
execute if score playerssleeping% unmd.bedtime >= playersrequired% unmd.bedtime unless score playersonline unmd.bedtime = 1 unmd.numbers run weather clear 99999
execute if score playerssleeping unmd.bedtime = 0 unmd.numbers unless score playersonline unmd.bedtime = 1 unmd.numbers run advancement revoke @a only unmd:bedtime/morning
#execute if score playerssleeping unmd.bedtime >= playersrequired unmd.bedtime unless score morninggreeting unmd.bedtime = 1 unmd.numbers run tellraw @a ["",{"text":"Night skipped by ","color":"gold"},{"score":{"name":"playersrequired","objective":"unmd.bedtime"},"color":"green"},{"text":"+","color":"green"},{"text":" players","color":"gold"}]