#每tick检测并执行
execute as @a if score @s allin matches 1 run function game:init
execute as @a if score @s allin matches 1 run scoreboard players set @a allin 0

#菜单选择检测
execute if entity @a[scores={game=0}] run scoreboard players set game option 0
execute if entity @a[scores={game=0}] run function game:menu
execute if entity @a[scores={game=1}] run scoreboard players set game option 1
execute if entity @a[scores={game=1}] run function bc:menu
execute if entity @a[scores={game=2}] run scoreboard players set game option 2
execute if entity @a[scores={game=0..}] run scoreboard players set @a game -1

#游戏模式检测
execute if score game option matches 1 run function bc:repeat