advancement revoke @s only dimitris_smithing:trigger_break/item_golden_hoe
#say "broke minecraft:golden_hoe"

data modify storage dbarr:tmp item_id set value "minecraft:golden_hoe"
function dimitris_smithing:break_and_repair/set_broken {item_id: "minecraft:golden_hoe"}

data remove storage dbarr:tmp item_id
