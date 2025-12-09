#say repair_broken_4
#$say repairing $(item_id) from $(broken_item_slot)

$execute if items entity @s $(broken_item_slot) minecraft:structure_block[minecraft:custom_data~{dbarr_equip_in:{}}] run function dbarr_tooltweak:repair/remodel_broken_armor_1 with storage dbarr:tmp
#$execute if items entity @s $(broken_item_slot) minecraft:structure_block[minecraft:custom_data~{dbarr_equip_in:{}}] run function dbarr_tooltweak:remodel_broken_armor_2

#$execute if items entity @s $(broken_item_slot) minecraft:structure_block[minecraft:custom_data~{dbarr_equip_in:{slot:"legs"}}] run item modify entity @s $(broken_item_slot) {function:"minecraft:set_components", components: {"minecraft:equippable":{"slot":"legs"}}}

$item modify entity @s $(broken_item_slot) {function:"minecraft:sequence", functions: [ {function:"minecraft:set_item", item:"$(item_id)"}, {function:"set_enchantments",enchantments:{"dbarr_tooltweak:broken":0}}, {function:"minecraft:set_components", components: {"!minecraft:enchantment_glint_override":{}}}] }
