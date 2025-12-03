local base_template = [[
item modify entity @s weapon {function:"minecraft:set_item", item:"minecraft:clock"}
$item modify entity @s weapon {function:"minecraft:set_components", components: {"minecraft:max_damage":%s, "minecraft:max_stack_size":1, "minecraft:item_model":"$(id)", "minecraft:custom_data":{dbarr_broken_tool:1}}}
]]


local fancy_template = [[
item modify entity @s weapon.%s {function:"minecraft:filtered", item_filter:{items:"%s", predicates:{"minecraft:damage":{durability:{max:0}}}}, modifier: {function:"minecraft:sequence", functions: [{function:"minecraft:set_item", item:"minecraft:structure_block"}, {function:"minecraft:set_components", components: {"minecraft:max_damage":%s, "minecraft:max_stack_size":1, "minecraft:item_model":"%s", "minecraft:custom_data":{dbarr_broken_tool:"%s", "dbarr:is_repairable":0}}} ]}}
]] -- hand: mainhand | offhand  / item filter: some tag or id / damage: the tool's max dur / item filter again

local special_tags = {
    wooden = true,
    stone = true,
    copper = true,
    golden = true,
    iron = true,
    diamond = true,
    netherite = true,
}
local tooltypes = {
    "axe",
    "pickaxe",
    "shovel",
    "sword",
    "hoe"
}
local durabilities = {
    wooden = 59,
    stone = 131,
    copper = 191,
    golden = 32,
    iron = 250,
    diamond = 1561,
    netherite = 2031,
    flint_and_steel = 64,
    brush = 64,
    fishing_rod = 64,
    carrot_on_a_stick = 25,
    warped_fungus_on_a_stick = 100,
    shears = 238,
    shield = 336,
    bow = 384,
    trident = 250,
    crossbow = 465,
    mace = 500,
}

function write_file(tool_id, max_damage)
    local filter = "minecraft:" .. tool_id
    local txt = fancy_template:format("mainhand", filter, max_damage - 1, filter, filter, filter) .. "\n" ..
                fancy_template:format("offhand", filter, max_damage - 1, filter, filter, filter)
    local f = io.open("clockify_" .. tool_id .. ".mcfunction", "w+")
    f:write(txt)
    f:close()
end

for tool, dur in pairs(durabilities) do
    if special_tags[tool] then
        for _, kind in ipairs(tooltypes) do
            write_file(tool .. "_" .. kind, dur)
        end
    else
        write_file(tool, dur)
    end
end

local execution_template = [[
execute if items entity @s weapon.mainhand %s[minecraft:custom_name] run function %s
execute if items entity @s weapon.offhand %s[minecraft:custom_name] run function %s
]]

do
    local txt = {}
    for tool, dur in pairs(durabilities) do
        if special_tags[tool] then
            for _, kind in ipairs(tooltypes) do
                local tn = "minecraft:" .. tool .. "_" .. kind
                local fn = "dbarr_tooltweak:clockify/clockify_" .. tool .. "_" .. kind
                table.insert(txt, string.format(execution_template, tn, fn, tn, fn))
            end
        else
            local tn = "minecraft:" .. tool
            local fn = "dbarr_tooltweak:clockify/clockify_" .. tool
            table.insert(txt, string.format(execution_template, tn, fn, tn, fn))
        end
    end
    local f = io.open("run_correct_clockers.mcfunction", "w+")
    f:write(table.concat(txt, "\n"))
    f:close()
end

local armor_template = [[
item modify entity @s armor.%s {function:"minecraft:filtered", item_filter:{items:"%s", predicates:{"minecraft:damage":{durability:{max:1}}}}, modifier: {function:"minecraft:sequence", functions: [{function:"minecraft:set_item", item:"minecraft:structure_block"}, {function:"minecraft:set_components", components: {"minecraft:equippable":{slot:"%s",damage_on_hurt:0, asset_id:"%s"}, "minecraft:max_damage":%s, "minecraft:max_stack_size":1, "minecraft:item_model":"%s", "minecraft:custom_data":{dbarr_broken_tool:"%s", "dbarr:is_repairable":0}}} ]}}
]] -- armor slot  / item filter: some tag or id / armor slot again / damage: the tool's max dur / item filter again

local armor_execution_template = [[
execute if items entity @s armor.%s %s[minecraft:custom_name] run function %s
]]

local function txt_armor_template(slot, itemid, max_dur, asset_id)
    return string.format(armor_template, slot, itemid, slot, asset_id, max_dur, itemid, itemid)
end

local armor_mods = {
    helmet = 11,
    chestplate = 16,
    leggings = 15,
    boots = 13
}
local slots = {
    helmet = "head",
    chestplate = "chest",
    leggings = "legs",
    boots = "feet",
}
local armor_tiers = {
    leather = 5,
    copper = 11,
    golden = 7,
    chainmail = 15,
    iron = 15,
    diamond = 33,
    netherite = 37,
    turtle = 25,
}
local armor_tier_assets = {
    turtle = "minecraft:turtle_scute",
    leather = "minecraft:leather",
    copper = "minecraft:copper",
    golden = "minecraft:gold",
    chainmail = "minecraft:chainmail",
    iron = "minecraft:iron",
    diamond = "minecraft:diamond",
    netherite = "minecraft:netherite"
}
function write_file(itemkind, slot, durability, asset)
    local filter = "minecraft:" .. itemkind
    local txt = txt_armor_template(slot, itemkind, durability, asset)
    local f = io.open("clockify_" .. itemkind .. ".mcfunction", "w+")
    f:write(txt)
    f:close()
end

local execute_txt = {}
for kind, base in pairs(armor_mods) do
    for tier, mult in pairs(armor_tiers) do
        if tier == "turtle" and kind ~= "helmet" then goto continue end
        local id = tier .. "_" .. kind
        write_file(id, slots[kind], base * mult, armor_tier_assets[tier])
        table.insert(execute_txt, armor_execution_template:format(slots[kind], id, "dbarr_tooltweak:clockify/clockify_" .. id))
--         armor_durabilities[tier .. "_" .. kind] = base *
        ::continue::
    end
end
local f = io.open("run_correct_clockers_armor.mcfunction", "w+")
f:write(table.concat(execute_txt, "\n"))
f:close()

local repair_materials = {
    wooden = "#minecraft:wooden_tool_materials",
    stone = "#minecraft:stone_tool_materials",
    copper = "#minecraft:copper_tool_materials",
    golden = "#minecraft:gold_tool_materials",
    iron = "#minecraft:iron_tool_materials",
    diamond = "#minecraft:diamond_tool_materials",
    netherite = "#minecraft:netherite_tool_materials",
    flint_and_steel = "#minecraft:iron_tool_materials",
    brush = "minecraft:feather",
    fishing_rod = "minecraft:string",
    carrot_on_a_stick = "minecraft:carrot",
    warped_fungus_on_a_stick = "minecraft:warped_fungus",
    shears = "#minecraft:iron_tool_materials",
    shield = "#minecraft:iron_tool_materials",
    bow = "minecraft:string",
    trident = "#dbarr_tooltweak:prismarine_materials",
    turtle_helmet = "minecraft:turtle_scute",
    crossbow = "minecraft:string",
    mace = "minecraft:breeze_rod",
}
local armor_kinds = {
    "helmet",
    "chestplate",
    "leggings",
    "boots",
}
local repair_materials_armor = {
    leather = "#minecraft:repairs_leather_armor",
    copper = "#minecraft:repairs_copper_armor",
    chainmail = "#minecraft:repairs_chain_armor",
    iron = "#minecraft:repairs_iron_armor",
    golden = "#minecraft:repairs_gold_armor",
    diamond = "#minecraft:repairs_diamond_armor",
    netherite = "#minecraft:repairs_netherite_armor",
    turtle = "#minecraft:repairs_turtle_helmet",
}

local repair_template = [[
execute as @a if items entity @s player.cursor %s unless items entity @s player.cursor %s[minecraft:custom_data~{"dbarr:is_repairable":1b}] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"%s"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}
]]
local repair_template_2 = [[
execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":0}, item_model="%s"] run item modify entity @s player.cursor {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"%s"}, "minecraft:custom_data":{"dbarr:is_repairable":1b}}}
]]

do
    local txt = {}
    for tool, dur in pairs(durabilities) do
        if special_tags[tool] then
            for _, kind in ipairs(tooltypes) do
                local tn = "minecraft:" .. tool .. "_" .. kind
                table.insert(txt, string.format(repair_template_2, tn, repair_materials[tool]))
            end
                local tn = "#dbarr_tooltweak:tools_" .. tool
                table.insert(txt, string.format(repair_template, tn, tn, repair_materials[tool]))

--             end
        else
            local tn = "minecraft:" .. tool
            table.insert(txt, string.format(repair_template, tn, tn, repair_materials[tool]))
            table.insert(txt, string.format(repair_template_2, tn, repair_materials[tool]))
        end
    end
    for tier, repair_mat in pairs(repair_materials_armor) do
        for _, kind in ipairs(armor_kinds) do
            local tn = "minecraft:" .. tier .. "_" .. kind
            if tier == "turtle" and kind ~= "helmet" then goto continue end
            table.insert(txt, string.format(repair_template, tn, tn, repair_mat))
            table.insert(txt, string.format(repair_template_2, tn, repair_mat))
            ::continue::
        end
    end
    local f = io.open("tick_ensure_repairable.mcfunction", "w+")
    f:write(table.concat(txt, "\n"))
    f:close()
end

local unbreak_template = [[
execute as @a if items entity @s player.cursor minecraft:structure_block[custom_data~{"dbarr:is_repairable":1b}, item_model="%s", damage~{durability:{min:1}}] run item modify entity @s player.cursor {function:"minecraft:set_item", item:"%s"}
execute as @a if items entity @s weapon.mainhand minecraft:structure_block[custom_data~{"dbarr:is_repairable":1b}, item_model="%s", damage~{durability:{min:1}}] run item modify entity @s weapon.mainhand {function:"minecraft:set_item", item:"%s"}
execute as @a if items entity @s weapon.offhand minecraft:structure_block[custom_data~{"dbarr:is_repairable":1b}, item_model="%s", damage~{durability:{min:1}}] run item modify entity @s weapon.offhand {function:"minecraft:set_item", item:"%s"}
]]

local unbreak_template_armor = [[
execute as @a if items entity @s %s minecraft:structure_block[custom_data~{"dbarr:is_repairable":1b} | custom_data~{"dbarr:is_repairable":0}, item_model="%s", damage~{durability:{min:2}}] run item modify entity @s %s {function:"minecraft:sequence", functions: [{function:"minecraft:set_item", item:"%s"}, {function:"minecraft:set_components", components: {"minecraft:equippable":{slot:"%s",damage_on_hurt:true, asset_id:"%s"}}}]}
]]



do
    local txt = {}
    for tool, dur in pairs(durabilities) do
        if special_tags[tool] then
            for _, kind in ipairs(tooltypes) do
                local tn = "minecraft:" .. tool .. "_" .. kind
                table.insert(txt, string.format(unbreak_template, tn, tn, tn, tn, tn, tn))
            end
        else
            local tn = "minecraft:" .. tool
            table.insert(txt, string.format(unbreak_template, tn, tn, tn, tn, tn, tn))
        end
    end
    for tier, repair_mat in pairs(repair_materials_armor) do
        for _, kind in ipairs(armor_kinds) do
            local tn = "minecraft:" .. tier .. "_" .. kind
            if tier == "turtle" and kind ~= "helmet" then goto continue end
                for _, slot in ipairs{"player.cursor", "weapon.mainhand", "weapon.offhand", "armor." .. slots[kind]} do
                    table.insert(txt, string.format(unbreak_template_armor, slot, tn, slot, tn, slots[kind], armor_tier_assets[tier]))
                end
--                table.insert(txt, string.format(unbreak_template, tn, tn, tn, tn, tn, tn))
--                table.insert(txt, string.format(unbreak_template_armor, slots[kind], tn, slots[kind], tn))
            ::continue::
        end
    end
    local f = io.open("tick_fix_repaired_tools.mcfunction", "w+")
    f:write(table.concat(txt, "\n"))
    f:close()
end


