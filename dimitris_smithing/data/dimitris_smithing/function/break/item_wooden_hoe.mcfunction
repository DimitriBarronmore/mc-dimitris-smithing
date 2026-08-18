advancement revoke @s only dimitris_smithing:trigger_break/item_wooden_hoe
#say "broke minecraft:wooden_hoe"

data modify storage dbarr:tmp item_id set value "minecraft:wooden_hoe"
function dimitris_smithing:set_broken {item_id: "minecraft:wooden_hoe"}

data remove storage dbarr:tmp item_id
