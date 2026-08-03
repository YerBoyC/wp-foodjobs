return {
    chihuahuaCoords = {
        duty = {
            targetLabel = 'Toggle Duty',
            targetIcon = 'fas fa-user-tie',
            coords = vector3(-1550.4, -404.44, 35.64),
            size = vector3(2.0, 1.5, 2),
            rotation = 140,
        },
        washHands = {
            targetLabel = 'Wash Hands',
            targetIcon = 'fas fa-hand-holding-droplet',
            coords = vector3(-1550.58, -409.1, 35.36),
            size = vector3(0.75, 1.25, 1.5),
            rotation = 140,
        },
        hotdog_bunless = { -- hotdog grill
            targetLabel = 'Cook Hotdog',
            targetIcon = 'fas fa-hotdog',
            coords = vec3(-1546.47, -407.59, 35.64),
            size = vector3(1.00, 1.00, 0.75),
            rotation = 50,
        },
        basket_fries = {
            targetLabel = 'Cook Fries',
            targetIcon = 'fas fa-fire-burner',
            coords = vec3(-1547.45, -407.2, 35.64),
            size = vector3(0.75, 0.75, 0.75),
            rotation = 50,
        },
        assembleFood = {
            targetLabel = 'Assemble Food',
            targetIcon = 'fas fa-utensils',
            coords = vec3(-1548.52, -406.74, 35.64),
            size = vector3(1.75, 1, 1),
            rotation = 50,
        },
        drinks = {
            targetLabel = 'Assemble Drinks',
            targetIcon = 'fas fa-bottle-water',
            coords = vec3(-1546.31, -411.54, 35.64),
            size = vector3(1.0, 1.0, 1.5),
            rotation = 50,
        },
    },

    chihuahuaRecipes = {
        prep = {
            hotdog_bunless = {
                label = "Bunless Hotdog",
                ingredients = {
                    {
                        item = "rawdog",
                        amount = 1,
                    },
                }
            },
            basket_fries = {
                label = "Fries",
                ingredients = {
                    {
                        item = "potato",
                        amount = 1,
                    },
                }
            },
        },

        assembleFood = {
            -- hotdog_plain, chili, chillicheese, deluxe, ketchup, mustard, taco, veggie, kmm
            hotdog_plain = {
                label = "Plain Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                }
            },
            hotdog_chilli = {
                label = "Chilli Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "chilimix",
                        amount = 1,
                    },
                }
            },
            hotdog_chillicheese = {
                label = "Chilli n Cheese Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "chili",
                        amount = 1,
                    },
                    {
                        item = "cheese",
                        amount = 1,
                    },
                }
            },
            hotdog_deluxe = {
                label = "Deluxe Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "chili",
                        amount = 1,
                    },
                    {
                        item = "cheese",
                        amount = 1,
                    },
                    {
                        item = "basket_fries",
                        amount = 1,
                    },
                }
            },
            hotdog_ketchup = {
                label = "Ketchup Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "ketchup", -- left of here. adding ingredients to items.lua
                        amount = 1,
                    },
                }
            },
            hotdog_mustard = {
                label = "Mustard Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "mustard",
                        amount = 1,
                    },
                }
            },
            hotdog_taco = {
                label = "Taco Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "taco_seasoning",
                        amount = 1,
                    },
                }
            },
            hotdog_veggie = {
                label = "Veggie Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "tomato",
                        amount = 1,
                    },
                }
            },
            hotdog_kmm = {
                label = "KMM Hotdog",
                ingredients = {
                    {
                        item = "hotdog_bun",
                        amount = 1,
                    },
                    {
                        item = "hotdog_bunless",
                        amount = 1,
                    },
                    {
                        item = "ketchup",
                        amount = 1,
                    },
                    {
                        item = "mustard",
                        amount = 1,
                    },
                    {
                        item = "mayo",
                        amount = 1,
                    },
                }
            },
        },

        drinks = {
            milkshake = {
                label = "MilkShake",
                ingredients = {
                    {
                        item = "mshakeformula",
                        amount = 1,
                    },
                    {
                        item = "water",
                        amount = 1,
                    }
                }
            },
            hotdog_cola = {
                label = "Kurka Kola",
                ingredients = {
                    {
                        item = "kkolaformula",
                        amount = 1,
                    },
                    {
                        item = "water",
                        amount = 1,
                    }
                }
            },
            hotdog_sprunk = {
                label = "Sprunk",
                ingredients = {
                    {
                        item = "sprunkformula",
                        amount = 1,
                    },
                    {
                        item = "water",
                        amount = 1,
                    }
                }
            },
        },
    },
}