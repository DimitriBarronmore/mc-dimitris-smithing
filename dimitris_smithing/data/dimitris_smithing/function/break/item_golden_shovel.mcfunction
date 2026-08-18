advancement revoke @s only dimitris_smithing:trigger_break/item_golden_shovel
#say "broke minecraft:golden_shovel"

data modify storage dbarr:tmp item_id set value "minecraft:golden_shovel"
function dimitris_smithing:set_broken {item_id: "minecraft:golden_shovel"}

data remove storage dbarr:tmp item_id
