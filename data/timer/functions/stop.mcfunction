execute if score TimerActive Parameters matches 0 run tellraw @p ["", {"text": "[Timer] ","color": "aqua"}, {"text": "Le timer n'est pas lancé !"}]

execute if score TimerActive Parameters matches 1 run tellraw @p ["", {"text": "[Timer] ","color": "aqua"}, {"text": "Timer arrêté !", "color": "aqua"}]
#execute if score TimerActive Parameters matches 1 run kill @e[type=armor_stand,tag=Timer]
execute if score TimerActive Parameters matches 1 run scoreboard players set Tick timer_tick 0
execute if score TimerActive Parameters matches 1 run scoreboard players set Second timer_second 0
execute if score TimerActive Parameters matches 1 run scoreboard players set TimerActive Parameters 0