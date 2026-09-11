#say remodel_armor_2
#$say slot is $(armor_slot)
#$say asset is $(armor_asset)

$item modify entity @s $(broken_item_slot) {type:"minecraft:set_components", components: {"minecraft:equippable":{"slot":"$(armor_slot)", asset_id:"$(armor_asset)"}}}
