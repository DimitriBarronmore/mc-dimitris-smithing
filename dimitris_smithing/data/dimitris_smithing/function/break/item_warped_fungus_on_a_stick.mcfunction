advancement revoke @s only dimitris_smithing:trigger_break/item_warped_fungus_on_a_stick
#say "broke minecraft:warped_fungus_on_a_stick"

data modify storage dbarr:tmp item_id set value "minecraft:warped_fungus_on_a_stick"
function dimitris_smithing:set_broken {item_id: "minecraft:warped_fungus_on_a_stick"}

data remove storage dbarr:tmp item_id
