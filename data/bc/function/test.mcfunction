#任务检测部分
scoreboard players set diamond get 0
execute if score 钻石收集任务 renwu matches 1.. as @r store result score diamond get run clear @a minecraft:diamond
execute if score diamond get matches 1.. run tellraw @a [{"text":"[!]","color":"gold"},{"text":"钻石收集任务进度已更新！","color":"aqua"}]
execute as @a at @s if score diamond get matches 1.. run playsound entity.firework_rocket.blast player @a ~ ~ ~
scoreboard players operation 钻石收集任务 renwu -= diamond get
execute if score 钻石收集任务 renwu matches ..-1 run give @r minecraft:diamond 1
execute if score 钻石收集任务 renwu matches ..-1 run scoreboard players add 钻石收集任务 renwu 1
execute if score 钻石收集任务 renwu matches 0 run advancement grant @a only bc:bc_challenge/bc_diamond_completed
execute if score 钻石收集任务 renwu matches 0 run scoreboard players reset 钻石收集任务 renwu

scoreboard players set iron_block get 0
execute if score 铁块收集任务 renwu matches 1.. as @r store result score iron_block get run clear @a minecraft:iron_block
execute if score iron_block get matches 1.. run tellraw @a [{"text":"[!]","color":"gold"},{"text":"铁块收集任务进度已更新！","color":"white"}]
execute as @a at @s if score iron_block get matches 1.. run playsound entity.firework_rocket.blast player @a ~ ~ ~
scoreboard players operation 铁块收集任务 renwu -= iron_block get
execute if score 铁块收集任务 renwu matches ..-1 run give @r minecraft:iron_block 1
execute if score 铁块收集任务 renwu matches ..-1 run scoreboard players add 铁块收集任务 renwu 1
execute if score 铁块收集任务 renwu matches 0 run advancement grant @a only bc:bc_challenge/bc_iron_block_completed
execute if score 铁块收集任务 renwu matches 0 run scoreboard players reset 铁块收集任务 renwu

scoreboard players set coal_block get 0
execute if score 煤炭块收集任务 renwu matches 1.. as @r store result score coal_block get run clear @a minecraft:coal_block
execute if score coal_block get matches 1.. run tellraw @a [{"text":"[!]","color":"gold"},{"text":"煤炭块收集任务进度已更新！","color":"gray"}]
execute as @a at @s if score coal_block get matches 1.. run playsound entity.firework_rocket.blast player @a ~ ~ ~
scoreboard players operation 煤炭块收集任务 renwu -= coal_block get
execute if score 煤炭块收集任务 renwu matches ..-1 run give @r minecraft:coal_block 1
execute if score 煤炭块收集任务 renwu matches ..-1 run scoreboard players add 煤炭块收集任务 renwu 1
execute if score 煤炭块收集任务 renwu matches 0 run advancement grant @a only bc:bc_challenge/bc_coal_block_completed
execute if score 煤炭块收集任务 renwu matches 0 run scoreboard players reset 煤炭块收集任务 renwu

scoreboard players set lapis_block get 0
execute if score 青金石块收集任务 renwu matches 1.. as @r store result score lapis_block get run clear @a minecraft:lapis_block
execute if score lapis_block get matches 1.. run tellraw @a [{"text":"[!]","color":"gold"},{"text":"青金石块收集任务进度已更新！","color":"dark_blue"}]
execute as @a at @s if score lapis_block get matches 1.. run playsound entity.firework_rocket.blast player @a ~ ~ ~
scoreboard players operation 青金石块收集任务 renwu -= lapis_block get
execute if score 青金石块收集任务 renwu matches ..-1 run give @r minecraft:lapis_block 1
execute if score 青金石块收集任务 renwu matches ..-1 run scoreboard players add 青金石块收集任务 renwu 1
execute if score 青金石块收集任务 renwu matches 0 run advancement grant @a only bc:bc_challenge/bc_lapis_block_completed
execute if score 青金石块收集任务 renwu matches 0 run scoreboard players reset 青金石块收集任务 renwu

scoreboard players set redstone_block get 0
execute if score 红石块收集任务 renwu matches 1.. as @r store result score redstone_block get run clear @a minecraft:redstone_block
execute if score redstone_block get matches 1.. run tellraw @a [{"text":"[!]","color":"gold"},{"text":"红石块收集任务进度已更新！","color":"dark_red"}]
execute as @a at @s if score redstone_block get matches 1.. run playsound entity.firework_rocket.blast player @a ~ ~ ~
scoreboard players operation 红石块收集任务 renwu -= redstone_block get
execute if score 红石块收集任务 renwu matches ..-1 run give @r minecraft:redstone_block 1
execute if score 红石块收集任务 renwu matches ..-1 run scoreboard players add 红石块收集任务 renwu 1
execute if score 红石块收集任务 renwu matches 0 run advancement grant @a only bc:bc_challenge/bc_redstone_block_completed
execute if score 红石块收集任务 renwu matches 0 run scoreboard players reset 红石块收集任务 renwu

scoreboard players set gold_ingot get 0
execute if score 金锭收集任务 renwu matches 1.. as @r store result score gold_ingot get run clear @a minecraft:gold_ingot
execute if score gold_ingot get matches 1.. run tellraw @a [{"text":"[!]","color":"gold"},{"text":"金锭收集任务进度已更新！","color":"yellow"}]
execute as @a at @s if score gold_ingot get matches 1.. run playsound entity.firework_rocket.blast player @a ~ ~ ~
scoreboard players operation 金锭收集任务 renwu -= gold_ingot get
execute if score 金锭收集任务 renwu matches ..-1 run give @r minecraft:gold_ingot 1
execute if score 金锭收集任务 renwu matches ..-1 run scoreboard players add 金锭收集任务 renwu 1
execute if score 金锭收集任务 renwu matches 0 run advancement grant @a only bc:bc_challenge/bc_gold_ingot_completed
execute if score 金锭收集任务 renwu matches 0 run scoreboard players reset 金锭收集任务 renwu

#死亡惩罚部分
execute as @a if score @s death matches 1.. run tellraw @a [{"text":"----------------------------------------------------------------------------------------------------------","color":"white"}]

#BC挑战惩罚部分
execute as @a if score @s death matches 1.. if score @s punishmethod matches 0 run title @s subtitle [{"text":"喝下 ","color":"white"},{"score":{"objective":"ml","name": "*"},"color":"aqua"},{"text":" mL水","color":"white"}]
execute as @a if score @s death matches 1.. if score @s punishmethod matches 0 run title @s title [{"text":"死亡惩罚","color":"dark_red"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 1 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"喝下 ","color":"white"},{"score":{"objective":"ml","name": "*"},"color":"aqua"},{"text":" mL水","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 1 run execute store result score random option run random value 11..15
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 1 run scoreboard players operation @s ml *= random option
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 1 run scoreboard players operation @s ml /= multiplier option
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 1 run tellraw @s [{"text":"[温馨提示]","color":"aqua"},{"text":"这是你的第","color":"white"},{"score":{"objective":"death1","name": "*"},"color":"aqua"},{"text":"次死亡，下一次死亡需要喝","color":"white"},{"score":{"objective":"ml","name": "*"},"color":"aqua"},{"text":"mL水，小心一点哦~","color":"white"}]
execute as @a if score @s death matches 1.. if score @s punishmethod matches 0 run scoreboard players remove @s death 1

#AT挑战惩罚部分
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score @s deepthroat matches 1 if score @s anal matches 1 run execute store result score random option run random value 1..15
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score @s deepthroat matches 45221 run execute store result score random option run random value 7..15
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score @s anal matches 45221 run execute store result score random option run random value 1..6
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 1..3 run scoreboard players set @s temp 45
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 4 run scoreboard players set @s temp 10
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 5..6 run scoreboard players set @s temp 20
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 7..11 run scoreboard players set @s temp 60
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 12..13 run scoreboard players set @s temp 20
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 14..15 run scoreboard players set @s temp 1
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 run scoreboard players operation @s temp *= @s multiplier
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 run scoreboard players operation @s temp /= multiplier option
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 1..3 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"为假阳具深喉","color":"white"},{"score":{"objective":"temp","name": "*"},"color":"aqua"},{"text":"次，嘴唇碰到蛋蛋算一次，过程中不能将假阳具抽出超过其1/2的长度","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 4 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"累计让假阳具完全插入喉咙","color":"white"},{"score":{"objective":"temp","name": "*"},"color":"aqua"},{"text":"秒，嘴唇碰到蛋蛋后5秒才开始计时，可以暂停计时进行呼吸，但是不能将假阳具抽出超过其1/2的长度","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 5..6 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"以至少100BPM的速度肏喉咙","color":"white"},{"score":{"objective":"temp","name": "*"},"color":"aqua"},{"text":"次，嘴唇碰到蛋蛋算一次，过程中要全进全出，停顿不能超过5秒钟","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 7..11 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"任意位置和姿势，用假阳具肏后穴","color":"white"},{"score":{"objective":"temp","name": "*"},"color":"aqua"},{"text":"次，全出全入算一次，停顿不能超过3秒","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 12..13 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"蹲在地上，将假阳具全部插入后穴，然后松开手保持假阳具在后穴中","color":"white"},{"score":{"objective":"temp","name": "*"},"color":"aqua"},{"text":"秒，假阳具不能掉出来超过其1/3的长度","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 if score random option matches 14..15 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"任意位置和姿势，任意速度用假阳具肏后穴，迅速假阳具从后穴中拔出来，使后穴张开至少","color":"white"},{"score":{"objective":"temp","name": "*"},"color":"aqua"},{"text":"秒，可以用手在不直接接触后穴的情况下拉开","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 0 run execute store result score random option run random value 0..9
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 0 run tellraw @s [{"text":"[死亡惩罚]","color":"dark_red"},{"text":"你掷出了","color":"white"},{"score":{"objective":"option","name":"random"},"color":"gold"},{"text":"，请完成任务~ 倍增器数值为","color":"white"},{"score":{"objective":"multiplier","name": "*"},"color":"aqua"},{"text":"/10倍","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 run title @s subtitle [{"text":"正在为你抽取惩罚，已发布在聊天栏","color":"white"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 run title @s title [{"text":"死亡惩罚","color":"dark_red"}]
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 run execute store result score random option run random value 3..10
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 run scoreboard players operation @s multiplier += random option
execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 if score @s customroulette matches 1 run tellraw @s [{"text":"[温馨提示]","color":"aqua"},{"text":"这是你的第","color":"white"},{"score":{"objective":"death1","name":"*"},"color":"aqua"},{"text":"次死亡，当前倍增器数值为","color":"white"},{"score":{"objective":"multiplier","name": "*"},"color":"aqua"},{"text":"/10倍，小心一点哦~","color":"white"}]

execute as @a if score @s death matches 1.. unless score @s punishmethod matches 0 run scoreboard players remove @s death 1

#额外任务检测部分
execute if score extra option matches 1.. if entity @a[advancements={nether/root=true}] if score 抵达地狱 renwu matches -1 run tellraw @a [{"text":"[!]","color":"gold"},{"text":"抵达地狱额外任务已完成！","color":"white"}]
execute if score extra option matches 1.. as @a at @s if entity @a[advancements={nether/root=true}] if score 抵达地狱 renwu matches -1 run playsound entity.firework_rocket.blast player @a ~ ~ ~
execute if score extra option matches 1.. if entity @a[advancements={nether/root=true}] run scoreboard players reset 抵达地狱 renwu

execute if score extra option matches 2.. if entity @a[advancements={nether/find_fortress=true}] if score 进入要塞 renwu matches -1 run tellraw @a [{"text":"[!]","color":"gold"},{"text":"进入要塞额外任务已完成！","color":"white"}]
execute if score extra option matches 2.. as @a at @s if entity @a[advancements={nether/find_fortress=true}] if score 进入要塞 renwu matches -1 run playsound entity.firework_rocket.blast player @a ~ ~ ~
execute if score extra option matches 2.. if entity @a[advancements={nether/find_fortress=true}] run scoreboard players reset 进入要塞 renwu

execute if score extra option matches 3.. if entity @a[advancements={end/kill_dragon=true}] if score 击杀末影龙 renwu matches -1 run tellraw @a [{"text":"[!]","color":"gold"},{"text":"击杀末影龙额外任务已完成！","color":"white"}]
execute if score extra option matches 3.. as @a at @s if entity @a[advancements={end/kill_dragon=true}] if score 击杀末影龙 renwu matches -1 run playsound entity.firework_rocket.blast player @a ~ ~ ~
execute if score extra option matches 3.. if entity @a[advancements={end/kill_dragon=true}] run scoreboard players reset 击杀末影龙 renwu

execute if score extra option matches 4.. if entity @a[advancements={end/elytra=true}] if score 找到鞘翅 renwu matches -1 run tellraw @a [{"text":"[!]","color":"gold"},{"text":"找到鞘翅额外任务已完成！","color":"white"}]
execute if score extra option matches 4.. as @a at @s if entity @a[advancements={end/elytra=true}] if score 找到鞘翅 renwu matches -1 run playsound entity.firework_rocket.blast player @a ~ ~ ~
execute if score extra option matches 4.. if entity @a[advancements={end/elytra=true}] run scoreboard players reset 找到鞘翅 renwu

execute if score extra option matches 5.. if entity @a[advancements={bc:bc_challenge/kill_wither=true}] if score 击杀凋零 renwu matches -1 run tellraw @a [{"text":"[!]","color":"gold"},{"text":"击杀凋零额外任务已完成！","color":"white"}]
execute if score extra option matches 5.. as @a at @s if entity @a[advancements={bc_challenge/kill_wither=true}] if score 击杀凋零 renwu matches -1 run playsound entity.firework_rocket.blast player @a ~ ~ ~
execute if score extra option matches 5.. if entity @a[advancements={bc:bc_challenge/kill_wither=true}] run scoreboard players reset 击杀凋零 renwu

#额外任务分割线删除和游戏结束检测
execute unless score 金锭收集任务 renwu matches 1.. unless score 钻石收集任务 renwu matches 1.. unless score 铁块收集任务 renwu matches 1.. unless score 煤炭块收集任务 renwu matches 1.. unless score 青金石块收集任务 renwu matches 1.. unless score 红石块收集任务 renwu matches 1.. run scoreboard players reset ----额外任务---- renwu
execute unless score 抵达地狱 renwu matches -1 unless score 进入要塞 renwu matches -1 unless score 击杀末影龙 renwu matches -1 unless score 找到鞘翅 renwu matches -1 unless score 击杀凋零 renwu matches -1 run scoreboard players reset ----额外任务---- renwu
execute unless score 金锭收集任务 renwu matches 1.. unless score 钻石收集任务 renwu matches 1.. unless score 铁块收集任务 renwu matches 1.. unless score 煤炭块收集任务 renwu matches 1.. unless score 青金石块收集任务 renwu matches 1.. unless score 红石块收集任务 renwu matches 1.. unless score 抵达地狱 renwu matches -1 unless score 进入要塞 renwu matches -1 unless score 击杀末影龙 renwu matches -1 unless score 找到鞘翅 renwu matches -1 unless score 击杀凋零 renwu matches -1 if score start option matches 1 run function bc:finish