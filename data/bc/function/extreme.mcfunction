$schedule function bc:hardcore $(hardcoretime)s

scoreboard players set extreme1 option 0
scoreboard players set extreme2 option 0
title @a subtitle [{"text":"死亡惩罚、挖矿任务已增加，请暂停完成附加任务","color":"white"}]
title @a title [{"text":"硬核模式惩罚","color":"red"}]
execute store result score extreme1 option run random value 50..100
scoreboard players operation @s ml += extreme1 option
execute store result score extreme1 option run random value 5..10
scoreboard players operation @s multiplier += extreme1 option

execute store result score extreme1 option run random value 150..200
execute if score 钻石收集任务 renwu matches 1.. run scoreboard players operation 钻石收集任务 renwu *= extreme1 option
execute store result score extreme1 option run random value 150..200
execute if score 铁块收集任务 renwu matches 1.. run scoreboard players operation 铁块收集任务 renwu *= extreme1 option
execute store result score extreme1 option run random value 150..200
execute if score 煤炭块收集任务 renwu matches 1.. run scoreboard players operation 煤炭块收集任务 renwu *= extreme1 option
execute store result score extreme1 option run random value 150..200
execute if score 青金石块收集任务 renwu matches 1.. run scoreboard players operation 青金石块收集任务 renwu *= extreme1 option
execute store result score extreme1 option run random value 150..200
execute if score 红石块收集任务 renwu matches 1.. run scoreboard players operation 红石块收集任务 renwu *= extreme1 option
execute store result score extreme1 option run random value 150..200
scoreboard players operation 金锭收集任务 renwu *= extreme1 option
scoreboard players set extreme2 option 100
execute if score 钻石收集任务 renwu matches 1.. run scoreboard players operation 钻石收集任务 renwu /= extreme2 option
execute if score 铁块收集任务 renwu matches 1.. run scoreboard players operation 铁块收集任务 renwu /= extreme2 option
execute if score 煤炭块收集任务 renwu matches 1.. run scoreboard players operation 煤炭块收集任务 renwu /= extreme2 option
execute if score 青金石块收集任务 renwu matches 1.. run scoreboard players operation 青金石块收集任务 renwu /= extreme2 option
execute if score 红石块收集任务 renwu matches 1.. run scoreboard players operation 红石块收集任务 renwu /= extreme2 option
execute if score 金锭收集任务 renwu matches 1.. run scoreboard players operation 金锭收集任务 renwu /= extreme2 option

tellraw @a [{"text":"----------------------------------------------------------------------------------------------------------","color":"white"}]

execute as @a run scoreboard players operation @s extreme = @s ml
execute store result score extreme1 option run random value 1..2
execute as @a run scoreboard players operation @s extreme /= extreme1 option
execute as @a unless score @s punishmethod matches 1 run tellraw @s [{"text":"[附加任务]","color":"red"},{"text":"立刻喝下","color":"white"},{"score":{"objective":"extreme","name": "*"},"color":"aqua"},{"text":"mL水","color":"white"}]

execute as @a if score @s punishmethod matches 2 run tellraw @s [{"text":"[温馨提示]","color":"aqua"},{"text":"—————紧接着————","color":"white"}]

execute as @a if score @s customroulette matches 1 store result score extreme2 option run random value 2..5
execute as @a if score @s customroulette matches 1 run scoreboard players operation extreme2 option *= @s multiplier
execute as @a if score @s customroulette matches 1 run scoreboard players operation extreme2 option /= multiplier option
execute as @a if score @s customroulette matches 1 unless score @s punishmethod matches 0 if score @s anal matches 45221 if score @s deepthroat matches 1 run tellraw @s [{"text":"[附加任务]","color":"red"},{"text":"立刻让假阳具完全插入喉咙","color":"white"},{"score":{"objective":"option","name": "extreme2"},"color":"aqua"},{"text":"秒，只有嘴唇碰到蛋蛋才能计时，不可停顿呼吸","color":"white"}]
execute as @a if score @s customroulette matches 1 store result score extreme2 option run random value 10..20
execute as @a if score @s customroulette matches 1 run scoreboard players operation extreme2 option *= @s multiplier
execute as @a if score @s customroulette matches 1 run scoreboard players operation extreme2 option /= multiplier option
execute as @a if score @s customroulette matches 1 unless score @s punishmethod matches 0 if score @s anal matches 1 if score @s deepthroat matches 45221 run tellraw @s [{"text":"[附加任务]","color":"red"},{"text":"立刻以120bpm的速度用假阳具肏你的后穴","color":"white"},{"score":{"objective":"option","name": "extreme2"},"color":"aqua"},{"text":"次，可以休息但是不能超过5秒，可以换手","color":"white"}]
execute as @a if score @s customroulette matches 1 store result score extreme2 option run random value 10..20
execute as @a if score @s customroulette matches 1 run scoreboard players operation extreme2 option *= @s multiplier
execute as @a if score @s customroulette matches 1 run scoreboard players operation extreme2 option /= multiplier option
execute as @a if score @s customroulette matches 1 unless score @s punishmethod matches 0 if score @s anal matches 1 if score @s deepthroat matches 1 run tellraw @s [{"text":"[附加任务]","color":"red"},{"text":"立刻以120bpm的速度用假阳具肏你的喉咙和后穴总共","color":"white"},{"score":{"objective":"option","name": "extreme2"},"color":"aqua"},{"text":"次，可以休息但是不能超过5秒，可以换手，深喉全入全出才算一个","color":"white"}]
execute as @a if score @s customroulette matches 0 run execute store result score extreme2 option run random value 0..9
execute as @a if score @s customroulette matches 0 run tellraw @s [{"text":"[附加任务]","color":"red"},{"text":"你掷出了","color":"white"},{"score":{"objective":"option","name":"random"},"color":"gold"},{"text":"，请完成任务~ 倍增器数值为","color":"white"},{"score":{"objective":"multiplier","name": "*"},"color":"aqua"},{"text":"/10倍","color":"white"}]

execute as @a unless score @s punishmethod matches 1 run tellraw @s [{"text":"[温馨提示]","color":"aqua"},{"text":"接下来一次死亡需要喝","color":"white"},{"score":{"objective":"ml","name": "*"},"color":"aqua"},{"text":"mL水，小心一点哦~","color":"white"}]
execute as @a unless score @s punishmethod matches 0 run tellraw @s [{"text":"[温馨提示]","color":"aqua"},{"text":"当前倍增器数值为","color":"white"},{"score":{"objective":"multiplier","name": "*"},"color":"aqua"},{"text":"/10倍，小心一点哦~","color":"white"}]