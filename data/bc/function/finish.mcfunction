#游戏结束通知和解释
advancement grant @a only bc:bc_challenge/bc_challenge_finished
scoreboard players set start option 2
gamemode spectator @a
title @a times 1s 60s 1s
execute as @a if score @s punishmethod matches 0 run title @s subtitle [{"text":"现在你可以去上厕所啦~","color":"white"}]
execute as @a if score @s punishmethod matches 1 run title @s subtitle [{"text":"准备开始释放任务啦~","color":"white"}]
execute as @a if score @s punishmethod matches 2 run title @s subtitle [{"text":"准备开始释放任务啦，结束后再去上厕所哦~","color":"white"}]
title @a title [{"text":"挑战成功！","color":"green"}]
tellraw @a [{"text":"[游戏结束]","color":"green"},{"text":"挑战成功！用时","color":"white"},{"score":{"objective":"option","name": "hour"},"color":"aqua"},{"text":"时","color":"white"},{"score":{"objective":"option","name": "minute"},"color":"aqua"},{"text":"分","color":"white"},{"score":{"objective":"option","name": "second"},"color":"aqua"},{"text":"秒！","color":"white"}]
execute as @a at @s run summon firework_rocket ~ ~ ~
execute as @a unless score @s punishmethod matches 0 run tellraw @s [{"text":"[释放任务]","color":"aqua"},{"text":"请将两根假阳具分别完全插入后穴、口穴，完成射精/高潮才可以拔出来~","color":"white"}]
function bc:disable