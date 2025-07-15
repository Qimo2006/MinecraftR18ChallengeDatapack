#每tick检测并执行
execute as @a if score @s allin matches 1 run function bc:init
execute as @a if score @s allin matches 1 run scoreboard players set @a allin 0
execute if score start option matches 1 run scoreboard players add @a time 1
execute if score start option matches 0 run function bc:beforestart

#每5tick执行测试函数
execute if score start option matches 1 run scoreboard players add test option 1
execute if score start option matches 1 if score test option matches 1 run function bc:test
execute if score start option matches 1 if score test option matches 5.. run scoreboard players set test option 0