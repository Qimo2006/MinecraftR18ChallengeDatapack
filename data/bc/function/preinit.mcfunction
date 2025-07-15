execute if score start option matches 1..2 run return 1
execute as @a if score @s allin matches 1 run return 1

scoreboard objectives add allin trigger
scoreboard players set @a allin 0
scoreboard players enable @a allin
tellraw @a [{"text":"[请等待所有人进入游戏后点击此按钮]","color":"gold","click_event":{"action":"run_command","command":"/trigger allin set 1"}}]