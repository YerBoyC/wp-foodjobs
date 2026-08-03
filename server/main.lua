local sharedConfig = require 'config.shared'
local chihuahua = require 'config.chihuahua'
local burgershot = require 'config.burgershot'
lib.versionCheck('TonybynMp4/y_burgershot')

local function hasIngredients(source, recipe, recipeType, business)
    local Recipe = {}

    if business == 'burgershot' then 
        Recipe = burgershot.burgerShotRecipes[recipeType][recipe]
    elseif business == 'chihuahua' then
        Recipe = chihuahua.chihuahuaRecipes[recipeType][recipe]
    end
    
    if not Recipe then
        lib.print.warn("missing recipe or wrong recipeType?", recipeType, recipe)
        return false
    end
    for k, v in pairs(Recipe.ingredients) do
        local count = exports.ox_inventory:Search(source, 'count', v.item, false)
        if not count or count < Recipe.ingredients[k].amount then
            return false
        end
    end
    return true
end

lib.callback.register('y_burgershot:server:hasIngredients', hasIngredients)

RegisterNetEvent('y_burgershot:server:CraftMeal', function(recipe, recipeType, business)
    local source = source
    local Recipe = burgershot.burgerShotRecipes[recipeType][recipe] or chihuahua.chihuahuaRecipes[recipeType][recipe]
    if not Recipe then return end

    if not hasIngredients(source, recipe, recipeType, business) then
        return exports.qbx_core:Notify(source, locale('error.missing_ingredients'), 'error')
    end

    for _, v in pairs(Recipe.ingredients) do
        exports.ox_inventory:RemoveItem(source, v.item, v.amount)
    end
    if recipe == 'murdermeal' then
        local success, response = exports.ox_inventory:AddItem(source, 'murdermeal', 1)
        if not success then
            return exports.qbx_core:Notify(source, locale("error.something_went_wrong"), 'error')
        end

        local container = exports.ox_inventory:GetContainerFromSlot(source, response.slot)
        for _, v in pairs(Recipe.ingredients) do
            exports.ox_inventory:AddItem(container.id, v.item, v.amount)
        end
        exports.ox_inventory:AddItem(container.id, 'toy'..math.random(1,2), 1)
        return exports.qbx_core:Notify(source, locale('success.crafted', Recipe.label), 'success')
    end
    exports.qbx_core:Notify(source, locale('success.crafted', Recipe.label), 'success')
    exports.ox_inventory:AddItem(source, recipe, 1)
end)

RegisterNetEvent('wp-foodjobs:server:waterCup', function(type)
    local source = source
    if type == 'waterCup' then
        return exports.ox_inventory:AddItem(source, 'water_cup', 1)
    end
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        for i, stash in pairs(sharedConfig.invStorage) do
            exports.ox_inventory:RegisterStash(i, stash.label or i, stash.slots, stash.weight, stash.owner)
        end
    end
end)