#菜单：有数值变化的时候重新展示菜单
scoreboard players enable @a game
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a count
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a count1
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a punishmethod
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a deepthroat
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a anal
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a keepinventory
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a diamond
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a gold_ingot
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a iron_block
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a coal_block
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a lapis_block
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a redstone_block
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a difficulty
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a heart
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a hardcore
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a hardcoretime
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a ml
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a multiplier
execute if score menu1 option matches 1 run scoreboard players set menu option 1
execute if score start option matches 0 run execute store success score menu1 option run scoreboard players enable @a customroulette
execute if score menu1 option matches 1 run scoreboard players set menu option 1

#菜单：内容不能同时取消
execute as @a if score @s deepthroat matches 0 if score @s anal matches 0 run scoreboard players set @s punishmethod 0
execute as @a if score @s punishmethod matches 0 run scoreboard players set @s deepthroat 1
execute as @a if score @s punishmethod matches 0 run scoreboard players set @s anal 1
execute as @a if score @s punishmethod matches 0 run scoreboard players set @s customroulette 1
#菜单：数值超过阈限
execute as @a if score @s ml matches ..90 run scoreboard players set @s ml 100
execute as @a if score @s multiplier matches ..10 run scoreboard players set @s multiplier 11
execute as @a if score @s heart matches 41.. run scoreboard players set @s heart 40
execute as @a if score @s heart matches ..0 run scoreboard players set @s heart 1
execute as @a if score @s hardcoretime matches ..9 run scoreboard players set @s hardcoretime 10
execute as @a if score @s diamond matches ..-1 run scoreboard players set @s diamond 0
execute as @a if score @s gold_ingot matches ..-1 run scoreboard players set @s gold_ingot 0
execute as @a if score @s iron_block matches ..-1 run scoreboard players set @s iron_block 0
execute as @a if score @s coal_block matches ..-1 run scoreboard players set @s coal_block 0
execute as @a if score @s lapis_block matches ..-1 run scoreboard players set @s lapis_block 0
execute as @a if score @s redstone_block matches ..-1 run scoreboard players set @s redstone_block 0

execute if score start option matches 0 if score menu option matches 1 run function bc:menu
