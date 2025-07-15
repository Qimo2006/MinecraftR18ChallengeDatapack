scoreboard players set @s count1 0
execute store result storage bc:start_setting diamond int 1 run scoreboard players get @s diamond
execute store result storage bc:start_setting iron_block int 1 run scoreboard players get @s iron_block
execute store result storage bc:start_setting coal_block int 1 run scoreboard players get @s coal_block
execute store result storage bc:start_setting lapis_block int 1 run scoreboard players get @s lapis_block
execute store result storage bc:start_setting redstone_block int 1 run scoreboard players get @s redstone_block
execute store result storage bc:start_setting gold_ingot int 1 run scoreboard players get @s gold_ingot
execute store result storage bc:start_setting ml int 1 run scoreboard players get @s ml
execute store result storage bc:start_setting multiplier int 1 run scoreboard players get @s multiplier
execute store result storage bc:start_setting hardcoretime int 1 run scoreboard players get @s hardcoretime
execute store result storage bc:start_setting heart int 1 run scoreboard players get @s heart
function bc:custom with storage bc:start_setting