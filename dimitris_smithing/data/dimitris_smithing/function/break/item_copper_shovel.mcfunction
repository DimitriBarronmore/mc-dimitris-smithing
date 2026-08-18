advancement revoke @s only dimitris_smithing:trigger_break/item_copper_shovel
#say "broke minecraft:copper_shovel"

data modify storage dbarr:tmp item_id set value "minecraft:copper_shovel"
function dimitris_smithing:set_broken {item_id: "minecraft:copper_shovel"}

data remove storage dbarr:tmp item_id
