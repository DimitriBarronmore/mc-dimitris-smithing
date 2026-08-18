advancement revoke @s only dimitris_smithing:trigger_break/item_head_armor
#say "broke #minecraft:head_armor"
data modify storage dbarr:tmp armor_slot set value armor.head
data modify storage dbarr:tmp item_id set value "#minecraft:head_armor"
function dimitris_smithing:set_broken {item_id: "#minecraft:head_armor"}
data remove storage dbarr:tmp armor_slot
data remove storage dbarr:tmp item_id
