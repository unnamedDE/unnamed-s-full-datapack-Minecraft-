scoreboard players operation @s scoretp_y = @s scoretp_temp

execute if entity @s[scores={scoretp_temp=1000000..}] run function unmd:scoreboardtp/tp/function/y_1000000
execute if entity @s[scores={scoretp_temp=100000..99999}] run function unmd:scoreboardtp/tp/function/y_100000
execute if entity @s[scores={scoretp_temp=10000..99999}] run function unmd:scoreboardtp/tp/function/y_10000
execute if entity @s[scores={scoretp_temp=1000..9999}] run function unmd:scoreboardtp/tp/function/y_1000
execute if entity @s[scores={scoretp_temp=100..999}] run function unmd:scoreboardtp/tp/function/y_100
execute if entity @s[scores={scoretp_temp=10..99}] run function unmd:scoreboardtp/tp/function/y_10
execute if entity @s[scores={scoretp_temp=1..9}] run function unmd:scoreboardtp/tp/function/y_1

scoreboard players reset @s scoretp_temp
