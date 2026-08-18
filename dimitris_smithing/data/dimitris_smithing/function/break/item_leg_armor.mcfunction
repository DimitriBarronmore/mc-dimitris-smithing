advancement revoke @s only dimitris_smithing:trigger_break/item_leg_armor
#say "broke #minecraft:leg_armor"
data modify storage dbarr:tmp armor_slot set value armor.leg
data modify storage dbarr:tmp item_id set value "#minecraft:leg_armor"
function dimitris_smithing:set_broken {item_id: "#minecraft:leg_armor"}
data remove storage dbarr:tmp armor_slot
data remove storage dbarr:tmp item_id
