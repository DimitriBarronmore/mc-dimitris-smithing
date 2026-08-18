summon minecraft:mannequin ~ ~ ~ {\
    Tags:["dbtemp.current"],\
    attributes: [{id:"minecraft:scale", base:0.0001d}],\
    active_effects:[{duration:-1,show_particles:0b,amplifier:1b,id:"minecraft:invisibility"}]\
    }

$item replace entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand from entity @s $(item_slot)

## Reset the item's ID to be correct.
execute as @n[type=mannequin,tag=dbtemp.current] run \
    data modify entity @s equipment.mainhand.id set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_id

## Store the item's current damage into the stored damage component, so it's repaired with the damage it has now and not when it was broken.
data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:damage
execute as @n[type=mannequin,tag=dbtemp.current] if data entity @s equipment.mainhand.components.minecraft:damage run \
  data modify entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:damage set from entity @s equipment.mainhand.components.minecraft:damage

## Reset the item's components to be as they were.
execute as @n[type=mannequin,tag=dbtemp.current] run \
  data modify entity @s equipment.mainhand.components set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components

## Return item.
$item replace entity @s $(item_slot) from entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand

## Cleanup.
tp @n[type=mannequin,tag=dbtemp.current] ~ -100 ~
kill @n[type=mannequin,tag=dbtemp.current]
