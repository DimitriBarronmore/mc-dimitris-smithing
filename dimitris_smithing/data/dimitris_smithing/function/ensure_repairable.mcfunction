## Leather armors.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:armor_leather", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_leather_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/leather" \
      } \
    } \
  } \
}

## Chainmail Armors.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:armor_chain", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_chain_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/netherite" \
      } \
    } \
  } \
}

## Wooden Tools.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:tools_wooden", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:wooden_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/wooden" \
      } \
    } \
  } \
}

## Stone Tools
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:tools_stone", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:stone_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/stone" \
      } \
    } \
  } \
}

## Copper tools and armor.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:tools_copper", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:copper_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/copper" \
      } \
    } \
  } \
}
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:armor_copper", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_copper_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/copper" \
      } \
    } \
  } \
}

## Iron tools and armor.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:tools_iron", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:iron_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/iron" \
      } \
    } \
  } \
}
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:armor_iron", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_iron_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/iron" \
      } \
    } \
  } \
}

## Golden tools and armor.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:tools_golden", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:gold_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/golden" \
      } \
    } \
  } \
}
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:armor_golden", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_gold_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/golden" \
      } \
    } \
  } \
}

## Diamond tools and armor.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:tools_diamond", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:diamond_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/diamond" \
      } \
    } \
  } \
}
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:armor_diamond", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_diamond_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/diamond" \
      } \
    } \
  } \
}


## Change netherite tools and armors to use diamond materials.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:tools_netherite", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:netherite_tool_materials" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/netherite" \
      } \
    } \
  } \
}
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "#dimitris_smithing:armor_netherite", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_netherite_armor" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/netherite" \
      } \
    } \
  } \
}

## Turtle helmet.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
  "type": "minecraft:filtered", \
  "item_filter": { \
    "items": "minecraft:turtle_helmet", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#minecraft:repairs_turtle_helmet" \
      } \
    } \
  }, \
  "on_pass": { \
    "type": "minecraft:set_components", \
    "components": { \
      "minecraft:repairable": { \
        "items": "#dimitris_smithing:repairs/turtle" \
      } \
    } \
  } \
}

## Flint and Steel repairs with iron.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:flint_and_steel" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/flint_and_steel" \
            } \
        } \
        } \
    } \
    }

## Brush repairs with feathers.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:brush" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/brush" \
            } \
        } \
        } \
    } \
    }

## Fishing rod repairs with string.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:fishing_rod" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/fishing_rod" \
            } \
        } \
        } \
    } \
    }

## Carrot on a stick repairs with carrots.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:carrot_on_a_stick" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/carrot_on_stick" \
            } \
        } \
        } \
    } \
    }

## Fungus on a stick repairs with warped fungus.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:warped_fungus_on_a_stick" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/fungus_on_stick" \
            } \
        } \
        } \
    } \
    }

## Shears repair with iron.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:shears" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/shears" \
            } \
        } \
        } \
    } \
    }

## Shield repairs with iron.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:shield" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/shield" \
            } \
        } \
        } \
    } \
    }

## Bow repairs with string.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:bow" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/bow" \
            } \
        } \
        } \
    } \
    }

## Crossbow repairs with string.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:crossbow" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/crossbow" \
            } \
        } \
        } \
    } \
    }

## Trident repairs with prismarine.
item modify entity @s [\ 
    {type:slot_range,source:this,slots:"container.*"}, \
    {type:slot_range,source:this,slots:"armor.*"}, \
    {type:slot_range,source:this,slots:"weapon.*"},\ 
    {type:slot_range,source:this,slots:"player.cursor"},\ 
    {type:slot_range,source:this,slots:"player.crafting.*"}\ 
    ] \
    { \
    "type": "minecraft:filtered", \
    "item_filter": { \
        "items": "minecraft:trident" \
    }, \
    "on_pass": { \
        "type": "minecraft:filtered", \
        "item_filter": { \
        "predicates": { \
            "minecraft:repairable": {} \
        } \
        }, \
        "on_fail": { \
        "type": "minecraft:set_components", \
        "components": { \
            "minecraft:repairable": { \
            "items": "#dimitris_smithing:repairs/trident" \
            } \
        } \
        } \
    } \
    }