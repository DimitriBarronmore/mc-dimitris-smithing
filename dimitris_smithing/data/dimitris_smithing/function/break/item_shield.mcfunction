advancement revoke @s only dimitris_smithing:trigger_break/item_shield
#say "broke minecraft:shield"

data modify storage dbarr:tmp item_id set value "minecraft:shield"
function dimitris_smithing:set_broken {item_id: "minecraft:shield"}

data remove storage dbarr:tmp item_id
