advancement revoke @s only dimitris_smithing:trigger_break/item_carrot_on_a_stick
#say "broke minecraft:carrot_on_a_stick"

data modify storage dbarr:tmp item_id set value "minecraft:carrot_on_a_stick"
function dimitris_smithing:set_broken {item_id: "minecraft:carrot_on_a_stick"}

data remove storage dbarr:tmp item_id
