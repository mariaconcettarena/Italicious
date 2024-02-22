//
//  Recipe.swift
//  NC2
//
//  Created by Maria Concetta on 13/02/24.
//

import Foundation
import SwiftUI

//Parte relativa alle singole ricette
let recipes: [Recipe] = [
    Recipe(name: "Pizza",quantity: "For 1 pizza",
           ingredients: [("Flour", "170g"), ("Water", "100ml"), ("Yeast", "2g"), ("Salt", "4g"), ("Oil", "to taste"), ("Tomato sauce", "100g"), ("Mozzarella cheese", "70g"), ("Basil", "to taste")],
           steps: pizzaSteps,
           diff: 4,
           imageName: "pizza", time: "2h", type: "sa"),
    
    Recipe(
        name: "Tiramisu",
        quantity: "For 8 people",
        ingredients: [
            ("Eggs", "5"),
            ("Sugar", "120g"),
            ("Mascarpone cheese", "750g"),
            ("Ladyfingers", "250g"),
            ("Coffee", "300g"),
            ("Cocoa", "to taste")
        ],
        steps: tiramisuSteps,
        diff: 2,
        imageName: "tiramisu", time: "50min", type: "sw"
    ),
    Recipe(
        name: "Lasagna",
        quantity: "For 6 people",
        ingredients: [
            ("Fresh egg lasagne", "320g"),
            ("Meat", "350g"),
            ("Tomato sauce", "1l"),
            ("Mozzarella cheese", "300g"),
            ("Parmesan", "to taste"),
            ("Onions", "1"),
            ("Salt", "to taste"),
            ("Oil", "to taste"),
            ("Water", "500ml")
        ],
        steps: lasagnaSteps,
        diff: 3,
        imageName: "lasagna", time: "3h", type: "sa"
    ),
    Recipe(
        name: "Milanese risotto",
        quantity: "For 4 people",
        ingredients: [
            ("Rice", "320g"),
            ("Saffron", "1 pistil"),
            ("Broth", "to taste"),
            ("Onions", "1/2"),
            ("Butter", "25g"),
            ("Parmesan", "80g"),
            ("White wine", "150ml")
        ],
        steps: risottoSteps,
        diff: 4,
        imageName: "risotto", time: "1h 10min", type: "sa"
    ),
    Recipe(
        name: "Meatballs with sauce",
        quantity: "For 24 meatballs",
        ingredients: [
            ("Beef", "220g"),
            ("Sausage", "165g"),
            ("Breadcrumb", "30g"),
            ("Eggs", "1"),
            ("Parmesan", "25g"),
            ("Parsley", "1 tbsp"),
            ("Salt", "to taste"),
            ("Pepper", "to taste"),
            ("Tomato sauce", "350g"),
            ("Oil", "to taste")
        ],
        steps: meatballSteps,
        diff: 3,
        imageName: "polpette",time: "45min", type: "sa"
    ),
    
    Recipe(
        name: "Apple pie",
        quantity: "For 8 people",
        ingredients: [
            ("Apples", "930g"),
            ("Flour", "250g"),
            ("Milk", "150g"),
            ("Sugar", "200g"),
            ("Butter", "100g"),
            ("Eggs", "2"),
            ("Baking powder", "16g"),
            ("Lemons", "1"),
            ("Cinnamon", "1/2 teaspoon"),
            ("Salt", "1 pinch")
        ],
        steps: applepieSteps,
        diff: 2,
        imageName: "applepie",time: "75min", type: "sw"
    ),
    
    Recipe(
        name: "Fruit tart",
        quantity: "For 8 people",
        ingredients: [
            ("Eggs", "6"),
            ("Vanilla pod", "1"),
            ("Butter", "150g"),
            ("Flour", "270g"),
            ("Powered sugar", "100g"),
            ("Lemon zest", "1/2"),
            ("Cornflour", "40g"),
            ("Sugar", "120g"),
            ("Milk", "500g"),
            ("Strawberries", "250g"),
            ("Pineapple", "4 slices"),
            ("Raspberries", "20g"),
            ("Kiwis", "2"),
            ("Blueberries", "20g"),
            ("Blackberries", "20g"),
            ("Mint", "to taste")
        ],
        steps: fruitSteps,
        diff: 4,
        imageName: "fruit",time: "80min", type: "sw"
    ),
    
    Recipe(
        name: "Caprese cake",
        quantity: "For 10 people",
        ingredients: [
            ("Dark chocolate", "170g"),
            ("Hazelnuts", "85g"),
            ("Butter", "170g"),
            ("Coco", "14gg"),
            ("Eggs", "3g"),
            ("Vanilla bean", "1/2"),
            ("Almonds", "85g"),
            ("Powered sugar", "170g"),
            ("Potato starch", "25g"),
            ("Baking powder", "4g"),
            ("Salt", "1 pinch")
        ],
        steps: capresecSteps,
        diff: 3,
        imageName: "capresec",time: "75min", type: "sw"
    ),
    
    Recipe(
        name: "Spaghetti with tomato sauce",
        quantity: "For 4 people",
        ingredients: [
            ("Spaghetti", "320g"),
            ("Oil", "30g"),
            ("Peeled tomatoes", "800g"),
            ("Garlic", "1 clove"),
            ("Basil", "to taste"),
            ("Salt", "to taste")
          
        ],
        steps: spaghettiSteps,
        diff: 1,
        imageName: "spaghetti",time: "70min", type: "sa"
    ),
    
    Recipe(
        name: "Rum babà",
        quantity: "For 10 pieces",
        ingredients: [
            ("Flour (manitoba)", "300g"),
            ("Sugar", "765g"),
            ("Yeast", "12g"),
            ("Butter", "90g"),
            ("Eggs", "6"),
            ("Salt", "6g"),
            ("Water","1,3l"),
            ("Rum", "160g"),
            ("Lemon zest","1/2"),
            ("Orange zest","1/2")
          
        ],
        steps: babaSteps,
        diff: 5,
        imageName: "baba",time: "1h 50min", type: "sw"
    ),
    Recipe(
        name: "Pasta Carbonara",
        quantity: "For 4 people",
        ingredients: [
            ("Spaghetti", "320g"),
            ("Guanciale", "150g"),
            ("Eggs", "4"),
            ("Pecorino Romano cheese", "100g"),
            ("Black pepper", "to taste")
        ],
        steps: carbonaraSteps,
        diff: 2,
        imageName: "carbonara",
        time: "30min",
        type: "sa"
    ),
    Recipe(
        name: "Eggplant Parmigiana",
        quantity: "For 6 people",
        ingredients: [
            ("Eggplants", "2 large"),
            ("Flour", "100g"),
            ("Eggs", "2"),
            ("Breadcrumbs", "150g"),
            ("Tomato sauce", "500g"),
            ("Mozzarella cheese", "200g"),
            ("Parmesan cheese", "50g"),
            ("Fresh basil", "to taste"),
            ("Salt", "to taste"),
            ("Olive oil", "for frying")
        ],
        steps: eggplantSteps,
        diff: 3,
        imageName: "eggplant",
        time: "1h 30min",
        type: "sa"
    ),
    Recipe(
        name: "Seafood Risotto",
        quantity: "For 4 people",
        ingredients: [
            ("Arborio rice", "320g"),
            ("Mixed seafood (shrimp, mussels, calamari)", "500g"),
            ("White wine", "150ml"),
            ("Shallots", "2"),
            ("Garlic cloves", "2"),
            ("Fish or vegetable broth", "1l"),
            ("Butter", "50g"),
            ("Parmesan cheese", "80g"),
            ("Fresh parsley", "a handful"),
            ("Lemon zest", "from 1 lemon"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste")
        ],
        steps: seafoodSteps,
        diff: 4,
        imageName: "seafood",
        time: "45min",
        type: "sa"
    ),
    Recipe(
        name: "Caprese Salad",
        quantity: "For 4 people",
        ingredients: [
            ("Ripe tomatoes", "4"),
            ("Fresh mozzarella cheese", "200g"),
            ("Fresh basil leaves", "a handful"),
            ("Extra virgin olive oil", "2 tbsp"),
            ("Balsamic vinegar", "1 tbsp"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste")
        ],
        steps: capreseSteps,
        diff: 1,
        imageName: "caprese",
        time: "15min",
        type: "sa"
    ),
    Recipe(
        name: "Rice Salad",
        quantity: "Serves 4",
        ingredients: [
            ("Basmati rice", "1 cup"),
            ("Water", "2 cups"),
            ("Cucumber", "1, diced"),
            ("Red bell pepper", "1, diced"),
            ("Yellow bell pepper", "1, diced"),
            ("Cherry tomatoes", "1 cup, halved"),
            ("Red onion", "1/4 cup, finely chopped"),
            ("Fresh parsley", "1/4 cup, chopped"),
            ("Black olives", "1/4 cup, pitted and sliced"),
            ("Feta cheese", "1/2 cup, crumbled"),
            ("Extra virgin olive oil", "3 tablespoons"),
            ("Lemon juice", "2 tablespoons"),
            ("Dijon mustard", "1 tablespoon"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste")
        ],
        steps: riceSaladSteps,
        diff: 2,
        imageName: "ricesalad",
        time: "30min",
        type: "sa"
    ),
    Recipe(
        name: "Pastiera",
        quantity: "Makes one 9-inch cake",
        ingredients: [
            ("Shortcrust pastry", "1 sheet, for lining the cake pan"),
            ("Wheat", "1 1/4 cups"),
            ("Whole milk", "4 cups"),
            ("Granulated sugar", "1 1/4 cups"),
            ("Ricotta cheese", "2 cups"),
            ("Eggs", "4"),
            ("Orange zest", "from 1 orange"),
            ("Lemon zest", "from 1 lemon"),
            ("Vanilla extract", "1 teaspoon"),
            ("Candied citron", "1/2 cup, diced"),
            ("Candied orange peel", "1/2 cup, diced"),
            ("Ground cinnamon", "1 teaspoon"),
            ("Powdered sugar", "for dusting (optional)")
        ],
        steps: pastieraSteps,
        diff: 3,
        imageName: "pastiera",
        time: "3h 30min",
        type: "sw"
    ),
    
    Recipe(
        name: "Gnocchi",
        quantity: "Serves 4",
        ingredients: [
            ("Potatoes", "2 large russet potatoes, about 1 kg"),
            ("Flour", "2 cups, plus extra for dusting"),
            ("Egg", "1, beaten"),
            ("Salt", "1 teaspoon")
        ],
        steps: gnocchiSteps,
        diff: 3,
        imageName: "gnocchi",
        time: "1h 30min",
        type: "sa"
    ),
    Recipe(
        name: "Tagliatelle pasta",
        quantity: "Serves 4",
        ingredients: [
            ("All-purpose flour", "2 cups, plus extra for dusting"),
            ("Eggs", "3 large"),
            ("Salt", "1/2 teaspoon"),
            ("Olive oil", "1 tablespoon")
        ],
        steps: tagliatelleSteps,
        diff: 3,
        imageName: "tagliatelle",
        time: "1h 30min",
        type: "sa"
    ),
    Recipe(
        name: "Lemon treats",
        quantity: "Makes one 9-inch cake",
        ingredients: [
            ("Unsalted butter", "1/2 cup, softened"),
            ("Granulated sugar", "1 cup"),
            ("Eggs", "3"),
            ("All-purpose flour", "1 1/2 cups"),
            ("Baking powder", "1 teaspoon"),
            ("Salt", "1/4 teaspoon"),
            ("Lemon zest", "from 2 lemons"),
            ("Lemon juice", "1/4 cup"),
            ("Whole milk", "1/2 cup"),
            ("Powdered sugar", "for dusting")
        ],
        steps: lemonSteps,
        diff: 2,
        imageName: "lemon",
        time: "45min",
        type: "sw"
    ),
    Recipe(
        name: "Panna Cotta",
        quantity: "Serves 4",
        ingredients: [
            ("Heavy cream", "2 cups"),
            ("Milk", "1/2 cup"),
            ("Granulated sugar", "1/3 cup"),
            ("Vanilla extract", "1 teaspoon"),
            ("Gelatin", "2 1/4 teaspoons"),
            ("Cold water", "2 tablespoons"),
            ("Fresh berries", "for serving (optional)")
        ],
        steps: pannaCottaSteps,
        diff: 2,
        imageName: "pannacotta",
        time: "4h",
        type: "sw"
    ),
    
    Recipe(
        name: "Pasta with Pesto",
        quantity: "For 4 people",
        ingredients: [
            ("Pasta (such as spaghetti or penne)", "320g"),
            ("Fresh basil leaves", "2 cups"),
            ("Garlic cloves", "2"),
            ("Pine nuts", "1/4 cup"),
            ("Parmesan cheese, grated", "1/2 cup"),
            ("Extra virgin olive oil", "1/2 cup"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste")
        ],
        steps: pestoSteps,
        diff: 2,
        imageName: "pesto",
        time: "20min",
        type: "sa"
    ),
    
    Recipe(
        name: "Tortellini with broth",
        quantity: "Serves 4",
        ingredients: [
            ("Tortellini", "400g"),
            ("Chicken broth", "1.5 liters"),
            ("Parmesan cheese", "grated, for serving"),
            ("Parsley", "chopped, for garnish"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste")
        ],
        steps: tortelliniSteps,
        diff: 2,
        imageName: "tortellini",
        time: "20min",
        type: "sa"
    ),
   Recipe(
        name: "Milanese cutlet",
        quantity: "Serves 4",
        ingredients: [
            ("Veal cutlets", "4 pieces, bone-in"),
            ("Eggs", "2, beaten"),
            ("Breadcrumbs", "1 cup"),
            ("Parmesan cheese", "1/2 cup, grated"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste"),
            ("All-purpose flour", "for dredging"),
            ("Vegetable oil", "for frying"),
            ("Lemon wedges", "for serving")
        ],
        steps: cotolettaSteps,
        diff: 3,
        imageName: "cotoletta",
        time: "30min",
        type: "sa"
    ),
    
    Recipe(
        name: "Artichokes alla Romana",
        quantity: "Serves 4",
        ingredients: [
            ("Large artichokes", "4"),
            ("Lemon", "1"),
            ("Garlic cloves", "2"),
            ("Fresh mint leaves", "a handful"),
            ("Flat-leaf parsley", "a handful"),
            ("Breadcrumbs", "1/2 cup"),
            ("Parmesan cheese", "1/4 cup, grated"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste"),
            ("Extra virgin olive oil", "1/4 cup"),
            ("Water", "1 cup")
        ],
        steps: artichokesSteps,
        diff: 3,
        imageName: "artichokes",
        time: "40min",
        type: "sa"
    ),
    Recipe(
        name: "Polenta",
        quantity: "Serves 4",
        ingredients: [
            ("Cornmeal", "1 cup"),
            ("Water", "4 cups"),
            ("Salt", "1 teaspoon"),
            ("Butter", "2 tablespoons"),
            ("Parmesan cheese", "1/2 cup, grated (optional)")
        ],
        steps: polentaSteps,
        diff: 2,
        imageName: "polenta",
        time: "40min",
        type: "sa"
    ),
    Recipe(
        name: "Supplì",
        quantity: "Makes 10 supplì",
        ingredients: [
            ("Arborio rice", "1 cup"),
            ("Chicken or vegetable broth", "2 1/2 cups"),
            ("Butter", "2 tablespoons"),
            ("Onion", "1/2, finely chopped"),
            ("White wine", "1/4 cup"),
            ("Parmesan cheese", "1/2 cup, grated"),
            ("Mozzarella cheese", "1/2 cup, diced"),
            ("Egg", "1, beaten"),
            ("Breadcrumbs", "1 cup"),
            ("Oil", "for frying"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste"),
            ("Fresh parsley", "for garnish")
        ],
        steps: suppliSteps,
        diff: 3,
        imageName: "suppli",
        time: "1h",
        type: "sa"
    ),
   Recipe(
        name: "Pasta with beans",
        quantity: "Serves 6",
        ingredients: [
            ("Pasta", "1 cup"),
            ("Cannellini beans", "1 can (15 oz), drained and rinsed"),
            ("Tomato sauce", "1 cup"),
            ("Vegetable broth", "4 cups"),
            ("Carrot", "1, diced"),
            ("Celery stalk", "1, diced"),
            ("Onion", "1, diced"),
            ("Garlic cloves", "2, minced"),
            ("Bay leaf", "1"),
            ("Fresh rosemary", "1 sprig"),
            ("Fresh thyme", "1 sprig"),
            ("Salt", "to taste"),
            ("Black pepper", "to taste"),
            ("Extra virgin olive oil", "2 tablespoons"),
            ("Parmesan cheese", "for serving"),
            ("Fresh parsley", "for garnish")
        ],
        steps: pastaBeansSteps,
        diff: 2,
        imageName: "pastaBeans",
        time: "45min",
        type: "sa"
    ),
    Recipe(
        name: "Piadina",
        quantity: "Makes 4 piadine",
        ingredients: [
            ("All-purpose flour", "2 cups"),
            ("Baking powder", "1 teaspoon"),
            ("Salt", "1/2 teaspoon"),
            ("Water", "1/2 cup"),
            ("Olive oil", "2 tablespoons")
        ],
        steps: piadinaSteps,
        diff: 2,
        imageName: "piadina",
        time: "30min",
        type: "sa"
    ),
    Recipe(
        name: "Ricotta Cheese and Pears Cake",
        quantity: "Makes one 9-inch cake",
        ingredients: [
            ("All-purpose flour", "1 1/2 cups"),
            ("Baking powder", "2 teaspoons"),
            ("Salt", "1/4 teaspoon"),
            ("Unsalted butter", "1/2 cup, softened"),
            ("Granulated sugar", "1 cup"),
            ("Eggs", "3"),
            ("Ricotta cheese", "1 cup"),
            ("Vanilla extract", "1 teaspoon"),
            ("Pears", "2, ripe but firm, peeled, cored, and sliced"),
            ("Lemon juice", "1 tablespoon"),
            ("Powdered sugar", "for dusting (optional)")
        ],
        steps: ricottapearsSteps,
        diff: 4,
        imageName: "ricottapears",
        time: "1h 15min",
        type: "sw"
    ),
     Recipe(
        name: "Cassata Siciliana",
        quantity: "Serves 8-10",
        ingredients: [
            ("Sponge cake", "1 (9-inch round)"),
            ("Ricotta cheese", "500g"),
            ("Powdered sugar", "1 cup"),
            ("Candied fruit (citrus peel, cherries)", "1 cup, diced"),
            ("Dark chocolate chips", "1/2 cup"),
            ("Candied fruit syrup", "1/4 cup"),
            ("Maraschino cherries", "for garnish"),
            ("Green icing", "for decoration"),
            ("Yellow icing", "for decoration"),
            ("Red icing", "for decoration"),
            ("Royal icing", "for decoration")
        ],
        steps: cassataSteps,
        diff: 4,
        imageName: "cassata",
        time: "4h",
        type: "sw"
    ),
    Recipe(
        name: "Sponge Cake",
        quantity: "Makes one 9-inch round cake",
        ingredients: [
            ("Eggs", "4, at room temperature"),
            ("Granulated sugar", "1 cup"),
            ("Vanilla extract", "2 teaspoons"),
            ("All-purpose flour", "1 cup"),
            ("Baking powder", "1 teaspoon"),
            ("Salt", "1/4 teaspoon")
        ],
        steps: spongecakeSteps,
        diff: 2,
        imageName: "spongecake",
        time: "45min",
        type: "sw"
    ),
    Recipe(
        name: "Paradise Cake",
        quantity: "Makes one 9x13-inch cake",
        ingredients: [
            ("All-purpose flour", "2 cups"),
            ("Granulated sugar", "2 cups"),
            ("Baking soda", "1 teaspoon"),
            ("Salt", "1/2 teaspoon"),
            ("Crushed pineapple, undrained", "1 can (20 ounces)"),
            ("Eggs", "2"),
            ("Vanilla extract", "1 teaspoon"),
            ("Chopped pecans", "1 cup")
        ],
        steps: paradiseSteps,
        diff: 2,
        imageName: "paradise",
        time: "50min",
        type: "sw"
    ),
    Recipe(
        name: "Apple Strudel",
        quantity: "Serves 8",
        ingredients: [
            ("Phyllo dough", "8 sheets"),
            ("Apples", "6 large, peeled, cored, and thinly sliced"),
            ("Granulated sugar", "1/2 cup"),
            ("Ground cinnamon", "1 teaspoon"),
            ("Ground nutmeg", "1/2 teaspoon"),
            ("Lemon zest", "from 1 lemon"),
            ("Raisins", "1/2 cup"),
            ("Breadcrumbs", "1/2 cup"),
            ("Butter", "1/4 cup, melted"),
            ("Powdered sugar", "for dusting")
        ],
        steps: strudelSteps,
        diff: 3,
        imageName: "strudel",
        time: "1h 15min",
        type: "sw"
    )



















    
    
]
