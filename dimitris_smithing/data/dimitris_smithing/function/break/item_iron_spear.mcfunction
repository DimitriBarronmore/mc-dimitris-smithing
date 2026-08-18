advancement revoke @s only dimitris_smithing:trigger_break/item_iron_spear
#say "broke minecraft:iron_spear"

data modify storage dbarr:tmp item_id set value "minecraft:iron_spear"
function dimitris_smithing:set_broken {item_id: "minecraft:iron_spear"}

data remove storage dbarr:tmp item_id
