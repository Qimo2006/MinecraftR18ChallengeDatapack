#标题消除
title @a times 1s 10s 1s
title @a title {"text":"","color":"white"}

#游戏规则初始化
difficulty peaceful
defaultgamemode adventure
gamerule doImmediateRespawn true
gamemode adventure @a
gamerule keepInventory false
kill @a
gamerule keepInventory true
advancement revoke @a everything

#计分板初始化
scoreboard objectives add option dummy
scoreboard objectives add renwu dummy [{"text":"---","color":"white"},{"text":"任务","color":"gold"},{"text":"---","color":"white"}]
scoreboard objectives add get dummy
scoreboard objectives add punishmethod trigger
scoreboard objectives add death deathCount
scoreboard objectives add death1 deathCount
scoreboard objectives add time dummy
scoreboard objectives add count trigger
scoreboard objectives add count1 trigger
scoreboard objectives add ml trigger
scoreboard objectives add multiplier trigger
scoreboard objectives add temp dummy
scoreboard objectives add extreme dummy
scoreboard objectives add keepinventory trigger
scoreboard objectives add deepthroat trigger
scoreboard objectives add anal trigger
scoreboard objectives add difficulty trigger
scoreboard objectives add hardcore trigger
scoreboard objectives add hardcoretime trigger
scoreboard objectives add diamond trigger
scoreboard objectives add gold_ingot trigger
scoreboard objectives add iron_block trigger
scoreboard objectives add coal_block trigger
scoreboard objectives add lapis_block trigger
scoreboard objectives add redstone_block trigger
scoreboard objectives add heart trigger
scoreboard objectives add customroulette trigger
scoreboard objectives add ml1 dummy
scoreboard objectives add game trigger

#TAB和侧边栏初始化
scoreboard objectives setdisplay sidebar renwu
scoreboard objectives setdisplay list death1

#侧边栏标题和屏下栏动画初始化
scoreboard players set sidebar option 0
scoreboard players set actionbar option 0
scoreboard players set hour option 0
scoreboard players set minute option 0
scoreboard players set second option 0

#计分项目初始化
scoreboard players set extra option 1
scoreboard players set random option 0
scoreboard players set multiplier option 10
scoreboard players set test option 0
scoreboard players set start option 0
scoreboard players set game option 0
scoreboard players set menu option 1
scoreboard players set menu1 option 0

scoreboard players set @a count 1
scoreboard players set @a count1 0
scoreboard players set @a time 0
scoreboard players set @a punishmethod 0
scoreboard players set @a deepthroat 1
scoreboard players set @a anal 1
scoreboard players set @a keepinventory 1
scoreboard players set @a difficulty 2
scoreboard players set @a hardcore 0
scoreboard players set @a hardcoretime 1800
scoreboard players set @a diamond 30
scoreboard players set @a gold_ingot 60
scoreboard players set @a iron_block 12
scoreboard players set @a coal_block 25
scoreboard players set @a lapis_block 10
scoreboard players set @a redstone_block 20
scoreboard players set @a ml 200
scoreboard players set @a multiplier 30
scoreboard players set @a heart 20
scoreboard players set @a customroulette 1
scoreboard players set @a game -1