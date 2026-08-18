summon minecraft:mannequin ~ ~ ~ {\
    Tags:["dbtemp.current"],\
    attributes: [{id:"minecraft:scale", base:0.0001d}],\
    active_effects:[{duration:-1,show_particles:0b,amplifier:1b,id:"minecraft:invisibility"}]\
    }

item replace entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand from entity @s weapon.mainhand

# Clear un-components.
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:equippable
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:attack_animation
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:tool
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:attribute_modifiers
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:attack_range
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:enchantments
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:piercing_weapon
# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.!minecraft:kinetic_weapon

# # Unstore enchantments.
# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:enchantments set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:enchantments

# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.minecraft:stored_enchantments

# # Re-copy components.
# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:equippable set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:equippable

# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:attack_animation set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:attack_animation

# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:tool set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:tool

# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:attribute_modifiers set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:attribute_modifiers

# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:attack_range set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:attack_range

# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:kinetic_weapon set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:kinetic_weapon

# execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:piercing_weapon set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:piercing_weapon

# data remove entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components.minecraft:custom_data.stored_components

## Reset the item's ID to be correct.
execute as @n[type=mannequin,tag=dbtemp.current] run \
    data modify entity @s equipment.mainhand.id set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_id

## Store the item's current damage into the stored damage component, so it's repaired with the damage it has now and not when it was broken.
execute as @n[type=mannequin,tag=dbtemp.current] run \
  data modify entity @s equipment.mainhand.components.minecraft:custom_data.stored_components.minecraft:damage set from entity @s equipment.mainhand.components.minecraft:damage

## Reset the item's components to be as they were.
execute as @n[type=mannequin,tag=dbtemp.current] run \
  data modify entity @s equipment.mainhand.components set from entity @s equipment.mainhand.components.minecraft:custom_data.stored_components

## Return item.
item replace entity @s weapon.mainhand from entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand

## Cleanup.
tp @n[type=mannequin,tag=dbtemp.current] ~ -100 ~
kill @n[type=mannequin,tag=dbtemp.current]
