advancement revoke @s only dimitris_smithing:trigger_break/item_wooden_sword
#say "broke minecraft:wooden_sword"

data modify storage dbarr:tmp item_id set value "minecraft:wooden_sword"
function dimitris_smithing:set_broken {item_id: "minecraft:wooden_sword"}

data remove storage dbarr:tmp item_id
