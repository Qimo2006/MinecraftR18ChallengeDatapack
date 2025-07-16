#菜单使用许可
scoreboard players enable @a game

#进入游戏显示的菜单

tellraw @a {"text":"\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"}
tellraw @a [{"text":"-----------------------------------------------------","color":"white"}]
tellraw @a [{"hover_event":{"action":"show_text","value":{"text":"By Qimo","color":"aqua"}},"text":"               MC挑战任务     模式选择","color":"gold"}]
tellraw @a [{"text":"Tip:鼠标放在文字上可以看到相关说明","color":"gray"}]

tellraw @a {"text":"[普通模式]","color":"white","click_event":{"action":"run_command","command":"/trigger game set 1"}}
tellraw @a [{"text":"-----------------------------------------------------","color":"white"}]

