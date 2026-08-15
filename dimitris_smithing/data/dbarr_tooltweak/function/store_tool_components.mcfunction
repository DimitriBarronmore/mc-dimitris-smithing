summon minecraft:mannequin ~ ~ ~ {\
    Tags:["dbtemp.current"],\
    attributes: [{id:"minecraft:scale", base:0.0001d}],\
    active_effects:[{duration:-1,show_particles:0b,amplifier:1b,id:"minecraft:invisibility"}]\
    }
item replace entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand from entity @s weapon.mainhand

execute at @s as @n[type=mannequin,tag=dbtemp.current] run loot replace entity @s weapon.mainhand fish {\
  "type": "minecraft:empty",\
  "pools": [\
    {\
      "rolls": 1,\
      "entries": [\
        {\
          "type": "minecraft:item",\
          "name": "minecraft:wooden_sword"\
        }\
      ],\
      "modifier": {\
        "type": "minecraft:copy_components",\
        "source": "tool",\
        "include": [\
          "minecraft:equippable",\
          "minecraft:attack_animation",\
          "minecraft:tool",\
          "minecraft:attribute_modifiers",\
          "minecraft:attack_range",\
          "minecraft:piercing_weapon",\
          "minecraft:kinetic_weapon",\
          "minecraft:enchantments"\
        ]\
      }\
    }\
  ]\
} ~ ~ ~ mainhand

data remove storage dbarr:tmp stored_components
data modify storage dbarr:tmp stored_components set from entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.components

tellraw @a {storage:"dbarr:tmp",nbt:"stored_components"}

# Clear components from held item.
item modify entity @s weapon.mainhand [{type:"minecraft:copy_custom_data",source:{type:"minecraft:storage",source:"dbarr:tmp"},ops:[{source:"stored_components",target:"stored_components",op:"replace"}]},\
{\
  "type": "minecraft:set_components",\
  "components": {\
    "!minecraft:equippable": {},\
    "!minecraft:attack_animation": {},\
    "!minecraft:tool": {},\
    "!minecraft:attribute_modifiers": {},\
    "!minecraft:attack_range": {},\
    "!minecraft:piercing_weapon": {},\
    "!minecraft:kinetic_weapon": {}\
  }\
}]

# Move the enchantments of the held item to storage.
item replace entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand from entity @s weapon.mainhand
execute as @n[type=mannequin,tag=dbtemp.current] run data modify entity @s equipment.mainhand.components.minecraft:stored_enchantments set from entity @s equipment.mainhand.components.minecraft:enchantments
item modify entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand {type:"minecraft:set_components", "components":{"!minecraft:enchantments":{}}}

#data modify entity @n[type=mannequin,tag=dbtemp.current] equipment.mainhand.id set value "minecraft:structure_void"

item replace entity @s weapon.mainhand from entity @n[type=mannequin,tag=dbtemp.current] weapon.mainhand

data remove storage dbarr:tmp stored_components
tp @n[type=mannequin,tag=dbtemp.current] ~ -100 ~
kill @n[type=mannequin,tag=dbtemp.current]

# TODO
# Equippable tag for armor, just so it can still be replaced in-slot
# Figure out what to do with stuff like shears and fishing rods
