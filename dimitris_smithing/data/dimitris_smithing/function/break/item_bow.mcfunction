advancement revoke @s only dimitris_smithing:trigger_break/item_bow
#say "broke minecraft:bow"

data modify storage dbarr:tmp item_id set value "minecraft:bow"
function dimitris_smithing:set_broken {item_id: "minecraft:bow"}

data remove storage dbarr:tmp item_id
