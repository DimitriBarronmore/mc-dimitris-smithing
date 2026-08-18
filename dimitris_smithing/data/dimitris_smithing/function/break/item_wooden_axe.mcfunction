advancement revoke @s only dimitris_smithing:trigger_break/item_wooden_axe
#say "broke minecraft:wooden_axe"

data modify storage dbarr:tmp item_id set value "minecraft:wooden_axe"
function dimitris_smithing:set_broken {item_id: "minecraft:wooden_axe"}

data remove storage dbarr:tmp item_id
