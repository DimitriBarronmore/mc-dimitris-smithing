advancement revoke @s only dimitris_smithing:trigger_break/item_mace
#say "broke minecraft:mace"

data modify storage dbarr:tmp item_id set value "minecraft:mace"
function dimitris_smithing:set_broken {item_id: "minecraft:mace"}

data remove storage dbarr:tmp item_id
