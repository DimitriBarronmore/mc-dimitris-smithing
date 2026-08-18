advancement revoke @s only dimitris_smithing:trigger_break/item_iron_hoe
#say "broke minecraft:iron_hoe"

data modify storage dbarr:tmp item_id set value "minecraft:iron_hoe"
function dimitris_smithing:set_broken {item_id: "minecraft:iron_hoe"}

data remove storage dbarr:tmp item_id
