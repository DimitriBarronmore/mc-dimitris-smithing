advancement revoke @s only dimitris_smithing:trigger_break/item_iron_shovel
#say "broke minecraft:iron_shovel"

data modify storage dbarr:tmp item_id set value "minecraft:iron_shovel"
function dimitris_smithing:set_broken {item_id: "minecraft:iron_shovel"}

data remove storage dbarr:tmp item_id
