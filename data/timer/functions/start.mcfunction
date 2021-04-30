execute if score RequestTimer Parameters matches ..0 run tellraw @p ["", {"text": "[Timer] ","color": "aqua"}, {"text":"Le timer est défini à ", "color":"red"},{"score":{"name":"RequestTimer","objective":"Parameters"},"color": "red"},{"text":" veuillez spécifier une valeur supérieur à 0 !", "color":"red"}]
execute if score TimerActive Parameters matches 1 run tellraw @p ["", {"text": "[Timer] ","color": "aqua"}, {"text":"Un timer est déjà en cours !","color": "aqua"}]

execute if score TimerActive Parameters matches 0 run tellraw @p ["", {"text":"Timer de ","color": "aqua"}, {"score":{"name": "RequestTimer","objective": "Parameters"}, "color": "aqua"}, {"text": " secondes lancé","color": "aqua"}]

execute if score TimerActive Parameters matches 0 run scoreboard players set Tick timer_tick 20
execute if score TimerActive Parameters matches 0 run execute store result score Second timer_second run scoreboard players get RequestTimer Parameters
execute if score TimerActive Parameters matches 0 run summon minecraft:armor_stand ~ ~ ~ {"Invisible":1b, "Tags":["Timer"],CustomNameVisible:1b, CustomName: '{"text":"Timer","color":"aqua"}'}
execute if score TimerActive Parameters matches 0 run scoreboard players set TimerActive Parameters 1