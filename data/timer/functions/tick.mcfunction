execute if score TimerActive Parameters matches 1 run scoreboard players remove Tick timer_tick 1

execute if score TimerActive Parameters matches 1 if score Tick timer_tick matches ..0 run scoreboard players remove Second timer_second 1
execute if score TimerActive Parameters matches 1 if score Tick timer_tick matches ..0 run bossbar set timer name ["", {"score": {"name": "Second", "objective": "timer_second"}, "color": "aqua"}, {"text": " secondes restantes", "color": "aqua"}]
execute if score TimerActive Parameters matches 1 if score Tick timer_tick matches ..0 store result bossbar timer value run scoreboard players get Second timer_second
execute if score TimerActive Parameters matches 1 if score Tick timer_tick matches ..0 run scoreboard players set Tick timer_tick 20

execute if score TimerActive Parameters matches 1 if score Second timer_second matches ..0 run bossbar remove timer
execute if score TimerActive Parameters matches 1 if score Second timer_second matches ..0 run scoreboard players set TimerActive Parameters 0
