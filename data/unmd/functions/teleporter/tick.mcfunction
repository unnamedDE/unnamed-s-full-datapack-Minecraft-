#teleporter
function unmd:teleporter/setup
function unmd:teleporter/look_setup
function unmd:teleporter/destruction_detection
function unmd:teleporter/teleportation
function unmd:teleporter/custom_tp
#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ if entity @a[distance=..1] run scoreboard objectives setdisplay sidebar tp_time
#execute at @e[type=armor_stand,tag=teleporter_main] positioned ~ ~1 ~ unless entity @a[distance=..1] run scoreboard objectives setdisplay sidebar