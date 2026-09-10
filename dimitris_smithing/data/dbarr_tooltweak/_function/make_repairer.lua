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
    "hoe",
    "spear"
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
    gold = "#minecraft:repairs_gold_armor",
    diamond = "#minecraft:repairs_diamond_armor",
    netherite = "#minecraft:repairs_netherite_armor",
    turtle = "#minecraft:repairs_turtle_helmet",
}

local repair_template = [[
execute if items entity @s player.cursor %s unless items entity @s player.cursor *[minecraft:custom_data~{"dbarr_tooltweak_repairable":{"val":1b}}] run item modify entity @s player.cursor {function:"minecraft:sequence", functions: [ {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"%s"}}}, {function:"minecraft:set_custom_data",tag:{"dbarr_tooltweak_repairable":{"val":1b}}}]}
]]
local repair_template_2 = [[
execute if items entity @s player.cursor minecraft:structure_block[minecraft:custom_data~{"dbarr_tooltweak_repairable":0}, minecraft:custom_data~{dbarr_broken_tool:{id:"%s"}}] run item modify entity @s player.cursor {function:"minecraft:sequence", functions: [ {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"%s"}}}, {function:"minecraft:set_custom_data",tag:{"dbarr_tooltweak_repairable":{"val":1b}}}]}
]]
local repair_template_3 = [[
execute if items entity @s player.cursor minecraft:structure_block[minecraft:custom_data~{"dbarr_tooltweak_repairable":0}, minecraft:custom_data~{dbarr_armorasset:{id:"minecraft:%s"}}] run item modify entity @s player.cursor {function:"minecraft:sequence", functions: [ {function:"minecraft:set_components", components:{"minecraft:repairable":{"items":"%s"}}}, {function:"minecraft:set_custom_data",tag:{"dbarr_tooltweak_repairable":{"val":1b}}}]}
]]

-- minecraft:structure_block[minecraft:custom_data~{dbarr_armorasset:{id:"minecraft:gold"}}]

do
    local txt = {}
    for tool, dur in pairs(durabilities) do
        if special_tags[tool] then
            for _, kind in ipairs(tooltypes) do
                local tn = "minecraft:" .. tool .. "_" .. kind
                table.insert(txt, string.format(repair_template_2, tn, repair_materials[tool]))
            end
                local tn = "#dbarr_tooltweak:tools_" .. tool
                table.insert(txt, string.format(repair_template, tn, repair_materials[tool]))

--             end
        else
            local tn = "minecraft:" .. tool
            table.insert(txt, string.format(repair_template, tn, repair_materials[tool]))
            table.insert(txt, string.format(repair_template_2, tn, repair_materials[tool]))
        end
    end
    for tier, repair_mat in pairs(repair_materials_armor) do
--         for _, kind in ipairs(armor_kinds) do
        local tn = "#dbarr_tooltweak:models/" .. tier
--             local tn = "minecraft:" .. tier .. "_" .. kind
--             if tier == "turtle" and kind ~= "helmet" then goto continue end
            table.insert(txt, string.format(repair_template, tn, repair_mat))
            table.insert(txt, string.format(repair_template_3, tier, repair_mat))
--             table.insert(txt, string.format(repair_template_2, tn, repair_mat))
--             ::continue::
--         end
    end
    local f = io.open("ensure_repairable.mcfunction", "w+")
    f:write(table.concat(txt, "\n"))
    f:close()
end
