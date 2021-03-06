scoreboard players add @a[nbt={Dimension:0,Sleeping:1b}] unmd.bedtime. 1
scoreboard players reset @a[nbt={Sleeping:0b}] unmd.bedtime.
execute as @a[nbt={Sleeping:1b},scores={unmd.bedtime.=..99}] run scoreboard players add bossbar unmd.bedtime 1
execute unless entity @a[nbt={Sleeping:1b}] run scoreboard players set bossbar unmd.bedtime 0
execute as @a[nbt={Sleeping:1b}] run bossbar set unmd:bedtime visible true
execute as @a[nbt={Sleeping:1b}] run bossbar set unmd:bedtime players @a
execute unless entity @a[nbt={Sleeping:1b}] run bossbar set unmd:bedtime visible false
execute store result bossbar unmd:bedtime value run scoreboard players get bossbar unmd.bedtime
execute store result bossbar unmd:bedtime max run scoreboard players get bossbarmax unmd.bedtime
execute if score playersonline unmd.bedtime > 1 unmd.numbers if entity @a[scores={unmd.bedtime.=1..}] run advancement grant @a only unmd:bedtime/toast
execute unless entity @a[scores={unmd.bedtime.=1..}] run advancement revoke @a only unmd:bedtime/toast
execute unless entity @a[scores={unmd.bedtime.=1..99}] run scoreboard players operation bossbar unmd.bedtime = playerssleeping% unmd.bedtime

execute as @a[scores={unmd.bedtime.=101}] unless score playerssleeping% unmd.bedtime > playersrequired% unmd.bedtime run tellraw @a ["",{"score":{"name":"playerssleeping","objective":"unmd.bedtime"},"color":"green"},{"text":" Players want to sleep. ","color":"gold"},{"score":{"name":"playersmorerequired","objective":"unmd.bedtime"},"color":"green"},{"text":" Players more have to go to bed to skip the night...","color":"gold"}]