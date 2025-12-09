#say get_dur_and_model_2
#$say item is $(item_id)
#$say max damage is $(item_durability)
#$say item slot is $(broken_item_slot)
#$say item dur is $(current_dur)
#$say delta is $(delta)

$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/leather run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:leather"}}}
$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/chainmail run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:chainmail"}}}
$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/copper run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:copper"}}}
$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/diamond run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:diamond"}}}
$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/gold run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:gold"}}}
$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/iron run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:iron"}}}
$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/netherite run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:netherite"}}}
$execute if items entity @s $(broken_item_slot) #dbarr_tooltweak:models/turtle run item modify entity @s $(broken_item_slot) {function:"minecraft:set_custom_data",tag:{dbarr_armorasset:{id:"minecraft:turtle_scute"}}}

$execute if data storage dbarr:tmp ext_equip_feet run item modify entity @s armor.feet {function:"minecraft:filtered", item_filter:{items:"$(item_id)", predicates:{"minecraft:damage":{durability:{max:$(delta)}}}}, on_pass: {function:"minecraft:sequence", functions:[{function:"minecraft:set_custom_data",tag:{dbarr_equip_in:{slot:"feet"}}},  {function:"minecraft:set_components", components: {"minecraft:equippable":{slot:"feet", damage_on_hurt:0}}}] }}

$execute if data storage dbarr:tmp ext_equip_legs run item modify entity @s armor.legs {function:"minecraft:filtered", item_filter:{items:"$(item_id)", predicates:{"minecraft:damage":{durability:{max:$(delta)}}}}, on_pass: {function:"minecraft:sequence", functions:[{function:"minecraft:set_custom_data",tag:{dbarr_equip_in:{slot:"legs"}}},  {function:"minecraft:set_components", components: {"minecraft:equippable":{slot:"legs", damage_on_hurt:0}}}] }}

$execute if data storage dbarr:tmp ext_equip_chest run item modify entity @s armor.chest {function:"minecraft:filtered", item_filter:{items:"$(item_id)", predicates:{"minecraft:damage":{durability:{max:$(delta)}}}}, on_pass: {function:"minecraft:sequence", functions:[{function:"minecraft:set_custom_data",tag:{dbarr_equip_in:{slot:"chest"}}},  {function:"minecraft:set_components", components: {"minecraft:equippable":{slot:"chest", damage_on_hurt:0}}}] }}

$execute if data storage dbarr:tmp ext_equip_head run item modify entity @s armor.head {function:"minecraft:filtered", item_filter:{items:"$(item_id)", predicates:{"minecraft:damage":{durability:{max:$(delta)}}}}, on_pass: {function:"minecraft:sequence", functions:[{function:"minecraft:set_custom_data",tag:{dbarr_equip_in:{slot:"head"}}},  {function:"minecraft:set_components", components: {"minecraft:equippable":{slot:"head", damage_on_hurt:0, asset_id:"minecraft:armadillo_scute"}}}] }}

$item modify entity @s $(broken_item_slot) {function:"minecraft:filtered", item_filter:{items:"$(item_id)", predicates:{"minecraft:damage":{durability:{max:$(delta)}}}}, on_pass: {function:"minecraft:sequence", functions: [{function:"minecraft:set_item", item:"minecraft:structure_block"}, {function:"set_enchantments",enchantments:{"dbarr_tooltweak:broken":1}}, {function:"minecraft:set_components", components: {"minecraft:max_damage":$(item_durability), "minecraft:max_stack_size":1, "minecraft:item_model":"$(item_id)", "minecraft:enchantment_glint_override":0b, "minecraft:rarity":"common"}}, {function:"minecraft:set_damage",damage:0}, {function:"minecraft:set_custom_data",tag:{dbarr_broken_tool:{"id": "$(item_id)"}, "dbarr_tooltweak_repairable":0}} ]}}
