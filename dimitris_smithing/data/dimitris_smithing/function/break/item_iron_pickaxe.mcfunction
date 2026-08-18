advancement revoke @s only dimitris_smithing:trigger_break/item_iron_pickaxe
#say "broke minecraft:iron_pickaxe"

data modify storage dbarr:tmp item_id set value "minecraft:iron_pickaxe"
function dimitris_smithing:set_broken {item_id: "minecraft:iron_pickaxe"}

data remove storage dbarr:tmp item_id
