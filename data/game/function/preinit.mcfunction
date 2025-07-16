execute if score start option matches 1..2 run return 1
execute as @a if score @s allin matches 1 run return 1

scoreboard objectives add allin trigger
scoreboard players set @a allin 0
scoreboard players enable @a allin

#提示性标题
title @a times 0t 120s 0t
title @a title {"text":"请按T打开聊天框开始操作","color":"white"}

#初始化按钮
tellraw @a [{"text":"[请等待所有人进入游戏后点击此按钮]","color":"gold","click_event":{"action":"run_command","command":"/trigger allin set 1"}}]