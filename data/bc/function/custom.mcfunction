#设置初始化任务目标及惩罚
$scoreboard players set 钻石收集任务 renwu $(diamond)
$scoreboard players set 铁块收集任务 renwu $(iron_block)
$scoreboard players set 煤炭块收集任务 renwu $(coal_block)
$scoreboard players set 青金石块收集任务 renwu $(lapis_block)
$scoreboard players set 红石块收集任务 renwu $(redstone_block)
$scoreboard players set 金锭收集任务 renwu $(gold_ingot)
$scoreboard players set @a ml $(ml)
$scoreboard players set @a multiplier $(multiplier)

$execute if score @s hardcore matches 1 run schedule function bc:hardcore $(hardcoretime)s
$execute as @a run attribute @s minecraft:max_health base set $(heart)

defaultgamemode spectator
gamemode survival @a
execute if score @s difficulty matches 1 run difficulty easy
execute if score @s difficulty matches 2 run difficulty normal
execute if score @s difficulty matches 3 run difficulty hard

function bc:extra with storage bc:start_setting

