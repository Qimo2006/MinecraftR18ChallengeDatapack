#游戏开始初始化
time set day
clear @a
spreadplayers 0 0 10000 100000 false @a
tp @a @r
execute as @a[scores={count=0}] run scoreboard players operation extra option = @s count
execute as @a[scores={count=1}] run scoreboard players operation extra option = @s count
execute as @a[scores={count=2}] run scoreboard players operation extra option = @s count
execute as @a[scores={count=3}] run scoreboard players operation extra option = @s count
execute as @a[scores={count=4}] run scoreboard players operation extra option = @s count
execute as @a[scores={count=5}] run scoreboard players operation extra option = @s count
execute as @a[scores={keepinventory=0}] run gamerule keepInventory false
scoreboard players set @a death 0
scoreboard players set @a death1 0
scoreboard players set start option 1
scoreboard players set hour option 0
scoreboard players set minute option 0
scoreboard players set second option 0
execute as @a run scoreboard players operation @s ml1 = @s ml


#DT内容删去惩罚
execute as @a if score @s deepthroat matches 0 run scoreboard players set @s temp 10
execute as @a if score @s deepthroat matches 0 run scoreboard players operation @s multiplier += @s temp
execute as @a if score @s deepthroat matches 0 run scoreboard players set @s deepthroat 45221

#AN内容删去惩罚
execute as @a if score @s anal matches 0 run scoreboard players set @s temp 10
execute as @a if score @s anal matches 0 run scoreboard players operation @s multiplier += @s temp
execute as @a if score @s anal matches 0 run scoreboard players set @s anal 45221

#设置附加任务
execute if score extra option matches 1.. run scoreboard players set ----额外任务---- renwu 0
execute if score extra option matches 1.. run scoreboard players set 抵达地狱 renwu -1
execute if score extra option matches 2.. run scoreboard players set 进入要塞 renwu -1
execute if score extra option matches 3.. run scoreboard players set 击杀末影龙 renwu -1
execute if score extra option matches 4.. run scoreboard players set 找到鞘翅 renwu -1
execute if score extra option matches 5.. run scoreboard players set 击杀凋零 renwu -1

#游戏开始标题显示
title @a times 1s 10s 1s
title @a subtitle {"text":"请先完成初始任务","color":"white"}
title @a title {"text":"Game Start!","color":"red"}
tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
execute as @a if score @s punishmethod matches 0 run tellraw @s [{"text":"[初始任务]","color":"gold"},{"text":"喝下500mL水~"}]
execute as @a if score @s punishmethod matches 1 run tellraw @s [{"text":"[初始任务]","color":"gold"},{"text":"全裸或身着性感着装~"}]
execute as @a if score @s punishmethod matches 2 run tellraw @s [{"text":"[初始任务]","color":"gold"},{"text":"全裸或身着性感着装，并喝下500ml水~"}]
tellraw @a [{"text":"[温馨提示]","color":"aqua"},{"text":"所有的初始任务、死亡惩罚和附加任务建议暂停游戏(按下Esc或者F3+Esc)"}]

#游戏开始成就显示
advancement grant @a only bc:bc_challenge/bc_challenge_start

