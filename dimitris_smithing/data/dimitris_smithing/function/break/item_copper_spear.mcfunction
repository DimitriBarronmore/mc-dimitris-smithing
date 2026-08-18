advancement revoke @s only dimitris_smithing:trigger_break/item_copper_spear
#say "broke minecraft:copper_spear"

data modify storage dbarr:tmp item_id set value "minecraft:copper_spear"
function dimitris_smithing:set_broken {item_id: "minecraft:copper_spear"}

data remove storage dbarr:tmp item_id
