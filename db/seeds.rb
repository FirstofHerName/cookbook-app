recipe = Recipe.new(
                    title: "Hand Sandwich",
                    chef: "Josh",
                    ingredients: "left hand, right hand, lettuce, tomato, mayo, cheese",
                    directions: "place ingredients on left hand, put hand on top, enjoy")


recipe.save

recipe = Recipe.new(
                    title: "Garbage Lagsana",
                    chef: "Bad Josh",
                    ingredients: "old chinese food, socks, banana peel, hot pepper",
                    directions: "layer ingredients in a pan, preheat oven 350, cook for 5 hours"
                    )


recipe.save