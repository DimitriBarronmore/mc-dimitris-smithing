advancement revoke @s only dimitris_smithing:trigger_break/item_golden_spear
#say "broke minecraft:golden_spear"

data modify storage dbarr:tmp item_id set value "minecraft:golden_spear"
function dimitris_smithing:set_broken {item_id: "minecraft:golden_spear"}

data remove storage dbarr:tmp item_id
