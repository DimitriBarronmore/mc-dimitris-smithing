# Dimitri's Smithing
A datapack for Minecraft that rebalances crafting, keeping, upgrading, and repairing your gear.
Last major update: MC 26.2

Inspired heavily by https://github.com/sisby-folk/tinkerers-smithing.

## Pack features:

### Repair Revamp
All items with durability can be repaired in an anvil using appropriate materials, including tools that can normally only be repaired through anvil combining. These are the defaults:

- Netherite Tools = #minecraft:repairs_diamond_armor
- Netherite Armor = #minecraft:repairs_diamond_armor
- Flint and Steel = #minecraft:repairs_iron_armor
- Brush = minecraft:feather
- Fishing Rod = minecraft:string
- Carrot on a Stick = minecraft:carrot
- Warped Fungus on a Stick = minecraft:warped_fungus
- Shears = #minecraft:repairs_iron_armor
- Shield = #minecraft:repairs_iron_armor
- Bow = minecraft:string
- Trident = #dimitris_smithing:repairs/trident (prismarine crystals or shards)
- Crossbow = minecraft:string

All of these materials, and the repair materials of other normal vanilla items can be changed or added to by changing the tags under `#dimitris_smithing:repairs/*`.

### Tool Upgrading

#### Shapeless Upgrades
Most tools can upgraded to higher tiers using shapeless crafting recipes, requiring the same number of ingredients as it would take to normally craft the item. Doing this loses all components from the item. It's essentially sacrificing the tool in exchange for not needing sticks or a crafting bench.

- Wood -> Stone
- Stone -> Copper / Iron / Gold
- Copper -> Iron / Gold
- Iron -> Diamond
- Gold -> Diamond

Tools can also be shapelessly crafted with their own repair material in order to repair them back to full durability, still losing all enchantments.

#### Smithing Upgrades
Tools and armor can be changed to a different material in a smithing table while retaining their enchantments, custom names, etc. using a "sacrificial" item of the same type and the desired material.


### Broken Tools
- Any named gear which would break will instead transmute into an identical-looking "broken" version until repaired on an anvil or with mending, similar to an elytra.
    - Of note: Fishing rods are weird, and don't respond to advancement triggers the same way everything else does. Fishing rods will break at 5 or less durability remaining instead of 0.

### Minor Tweaks
- The anvil's "prior work" penalty has been removed to make repairing tools long-term without mending more achievable.