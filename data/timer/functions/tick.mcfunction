execute if score TimerActive Parameters matches 1 run scoreboard players remove Tick timer_tick 1

execute if score TimerActive Parameters matches 1 if score Tick timer_tick matches ..0 run scoreboard players remove Second timer_second 1
execute if score TimerActive Parameters matches 1 if score Tick timer_tick matches ..0 if score Second timer_second matches 1.. run tellraw @a ["", {"text": "[Timer] ","color": "aqua"}, {"score":{"name": "Second", "objective": "timer_second"},"color": "aqua"}, {"text": " restantes !", "color": "aqua"}]
execute if score TimerActive Parameters matches 1 if score Tick timer_tick matches ..0 run scoreboard players set Tick timer_tick 20

execute if score TimerActive Parameters matches 1 if score Second timer_second matches ..0 run tellraw @a ["", {"text": "[Timer] ","color": "aqua"}, {"text": "Timer fini !", "color": "aqua"}]
execute if score TimerActive Parameters matches 1 if score Second timer_second matches ..0 run kill @e[type=armor_stand,tag=Timer,limit=1]
execute if score TimerActive Parameters matches 1 if score Second timer_second matches ..0 run scoreboard players set TimerActive Parameters 0
