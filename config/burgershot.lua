return {
    burgerShotCoords = {
        duty = {
            targetLabel = 'Toggle Duty',
            targetIcon = 'fas fa-user-tie',
            coords = vector3(-1200.5, -902.27, 14.75),
            size = vector3(2.0, 0.5, 2),
            rotation = 125,
        },
        washHands = {
            targetLabel = 'Wash Hands',
            targetIcon = 'fas fa-hand-holding-droplet',
            coords = vector3(-1201.06, -890.8, 13.89),
            size = vector3(0.75, 1.25, 1.5),
            rotation = 125,
        },
        washHands2 = {
            targetLabel = 'Wash Hands',
            targetIcon = 'fas fa-hand-holding-droplet',
            coords = vector3(-1205.34, -893.69, 13.89),
            size = vector3(0.75, 1.25, 1.5),
            rotation = 125,
        },
        waterCup = {
            targetLabel = 'Get Water Cup',
            targetIcon = 'fas fa-bottle-water',
            coords = vec3(-1188.38, -894.64, 13.89),
            size = vector3(0.75, 0.75, 1.5),
            rotation = 125,
        },
        steak_1 = {
            targetLabel = 'Cook Meat',
            targetIcon = 'fas fa-hamburger',
            coords = vector3(-1195.02, -897.35, 14),
            size = vector3(0.5, 0.7, 0.8),
            rotation = 74,
        },
        steak_2 = {
            targetLabel = 'Cook Meat',
            targetIcon = 'fas fa-hamburger',
            coords = vector3(-1195.75, -897.15, 14),
            size = vector3(0.5, 0.75, 0.8),
            rotation = 74,
        },
        chicken_1 = {
            targetLabel = 'Cook Chicken',
            targetIcon = 'fas fa-drumstick-bite',
            coords = vector3(-1195.75, -897.15, 14),
            size = vector3(0.5, 0.75, 0.8),
            rotation = 74,
        },
        chicken_2 = {
            targetLabel = 'Cook Chicken',
            targetIcon = 'fas fa-drumstick-bite',
            coords = vector3(-1195.02, -897.35, 14),
            size = vector3(0.5, 0.7, 0.8),
            rotation = 74,
        },
        burgershot_fries = {
            targetLabel = 'Cook Fries',
            targetIcon = 'fas fa-fire-burner',
            coords = vector3(-1196.08, -900.08, 13.5),
            size = vector3(0.70, 2.5, 1.5),
            rotation = 74,
        },
        burgershot_nuggets = {
            targetLabel = 'Cook Nuggets',
            targetIcon = 'fas fa-fire-burner',
            coords = vector3(-1196.08, -900.08, 13.5),
            size = vector3(0.70, 2.5, 1.5),
            rotation = 74,
        },
        assembleFood = {
            targetLabel = 'Assemble Food',
            targetIcon = 'fas fa-utensils',
            coords = vector3(-1195.29, -897.55, 13.80),
            size = vector3(1, 4.5, 0.2),
            rotation = 74,
        },
        drinks = {
            targetLabel = 'Assemble Drinks',
            targetIcon = 'fas fa-bottle-water',
            coords = vector3(-1191, -898.75, 13.89),
            size = vector3(0.6, 2.2, 1.5),
            rotation = 125,
        },
    },
    burgerShotRecipes = {
        prep = {
            steak = {
                label = "Steak",
                ingredients = {
                    {
                        item = "rawmeat",
                        amount = 1,
                    },
                }
            },
            burgershot_fries = {
                label = "Fries",
                ingredients = {
                    {
                        item = "potato",
                        amount = 1,
                    },
                }
            },
            burgershot_nuggets = {
                label = "Nuggets",
                ingredients = {
                    {
                        item = "rawchicken",
                        amount = 1,
                    },
                }
            },
            chicken = {
                label = "Chicken",
                ingredients = {
                    {
                        item = "rawchicken",
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
            meatshake = {
                label = "MeatShake",
                ingredients = {
                    {
                        item = "steak",
                        amount = 1,
                    },
                    {
                        item = "water",
                        amount = 1,
                    }
                }
            },
            burgershot_cola = {
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
            burgershot_sprunk = {
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
        assembleFood = {
            burgershot_chickenwrap = {
                label = "Chicken Wrap",
                ingredients = {
                    {
                        item = "wrap",
                        amount = 1,
                    },
                    {
                        item = "tomato",
                        amount = 1,
                    },
                    {
                        item = "lettuce",
                        amount = 1,
                    },
                    {
                        item = "chicken",
                        amount = 1,
                    },
                    {
                        item = "mayo",
                        amount = 1,
                    },
                }
            },
            burgershot_nuggets = {
                label = "Bucket of Nuggets",
                ingredients = {
                    {
                        item = "chicken",
                        amount = 1,
                    },
                }
            },
            meatfree = {
                label = "Meat Free",
                ingredients = {
                    {
                        item = "bun",
                        amount = 1,
                    },
                    {
                        item = "tomato",
                        amount = 1,
                    },
                    {
                        item = "lettuce",
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
                        item = "pickle",
                        amount = 1,
                    },
                }
            },
            burger = {
                label = "Basic Burger",
                ingredients = {
                    {
                        item = "bun",
                        amount = 2,
                    },
                    {
                        item = "steak",
                        amount = 1,
                    },
                    {
                        item = "tomato",
                        amount = 2,
                    },
                    {
                        item = "lettuce",
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
                        item = "pickle",
                        amount = 1,
                    },
                }
            },
            torpedo = {
                label = "Torpedo",
                ingredients = {
                    {
                        item = "bun",
                        amount = 1,
                    },
                    {
                        item = "steak",
                        amount = 1,
                    },
                    {
                        item = "onion",
                        amount = 1,
                    },
                    {
                        item = "pickle",
                        amount = 1,
                    },
                }
            },
            murdermeal = {
                label = "Murder Meal",
                ingredients = {
                    {
                        item = "burgershot_fries",
                        amount = 1,
                    },
                    {
                        item = "bleeder",
                        amount = 1,
                    },
                    {
                        item = "meatshake",
                        amount = 1,
                    },
                }
            },
            heartstopper = {
                label = "Heart-Stopper",
                ingredients = {
                    {
                        item = "bun",
                        amount = 2,
                    },
                    {
                        item = "steak",
                        amount = 3,
                    },
                    {
                        item = "tomato",
                        amount = 2,
                    },
                    {
                        item = "lettuce",
                        amount = 2,
                    },
                    {
                        item = "ketchup",
                        amount = 2,
                    },
                    {
                        item = "mustard",
                        amount = 2,
                    },
                    {
                        item = "pickle",
                        amount = 1,
                    },
                }
            },
            bleederburger = {
                label = "Bleeder Burger",
                ingredients = {
                    {
                        item = "bun",
                        amount = 2,
                    },
                    {
                        item = "steak",
                        amount = 2,
                    },
                    {
                        item = "lettuce",
                        amount = 2,
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
                        item = "pickle",
                        amount = 1,
                    },
                }
            },
            moneyshot = {
                label = "MoneyShot",
                ingredients = {
                    {
                        item = "bun",
                        amount = 2,
                    },
                    {
                        item = "steak",
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
                        item = "pickle",
                        amount = 1,
                    },
                }
            },
        },
    },
}