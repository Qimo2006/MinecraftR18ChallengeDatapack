#每tick设置不同的任务栏
execute if score sidebar option matches 0 run scoreboard objectives modify renwu displayname [{"text":"","color":"white"},{"text":"任务","color":"gold"},{"text":"","color":"white"}]
execute if score sidebar option matches 1 run scoreboard objectives modify renwu displayname [{"text":"-","color":"white"},{"text":"任务","color":"gold"},{"text":"-","color":"white"}]
execute if score sidebar option matches 2 run scoreboard objectives modify renwu displayname [{"text":"--","color":"white"},{"text":"任务","color":"gold"},{"text":"--","color":"white"}]
execute if score sidebar option matches 3 run scoreboard objectives modify renwu displayname [{"text":"---","color":"white"},{"text":"任务","color":"gold"},{"text":"---","color":"white"}]
execute if score sidebar option matches 4 run scoreboard objectives modify renwu displayname [{"text":"--","color":"white"},{"text":"任务","color":"gold"},{"text":"--","color":"white"}]
execute if score sidebar option matches 5 run scoreboard objectives modify renwu displayname [{"text":"-","color":"white"},{"text":"任务","color":"gold"},{"text":"-","color":"white"}]
scoreboard players add sidebar option 1
execute if score sidebar option matches 6 run scoreboard players set sidebar option 0