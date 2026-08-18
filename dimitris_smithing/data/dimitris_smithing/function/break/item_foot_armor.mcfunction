advancement revoke @s only dimitris_smithing:trigger_break/item_foot_armor
#say "broke #minecraft:foot_armor"
data modify storage dbarr:tmp armor_slot set value "armor.feet"
data modify storage dbarr:tmp item_id set value "#minecraft:foot_armor"
function dimitris_smithing:set_broken {item_id: "#minecraft:foot_armor"}
data remove storage dbarr:tmp armor_slot
data remove storage dbarr:tmp item_id
