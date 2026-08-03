local onDuty = QBX?.PlayerData?.job?.onduty
local playerJob = QBX?.PlayerData?.job?.name
local config = require 'config.client'
local sharedConfig = require 'config.shared'
local chihuahua = require 'config.chihuahua'
local burgershot = require 'config.burgershot'
local blip = {}
RegisterNetEvent('QBCore:Client:SetDuty', function(duty)
	onDuty = duty
	print('setDuty onDuty = ', onDuty)
end)

local function createBlips()
	for k, v in pairs(sharedConfig.blips) do
		blip = AddBlipForCoord(sharedConfig.blips[k].coords.x, sharedConfig.blips[k].coords.y, sharedConfig.blips[k].coords.z)
		SetBlipSprite(blip, sharedConfig.blips[k].sprite)
		SetBlipAsShortRange(blip, true)
		SetBlipScale(blip, sharedConfig.blips[k].scale)
		SetBlipColour(blip, sharedConfig.blips[k].color)
		BeginTextCommandSetBlipName('STRING')
		AddTextComponentString(sharedConfig.blips[k].label)
		EndTextCommandSetBlipName(blip)
	end
end

local function getDescription(ingredients)
	local desc = ''

	for _, v in pairs(ingredients) do
		if not exports.ox_inventory:Items(v?.item)['label'] then
			lib.print.warn("Missing ingredient label for: ", v.item)
		end
		desc = desc .. (exports.ox_inventory:Items(v?.item)['label']) .. " x" .. (v?.amount or 1) .. " | "
	end
	desc = string.sub(desc, 1, -4)
	return desc
end

local function craftPrep(recipe, business)
	if not onDuty then
		return exports.qbx_core:Notify(locale('error.notOnDuty'), "error")
	end
	local ingredient = nil

	if recipe == 'steak_1' or recipe == 'steak_2' then
		ingredient = 'steak'
		recipe = ingredient
	elseif recipe == 'chicken_1' or recipe == 'chicken_2' then 
		ingredient = 'chicken'
		recipe = ingredient
	end

	local HasIngredients = lib.callback.await('y_burgershot:server:hasIngredients', false, recipe, "prep", business)
	if not HasIngredients then
		return exports.qbx_core:Notify(locale("error.missing_ingredients"), 'error', 7500)
	end

	if lib.progressBar({
		duration = 4000,
		label = locale('progress.cooking'),
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
			combat = true,
			move = true,
		},
		anim = {
			dict = 'amb@prop_human_bbq@male@base',
			clip = 'base'
		},
		prop = {
			model = `prop_cs_fork`,
			bone = 28422,
			pos = vec3(-0.005, 0.00, 0.00),
			rot = vec3(175.0, 160.0, 0.0)
		},
	}) then
		TriggerServerEvent('y_burgershot:server:CraftMeal', recipe, "prep", business)
	else
		exports.qbx_core:Notify(locale('error.cancel'), 'error', 7500)
	end
end

local function craftDrink(recipe, business)
	if not onDuty then
		return exports.qbx_core:Notify(locale('error.notOnDuty'), "error")
	end

	local HasIngredients = lib.callback.await('y_burgershot:server:hasIngredients', false, recipe, "drinks", business)
	if not HasIngredients then
		return exports.qbx_core:Notify(locale("error.missing_ingredients"), 'error', 7500)
	end

	if lib.progressBar({
		duration = 4000,
		label = locale('progress.making_drink'),
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
			combat = true,
			move = true,
		},
		anim = {
			dict = 'mp_common',
			clip = 'givetake1_a'
		},
	}) then
		TriggerServerEvent('y_burgershot:server:CraftMeal', recipe, "drinks", business)
	else
		exports.qbx_core:Notify(locale('error.cancel'), 'error', 7500)
	end
end

local function craftMeal(recipe, business)
	if not onDuty then
		return exports.qbx_core:Notify(locale('error.notOnDuty'), "error")
	end

	local HasIngredients = lib.callback.await('y_burgershot:server:hasIngredients', false, recipe, 'assembleFood', business)
	if not HasIngredients then
		return exports.qbx_core:Notify(locale("error.missing_ingredients"), 'error', 7500)
	end


	if lib.progressBar({
		duration = 4000,
		label = locale('progress.making_burger'),
		useWhileDead = false,
		canCancel = true,
		disable = {
			car = true,
			combat = true,
			move = true,
		},
		anim = {
			dict = 'mp_common',
			clip = 'givetake1_a'
		},
	}) then
		TriggerServerEvent('y_burgershot:server:CraftMeal', recipe, 'assembleFood', business)
	else
		exports.qbx_core:Notify(locale('error.cancel'), 'error', 7500)
	end
end

local function openDrinksMenu(business)
	local recipes = {}
	-- ox_lib menu that has all the recipes and triggers the craft function
	local options = {}

	if business == 'burgershot' then
		recipes = burgershot.burgerShotRecipes.drinks
	elseif business == 'chihuahua' then
		recipes = chihuahua.chihuahuaRecipes.drinks
	elseif config.scriptDebug then
		exports.qbx_core:Notify('bussiness not registered in openDrinksMenu', "error")
	end

	for k, v in pairs(recipes) do
		local description = getDescription(v.ingredients)
		options[#options + 1] = {
			title = v.label,
			description = description,
			icon = 'utensils',
			onSelect = function()
				craftDrink(k, business)
			end,
		}
	end

	lib.registerContext({
		id = ('%s_CraftDrinkMenu'):format(business),
		title = locale('menus.drinks_title'),
		options = options,
	})
	lib.showContext(('%s_CraftDrinkMenu'):format(business))
end

local function openHotFoodMenu(business)
	local recipes = {}
	local options = {}

	if business == 'burgershot' then
		recipes = burgershot.burgerShotRecipes.assembleFood
	elseif business == 'chihuahua' then
		recipes = chihuahua.chihuahuaRecipes.assembleFood
	elseif config.scriptDebug then
		exports.qbx_core:Notify('bussiness not registered in openHotFoodMenu', "error")
	end

	for k, v in pairs(recipes) do
		local description = getDescription(v.ingredients)
		options[#options + 1] = {
			title = v.label,
			description = description,
			icon = 'utensils',
			onSelect = function()
				craftMeal(k, business)
			end,
		}
	end

	lib.registerContext({
		id = ('%s_CraftMenu'):format(business),
		title = locale('menus.burger_title'),
		options = options,
	})
	lib.showContext(('%s_CraftMenu'):format(business))
end

local function useWater(type)
	if type == 'waterCup' then
		if lib.progressBar({
			duration = 5000,
			label = 'Filling Water',
			useWhileDead = false,
			canCancel = true,
			disable = {
				car = true,
				move = true,
			},
			anim = {
				dict = 'mp_arresting',
				clip = 'a_uncuff'
			},
		})then TriggerServerEvent('wp-foodjobs:server:waterCup', type) return end
	else
		if lib.progressBar({
			duration = 5000,
			label = 'Washing Nasty Hands',
			useWhileDead = false,
			canCancel = true,
			disable = {
				car = true,
				move = true,
			},
			anim = {
				dict = 'mp_arresting',
				clip = 'a_uncuff'
			},
		})then return end--[[ then print('Do stuff when complete') else print('Do stuff when cancelled') ]] -- remove RETURN and input this line to do stuff after.
	end
end
local function triggerMenu(menu, business)
	if menu == 'duty' then 
		onDuty = not onDuty
		TriggerServerEvent("QBCore:ToggleDuty")
	elseif menu == 'washHands' or menu == 'washHands2' or menu == 'waterCup' then
		useWater(menu)
	elseif menu == 'assembleFood' then
		openHotFoodMenu(business)
	elseif menu == 'drinks' then
		openDrinksMenu(business)
	else -- steak, fries, chicken 
		craftPrep(menu, business)
	end 
end
CreateThread(function()

	createBlips()

	-- Burger Shot Zones excluding storage
	for k, v in pairs(burgershot.burgerShotCoords) do
		exports.ox_target:addBoxZone({
			name = ("BurgerShot_%s"):format(k),
			coords = v.coords,
			size = v.size,
			rotation = v.rotation,
			debug = config.zoneDebug,
			options = {
				{
					type = "client",
					onSelect = function()
						triggerMenu(k, playerJob)
					end,
					icon = ('%s'):format(v.targetIcon),
					label = ('%s'):format(v.targetLabel or k),
					distance = 1.5,
					groups = 'burgershot',
				}
			}
		})
	end

		-- Chihuahua Zones excluding storage
	for i, v in pairs(chihuahua.chihuahuaCoords) do
		exports.ox_target:addBoxZone({
			name = ("Chihuahua_%s"):format(i),
			coords = v.coords,
			size = v.size,
			rotation = v.rotation,
			debug = config.zoneDebug,
			options = {
				{
					type = "client",
					onSelect = function()
						triggerMenu(i, playerJob)
					end,
					icon = ('%s'):format(v.targetIcon),
					label = ('%s'):format(v.targetLabel or i),
					distance = 1.5,
					groups = 'chihuahua',
				}
			}
		})
	end

	-- Inventory Storage Areas. Including public and job specific in shared config.
	for n, storage in pairs(sharedConfig.invStorage) do
		exports.ox_target:addBoxZone({
			name = ("jobstorage_%s"):format(n),
			coords = storage.coords,
			size = storage.size,
			rotation = storage.rotation,
			debug = config.zoneDebug,
			options = {
				{
					type = "client",
					onSelect = function()
						exports.ox_inventory:openInventory('stash', storage.id or n)
					end,
					icon = storage.icon or "fa fa-clipboard",
					label = storage.label or 'Food Tray',
					distance = storage.distance or 1.5,
					groups = storage.groups,
				}
			}
		})
	end
end)

AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
	onDuty = QBX?.PlayerData?.job?.onduty
	playerJob = QBX?.PlayerData?.job?.name
end)
