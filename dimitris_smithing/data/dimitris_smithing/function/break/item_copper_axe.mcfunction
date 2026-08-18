advancement revoke @s only dimitris_smithing:trigger_break/item_copper_axe
#say "broke minecraft:copper_axe"

data modify storage dbarr:tmp item_id set value "minecraft:copper_axe"
function dimitris_smithing:set_broken {item_id: "minecraft:copper_axe"}

data remove storage dbarr:tmp item_id
