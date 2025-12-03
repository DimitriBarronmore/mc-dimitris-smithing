execute as @a if items entity @s player.cursor minecraft:trident unless items entity @s player.cursor minecraft:trident[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#dbarr_tooltweak:prismarine_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:trident"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#dbarr_tooltweak:prismarine_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_axe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:gold_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_pickaxe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:gold_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_shovel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:gold_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_sword"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:gold_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_hoe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:gold_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:tools_golden unless items entity @s player.cursor #dbarr_tooltweak:tools_golden[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:gold_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:carrot_on_a_stick unless items entity @s player.cursor minecraft:carrot_on_a_stick[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:carrot"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:carrot_on_a_stick"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:carrot"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:shears unless items entity @s player.cursor minecraft:shears[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:shears"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:stone_axe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:stone_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:stone_pickaxe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:stone_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:stone_shovel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:stone_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:stone_sword"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:stone_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:stone_hoe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:stone_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:tools_stone unless items entity @s player.cursor #dbarr_tooltweak:tools_stone[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:stone_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:shield unless items entity @s player.cursor minecraft:shield[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:shield"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:brush unless items entity @s player.cursor minecraft:brush[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:feather"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:brush"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:feather"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:fishing_rod unless items entity @s player.cursor minecraft:fishing_rod[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:string"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:fishing_rod"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:string"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_axe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_pickaxe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_shovel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_sword"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_hoe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:tools_iron unless items entity @s player.cursor #dbarr_tooltweak:tools_iron[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:wooden_axe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:wooden_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:wooden_pickaxe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:wooden_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:wooden_shovel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:wooden_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:wooden_sword"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:wooden_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:wooden_hoe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:wooden_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:tools_wooden unless items entity @s player.cursor #dbarr_tooltweak:tools_wooden[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:wooden_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:mace unless items entity @s player.cursor minecraft:mace[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:breeze_rod"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:mace"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:breeze_rod"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:crossbow unless items entity @s player.cursor minecraft:crossbow[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:string"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:crossbow"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:string"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:flint_and_steel unless items entity @s player.cursor minecraft:flint_and_steel[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:flint_and_steel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:iron_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_axe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:diamond_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_pickaxe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:diamond_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_shovel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:diamond_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_sword"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:diamond_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_hoe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:diamond_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:tools_diamond unless items entity @s player.cursor #dbarr_tooltweak:tools_diamond[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:diamond_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:warped_fungus_on_a_stick unless items entity @s player.cursor minecraft:warped_fungus_on_a_stick[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:warped_fungus"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:warped_fungus_on_a_stick"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:warped_fungus"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_axe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:copper_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_pickaxe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:copper_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_shovel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:copper_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_sword"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:copper_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_hoe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:copper_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:tools_copper unless items entity @s player.cursor #dbarr_tooltweak:tools_copper[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:copper_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:bow unless items entity @s player.cursor minecraft:bow[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:string"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:bow"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"minecraft:string"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_axe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:netherite_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_pickaxe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:netherite_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_shovel"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:netherite_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_sword"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:netherite_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_hoe"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:netherite_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor #dbarr_tooltweak:tools_netherite unless items entity @s player.cursor #dbarr_tooltweak:tools_netherite[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:netherite_tool_materials"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:turtle_helmet unless items entity @s player.cursor minecraft:turtle_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_turtle_helmet"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:turtle_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_turtle_helmet"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:netherite_helmet unless items entity @s player.cursor minecraft:netherite_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:netherite_chestplate unless items entity @s player.cursor minecraft:netherite_chestplate[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_chestplate"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:netherite_leggings unless items entity @s player.cursor minecraft:netherite_leggings[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_leggings"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:netherite_boots unless items entity @s player.cursor minecraft:netherite_boots[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:netherite_boots"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_netherite_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:golden_helmet unless items entity @s player.cursor minecraft:golden_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:golden_chestplate unless items entity @s player.cursor minecraft:golden_chestplate[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_chestplate"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:golden_leggings unless items entity @s player.cursor minecraft:golden_leggings[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_leggings"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:golden_boots unless items entity @s player.cursor minecraft:golden_boots[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:golden_boots"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_gold_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:diamond_helmet unless items entity @s player.cursor minecraft:diamond_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:diamond_chestplate unless items entity @s player.cursor minecraft:diamond_chestplate[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_chestplate"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:diamond_leggings unless items entity @s player.cursor minecraft:diamond_leggings[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_leggings"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:diamond_boots unless items entity @s player.cursor minecraft:diamond_boots[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:diamond_boots"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_diamond_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:chainmail_helmet unless items entity @s player.cursor minecraft:chainmail_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:chainmail_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:chainmail_chestplate unless items entity @s player.cursor minecraft:chainmail_chestplate[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:chainmail_chestplate"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:chainmail_leggings unless items entity @s player.cursor minecraft:chainmail_leggings[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:chainmail_leggings"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:chainmail_boots unless items entity @s player.cursor minecraft:chainmail_boots[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:chainmail_boots"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_chain_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:copper_helmet unless items entity @s player.cursor minecraft:copper_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:copper_chestplate unless items entity @s player.cursor minecraft:copper_chestplate[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_chestplate"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:copper_leggings unless items entity @s player.cursor minecraft:copper_leggings[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_leggings"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:copper_boots unless items entity @s player.cursor minecraft:copper_boots[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:copper_boots"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_copper_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:iron_helmet unless items entity @s player.cursor minecraft:iron_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:iron_chestplate unless items entity @s player.cursor minecraft:iron_chestplate[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_chestplate"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:iron_leggings unless items entity @s player.cursor minecraft:iron_leggings[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_leggings"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:iron_boots unless items entity @s player.cursor minecraft:iron_boots[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:iron_boots"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_iron_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:leather_helmet unless items entity @s player.cursor minecraft:leather_helmet[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:leather_helmet"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:leather_chestplate unless items entity @s player.cursor minecraft:leather_chestplate[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:leather_chestplate"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:leather_leggings unless items entity @s player.cursor minecraft:leather_leggings[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:leather_leggings"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:leather_boots unless items entity @s player.cursor minecraft:leather_boots[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}

execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="minecraft:leather_boots"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"#minecraft:repairs_leather_armor"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}
