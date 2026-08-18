advancement revoke @s only dimitris_smithing:trigger_break/item_copper_pickaxe
#say "broke minecraft:copper_pickaxe"

data modify storage dbarr:tmp item_id set value "minecraft:copper_pickaxe"
function dimitris_smithing:set_broken {item_id: "minecraft:copper_pickaxe"}

data remove storage dbarr:tmp item_id
