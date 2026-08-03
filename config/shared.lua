return {
    -- applies to all jobs
    blips = { -- display blips for all configured jobs
        burgerShot = {
            coords = vector3(-1193.87, -894.38, 14.0),
            label = "Burger Shot",
            sprite = 106,
            color = 1, -- RED
            scale = 0.7,
        },
        chihuahuaHotdogs = {
            coords = vector3(-1533.27, -423.98, 35.59),
            label = "Chihuahua Hotdogs",
            sprite = 89,
            color = 2, -- RED
            scale = 0.7,
        },
        --[[ storeName = { -- example to add another blip
            coords = vector3(x, y, z),
            label = "Label as a string",
            sprite = 106,
            color = 1, -- RED
            scale = 0.7,
        }, ]]
    },

    invStorage = { -- inventory storage for ALL businesses
        -- Burger Shot

        burgerShotHotStorage = { -- variable name is used as inventory ID stored in DB
            label = 'Hot Food Storage', -- Label that shows in top left of inventory AND when targeting the zone. if nil or removed, there will be a default icon used
            icon = 'fas fa-box', -- if nil or removed, there will be a default icon used
            slots = 50, -- slots you want the inventory to have
            weight = 75000, -- total weight the inventory can hold
            groups = { ['burgershot'] = 0}, -- job required with minimum grade. does not require them to be on duty
            coords = vector3(-1195.03, -896.34, 14.00),
            size = vector3(1.2, 3, 1.8),
            rotation = 75,
        },
        burgerShotStorage = {
            label = 'General Storage',
            icon = 'fas fa-box',
            slots = 20,
            weight = 100000,
            groups = { ['burgershot'] = 0},
            coords = vector3(-1196, -901, 13.89),
            size = vector3(0.75, 3, 1.8),
            rotation = 75,
        },
        burgerShotDrinkStorage = {
            label = 'Drink Storage',
            icon = 'fas fa-bottle-water',
            slots = 20,
            weight = 100000,
            groups = { ['burgershot'] = 0},
            coords = vector3(-1203.38, -896.98, 13.89),
            size = vector3(0.95, 3.5, 2.5),
            rotation = 34,
        },

        burgerShotTray1 = { -- main counter when purchasing food
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1194.93, -893.3, 14.15),
            size = vector3(0.5, 0.5, 0.5),
            rotation = 165,
        },

        burgerShotTray2 = { -- main counter when purchasing food
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1192.90, -893.70, 14.15),
            size = vector3(0.5, 0.5, 0.5),
            rotation = 165,
        },

        burgerShotTray3 = { -- main counter when purchasing food
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1191.14, -894.37, 14.15),
            size = vector3(0.5, 0.5, 0.5),
            rotation = 165,
        },

        burgerShotTray4 = { -- main counter when purchasing food
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1196.88, -892.77, 14.15),
            size = vector3(0.5, 0.5, 0.5),
            rotation = 165,
        },

        burgerShotBooth1 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1196.85, -886.01, 13.69),
            size = vector3(1.25, 2.15, 0.5),
            rotation = 215,
        },

        burgerShotBooth2 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1193.83, -884.36, 13.69),
            size = vector3(1.25, 2.15, 0.5),
            rotation = 215,
        },

        burgerShotBooth3 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1190.91, -882.35, 13.69),
            size = vector3(1.25, 2.15, 0.5),
            rotation = 215,
        },

        burgerShotBooth4 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vector3(-1188.16, -880.15, 13.69),
            size = vector3(1.25, 2.15, 0.5),
            rotation = 215,
        },

        burgerShotBooth5 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vec3(-1187.28, -884.05, 13.69),
            size = vector3(1.25, 2.15, 0.5),
            rotation = 215,
        },

        burgerShotBooth6 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vec3(-1190.08, -885.98, 13.69),
            size = vector3(1.25, 2.15, 0.5),
            rotation = 215,
        },

        burgerShotBooth7 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vec3(-1184.53, -894.4, 13.69),
            size = vector3(1.25, 1.75, 0.5),
            rotation = 215,
        },

        burgerShotBooth8 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vec3(-1181.34, -892.66, 13.69),
            size = vector3(1.25, 1.75, 0.5),
            rotation = 215,
        },

        burgerShotBooth9 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vec3(-1178.17, -895.02, 13.69),
            size = vector3(1.25, 1.75, 0.5),
            rotation = 215,
        },

        burgerShotBooth10 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vec3(-1181.2, -896.72, 13.69),
            size = vector3(1.25, 1.75, 0.5),
            rotation = 215,
        },

        burgerShotBooth11 = {
            label = 'Booth Table',
            icon = 'fas fa-table',
            slots = 5,
            weight = 10000,
            groups = nil,
            coords = vec3(-1184.17, -898.63, 13.69),
            size = vector3(1.25, 1.75, 0.5),
            rotation = 215,
        },

        -- Chihuahua Hotdogs

        chihuahuaStorage = {
            label = 'General Storage',
            icon = 'fas fa-box',
            slots = 20,
            weight = 100000,
            groups = { ['chihuahua'] = 0},
            coords = vec3(-1549.68, -407.92, 35.64),
            size = vector3(1, 1.25, 2.5),
            rotation = 230,
        },

        chihuahuaHotStorage = {
            label = 'Ready For Sale',
            icon = 'fas fa-box',
            slots = 20,
            weight = 100000,
            groups = { ['chihuahua'] = 0},
            coords = vec3(-1547.88, -410.98, 35.99),
            size = vector3(1.25, 1, 1.0),
            rotation = 230,
        },

        chihuahuaCashierCounter = {
            label = 'Counter Top',
            icon = 'fas fa-table',
            coords = vec3(-1541.87, -413.36, 35.64),
            size = vector3(1.5, 1, 0.5),
            rotation = 230,
            slots = 5,
            weight = 10000,
        },

        chihuahuaUnderHotStorage = {
            label = 'Bag Storage',
            icon = 'fas fa-box',
            slots = 50,
            weight = 100000,
            groups = { ['chihuahua'] = 0},
            coords = vec3(-1547.88, -410.98, 34.99),
            size = vector3(1.25, 1, 1.0),
            rotation = 230,
        },

        chihuahuaTray1 = {
            coords = vector3(-1539.23, -414.88, 35.34),
            size = vector3(1, 1.75, 0.5),
            rotation = 230,
            slots = 5,
            weight = 10000,
        },

        chihuahuaTray2 = {
            coords = vec3(-1536.0, -417.59, 35.34),
            size = vector3(1, 1.75, 0.5),
            rotation = 230,
            slots = 5,
            weight = 10000,
        },

        chihuahuaTray3 = {
            coords = vec3(-1539.32, -422.1, 35.34),
            size = vector3(1, 1.75, 0.5),
            rotation = 140,
            slots = 5,
            weight = 10000,
        },

        chihuahuaTray4 = {
            coords = vec3(-1542.29, -419.48, 35.34),
            size = vector3(1, 1.75, 0.5),
            rotation = 140,
            slots = 5,
            weight = 10000,
        },

        chihuahuaTray5 = {
            coords = vec3(-1545.06, -417.27, 35.34),
            size = vector3(1, 1.75, 0.5),
            rotation = 140,
            slots = 5,
            weight = 10000,
        },

        chihuahuaTray6 = {
            coords = vec3(-1546.16, -412.47, 35.75),
            size = vector3(0.5, 0.5, 0.5),
            rotation = 140,
            slots = 5,
            weight = 10000,
        },

        chihuahuaTray7 = {
            coords = vec3(-1544.95, -413.53, 35.75),
            size = vector3(0.5, 0.5, 0.5),
            rotation = 140,
            slots = 5,
            weight = 10000,
        },
    },
}