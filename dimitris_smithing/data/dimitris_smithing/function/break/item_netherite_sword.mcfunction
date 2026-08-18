advancement revoke @s only dimitris_smithing:trigger_break/item_netherite_sword
#say "broke minecraft:netherite_sword"

data modify storage dbarr:tmp item_id set value "minecraft:netherite_sword"
function dimitris_smithing:set_broken {item_id: "minecraft:netherite_sword"}

data remove storage dbarr:tmp item_id
