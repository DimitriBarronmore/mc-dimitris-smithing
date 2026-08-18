advancement revoke @s only dimitris_smithing:trigger_break/item_brush
#say "broke minecraft:brush"

data modify storage dbarr:tmp item_id set value "minecraft:brush"
function dimitris_smithing:set_broken {item_id: "minecraft:brush"}

data remove storage dbarr:tmp item_id
