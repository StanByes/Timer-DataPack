execute if score TimerActive Parameters matches 0 run bossbar add timer ["", {"score": {"name": "Second", "objective": "timer_second"}, "color": "aqua"}, {"text": " secondes restantes", "color": "aqua"}]
execute if score TimerActive Parameters matches 0 run bossbar set timer visible true
execute if score TimerActive Parameters matches 0 run bossbar set timer players @a
execute if score TimerActive Parameters matches 0 run bossbar set timer color red
execute if score TimerActive Parameters matches 0 store result bossbar timer max run scoreboard players get RequestTimer Parameters
execute if score TimerActive Parameters matches 0 store result bossbar timer value run scoreboard players get RequestTimer Parameters
