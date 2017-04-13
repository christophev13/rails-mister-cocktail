# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Ingredient.destroy_all
Cocktail.destroy_all


# seed Ingredient
Ingredient.create(name: "lemon")
Ingredient.create(name: "ice")
Ingredient.create(name: "mint leaves")


# seed Cocktails

Cocktail.create(name: "mojito")
Cocktail.create(name: "caipirinha")
Cocktail.create(name: "jack&cola")
Cocktail.create(name: "screw driver")
Cocktail.create(name: "spritz")
Cocktail.create(name: "banana daiquiri")
