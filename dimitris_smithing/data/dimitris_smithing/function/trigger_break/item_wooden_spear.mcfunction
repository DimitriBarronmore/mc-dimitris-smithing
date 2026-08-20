advancement revoke @s only dimitris_smithing:trigger_break/item_wooden_spear
#say "broke minecraft:wooden_spear"

data modify storage dbarr:tmp item_id set value "minecraft:wooden_spear"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:wooden_spear"}

data remove storage dbarr:tmp item_id
