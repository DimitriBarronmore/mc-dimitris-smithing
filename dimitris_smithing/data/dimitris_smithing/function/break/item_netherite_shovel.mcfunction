advancement revoke @s only dimitris_smithing:trigger_break/item_netherite_shovel
#say "broke minecraft:netherite_shovel"

data modify storage dbarr:tmp item_id set value "minecraft:netherite_shovel"
function dimitris_smithing:set_broken {item_id: "minecraft:netherite_shovel"}

data remove storage dbarr:tmp item_id
