advancement revoke @s only dbarr_tooltweak:repair_tick

execute if items entity @s player.cursor minecraft:structure_block[minecraft:custom_data~{dbarr_broken_tool:{}}, damage~{durability:{min:1}}] run function dbarr_tooltweak:repair/repair_broken_2c

execute if items entity @s weapon.mainhand minecraft:structure_block[minecraft:custom_data~{dbarr_broken_tool:{}}, damage~{durability:{min:1}}] run function dbarr_tooltweak:repair/repair_broken_2m

execute if items entity @s weapon.offhand minecraft:structure_block[minecraft:custom_data~{dbarr_broken_tool:{}}, damage~{durability:{min:1}}] run function dbarr_tooltweak:repair/repair_broken_2o

execute if items entity @s armor.head minecraft:structure_block[minecraft:custom_data~{dbarr_broken_tool:{}}, damage~{durability:{min:1}}] run function dbarr_tooltweak:repair/repair_broken_2h

execute if items entity @s armor.chest minecraft:structure_block[minecraft:custom_data~{dbarr_broken_tool:{}}, damage~{durability:{min:1}}] run function dbarr_tooltweak:repair/repair_broken_2ch

execute if items entity @s armor.legs minecraft:structure_block[minecraft:custom_data~{dbarr_broken_tool:{}}, damage~{durability:{min:1}}] run function dbarr_tooltweak:repair/repair_broken_2l

execute if items entity @s armor.feet minecraft:structure_block[minecraft:custom_data~{dbarr_broken_tool:{}}, damage~{durability:{min:1}}] run function dbarr_tooltweak:repair/repair_broken_2f

