execute as @a if items entity @s player.cursor *[repair_cost=15 | repair_cost=31 | repair_cost=63] run item modify entity @s player.cursor {type:"minecraft:set_components",components:{"minecraft:repair_cost":15},conditions:[]}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:all run function dbarr_tooltweak:ensure_repairable
