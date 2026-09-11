advancement revoke @s only dimitris_smithing:trigger_break/item_wooden_shovel
#say "broke minecraft:wooden_shovel"

data modify storage dbarr:tmp item_id set value "minecraft:wooden_shovel"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:wooden_shovel"}

data remove storage dbarr:tmp item_id
