advancement revoke @s only dimitris_smithing:trigger_break/item_chest_armor
#say "broke #minecraft:chest_armor"
data modify storage dbarr:tmp armor_slot set value "armor.chest"
data modify storage dbarr:tmp item_id set value "#minecraft:chest_armor"
function dimitris_smithing:set_broken {item_id: "#minecraft:chest_armor"}
data remove storage dbarr:tmp armor_slot
data remove storage dbarr:tmp item_id
