#每tick检测并执行
execute if score start option matches 0 run function bc:beforestart

#每5tick执行测试函数
execute if score start option matches 1 run scoreboard players add test option 1
execute if score start option matches 1 if score test option matches 1 run function bc:test
execute if score start option matches 1 if score test option matches 5.. run scoreboard players set test option 0